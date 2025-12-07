@interface MNRouteDivergenceFinder
- (BOOL)_pathsDivergeBetweenRoute:(id)route from:(PolylineCoordinate)from andRoute:(id)andRoute from:(PolylineCoordinate)a6 withinDistance:(double)distance;
- (BOOL)_pointMeetsConvergenceThreshold:(const _MNRouteConvergencePoint *)threshold withOtherPoint:(const _MNRouteConvergencePoint *)point outRouteCoordinateA:(PolylineCoordinate *)a outRouteCoordinateB:(PolylineCoordinate *)b outDistance:(double *)distance;
- (BOOL)findOverlappingSectionsForRoutes:;
- (MNRouteDivergenceFinder)init;
- (PolylineCoordinate)_closestRouteCoordinateOnRoute:(id)route toLocationCoordinate:(id)coordinate inRange:(GEOPolylineCoordinateRange)range;
- (PolylineCoordinate)_firstRouteCoordinateWithinToleranceOnRoute:(id)route nearCoordinate:(id)coordinate range:(GEOPolylineCoordinateRange)range;
- (PolylineCoordinate)_routeCoordinateForLocationCoordinate:(id)coordinate route:(id)route startIndex:(unint64_t)index;
- (char)findOverlappingSectionsForRoutes:(char *)routes;
- (double)_distanceFromCoordinate:(id)coordinate toSegmentStart:(id)start segmentEnd:(id)end;
- (double)_offsetForCoordinate:(id)coordinate alongSegmentStart:(id)start segmentEnd:(id)end;
- (float)findAllOverlapRangesBetweenRoutes:(uint64_t)routes;
- (id)_routesArrayIdentifierStrings:(id)strings;
- (id)findAllDivergenceConvergenceBetweenRoute:(id)route andRoute:(id)andRoute;
- (id)findAllOverlapRangesBetweenRoutes:(id)routes;
- (id)findFirstConvergenceBetweenRoute:(id)route andRoute:(id)andRoute;
- (id)findFirstConvergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate;
- (id)findFirstDivergenceBetweenRoute:(id)route andRoute:(id)andRoute;
- (id)findFirstDivergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate;
- (id)findFirstUniqueRangeBetweenRoute:(id)route andRoute:(id)andRoute;
- (id)findOverlappingSectionsForRoutes:(id)routes;
- (uint64_t)findAllOverlapRangesBetweenRoutes:(uint64_t)routes;
- (uint64_t)findOverlappingSectionsForRoutes:(uint64_t *)routes;
- (void)_findFirstConvergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate outRouteCoordinate:(PolylineCoordinate *)outRouteCoordinate outRouteCoordinate:(PolylineCoordinate *)a8;
- (void)_findFirstConvergenceBetweenRoute:(id)route range:(GEOPolylineCoordinateRange)range andRoute:(id)andRoute range:(GEOPolylineCoordinateRange)a6 outRouteCoordinate:(PolylineCoordinate *)coordinate outRouteCoordinate:(PolylineCoordinate *)routeCoordinate;
- (void)_findFirstConvergenceBetweenRoute:(uint64_t *)result range:(__int128 *)range andRoute:(unint64_t *)route range:(__int128 *)a4 outRouteCoordinate:(uint64_t)coordinate outRouteCoordinate:(char)routeCoordinate;
- (void)_findFirstDivergenceBetweenRoute:(id)route range:(GEOPolylineCoordinateRange)range andRoute:(id)andRoute range:(GEOPolylineCoordinateRange)a6 outRouteCoordinate:(PolylineCoordinate *)coordinate outRouteCoordinate:(PolylineCoordinate *)routeCoordinate;
- (void)_populateConvergencePoints:(void *)points route:(id)route range:(GEOPolylineCoordinateRange)range isRouteA:(BOOL)a;
- (void)findAllOverlapRangesBetweenRoutes:;
- (void)findAllOverlapRangesBetweenRoutes:(uint64_t)routes;
- (void)findOverlappingSectionsForRoutes:;
- (void)findOverlappingSectionsForRoutes:(void *)routes;
@end

@implementation MNRouteDivergenceFinder

- (MNRouteDivergenceFinder)init
{
  v3.receiver = self;
  v3.super_class = MNRouteDivergenceFinder;
  result = [(MNRouteDivergenceFinder *)&v3 init];
  if (result)
  {
    *&result->_toleranceMeters = xmmword_1D328D380;
    result->_distancePaddingWhenAlternating = 20.0;
  }

  return result;
}

- (id)_routesArrayIdentifierStrings:(id)strings
{
  v3 = [strings _geo_map:&__block_literal_global_10672];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

id __57__MNRouteDivergenceFinder__routesArrayIdentifierStrings___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueRouteID];
  v3 = [v2 description];

  return v3;
}

- (double)_offsetForCoordinate:(id)coordinate alongSegmentStart:(id)start segmentEnd:(id)end
{
  if (vabdd_f64(start.var0, end.var0) > 0.0000005)
  {
    v5 = coordinate.var0 - start.var0;
    v6 = end.var0 - start.var0;
LABEL_5:
    v7 = v5 / v6;
    return fmax(fmin(v7, 1.0), 0.0);
  }

  v7 = 0.0;
  if (vabdd_f64(start.var1, end.var1) > 0.0000005)
  {
    v5 = coordinate.var1 - start.var1;
    v6 = end.var1 - start.var1;
    goto LABEL_5;
  }

  return fmax(fmin(v7, 1.0), 0.0);
}

- (PolylineCoordinate)_routeCoordinateForLocationCoordinate:(id)coordinate route:(id)route startIndex:(unint64_t)index
{
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  routeCopy = route;
  [routeCopy pointAt:index];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [routeCopy pointAt:index + 1];
  [(MNRouteDivergenceFinder *)self _offsetForCoordinate:var0 alongSegmentStart:var1 segmentEnd:var2, v12, v14, v16, v17, v18, v19];
  v21 = fmax(fmin(v20, 1.0), 0.0);
  if (v21 >= 1.0)
  {
    LODWORD(index) = vcvtms_u32_f32(v21) + index;
    v21 = v21 - floorf(v21);
  }

  return (index | (LODWORD(v21) << 32));
}

- (PolylineCoordinate)_closestRouteCoordinateOnRoute:(id)route toLocationCoordinate:(id)coordinate inRange:(GEOPolylineCoordinateRange)range
{
  end = range.end;
  start = range.start;
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  routeCopy = route;
  v12 = [MEMORY[0x1E69A23A0] iteratorWithRange:{start, end}];
  [v12 advance];
  index = 0;
  v14 = 3212836864;
  v15 = 1.79769313e308;
  while ([v12 isCurrentValid])
  {
    [routeCopy pointAtRouteCoordinate:{objc_msgSend(v12, "previous")}];
    [routeCopy pointAtRouteCoordinate:{objc_msgSend(v12, "current")}];
    v31 = var1;
    v32 = var2;
    v30 = var0;
    v16 = GEOClosestCoordinateOnLineSegmentFromCoordinate3D();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v34.var0 = var0;
    v34.var1 = var1;
    v34.var2 = v18;
    v35.var0 = v20;
    v24 = GEOCalculateDistance(v16, v23, v34, v35);
    if (v24 < v15)
    {
      v25 = -[MNRouteDivergenceFinder _routeCoordinateForLocationCoordinate:route:startIndex:](self, "_routeCoordinateForLocationCoordinate:route:startIndex:", routeCopy, [v12 previous], v18, v20, v22);
      index = v25.index;
      v14 = HIDWORD(*&v25);
      v15 = v24;
    }

    [v12 advance];
  }

  IsABeforeB = GEOPolylineCoordinateIsABeforeB();
  v27 = index | (v14 << 32);
  if (IsABeforeB)
  {
    v28 = start;
  }

  else
  {
    v28 = end;
  }

  if (!IsABeforeB)
  {
    end = start;
  }

  if (GEOPolylineCoordinateIsABeforeB())
  {
    end = v27;
  }

  if (!GEOPolylineCoordinateIsABeforeB())
  {
    end = v28;
  }

  return end;
}

- (double)_distanceFromCoordinate:(id)coordinate toSegmentStart:(id)start segmentEnd:(id)end
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v7 = GEOClosestCoordinateOnLineSegmentFromCoordinate3D();
  v12 = v11;
  v14 = v13;
  v15 = var0;
  v16 = var1;

  return GEOCalculateDistance(v7, v8, *&v15, *&v14);
}

- (PolylineCoordinate)_firstRouteCoordinateWithinToleranceOnRoute:(id)route nearCoordinate:(id)coordinate range:(GEOPolylineCoordinateRange)range
{
  end = range.end;
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  start = range.start;
  v58 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v14 = MNGetMNRouteDivergenceLog();
  v15 = os_signpost_id_make_with_pointer(v14, self);

  v16 = MNGetMNRouteDivergenceLog();
  v17 = v16;
  spid = v15;
  v18 = v15 - 1;
  if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    v21 = GEOPolylineCoordinateRangeAsString();
    *buf = 138413058;
    v51 = uUIDString;
    v52 = 2048;
    v53 = var0;
    v54 = 2048;
    v55 = var1;
    v56 = 2112;
    v57 = v21;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "_firstRouteCoordinate", "Route: %@ | %f, %f | [%@]", buf, 0x2Au);
  }

  v22 = [routeCopy _navigation_leafBoundingSectionContainingCoordinate:{var0, var1, var2}];
  v23 = v22;
  if (v22)
  {
    [v22 range];
    if (GEOPolylineCoordinateWithinRange())
    {
      [v23 range];
      v24 = MNGetMNRouteDivergenceLog();
      v25 = v24;
      if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v26 = GEOPolylineCoordinateRangeAsString();
        *buf = 138412290;
        v51 = v26;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v25, OS_SIGNPOST_EVENT, spid, "_firstRouteCoordinate", "Optimizing search range start using bounding section. New search range is: [%@]", buf, 0xCu);
      }
    }

    v27 = [MEMORY[0x1E69A23A0] iteratorWithRange:{start, end}];
    [v27 advance];
    if ([v27 isCurrentValid])
    {
      [routeCopy pointAtRouteCoordinate:{objc_msgSend(v27, "previous")}];
      v6 = v28;
      v7 = v29;
      v5 = v30;
    }

    while ([v27 isCurrentValid])
    {
      [routeCopy pointAtRouteCoordinate:{objc_msgSend(v27, "current")}];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [(MNRouteDivergenceFinder *)self _distanceFromCoordinate:var0 toSegmentStart:var1 segmentEnd:var2, v6, v7, v5, *&v31, *&v33, *&v35];
      if (v37 < self->_toleranceMeters)
      {
        v40 = -[MNRouteDivergenceFinder _routeCoordinateForLocationCoordinate:route:startIndex:](self, "_routeCoordinateForLocationCoordinate:route:startIndex:", routeCopy, [v27 previous], var0, var1, var2);
        v43 = MNGetMNRouteDivergenceLog();
        v44 = v43;
        if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          v45 = GEOPolylineCoordinateAsShortString();
          GEOPolylineCoordinateRangeAsString();
          v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v51 = v45;
          v52 = 2112;
          v53 = v46;
          _os_signpost_emit_with_name_impl(&dword_1D311E000, v44, OS_SIGNPOST_INTERVAL_END, spid, "_firstRouteCoordinate", "Found result at: [%@], range: [%@]", buf, 0x16u);
        }

        goto LABEL_27;
      }

      [v27 advance];
      v6 = v32;
      v7 = v34;
      v5 = v36;
    }

    v41 = MNGetMNRouteDivergenceLog();
    v42 = v41;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v42, OS_SIGNPOST_INTERVAL_END, spid, "_firstRouteCoordinate", "Searched entire range and found no valid point on route near coordinate", buf, 2u);
    }

    v40 = *MEMORY[0x1E69A1918];
LABEL_27:
  }

  else
  {
    v38 = MNGetMNRouteDivergenceLog();
    v39 = v38;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v39, OS_SIGNPOST_INTERVAL_END, spid, "_firstRouteCoordinate", "Checked route bounds and found no valid point on route near coordinate", buf, 2u);
    }

    v40 = *MEMORY[0x1E69A1918];
  }

  return v40;
}

- (BOOL)_pointMeetsConvergenceThreshold:(const _MNRouteConvergencePoint *)threshold withOtherPoint:(const _MNRouteConvergencePoint *)point outRouteCoordinateA:(PolylineCoordinate *)a outRouteCoordinateB:(PolylineCoordinate *)b outDistance:(double *)distance
{
  if (threshold->var6)
  {
    pointCopy = threshold;
  }

  else
  {
    pointCopy = point;
  }

  if (threshold->var6)
  {
    thresholdCopy2 = point;
  }

  else
  {
    thresholdCopy2 = threshold;
  }

  [(MNRouteDivergenceFinder *)self _distanceFromCoordinate:pointCopy->var1.var0 toSegmentStart:pointCopy->var1.var1 segmentEnd:pointCopy->var1.var2, thresholdCopy2->var1.var0, thresholdCopy2->var1.var1, thresholdCopy2->var1.var2, *&thresholdCopy2->var2.var0, *&thresholdCopy2->var2.var1, *&thresholdCopy2->var2.var2];
  v14 = v13;
  [(MNRouteDivergenceFinder *)self _distanceFromCoordinate:thresholdCopy2->var1.var0 toSegmentStart:thresholdCopy2->var1.var1 segmentEnd:thresholdCopy2->var1.var2, pointCopy->var1.var0, pointCopy->var1.var1, pointCopy->var1.var2, *&pointCopy->var2.var0, *&pointCopy->var2.var1, *&pointCopy->var2.var2];
  v16 = v15;
  v17 = v14 <= self->_toleranceMeters || v15 <= self->_toleranceMeters;
  if (v17)
  {
    a->index = pointCopy->var3.index;
    [(MNRouteDivergenceFinder *)self _offsetForCoordinate:thresholdCopy2->var1.var0 alongSegmentStart:thresholdCopy2->var1.var1 segmentEnd:thresholdCopy2->var1.var2, pointCopy->var1.var0, pointCopy->var1.var1, pointCopy->var1.var2, *&pointCopy->var2.var0, *&pointCopy->var2.var1, *&pointCopy->var2.var2];
    v19 = v18;
    a->offset = v19;
    offset = pointCopy->var3.offset;
    v21 = pointCopy->var4.offset;
    if (offset > 0.0 || v21 > 0.0)
    {
      if (v21 <= 0.0)
      {
        v21 = 1.0;
      }

      a->offset = offset + ((v21 - offset) * v19);
    }

    v22 = *a;
    IsInvalid = GEOPolylineCoordinateIsInvalid();
    v24 = MEMORY[0x1E69A1918];
    if (IsInvalid)
    {
      v25 = *MEMORY[0x1E69A1918];
      v26 = *(MEMORY[0x1E69A1918] + 4);
    }

    else
    {
      v26 = v22.offset - floorf(v22.offset);
      v25 = vcvtms_u32_f32(v22.offset) + v22.index;
    }

    *a = (v25 | (LODWORD(v26) << 32));
    b->index = thresholdCopy2->var3.index;
    [(MNRouteDivergenceFinder *)self _offsetForCoordinate:pointCopy->var1.var0 alongSegmentStart:pointCopy->var1.var1 segmentEnd:pointCopy->var1.var2, thresholdCopy2->var1.var0, thresholdCopy2->var1.var1, thresholdCopy2->var1.var2, *&thresholdCopy2->var2.var0, *&thresholdCopy2->var2.var1, *&thresholdCopy2->var2.var2];
    v28 = v27;
    b->offset = v28;
    v29 = thresholdCopy2->var3.offset;
    v30 = thresholdCopy2->var4.offset;
    if (v29 > 0.0 || v30 > 0.0)
    {
      if (v30 <= 0.0)
      {
        v30 = 1.0;
      }

      b->offset = v29 + ((v30 - v29) * v28);
    }

    v31 = *b;
    if (GEOPolylineCoordinateIsInvalid())
    {
      v32 = *v24;
      v33 = *(v24 + 4);
    }

    else
    {
      v33 = v31.offset - floorf(v31.offset);
      v32 = vcvtms_u32_f32(v31.offset) + v31.index;
    }

    *b = (v32 | (LODWORD(v33) << 32));
    *distance = fmin(v14, v16);
  }

  return v17;
}

