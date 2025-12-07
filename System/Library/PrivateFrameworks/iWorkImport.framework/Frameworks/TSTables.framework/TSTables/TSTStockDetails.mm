@interface TSTStockDetails
+ (id)detailsWithSymbol:(id)symbol attribute:(int64_t)attribute;
- (BOOL)isEqualToStockDetails:(id)details;
- (TSTStockDetails)initWithSymbol:(id)symbol attribute:(int64_t)attribute;
@end

@implementation TSTStockDetails

+ (id)detailsWithSymbol:(id)symbol attribute:(int64_t)attribute
{
  symbolCopy = symbol;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithSymbol_attribute_(v6, v7, symbolCopy, attribute);

  return v8;
}

- (TSTStockDetails)initWithSymbol:(id)symbol attribute:(int64_t)attribute
{
  symbolCopy = symbol;
  v11.receiver = self;
  v11.super_class = TSTStockDetails;
  v8 = [(TSTStockDetails *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_symbol, symbol);
    v9->_attribute = attribute;
  }

  return v9;
}

- (BOOL)isEqualToStockDetails:(id)details
{
  detailsCopy = details;
  v8 = objc_msgSend_symbol(self, v5, v6, v7);
  v12 = objc_msgSend_symbol(detailsCopy, v9, v10, v11);
  if (objc_msgSend_isEqualToString_(v8, v13, v12, v14))
  {
    v18 = objc_msgSend_attribute(self, v15, v16, v17);
    v22 = v18 == objc_msgSend_attribute(detailsCopy, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end