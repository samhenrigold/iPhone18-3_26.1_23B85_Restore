@interface TSTUidCoordsPerGroupValueTuple
- (TSKUIDStructCoord)uuidCoordForGroupTuple:(SEL)tuple runningLevel:(id)level;
- (TSTUidCoordsPerGroupValueTuple)init;
- (void)addUidCoord:(const TSKUIDStructCoord *)coord tupleForCoord:(id)forCoord atRunningLevel:(unsigned __int8)level;
@end

@implementation TSTUidCoordsPerGroupValueTuple

- (TSTUidCoordsPerGroupValueTuple)init
{
  v6.receiver = self;
  v6.super_class = TSTUidCoordsPerGroupValueTuple;
  v2 = [(TSTUidCoordsPerGroupValueTuple *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uidCoordsPerTuple = v2->_uidCoordsPerTuple;
    v2->_uidCoordsPerTuple = v3;
  }

  return v2;
}

- (void)addUidCoord:(const TSKUIDStructCoord *)coord tupleForCoord:(id)forCoord atRunningLevel:(unsigned __int8)level
{
  levelCopy = level;
  forCoordCopy = forCoord;
  if (forCoordCopy)
  {
    v13 = forCoordCopy;
    v11 = objc_msgSend_objectForKey_(self->_uidCoordsPerTuple, forCoordCopy, forCoordCopy, v9);
    if (!v11)
    {
      v11 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_uidCoordsPerTuple, v12, v11, v13);
    }

    objc_msgSend_addUidCoord_atRunningLevel_(v11, v10, coord, levelCopy);

    forCoordCopy = v13;
  }
}

- (TSKUIDStructCoord)uuidCoordForGroupTuple:(SEL)tuple runningLevel:(id)level
{
  v5 = a5;
  levelCopy = level;
  retstr->_column = 0u;
  retstr->_row = 0u;
  TSKMakeInvalidUIDStructCoord();
  if (levelCopy)
  {
    v11 = objc_msgSend_objectForKey_(self->_uidCoordsPerTuple, v9, levelCopy, v10);
    v14 = v11;
    if (v11)
    {
      objc_msgSend_uuidCoordAtRunningLevel_(v11, v12, v5, v13);
      retstr->_column = v16;
      retstr->_row = v17;
    }
  }

  return result;
}

@end