- (void)_populateConvergencePoints:(void *)points route:(id)route range:(GEOPolylineCoordinateRange)range isRouteA:(BOOL)a
{
  end = range.end;
  start = range.start;
  routeCopy = route;
  v38 = objc_alloc_init(MEMORY[0x1E69A23A8]);
  selfCopy = self;
  v11 = [routeCopy legIndexForRouteCoordinate:start];
  v37 = end;
  while (1)
  {
    legs = [routeCopy legs];
    v13 = [legs count];

    if (v11 >= v13)
    {
      break;
    }

    legs2 = [routeCopy legs];
    v15 = [legs2 objectAtIndexedSubscript:v11];

    startRouteCoordinate = [v15 startRouteCoordinate];
    endRouteCoordinate = [v15 endRouteCoordinate];
    if ((GEOPolylineCoordinateRangeIntersectsRange() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (GEOPolylineCoordinateIsABeforeB())
    {
      v18 = startRouteCoordinate;
    }

    else
    {
      v18 = start;
    }

    if (GEOPolylineCoordinateRangeEncompassesRange())
    {
      [v38 addCoordinateRange:{v18, end}];
LABEL_13:

      break;
    }

    if (GEOPolylineCoordinateIsABeforeB())
    {
      end = v37;
    }

    else
    {
      end = endRouteCoordinate;
    }

    [v38 addCoordinateRange:{v18, end}];

    ++v11;
  }

  v19 = 0;
  if (selfCopy->_toleranceMeters <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = INFINITY;
  }

  while (v19 < [v38 count])
  {
    v21 = [v38 coordinateRangeAtIndex:v19];
    v23 = [MEMORY[0x1E69A23A0] iteratorWithRange:{v21, v22}];
    [v23 advance];
    while ([v23 isCurrentValid])
    {
      [routeCopy pointAtRouteCoordinate:{objc_msgSend(v23, "previous")}];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      *&v63 = v24;
      *(&v63 + 1) = v26;
      v64 = v28;
      [routeCopy pointAtRouteCoordinate:{objc_msgSend(v23, "current")}];
      *&v61 = v30;
      *(&v61 + 1) = v31;
      v62 = v32;
      if (vabdd_f64(v25, v30) >= 0.00000000999999994 || vabdd_f64(v27, v31) >= 0.00000000999999994 || vabdd_f64(v29, v32) >= 0.00000000999999994)
      {
        v33 = v31 < v27;
        if (v31 < v27)
        {
          v34 = &v63;
        }

        else
        {
          v30 = v25;
          v34 = &v61;
        }

        v59 = *v34;
        v35 = fmin(v31, v27);
        if (!v33)
        {
          v32 = v29;
        }

        v60 = *(v34 + 2);
        *v50 = v30;
        *&v50[1] = v35 + v20;
        *&v50[2] = v32;
        v51 = v63;
        v52 = v64;
        v53 = v61;
        v54 = v62;
        previous = [v23 previous];
        current = [v23 current];
        v57 = 1;
        aCopy = a;
        std::deque<_MNRouteConvergencePoint>::emplace_back<_MNRouteConvergencePoint&>(points, v50);
        v40 = v59;
        v41 = v60;
        v42 = v63;
        v43 = v64;
        v44 = v61;
        v45 = v62;
        previous2 = [v23 previous];
        current2 = [v23 current];
        v48 = 0;
        aCopy2 = a;
        [v23 advance];
      }

      else
      {
        [v23 advance];
      }
    }

    ++v19;
  }
}

- (void)_findFirstConvergenceBetweenRoute:(id)route range:(GEOPolylineCoordinateRange)range andRoute:(id)andRoute range:(GEOPolylineCoordinateRange)a6 outRouteCoordinate:(PolylineCoordinate *)coordinate outRouteCoordinate:(PolylineCoordinate *)routeCoordinate
{
  end = a6.end;
  start = a6.start;
  v11 = range.end;
  v12 = range.start;
  v97 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  [(MNRouteDivergenceFinder *)self _populateConvergencePoints:&v87 route:routeCopy range:v12 isRouteA:v11, 1];
  [(MNRouteDivergenceFinder *)self _populateConvergencePoints:&v87 route:andRouteCopy range:start isRouteA:end, 0];
  v16 = v89 / 0x2A;
  if (v88 == *(&v87 + 1))
  {
    v22 = 0;
    v18 = 0;
    v20 = (*(&v87 + 1) + ((((((*(&v89 + 1) + v89) >> 1) * 0xC30C30C30C30C30DLL) >> 64) >> 1) & 0x3FFFFFFFFFFFFFF8));
  }

  else
  {
    v17 = v89 % 0x2A;
    v18 = (*(*(&v87 + 1) + 8 * v16) + 96 * (v89 % 0x2A));
    v19 = (*(&v89 + 1) + v89) / 0x2AuLL;
    v20 = (*(&v87 + 1) + 8 * v19);
    v21 = (*(&v89 + 1) + v89) % 0x2AuLL;
    v22 = (*v20 + 96 * v21);
    if (v22 != v18)
    {
      v23 = v21 + 42 * ((8 * v19 - 8 * v16) >> 3);
      if (v23 != v17)
      {
        v24 = 63 - __clz(v23 - v17);
        goto LABEL_7;
      }
    }
  }

  v24 = 0;
LABEL_7:
  std::__introsort<std::_ClassicAlgPolicy,[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,false>((*(&v87 + 1) + 8 * (v89 / 0x2A)), v18, v20, v22, 2 * v24, 1);
  v26 = *MEMORY[0x1E69A1918];
  v25 = *(MEMORY[0x1E69A1918] + 4);
  v27 = *MEMORY[0x1E69A1918];
  v84 = 0u;
  v85 = 0u;
  v86 = 1065353216;
  std::__hash_table<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__rehash_unique[abi:ne200100](&v84, 0xAuLL);
  v81 = 0u;
  v82 = 0u;
  v83 = 1065353216;
  std::__hash_table<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__rehash_unique[abi:ne200100](&v81, 0xAuLL);
  v70 = andRouteCopy;
  v71 = routeCopy;
  v69 = end;
  if (v88 == *(&v87 + 1))
  {
    v30 = v25;
    goto LABEL_105;
  }

  v28 = v89 / 0x2A;
  v29 = *(*(&v87 + 1) + 8 * v28) - 4032 * v28 + 96 * v89;
  v72 = *(*(&v87 + 1) + 8 * ((*(&v89 + 1) + v89) / 0x2AuLL)) - 4032 * ((*(&v89 + 1) + v89) / 0x2AuLL) + 96 * (*(&v89 + 1) + v89);
  v30 = v25;
  if (v29 == v72)
  {
LABEL_105:
    v33 = v26;
    goto LABEL_106;
  }

  v31 = 1.79769313e308;
  v32 = (*(&v87 + 1) + 8 * v28);
  v33 = v26;
  do
  {
    v77 = *(v29 + 89);
    if (*(v29 + 89))
    {
      v34 = &v84;
    }

    else
    {
      v34 = &v81;
    }

    v35 = *(v29 + 76) + *(v29 + 72);
    if (v35 == 0.0)
    {
      v36 = 0;
    }

    else
    {
      v36 = LODWORD(v35);
    }

    v78 = v34;
    v37 = *(v34 + 8);
    if (*(v29 + 88) == 1)
    {
      v73 = v32;
      v75 = v27;
      if (!*&v37)
      {
        goto LABEL_36;
      }

      v38 = vcnt_s8(v37);
      v38.i16[0] = vaddlv_u8(v38);
      v39 = v38.u32[0];
      if (v38.u32[0] > 1uLL)
      {
        v40 = v36;
        if (v36 >= *&v37)
        {
          v40 = v36 % v37.i32[0];
        }
      }

      else
      {
        v40 = v36 & (*&v37 + 0xFFFFFFFFLL);
      }

      v44 = *(*v34 + 8 * v40);
      if (!v44 || (v45 = *v44) == 0)
      {
LABEL_36:
        operator new();
      }

      while (1)
      {
        v46 = v45[1];
        if (v46 == v36)
        {
          if (GEOPolylineCoordinateEqual())
          {
            v50 = &v84;
            if (v77)
            {
              v50 = &v81;
            }

            v51 = *(v50 + 2);
            v32 = v73;
            v27 = v75;
            if (!v51)
            {
              goto LABEL_68;
            }

            while (2)
            {
              *buf = 0xBF80000000000000;
              v79 = 0.0;
              v80 = 0xBF80000000000000;
              if ([(MNRouteDivergenceFinder *)self _pointMeetsConvergenceThreshold:v29 withOtherPoint:v51 + 2 outRouteCoordinateA:buf outRouteCoordinateB:&v80 outDistance:&v79, v69])
              {
                v52 = self->_toleranceMeters * 0.5;
                if (v79 >= v52 || v31 >= v52)
                {
                  if (v79 >= v31)
                  {
                    goto LABEL_67;
                  }

LABEL_66:
                  v33 = *buf;
                  v30 = *&buf[4];
                  v31 = v79;
                  v27 = v80;
                  goto LABEL_67;
                }

                if (*buf < v33 || *buf == v33 && *&buf[4] < *&v30)
                {
                  goto LABEL_66;
                }
              }

LABEL_67:
              v51 = *v51;
              if (!v51)
              {
                goto LABEL_68;
              }

              continue;
            }
          }
        }

        else
        {
          if (v39 > 1)
          {
            if (v46 >= *&v37)
            {
              v46 %= *&v37;
            }
          }

          else
          {
            v46 &= *&v37 - 1;
          }

          if (v46 != v40)
          {
            goto LABEL_36;
          }
        }

        v45 = *v45;
        if (!v45)
        {
          goto LABEL_36;
        }
      }
    }

    if (!*&v37)
    {
      goto LABEL_68;
    }

    v74 = v32;
    v76 = v27;
    v41 = vcnt_s8(v37);
    v41.i16[0] = vaddlv_u8(v41);
    v42 = v41.u32[0];
    if (v41.u32[0] > 1uLL)
    {
      if (v36 >= *&v37)
      {
        v43 = v36 % v37.i32[0];
      }

      else
      {
        v43 = v36;
      }
    }

    else
    {
      v43 = v36 & (*&v37 + 0xFFFFFFFFLL);
    }

    v47 = *(*v34 + 8 * v43);
    if (!v47 || (v48 = *v47) == 0)
    {
      v32 = v74;
      v27 = v76;
      goto LABEL_68;
    }

    while (1)
    {
      v49 = *(v48 + 1);
      if (v49 == v36)
      {
        break;
      }

      if (v42 > 1)
      {
        if (v49 >= *&v37)
        {
          v49 %= *&v37;
        }
      }

      else
      {
        v49 &= *&v37 - 1;
      }

      if (v49 != v43)
      {
LABEL_51:
        v32 = v74;
        v27 = v76;
        goto LABEL_68;
      }

LABEL_50:
      v48 = *v48;
      if (!v48)
      {
        goto LABEL_51;
      }
    }

    if ((GEOPolylineCoordinateEqual() & 1) == 0)
    {
      goto LABEL_50;
    }

    v55 = *(v78 + 8);
    v56 = *(v48 + 1);
    v57 = vcnt_s8(v55);
    v57.i16[0] = vaddlv_u8(v57);
    if (v57.u32[0] > 1uLL)
    {
      if (v56 >= *&v55)
      {
        v56 %= *&v55;
      }
    }

    else
    {
      v56 &= *&v55 - 1;
    }

    v58 = *v48;
    v59 = *(*v78 + 8 * v56);
    do
    {
      v60 = v59;
      v59 = *v59;
    }

    while (v59 != v48);
    v61 = &v85;
    if (!v77)
    {
      v61 = &v82;
    }

    v32 = v74;
    v27 = v76;
    if (v60 == v61)
    {
      goto LABEL_91;
    }

    v62 = *(v60 + 1);
    if (v57.u32[0] > 1uLL)
    {
      if (v62 >= *&v55)
      {
        v62 %= *&v55;
      }
    }

    else
    {
      v62 &= *&v55 - 1;
    }

    if (v62 == v56)
    {
LABEL_93:
      if (v58)
      {
        v63 = *(v58 + 1);
        goto LABEL_95;
      }
    }

    else
    {
LABEL_91:
      if (!v58)
      {
        goto LABEL_92;
      }

      v63 = *(v58 + 1);
      if (v57.u32[0] > 1uLL)
      {
        v64 = *(v58 + 1);
        if (v63 >= *&v55)
        {
          v64 = v63 % *&v55;
        }
      }

      else
      {
        v64 = v63 & (*&v55 - 1);
      }

      if (v64 != v56)
      {
LABEL_92:
        *(*v78 + 8 * v56) = 0;
        v58 = *v48;
        goto LABEL_93;
      }

LABEL_95:
      if (v57.u32[0] > 1uLL)
      {
        if (v63 >= *&v55)
        {
          v63 %= *&v55;
        }
      }

      else
      {
        v63 &= *&v55 - 1;
      }

      if (v63 != v56)
      {
        *(*v78 + 8 * v63) = v60;
        v58 = *v48;
      }
    }

    *v60 = v58;
    *v48 = 0;
    v65 = &v84;
    if (!v77)
    {
      v65 = &v81;
    }

    --*(v65 + 3);
    operator delete(v48);
LABEL_68:
    v29 += 96;
    if (v29 - *v32 == 4032)
    {
      v54 = v32[1];
      ++v32;
      v29 = v54;
    }
  }

  while (v29 != v72);
LABEL_106:
  v66 = MEMORY[0x1E69A1918];
  *coordinate = *MEMORY[0x1E69A1918];
  *routeCoordinate = *v66;
  v67 = (v33 | (v30 << 32));
  if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
  {
    if (!GEOPolylineCoordinateInRange() || (GEOPolylineCoordinateInRange() & 1) == 0)
    {
      v68 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]";
        v91 = 2080;
        v92 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteDivergenceFinder.mm";
        v93 = 1024;
        v94 = 1071;
        v95 = 2080;
        v96 = "GEOPolylineCoordinateInRange(convergenceCoordinateA, rangeA) && GEOPolylineCoordinateInRange(convergenceCoordinateB, rangeB)";
        _os_log_impl(&dword_1D311E000, v68, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
      }
    }

    if (self->_minLengthMetersForConvergence <= 0.0 || ![(MNRouteDivergenceFinder *)self _pathsDivergeBetweenRoute:v71 from:v67 andRoute:v70 from:v27 withinDistance:?])
    {
      *coordinate = v67;
      *routeCoordinate = v27;
    }
  }

  std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(&v81);
  std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(&v84);
  std::deque<_MNRouteConvergencePoint>::~deque[abi:ne200100](&v87);
}

- (void)_findFirstConvergenceBetweenRoute:(uint64_t *)result range:(__int128 *)range andRoute:(unint64_t *)route range:(__int128 *)a4 outRouteCoordinate:(uint64_t)coordinate outRouteCoordinate:(char)routeCoordinate
{
  v642 = *MEMORY[0x1E69E9840];
  if (a4 == range)
  {
    return;
  }

  v8 = a4;
  rangeCopy = range;
  while (1)
  {
    v11 = 42 * ((route - result) >> 3);
    v12 = *route;
    v13 = *result;
    v14 = rangeCopy - *result;
    v15 = v11 - 0x5555555555555555 * ((v8 - *route) >> 5) + 0x5555555555555555 * (v14 >> 5);
    v16 = v15 - 2;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        if (v8 == v12)
        {
          v8 = (*(route - 1) + 4032);
        }

        v340 = *(v8 - 11);
        v341 = *(rangeCopy + 8);
        if (v340 < v341 || v340 <= v341 && *(v8 - 8) == 1 && (*(rangeCopy + 88) & 1) == 0)
        {
          v342 = (v8 - 6);
          goto LABEL_446;
        }

        return;
      }

      goto LABEL_11;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v345 = v14 / 96;
      if (v14 >= -95)
      {
        v346 = (v345 + 1) / 0x2AuLL;
        v347 = &result[v346];
        v348 = *v347 - 4032 * v346 + 96 * (v345 + 1);
        v349 = v345 + 2;
        routeCopy2 = route;
        goto LABEL_456;
      }

      v347 = &result[-((40 - v345) / 0x2AuLL)];
      v348 = *v347 + 96 * (41 - ((40 - v345) % 0x2AuLL));
      routeCopy2 = route;
      if (v14 < 0xFFFFFFFFFFFFFF41)
      {
        v592 = 39 - v345;
        v515 = &result[-(v592 / 0x2A)];
        v516 = (*v515 + 96 * (41 - (v592 % 0x2A)));
      }

      else
      {
        v349 = 1;
LABEL_456:
        v515 = &result[v349 / 0x2A];
        v516 = (*v515 - 4032 * (v349 / 0x2A) + 96 * v349);
      }

      if (v8 == v12)
      {
        v593 = *--routeCopy2;
        v8 = (v593 + 4032);
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(result, rangeCopy, v347, v348, v515, v516, routeCopy2, v8 - 6);
      return;
    }

    if (v15 == 5)
    {
      v351 = v14 / 96;
      if (v14 >= -95)
      {
        v352 = (v351 + 1) / 0x2AuLL;
        v353 = &result[v352];
        v354 = *v353 - 4032 * v352 + 96 * (v351 + 1);
        v355 = v351 + 2;
        goto LABEL_459;
      }

      v353 = &result[-((40 - v351) / 0x2AuLL)];
      v354 = *v353 + 96 * (41 - ((40 - v351) % 0x2AuLL));
      if (v14 < 0xFFFFFFFFFFFFFF41)
      {
        v517 = &result[-((39 - v351) / 0x2AuLL)];
        v518 = *v517 + 96 * (41 - ((39 - v351) % 0x2AuLL));
        routeCopy4 = route;
        if (v14 >= 0xFFFFFFFFFFFFFEE1)
        {
          v519 = 1;
          goto LABEL_460;
        }

        v621 = 38 - v351;
        v521 = &result[-(v621 / 0x2A)];
        v522 = *v521 + 96 * (41 - (v621 % 0x2A));
      }

      else
      {
        v355 = 1;
LABEL_459:
        v517 = &result[v355 / 0x2A];
        v518 = *v517 - 4032 * (v355 / 0x2A) + 96 * v355;
        v519 = v351 + 3;
        routeCopy4 = route;
LABEL_460:
        v521 = &result[v519 / 0x2A];
        v522 = *v521 - 4032 * (v519 / 0x2A) + 96 * v519;
      }

      if (v8 == v12)
      {
        v8 = (*(routeCopy4 - 1) + 4032);
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(result, rangeCopy, v353, v354, v517, v518, v521, v522);
      v523 = *(v8 - 11);
      v524 = *(v522 + 8);
      if (v523 < v524 || v523 <= v524 && *(v8 - 8) == 1 && (*(v522 + 88) & 1) == 0)
      {
        v525 = (v8 - 6);
        v639 = *(v522 + 32);
        v640 = *(v522 + 48);
        *v641 = *(v522 + 64);
        *&v641[16] = *(v522 + 80);
        v637 = *v522;
        v638 = *(v522 + 16);
        v526 = *(v8 - 5);
        *v522 = *(v8 - 6);
        *(v522 + 16) = v526;
        v528 = *(v8 - 3);
        v527 = *(v8 - 2);
        v529 = *(v8 - 4);
        *(v522 + 74) = *(v8 - 22);
        *(v522 + 48) = v528;
        *(v522 + 64) = v527;
        *(v522 + 32) = v529;
        v530 = v638;
        *v525 = v637;
        v525[1] = v530;
        v531 = v639;
        v532 = v640;
        v533 = *v641;
        *(v525 + 74) = *&v641[10];
        v525[3] = v532;
        v525[4] = v533;
        v525[2] = v531;
        v534 = *(v522 + 8);
        v535 = *(v518 + 8);
        if (v534 < v535 || v534 <= v535 && *(v522 + 88) == 1 && (*(v518 + 88) & 1) == 0)
        {
          v536 = *(v518 + 16);
          v637 = *v518;
          v638 = v536;
          v537 = *(v518 + 32);
          v538 = *(v518 + 48);
          v539 = *(v518 + 80);
          *v641 = *(v518 + 64);
          *&v641[16] = v539;
          v639 = v537;
          v640 = v538;
          v541 = *(v522 + 48);
          v540 = *(v522 + 64);
          v542 = *(v522 + 32);
          *(v518 + 74) = *(v522 + 74);
          *(v518 + 48) = v541;
          *(v518 + 64) = v540;
          *(v518 + 32) = v542;
          v543 = *(v522 + 16);
          *v518 = *v522;
          *(v518 + 16) = v543;
          *(v522 + 48) = v640;
          *(v522 + 32) = v639;
          *(v522 + 64) = *v641;
          *(v522 + 74) = *&v641[10];
          *v522 = v637;
          *(v522 + 16) = v638;
          v544 = *(v518 + 8);
          v545 = *(v354 + 8);
          if (v544 < v545 || v544 <= v545 && *(v518 + 88) == 1 && (*(v354 + 88) & 1) == 0)
          {
            v546 = *(v354 + 16);
            v637 = *v354;
            v638 = v546;
            v547 = *(v354 + 32);
            v548 = *(v354 + 48);
            v549 = *(v354 + 80);
            *v641 = *(v354 + 64);
            *&v641[16] = v549;
            v639 = v547;
            v640 = v548;
            v551 = *(v518 + 48);
            v550 = *(v518 + 64);
            v552 = *(v518 + 32);
            *(v354 + 74) = *(v518 + 74);
            *(v354 + 48) = v551;
            *(v354 + 64) = v550;
            *(v354 + 32) = v552;
            v553 = *(v518 + 16);
            *v354 = *v518;
            *(v354 + 16) = v553;
            v554 = v638;
            *v518 = v637;
            *(v518 + 16) = v554;
            v555 = v639;
            v556 = v640;
            v557 = *v641;
            *(v518 + 74) = *&v641[10];
            *(v518 + 48) = v556;
            *(v518 + 64) = v557;
            *(v518 + 32) = v555;
            v558 = *(v354 + 8);
            v559 = *(rangeCopy + 8);
            if (v558 < v559 || v558 <= v559 && *(v354 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
            {
              v560 = *(rangeCopy + 16);
              v637 = *rangeCopy;
              v638 = v560;
              v561 = *(rangeCopy + 32);
              v562 = *(rangeCopy + 48);
              v563 = *(rangeCopy + 80);
              *v641 = *(rangeCopy + 64);
              *&v641[16] = v563;
              v639 = v561;
              v640 = v562;
              v565 = *(v354 + 48);
              v564 = *(v354 + 64);
              v566 = *(v354 + 32);
              *(rangeCopy + 74) = *(v354 + 74);
              *(rangeCopy + 48) = v565;
              *(rangeCopy + 64) = v564;
              *(rangeCopy + 32) = v566;
              v567 = *(v354 + 16);
              *rangeCopy = *v354;
              *(rangeCopy + 16) = v567;
              v568 = v638;
              *v354 = v637;
              *(v354 + 16) = v568;
              v569 = v639;
              v570 = v640;
              v571 = *v641;
              *(v354 + 74) = *&v641[10];
              *(v354 + 48) = v570;
              *(v354 + 64) = v571;
              *(v354 + 32) = v569;
            }
          }
        }
      }

      return;
    }

LABEL_11:
    if (v15 <= 23)
    {
      if (routeCoordinate)
      {
        if (rangeCopy == v8)
        {
          return;
        }

        v356 = rangeCopy + 96;
        while (2)
        {
          if (v356 - v13 == 4032)
          {
            v357 = result[1];
            ++result;
            v13 = v357;
            v356 = v357;
          }

          if (v356 == v8)
          {
            return;
          }

          v358 = result;
          v359 = v356;
          if (v356 == v13)
          {
            v358 = result - 1;
            v359 = *(result - 1) + 4032;
          }

          v360 = *(v356 + 8);
          v361 = *(v359 - 88);
          if (v360 < v361)
          {
            LOBYTE(v362) = *(v356 + 88);
            goto LABEL_336;
          }

          if (v360 <= v361)
          {
            v362 = *(v356 + 88);
            if (v362 == 1 && (*(v359 - 8) & 1) == 0)
            {
LABEL_336:
              v363 = *v356;
              v364 = *(v356 + 32);
              v365 = *(v356 + 48);
              v366 = *(v356 + 64);
              *v641 = *(v356 + 80);
              v639 = v365;
              v640 = v366;
              v638 = v364;
              v637 = *(v356 + 16);
              v367 = *(v356 + 89);
              v368 = (v359 - 96);
              v369 = *(v359 - 22);
              v371 = *(v359 - 48);
              v370 = *(v359 - 32);
              *(v356 + 32) = *(v359 - 64);
              *(v356 + 48) = v371;
              *(v356 + 64) = v370;
              *(v356 + 74) = v369;
              v372 = *(v359 - 80);
              *v356 = *(v359 - 96);
              *(v356 + 16) = v372;
              if (v359 - 96 != rangeCopy)
              {
                do
                {
                  if (v368 == *v358)
                  {
                    v374 = *--v358;
                    v373 = (v374 + 4032);
                  }

                  else
                  {
                    v373 = v368;
                  }

                  v375 = *(v373 - 11);
                  if (v360 >= v375 && (v360 > v375 || (v362 & 1) == 0 || (*(v373 - 1) & 1) != 0))
                  {
                    break;
                  }

                  v376 = *(v373 - 5);
                  *v368 = *(v373 - 6);
                  *(v368 + 1) = v376;
                  v377 = *(v373 - 4);
                  v378 = *(v373 - 3);
                  v379 = *(v373 - 2);
                  *(v368 + 74) = *(v373 - 22);
                  *(v368 + 3) = v378;
                  *(v368 + 4) = v379;
                  *(v368 + 2) = v377;
                  v368 = v373 - 12;
                  v359 = v373;
                }

                while (v373 - 12 != rangeCopy);
              }

              *(v359 - 96) = v363;
              *(v359 - 88) = v360;
              *(v359 - 80) = v637;
              v380 = v638;
              v381 = v639;
              v382 = v640;
              *(v359 - 16) = *v641;
              *(v359 - 48) = v381;
              *(v359 - 32) = v382;
              *(v359 - 64) = v380;
              *(v359 - 8) = v362;
              *(v359 - 7) = v367;
              v13 = *result;
            }
          }

          v356 += 96;
          continue;
        }
      }

      if (rangeCopy == v8)
      {
        return;
      }

      v572 = v14 / 96;
      if (v14 < -95)
      {
        v594 = 40 - v572;
        v575 = &result[-((40 - v572) / 0x2AuLL)];
        v576 = *v575;
        v577 = *v575 + 96 * (41 - (v594 % 0x2A));
      }

      else
      {
        v573 = v572 + 1;
        v574 = v572 + 1;
        v575 = &result[(v572 + 1) / 0x2AuLL];
        v576 = *v575;
        v577 = *v575 - 4032 * (v574 / 0x2A) + 96 * v573;
      }

      if (v577 == v8)
      {
        return;
      }

      while (2)
      {
        v595 = (v577 - v576) / 96;
        if (v577 - v576 < 97)
        {
          v600 = 42 - v595;
          v598 = &v575[-((42 - v595) / 0x2AuLL)];
          v599 = *v598 + 96 * (41 - (v600 % 0x2A));
        }

        else
        {
          v596 = v595 - 1;
          v597 = v595 - 1;
          v598 = &v575[(v595 - 1) / 0x2AuLL];
          v599 = *v598 - 4032 * (v597 / 0x2A) + 96 * v596;
        }

        v601 = *(v577 + 8);
        v602 = *(v599 + 8);
        if (v601 >= v602)
        {
          if (v601 <= v602)
          {
            v603 = *(v577 + 88);
            if (v603 == 1 && (*(v599 + 88) & 1) == 0)
            {
              goto LABEL_505;
            }
          }
        }

        else
        {
          LOBYTE(v603) = *(v577 + 88);
LABEL_505:
          v604 = *v577;
          v605 = *(v577 + 32);
          v606 = *(v577 + 64);
          v639 = *(v577 + 48);
          v640 = v606;
          *v641 = *(v577 + 80);
          v638 = v605;
          v637 = *(v577 + 16);
          v607 = *(v577 + 89);
          v608 = v577;
          while (1)
          {
            v609 = v599;
            v610 = *(v599 + 16);
            *v608 = *v599;
            v608[1] = v610;
            v611 = *(v599 + 32);
            v612 = *(v599 + 48);
            v613 = *(v599 + 64);
            *(v608 + 74) = *(v599 + 74);
            v608[3] = v612;
            v608[4] = v613;
            v608[2] = v611;
            if (v599 == *v598)
            {
              v615 = *--v598;
              v614 = v615 + 4032;
            }

            else
            {
              v614 = v599;
            }

            v599 = v614 - 96;
            v616 = *(v614 - 88);
            v608 = v609;
            if (v601 >= v616)
            {
              if (v601 > v616)
              {
                break;
              }

              if ((v603 & 1) == 0)
              {
                break;
              }

              v608 = v609;
              if (*(v614 - 8) == 1)
              {
                break;
              }
            }
          }

          *v609 = v604;
          *(v609 + 8) = v601;
          v617 = *v641;
          v618 = v640;
          *(v609 + 48) = v639;
          *(v609 + 64) = v618;
          *(v609 + 80) = v617;
          v619 = v638;
          *(v609 + 16) = v637;
          *(v609 + 32) = v619;
          *(v609 + 88) = v603;
          *(v609 + 89) = v607;
          v576 = *v575;
        }

        v577 += 96;
        if (v577 - v576 == 4032)
        {
          v620 = v575[1];
          ++v575;
          v576 = v620;
          v577 = v620;
        }

        if (v577 == v8)
        {
          return;
        }

        continue;
      }
    }

    if (!coordinate)
    {
      if (rangeCopy == v8)
      {
        return;
      }

      v627 = v8;
      v383 = v16 >> 1;
      for (i = v16 >> 1; ; --i)
      {
        v637.n128_u64[0] = result;
        v637.n128_u64[1] = rangeCopy;
        std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, i);
        v385 = v637.n128_u64[1];
        if (v637.n128_u64[1] == rangeCopy)
        {
          v386 = 0;
        }

        else
        {
          v386 = 42 * ((v637.n128_u64[0] - result) >> 3) - 0x5555555555555555 * ((v637.n128_u64[1] - *v637.n128_u64[0]) >> 5) + 0x5555555555555555 * ((rangeCopy - *result) >> 5);
          if (v383 < v386)
          {
            goto LABEL_390;
          }
        }

        v387 = 2 * v386;
        v388 = (2 * v386) | 1;
        v637.n128_u64[0] = result;
        v637.n128_u64[1] = rangeCopy;
        std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v388);
        v389 = v637.n128_i64[1];
        if (v387 + 2 < v15)
        {
          v390 = v637.n128_u64[1] - *v637.n128_u64[0];
          v391 = v390 / 96;
          v392 = v390 < -95 ? *(v637.n128_u64[0] - 8 * ((40 - v391) / 0x2AuLL)) + 96 * (41 - ((40 - v391) % 0x2AuLL)) : *(v637.n128_u64[0] + 8 * ((v391 + 1) / 0x2AuLL)) - 4032 * ((v391 + 1) / 0x2AuLL) + 96 * (v391 + 1);
          v393 = *(v637.n128_u64[1] + 8);
          v394 = *(v392 + 8);
          if (v393 < v394 || v393 <= v394 && *(v637.n128_u64[1] + 88) == 1 && (*(v392 + 88) & 1) == 0)
          {
            v389 = v637.n128_u64[1] + 96;
            if (v637.n128_u64[1] + 96 - *v637.n128_u64[0] == 4032)
            {
              v389 = *(v637.n128_u64[0] + 8);
            }

            v388 = v387 + 2;
          }
        }

        v395 = *(v389 + 8);
        v396 = *(v385 + 8);
        if (v395 >= v396 && (v395 > v396 || *(v389 + 88) != 1 || *(v385 + 88) == 1))
        {
          v397 = *v385;
          v398 = *(v385 + 48);
          v638 = *(v385 + 32);
          v639 = v398;
          v640 = *(v385 + 64);
          *v641 = *(v385 + 80);
          v637 = *(v385 + 16);
          v625 = *(v385 + 88);
          v399 = *(v385 + 89);
          v400 = *v389;
          *(v385 + 16) = *(v389 + 16);
          v402 = *(v389 + 48);
          v401 = *(v389 + 64);
          v403 = *(v389 + 74);
          *(v385 + 32) = *(v389 + 32);
          *(v385 + 48) = v402;
          *(v385 + 74) = v403;
          *(v385 + 64) = v401;
          *v385 = v400;
          v622 = v399;
          if (v383 >= v388)
          {
            while (1)
            {
              v404 = v389;
              v405 = 2 * v388;
              v388 = (2 * v388) | 1;
              *&v632 = result;
              *(&v632 + 1) = rangeCopy;
              std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v632, v388);
              v389 = *(&v632 + 1);
              if (v405 + 2 < v15)
              {
                v406 = *(&v632 + 1) - *v632;
                v407 = v406 / 96;
                v408 = v406 < -95 ? *(v632 - 8 * ((40 - v407) / 0x2AuLL)) + 96 * (41 - ((40 - v407) % 0x2AuLL)) : *(v632 + 8 * ((v407 + 1) / 0x2AuLL)) - 4032 * ((v407 + 1) / 0x2AuLL) + 96 * (v407 + 1);
                v409 = *(*(&v632 + 1) + 8);
                v410 = *(v408 + 8);
                if (v409 < v410 || v409 <= v410 && *(*(&v632 + 1) + 88) == 1 && (*(v408 + 88) & 1) == 0)
                {
                  v389 = *(&v632 + 1) + 96;
                  if (*(&v632 + 1) + 96 - *v632 == 4032)
                  {
                    v389 = *(v632 + 8);
                  }

                  v388 = v405 + 2;
                }
              }

              v411 = *(v389 + 8);
              if (v411 < v396 || v411 <= v396 && *(v389 + 88) == 1 && (v625 & 1) == 0)
              {
                break;
              }

              v412 = *(v389 + 16);
              *v404 = *v389;
              v404[1] = v412;
              v413 = *(v389 + 32);
              v414 = *(v389 + 48);
              v415 = *(v389 + 64);
              *(v404 + 74) = *(v389 + 74);
              v404[3] = v414;
              v404[4] = v415;
              v404[2] = v413;
              if (v383 < v388)
              {
                goto LABEL_389;
              }
            }

            v389 = v404;
          }

LABEL_389:
          *v389 = v397;
          *(v389 + 8) = v396;
          v416 = *v641;
          v417 = v640;
          *(v389 + 48) = v639;
          *(v389 + 64) = v417;
          *(v389 + 80) = v416;
          v418 = v638;
          *(v389 + 16) = v637;
          *(v389 + 32) = v418;
          *(v389 + 88) = v625;
          *(v389 + 89) = v622;
        }

LABEL_390:
        if (!i)
        {
          v419 = v627;
          v420 = v11 - 0x5555555555555555 * ((v627 - *route) >> 5) + 0x5555555555555555 * ((rangeCopy - *result) >> 5);
          if (v420 < 2)
          {
            return;
          }

          while (2)
          {
            v628 = v419;
            v421 = 0;
            v422 = *(rangeCopy + 16);
            v637 = *rangeCopy;
            v638 = v422;
            v423 = *(rangeCopy + 32);
            v424 = *(rangeCopy + 48);
            v425 = *(rangeCopy + 80);
            *v641 = *(rangeCopy + 64);
            *&v641[16] = v425;
            v639 = v423;
            v640 = v424;
            *&v632 = result;
            *(&v632 + 1) = rangeCopy;
            v426 = rangeCopy;
            do
            {
              v427 = v426;
              std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v632, v421 + 1);
              v428 = 2 * v421;
              v421 = (2 * v421) | 1;
              v429 = v428 + 2;
              v426 = *(&v632 + 1);
              if (v429 < v420)
              {
                v430 = *(&v632 + 1) - *v632;
                v431 = v430 / 96;
                v432 = v430 < -95 ? *(v632 - 8 * ((40 - v431) / 0x2AuLL)) + 96 * (41 - ((40 - v431) % 0x2AuLL)) : *(v632 + 8 * ((v431 + 1) / 0x2AuLL)) - 4032 * ((v431 + 1) / 0x2AuLL) + 96 * (v431 + 1);
                v433 = *(*(&v632 + 1) + 8);
                v434 = *(v432 + 8);
                if (v433 < v434 || v433 <= v434 && *(*(&v632 + 1) + 88) == 1 && (*(v432 + 88) & 1) == 0)
                {
                  v426 = (*(&v632 + 1) + 96);
                  *(&v632 + 1) = v426;
                  if ((v426 - *v632) == 4032)
                  {
                    v426 = *(v632 + 8);
                    *&v632 = v632 + 8;
                    *(&v632 + 1) = v426;
                  }

                  v421 = v429;
                }
              }

              v435 = v426[1];
              *v427 = *v426;
              v427[1] = v435;
              v436 = v426[2];
              v437 = v426[3];
              v438 = v426[4];
              *(v427 + 74) = *(v426 + 74);
              v427[3] = v437;
              v427[4] = v438;
              v427[2] = v436;
            }

            while (v421 <= ((v420 - 2) >> 1));
            v439 = v632;
            v440 = v628;
            if (*route == v628)
            {
              v440 = *(route - 1) + 4032;
            }

            v441 = (v440 - 96);
            if (v426 == v441)
            {
              v426[2] = v639;
              v426[3] = v640;
              v426[4] = *v641;
              *(v426 + 74) = *&v641[10];
              *v426 = v637;
              v426[1] = v638;
            }

            else
            {
              v442 = v441[1];
              *v426 = *v441;
              v426[1] = v442;
              v443 = v441[2];
              v444 = v441[3];
              v445 = v441[4];
              *(v426 + 74) = *(v441 + 74);
              v426[3] = v444;
              v426[4] = v445;
              v426[2] = v443;
              v446 = &v426[6];
              if ((&v426[6] - *v439) == 4032)
              {
                v447 = v439[1];
                ++v439;
                v446 = v447;
              }

              v448 = v638;
              *v441 = v637;
              v441[1] = v448;
              v449 = v639;
              v450 = v640;
              v451 = *v641;
              *(v441 + 74) = *&v641[10];
              v441[3] = v450;
              v441[4] = v451;
              v441[2] = v449;
              if (v446 != rangeCopy)
              {
                v452 = 42 * (v439 - result) - 0x5555555555555555 * ((v446 - *v439) >> 5) + 0x5555555555555555 * ((rangeCopy - *result) >> 5);
                v453 = v452 < 2;
                v454 = v452 - 2;
                if (!v453)
                {
                  v623 = v454;
                  v455 = v454 >> 1;
                  *&v632 = result;
                  *(&v632 + 1) = rangeCopy;
                  std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v632, v454 >> 1);
                  if (*v439 == v446)
                  {
                    v446 = *(v439 - 1) + 4032;
                  }

                  v456 = *(&v632 + 1);
                  v457 = *(*(&v632 + 1) + 8);
                  v458 = *(v446 - 88);
                  if (v457 < v458)
                  {
                    v626 = *(v446 - 8);
                    v459 = v623;
                    goto LABEL_417;
                  }

                  v459 = v623;
                  if (v457 <= v458 && *(*(&v632 + 1) + 88) == 1)
                  {
                    v626 = *(v446 - 8);
                    if ((v626 & 1) == 0)
                    {
LABEL_417:
                      v460 = (v446 - 96);
                      v461 = *(v446 - 96);
                      v632 = *(v446 - 80);
                      v462 = *(v446 - 64);
                      v463 = *(v446 - 48);
                      v464 = *(v446 - 32);
                      v636 = *(v446 - 16);
                      v634 = v463;
                      v635 = v464;
                      v633 = v462;
                      v624 = *(v446 - 7);
                      v465 = *(v456 + 74);
                      v467 = v456[2];
                      v466 = v456[3];
                      v460[4] = v456[4];
                      v468 = v456[1];
                      *v460 = *v456;
                      v460[1] = v468;
                      v460[2] = v467;
                      v460[3] = v466;
                      *(v460 + 74) = v465;
                      if (v459 >= 2)
                      {
                        v469 = v456;
                        while (1)
                        {
                          v470 = v455 - 1;
                          v455 = (v455 - 1) >> 1;
                          v630 = result;
                          v631 = rangeCopy;
                          std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v630, v455);
                          v456 = v631;
                          v471 = *(v631 + 8);
                          if (v471 >= v458 && (v471 > v458 || *(v631 + 88) != 1 || (v626 & 1) != 0))
                          {
                            break;
                          }

                          v472 = *(v631 + 16);
                          *v469 = *v631;
                          v469[1] = v472;
                          v473 = v456[2];
                          v474 = v456[3];
                          v475 = v456[4];
                          *(v469 + 74) = *(v456 + 74);
                          v469[3] = v474;
                          v469[4] = v475;
                          v469[2] = v473;
                          v469 = v456;
                          if (v470 <= 1)
                          {
                            goto LABEL_431;
                          }
                        }

                        v456 = v469;
                      }

LABEL_431:
                      *v456 = v461;
                      *(v456 + 1) = v458;
                      v476 = v636;
                      v477 = v635;
                      v456[3] = v634;
                      v456[4] = v477;
                      *(v456 + 10) = v476;
                      v478 = v633;
                      v456[1] = v632;
                      v456[2] = v478;
                      *(v456 + 88) = v626;
                      *(v456 + 89) = v624;
                    }
                  }
                }
              }
            }

            v479 = v628;
            if (v628 == *route)
            {
              v480 = *--route;
              v479 = v480 + 4032;
            }

            v419 = (v479 - 96);
            v453 = v420-- <= 2;
            if (v453)
            {
              return;
            }

            continue;
          }
        }
      }
    }

    v17 = v15 >> 1;
    if (v15 >= 0x81)
    {
      v637.n128_u64[0] = result;
      v637.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v15 >> 1);
      v18 = v8 - *route;
      v19 = v18 / 96;
      if (v18 < 97)
      {
        v20 = route[-((42 - v19) / 0x2AuLL)] + 96 * (41 - ((42 - v19) % 0x2AuLL));
      }

      else
      {
        v20 = route[(v19 - 1) / 0x2AuLL] - 4032 * ((v19 - 1) / 0x2AuLL) + 96 * (v19 - 1);
      }

      v25 = v637.n128_u64[1];
      v26 = *(v637.n128_u64[1] + 8);
      v27 = *(rangeCopy + 8);
      if (v26 < v27 || v26 <= v27 && *(v637.n128_u64[1] + 88) == 1 && *(rangeCopy + 88) != 1)
      {
        v28 = *(v20 + 8);
        if (v28 < v26 || v28 <= v26 && *(v20 + 88) == 1 && (*(v637.n128_u64[1] + 88) & 1) == 0)
        {
          v29 = *(rangeCopy + 16);
          v637 = *rangeCopy;
          v638 = v29;
          v30 = *(rangeCopy + 32);
          v31 = *(rangeCopy + 48);
          v32 = *(rangeCopy + 80);
          *v641 = *(rangeCopy + 64);
          *&v641[16] = v32;
          v639 = v30;
          v640 = v31;
          v34 = *(v20 + 48);
          v33 = *(v20 + 64);
          v35 = *(v20 + 32);
          *(rangeCopy + 74) = *(v20 + 74);
          *(rangeCopy + 48) = v34;
          *(rangeCopy + 64) = v33;
          *(rangeCopy + 32) = v35;
          v36 = *(v20 + 16);
          *rangeCopy = *v20;
          *(rangeCopy + 16) = v36;
          *(v20 + 48) = v640;
          *(v20 + 32) = v639;
          *(v20 + 64) = *v641;
          *(v20 + 74) = *&v641[10];
          *v20 = v637;
        }

        else
        {
          v79 = *(rangeCopy + 16);
          v637 = *rangeCopy;
          v638 = v79;
          v80 = *(rangeCopy + 32);
          v81 = *(rangeCopy + 48);
          v82 = *(rangeCopy + 80);
          *v641 = *(rangeCopy + 64);
          *&v641[16] = v82;
          v639 = v80;
          v640 = v81;
          v84 = *(v25 + 48);
          v83 = *(v25 + 64);
          v85 = *(v25 + 32);
          *(rangeCopy + 74) = *(v25 + 74);
          *(rangeCopy + 48) = v84;
          *(rangeCopy + 64) = v83;
          *(rangeCopy + 32) = v85;
          v86 = *(v25 + 16);
          *rangeCopy = *v25;
          *(rangeCopy + 16) = v86;
          *(v25 + 48) = v640;
          *(v25 + 32) = v639;
          *(v25 + 64) = *v641;
          *(v25 + 74) = *&v641[10];
          *v25 = v637;
          *(v25 + 16) = v638;
          v87 = *(v20 + 8);
          v88 = *(v25 + 8);
          if (v87 >= v88 && (v87 > v88 || *(v20 + 88) != 1 || (*(v25 + 88) & 1) != 0))
          {
            goto LABEL_44;
          }

          v639 = *(v25 + 32);
          v640 = *(v25 + 48);
          *v641 = *(v25 + 64);
          *&v641[16] = *(v25 + 80);
          v637 = *v25;
          v638 = *(v25 + 16);
          v89 = *(v20 + 16);
          *v25 = *v20;
          *(v25 + 16) = v89;
          v91 = *(v20 + 48);
          v90 = *(v20 + 64);
          v92 = *(v20 + 32);
          *(v25 + 74) = *(v20 + 74);
          *(v25 + 48) = v91;
          *(v25 + 64) = v90;
          *(v25 + 32) = v92;
          *(v20 + 64) = *v641;
          *(v20 + 74) = *&v641[10];
          *v20 = v637;
          *(v20 + 48) = v640;
          *(v20 + 32) = v639;
        }

        *(v20 + 16) = v638;
      }

      else
      {
        v45 = *(v20 + 8);
        if (v45 < v26 || v45 <= v26 && *(v20 + 88) == 1 && (*(v637.n128_u64[1] + 88) & 1) == 0)
        {
          v639 = *(v637.n128_u64[1] + 32);
          v640 = *(v637.n128_u64[1] + 48);
          *v641 = *(v637.n128_u64[1] + 64);
          *&v641[16] = *(v637.n128_u64[1] + 80);
          v637 = *v637.n128_u64[1];
          v638 = *(v25 + 16);
          v46 = *(v20 + 16);
          *v25 = *v20;
          *(v25 + 16) = v46;
          v48 = *(v20 + 48);
          v47 = *(v20 + 64);
          v49 = *(v20 + 32);
          *(v25 + 74) = *(v20 + 74);
          *(v25 + 48) = v48;
          *(v25 + 64) = v47;
          *(v25 + 32) = v49;
          *(v20 + 64) = *v641;
          *(v20 + 74) = *&v641[10];
          *v20 = v637;
          *(v20 + 48) = v640;
          *(v20 + 32) = v639;
          *(v20 + 16) = v638;
          v50 = *(v25 + 8);
          v51 = *(rangeCopy + 8);
          if (v50 < v51 || v50 <= v51 && *(v25 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
          {
            v52 = *(rangeCopy + 16);
            v637 = *rangeCopy;
            v638 = v52;
            v53 = *(rangeCopy + 32);
            v54 = *(rangeCopy + 48);
            v55 = *(rangeCopy + 80);
            *v641 = *(rangeCopy + 64);
            *&v641[16] = v55;
            v639 = v53;
            v640 = v54;
            v57 = *(v25 + 48);
            v56 = *(v25 + 64);
            v58 = *(v25 + 32);
            *(rangeCopy + 74) = *(v25 + 74);
            *(rangeCopy + 48) = v57;
            *(rangeCopy + 64) = v56;
            *(rangeCopy + 32) = v58;
            v59 = *(v25 + 16);
            *rangeCopy = *v25;
            *(rangeCopy + 16) = v59;
            *(v25 + 48) = v640;
            *(v25 + 32) = v639;
            *(v25 + 64) = *v641;
            *(v25 + 74) = *&v641[10];
            *v25 = v637;
            *(v25 + 16) = v638;
          }
        }
      }

LABEL_44:
      v93 = rangeCopy - *result;
      v94 = v93 / 96;
      if (v93 < -95)
      {
        v95 = result[-((40 - v94) / 0x2AuLL)] + 96 * (41 - ((40 - v94) % 0x2AuLL));
      }

      else
      {
        v95 = result[(v94 + 1) / 0x2AuLL] - 4032 * ((v94 + 1) / 0x2AuLL) + 96 * (v94 + 1);
      }

      v637.n128_u64[0] = result;
      v637.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v17 - 1);
      v96 = v637.n128_u64[1];
      v97 = v8 - *route;
      v98 = v97 / 96;
      if (v97 < 193)
      {
        v99 = route[-((43 - v98) / 0x2AuLL)] + 96 * (41 - ((43 - v98) % 0x2AuLL));
      }

      else
      {
        v99 = route[(v98 - 2) / 0x2AuLL] - 4032 * ((v98 - 2) / 0x2AuLL) + 96 * (v98 - 2);
      }

      v100 = *(v637.n128_u64[1] + 8);
      v101 = *(v95 + 8);
      if (v100 < v101 || v100 <= v101 && *(v637.n128_u64[1] + 88) == 1 && *(v95 + 88) != 1)
      {
        v102 = *(v99 + 8);
        if (v102 < v100 || v102 <= v100 && *(v99 + 88) == 1 && (*(v637.n128_u64[1] + 88) & 1) == 0)
        {
          v639 = *(v95 + 32);
          v640 = *(v95 + 48);
          *v641 = *(v95 + 64);
          *&v641[16] = *(v95 + 80);
          v637 = *v95;
          v638 = *(v95 + 16);
          v103 = *(v99 + 16);
          *v95 = *v99;
          *(v95 + 16) = v103;
          v105 = *(v99 + 48);
          v104 = *(v99 + 64);
          v106 = *(v99 + 32);
          *(v95 + 74) = *(v99 + 74);
          *(v95 + 48) = v105;
          *(v95 + 64) = v104;
          *(v95 + 32) = v106;
        }

        else
        {
          v639 = *(v95 + 32);
          v640 = *(v95 + 48);
          *v641 = *(v95 + 64);
          *&v641[16] = *(v95 + 80);
          v637 = *v95;
          v638 = *(v95 + 16);
          v136 = *(v96 + 16);
          *v95 = *v96;
          *(v95 + 16) = v136;
          v138 = *(v96 + 48);
          v137 = *(v96 + 64);
          v139 = *(v96 + 32);
          *(v95 + 74) = *(v96 + 74);
          *(v95 + 48) = v138;
          *(v95 + 64) = v137;
          *(v95 + 32) = v139;
          *(v96 + 64) = *v641;
          *(v96 + 74) = *&v641[10];
          *v96 = v637;
          *(v96 + 48) = v640;
          *(v96 + 32) = v639;
          *(v96 + 16) = v638;
          v140 = *(v99 + 8);
          v141 = *(v96 + 8);
          if (v140 >= v141 && (v140 > v141 || *(v99 + 88) != 1 || (*(v96 + 88) & 1) != 0))
          {
            goto LABEL_71;
          }

          v639 = *(v96 + 32);
          v640 = *(v96 + 48);
          *v641 = *(v96 + 64);
          *&v641[16] = *(v96 + 80);
          v637 = *v96;
          v638 = *(v96 + 16);
          v142 = *(v99 + 16);
          *v96 = *v99;
          *(v96 + 16) = v142;
          v144 = *(v99 + 48);
          v143 = *(v99 + 64);
          v145 = *(v99 + 32);
          *(v96 + 74) = *(v99 + 74);
          *(v96 + 48) = v144;
          *(v96 + 64) = v143;
          *(v96 + 32) = v145;
        }

        *(v99 + 64) = *v641;
        *(v99 + 74) = *&v641[10];
        *v99 = v637;
        *(v99 + 48) = v640;
        *(v99 + 32) = v639;
        *(v99 + 16) = v638;
      }

      else
      {
        v107 = *(v99 + 8);
        if (v107 < v100 || v107 <= v100 && *(v99 + 88) == 1 && (*(v637.n128_u64[1] + 88) & 1) == 0)
        {
          v639 = *(v637.n128_u64[1] + 32);
          v640 = *(v637.n128_u64[1] + 48);
          *v641 = *(v637.n128_u64[1] + 64);
          *&v641[16] = *(v637.n128_u64[1] + 80);
          v637 = *v637.n128_u64[1];
          v638 = *(v96 + 16);
          v108 = *(v99 + 16);
          *v96 = *v99;
          *(v96 + 16) = v108;
          v110 = *(v99 + 48);
          v109 = *(v99 + 64);
          v111 = *(v99 + 32);
          *(v96 + 74) = *(v99 + 74);
          *(v96 + 48) = v110;
          *(v96 + 64) = v109;
          *(v96 + 32) = v111;
          *(v99 + 64) = *v641;
          *(v99 + 74) = *&v641[10];
          *v99 = v637;
          *(v99 + 48) = v640;
          *(v99 + 32) = v639;
          *(v99 + 16) = v638;
          v112 = *(v96 + 8);
          v113 = *(v95 + 8);
          if (v112 < v113 || v112 <= v113 && *(v96 + 88) == 1 && (*(v95 + 88) & 1) == 0)
          {
            v639 = *(v95 + 32);
            v640 = *(v95 + 48);
            *v641 = *(v95 + 64);
            *&v641[16] = *(v95 + 80);
            v637 = *v95;
            v638 = *(v95 + 16);
            v114 = *(v96 + 16);
            *v95 = *v96;
            *(v95 + 16) = v114;
            v116 = *(v96 + 48);
            v115 = *(v96 + 64);
            v117 = *(v96 + 32);
            *(v95 + 74) = *(v96 + 74);
            *(v95 + 48) = v116;
            *(v95 + 64) = v115;
            *(v95 + 32) = v117;
            *(v96 + 64) = *v641;
            *(v96 + 74) = *&v641[10];
            *v96 = v637;
            *(v96 + 48) = v640;
            *(v96 + 32) = v639;
            *(v96 + 16) = v638;
          }
        }
      }

LABEL_71:
      v146 = rangeCopy - *result;
      v147 = v146 / 96;
      if (v146 < -191)
      {
        v148 = result[-((39 - v147) / 0x2AuLL)] + 96 * (41 - ((39 - v147) % 0x2AuLL));
      }

      else
      {
        v148 = result[(v147 + 2) / 0x2AuLL] - 4032 * ((v147 + 2) / 0x2AuLL) + 96 * (v147 + 2);
      }

      v637.n128_u64[0] = result;
      v637.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v17 + 1);
      v149 = v637.n128_u64[1];
      v150 = v8 - *route;
      v151 = v150 / 96;
      if (v150 < 289)
      {
        v152 = route[-((44 - v151) / 0x2AuLL)] + 96 * (41 - ((44 - v151) % 0x2AuLL));
      }

      else
      {
        v152 = route[(v151 - 3) / 0x2AuLL] - 4032 * ((v151 - 3) / 0x2AuLL) + 96 * (v151 - 3);
      }

      v153 = *(v637.n128_u64[1] + 8);
      v154 = *(v148 + 8);
      if (v153 < v154 || v153 <= v154 && *(v637.n128_u64[1] + 88) == 1 && *(v148 + 88) != 1)
      {
        v155 = *(v152 + 8);
        if (v155 < v153 || v155 <= v153 && *(v152 + 88) == 1 && (*(v637.n128_u64[1] + 88) & 1) == 0)
        {
          v639 = *(v148 + 32);
          v640 = *(v148 + 48);
          *v641 = *(v148 + 64);
          *&v641[16] = *(v148 + 80);
          v637 = *v148;
          v638 = *(v148 + 16);
          v156 = *(v152 + 16);
          *v148 = *v152;
          *(v148 + 16) = v156;
          v158 = *(v152 + 48);
          v157 = *(v152 + 64);
          v159 = *(v152 + 32);
          *(v148 + 74) = *(v152 + 74);
          *(v148 + 48) = v158;
          *(v148 + 64) = v157;
          *(v148 + 32) = v159;
        }

        else
        {
          v639 = *(v148 + 32);
          v640 = *(v148 + 48);
          *v641 = *(v148 + 64);
          *&v641[16] = *(v148 + 80);
          v637 = *v148;
          v638 = *(v148 + 16);
          v171 = *(v149 + 16);
          *v148 = *v149;
          *(v148 + 16) = v171;
          v173 = *(v149 + 48);
          v172 = *(v149 + 64);
          v174 = *(v149 + 32);
          *(v148 + 74) = *(v149 + 74);
          *(v148 + 48) = v173;
          *(v148 + 64) = v172;
          *(v148 + 32) = v174;
          *(v149 + 64) = *v641;
          *(v149 + 74) = *&v641[10];
          *v149 = v637;
          *(v149 + 48) = v640;
          *(v149 + 32) = v639;
          *(v149 + 16) = v638;
          v175 = *(v152 + 8);
          v176 = *(v149 + 8);
          if (v175 >= v176 && (v175 > v176 || *(v152 + 88) != 1 || (*(v149 + 88) & 1) != 0))
          {
            goto LABEL_92;
          }

          v639 = *(v149 + 32);
          v640 = *(v149 + 48);
          *v641 = *(v149 + 64);
          *&v641[16] = *(v149 + 80);
          v637 = *v149;
          v638 = *(v149 + 16);
          v177 = *(v152 + 16);
          *v149 = *v152;
          *(v149 + 16) = v177;
          v179 = *(v152 + 48);
          v178 = *(v152 + 64);
          v180 = *(v152 + 32);
          *(v149 + 74) = *(v152 + 74);
          *(v149 + 48) = v179;
          *(v149 + 64) = v178;
          *(v149 + 32) = v180;
        }

        *(v152 + 64) = *v641;
        *(v152 + 74) = *&v641[10];
        *v152 = v637;
        *(v152 + 48) = v640;
        *(v152 + 32) = v639;
        *(v152 + 16) = v638;
        goto LABEL_92;
      }

      v160 = *(v152 + 8);
      if (v160 < v153 || v160 <= v153 && *(v152 + 88) == 1 && (*(v637.n128_u64[1] + 88) & 1) == 0)
      {
        v639 = *(v637.n128_u64[1] + 32);
        v640 = *(v637.n128_u64[1] + 48);
        *v641 = *(v637.n128_u64[1] + 64);
        *&v641[16] = *(v637.n128_u64[1] + 80);
        v637 = *v637.n128_u64[1];
        v638 = *(v149 + 16);
        v161 = *(v152 + 16);
        *v149 = *v152;
        *(v149 + 16) = v161;
        v163 = *(v152 + 48);
        v162 = *(v152 + 64);
        v164 = *(v152 + 32);
        *(v149 + 74) = *(v152 + 74);
        *(v149 + 48) = v163;
        *(v149 + 64) = v162;
        *(v149 + 32) = v164;
        *(v152 + 64) = *v641;
        *(v152 + 74) = *&v641[10];
        *v152 = v637;
        *(v152 + 48) = v640;
        *(v152 + 32) = v639;
        *(v152 + 16) = v638;
        v165 = *(v149 + 8);
        v166 = *(v148 + 8);
        if (v165 < v166 || v165 <= v166 && *(v149 + 88) == 1 && (*(v148 + 88) & 1) == 0)
        {
          v639 = *(v148 + 32);
          v640 = *(v148 + 48);
          *v641 = *(v148 + 64);
          *&v641[16] = *(v148 + 80);
          v637 = *v148;
          v638 = *(v148 + 16);
          v167 = *(v149 + 16);
          *v148 = *v149;
          *(v148 + 16) = v167;
          v169 = *(v149 + 48);
          v168 = *(v149 + 64);
          v170 = *(v149 + 32);
          *(v148 + 74) = *(v149 + 74);
          *(v148 + 48) = v169;
          *(v148 + 64) = v168;
          *(v148 + 32) = v170;
          *(v149 + 64) = *v641;
          *(v149 + 74) = *&v641[10];
          *v149 = v637;
          *(v149 + 48) = v640;
          *(v149 + 32) = v639;
          *(v149 + 16) = v638;
        }
      }

