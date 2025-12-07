@interface MTRScenesManagementClusterGetSceneMembershipResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRScenesManagementClusterGetSceneMembershipResponseParams)init;
- (MTRScenesManagementClusterGetSceneMembershipResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRScenesManagementClusterGetSceneMembershipResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterGetSceneMembershipResponseParams

- (MTRScenesManagementClusterGetSceneMembershipResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRScenesManagementClusterGetSceneMembershipResponseParams;
  v2 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    capacity = v3->_capacity;
    v3->_capacity = 0;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E4C8;

    sceneList = v3->_sceneList;
    v3->_sceneList = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterGetSceneMembershipResponseParams);
  status = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self status];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 setStatus:status];

  capacity = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self capacity];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 setCapacity:capacity];

  groupID = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self groupID];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 setGroupID:groupID];

  sceneList = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self sceneList];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 setSceneList:sceneList];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ capacity:%@; groupID:%@; sceneList:%@; >", v5, self->_status, self->_capacity, self->_groupID, self->_sceneList];;

  return v6;
}

- (MTRScenesManagementClusterGetSceneMembershipResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = MTRScenesManagementClusterGetSceneMembershipResponseParams;
  v7 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)&v18 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v17)
  {
    sub_2393C5AAC(v16);
    sub_2393C5ADC(v16, *(v17 + 8), *(v17 + 24));
    v8 = sub_2393C6FD0(v16, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = sub_238F270C4(&v12, v16);
      if (!v8)
      {
        v8 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v17);
LABEL_10:

  return v10;
}

- (MTRScenesManagementClusterGetSceneMembershipResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterGetSceneMembershipResponseParams;
  v4 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setStatus:v5];

  if (*(struct + 2))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 1)];
    [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setCapacity:v6];
  }

  else
  {
    [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setCapacity:0];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 2)];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setGroupID:v7];

  v9 = *(struct + 8);
  v8 = struct + 8;
  if (v9 != 1)
  {
    [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setSceneList:0];
LABEL_13:
    v15 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v10 = objc_opt_new();
  v12 = sub_238DE36B8(v8, v11);
  sub_2393C5AAC(v21);
  v19 = 0;
  v20 = 0;
  sub_2393C5BDC(v21, v12);
  while (sub_238E0D91C(&v19))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v21[72]];
    [v10 addObject:v13];
  }

  if (v19 == 33 || (v14 = v19, !v19))
  {
    [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setSceneList:v10, v19];

    goto LABEL_13;
  }

  v15 = v20;
  v16 = v19 & 0xFFFFFFFF00000000;

LABEL_14:
  v17 = v14 | v16;
  v18 = v15;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

@end