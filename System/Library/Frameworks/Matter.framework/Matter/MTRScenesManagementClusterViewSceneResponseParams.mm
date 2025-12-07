@interface MTRScenesManagementClusterViewSceneResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRScenesManagementClusterViewSceneResponseParams)init;
- (MTRScenesManagementClusterViewSceneResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRScenesManagementClusterViewSceneResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterViewSceneResponseParams

- (MTRScenesManagementClusterViewSceneResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRScenesManagementClusterViewSceneResponseParams;
  v2 = [(MTRScenesManagementClusterViewSceneResponseParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E4C8;

    sceneID = v3->_sceneID;
    v3->_sceneID = &unk_284C3E4C8;

    transitionTime = v3->_transitionTime;
    v3->_transitionTime = 0;

    sceneName = v3->_sceneName;
    v3->_sceneName = 0;

    extensionFieldSetStructs = v3->_extensionFieldSetStructs;
    v3->_extensionFieldSetStructs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterViewSceneResponseParams);
  status = [(MTRScenesManagementClusterViewSceneResponseParams *)self status];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setStatus:status];

  groupID = [(MTRScenesManagementClusterViewSceneResponseParams *)self groupID];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setGroupID:groupID];

  sceneID = [(MTRScenesManagementClusterViewSceneResponseParams *)self sceneID];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setSceneID:sceneID];

  transitionTime = [(MTRScenesManagementClusterViewSceneResponseParams *)self transitionTime];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setTransitionTime:transitionTime];

  sceneName = [(MTRScenesManagementClusterViewSceneResponseParams *)self sceneName];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setSceneName:sceneName];

  extensionFieldSetStructs = [(MTRScenesManagementClusterViewSceneResponseParams *)self extensionFieldSetStructs];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setExtensionFieldSetStructs:extensionFieldSetStructs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ groupID:%@; sceneID:%@; transitionTime:%@; sceneName:%@; extensionFieldSetStructs:%@; >", v5, self->_status, self->_groupID, self->_sceneID, self->_transitionTime, self->_sceneName, self->_extensionFieldSetStructs];;

  return v6;
}

- (MTRScenesManagementClusterViewSceneResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v20.receiver = self;
  v20.super_class = MTRScenesManagementClusterViewSceneResponseParams;
  v7 = [(MTRScenesManagementClusterViewSceneResponseParams *)&v20 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v19)
  {
    sub_2393C5AAC(v18);
    sub_2393C5ADC(v18, *(v19 + 8), *(v19 + 24));
    v8 = sub_2393C6FD0(v18, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v8 = sub_238F26D98(v12, v18);
      if (!v8)
      {
        v8 = [(MTRScenesManagementClusterViewSceneResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v19);
LABEL_10:

  return v10;
}

- (MTRScenesManagementClusterViewSceneResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterViewSceneResponseParams;
  v4 = [(MTRScenesManagementClusterViewSceneResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRScenesManagementClusterViewSceneResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRScenesManagementClusterViewSceneResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 1)];
  [(MTRScenesManagementClusterViewSceneResponseParams *)self setGroupID:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 4)];
  [(MTRScenesManagementClusterViewSceneResponseParams *)self setSceneID:v7];

  if (*(struct + 8) == 1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(struct + 8, v8)}];
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setTransitionTime:v9];
  }

  else
  {
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setTransitionTime:0];
  }

  if (*(struct + 16) == 1)
  {
    v11 = sub_238DE36B8(struct + 16, v10);
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v11 length:v11[1] encoding:4];
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setSceneName:v12];

    sceneName = [(MTRScenesManagementClusterViewSceneResponseParams *)self sceneName];

    if (!sceneName)
    {
      v14 = 0x386700000000;
      v15 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v16 = 47;
      goto LABEL_51;
    }
  }

  else
  {
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setSceneName:0];
  }

  v18 = *(struct + 40);
  v17 = struct + 40;
  if (v18 == 1)
  {
    v19 = objc_opt_new();
    v21 = sub_238DE36B8(v17, v20);
    sub_238EA2538(v56, v21);
    while (sub_238EA1A80(v56) && sub_238EA2594(v56))
    {
      v22 = objc_opt_new();
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v57];
      [v22 setClusterID:v23];

      v24 = objc_opt_new();
      sub_238EA2634(v46, &v58);
      while (sub_238EA1A80(v46) && sub_238EA2698(v46))
      {
        v25 = objc_opt_new();
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v47];
        [v25 setAttributeID:v26];

        if (v48[0] == 1)
        {
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v48, v27)->super.isa)}];
          [v25 setValueUnsigned8:v28];
        }

        else
        {
          [v25 setValueUnsigned8:0];
        }

        if (v49[0] == 1)
        {
          v30 = [MEMORY[0x277CCABB0] numberWithChar:{SLOBYTE(sub_238DE36D8(v49, v29)->super.isa)}];
          [v25 setValueSigned8:v30];
        }

        else
        {
          [v25 setValueSigned8:0];
        }

        if (v50[0] == 1)
        {
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v50, v31)->super.isa)}];
          [v25 setValueUnsigned16:v32];
        }

        else
        {
          [v25 setValueUnsigned16:0];
        }

        if (v51[0] == 1)
        {
          v34 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v51, v33)->super.isa)}];
          [v25 setValueSigned16:v34];
        }

        else
        {
          [v25 setValueSigned16:0];
        }

        if (v52[0] == 1)
        {
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v52, v35)}];
          [v25 setValueUnsigned32:v36];
        }

        else
        {
          [v25 setValueUnsigned32:0];
        }

        if (v53[0] == 1)
        {
          v38 = [MEMORY[0x277CCABB0] numberWithInt:{*sub_238DE3698(v53, v37)}];
          [v25 setValueSigned32:v38];
        }

        else
        {
          [v25 setValueSigned32:0];
        }

        if (v54[0] == 1)
        {
          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v54, v39)}];
          [v25 setValueUnsigned64:v40];
        }

        else
        {
          [v25 setValueUnsigned64:0];
        }

        if (v55[0] == 1)
        {
          v42 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v55, v41)}];
          [v25 setValueSigned64:v42];
        }

        else
        {
          [v25 setValueSigned64:0];
        }

        [v24 addObject:v25];
      }

      if (LODWORD(v46[0]) != 33)
      {
        v43 = v46[0];
        v16 = LODWORD(v46[0]);
        if (LODWORD(v46[0]))
        {
          v15 = v46[1];

          goto LABEL_50;
        }
      }

      [v22 setAttributeValueList:v24];

      [v19 addObject:v22];
    }

    if (LODWORD(v56[0]) == 33 || (v43 = v56[0], v16 = LODWORD(v56[0]), !LODWORD(v56[0])))
    {
      [(MTRScenesManagementClusterViewSceneResponseParams *)self setExtensionFieldSetStructs:v19];

      goto LABEL_48;
    }

    v15 = v56[1];
LABEL_50:
    v14 = v43 & 0xFFFFFFFF00000000;
  }

  else
  {
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setExtensionFieldSetStructs:0];
LABEL_48:
    v15 = 0;
    v14 = 0;
    v16 = 0;
  }

LABEL_51:
  v44 = v16 | v14;
  v45 = v15;
  result.mFile = v45;
  result.mError = v44;
  result.mLine = HIDWORD(v44);
  return result;
}

@end