LABEL_92:
      v637.n128_u64[0] = result;
      v637.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v17 - 1);
      v181 = v637.n128_u64[1];
      v637.n128_u64[0] = result;
      v637.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v17);
      v182 = v637.n128_u64[1];
      v637.n128_u64[0] = result;
      v637.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v17 + 1);
      v183 = v637.n128_u64[1];
      v184 = *(v182 + 8);
      v185 = *(v181 + 8);
      if (v184 >= v185 && (v184 > v185 || *(v182 + 88) != 1 || *(v181 + 88) == 1))
      {
        v191 = *(v637.n128_u64[1] + 8);
        if (v191 < v184 || v191 <= v184 && *(v637.n128_u64[1] + 88) == 1 && (*(v182 + 88) & 1) == 0)
        {
          v639 = *(v182 + 32);
          v640 = *(v182 + 48);
          *v641 = *(v182 + 64);
          *&v641[16] = *(v182 + 80);
          v637 = *v182;
          v638 = *(v182 + 16);
          v192 = *(v183 + 16);
          *v182 = *v183;
          *(v182 + 16) = v192;
          v194 = *(v183 + 48);
          v193 = *(v183 + 64);
          v195 = *(v183 + 32);
          *(v182 + 74) = *(v183 + 74);
          *(v182 + 48) = v194;
          *(v182 + 64) = v193;
          *(v182 + 32) = v195;
          *(v183 + 64) = *v641;
          *(v183 + 74) = *&v641[10];
          *v183 = v637;
          *(v183 + 48) = v640;
          *(v183 + 32) = v639;
          *(v183 + 16) = v638;
          v196 = *(v182 + 8);
          v197 = *(v181 + 8);
          if (v196 < v197 || v196 <= v197 && *(v182 + 88) == 1 && (*(v181 + 88) & 1) == 0)
          {
            v639 = *(v181 + 32);
            v640 = *(v181 + 48);
            *v641 = *(v181 + 64);
            *&v641[16] = *(v181 + 80);
            v637 = *v181;
            v638 = *(v181 + 16);
            v198 = *(v182 + 16);
            *v181 = *v182;
            *(v181 + 16) = v198;
            v200 = *(v182 + 48);
            v199 = *(v182 + 64);
            v201 = *(v182 + 32);
            *(v181 + 74) = *(v182 + 74);
            *(v181 + 48) = v200;
            *(v181 + 64) = v199;
            *(v181 + 32) = v201;
            *(v182 + 64) = *v641;
            *(v182 + 74) = *&v641[10];
            *v182 = v637;
            *(v182 + 48) = v640;
            *(v182 + 32) = v639;
            *(v182 + 16) = v638;
          }
        }

        goto LABEL_107;
      }

      v186 = *(v637.n128_u64[1] + 8);
      if (v186 < v184 || v186 <= v184 && *(v637.n128_u64[1] + 88) == 1 && (*(v182 + 88) & 1) == 0)
      {
        v639 = *(v181 + 32);
        v640 = *(v181 + 48);
        *v641 = *(v181 + 64);
        *&v641[16] = *(v181 + 80);
        v637 = *v181;
        v638 = *(v181 + 16);
        v187 = *(v183 + 16);
        *v181 = *v183;
        *(v181 + 16) = v187;
        v189 = *(v183 + 48);
        v188 = *(v183 + 64);
        v190 = *(v183 + 32);
        *(v181 + 74) = *(v183 + 74);
        *(v181 + 48) = v189;
        *(v181 + 64) = v188;
        *(v181 + 32) = v190;
      }

      else
      {
        v639 = *(v181 + 32);
        v640 = *(v181 + 48);
        *v641 = *(v181 + 64);
        *&v641[16] = *(v181 + 80);
        v637 = *v181;
        v638 = *(v181 + 16);
        v202 = *(v182 + 16);
        *v181 = *v182;
        *(v181 + 16) = v202;
        v204 = *(v182 + 48);
        v203 = *(v182 + 64);
        v205 = *(v182 + 32);
        *(v181 + 74) = *(v182 + 74);
        *(v181 + 48) = v204;
        *(v181 + 64) = v203;
        *(v181 + 32) = v205;
        *(v182 + 64) = *v641;
        *(v182 + 74) = *&v641[10];
        *v182 = v637;
        *(v182 + 48) = v640;
        *(v182 + 32) = v639;
        *(v182 + 16) = v638;
        v206 = *(v183 + 8);
        v207 = *(v182 + 8);
        if (v206 >= v207 && (v206 > v207 || *(v183 + 88) != 1 || (*(v182 + 88) & 1) != 0))
        {
          goto LABEL_107;
        }

        v639 = *(v182 + 32);
        v640 = *(v182 + 48);
        *v641 = *(v182 + 64);
        *&v641[16] = *(v182 + 80);
        v637 = *v182;
        v638 = *(v182 + 16);
        v208 = *(v183 + 16);
        *v182 = *v183;
        *(v182 + 16) = v208;
        v210 = *(v183 + 48);
        v209 = *(v183 + 64);
        v211 = *(v183 + 32);
        *(v182 + 74) = *(v183 + 74);
        *(v182 + 48) = v210;
        *(v182 + 64) = v209;
        *(v182 + 32) = v211;
      }

      *(v183 + 64) = *v641;
      *(v183 + 74) = *&v641[10];
      *v183 = v637;
      *(v183 + 48) = v640;
      *(v183 + 32) = v639;
      *(v183 + 16) = v638;
