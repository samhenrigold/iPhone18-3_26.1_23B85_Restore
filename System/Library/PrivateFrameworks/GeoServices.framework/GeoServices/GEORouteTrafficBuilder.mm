@interface GEORouteTrafficBuilder
- (GEORouteTrafficBuilder)init;
- (id)trafficColors;
- (id)trafficOffsets;
- (void)_removeDuplicateTraffic;
@end

@implementation GEORouteTrafficBuilder

- (GEORouteTrafficBuilder)init
{
  v10.receiver = self;
  v10.super_class = GEORouteTrafficBuilder;
  v2 = [(GEORouteTrafficBuilder *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_trafficDistance = 0.0;
    array = [MEMORY[0x1E695DF70] array];
    trafficColors = v3->_trafficColors;
    v3->_trafficColors = array;

    array2 = [MEMORY[0x1E695DF70] array];
    trafficOffsets = v3->_trafficOffsets;
    v3->_trafficOffsets = array2;

    v8 = v3;
  }

  return v3;
}

- (id)trafficColors
{
  [(GEORouteTrafficBuilder *)self _removeDuplicateTraffic];
  v3 = [(NSMutableArray *)self->_trafficColors copy];

  return v3;
}

- (void)_removeDuplicateTraffic
{
  v3 = [(NSMutableArray *)self->_trafficOffsets count];
  if (v3 >= 2)
  {
    v4 = v3;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v5 = 0;
    for (i = 1; i != v4; ++i)
    {
      v7 = [(NSMutableArray *)self->_trafficColors objectAtIndexedSubscript:i];
      unsignedIntegerValue = [v7 unsignedIntegerValue];

      v9 = [(NSMutableArray *)self->_trafficColors objectAtIndexedSubscript:v5];
      unsignedIntegerValue2 = [v9 unsignedIntegerValue];

      v11 = i;
      if (unsignedIntegerValue == unsignedIntegerValue2)
      {
        [indexSet addIndex:i];
        v11 = v5;
      }

      v5 = v11;
    }

    [(NSMutableArray *)self->_trafficColors removeObjectsAtIndexes:indexSet];
    [(NSMutableArray *)self->_trafficOffsets removeObjectsAtIndexes:indexSet];
  }
}

- (id)trafficOffsets
{
  [(GEORouteTrafficBuilder *)self _removeDuplicateTraffic];
  v3 = [(NSMutableArray *)self->_trafficOffsets copy];

  return v3;
}

@end