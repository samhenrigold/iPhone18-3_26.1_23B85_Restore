@interface CLRouteBoundingBox
- (CLRouteBoundingBox)initWithCoder:(id)coder;
- (CLRouteBoundingBox)initWithMinLatitude:(double)latitude maxLatitude:(double)maxLatitude minLongitude:(double)longitude maxLongitude:(double)maxLongitude nRows:(int)rows nColumns:(int)columns;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRouteBoundingBox

- (CLRouteBoundingBox)initWithMinLatitude:(double)latitude maxLatitude:(double)maxLatitude minLongitude:(double)longitude maxLongitude:(double)maxLongitude nRows:(int)rows nColumns:(int)columns
{
  v15.receiver = self;
  v15.super_class = CLRouteBoundingBox;
  result = [(CLRouteBoundingBox *)&v15 init];
  if (result)
  {
    result->_minLatitude = latitude;
    result->_maxLatitude = maxLatitude;
    result->_minLongitude = longitude;
    result->_maxLongitude = maxLongitude;
    result->_nRows = rows;
    result->_nColumns = columns;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLRouteBoundingBox alloc];
  minLatitude = self->_minLatitude;
  maxLatitude = self->_maxLatitude;
  minLongitude = self->_minLongitude;
  maxLongitude = self->_maxLongitude;
  nRows = self->_nRows;
  nColumns = self->_nColumns;

  return objc_msgSend_initWithMinLatitude_maxLatitude_minLongitude_maxLongitude_nRows_nColumns_(v4, v5, nRows, nColumns, minLatitude, maxLatitude, minLongitude, maxLongitude);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_minLatitude(self, a2, coder, v3);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"minLatitude", v7);
  objc_msgSend_maxLatitude(self, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"maxLatitude", v12);
  objc_msgSend_minLongitude(self, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"minLongitude", v17);
  objc_msgSend_maxLongitude(self, v18, v19, v20);
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"maxLongitude", v22);
  v26 = objc_msgSend_nRows(self, v23, v24, v25);
  objc_msgSend_encodeInt_forKey_(coder, v27, v26, @"nRows");
  v32 = objc_msgSend_nColumns(self, v28, v29, v30);

  objc_msgSend_encodeInt_forKey_(coder, v31, v32, @"nColumns");
}

- (CLRouteBoundingBox)initWithCoder:(id)coder
{
  v4 = [CLRouteBoundingBox alloc];
  objc_msgSend_decodeDoubleForKey_(coder, v5, @"minLatitude", v6);
  v8 = v7;
  objc_msgSend_decodeDoubleForKey_(coder, v9, @"maxLatitude", v10);
  v12 = v11;
  objc_msgSend_decodeDoubleForKey_(coder, v13, @"minLongitude", v14);
  v16 = v15;
  objc_msgSend_decodeDoubleForKey_(coder, v17, @"maxLongitude", v18);
  v20 = v19;
  v23 = objc_msgSend_decodeIntForKey_(coder, v21, @"nRows", v22);
  v27 = objc_msgSend_decodeIntForKey_(coder, v24, @"nColumns", v25);

  return objc_msgSend_initWithMinLatitude_maxLatitude_minLongitude_maxLongitude_nRows_nColumns_(v4, v26, v23, v27, v8, v12, v16, v20);
}

@end