LABEL_107:
      v637.n128_u64[0] = result;
      v637.n128_u64[1] = rangeCopy;
      std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v17);
      v212 = v637.n128_u64[1];
      v213 = *(rangeCopy + 16);
      v637 = *rangeCopy;
      v638 = v213;
      v214 = *(rangeCopy + 32);
      v215 = *(rangeCopy + 48);
      v216 = *(rangeCopy + 80);
      *v641 = *(rangeCopy + 64);
      *&v641[16] = v216;
      v639 = v214;
      v640 = v215;
      v218 = v212[3];
      v217 = v212[4];
      v219 = v212[2];
      *(rangeCopy + 74) = *(v212 + 74);
      *(rangeCopy + 48) = v218;
      *(rangeCopy + 64) = v217;
      *(rangeCopy + 32) = v219;
      v220 = v212[1];
      *rangeCopy = *v212;
      *(rangeCopy + 16) = v220;
      v212[3] = v640;
      v212[2] = v639;
      v212[4] = *v641;
      *(v212 + 74) = *&v641[10];
      *v212 = v637;
      v212[1] = v638;
      routeCopy6 = route;
      goto LABEL_108;
    }

    v637.n128_u64[0] = result;
    v637.n128_u64[1] = rangeCopy;
    std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](&v637, v15 >> 1);
    routeCopy6 = route;
    v22 = v8 - *route;
    v23 = v22 / 96;
    if (v22 < 97)
    {
      v24 = route[-((42 - v23) / 0x2AuLL)] + 96 * (41 - ((42 - v23) % 0x2AuLL));
    }

    else
    {
      v24 = route[(v23 - 1) / 0x2AuLL] - 4032 * ((v23 - 1) / 0x2AuLL) + 96 * (v23 - 1);
    }

    v37 = v637.n128_u64[1];
    v38 = *(rangeCopy + 8);
    v39 = *(v637.n128_u64[1] + 8);
    if (v38 < v39 || v38 <= v39 && *(rangeCopy + 88) == 1 && *(v637.n128_u64[1] + 88) != 1)
    {
      v40 = *(v24 + 8);
      if (v40 < v38 || v40 <= v38 && *(v24 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
      {
        v639 = *(v637.n128_u64[1] + 32);
        v640 = *(v637.n128_u64[1] + 48);
        *v641 = *(v637.n128_u64[1] + 64);
        *&v641[16] = *(v637.n128_u64[1] + 80);
        v637 = *v637.n128_u64[1];
        v638 = *(v37 + 16);
        v41 = *(v24 + 16);
        *v37 = *v24;
        *(v37 + 16) = v41;
        v43 = *(v24 + 48);
        v42 = *(v24 + 64);
        v44 = *(v24 + 32);
        *(v37 + 74) = *(v24 + 74);
        *(v37 + 48) = v43;
        *(v37 + 64) = v42;
        *(v37 + 32) = v44;
        *(v24 + 64) = *v641;
        *(v24 + 74) = *&v641[10];
        *v24 = v637;
        *(v24 + 48) = v640;
        *(v24 + 32) = v639;
LABEL_64:
        *(v24 + 16) = v638;
        goto LABEL_108;
      }

      v639 = *(v637.n128_u64[1] + 32);
      v640 = *(v637.n128_u64[1] + 48);
      *v641 = *(v637.n128_u64[1] + 64);
      *&v641[16] = *(v637.n128_u64[1] + 80);
      v637 = *v637.n128_u64[1];
      v638 = *(v37 + 16);
      v118 = *(rangeCopy + 16);
      *v37 = *rangeCopy;
      *(v37 + 16) = v118;
      v120 = *(rangeCopy + 48);
      v119 = *(rangeCopy + 64);
      v121 = *(rangeCopy + 32);
      *(v37 + 74) = *(rangeCopy + 74);
      *(v37 + 48) = v120;
      *(v37 + 64) = v119;
      *(v37 + 32) = v121;
      v122 = v638;
      *rangeCopy = v637;
      *(rangeCopy + 16) = v122;
      v123 = v639;
      v124 = v640;
      v125 = *v641;
      *(rangeCopy + 74) = *&v641[10];
      *(rangeCopy + 48) = v124;
      *(rangeCopy + 64) = v125;
      *(rangeCopy + 32) = v123;
      v126 = *(v24 + 8);
      v127 = *(rangeCopy + 8);
      if (v126 < v127 || v126 <= v127 && *(v24 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
      {
        v128 = *(rangeCopy + 16);
        v637 = *rangeCopy;
        v638 = v128;
        v129 = *(rangeCopy + 32);
        v130 = *(rangeCopy + 48);
        v131 = *(rangeCopy + 80);
        *v641 = *(rangeCopy + 64);
        *&v641[16] = v131;
        v639 = v129;
        v640 = v130;
        v133 = *(v24 + 48);
        v132 = *(v24 + 64);
        v134 = *(v24 + 32);
        *(rangeCopy + 74) = *(v24 + 74);
        *(rangeCopy + 48) = v133;
        *(rangeCopy + 64) = v132;
        *(rangeCopy + 32) = v134;
        v135 = *(v24 + 16);
        *rangeCopy = *v24;
        *(rangeCopy + 16) = v135;
        *(v24 + 48) = v640;
        *(v24 + 32) = v639;
        *(v24 + 64) = *v641;
        *(v24 + 74) = *&v641[10];
        *v24 = v637;
        goto LABEL_64;
      }
    }

    else
    {
      v60 = *(v24 + 8);
      if (v60 < v38 || v60 <= v38 && *(v24 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
      {
        v61 = *(rangeCopy + 16);
        v637 = *rangeCopy;
        v638 = v61;
        v62 = *(rangeCopy + 32);
        v63 = *(rangeCopy + 48);
        v64 = *(rangeCopy + 80);
        *v641 = *(rangeCopy + 64);
        *&v641[16] = v64;
        v639 = v62;
        v640 = v63;
        v66 = *(v24 + 48);
        v65 = *(v24 + 64);
        v67 = *(v24 + 32);
        *(rangeCopy + 74) = *(v24 + 74);
        *(rangeCopy + 48) = v66;
        *(rangeCopy + 64) = v65;
        *(rangeCopy + 32) = v67;
        v68 = *(v24 + 16);
        *rangeCopy = *v24;
        *(rangeCopy + 16) = v68;
        *(v24 + 48) = v640;
        *(v24 + 32) = v639;
        *(v24 + 64) = *v641;
        *(v24 + 74) = *&v641[10];
        *v24 = v637;
        *(v24 + 16) = v638;
        v69 = *(rangeCopy + 8);
        v70 = *(v37 + 8);
        if (v69 < v70 || v69 <= v70 && *(rangeCopy + 88) == 1 && (*(v37 + 88) & 1) == 0)
        {
          v639 = *(v37 + 32);
          v640 = *(v37 + 48);
          *v641 = *(v37 + 64);
          *&v641[16] = *(v37 + 80);
          v637 = *v37;
          v638 = *(v37 + 16);
          v71 = *(rangeCopy + 16);
          *v37 = *rangeCopy;
          *(v37 + 16) = v71;
          v73 = *(rangeCopy + 48);
          v72 = *(rangeCopy + 64);
          v74 = *(rangeCopy + 32);
          *(v37 + 74) = *(rangeCopy + 74);
          *(v37 + 48) = v73;
          *(v37 + 64) = v72;
          *(v37 + 32) = v74;
          v75 = v638;
          *rangeCopy = v637;
          *(rangeCopy + 16) = v75;
          v76 = v639;
          v77 = v640;
          v78 = *v641;
          *(rangeCopy + 74) = *&v641[10];
          *(rangeCopy + 48) = v77;
          *(rangeCopy + 64) = v78;
          *(rangeCopy + 32) = v76;
        }
      }
    }

LABEL_108:
    --coordinate;
    if (routeCoordinate)
    {
      v221 = *(rangeCopy + 8);
    }

    else
    {
      v222 = rangeCopy - *result;
      v223 = v222 / 96;
      if (v222 < 97)
      {
        v224 = result[-((42 - v223) / 0x2AuLL)] + 96 * (41 - ((42 - v223) % 0x2AuLL));
      }

      else
      {
        v224 = result[(v223 - 1) / 0x2AuLL] - 4032 * ((v223 - 1) / 0x2AuLL) + 96 * (v223 - 1);
      }

      v225 = *(v224 + 8);
      v221 = *(rangeCopy + 8);
      if (v225 >= v221 && (v225 > v221 || *(v224 + 88) != 1 || *(rangeCopy + 88) == 1))
      {
        v286 = *rangeCopy;
        v287 = *(rangeCopy + 32);
        v288 = *(rangeCopy + 48);
        v289 = *(rangeCopy + 64);
        v636 = *(rangeCopy + 80);
        v635 = v289;
        v290 = *(rangeCopy + 16);
        v633 = v287;
        v634 = v288;
        v632 = v290;
        v291 = *routeCopy6;
        v292 = v8 - *routeCopy6;
        v293 = v292 / 96;
        if (v292 < 97)
        {
          v294 = routeCopy6[-((42 - v293) / 0x2AuLL)] + 96 * (41 - ((42 - v293) % 0x2AuLL));
        }

        else
        {
          v294 = routeCopy6[(v293 - 1) / 0x2AuLL] - 4032 * ((v293 - 1) / 0x2AuLL) + 96 * (v293 - 1);
        }

        v298 = *(rangeCopy + 88);
        v299 = *(rangeCopy + 89);
        v300 = *(v294 + 8);
        if (v221 >= v300)
        {
          v301 = (v221 > v300) & v298;
          if (v221 <= v300 && (*(rangeCopy + 88) & 1) != 0)
          {
            v301 = 1;
            if ((*(v294 + 88) & 1) == 0)
            {
              goto LABEL_219;
            }
          }

          v302 = *result;
          v296 = rangeCopy;
          do
          {
            v296 += 96;
            if (v296 - v302 == 4032)
            {
              v305 = result[1];
              ++result;
              v302 = v305;
              v296 = v305;
            }

            if (result >= routeCopy6 && (result != routeCopy6 || v296 >= v8))
            {
              break;
            }

            v306 = *(v296 + 8);
            if (v221 < v306)
            {
              break;
            }
          }

          while (((v221 <= v306) & v301) != 1 || (*(v296 + 88) & 1) != 0);
        }

        else
        {
          v301 = *(rangeCopy + 88);
LABEL_219:
          v302 = *result;
          v296 = rangeCopy;
          do
          {
            v296 += 96;
            if (v296 - v302 == 4032)
            {
              v303 = result[1];
              ++result;
              v302 = v303;
              v296 = v303;
            }

            v304 = *(v296 + 8);
          }

          while (v221 >= v304 && (((v221 <= v304) & v301) != 1 || (*(v296 + 88) & 1) != 0));
        }

        if (result < routeCopy6 || result == routeCopy6 && v296 < v8)
        {
          v307 = routeCopy6;
          v308 = v8;
          while (1)
          {
            do
            {
              if (v308 == v291)
              {
                v310 = *--v307;
                v291 = v310;
                v309 = v310 + 504;
              }

              else
              {
                v309 = v308;
              }

              v308 = v309 - 12;
              v311 = *(v309 - 11);
            }

            while (v221 < v311);
            if (v221 > v311 || (*(rangeCopy + 88) & 1) == 0)
            {
              break;
            }

            if (*(v309 - 8) == 1)
            {
              v312 = 1;
              goto LABEL_305;
            }
          }

          v312 = *(rangeCopy + 88);
        }

        else
        {
          v312 = *(rangeCopy + 88);
          v307 = routeCopy6;
          v308 = v8;
        }

LABEL_305:
        while (result < v307 || result == v307 && v296 < v308)
        {
          v313 = *(v296 + 16);
          v637 = *v296;
          v638 = v313;
          v314 = *(v296 + 32);
          v315 = *(v296 + 48);
          v316 = *(v296 + 80);
          *v641 = *(v296 + 64);
          *&v641[16] = v316;
          v639 = v314;
          v640 = v315;
          v318 = *(v308 + 3);
          v317 = *(v308 + 4);
          v319 = *(v308 + 2);
          *(v296 + 74) = *(v308 + 74);
          *(v296 + 48) = v318;
          *(v296 + 64) = v317;
          *(v296 + 32) = v319;
          v320 = *(v308 + 1);
          *v296 = *v308;
          *(v296 + 16) = v320;
          v321 = v638;
          *v308 = v637;
          *(v308 + 1) = v321;
          v322 = v639;
          v323 = v640;
          v324 = *v641;
          *(v308 + 74) = *&v641[10];
          *(v308 + 3) = v323;
          *(v308 + 4) = v324;
          *(v308 + 2) = v322;
          v302 = *result;
          do
          {
            v296 += 96;
            if (v296 - v302 == 4032)
            {
              v325 = result[1];
              ++result;
              v302 = v325;
              v296 = v325;
            }

            v326 = *(v296 + 8);
          }

          while (v221 >= v326 && (((v221 <= v326) & v312) != 1 || (*(v296 + 88) & 1) != 0));
          v327 = *v307;
          do
          {
            if (v308 == v327)
            {
              v329 = *--v307;
              v327 = v329;
              v328 = v329 + 504;
            }

            else
            {
              v328 = v308;
            }

            v308 = v328 - 12;
            v330 = *(v328 - 11);
          }

          while (v221 < v330 || ((v221 <= v330) & v312) == 1 && (*(v328 - 1) & 1) == 0);
        }

        v331 = v296 - v302;
        v332 = ((v296 - v302) * 0x2AAAAAAAAAAAAAABLL) >> 64;
        v333 = (v332 >> 4) + (v332 >> 63);
        if (v331 < 97)
        {
          v334 = result[-((42 - v333) / 0x2AuLL)] + 96 * (41 - ((42 - v333) % 0x2AuLL));
        }

        else
        {
          v334 = result[(v333 - 1) / 0x2AuLL] - 4032 * ((v333 - 1) / 0x2AuLL) + 96 * (v333 - 1);
        }

        if (v334 != rangeCopy)
        {
          v335 = *(v334 + 16);
          *rangeCopy = *v334;
          *(rangeCopy + 16) = v335;
          v336 = *(v334 + 32);
          v337 = *(v334 + 48);
          v338 = *(v334 + 64);
          *(rangeCopy + 74) = *(v334 + 74);
          *(rangeCopy + 48) = v337;
          *(rangeCopy + 64) = v338;
          *(rangeCopy + 32) = v336;
        }

        routeCoordinate = 0;
        *v334 = v286;
        *(v334 + 8) = v221;
        v339 = v632;
        *(v334 + 32) = v633;
        *(v334 + 48) = v634;
        *(v334 + 64) = v635;
        *(v334 + 80) = v636;
        *(v334 + 16) = v339;
        *(v334 + 88) = v298;
        *(v334 + 89) = v299;
        goto LABEL_314;
      }
    }

    v226 = *rangeCopy;
    v227 = *(rangeCopy + 32);
    v228 = *(rangeCopy + 48);
    v229 = *(rangeCopy + 64);
    v636 = *(rangeCopy + 80);
    v635 = v229;
    v230 = *(rangeCopy + 16);
    v633 = v227;
    v634 = v228;
    v632 = v230;
    v231 = *(rangeCopy + 88);
    v232 = *(rangeCopy + 89);
    v233 = *result;
    v234 = result;
    v235 = rangeCopy;
    do
    {
      v235 += 96;
      if (v235 - v233 == 4032)
      {
        v236 = v234[1];
        ++v234;
        v233 = v236;
        v235 = v236;
      }

      v237 = *(v235 + 8);
    }

    while (v237 < v221 || v237 <= v221 && *(v235 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0);
    v238 = (v235 - v233) / 96;
    if ((v235 - v233) < 97)
    {
      v239 = v234[-((42 - v238) / 0x2AuLL)] + 96 * (41 - ((42 - v238) % 0x2AuLL));
    }

    else
    {
      v239 = v234[(v238 - 1) / 0x2AuLL] - 4032 * ((v238 - 1) / 0x2AuLL) + 96 * (v238 - 1);
    }

    v240 = routeCopy6;
    v241 = v8;
    if (v239 == rangeCopy)
    {
      do
      {
        if (v234 >= v240 && (v234 != v240 || v235 >= v241))
        {
          break;
        }

        if (v241 == *v240)
        {
          v247 = *--v240;
          v246 = (v247 + 4032);
        }

        else
        {
          v246 = v241;
        }

        v241 = v246 - 12;
        v248 = *(v246 - 11);
        if (v248 < v221)
        {
          break;
        }
      }

      while (v248 > v221 || *(v246 - 8) != 1 || (*(rangeCopy + 88) & 1) != 0);
    }

    else
    {
      v242 = *routeCopy6;
      v240 = routeCopy6;
      v241 = v8;
      do
      {
        if (v241 == v242)
        {
          v244 = *--v240;
          v242 = v244;
          v243 = v244 + 504;
        }

        else
        {
          v243 = v241;
        }

        v241 = v243 - 12;
        v245 = *(v243 - 11);
      }

      while (v245 >= v221 && (v245 > v221 || *(v243 - 8) != 1 || (*(rangeCopy + 88) & 1) != 0));
    }

    v249 = v234 >= v240 && (v234 != v240 || v235 >= v241);
    while (v234 < v240 || v234 == v240 && v235 < v241)
    {
      v251 = *(v235 + 16);
      v637 = *v235;
      v638 = v251;
      v252 = *(v235 + 32);
      v253 = *(v235 + 48);
      v254 = *(v235 + 80);
      *v641 = *(v235 + 64);
      *&v641[16] = v254;
      v639 = v252;
      v640 = v253;
      v256 = *(v241 + 3);
      v255 = *(v241 + 4);
      v257 = *(v241 + 2);
      *(v235 + 74) = *(v241 + 74);
      *(v235 + 48) = v256;
      *(v235 + 64) = v255;
      *(v235 + 32) = v257;
      v258 = *(v241 + 1);
      *v235 = *v241;
      *(v235 + 16) = v258;
      v259 = v638;
      *v241 = v637;
      *(v241 + 1) = v259;
      v260 = v639;
      v261 = v640;
      v262 = *v641;
      *(v241 + 74) = *&v641[10];
      *(v241 + 3) = v261;
      *(v241 + 4) = v262;
      *(v241 + 2) = v260;
      v233 = *v234;
      do
      {
        v235 += 96;
        if (v235 - v233 == 4032)
        {
          v263 = v234[1];
          ++v234;
          v233 = v263;
          v235 = v263;
        }

        v264 = *(v235 + 8);
      }

      while (v264 < v221 || v264 <= v221 && *(v235 + 88) == 1 && (v231 & 1) == 0);
      v265 = *v240;
      do
      {
        if (v241 == v265)
        {
          v267 = *--v240;
          v265 = v267;
          v266 = v267 + 504;
        }

        else
        {
          v266 = v241;
        }

        v241 = v266 - 12;
        v268 = *(v266 - 11);
      }

      while (v268 >= v221 && (v268 > v221 || *(v266 - 8) != 1 || (v231 & 1) != 0));
    }

    v269 = v235 - v233;
    v270 = v269 / 96;
    if (v269 < 97)
    {
      v274 = 42 - v270;
      v272 = &v234[-(v274 / 0x2A)];
      v273 = *v272 + 96 * (41 - (v274 % 0x2A));
    }

    else
    {
      v271 = v270 - 1;
      v272 = &v234[v271 / 0x2A];
      v273 = *v272 - 4032 * (v271 / 0x2A) + 96 * v271;
    }

    if (v273 != rangeCopy)
    {
      v275 = *(v273 + 16);
      *rangeCopy = *v273;
      *(rangeCopy + 16) = v275;
      v276 = *(v273 + 32);
      v277 = *(v273 + 48);
      v278 = *(v273 + 64);
      *(rangeCopy + 74) = *(v273 + 74);
      *(rangeCopy + 48) = v277;
      *(rangeCopy + 64) = v278;
      *(rangeCopy + 32) = v276;
    }

    *v273 = v226;
    *(v273 + 8) = v221;
    v279 = v632;
    *(v273 + 32) = v633;
    *(v273 + 48) = v634;
    *(v273 + 64) = v635;
    *(v273 + 80) = v636;
    *(v273 + 16) = v279;
    *(v273 + 88) = v231;
    *(v273 + 89) = v232;
    if (!v249)
    {
      goto LABEL_191;
    }

    v280 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>>(result, rangeCopy, v272, v273);
    v281 = v273 - *v272;
    v282 = v281 / 96;
    if (v281 < -95)
    {
      v295 = 40 - v282;
      v284 = &v272[-(v295 / 0x2A)];
      v285 = (*v284 + 96 * (41 - (v295 % 0x2A)));
    }

    else
    {
      v283 = v282 + 1;
      v284 = &v272[v283 / 0x2A];
      v285 = (*v284 - 4032 * (v283 / 0x2A) + 96 * v283);
    }

    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>>(v284, v285, route, v8))
    {
      v296 = rangeCopy;
      v8 = v273;
      route = v272;
      if (v280)
      {
        return;
      }

      goto LABEL_314;
    }

    if (v280)
    {
      v296 = v273 + 96;
      if (v273 + 96 - *v272 != 4032)
      {
        goto LABEL_195;
      }
    }

    else
    {
LABEL_191:
      std::__introsort<std::_ClassicAlgPolicy,[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,false>(result, rangeCopy, v272, v273, coordinate, routeCoordinate & 1);
      v296 = v273 + 96;
      if (v273 + 96 - *v272 != 4032)
      {
        routeCoordinate = 0;
        goto LABEL_195;
      }

      routeCoordinate = 0;
    }

    v297 = v272[1];
    ++v272;
    v296 = v297;
LABEL_195:
    result = v272;
LABEL_314:
    rangeCopy = v296;
    if (v8 == v296)
    {
      return;
    }
  }

  v343 = v14 / 96;
  if (v14 < -95)
  {
    v344 = result[-((40 - v343) / 0x2AuLL)] + 96 * (41 - ((40 - v343) % 0x2AuLL));
  }

  else
  {
    v344 = result[(v343 + 1) / 0x2AuLL] - 4032 * ((v343 + 1) / 0x2AuLL) + 96 * (v343 + 1);
  }

  if (v8 == v12)
  {
    v8 = (*(route - 1) + 4032);
  }

  v342 = (v8 - 6);
  v481 = *(v344 + 8);
  v482 = *(rangeCopy + 8);
  if (v481 < v482 || v481 <= v482 && *(v344 + 88) == 1 && *(rangeCopy + 88) != 1)
  {
    v483 = *(v8 - 11);
    if (v483 < v481 || v483 <= v481 && *(v8 - 8) == 1 && (*(v344 + 88) & 1) == 0)
    {
LABEL_446:
      v484 = *(rangeCopy + 16);
      v637 = *rangeCopy;
      v638 = v484;
      v485 = *(rangeCopy + 32);
      v486 = *(rangeCopy + 48);
      v487 = *(rangeCopy + 80);
      *v641 = *(rangeCopy + 64);
      *&v641[16] = v487;
      v639 = v485;
      v640 = v486;
      v489 = v342[3];
      v488 = v342[4];
      v490 = v342[2];
      *(rangeCopy + 74) = *(v342 + 74);
      *(rangeCopy + 48) = v489;
      *(rangeCopy + 64) = v488;
      *(rangeCopy + 32) = v490;
      v491 = v342[1];
      *rangeCopy = *v342;
      *(rangeCopy + 16) = v491;
    }

    else
    {
      v578 = *(rangeCopy + 16);
      v637 = *rangeCopy;
      v638 = v578;
      v579 = *(rangeCopy + 32);
      v580 = *(rangeCopy + 48);
      v581 = *(rangeCopy + 80);
      *v641 = *(rangeCopy + 64);
      *&v641[16] = v581;
      v639 = v579;
      v640 = v580;
      v583 = *(v344 + 48);
      v582 = *(v344 + 64);
      v584 = *(v344 + 32);
      *(rangeCopy + 74) = *(v344 + 74);
      *(rangeCopy + 48) = v583;
      *(rangeCopy + 64) = v582;
      *(rangeCopy + 32) = v584;
      v585 = *(v344 + 16);
      *rangeCopy = *v344;
      *(rangeCopy + 16) = v585;
      *(v344 + 48) = v640;
      *(v344 + 32) = v639;
      *(v344 + 64) = *v641;
      *(v344 + 74) = *&v641[10];
      *v344 = v637;
      *(v344 + 16) = v638;
      v586 = *(v8 - 11);
      v587 = *(v344 + 8);
      if (v586 >= v587 && (v586 > v587 || *(v8 - 8) != 1 || (*(v344 + 88) & 1) != 0))
      {
        return;
      }

      v639 = *(v344 + 32);
      v640 = *(v344 + 48);
      *v641 = *(v344 + 64);
      *&v641[16] = *(v344 + 80);
      v637 = *v344;
      v638 = *(v344 + 16);
      v588 = *(v8 - 5);
      *v344 = *v342;
      *(v344 + 16) = v588;
      v590 = *(v8 - 3);
      v589 = *(v8 - 2);
      v591 = *(v8 - 4);
      *(v344 + 74) = *(v8 - 22);
      *(v344 + 48) = v590;
      *(v344 + 64) = v589;
      *(v344 + 32) = v591;
    }

    v492 = v638;
    *v342 = v637;
    v342[1] = v492;
    v493 = v639;
    v494 = v640;
    v495 = *v641;
    *(v342 + 74) = *&v641[10];
    v342[3] = v494;
    v342[4] = v495;
    v342[2] = v493;
    return;
  }

  v496 = *(v8 - 11);
  if (v496 < v481 || v496 <= v481 && *(v8 - 8) == 1 && (*(v344 + 88) & 1) == 0)
  {
    v639 = *(v344 + 32);
    v640 = *(v344 + 48);
    *v641 = *(v344 + 64);
    *&v641[16] = *(v344 + 80);
    v637 = *v344;
    v638 = *(v344 + 16);
    v497 = *(v8 - 5);
    *v344 = *v342;
    *(v344 + 16) = v497;
    v499 = *(v8 - 3);
    v498 = *(v8 - 2);
    v500 = *(v8 - 4);
    *(v344 + 74) = *(v8 - 22);
    *(v344 + 48) = v499;
    *(v344 + 64) = v498;
    *(v344 + 32) = v500;
    v501 = v638;
    *v342 = v637;
    *(v8 - 5) = v501;
    v502 = v639;
    v503 = v640;
    v504 = *v641;
    *(v8 - 22) = *&v641[10];
    *(v8 - 3) = v503;
    *(v8 - 2) = v504;
    *(v8 - 4) = v502;
    v505 = *(v344 + 8);
    v506 = *(rangeCopy + 8);
    if (v505 < v506 || v505 <= v506 && *(v344 + 88) == 1 && (*(rangeCopy + 88) & 1) == 0)
    {
      v507 = *(rangeCopy + 16);
      v637 = *rangeCopy;
      v638 = v507;
      v508 = *(rangeCopy + 32);
      v509 = *(rangeCopy + 48);
      v510 = *(rangeCopy + 80);
      *v641 = *(rangeCopy + 64);
      *&v641[16] = v510;
      v639 = v508;
      v640 = v509;
      v512 = *(v344 + 48);
      v511 = *(v344 + 64);
      v513 = *(v344 + 32);
      *(rangeCopy + 74) = *(v344 + 74);
      *(rangeCopy + 48) = v512;
      *(rangeCopy + 64) = v511;
      *(rangeCopy + 32) = v513;
      v514 = *(v344 + 16);
      *rangeCopy = *v344;
      *(rangeCopy + 16) = v514;
      *(v344 + 48) = v640;
      *(v344 + 32) = v639;
      *(v344 + 64) = *v641;
      *(v344 + 74) = *&v641[10];
      *v344 = v637;
      *(v344 + 16) = v638;
    }
  }
}

- (void)_findFirstConvergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate outRouteCoordinate:(PolylineCoordinate *)outRouteCoordinate outRouteCoordinate:(PolylineCoordinate *)a8
{
  v84 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v13 = MNGetMNRouteDivergenceLog();
  selfCopy = self;
  v14 = os_signpost_id_make_with_pointer(v13, self);

  v15 = MNGetMNRouteDivergenceLog();
  v16 = v15;
  v61 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v78[0] = routeCopy;
    v78[1] = andRouteCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    v18 = [(MNRouteDivergenceFinder *)selfCopy _routesArrayIdentifierStrings:v17];
    v19 = GEOPolylineCoordinateAsShortString();
    v20 = GEOPolylineCoordinateAsShortString();
    *buf = 138412802;
    *&buf[4] = v18;
    v80 = 2112;
    v81 = v19;
    v82 = 2112;
    v83 = v20;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "_findFirstConvergenceBetweenRoute", "%@ [%@] [%@]", buf, 0x20u);
  }

  v21 = MEMORY[0x1E69A1918];
  *outRouteCoordinate = *MEMORY[0x1E69A1918];
  *a8 = *v21;
  if ([routeCopy pointCount] && objc_msgSend(andRouteCopy, "pointCount"))
  {
    [routeCopy _navigation_allLeafBoundingSections];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v22 = v73 = 0u;
    v60 = v22;
    v23 = [v22 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v23)
    {
      v24 = *v73;
      spid = v14;
      outRouteCoordinateCopy = outRouteCoordinate;
      v56 = a8;
      v54 = *v73;
      do
      {
        v25 = 0;
        v57 = v23;
        do
        {
          if (*v73 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v72 + 1) + 8 * v25);
          [v26 range];
          if (v27 >= coordinate.index)
          {
            *&v29 = v28;
            if (v27 != coordinate.index || v28 >= coordinate.offset)
            {
              [routeCopy pointAt:{objc_msgSend(v26, "range", v29)}];
              GEOMapPointsPerMeterAtLatitude();
              v59 = v25;
              v32 = [andRouteCopy _navigation_leafBoundingSectionsIntersectingSection:v26 paddingMapPoints:selfCopy->_toleranceMeters * v31];
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v33 = v32;
              v34 = [v33 countByEnumeratingWithState:&v68 objects:v76 count:16];
              if (v34)
              {
                v35 = *v69;
                while (2)
                {
                  for (i = 0; i != v34; ++i)
                  {
                    if (*v69 != v35)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v37 = *(*(&v68 + 1) + 8 * i);
                    [v37 range];
                    if (v38 >= routeCoordinate.index)
                    {
                      *&v40 = v39;
                      if (v38 != routeCoordinate.index || v39 >= routeCoordinate.offset)
                      {
                        range = [v26 range];
                        v44 = v43;
                        coordinateCopy = coordinate;
                        if (!GEOPolylineCoordinateIsABeforeB())
                        {
                          coordinateCopy = range;
                        }

                        range2 = [v37 range];
                        v48 = v47;
                        v49 = GEOPolylineCoordinateIsABeforeB() ? routeCoordinate : range2;
                        *buf = 0xBF80000000000000;
                        v67 = 0xBF80000000000000;
                        [(MNRouteDivergenceFinder *)selfCopy _findFirstConvergenceBetweenRoute:routeCopy range:coordinateCopy andRoute:v44 range:andRouteCopy outRouteCoordinate:v49 outRouteCoordinate:v48, buf, &v67];
                        if (GEOPolylineCoordinateIsValid())
                        {
                          if (GEOPolylineCoordinateIsValid())
                          {
                            *outRouteCoordinateCopy = *buf;
                            *v56 = v67;
                            v52 = MNGetMNRouteDivergenceLog();
                            v53 = v52;
                            if (v61 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
                            {
                              *v66 = 0;
                              _os_signpost_emit_with_name_impl(&dword_1D311E000, v53, OS_SIGNPOST_INTERVAL_END, spid, "_findFirstConvergenceBetweenRoute", "Convergence found", v66, 2u);
                            }

                            v22 = v60;
                            v51 = v60;
                            goto LABEL_45;
                          }
                        }
                      }
                    }
                  }

                  v34 = [v33 countByEnumeratingWithState:&v68 objects:v76 count:16];
                  if (v34)
                  {
                    continue;
                  }

                  break;
                }
              }

              v14 = spid;
              v22 = v60;

              v23 = v57;
              v24 = v54;
              v25 = v59;
            }
          }

          ++v25;
        }

        while (v25 != v23);
        v23 = [v22 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v23);
    }

    v50 = MNGetMNRouteDivergenceLog();
    v51 = v50;
    if (v61 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v51, OS_SIGNPOST_INTERVAL_END, v14, "_findFirstConvergenceBetweenRoute", "Convergence not found", buf, 2u);
    }

LABEL_45:
  }
}

- (BOOL)_pathsDivergeBetweenRoute:(id)route from:(PolylineCoordinate)from andRoute:(id)andRoute from:(PolylineCoordinate)a6 withinDistance:(double)distance
{
  routeCopy = route;
  andRouteCopy = andRoute;
  v16 = 0xBF80000000000000;
  v17 = 0xBF80000000000000;
  -[MNRouteDivergenceFinder _findFirstDivergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:](self, "_findFirstDivergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:", routeCopy, from, [routeCopy routeCoordinateForDistance:from afterRouteCoordinate:distance], andRouteCopy, a6, objc_msgSend(andRouteCopy, "routeCoordinateForDistance:afterRouteCoordinate:", a6, distance), &v17, &v16);
  if (GEOPolylineCoordinateIsValid())
  {
    IsValid = 1;
  }

  else
  {
    IsValid = GEOPolylineCoordinateIsValid();
  }

  return IsValid;
}

- (void)_findFirstDivergenceBetweenRoute:(id)route range:(GEOPolylineCoordinateRange)range andRoute:(id)andRoute range:(GEOPolylineCoordinateRange)a6 outRouteCoordinate:(PolylineCoordinate *)coordinate outRouteCoordinate:(PolylineCoordinate *)routeCoordinate
{
  end = a6.end;
  start = a6.start;
  v79 = range.start;
  v10 = range.end;
  v90 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v12 = MNGetMNRouteDivergenceLog();
  selfCopy = self;
  v13 = os_signpost_id_make_with_pointer(v12, self);

  v14 = MNGetMNRouteDivergenceLog();
  v15 = v14;
  spid = v13;
  v76 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v83[0] = routeCopy;
    v83[1] = andRouteCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v17 = [(MNRouteDivergenceFinder *)selfCopy _routesArrayIdentifierStrings:v16];
    v18 = GEOPolylineCoordinateRangeAsString();
    v19 = GEOPolylineCoordinateRangeAsString();
    *buf = 138412802;
    v85 = v17;
    v86 = 2112;
    v87 = v18;
    v88 = 2112;
    v89 = v19;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "_findFirstDivergenceBetweenRoute", "%@ [%@] [%@]", buf, 0x20u);
  }

  v20 = MEMORY[0x1E69A1918];
  *coordinate = *MEMORY[0x1E69A1918];
  *routeCoordinate = *v20;
  [routeCopy pointAtRouteCoordinate:v79];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [andRouteCopy pointAtRouteCoordinate:start];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v91.var0 = v22;
  v91.var1 = v24;
  v91.var2 = v29;
  v92.var0 = v31;
  if (GEOCalculateDistance(v27, v34, v91, v92) <= selfCopy->_toleranceMeters)
  {
    goto LABEL_13;
  }

  v35 = [(MNRouteDivergenceFinder *)selfCopy _firstRouteCoordinateWithinToleranceOnRoute:routeCopy nearCoordinate:v79 range:v10, v29, v31, v33];
  v36 = [(MNRouteDivergenceFinder *)selfCopy _firstRouteCoordinateWithinToleranceOnRoute:andRouteCopy nearCoordinate:start range:end, v22, v24, v26];
  if (GEOPolylineCoordinateIsInvalid() && (GEOPolylineCoordinateIsInvalid() & 1) != 0)
  {
    *coordinate = v79;
    *routeCoordinate = start;
    goto LABEL_67;
  }

  if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
  {
    IsInvalid = GEOPolylineCoordinateIsInvalid();
    v39 = v79;
    if (IsInvalid)
    {
      v39 = v35;
    }

    v79 = v39;
LABEL_13:
    v37 = 1;
    goto LABEL_14;
  }

  v37 = 0;
  start = v36;
LABEL_14:
  v40 = [MEMORY[0x1E69A23A0] iteratorWithRange:{v79, v10}];
  v41 = [MEMORY[0x1E69A23A0] iteratorWithRange:{start, end}];
  v77 = 0;
  v42 = 0;
  v43 = 0.0;
  while ([v40 isCurrentValid] && objc_msgSend(v41, "isCurrentValid"))
  {
    if (v37)
    {
      v44 = routeCopy;
    }

    else
    {
      v44 = andRouteCopy;
    }

    if (v37)
    {
      v45 = andRouteCopy;
    }

    else
    {
      v45 = routeCopy;
    }

    if (v37)
    {
      v46 = v40;
    }

    else
    {
      v46 = v41;
    }

    if (v37)
    {
      v47 = v41;
    }

    else
    {
      v47 = v40;
    }

    v48 = v44;
    v49 = v45;
    v50 = v46;
    v51 = v47;
    [v51 previous];
    if (GEOPolylineCoordinateIsValid())
    {
      previous = [v51 previous];
    }

    else
    {
      previous = [v51 current];
    }

    v53 = previous;
    current = [v51 current];
    [v49 pointAtRouteCoordinate:v53];
    [v49 pointAtRouteCoordinate:current];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    [v48 pointAtRouteCoordinate:{objc_msgSend(v50, "current")}];
    [(MNRouteDivergenceFinder *)selfCopy _distanceFromCoordinate:v56 toSegmentStart:v58 segmentEnd:v60];
    if (v61 >= selfCopy->_toleranceMeters)
    {
      if (v43 <= 0.0)
      {
        if (v42)
        {
          v62 = 0;
          v77 = 1;
          v42 = 1;
        }

        else
        {
          v37 ^= 1u;
          v42 = 1;
          v62 = 1;
        }

        goto LABEL_42;
      }

      [v51 advance];
    }

    else
    {
      if (v61 <= 0.01)
      {
        goto LABEL_40;
      }

      if (v43 <= 0.0)
      {
        v42 = 0;
        v37 ^= 1u;
        v62 = 1;
        v43 = v61;
        goto LABEL_42;
      }

      if (v61 <= v43)
      {
LABEL_40:
        [v50 advance];
        v42 = 0;
        goto LABEL_41;
      }

      [v51 advance];
      v42 = 0;
    }

    v37 ^= 1u;
LABEL_41:
    v62 = 1;
    v43 = 0.0;
LABEL_42:

    if ((v62 & 1) == 0)
    {
      break;
    }
  }

  if (v77)
  {
    [v40 previous];
    if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
    {
      [v41 previous];
      if (GEOPolylineCoordinateIsValid())
      {
        previous2 = [v41 previous];
      }

      else
      {
        previous2 = [v41 current];
      }

      [andRouteCopy pointAtRouteCoordinate:previous2];
      v79 = -[MNRouteDivergenceFinder _closestRouteCoordinateOnRoute:toLocationCoordinate:inRange:](selfCopy, "_closestRouteCoordinateOnRoute:toLocationCoordinate:inRange:", routeCopy, [v40 previous], objc_msgSend(v40, "current"), v67, v68, v69);
    }

    *coordinate = v79;
    [v41 previous];
    if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
    {
      [v40 previous];
      if (GEOPolylineCoordinateIsValid())
      {
        previous3 = [v40 previous];
      }

      else
      {
        previous3 = [v40 current];
      }

      [routeCopy pointAtRouteCoordinate:previous3];
      start = -[MNRouteDivergenceFinder _closestRouteCoordinateOnRoute:toLocationCoordinate:inRange:](selfCopy, "_closestRouteCoordinateOnRoute:toLocationCoordinate:inRange:", andRouteCopy, [v41 previous], objc_msgSend(v41, "current"), v71, v72, v73);
    }

    *routeCoordinate = start;
    v74 = MNGetMNRouteDivergenceLog();
    v65 = v74;
    if (v76 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
    {
      *buf = 0;
      v66 = "Divergence found";
LABEL_65:
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v65, OS_SIGNPOST_INTERVAL_END, spid, "_findFirstDivergenceBetweenRoute", v66, buf, 2u);
    }
  }

  else
  {
    v64 = MNGetMNRouteDivergenceLog();
    v65 = v64;
    if (v76 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
    {
      *buf = 0;
      v66 = "No divergence found";
      goto LABEL_65;
    }
  }

LABEL_67:
}

- (id)findOverlappingSectionsForRoutes:(id)routes
{
  v180 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([routesCopy count])
  {
    v3 = MNGetMNRouteDivergenceLog();
    v4 = os_signpost_id_make_with_pointer(v3, self);

    v5 = MNGetMNRouteDivergenceLog();
    v6 = v5;
    spid = v4;
    v146 = v4 - 1;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = [(MNRouteDivergenceFinder *)self _routesArrayIdentifierStrings:routesCopy];
      *buf = 138412290;
      *&buf[4] = v7;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "findOverlappingSectionsForRoutes", "%@", buf, 0xCu);
    }

    v8 = [routesCopy count];
    memset(&v173._toleranceMeters, 0, 24);
    *buf = &v173._toleranceMeters;
    buf[8] = 0;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0;
    toleranceMeters = self->_toleranceMeters;
    v172 = 0;
    *&v173.super.isa = toleranceMeters;
    v170 = &v171;
    v171 = 0;
    while (v9 < [routesCopy count])
    {
      v151 = [routesCopy objectAtIndexedSubscript:v9];
      v154 = (*&v173._toleranceMeters + 24 * v9);
      v156 = v9;
      v158 = v9;
      while (v156 + 1 < [routesCopy count])
      {
        ++v156;
        v11 = [routesCopy objectAtIndexedSubscript:?];
        v149 = v173._toleranceMeters;
        v157 = [(MNRouteDivergenceFinder *)self findAllDivergenceConvergenceBetweenRoute:v151 andRoute:v11];
        if ([v157 count] != 2)
        {
          v54 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]";
            *&buf[12] = 2080;
            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteDivergenceFinder.mm";
            v175 = 1024;
            LODWORD(v176) = 620;
            WORD2(v176) = 2080;
            *(&v176 + 6) = "divergenceConvergenceResult.count == 2";
            _os_log_impl(&dword_1D311E000, v54, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
          }
        }

        if ([v157 count] != 2)
        {

          break;
        }

        v169 = 0u;
        v167 = 0u;
        v168 = 0u;
        v166 = 0u;
        v12 = [v157 objectAtIndexedSubscript:0];
        obj = [v12 results];

        v13 = [obj countByEnumeratingWithState:&v166 objects:v179 count:16];
        v155 = v11;
        if (v13)
        {
          v14 = *v167;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v167 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v166 + 1) + 8 * i);
              v17 = [v157 objectAtIndexedSubscript:0];
              results = [v17 results];
              firstObject = [results firstObject];
              v20 = v16 == firstObject;

              *buf = [v16 routeCoordinate];
              v21 = std::map<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>::operator[](v154, buf);
              v22 = [v16 resultType] == 2;
              v23 = v21[1];
              v24 = v21[2];
              if (v23 >= v24)
              {
                v26 = *v21;
                v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v21) >> 3);
                v28 = v27 + 1;
                if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 3);
                if (2 * v29 > v28)
                {
                  v28 = 2 * v29;
                }

                if (v29 >= 0x555555555555555)
                {
                  v30 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  if (v30 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v31 = 8 * ((v23 - *v21) >> 3);
                v9 = v158;
                *v31 = v158;
                *(v31 + 8) = v156;
                *(v31 + 16) = v22;
                *(v31 + 17) = v20;
                v25 = 24 * v27 + 24;
                v32 = (v31 - (v23 - v26));
                memcpy(v32, v26, v23 - v26);
                *v21 = v32;
                v21[1] = v25;
                v21[2] = 0;
                if (v26)
                {
                  operator delete(v26);
                }

                v11 = v155;
              }

              else
              {
                v9 = v158;
                *v23 = v158;
                *(v23 + 8) = v156;
                *(v23 + 16) = v22;
                v25 = v23 + 24;
                *(v23 + 17) = v20;
              }

              v21[1] = v25;
            }

            v13 = [obj countByEnumeratingWithState:&v166 objects:v179 count:16];
          }

          while (v13);
        }

        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v33 = [v157 objectAtIndexedSubscript:1];
        obja = [v33 results];

        v34 = [obja countByEnumeratingWithState:&v162 objects:v178 count:16];
        if (v34)
        {
          v35 = *v163;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v163 != v35)
              {
                objc_enumerationMutation(obja);
              }

              v37 = *(*(&v162 + 1) + 8 * j);
              v38 = [v157 objectAtIndexedSubscript:1];
              results2 = [v38 results];
              firstObject2 = [results2 firstObject];
              v41 = v37 == firstObject2;

              *buf = [v37 routeCoordinate];
              v42 = std::map<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>::operator[]((*&v149 + 24 * v156), buf);
              v43 = [v37 resultType] == 2;
              v44 = v42[1];
              v45 = v42[2];
              if (v44 >= v45)
              {
                v47 = *v42;
                v48 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *v42) >> 3);
                v49 = v48 + 1;
                if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                v50 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v47) >> 3);
                if (2 * v50 > v49)
                {
                  v49 = 2 * v50;
                }

                if (v50 >= 0x555555555555555)
                {
                  v51 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  if (v51 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v52 = 8 * ((v44 - *v42) >> 3);
                *v52 = v156;
                *(v52 + 8) = v158;
                *(v52 + 16) = v43;
                *(v52 + 17) = v41;
                v46 = 24 * v48 + 24;
                v53 = (24 * v48 - (v44 - v47));
                memcpy(v53, v47, v44 - v47);
                *v42 = v53;
                v42[1] = v46;
                v42[2] = 0;
                if (v47)
                {
                  operator delete(v47);
                }

                v9 = v158;
              }

              else
              {
                v9 = v158;
                *v44 = v156;
                *(v44 + 8) = v158;
                *(v44 + 16) = v43;
                v46 = v44 + 24;
                *(v44 + 17) = v41;
              }

              v42[1] = v46;
              v11 = v155;
            }

            v34 = [obja countByEnumeratingWithState:&v162 objects:v178 count:16];
          }

          while (v34);
        }
      }

      *buf = v9;
      v160 = 0;
      v161 = 0;
      v159 = &v160;
      std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(&v159, &v160, v9, buf);
      v55 = *v154;
      if (*v154 == (v154 + 1))
      {
        goto LABEL_195;
      }

      while (2)
      {
        v56 = v55[5];
        v57 = v55[6];
LABEL_63:
        if (v56 != v57)
        {
          v58 = *(v56 + 8);
          v59 = v160;
          if (*(v56 + 16))
          {
            while (v59)
            {
              while (1)
              {
                v60 = v59;
                v61 = v59[4];
                if (v58 < v61)
                {
                  break;
                }

                if (v61 >= v58)
                {
                  goto LABEL_85;
                }

                v59 = v60[1];
                if (!v59)
                {
                  goto LABEL_84;
                }
              }

              v59 = *v60;
            }

LABEL_84:
            operator new();
          }

          if (!v160)
          {
            goto LABEL_80;
          }

          v62 = &v160;
          v63 = v160;
          do
          {
            v64 = v63;
            v65 = v62;
            v66 = v63[4];
            if (v66 >= v58)
            {
              v62 = v63;
            }

            v63 = v63[v66 < v58];
          }

          while (v63);
          if (v62 == &v160)
          {
            goto LABEL_80;
          }

          if (v66 < v58)
          {
            v64 = v65;
          }

          if (v58 < v64[4])
          {
LABEL_80:
            if ((*(v56 + 17) & 1) == 0)
            {
              v67 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]";
                *&buf[12] = 2080;
                *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteDivergenceFinder.mm";
                v175 = 1024;
                LODWORD(v176) = 652;
                WORD2(v176) = 2080;
                *(&v176 + 6) = "erasedElements == 1 || routeSectionEndpoint.isFirstEndpoint";
                _os_log_impl(&dword_1D311E000, v67, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
              }
            }

            goto LABEL_85;
          }

          v68 = v62[1];
          v69 = v68;
          v70 = v62;
          if (v68)
          {
            do
            {
              v71 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v94 = *v71 == v70;
              v70 = v71;
            }

            while (!v94);
          }

          if (v159 == v62)
          {
            v159 = v71;
          }

          --v161;
          v72 = *v62;
          v73 = v62;
          if (*v62)
          {
            if (v68)
            {
              do
              {
                v73 = v68;
                v68 = *v68;
              }

              while (v68);
              goto LABEL_96;
            }

            v73 = v62;
LABEL_99:
            v75 = 0;
            v74 = v73[2];
            v72[2] = v74;
          }

          else
          {
LABEL_96:
            v72 = v73[1];
            if (v72)
            {
              goto LABEL_99;
            }

            v74 = v73[2];
            v75 = 1;
          }

          v76 = *v74;
          if (*v74 == v73)
          {
            *v74 = v72;
            if (v73 == v59)
            {
              v76 = 0;
              v59 = v72;
            }

            else
            {
              v76 = v74[1];
            }
          }

          else
          {
            v74[1] = v72;
          }

          v77 = *(v73 + 24);
          if (v73 != v62)
          {
            v78 = v62[2];
            v73[2] = v78;
            v78[*v78 != v62] = v73;
            v79 = *v62;
            *v73 = *v62;
            v79[2] = v73;
            v80 = v62[1];
            v73[1] = v80;
            if (v80)
            {
              v80[2] = v73;
            }

            *(v73 + 24) = *(v62 + 24);
            if (v59 == v62)
            {
              v59 = v73;
            }
          }

          if (!v59 || !v77)
          {
            goto LABEL_163;
          }

          if (!v75)
          {
            *(v72 + 24) = 1;
            goto LABEL_163;
          }

          while (1)
          {
            v81 = v76[2];
            v82 = *v81;
            if (*v81 == v76)
            {
              if ((v76[3] & 1) == 0)
              {
                *(v76 + 24) = 1;
                *(v81 + 24) = 0;
                v89 = *(v82 + 8);
                *v81 = v89;
                if (v89)
                {
                  *(v89 + 16) = v81;
                }

                v90 = v81[2];
                *(v82 + 16) = v90;
                v90[*v90 != v81] = v82;
                *(v82 + 8) = v81;
                v81[2] = v82;
                v91 = v76[1];
                if (v59 == v91)
                {
                  v59 = v76;
                }

                v76 = *v91;
              }

              v92 = *v76;
              if (*v76 && *(v92 + 24) != 1)
              {
                goto LABEL_158;
              }

              v93 = v76[1];
              if (v93 && *(v93 + 24) != 1)
              {
                if (v92 && (v92[3] & 1) == 0)
                {
LABEL_158:
                  v93 = v76;
                  goto LABEL_159;
                }

                *(v93 + 24) = 1;
                *(v76 + 24) = 0;
                v101 = *v93;
                v76[1] = *v93;
                if (v101)
                {
                  *(v101 + 16) = v76;
                }

                v102 = v76[2];
                v93[2] = v102;
                v102[*v102 != v76] = v93;
                *v93 = v76;
                v76[2] = v93;
                v92 = v76;
LABEL_159:
                v97 = v93[2];
                *(v93 + 24) = *(v97 + 24);
                *(v97 + 24) = 1;
                *(v92 + 24) = 1;
                v98 = *v97;
                v103 = *(*v97 + 8);
                *v97 = v103;
                if (v103)
                {
                  *(v103 + 16) = v97;
                }

                v104 = *(v97 + 16);
                v98[2] = v104;
                v104[*v104 != v97] = v98;
                v98[1] = v97;
LABEL_162:
                *(v97 + 16) = v98;
LABEL_163:
                operator delete(v62);
LABEL_85:
                v56 += 24;
                goto LABEL_63;
              }

              *(v76 + 24) = 0;
              v88 = v76[2];
              v94 = *(v88 + 24) != 1 || v88 == v59;
              if (v94)
              {
LABEL_143:
                *(v88 + 24) = 1;
                goto LABEL_163;
              }
            }

            else
            {
              if ((v76[3] & 1) == 0)
              {
                *(v76 + 24) = 1;
                *(v81 + 24) = 0;
                v83 = v81[1];
                v84 = *v83;
                v81[1] = *v83;
                if (v84)
                {
                  *(v84 + 16) = v81;
                }

                v85 = v81[2];
                v83[2] = v85;
                v85[*v85 != v81] = v83;
                *v83 = v81;
                v81[2] = v83;
                if (v59 == *v76)
                {
                  v59 = v76;
                }

                v76 = *(*v76 + 8);
              }

              v86 = *v76;
              if (*v76 && *(v86 + 24) != 1)
              {
                v87 = v76[1];
                if (v87 && (v87[3] & 1) == 0)
                {
LABEL_149:
                  v86 = v76;
                }

                else
                {
                  *(v86 + 24) = 1;
                  *(v76 + 24) = 0;
                  v95 = v86[1];
                  *v76 = v95;
                  if (v95)
                  {
                    *(v95 + 16) = v76;
                  }

                  v96 = v76[2];
                  v86[2] = v96;
                  v96[*v96 != v76] = v86;
                  v86[1] = v76;
                  v76[2] = v86;
                  v87 = v76;
                }

                v97 = v86[2];
                *(v86 + 24) = *(v97 + 24);
                *(v97 + 24) = 1;
                *(v87 + 24) = 1;
                v98 = *(v97 + 8);
                v99 = *v98;
                *(v97 + 8) = *v98;
                if (v99)
                {
                  *(v99 + 16) = v97;
                }

                v100 = *(v97 + 16);
                v98[2] = v100;
                v100[*v100 != v97] = v98;
                *v98 = v97;
                goto LABEL_162;
              }

              v87 = v76[1];
              if (v87 && *(v87 + 24) != 1)
              {
                goto LABEL_149;
              }

              *(v76 + 24) = 0;
              v88 = v76[2];
              if (v88 == v59 || (v88[3] & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            v76 = *(v88[2] + 8 * (*v88[2] == v88));
          }
        }

        v105 = v55[4];
        v106 = *MEMORY[0x1E69A1918];
        [v151 pointAtRouteCoordinate:v105];
        v108 = v107;
        v110 = v109;
        v112 = v111;
        std::set<unsigned long>::set[abi:ne200100](buf, &v159);
        *&v176 = v108;
        *(&v176 + 1) = v110;
        v177 = v112;
        v119 = v171;
        if (!v171)
        {
          goto LABEL_173;
        }

        v120 = &v171;
        while (1)
        {
          while (1)
          {
            v121 = v119;
            if (![MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKeyCompare::operator()(&v173, buf, (v119 + 4), v113, v114, v115, v116, v117, v118))
            {
              break;
            }

            v119 = *v121;
            v120 = v121;
            if (!*v121)
            {
              goto LABEL_173;
            }
          }

          if (![MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKeyCompare::operator()(&v173, (v121 + 4), buf, v113, v114, v115, v116, v117, v118))
          {
            break;
          }

          v120 = (v121 + 1);
          v119 = v121[1];
          if (!v119)
          {
            goto LABEL_173;
          }
        }

        v122 = *v120;
        if (!*v120)
        {
LABEL_173:
          operator new();
        }

        v123 = v122[11];
        v124 = v122[12];
        if (v123 >= v124)
        {
          v126 = v122[10];
          v127 = 0xAAAAAAAAAAAAAAABLL * ((v123 - v126) >> 3) + 1;
          if (v127 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
          }

          v128 = 0xAAAAAAAAAAAAAAABLL * ((v124 - v126) >> 3);
          if (2 * v128 > v127)
          {
            v127 = 2 * v128;
          }

          if (v128 >= 0x555555555555555)
          {
            v129 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v129 = v127;
          }

          if (v129)
          {
            if (v129 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v130 = (8 * ((v123 - v126) >> 3));
          *v130 = v105;
          v130[1] = v106;
          v130[2] = v9;
          v125 = v130 + 3;
          v131 = v130 - (v123 - v126);
          memcpy(v131, v126, v123 - v126);
          v122[10] = v131;
          v122[11] = v125;
          v122[12] = 0;
          if (v126)
          {
            operator delete(v126);
          }
        }

        else
        {
          *v123 = v105;
          *(v123 + 1) = v106;
          v125 = v123 + 24;
          *(v123 + 2) = v9;
        }

        v122[11] = v125;
        v132 = v55[1];
        if (v132)
        {
          do
          {
            v133 = v132;
            v132 = *v132;
          }

          while (v132);
        }

        else
        {
          do
          {
            v133 = v55[2];
            v94 = *v133 == v55;
            v55 = v133;
          }

          while (!v94);
        }

        if (v133 != v154 + 1)
        {
          *(v125 - 2) = v133[4];
          std::__tree<unsigned long>::destroy(*&buf[8]);
          v55 = v133;
          continue;
        }

        break;
      }

      *(v125 - 2) = [v151 endRouteCoordinate];
      std::__tree<unsigned long>::destroy(*&buf[8]);
LABEL_195:
      std::__tree<unsigned long>::destroy(v160);

      ++v9;
    }

    v134 = [MEMORY[0x1E695DF70] arrayWithCapacity:v172];
    v135 = v170;
    if (v170 != &v171)
    {
      do
      {
        v136 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v135[11] - v135[10]) >> 3)];
        v137 = v135[10];
        v138 = v135[11];
        while (v137 != v138)
        {
          v139 = objc_alloc_init(MNRouteDivergenceOverlappingSectionComponent);
          [(MNRouteDivergenceOverlappingSectionComponent *)v139 setRouteIndex:v137[2]];
          [(MNRouteDivergenceOverlappingSectionComponent *)v139 setRange:*v137, v137[1]];
          [v136 addObject:v139];

          v137 += 3;
        }

        v140 = objc_alloc_init(MNRouteDivergenceOverlappingSection);
        [(MNRouteDivergenceOverlappingSection *)v140 setComponents:v136];
        [v134 addObject:v140];

        v141 = v135[1];
        if (v141)
        {
          do
          {
            v142 = v141;
            v141 = *v141;
          }

          while (v141);
        }

        else
        {
          do
          {
            v142 = v135[2];
            v94 = *v142 == v135;
            v135 = v142;
          }

          while (!v94);
        }

        v135 = v142;
      }

      while (v142 != &v171);
    }

    v143 = MNGetMNRouteDivergenceLog();
    v144 = v143;
    if (v146 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v143))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v144, OS_SIGNPOST_INTERVAL_END, spid, "findOverlappingSectionsForRoutes", "", buf, 2u);
    }

    std::__tree<std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,std::__map_value_compare<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKeyCompare,false>,std::allocator<std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>>>::destroy(v171);
    *buf = &v173._toleranceMeters;
    std::vector<std::map<geo::PolylineCoordinate,std::vector<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v134 = 0;
  }

  return v134;
}

