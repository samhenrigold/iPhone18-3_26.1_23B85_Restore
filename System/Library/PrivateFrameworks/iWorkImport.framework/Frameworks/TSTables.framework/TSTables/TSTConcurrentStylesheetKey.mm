@interface TSTConcurrentStylesheetKey
- (BOOL)isEqual:(id)equal;
- (TSTConcurrentStylesheetKey)initWithStyle:(id)style andPropertyMap:(id)map;
@end

@implementation TSTConcurrentStylesheetKey

- (TSTConcurrentStylesheetKey)initWithStyle:(id)style andPropertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = TSTConcurrentStylesheetKey;
  v9 = [(TSTConcurrentStylesheetKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, style);
    objc_storeStrong(&v10->_propertyMap, map);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5 && (style = self->_style, objc_msgSend_style(v5, v6, v7, v8), v11 = objc_claimAutoreleasedReturnValue(), v11, style == v11))
  {
    propertyMap = self->_propertyMap;
    v17 = objc_msgSend_propertyMap(v9, v12, v13, v14);
    isEqualToPropertyMap = objc_msgSend_isEqualToPropertyMap_(propertyMap, v18, v17, v19);
  }

  else
  {
    isEqualToPropertyMap = 0;
  }

  return isEqualToPropertyMap;
}

@end