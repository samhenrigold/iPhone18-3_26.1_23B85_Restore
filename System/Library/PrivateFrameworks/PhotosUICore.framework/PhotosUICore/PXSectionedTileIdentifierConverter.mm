@interface PXSectionedTileIdentifierConverter
- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)identifier;
- (BOOL)transformTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group;
- (PXSectionedTileIdentifierConverter)initWithFromDataSource:(id)source toDataSource:(id)dataSource changeDetails:(id)details;
@end

@implementation PXSectionedTileIdentifierConverter

- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)identifier
{
  length = identifier->length;
  v3 = identifier->index[0];
  v5 = identifier->index[1];
  v6 = identifier->index[4];
  v13 = *&identifier->index[5];
  v14 = *&identifier->index[7];
  v15 = identifier->index[9];
  if (identifier->length - 3 <= 1)
  {
    v11 = *&identifier->index[2];
    if (([(PXSectionedDataSource *)self->_fromDataSource isEqual:self->_toDataSource]& 1) != 0)
    {
LABEL_3:
      identifier->length = length;
      identifier->index[0] = v3;
      identifier->index[1] = v5;
      *&identifier->index[2] = v11;
      identifier->index[4] = v6;
      *&identifier->index[5] = v13;
      *&identifier->index[7] = v14;
      result = 1;
      identifier->index[9] = v15;
      return result;
    }

    lastObject = [(NSArray *)self->_changeDetails lastObject];
    if (v5 == [lastObject toDataSourceIdentifier])
    {
      memset(v12, 0, 24);
      objc_msgSend_indexPathAfterRevertingChanges_fromIndexPath_hasIncrementalChanges_objectChanged_(off_1E77218B0);
      v5 = 0;
      if (*off_1E7721F68)
      {
        v11 = *(v12 + 8);
        v6 = 0;

        goto LABEL_3;
      }
    }
  }

  return 0;
}

- (BOOL)transformTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group
{
  result = 0;
  length = identifier->length;
  v6 = identifier->index[0];
  v8 = identifier->index[1];
  v9 = identifier->index[4];
  v16 = *&identifier->index[5];
  v17 = *&identifier->index[7];
  v18 = identifier->index[9];
  if (identifier->length - 6 >= 0xFFFFFFFFFFFFFFFDLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = *&identifier->index[2];
    v12 = *group;
    if (([(PXSectionedDataSource *)self->_fromDataSource isEqual:self->_toDataSource]& 1) != 0)
    {
LABEL_4:
      identifier->length = length;
      identifier->index[0] = v6;
      identifier->index[1] = v8;
      *&identifier->index[2] = v14;
      identifier->index[4] = v9;
      *&identifier->index[5] = v16;
      *&identifier->index[7] = v17;
      identifier->index[9] = v18;
      result = 1;
      *group = v12;
      return result;
    }

    firstObject = [(NSArray *)self->_changeDetails firstObject];
    if (v8 == [firstObject fromDataSourceIdentifier])
    {
      memset(v15, 0, 24);
      objc_msgSend_indexPathAfterApplyingChanges_toIndexPath_hasIncrementalChanges_objectChanged_(off_1E77218B0);
      v8 = 0;
      if (*off_1E7721F68)
      {
        v14 = *(v15 + 8);
        v9 = 0;

        goto LABEL_4;
      }
    }

    return 0;
  }

  return result;
}

- (PXSectionedTileIdentifierConverter)initWithFromDataSource:(id)source toDataSource:(id)dataSource changeDetails:(id)details
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  detailsCopy = details;
  v15.receiver = self;
  v15.super_class = PXSectionedTileIdentifierConverter;
  v12 = [(PXSectionedTileIdentifierConverter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fromDataSource, source);
    objc_storeStrong(&v13->_toDataSource, dataSource);
    objc_storeStrong(&v13->_changeDetails, details);
  }

  return v13;
}

@end