- (void)findOverlappingSectionsForRoutes:
{
  v1 = *self;
  v2 = **self;
  if (v2)
  {
    v4 = v1[1];
    v5 = **self;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        std::__tree<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **self;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

- (uint64_t)findOverlappingSectionsForRoutes:(uint64_t *)routes
{
  v2 = routes[1];
  if (!v2)
  {
LABEL_11:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = *(v2 + 8);
      if (LODWORD(v3) >= v6 && (LODWORD(v3) != v6 || v4 >= *(v5 + 9)))
      {
        break;
      }

      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    if (v6 >= LODWORD(v3) && *(v5 + 9) >= v4)
    {
      return v5 + 5;
    }

    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_11;
    }
  }
}

- (BOOL)findOverlappingSectionsForRoutes:
{
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  if (v9 != v10)
  {
    return v9 < v10;
  }

  v13 = (a2 + 8);
  v14 = *a2;
  if (*a2 == a2 + 8)
  {
LABEL_16:
    v33.var0 = *(a2 + 24);
    v33.var1 = *(a2 + 32);
    v33.var2 = *(a3 + 24);
    v23 = *(a3 + 32);
    if (GEOCalculateDistance(self, a2, v33, *(&a8 - 1)) >= *&self->super.isa)
    {
      v24 = *(a2 + 24);
      v25 = *(a3 + 24);
      if (vabdd_f64(v24, v25) < 0.0001)
      {
        v24 = *(a2 + 32);
        v25 = *(a3 + 32);
      }

      return v24 < v25;
    }

    return 0;
  }

  v15 = *a3;
  v16 = *a3;
  v17 = *a2;
  while (v17[4] == v16[4])
  {
    v18 = v17[1];
    v19 = v17;
    if (v18)
    {
      do
      {
        v17 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v17 = v19[2];
        v20 = *v17 == v19;
        v19 = v17;
      }

      while (!v20);
    }

    v21 = v16[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v16[2];
        v20 = *v22 == v16;
        v16 = v22;
      }

      while (!v20);
    }

    v16 = v22;
    if (v17 == v13)
    {
      goto LABEL_16;
    }
  }

  if (v15 == (a3 + 8))
  {
    return 0;
  }

  while (v14 != v13)
  {
    v27 = v14[4];
    v28 = v15[4];
    if (v27 < v28)
    {
      break;
    }

    if (v28 < v27)
    {
      return 0;
    }

    v29 = v14[1];
    v30 = v14;
    if (v29)
    {
      do
      {
        v14 = v29;
        v29 = *v29;
      }

      while (v29);
    }

    else
    {
      do
      {
        v14 = v30[2];
        v20 = *v14 == v30;
        v30 = v14;
      }

      while (!v20);
    }

    v31 = v15[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      do
      {
        v32 = v15[2];
        v20 = *v32 == v15;
        v15 = v32;
      }

      while (!v20);
    }

    result = 0;
    v15 = v32;
    if (v32 == (a3 + 8))
    {
      return result;
    }
  }

  return 1;
}

