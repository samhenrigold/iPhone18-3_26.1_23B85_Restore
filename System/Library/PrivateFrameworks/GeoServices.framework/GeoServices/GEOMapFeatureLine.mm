@interface GEOMapFeatureLine
- ($1AB5FA073B851C12C2339EC22442E995)coordinates3d;
- (unint64_t)coordinateCount;
@end

@implementation GEOMapFeatureLine

- (unint64_t)coordinateCount
{
  result = self->_coordinateCount;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(GEOMapFeatureLine *)self coordinates3d];
    return self->_coordinateCount;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)coordinates3d
{
  v37 = *MEMORY[0x1E69E9840];
  coordinates3d = self->_coordinates3d;
  if (!coordinates3d)
  {
    v35 = 0;
    v4 = [(GEOMapFeatureLine *)self _tilePointsForSection:0 outCount:&v35];
    v5 = v35;
    if (v35)
    {
      v34 = 0;
      v6 = [(GEOMapFeatureLine *)self _elevationsForSection:0 outCount:&v34];
      v5 = v35;
      if (v6 && v34 != v35)
      {
        v7 = GEOGetGEOMapFeatureAccessLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v34;
          *&buf[8] = 1024;
          *&buf[10] = v35;
          _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_ERROR, "Feature has elevations but elevations count (%d) does not match tile points count (%d). Ignoring elevations.", buf, 0xEu);
        }

        v6 = 0;
        v5 = v35;
      }
    }

    else
    {
      v6 = 0;
    }

    self->_coordinateCount = v5;
    self->_coordinates3d = malloc_type_malloc(24 * v5, 0x1000040504FFAC1uLL);
    _containingTile = [(GEOMapFeatureLine *)self _containingTile];
    tileKey = [_containingTile tileKey];
    v10 = *(tileKey + 1);
    v11 = *(tileKey + 5);
    v12 = *(tileKey + 9);
    v13 = *tileKey;
    buf[5] = 0;
    *&buf[1] = 0;
    *&buf[6] = v10;
    *&buf[14] = v12;
    *&buf[10] = v11;
    buf[0] = v13;
    v14 = GEOMapRectForGEOTileKey(buf);
    v32 = v15;
    v33 = v14;
    v30 = v17;
    v31 = v16;
    if (v35)
    {
      v18 = 0;
      isFlipped = self->_isFlipped;
      coordinates3d = self->_coordinates3d;
      p_var1 = &v4->var1;
      v21 = -1;
      do
      {
        v22 = v33 + *(p_var1 - 1) * v31;
        v23 = exp(((v32 + (1.0 - *p_var1) * v30) * 0.0078125 + -1048576.0) / 333772.107);
        v24 = (atan(v23) * -2.0 + 1.57079633) * 57.2957795;
        v25 = v35;
        v26 = v21 + v35;
        if (!isFlipped)
        {
          v26 = v18;
        }

        p_var0 = &coordinates3d[v26].var0;
        *p_var0 = v24;
        p_var0[1] = v22 * 0.0078125 * 0.000171661377 + -180.0;
        if (v6)
        {
          v28 = v6[v18];
        }

        else
        {
          v28 = 0.0;
        }

        coordinates3d[v26].var2 = v28;
        ++v18;
        --v21;
        p_var1 += 2;
      }

      while (v18 < v25);
    }

    else
    {
      coordinates3d = self->_coordinates3d;
    }
  }

  return coordinates3d;
}

@end