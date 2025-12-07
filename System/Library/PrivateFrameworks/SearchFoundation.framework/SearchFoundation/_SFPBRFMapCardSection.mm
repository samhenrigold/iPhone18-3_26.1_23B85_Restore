@interface _SFPBRFMapCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMapCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFMapCardSection)initWithFacade:(id)facade;
- (_SFPBRFMapCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnnotations:(id)annotations;
- (void)addMarkers:(id)markers;
- (void)addPolyline:(id)polyline;
- (void)setAnnotations:(id)annotations;
- (void)setMarkers:(id)markers;
- (void)setPolyline:(id)polyline;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMapCardSection

- (_SFPBRFMapCardSection)initWithFacade:(id)facade
{
  v48 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFMapCardSection *)self init];
  if (v5)
  {
    if ([facadeCopy hasSizeFormat])
    {
      -[_SFPBRFMapCardSection setSizeFormat:](v5, "setSizeFormat:", [facadeCopy sizeFormat]);
    }

    markers = [facadeCopy markers];
    if (markers)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    markers2 = [facadeCopy markers];
    v9 = [markers2 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(markers2);
          }

          v13 = [[_SFPBRFMapMarker alloc] initWithFacade:*(*(&v41 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [markers2 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v10);
    }

    [(_SFPBRFMapCardSection *)v5 setMarkers:v7];
    annotations = [facadeCopy annotations];
    if (annotations)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    annotations2 = [facadeCopy annotations];
    v17 = [annotations2 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(annotations2);
          }

          v21 = [[_SFPBRFMapAnnotation alloc] initWithFacade:*(*(&v37 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [annotations2 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v18);
    }

    [(_SFPBRFMapCardSection *)v5 setAnnotations:v15];
    polyline = [facadeCopy polyline];
    v32 = v5;
    if (polyline)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    polyline2 = [facadeCopy polyline];
    v25 = [polyline2 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(polyline2);
          }

          v29 = [[_SFPBLatLng alloc] initWithFacade:*(*(&v33 + 1) + 8 * k)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [polyline2 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v26);
    }

    v5 = v32;
    [(_SFPBRFMapCardSection *)v32 setPolylines:v23];
    if ([facadeCopy hasCameraDistance])
    {
      [facadeCopy cameraDistance];
      [(_SFPBRFMapCardSection *)v32 setCameraDistance:?];
    }

    if ([facadeCopy hasShowsUserLocation])
    {
      -[_SFPBRFMapCardSection setShowsUserLocation:](v32, "setShowsUserLocation:", [facadeCopy showsUserLocation]);
    }

    v30 = v32;
  }

  return v5;
}

- (_SFPBRFMapCardSection)initWithDictionary:(id)dictionary
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = _SFPBRFMapCardSection;
  v5 = [(_SFPBRFMapCardSection *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sizeFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFMapCardSection setSizeFormat:](v5, "setSizeFormat:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"markers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v47;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v47 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBRFMapMarker alloc] initWithDictionary:v14];
              [(_SFPBRFMapCardSection *)v5 addMarkers:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v11);
      }

      v6 = v8;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"annotations"];
    objc_opt_class();
    v37 = v16;
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v43;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v42 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[_SFPBRFMapAnnotation alloc] initWithDictionary:v22];
              [(_SFPBRFMapCardSection *)v5 addAnnotations:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v19);
      }

      v16 = v37;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"polyline"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v6;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v38 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = [[_SFPBLatLng alloc] initWithDictionary:v30];
              [(_SFPBRFMapCardSection *)v5 addPolyline:v31];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v38 objects:v51 count:16];
        }

        while (v27);
      }

      v6 = v36;
      v16 = v37;
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"cameraDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v32 doubleValue];
      [(_SFPBRFMapCardSection *)v5 setCameraDistance:?];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"showsUserLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFMapCardSection setShowsUserLocation:](v5, "setShowsUserLocation:", [v33 BOOLValue]);
    }

    v34 = v5;
  }

  return v5;
}