- (char)findOverlappingSectionsForRoutes:(char *)routes
{
  v2 = *routes;
  *routes = 0;
  if (v2)
  {
    if (*(routes + 16) == 1)
    {
      std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,void *>>>::destroy[abi:ne200100]<std::pair<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey const,std::vector<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,void,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return routes;
}

- (void)findOverlappingSectionsForRoutes:(void *)routes
{
  if (routes)
  {
    std::__tree<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>>::destroy(*routes);
    std::__tree<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>>::destroy(routes[1]);
    v2 = routes[5];
    if (v2)
    {
      routes[6] = v2;
      operator delete(v2);
    }

    operator delete(routes);
  }
}

- (id)findAllOverlapRangesBetweenRoutes:(id)routes
{
  v116 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([routesCopy count])
  {
    v3 = MNGetMNRouteDivergenceLog();
    v4 = os_signpost_id_make_with_pointer(v3, self);

    v5 = MNGetMNRouteDivergenceLog();
    v6 = v5;
    spid = v4;
    v91 = v4 - 1;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = [(MNRouteDivergenceFinder *)self _routesArrayIdentifierStrings:routesCopy];
      buf[0].i32[0] = 138412290;
      *(buf + 4) = v7;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "findAllOverlapRangesBetweenRoutes", "%@", buf, 0xCu);
    }

    v92 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(routesCopy, "count")}];
    v8 = [routesCopy count];
    memset(v112, 0, sizeof(v112));
    buf[0] = v112;
    buf[1].i8[0] = 0;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0;
    *&v9 = 136315906;
    v89 = v9;
    while (v10 < [routesCopy count])
    {
      v95 = [routesCopy objectAtIndexedSubscript:v10];
      v11 = (v112[0] + 24 * v10);
      v100 = v10;
      v12 = v10 + 1;
      v93 = v10 + 1;
      while (v12 < [routesCopy count])
      {
        v14 = [routesCopy objectAtIndexedSubscript:v12];
        v96 = v112[0];
        v98 = [(MNRouteDivergenceFinder *)self findAllDivergenceConvergenceBetweenRoute:v95 andRoute:v14];
        if ([v98 count] != 2)
        {
          v51 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            buf[0].i32[0] = v89;
            *(buf + 4) = "[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]";
            buf[1].i16[2] = 2080;
            *(&buf[1] + 6) = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteDivergenceFinder.mm";
            buf[2].i16[3] = 1024;
            buf[3].i32[0] = 429;
            buf[3].i16[2] = 2080;
            *(&buf[3] + 6) = "divergenceConvergenceResult.count == 2";
            _os_log_impl(&dword_1D311E000, v51, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
          }
        }

        if ([v98 count] != 2)
        {

          break;
        }

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v15 = [v98 objectAtIndexedSubscript:0];
        results = [v15 results];

        v101 = v12;
        v17 = [results countByEnumeratingWithState:&v108 objects:v115 count:16];
        v102 = v14;
        if (v17)
        {
          v18 = *v109;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v109 != v18)
              {
                objc_enumerationMutation(results);
              }

              v20 = *(*(&v108 + 1) + 8 * i);
              routeCoordinate = [v20 routeCoordinate];
              v22 = [v20 resultType] == 2;
              v23 = v11[1];
              v24 = v11[2];
              if (v23 >= v24)
              {
                v26 = *v11;
                v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v11) >> 3);
                v28 = v27 + 1;
                if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 3);
                if (2 * v29 > v28)
                {
                  v28 = 2 * v29;
                }

                if (v29 >= 0x555555555555555)
                {
                  v30 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  if (v30 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v31 = 8 * ((v23 - *v11) >> 3);
                *v31 = routeCoordinate;
                *(v31 + 8) = v101;
                *(v31 + 16) = v22;
                v25 = 24 * v27 + 24;
                v32 = (24 * v27 - (v23 - v26));
                memcpy(v32, v26, v23 - v26);
                *v11 = v32;
                v11[1] = v25;
                v11[2] = 0;
                if (v26)
                {
                  operator delete(v26);
                }
              }

              else
              {
                *v23 = routeCoordinate;
                *(v23 + 8) = v101;
                v25 = v23 + 24;
                *(v23 + 16) = v22;
              }

              v14 = v102;
              v11[1] = v25;
            }

            v17 = [results countByEnumeratingWithState:&v108 objects:v115 count:16];
          }

          while (v17);
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v33 = [v98 objectAtIndexedSubscript:1];
        obj = [v33 results];

        v34 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
        if (v34)
        {
          v35 = v96 + 24 * v101;
          v36 = *v105;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v105 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v104 + 1) + 8 * j);
              routeCoordinate2 = [v38 routeCoordinate];
              v40 = [v38 resultType] == 2;
              v41 = *(v35 + 8);
              v42 = *(v35 + 16);
              if (v41 >= v42)
              {
                v44 = *v35;
                v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v35) >> 3);
                v46 = v45 + 1;
                if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                v47 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v44) >> 3);
                if (2 * v47 > v46)
                {
                  v46 = 2 * v47;
                }

                if (v47 >= 0x555555555555555)
                {
                  v48 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  if (v48 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v49 = 8 * ((v41 - *v35) >> 3);
                *v49 = routeCoordinate2;
                *(v49 + 8) = v100;
                *(v49 + 16) = v40;
                v43 = 24 * v45 + 24;
                v50 = (24 * v45 - (v41 - v44));
                memcpy(v50, v44, v41 - v44);
                *v35 = v50;
                *(v35 + 8) = v43;
                *(v35 + 16) = 0;
                if (v44)
                {
                  operator delete(v44);
                }
              }

              else
              {
                *v41 = routeCoordinate2;
                *(v41 + 8) = v100;
                v43 = v41 + 24;
                *(v41 + 16) = v40;
              }

              v14 = v102;
              *(v35 + 8) = v43;
            }

            v34 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
          }

          while (v34);
        }

        v12 = v101 + 1;
      }

      v52 = v11[1];
      v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v52 - *v11) >> 3));
      if (v52 == *v11)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      *&v55 = std::__introsort<std::_ClassicAlgPolicy,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,false>(*v11, v52, v54, 1, v13);
      v56 = [routesCopy count];
      memset(buf, 0, 32);
      buf[4].i32[0] = 1065353216;
      std::__hash_table<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__rehash_unique[abi:ne200100](buf, v56 - 1);
      v103 = objc_alloc_init(MEMORY[0x1E69A23A8]);
      v57 = objc_alloc_init(MEMORY[0x1E69A23A8]);
      v58 = *MEMORY[0x1E69A1920];
      v59 = *v11;
      v60 = v11[1];
      v61 = *MEMORY[0x1E69A1920];
