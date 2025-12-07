@interface TSTTableSortRule
+ (id)ruleWithBaseIndex:(TSUModelColumnOrRowIndex)index direction:(int)direction;
- (BOOL)isEqual:(id)equal;
- (TSTTableSortRule)initWithBaseIndex:(TSUModelColumnOrRowIndex)index direction:(int)direction;
- (id)copyWithZone:(_NSZone *)zone;
- (id)ruleByChangingBaseIndexTo:(TSUModelColumnOrRowIndex)to;
- (id)ruleByChangingDirectionTo:(int)to;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSTTableSortRule

+ (id)ruleWithBaseIndex:(TSUModelColumnOrRowIndex)index direction:(int)direction
{
  v4 = *&direction;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithBaseIndex_direction_(v6, v7, index._index, v4);

  return v8;
}

- (TSTTableSortRule)initWithBaseIndex:(TSUModelColumnOrRowIndex)index direction:(int)direction
{
  v7.receiver = self;
  v7.super_class = TSTTableSortRule;
  result = [(TSTTableSortRule *)&v7 init];
  if (result)
  {
    result->_baseIndex = index;
    result->_direction = direction;
  }

  return result;
}

- (id)ruleByChangingBaseIndexTo:(TSUModelColumnOrRowIndex)to
{
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithBaseIndex_direction_(v5, v6, to._index, self->_direction);

  return v7;
}

- (id)ruleByChangingDirectionTo:(int)to
{
  v3 = *&to;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithBaseIndex_direction_(v5, v6, self->_baseIndex._index, v3);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  index = self->_baseIndex._index;
  direction = self->_direction;

  return objc_msgSend_initWithBaseIndex_direction_(v8, v9, index, direction);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  v13 = v5 && objc_msgSend_baseIndex(v5, v6, v7, v8) == self->_baseIndex._index && objc_msgSend_direction(v9, v10, v11, v12) == self->_direction;

  return v13;
}

- (void)encodeToArchive:(void *)archive
{
  v3 = *(archive + 4);
  *(archive + 4) = v3 | 2;
  index = self->_baseIndex._index;
  v5 = self->_direction != 0;
  *(archive + 4) = v3 | 3;
  *(archive + 6) = index;
  *(archive + 7) = v5;
}

@end