- (_SFPBRFMapCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMapCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMapCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v49 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_annotations count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = self->_annotations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v43;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"annotations"];
  }

  if (self->_cameraDistance != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(_SFPBRFMapCardSection *)self cameraDistance];
    v13 = [v12 numberWithDouble:?];
    [dictionary setObject:v13 forKeyedSubscript:@"cameraDistance"];
  }

  if ([(NSArray *)self->_markers count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = self->_markers;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v38 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"markers"];
  }

  if ([(NSArray *)self->_polylines count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = self->_polylines;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation3 = [*(*(&v34 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array3 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null3];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"polyline"];
  }

  if (self->_showsUserLocation)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFMapCardSection showsUserLocation](self, "showsUserLocation")}];
    [dictionary setObject:v30 forKeyedSubscript:@"showsUserLocation"];
  }

  if (self->_sizeFormat)
  {
    sizeFormat = [(_SFPBRFMapCardSection *)self sizeFormat];
    if (sizeFormat)
    {
      if (sizeFormat == 1)
      {
        v32 = @"1";
      }

      else
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sizeFormat];
      }
    }

    else
    {
      v32 = @"0";
    }

    [dictionary setObject:v32 forKeyedSubscript:@"sizeFormat"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  sizeFormat = self->_sizeFormat;
  v4 = [(NSArray *)self->_markers hash];
  v5 = [(NSArray *)self->_annotations hash];
  v6 = [(NSArray *)self->_polylines hash];
  cameraDistance = self->_cameraDistance;
  if (cameraDistance == 0.0)
  {
    v12 = 0;
  }

  else
  {
    if (cameraDistance < 0.0)
    {
      cameraDistance = -cameraDistance;
    }

    *v7.i64 = floor(cameraDistance + 0.5);
    v10 = (cameraDistance - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v8, v7).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v12 += v10;
      }
    }

    else
    {
      v12 -= fabs(v10);
    }
  }

  if (self->_showsUserLocation)
  {
    v13 = 2654435761;
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v5 ^ v6 ^ v12 ^ v13 ^ (2654435761 * sizeFormat);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  sizeFormat = self->_sizeFormat;
  if (sizeFormat != [equalCopy sizeFormat])
  {
    goto LABEL_18;
  }

  markers = [(_SFPBRFMapCardSection *)self markers];
  markers2 = [equalCopy markers];
  if ((markers != 0) == (markers2 == 0))
  {
    goto LABEL_17;
  }

  markers3 = [(_SFPBRFMapCardSection *)self markers];
  if (markers3)
  {
    v9 = markers3;
    markers4 = [(_SFPBRFMapCardSection *)self markers];
    markers5 = [equalCopy markers];
    v12 = [markers4 isEqual:markers5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  markers = [(_SFPBRFMapCardSection *)self annotations];
  markers2 = [equalCopy annotations];
  if ((markers != 0) == (markers2 == 0))
  {
    goto LABEL_17;
  }

  annotations = [(_SFPBRFMapCardSection *)self annotations];
  if (annotations)
  {
    v14 = annotations;
    annotations2 = [(_SFPBRFMapCardSection *)self annotations];
    annotations3 = [equalCopy annotations];
    v17 = [annotations2 isEqual:annotations3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  markers = [(_SFPBRFMapCardSection *)self polylines];
  markers2 = [equalCopy polylines];
  if ((markers != 0) == (markers2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  polylines = [(_SFPBRFMapCardSection *)self polylines];
  if (polylines)
  {
    v19 = polylines;
    polylines2 = [(_SFPBRFMapCardSection *)self polylines];
    polylines3 = [equalCopy polylines];
    v22 = [polylines2 isEqual:polylines3];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  cameraDistance = self->_cameraDistance;
  [equalCopy cameraDistance];
  if (cameraDistance == v26)
  {
    showsUserLocation = self->_showsUserLocation;
    v23 = showsUserLocation == [equalCopy showsUserLocation];
    goto LABEL_19;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_SFPBRFMapCardSection *)self sizeFormat])
  {
    PBDataWriterWriteInt32Field();
  }

  markers = [(_SFPBRFMapCardSection *)self markers];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [markers countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(markers);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [markers countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  annotations = [(_SFPBRFMapCardSection *)self annotations];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [annotations countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(annotations);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [annotations countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  polylines = [(_SFPBRFMapCardSection *)self polylines];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [polylines countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(polylines);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [polylines countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  [(_SFPBRFMapCardSection *)self cameraDistance];
  if (v20 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  if ([(_SFPBRFMapCardSection *)self showsUserLocation])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addPolyline:(id)polyline
{
  polylineCopy = polyline;
  polylines = self->_polylines;
  v8 = polylineCopy;
  if (!polylines)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_polylines;
    self->_polylines = array;

    polylineCopy = v8;
    polylines = self->_polylines;
  }

  [(NSArray *)polylines addObject:polylineCopy];
}

- (void)setPolyline:(id)polyline
{
  self->_polylines = [polyline copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  annotations = self->_annotations;
  v8 = annotationsCopy;
  if (!annotations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_annotations;
    self->_annotations = array;

    annotationsCopy = v8;
    annotations = self->_annotations;
  }

  [(NSArray *)annotations addObject:annotationsCopy];
}

- (void)setAnnotations:(id)annotations
{
  self->_annotations = [annotations copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addMarkers:(id)markers
{
  markersCopy = markers;
  markers = self->_markers;
  v8 = markersCopy;
  if (!markers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_markers;
    self->_markers = array;

    markersCopy = v8;
    markers = self->_markers;
  }

  [(NSArray *)markers addObject:markersCopy];
}

- (void)setMarkers:(id)markers
{
  self->_markers = [markers copy];

  MEMORY[0x1EEE66BB8]();
}

@end