LABEL_63:
      if (v59 != v60)
      {
        if (*(v59 + 16) == 1)
        {
          if (!*&buf[3])
          {
            v58 = *v59;
            if (GEOPolylineCoordinateRangeIsValid())
            {
              [v103 addCoordinateRange:{v61, v58}];
            }
          }

          v62 = *(v59 + 8);
          if (buf[1])
          {
            v63 = vcnt_s8(buf[1]);
            v63.i16[0] = vaddlv_u8(v63);
            if (v63.u32[0] > 1uLL)
            {
              v64 = *(v59 + 8);
              if (v62 >= *&buf[1])
              {
                v64 = v62 % *&buf[1];
              }
            }

            else
            {
              v64 = (*&buf[1] - 1) & v62;
            }

            v73 = *(*buf + 8 * v64);
            if (v73)
            {
              for (k = *v73; k; k = *k)
              {
                v75 = k[1];
                if (v75 == v62)
                {
                  if (k[3] == v62)
                  {
                    goto LABEL_134;
                  }
                }

                else
                {
                  if (v63.u32[0] > 1uLL)
                  {
                    if (v75 >= *&buf[1])
                    {
                      v75 %= *&buf[1];
                    }
                  }

                  else
                  {
                    v75 &= *&buf[1] - 1;
                  }

                  if (v75 != v64)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }

        v65 = buf[1];
        if (!*&buf[1])
        {
          goto LABEL_131;
        }

        v66 = *(v59 + 8);
        v67 = vcnt_s8(buf[1]);
        v67.i16[0] = vaddlv_u8(v67);
        if (v67.u32[0] > 1uLL)
        {
          v68 = *(v59 + 8);
          if (v66 >= *&buf[1])
          {
            v68 = v66 % *&buf[1];
          }
        }

        else
        {
          v68 = (*&buf[1] - 1) & v66;
        }

        v69 = *(*buf + 8 * v68);
        if (!v69)
        {
          goto LABEL_131;
        }

        v70 = *v69;
        if (!*v69)
        {
          goto LABEL_131;
        }

        v71 = *&buf[1] - 1;
        while (1)
        {
          v72 = v70[1];
          if (v72 == v66)
          {
            if (*&v70[3] == v66)
            {
              if (v67.u32[0] > 1uLL)
              {
                if (v66 >= *&buf[1])
                {
                  v66 %= *&buf[1];
                }
              }

              else
              {
                v66 &= v71;
              }

              v76 = *v70;
              v77 = *(*buf + 8 * v66);
              do
              {
                v78 = v77;
                v77 = *v77;
              }

              while (v77 != v70);
              if (v78 == &buf[2])
              {
                goto LABEL_120;
              }

              v79 = v78[1];
              if (v67.u32[0] > 1uLL)
              {
                if (*&v79 >= *&buf[1])
                {
                  *&v79 %= *&buf[1];
                }
              }

              else
              {
                *&v79 &= v71;
              }

              if (*&v79 == v66)
              {
LABEL_122:
                if (v76)
                {
                  v80 = v76[1];
                  goto LABEL_124;
                }
              }

              else
              {
LABEL_120:
                if (!v76)
                {
                  goto LABEL_121;
                }

                v80 = v76[1];
                if (v67.u32[0] > 1uLL)
                {
                  v81 = v76[1];
                  if (v80 >= *&buf[1])
                  {
                    v81 = (v80 % *&buf[1]);
                  }
                }

                else
                {
                  v81 = (v80 & v71);
                }

                if (*&v81 != v66)
                {
LABEL_121:
                  *(*buf + 8 * v66) = 0;
                  v76 = *v70;
                  goto LABEL_122;
                }

LABEL_124:
                if (v67.u32[0] > 1uLL)
                {
                  if (v80 >= *&v65)
                  {
                    v80 %= *&v65;
                  }
                }

                else
                {
                  v80 &= v71;
                }

                if (v80 != v66)
                {
                  *(*buf + 8 * v80) = v78;
                  v76 = *v70;
                }
              }

              *v78 = v76;
              --*&buf[3];
              operator delete(v70);
LABEL_131:
              if (!*&buf[3])
              {
                v61 = *v59;
                if (GEOPolylineCoordinateRangeIsValid())
                {
                  [v57 addCoordinateRange:{v58, v61}];
                }
              }

LABEL_134:
              v59 += 24;
              goto LABEL_63;
            }
          }

          else
          {
            if (v67.u32[0] > 1uLL)
            {
              if (v72 >= *&buf[1])
              {
                v72 %= *&buf[1];
              }
            }

            else
            {
              v72 &= v71;
            }

            if (v72 != v68)
            {
              goto LABEL_131;
            }
          }

          v70 = *v70;
          if (!v70)
          {
            goto LABEL_131;
          }
        }
      }

      if (buf[3])
      {
        endRouteCoordinate = [v95 endRouteCoordinate];
        if (GEOPolylineCoordinateRangeIsValid())
        {
          v83 = v57;
          v61 = v58;
          goto LABEL_140;
        }
      }

      else
      {
        endRouteCoordinate = [v95 endRouteCoordinate];
        if (GEOPolylineCoordinateRangeIsValid())
        {
          v83 = v103;
LABEL_140:
          [v83 addCoordinateRange:{v61, endRouteCoordinate}];
        }
      }

      v84 = objc_alloc_init(MNRouteOverlapResult);
      uniqueRouteID = [v95 uniqueRouteID];
      [(MNRouteOverlapResult *)v84 setRouteID:uniqueRouteID];

      -[MNRouteOverlapResult setRouteRange:](v84, "setRouteRange:", 0, [v95 endRouteCoordinate]);
      [(MNRouteOverlapResult *)v84 setUniqueRanges:v103];
      [(MNRouteOverlapResult *)v84 setOverlapRanges:v57];
      [v92 addObject:v84];

      std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(buf);
      v10 = v93;
    }

    v86 = MNGetMNRouteDivergenceLog();
    v87 = v86;
    if (v91 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v86))
    {
      buf[0].i16[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v87, OS_SIGNPOST_INTERVAL_END, spid, "findAllOverlapRangesBetweenRoutes", "", buf, 2u);
    }

    buf[0] = v112;
    std::vector<std::vector<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v92 = 0;
  }

  return v92;
}

- (void)findAllOverlapRangesBetweenRoutes:
{
  v1 = *self;
  v2 = **self;
  if (v2)
  {
    v4 = v1[1];
    v5 = **self;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **self;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

- (float)findAllOverlapRangesBetweenRoutes:(uint64_t)routes
{
LABEL_1:
  v9 = &a2[-2].n128_u32[2];
  v10 = a2 - 3;
  v11 = &a2[-5].n128_i8[8];
  selfCopy = self;
  while (1)
  {
    self = selfCopy;
    v13 = a2 - selfCopy;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - selfCopy) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return a5.n128_f32[0];
      }

      if (v14 == 2)
      {
        if (*v9 >= *selfCopy)
        {
          if (*v9 != *selfCopy)
          {
            return a5.n128_f32[0];
          }

          a5.n128_u32[0] = a2[-2].n128_u32[3];
          if (a5.n128_f32[0] >= *(selfCopy + 4))
          {
            return a5.n128_f32[0];
          }
        }

LABEL_210:
        v216 = *(selfCopy + 16);
        v189 = *selfCopy;
        v100 = *v9;
        *(selfCopy + 16) = a2[-1].n128_u8[8];
        *selfCopy = v100;
        a5 = v189;
        a2[-1].n128_u8[8] = v216;
LABEL_211:
        *v9 = a5;
        return a5.n128_f32[0];
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      a5.n128_f32[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(selfCopy, (selfCopy + 24), (selfCopy + 48), (a2 - 24), a5);
      return a5.n128_f32[0];
    }

    if (v14 == 5)
    {
      a5.n128_f32[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(selfCopy, (selfCopy + 24), (selfCopy + 48), (selfCopy + 72), a5);
      v101 = *(selfCopy + 72);
      if (*v9 < v101 || *v9 == v101 && (a5.n128_u32[0] = a2[-2].n128_u32[3], a5.n128_f32[0] < *(selfCopy + 76)))
      {
        a5 = *(selfCopy + 72);
        v102 = *(selfCopy + 88);
        v103 = a2[-1].n128_u8[8];
        *(selfCopy + 72) = *v9;
        *(selfCopy + 88) = v103;
        a2[-1].n128_u8[8] = v102;
        *v9 = a5;
        v104 = *(selfCopy + 72);
        v105 = *(selfCopy + 48);
        if (v104 < v105 || v104 == v105 && (a5.n128_u32[0] = *(selfCopy + 76), a5.n128_f32[0] < *(selfCopy + 52)))
        {
          v106 = *(selfCopy + 64);
          a5 = *(selfCopy + 48);
          *(selfCopy + 48) = *(selfCopy + 72);
          *(selfCopy + 64) = *(selfCopy + 88);
          *(selfCopy + 72) = a5;
          *(selfCopy + 88) = v106;
          v107 = *(selfCopy + 48);
          v108 = *(selfCopy + 24);
          if (v107 < v108 || v107 == v108 && (a5.n128_u32[0] = *(selfCopy + 52), a5.n128_f32[0] < *(selfCopy + 28)))
          {
            v109 = *(selfCopy + 40);
            a5 = *(selfCopy + 24);
            *(selfCopy + 24) = *(selfCopy + 48);
            *(selfCopy + 40) = *(selfCopy + 64);
            *(selfCopy + 48) = a5;
            *(selfCopy + 64) = v109;
            v110 = *(selfCopy + 24);
            if (v110 < *selfCopy || v110 == *selfCopy && (a5.n128_u32[0] = *(selfCopy + 28), a5.n128_f32[0] < *(selfCopy + 4)))
            {
              v217 = *(selfCopy + 16);
              v190 = *selfCopy;
              *selfCopy = *(selfCopy + 24);
              *(selfCopy + 16) = *(selfCopy + 40);
              a5.n128_u32[0] = v190.n128_u32[0];
              *(selfCopy + 24) = v190;
              *(selfCopy + 40) = v217;
            }
          }
        }
      }

      return a5.n128_f32[0];
    }

LABEL_9:
    if (v13 <= 575)
    {
      v111 = (selfCopy + 24);
      v113 = selfCopy == a2 || v111 == a2;
      if (a4)
      {
        if (v113)
        {
          return a5.n128_f32[0];
        }

        v114 = 0;
        v115 = selfCopy;
        while (2)
        {
          v116 = v115;
          v115 = v111;
          v117 = *(v116 + 24);
          if (v117 < *v116)
          {
            a5.n128_u32[0] = *(v116 + 28);
            goto LABEL_228;
          }

          if (v117 == *v116)
          {
            a5.n128_u32[0] = *(v116 + 28);
            if (a5.n128_f32[0] < *(v116 + 4))
            {
LABEL_228:
              v191 = *(v116 + 32);
              *(v115 + 16) = *(v116 + 16);
              *v115 = *v116;
              v118 = selfCopy;
              if (v116 != selfCopy)
              {
                v119 = v114;
                while (1)
                {
                  v120 = selfCopy + v119;
                  v121 = *(selfCopy + v119 - 24);
                  if (v117 >= v121)
                  {
                    if (v117 != v121)
                    {
                      v118 = selfCopy + v119;
                      goto LABEL_240;
                    }

                    if (a5.n128_f32[0] >= *(selfCopy + v119 - 20))
                    {
                      break;
                    }
                  }

                  v116 -= 24;
                  *v120 = *(selfCopy + v119 - 24);
                  *(v120 + 16) = *(selfCopy + v119 - 8);
                  v119 -= 24;
                  if (!v119)
                  {
                    v118 = selfCopy;
                    goto LABEL_240;
                  }
                }

                v118 = v116;
              }

LABEL_240:
              *v118 = v117;
              *(v118 + 4) = a5.n128_u32[0];
              *(v118 + 8) = v191;
              *(v118 + 16) = BYTE8(v191);
            }
          }

          v111 = (v115 + 24);
          v114 += 24;
          if ((v115 + 24) == a2)
          {
            return a5.n128_f32[0];
          }

          continue;
        }
      }

      if (v113)
      {
        return a5.n128_f32[0];
      }

      while (2)
      {
        selfCopy2 = self;
        self = v111;
        v161 = *(selfCopy2 + 24);
        if (v161 >= *selfCopy2)
        {
          if (v161 == *selfCopy2)
          {
            a5.n128_u32[0] = *(selfCopy2 + 28);
            if (a5.n128_f32[0] < *(selfCopy2 + 4))
            {
              goto LABEL_309;
            }
          }
        }

        else
        {
          a5.n128_u32[0] = *(selfCopy2 + 28);
LABEL_309:
          v195 = *(selfCopy2 + 32);
          do
          {
            do
            {
              v162 = selfCopy2;
              *(selfCopy2 + 24) = *selfCopy2;
              *(selfCopy2 + 40) = *(selfCopy2 + 16);
              v163 = *(selfCopy2 - 24);
              selfCopy2 -= 24;
              v164 = v161 == v163;
            }

            while (v161 < v163);
          }

          while (v164 && a5.n128_f32[0] < *(v162 - 20));
          *v162 = v161;
          *(v162 + 4) = a5.n128_u32[0];
          *(v162 + 8) = v195;
          *(v162 + 16) = BYTE8(v195);
        }

        v111 = (self + 24);
        if ((self + 24) == a2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    if (!routes)
    {
      if (selfCopy == a2)
      {
        return a5.n128_f32[0];
      }

      v122 = (v14 - 2) >> 1;
      v123 = v122;
      while (2)
      {
        v124 = v123;
        if (v122 >= v123)
        {
          v125 = (2 * v123) | 1;
          v126 = selfCopy + 24 * v125;
          if (2 * v124 + 2 < v14)
          {
            v127 = *(v126 + 24);
            if (*v126 < v127 || *v126 == v127 && *(v126 + 4) < *(v126 + 28))
            {
              v126 += 24;
              v125 = 2 * v124 + 2;
            }
          }

          v128 = selfCopy + 24 * v124;
          v129 = *v128;
          if (*v126 >= *v128)
          {
            if (*v126 != v129)
            {
              v130 = *(v128 + 4);
              goto LABEL_255;
            }

            v130 = *(v128 + 4);
            if (*(v126 + 4) >= v130)
            {
LABEL_255:
              v192 = *(v128 + 8);
              v131 = *v126;
              *(v128 + 16) = *(v126 + 16);
              *v128 = v131;
              if (v122 >= v125)
              {
                while (1)
                {
                  v133 = 2 * v125;
                  v125 = (2 * v125) | 1;
                  v132 = selfCopy + 24 * v125;
                  v134 = v133 + 2;
                  if (v134 < v14)
                  {
                    v135 = *(v132 + 24);
                    if (*v132 < v135 || *v132 == v135 && *(v132 + 4) < *(v132 + 28))
                    {
                      v132 += 24;
                      v125 = v134;
                    }
                  }

                  if (*v132 < v129 || *v132 == v129 && *(v132 + 4) < v130)
                  {
                    break;
                  }

                  v136 = *v132;
                  *(v126 + 16) = *(v132 + 16);
                  *v126 = v136;
                  v126 = v132;
                  if (v122 < v125)
                  {
                    goto LABEL_257;
                  }
                }
              }

              v132 = v126;
LABEL_257:
              *v132 = v129;
              *(v132 + 4) = v130;
              *(v132 + 8) = v192;
              *(v132 + 16) = BYTE8(v192);
            }
          }
        }

        v123 = v124 - 1;
        if (v124)
        {
          continue;
        }

        break;
      }

      v137 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      while (2)
      {
        v138 = 0;
        v218 = *(selfCopy + 16);
        v193 = *selfCopy;
        v139 = selfCopy;
        do
        {
          v140 = v139;
          v141 = v139 + 24 * v138;
          v139 = v141 + 24;
          v142 = 2 * v138;
          v138 = (2 * v138) | 1;
          v143 = v142 + 2;
          if (v143 < v137)
          {
            v144 = *(v141 + 48);
            v145 = *(v141 + 24);
            if (v145 < v144 || v145 == v144 && *(v141 + 28) < *(v141 + 52))
            {
              v139 = v141 + 48;
              v138 = v143;
            }
          }

          v146 = *v139;
          v140[1].n128_u8[0] = *(v139 + 16);
          *v140 = v146;
        }

        while (v138 <= ((v137 - 2) >> 1));
        a2 = (a2 - 24);
        if (v139 == a2)
        {
          a5.n128_u32[0] = v193.n128_u32[0];
          *(v139 + 16) = v218;
          *v139 = v193;
        }

        else
        {
          a5 = *a2;
          *(v139 + 16) = a2[1].n128_u8[0];
          *v139 = a5;
          a5.n128_u32[0] = v193.n128_u32[0];
          a2[1].n128_u8[0] = v218;
          *a2 = v193;
          v147 = v139 - selfCopy + 24;
          if (v147 >= 25)
          {
            v148 = -2 - 0x5555555555555555 * (v147 >> 3);
            v149 = v148 >> 1;
            v150 = selfCopy + 24 * (v148 >> 1);
            v151 = *v139;
            if (*v150 < *v139)
            {
              a5.n128_u32[0] = *(v139 + 4);
              goto LABEL_281;
            }

            if (*v150 == v151)
            {
              a5.n128_u32[0] = *(v139 + 4);
              if (*(v150 + 4) < a5.n128_f32[0])
              {
LABEL_281:
                v168 = *(v139 + 8);
                v152 = *v150;
                *(v139 + 16) = *(v150 + 16);
                *v139 = v152;
                if (v148 >= 2)
                {
                  while (1)
                  {
                    v154 = v149 - 1;
                    v149 = (v149 - 1) >> 1;
                    v153 = selfCopy + 24 * v149;
                    if (*v153 >= v151 && (*v153 != v151 || *(v153 + 4) >= a5.n128_f32[0]))
                    {
                      break;
                    }

                    v155 = *v153;
                    *(v150 + 16) = *(v153 + 16);
                    *v150 = v155;
                    v150 = selfCopy + 24 * v149;
                    if (v154 <= 1)
                    {
                      goto LABEL_287;
                    }
                  }
                }

                v153 = v150;
LABEL_287:
                *v153 = v151;
                *(v153 + 4) = a5.n128_u32[0];
                *(v153 + 8) = v168;
                *(v153 + 16) = BYTE8(v168);
              }
            }
          }
        }

        if (v137-- <= 2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    v15 = v14 >> 1;
    v16 = (selfCopy + 24 * (v14 >> 1));
    if (v13 >= 0xC01)
    {
      v17 = v16->n128_u32[0];
      if (v16->n128_u32[0] < *selfCopy || v17 == *selfCopy && v16->n128_f32[1] < *(selfCopy + 4))
      {
        if (*v9 < v17 || *v9 == v17 && a2[-2].n128_f32[3] < v16->n128_f32[1])
        {
          v196 = *(selfCopy + 16);
          v169 = *selfCopy;
          v18 = *v9;
          *(selfCopy + 16) = a2[-1].n128_u8[8];
          *selfCopy = v18;
        }

        else
        {
          v202 = *(selfCopy + 16);
          v175 = *selfCopy;
          v25 = *v16;
          *(selfCopy + 16) = v16[1].n128_u8[0];
          *selfCopy = v25;
          v16[1].n128_u8[0] = v202;
          *v16 = v175;
          if (*v9 >= v16->n128_u32[0] && (*v9 != v16->n128_u32[0] || a2[-2].n128_f32[3] >= v16->n128_f32[1]))
          {
            goto LABEL_33;
          }

          v196 = v16[1].n128_u64[0];
          v169 = *v16;
          v26 = *v9;
          v16[1].n128_u8[0] = a2[-1].n128_u8[8];
          *v16 = v26;
        }

        a2[-1].n128_u8[8] = v196;
        *v9 = v169;
        goto LABEL_33;
      }

      if (*v9 < v17 || *v9 == v17 && a2[-2].n128_f32[3] < v16->n128_f32[1])
      {
        v198 = v16[1].n128_u64[0];
        v171 = *v16;
        v21 = *v9;
        v16[1].n128_u8[0] = a2[-1].n128_u8[8];
        *v16 = v21;
        a2[-1].n128_u8[8] = v198;
        *v9 = v171;
        if (v16->n128_u32[0] < *selfCopy || v16->n128_u32[0] == *selfCopy && v16->n128_f32[1] < *(selfCopy + 4))
        {
          v199 = *(selfCopy + 16);
          v172 = *selfCopy;
          v22 = *v16;
          *(selfCopy + 16) = v16[1].n128_u8[0];
          *selfCopy = v22;
          v16[1].n128_u8[0] = v199;
          *v16 = v172;
        }
      }

LABEL_33:
      v27 = (selfCopy + 24);
      v28 = *(selfCopy + 24);
      v29 = selfCopy + 24 * v15;
      v32 = *(v29 - 24);
      v30 = (v29 - 24);
      v31 = v32;
      v33 = v32 == v28;
      if (v32 < v28 || v33 && v30->n128_f32[1] < *(selfCopy + 28))
      {
        if (v10->n128_u32[0] < v31 || v10->n128_u32[0] == v31 && a2[-3].n128_f32[1] < v30->n128_f32[1])
        {
          v34 = *v27;
          v35 = *(selfCopy + 40);
          v36 = a2[-2].n128_u8[0];
          *v27 = *v10;
          *(selfCopy + 40) = v36;
          a2[-2].n128_u8[0] = v35;
        }

        else
        {
          v43 = *v27;
          v44 = *(selfCopy + 40);
          v45 = v30[1].n128_i8[0];
          *v27 = *v30;
          *(selfCopy + 40) = v45;
          v30[1].n128_u8[0] = v44;
          *v30 = v43;
          if (v10->n128_u32[0] >= v30->n128_u32[0] && (v10->n128_u32[0] != v30->n128_u32[0] || a2[-3].n128_f32[1] >= v30->n128_f32[1]))
          {
            goto LABEL_52;
          }

          v205 = v30[1].n128_i64[0];
          v178 = *v30;
          v46 = *v10;
          v30[1].n128_u8[0] = a2[-2].n128_u8[0];
          *v30 = v46;
          v34 = v178;
          a2[-2].n128_u8[0] = v205;
        }

        *v10 = v34;
        goto LABEL_52;
      }

      if (v10->n128_u32[0] < v31 || v10->n128_u32[0] == v31 && a2[-3].n128_f32[1] < v30->n128_f32[1])
      {
        v203 = v30[1].n128_i64[0];
        v176 = *v30;
        v37 = *v10;
        v30[1].n128_u8[0] = a2[-2].n128_u8[0];
        *v30 = v37;
        a2[-2].n128_u8[0] = v203;
        *v10 = v176;
        if (v30->n128_u32[0] < v27->n128_u32[0] || v30->n128_u32[0] == v27->n128_u32[0] && v30->n128_f32[1] < *(selfCopy + 28))
        {
          v38 = *v27;
          v39 = *(selfCopy + 40);
          v40 = v30[1].n128_i8[0];
          *v27 = *v30;
          *(selfCopy + 40) = v40;
          v30[1].n128_u8[0] = v39;
          *v30 = v38;
        }
      }

LABEL_52:
      v47 = (selfCopy + 48);
      v48 = *(selfCopy + 48);
      v49 = selfCopy + 24 * v15;
      v52 = *(v49 + 24);
      v50 = (v49 + 24);
      v51 = v52;
      v53 = v52 == v48;
      if (v52 < v48 || v53 && v50->n128_f32[1] < *(selfCopy + 52))
      {
        if (*v11 < v51 || *v11 == v51 && a2[-5].n128_f32[3] < v50->n128_f32[1])
        {
          v54 = *v47;
          v55 = *(selfCopy + 64);
          v56 = a2[-4].n128_u8[8];
          *v47 = *v11;
          *(selfCopy + 64) = v56;
          a2[-4].n128_u8[8] = v55;
        }

        else
        {
          v61 = *v47;
          v62 = *(selfCopy + 64);
          v63 = v50[1].n128_i8[0];
          *v47 = *v50;
          *(selfCopy + 64) = v63;
          v50[1].n128_u8[0] = v62;
          *v50 = v61;
          if (*v11 >= v50->n128_u32[0] && (*v11 != v50->n128_u32[0] || a2[-5].n128_f32[3] >= v50->n128_f32[1]))
          {
            goto LABEL_66;
          }

          v207 = v50[1].n128_i64[0];
          v180 = *v50;
          v64 = *v11;
          v50[1].n128_u8[0] = a2[-4].n128_u8[8];
          *v50 = v64;
          v54 = v180;
          a2[-4].n128_u8[8] = v207;
        }

        *v11 = v54;
        goto LABEL_66;
      }

      if (*v11 < v51 || *v11 == v51 && a2[-5].n128_f32[3] < v50->n128_f32[1])
      {
        v206 = v50[1].n128_i64[0];
        v179 = *v50;
        v57 = *v11;
        v50[1].n128_u8[0] = a2[-4].n128_u8[8];
        *v50 = v57;
        a2[-4].n128_u8[8] = v206;
        *v11 = v179;
        if (v50->n128_u32[0] < v47->n128_u32[0] || v50->n128_u32[0] == v47->n128_u32[0] && v50->n128_f32[1] < *(selfCopy + 52))
        {
          v58 = *v47;
          v59 = *(selfCopy + 64);
          v60 = v50[1].n128_i8[0];
          *v47 = *v50;
          *(selfCopy + 64) = v60;
          v50[1].n128_u8[0] = v59;
          *v50 = v58;
        }
      }

LABEL_66:
      v65 = v16->n128_u32[0];
      if (v16->n128_u32[0] >= v30->n128_u32[0] && (v65 != v30->n128_u32[0] || v16->n128_f32[1] >= v30->n128_f32[1]))
      {
        if (v50->n128_u32[0] < v65 || v50->n128_u32[0] == v65 && v50->n128_f32[1] < v16->n128_f32[1])
        {
          v209 = v16[1].n128_u64[0];
          v182 = *v16;
          *v16 = *v50;
          v16[1].n128_u8[0] = v50[1].n128_u8[0];
          v50[1].n128_u8[0] = v209;
          *v50 = v182;
          if (v16->n128_u32[0] < v30->n128_u32[0] || v16->n128_u32[0] == v30->n128_u32[0] && v16->n128_f32[1] < v30->n128_f32[1])
          {
            v210 = v30[1].n128_i64[0];
            v183 = *v30;
            *v30 = *v16;
            v30[1].n128_u8[0] = v16[1].n128_u8[0];
            v16[1].n128_u8[0] = v210;
            *v16 = v183;
          }
        }

        goto LABEL_79;
      }

      if (v50->n128_u32[0] < v65 || v50->n128_u32[0] == v65 && v50->n128_f32[1] < v16->n128_f32[1])
      {
        v208 = v30[1].n128_u64[0];
        v181 = *v30;
        *v30 = *v50;
        v30[1].n128_u8[0] = v50[1].n128_u8[0];
      }

      else
      {
        v211 = v30[1].n128_i64[0];
        v184 = *v30;
        *v30 = *v16;
        v30[1].n128_u8[0] = v16[1].n128_u8[0];
        v16[1].n128_u8[0] = v211;
        *v16 = v184;
        if (v50->n128_u32[0] >= v16->n128_u32[0] && (v50->n128_u32[0] != v16->n128_u32[0] || v50->n128_f32[1] >= v16->n128_f32[1]))
        {
          goto LABEL_79;
        }

        v208 = v16[1].n128_u64[0];
        v181 = *v16;
        *v16 = *v50;
        v16[1].n128_u8[0] = v50[1].n128_u8[0];
      }

      v50[1].n128_u8[0] = v208;
      *v50 = v181;
LABEL_79:
      v212 = *(selfCopy + 16);
      v185 = *selfCopy;
      v66 = *v16;
      *(selfCopy + 16) = v16[1].n128_u8[0];
      *selfCopy = v66;
      a5 = v185;
      v16[1].n128_u8[0] = v212;
      *v16 = v185;
      goto LABEL_80;
    }

    v19 = *selfCopy;
    if (*selfCopy >= v16->n128_u32[0] && (v19 != v16->n128_u32[0] || *(selfCopy + 4) >= v16->n128_f32[1]))
    {
      if (*v9 < v19 || *v9 == v19 && a2[-2].n128_f32[3] < *(selfCopy + 4))
      {
        v200 = *(selfCopy + 16);
        v173 = *selfCopy;
        v23 = *v9;
        *(selfCopy + 16) = a2[-1].n128_u8[8];
        *selfCopy = v23;
        a5 = v173;
        a2[-1].n128_u8[8] = v200;
        *v9 = v173;
        if (*selfCopy < v16->n128_u32[0] || *selfCopy == v16->n128_u32[0] && *(selfCopy + 4) < v16->n128_f32[1])
        {
          v201 = v16[1].n128_u64[0];
          v174 = *v16;
          v24 = *selfCopy;
          v16[1].n128_u8[0] = *(selfCopy + 16);
          *v16 = v24;
          a5 = v174;
          *(selfCopy + 16) = v201;
          *selfCopy = v174;
        }
      }

      goto LABEL_80;
    }

    if (*v9 < v19 || *v9 == v19 && a2[-2].n128_f32[3] < *(selfCopy + 4))
    {
      v197 = v16[1].n128_u64[0];
      v170 = *v16;
      v20 = *v9;
      v16[1].n128_u8[0] = a2[-1].n128_u8[8];
      *v16 = v20;
    }

    else
    {
      v204 = v16[1].n128_u64[0];
      v177 = *v16;
      v41 = *selfCopy;
      v16[1].n128_u8[0] = *(selfCopy + 16);
      *v16 = v41;
      a5 = v177;
      *(selfCopy + 16) = v204;
      *selfCopy = v177;
      if (*v9 >= *selfCopy && (*v9 != *selfCopy || a2[-2].n128_f32[3] >= *(selfCopy + 4)))
      {
        goto LABEL_80;
      }

      v197 = *(selfCopy + 16);
      v170 = *selfCopy;
      v42 = *v9;
      *(selfCopy + 16) = a2[-1].n128_u8[8];
      *selfCopy = v42;
    }

    a5 = v170;
    a2[-1].n128_u8[8] = v197;
    *v9 = v170;
LABEL_80:
    --routes;
    if (a4)
    {
      v67 = *selfCopy;
LABEL_86:
      a5.n128_u32[0] = *(selfCopy + 4);
      v166 = *(selfCopy + 8);
        ;
      }

      if (i - 24 == selfCopy)
      {
        j = a2;
        if (i < a2)
        {
          v73 = *v9;
          j = (a2 - 24);
          if (*v9 >= v67)
          {
            j = (a2 - 24);
            do
            {
              if (v73 == v67)
              {
                if (i >= j || j->n128_f32[1] < a5.n128_f32[0])
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v74 = j[-2].n128_u32[2];
              j = (j - 24);
              v73 = v74;
            }

            while (v74 >= v67);
          }
        }
      }

      else
      {
        v70 = *v9;
        for (j = (a2 - 24); v70 >= v67 && (v70 != v67 || j->n128_f32[1] >= a5.n128_f32[0]); j = (j - 24))
        {
          v72 = j[-2].n128_u32[2];
          v70 = v72;
        }
      }

      selfCopy = i;
      if (i < j)
      {
        selfCopy = i;
        v75 = j;
        do
        {
          v213 = *(selfCopy + 16);
          v186 = *selfCopy;
          v76 = *v75;
          *(selfCopy + 16) = v75[1].n128_u8[0];
          *selfCopy = v76;
          v75[1].n128_u8[0] = v213;
          *v75 = v186;
          do
          {
            do
            {
              v77 = *(selfCopy + 24);
              selfCopy += 24;
              v78 = v77 == v67;
            }

            while (v77 < v67);
          }

          while (v78 && *(selfCopy + 4) < a5.n128_f32[0]);
          do
          {
            v80 = v75[-2].n128_u32[2];
            v75 = (v75 - 24);
            v79 = v80;
          }

          while (v80 >= v67 && (v79 != v67 || v75->n128_f32[1] >= a5.n128_f32[0]));
        }

        while (selfCopy < v75);
      }

      if (selfCopy - 24 != self)
      {
        v81 = *(selfCopy - 24);
        *(self + 16) = *(selfCopy - 8);
        *self = v81;
      }

      *(selfCopy - 24) = v67;
      *(selfCopy - 20) = a5.n128_u32[0];
      *(selfCopy - 8) = BYTE8(v166);
      *(selfCopy - 16) = v166;
      if (i < j)
      {
        goto LABEL_122;
      }

      v82 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *>(self, selfCopy - 24, a5);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *>(selfCopy, a2, v83))
      {
        a2 = (selfCopy - 24);
        if (v82)
        {
          return a5.n128_f32[0];
        }

        goto LABEL_1;
      }

      if (!v82)
      {
LABEL_122:
        a5.n128_f32[0] = std::__introsort<std::_ClassicAlgPolicy,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,false>(self, (selfCopy - 24), routes, a4 & 1, a5);
        a4 = 0;
      }
    }

    else
    {
      v68 = *(selfCopy - 24);
      v67 = *selfCopy;
      if (v68 < *selfCopy)
      {
        goto LABEL_86;
      }

      if (v68 == v67)
      {
        a5.n128_u32[0] = *(selfCopy + 4);
        v67 = *(selfCopy - 24);
        if (*(selfCopy - 20) < a5.n128_f32[0])
        {
          goto LABEL_86;
        }
      }

      else
      {
        a5.n128_u32[0] = *(selfCopy + 4);
        v68 = *selfCopy;
      }

      v167 = *(selfCopy + 8);
      v84 = *v9;
      if (v68 < *v9 || v68 == v84 && a5.n128_f32[0] < a2[-2].n128_f32[3])
      {
        do
        {
          v86 = *(selfCopy + 24);
          selfCopy += 24;
          v85 = v86;
        }

        while (v68 >= v86 && (v68 != v85 || a5.n128_f32[0] >= *(selfCopy + 4)));
      }

      else
      {
          ;
        }
      }

      k = a2;
      if (selfCopy < a2)
      {
        for (k = (a2 - 24); v68 < v84 || v68 == v84 && a5.n128_f32[0] < k->n128_f32[1]; k = (k - 24))
        {
          v88 = k[-2].n128_u32[2];
          v84 = v88;
        }
      }

      while (selfCopy < k)
      {
        v214 = *(selfCopy + 16);
        v187 = *selfCopy;
        v89 = *k;
        *(selfCopy + 16) = k[1].n128_u8[0];
        *selfCopy = v89;
        k[1].n128_u8[0] = v214;
        *k = v187;
        do
        {
          v91 = *(selfCopy + 24);
          selfCopy += 24;
          v90 = v91;
        }

        while (v68 >= v91 && (v68 != v90 || a5.n128_f32[0] >= *(selfCopy + 4)));
        do
        {
          do
          {
            v92 = k[-2].n128_u32[2];
            k = (k - 24);
            v93 = v68 == v92;
          }

          while (v68 < v92);
        }

        while (v93 && a5.n128_f32[0] < k->n128_f32[1]);
      }

      if (selfCopy - 24 != self)
      {
        v94 = *(selfCopy - 24);
        *(self + 16) = *(selfCopy - 8);
        *self = v94;
      }

      a4 = 0;
      *(selfCopy - 24) = v68;
      *(selfCopy - 20) = a5.n128_u32[0];
      *(selfCopy - 8) = BYTE8(v167);
      *(selfCopy - 16) = v167;
    }
  }

  v95 = (selfCopy + 24);
  v96 = *(selfCopy + 24);
  if (v96 < *selfCopy || v96 == *selfCopy && (a5.n128_u32[0] = *(selfCopy + 28), a5.n128_f32[0] < *(selfCopy + 4)))
  {
    if (*v9 < v96 || *v9 == v96 && a2[-2].n128_f32[3] < *(selfCopy + 28))
    {
      goto LABEL_210;
    }

    v215 = *(selfCopy + 16);
    v188 = *selfCopy;
    *selfCopy = *v95;
    *(selfCopy + 16) = *(selfCopy + 40);
    a5.n128_u32[0] = v188.n128_u32[0];
    *v95 = v188;
    *(selfCopy + 40) = v215;
    v97 = *(selfCopy + 24);
    if (*v9 < v97 || *v9 == v97 && (a5.n128_u32[0] = a2[-2].n128_u32[3], a5.n128_f32[0] < *(selfCopy + 28)))
    {
      a5 = *v95;
      v98 = *(selfCopy + 40);
      v99 = a2[-1].n128_u8[8];
      *v95 = *v9;
      *(selfCopy + 40) = v99;
      a2[-1].n128_u8[8] = v98;
      goto LABEL_211;
    }
  }

  else if (*v9 < v96 || *v9 == v96 && (a5.n128_u32[0] = a2[-2].n128_u32[3], a5.n128_f32[0] < *(selfCopy + 28)))
  {
    a5 = *v95;
    v157 = *(selfCopy + 40);
    v158 = a2[-1].n128_u8[8];
    *v95 = *v9;
    *(selfCopy + 40) = v158;
    a2[-1].n128_u8[8] = v157;
    *v9 = a5;
    v159 = *(selfCopy + 24);
    if (v159 < *selfCopy || v159 == *selfCopy && (a5.n128_u32[0] = *(selfCopy + 28), a5.n128_f32[0] < *(selfCopy + 4)))
    {
      v219 = *(selfCopy + 16);
      v194 = *selfCopy;
      *selfCopy = *v95;
      *(selfCopy + 16) = *(selfCopy + 40);
      a5.n128_u32[0] = v194.n128_u32[0];
      *v95 = v194;
      *(selfCopy + 40) = v219;
    }
  }

  return a5.n128_f32[0];
}

- (void)findAllOverlapRangesBetweenRoutes:(uint64_t)routes
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(routes + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(routes + 24) / *(routes + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *routes;
      *routes = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(routes + 8) = 0;
    }
  }
}

- (uint64_t)findAllOverlapRangesBetweenRoutes:(uint64_t)routes
{
  v2 = *(routes + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *routes;
  *routes = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return routes;
}

- (id)findAllDivergenceConvergenceBetweenRoute:(id)route andRoute:(id)andRoute
{
  v69[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v8 = 0;
  v63 = andRouteCopy;
  if (routeCopy && andRouteCopy)
  {
    v9 = MNGetMNRouteDivergenceLog();
    v10 = os_signpost_id_make_with_pointer(v9, self);

    v11 = MNGetMNRouteDivergenceLog();
    v12 = v11;
    v60 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v69[0] = routeCopy;
      v69[1] = v63;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
      v14 = [(MNRouteDivergenceFinder *)self _routesArrayIdentifierStrings:v13];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "findAllDivergenceConvergenceBetweenRoute", "%@", &buf, 0xCu);
    }

    *(&buf + 1) = 0;
    v68 = 0;
    *&buf = &buf + 8;
    v62 = [(MNRouteDivergenceFinder *)self findFirstConvergenceBetweenRoute:routeCopy fromRouteCoordinate:0 andRoute:v63 fromRouteCoordinate:0];
    if ([v62 count] == 2)
    {
      v15 = [v62 objectAtIndexedSubscript:0];
      [v15 routeCoordinate];
      IsValid = GEOPolylineCoordinateIsValid();

      if (IsValid)
      {
        v17 = [v62 objectAtIndexedSubscript:0];
        routeCoordinate = [v17 routeCoordinate];
        v18 = [v62 objectAtIndexedSubscript:0];
        [v62 objectAtIndexedSubscript:1];
        *&v64[8] = *v64 = v18;
        std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::__emplace_unique_key_args<geo::PolylineCoordinate,geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>(&buf, routeCoordinate, &routeCoordinate, v64, *(&routeCoordinate + 1));
      }
    }

    v61 = [(MNRouteDivergenceFinder *)self findFirstDivergenceBetweenRoute:routeCopy fromRouteCoordinate:0 andRoute:v63 fromRouteCoordinate:0];
    if ([v61 count] == 2)
    {
      v19 = [v61 objectAtIndexedSubscript:0];
      [v19 routeCoordinate];
      v20 = GEOPolylineCoordinateIsValid();

      if (v20)
      {
        v21 = [v61 objectAtIndexedSubscript:0];
        routeCoordinate2 = [v21 routeCoordinate];
        routeCoordinate = routeCoordinate2;
        v23 = [v61 objectAtIndexedSubscript:0];
        v24 = [v61 objectAtIndexedSubscript:1];
        *v64 = v23;
        *&v64[8] = v24;
        std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::__emplace_unique_key_args<geo::PolylineCoordinate,geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>(&buf, routeCoordinate2, &routeCoordinate, v64, *(&routeCoordinate2 + 1));
      }
    }

    if (v68)
    {
      v25 = *(&buf + 1);
      if (*(&buf + 1))
      {
        do
        {
          v26 = v25;
          v25 = v25[1];
        }

        while (v25);
      }

      else
      {
        v29 = &buf + 1;
        do
        {
          v26 = v29[2];
          v30 = *v26 == v29;
          v29 = v26;
        }

        while (v30);
      }

      while (1)
      {
        v44 = v26[5];
        v45 = v26[6];
        v46 = [routeCopy routeCoordinateForDistance:objc_msgSend(v44 afterRouteCoordinate:{"routeCoordinate"), self->_distancePaddingWhenAlternating}];
        v47 = [v63 routeCoordinateForDistance:objc_msgSend(v45 afterRouteCoordinate:{"routeCoordinate"), self->_distancePaddingWhenAlternating}];
        endRouteCoordinate = [routeCopy endRouteCoordinate];
        if (v46 > endRouteCoordinate || v46 == endRouteCoordinate && *(&v46 + 1) >= *(&endRouteCoordinate + 1))
        {
          break;
        }

        endRouteCoordinate2 = [v63 endRouteCoordinate];
        if (v47 > endRouteCoordinate2 || v47 == endRouteCoordinate2 && *(&v47 + 1) >= *(&endRouteCoordinate2 + 1))
        {
          break;
        }

        resultType = [v44 resultType];
        if (resultType == 1)
        {
          [(MNRouteDivergenceFinder *)self findFirstConvergenceBetweenRoute:routeCopy fromRouteCoordinate:v46 andRoute:v63 fromRouteCoordinate:v47];
        }

        else
        {
          [(MNRouteDivergenceFinder *)self findFirstDivergenceBetweenRoute:routeCopy fromRouteCoordinate:v46 andRoute:v63 fromRouteCoordinate:v47];
        }
        v33 = ;
        if ([v33 count] != 2)
        {
          goto LABEL_43;
        }

        v34 = [v33 objectAtIndexedSubscript:0];
        [v34 routeCoordinate];
        if (GEOPolylineCoordinateIsInvalid())
        {
          goto LABEL_42;
        }

        v35 = [v33 objectAtIndexedSubscript:1];
        [v35 routeCoordinate];
        IsInvalid = GEOPolylineCoordinateIsInvalid();

        if (IsInvalid)
        {
          goto LABEL_43;
        }

        if (resultType == 1)
        {
          v37 = 2;
        }

        else
        {
          v37 = 1;
        }

        v34 = [v33 objectAtIndexedSubscript:0];
        if ([v34 resultType] != v37)
        {
LABEL_42:

LABEL_43:
          break;
        }

        v38 = [v33 objectAtIndexedSubscript:1];
        v39 = [v38 resultType] == v37;

        if (!v39)
        {
          goto LABEL_43;
        }

        v40 = [v33 objectAtIndexedSubscript:0];
        routeCoordinate3 = [v40 routeCoordinate];
        routeCoordinate = routeCoordinate3;
        v42 = [v33 objectAtIndexedSubscript:0];
        v43 = [v33 objectAtIndexedSubscript:1];
        *v64 = v42;
        *&v64[8] = v43;
        v26 = std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::__emplace_unique_key_args<geo::PolylineCoordinate,geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>(&buf, routeCoordinate3, &routeCoordinate, v64, *(&routeCoordinate3 + 1));
      }

      v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:v68];
      v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:v68];
      v50 = buf;
      if (buf != (&buf + 8))
      {
        do
        {
          [v28 addObject:v50[5]];
          [v49 addObject:v50[6]];
          v51 = v50[1];
          if (v51)
          {
            do
            {
              v52 = v51;
              v51 = *v51;
            }

            while (v51);
          }

          else
          {
            do
            {
              v52 = v50[2];
              v30 = *v52 == v50;
              v50 = v52;
            }

            while (!v30);
          }

          v50 = v52;
        }

        while (v52 != (&buf + 8));
      }

      v53 = objc_alloc_init(MNRouteDivergenceResults);
      uniqueRouteID = [routeCopy uniqueRouteID];
      [(MNRouteDivergenceResults *)v53 setRouteID:uniqueRouteID];

      [(MNRouteDivergenceResults *)v53 setResults:v28];
      v55 = objc_alloc_init(MNRouteDivergenceResults);
      uniqueRouteID2 = [v63 uniqueRouteID];
      [(MNRouteDivergenceResults *)v55 setRouteID:uniqueRouteID2];

      [(MNRouteDivergenceResults *)v55 setResults:v49];
      v57 = MNGetMNRouteDivergenceLog();
      v58 = v57;
      if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
      {
        *v64 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v58, OS_SIGNPOST_INTERVAL_END, v10, "findAllDivergenceConvergenceBetweenRoute", "", v64, 2u);
      }

      v66[0] = v53;
      v66[1] = v55;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    }

    else
    {
      v27 = MNGetMNRouteDivergenceLog();
      v28 = v27;
      if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *v64 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v28, OS_SIGNPOST_INTERVAL_END, v10, "findAllDivergenceConvergenceBetweenRoute", "orderedResults empty", v64, 2u);
      }

      v8 = 0;
    }

    std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(*(&buf + 1));
  }

  return v8;
}

