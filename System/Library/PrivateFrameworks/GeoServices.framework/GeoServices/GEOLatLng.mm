@interface GEOLatLng
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (unint64_t)hash;
@end

@implementation GEOLatLng

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(GEOLatLng *)self lat];
  v4 = v3;
  [(GEOLatLng *)self lng];
  v6 = v5;
  v7 = v4;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

- (unint64_t)hash
{
  [(GEOLatLng *)self readAll:1];
  lat = self->_lat;
  v7 = -lat;
  if (lat >= 0.0)
  {
    v7 = self->_lat;
  }

  *v3.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v11 = vbslq_s8(v10, v4, v3);
  v12 = 2654435761u * *v11.i64;
  v13 = v12 + v8;
  if (v8 <= 0.0)
  {
    v13 = 2654435761u * *v11.i64;
  }

  v14 = v12 - fabs(v8);
  if (v8 >= 0.0)
  {
    v14 = v13;
  }

  lng = self->_lng;
  if (lng < 0.0)
  {
    lng = -lng;
  }

  *v4.i64 = floor(lng + 0.5);
  v16 = (lng - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v17 = vbslq_s8(v10, v5, v4);
  v18 = 2654435761u * *v17.i64;
  v19 = v18 + v16;
  if (v16 <= 0.0)
  {
    v19 = 2654435761u * *v17.i64;
  }

  v20 = v18 - fabs(v16);
  if (v16 >= 0.0)
  {
    v20 = v19;
  }

  if (*&self->_flags)
  {
    v11.i64[0] = *&self->_elevationM;
    if (*v11.i64 < 0.0)
    {
      *v11.i64 = -*v11.i64;
    }

    *v17.i64 = floor(*v11.i64 + 0.5);
    v22 = (*v11.i64 - *v17.i64) * 1.84467441e19;
    *v11.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
    v21 = 2654435761u * *vbslq_s8(v10, v11, v17).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v21 += v22;
      }

      if ((*&self->_flags & 2) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v21 -= fabs(v22);
      if ((*&self->_flags & 2) == 0)
      {
LABEL_24:
        v23 = 0;
        return v20 ^ v14 ^ v21 ^ v23;
      }
    }
  }

  else
  {
    v21 = 0;
    if ((*&self->_flags & 2) == 0)
    {
      goto LABEL_24;
    }
  }

  v23 = 2654435761 * self->_gtLog;
  return v20 ^ v14 ^ v21 ^ v23;
}

@end