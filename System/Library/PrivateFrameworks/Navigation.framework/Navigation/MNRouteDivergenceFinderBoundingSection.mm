@interface MNRouteDivergenceFinderBoundingSection
- ($A71F62C2B947990EEEAFC21D5CFDCAFE)boundingRect;
- (BOOL)containsCoordinate:(id)coordinate;
- (GEOPolylineCoordinateRange)range;
- (id).cxx_construct;
- (id)boundsDescription;
- (id)description;
- (id)leafSectionsIntersectingSection:(id)section paddingMapPoints:(double)points;
- (id)treeDescription;
- (void)_appendDescription:(id)description indent:(unint64_t)indent;
- (void)traverseWithHandler:(id)handler;
@end

@implementation MNRouteDivergenceFinderBoundingSection

- (id).cxx_construct
{
  *(self + 5) = 0xBF80000000000000;
  *(self + 6) = 0xBF80000000000000;
  return self;
}

- ($A71F62C2B947990EEEAFC21D5CFDCAFE)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (GEOPolylineCoordinateRange)range
{
  end = self->_range.end;
  start = self->_range.start;
  result.end = end;
  result.start = start;
  return result;
}

- (void)_appendDescription:(id)description indent:(unint64_t)indent
{
  descriptionCopy = description;
  v6 = [(MNRouteDivergenceFinderBoundingSection *)self description];
  [descriptionCopy appendFormat:@"%*s%@", (2 * indent), "", v6];

  [(MNRouteDivergenceFinderBoundingSection *)self->_left _appendDescription:descriptionCopy indent:indent + 1];
  [(MNRouteDivergenceFinderBoundingSection *)self->_right _appendDescription:descriptionCopy indent:indent + 1];
}

- (id)description
{
  GEOCoordinate2DForMapPoint();
  v4 = v3;
  v6 = v5;
  GEOCoordinate2DForMapPoint();
  v8 = v7;
  v10 = v9;
  if ([(MNRouteDivergenceFinderBoundingSection *)self isLeaf])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@", leafIndex: %d", self->_leafIndex];
  }

  else
  {
    v11 = &stru_1F4EB6B70;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = GEOPolylineCoordinateRangeAsString();
  v14 = [v12 stringWithFormat:@"[%@] (%f, %f) (%f, %f) %d meters%@\n", v13, v4, v6, v8, v10, self->_length, v11];

  return v14;
}

- (id)boundsDescription
{
  GEOCoordinate2DForMapPoint();
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"%f, %f\n", v2, v3];
  GEOCoordinate2DForMapPoint();
  [v4 appendFormat:@"%f, %f\n", v5, v6];
  GEOCoordinate2DForMapPoint();
  [v4 appendFormat:@"%f, %f\n", v7, v8];
  GEOCoordinate2DForMapPoint();
  [v4 appendFormat:@"%f, %f", v9, v10];

  return v4;
}

- (id)treeDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [(MNRouteDivergenceFinderBoundingSection *)self _appendDescription:string indent:0];

  return string;
}

- (BOOL)containsCoordinate:(id)coordinate
{
  GEOMapPointForCoordinate();
  v4.n128_u64[0] = v6.n128_u64[0];
  v5.n128_u64[0] = v7.n128_u64[0];
  v6.n128_u64[0] = *&self->_boundingRect.origin.x;
  v7.n128_u64[0] = *&self->_boundingRect.origin.y;
  v8.n128_u64[0] = *&self->_boundingRect.size.width;
  v9.n128_u64[0] = *&self->_boundingRect.size.height;

  return MEMORY[0x1EEE0BB98](v6, v7, v8, v9, v4, v5);
}

- (void)traverseWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v6 = 1;
    (*(handlerCopy + 2))(handlerCopy, self, &v6);
    if (v6 == 1)
    {
      [(MNRouteDivergenceFinderBoundingSection *)self->_left traverseWithHandler:v5];
      [(MNRouteDivergenceFinderBoundingSection *)self->_right traverseWithHandler:v5];
    }
  }
}

- (id)leafSectionsIntersectingSection:(id)section paddingMapPoints:(double)points
{
  sectionCopy = section;
  [sectionCopy boundingRect];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10786;
  v18 = __Block_byref_object_dispose__10787;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__MNRouteDivergenceFinderBoundingSection_leafSectionsIntersectingSection_paddingMapPoints___block_invoke;
  v13[3] = &unk_1E842EFF0;
  *&v13[5] = v7 - points;
  *&v13[6] = v8 - points;
  *&v13[7] = v9 + points + points;
  *&v13[8] = v10 + points + points;
  v13[4] = &v14;
  [(MNRouteDivergenceFinderBoundingSection *)self traverseWithHandler:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __91__MNRouteDivergenceFinderBoundingSection_leafSectionsIntersectingSection_paddingMapPoints___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  [v9 boundingRect];
  if (GEOMapRectIntersectsRect())
  {
    if ([v9 isLeaf])
    {
      v5 = *(*(*(a1 + 32) + 8) + 40);
      if (!v5)
      {
        v6 = [MEMORY[0x1E695DF70] array];
        v7 = *(*(a1 + 32) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(*(a1 + 32) + 8) + 40);
      }

      [v5 addObject:v9];
    }
  }

  else
  {
    *a3 = 0;
  }
}

@end