- (id)findFirstUniqueRangeBetweenRoute:(id)route andRoute:(id)andRoute
{
  v29[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v8 = andRouteCopy;
  v9 = 0;
  if (routeCopy && andRouteCopy)
  {
    v10 = objc_alloc_init(MNRouteOverlapResult);
    uniqueRouteID = [routeCopy uniqueRouteID];
    [(MNRouteOverlapResult *)v10 setRouteID:uniqueRouteID];

    -[MNRouteOverlapResult setRouteRange:](v10, "setRouteRange:", 0, [routeCopy endRouteCoordinate]);
    v12 = objc_alloc_init(MNRouteOverlapResult);
    uniqueRouteID2 = [v8 uniqueRouteID];
    [(MNRouteOverlapResult *)v12 setRouteID:uniqueRouteID2];

    -[MNRouteOverlapResult setRouteRange:](v12, "setRouteRange:", 0, [v8 endRouteCoordinate]);
    v29[0] = v10;
    v29[1] = v12;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v14 = [(MNRouteDivergenceFinder *)self findFirstDivergenceBetweenRoute:routeCopy andRoute:v8];
    v15 = [v14 objectAtIndexedSubscript:0];
    routeCoordinate = [v15 routeCoordinate];

    v17 = [v14 objectAtIndexedSubscript:1];
    routeCoordinate2 = [v17 routeCoordinate];

    if ((GEOPolylineCoordinateIsInvalid() & 1) == 0 && (GEOPolylineCoordinateIsInvalid() & 1) == 0)
    {
      v27 = -[MNRouteDivergenceFinder findFirstConvergenceBetweenRoute:fromRouteCoordinate:andRoute:fromRouteCoordinate:](self, "findFirstConvergenceBetweenRoute:fromRouteCoordinate:andRoute:fromRouteCoordinate:", routeCopy, [routeCopy routeCoordinateForDistance:routeCoordinate afterRouteCoordinate:self->_distancePaddingWhenAlternating], v8, objc_msgSend(v8, "routeCoordinateForDistance:afterRouteCoordinate:", routeCoordinate2, self->_distancePaddingWhenAlternating));
      v19 = [v27 objectAtIndexedSubscript:0];
      routeCoordinate3 = [v19 routeCoordinate];

      v21 = [v27 objectAtIndexedSubscript:1];
      routeCoordinate4 = [v21 routeCoordinate];

      if ((GEOPolylineCoordinateIsInvalid() & 1) != 0 || GEOPolylineCoordinateIsInvalid())
      {
        routeCoordinate3 = [routeCopy endRouteCoordinate];
        routeCoordinate4 = [v8 endRouteCoordinate];
      }

      v22 = objc_alloc_init(MEMORY[0x1E69A23A8]);
      [(MNRouteOverlapResult *)v10 setUniqueRanges:v22];

      uniqueRanges = [(MNRouteOverlapResult *)v10 uniqueRanges];
      [uniqueRanges addCoordinateRange:{routeCoordinate, routeCoordinate3}];

      v24 = objc_alloc_init(MEMORY[0x1E69A23A8]);
      [(MNRouteOverlapResult *)v12 setUniqueRanges:v24];

      uniqueRanges2 = [(MNRouteOverlapResult *)v12 uniqueRanges];
      [uniqueRanges2 addCoordinateRange:{routeCoordinate2, routeCoordinate4}];
    }
  }

  return v9;
}

- (id)findFirstConvergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate
{
  v23[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v12 = andRouteCopy;
  v13 = 0;
  if (routeCopy && andRouteCopy)
  {
    v21 = 0xBF80000000000000;
    v22 = 0xBF80000000000000;
    [(MNRouteDivergenceFinder *)self _findFirstConvergenceBetweenRoute:routeCopy fromRouteCoordinate:coordinate andRoute:andRouteCopy fromRouteCoordinate:routeCoordinate outRouteCoordinate:&v22 outRouteCoordinate:&v21];
    v14 = objc_alloc_init(MNRouteDivergenceResult);
    uniqueRouteID = [routeCopy uniqueRouteID];
    [(MNRouteDivergenceResult *)v14 setRouteID:uniqueRouteID];

    [(MNRouteDivergenceResult *)v14 setRouteCoordinate:v22];
    [routeCopy pointAtRouteCoordinate:v22];
    [(MNRouteDivergenceResult *)v14 setLocationCoordinate:?];
    if (GEOPolylineCoordinateIsValid())
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    [(MNRouteDivergenceResult *)v14 setResultType:v16];
    v17 = objc_alloc_init(MNRouteDivergenceResult);
    uniqueRouteID2 = [v12 uniqueRouteID];
    [(MNRouteDivergenceResult *)v17 setRouteID:uniqueRouteID2];

    [(MNRouteDivergenceResult *)v17 setRouteCoordinate:v21];
    [v12 pointAtRouteCoordinate:v21];
    [(MNRouteDivergenceResult *)v17 setLocationCoordinate:?];
    if (GEOPolylineCoordinateIsValid())
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    [(MNRouteDivergenceResult *)v17 setResultType:v19];
    v23[0] = v14;
    v23[1] = v17;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  }

  return v13;
}

- (id)findFirstDivergenceBetweenRoute:(id)route fromRouteCoordinate:(PolylineCoordinate)coordinate andRoute:(id)andRoute fromRouteCoordinate:(PolylineCoordinate)routeCoordinate
{
  v21[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  andRouteCopy = andRoute;
  v12 = andRouteCopy;
  v13 = 0;
  if (routeCopy && andRouteCopy)
  {
    v19 = 0xBF80000000000000;
    v20 = 0xBF80000000000000;
    -[MNRouteDivergenceFinder _findFirstDivergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:](self, "_findFirstDivergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:", routeCopy, coordinate, [routeCopy endRouteCoordinate], andRouteCopy, routeCoordinate, objc_msgSend(andRouteCopy, "endRouteCoordinate"), &v20, &v19);
    v14 = objc_alloc_init(MNRouteDivergenceResult);
    uniqueRouteID = [routeCopy uniqueRouteID];
    [(MNRouteDivergenceResult *)v14 setRouteID:uniqueRouteID];

    [(MNRouteDivergenceResult *)v14 setRouteCoordinate:v20];
    [routeCopy pointAtRouteCoordinate:v20];
    [(MNRouteDivergenceResult *)v14 setLocationCoordinate:?];
    [(MNRouteDivergenceResult *)v14 setResultType:GEOPolylineCoordinateIsValid()];
    v16 = objc_alloc_init(MNRouteDivergenceResult);
    uniqueRouteID2 = [v12 uniqueRouteID];
    [(MNRouteDivergenceResult *)v16 setRouteID:uniqueRouteID2];

    [(MNRouteDivergenceResult *)v16 setRouteCoordinate:v19];
    [v12 pointAtRouteCoordinate:v19];
    [(MNRouteDivergenceResult *)v16 setLocationCoordinate:?];
    [(MNRouteDivergenceResult *)v16 setResultType:GEOPolylineCoordinateIsValid()];
    v21[0] = v14;
    v21[1] = v16;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  }

  return v13;
}

- (id)findFirstConvergenceBetweenRoute:(id)route andRoute:(id)andRoute
{
  v4 = [(MNRouteDivergenceFinder *)self findFirstConvergenceBetweenRoute:route fromRouteCoordinate:0 andRoute:andRoute fromRouteCoordinate:0];

  return v4;
}

- (id)findFirstDivergenceBetweenRoute:(id)route andRoute:(id)andRoute
{
  v4 = [(MNRouteDivergenceFinder *)self findFirstDivergenceBetweenRoute:route fromRouteCoordinate:0 andRoute:andRoute fromRouteCoordinate:0];

  return v4;
}

@end