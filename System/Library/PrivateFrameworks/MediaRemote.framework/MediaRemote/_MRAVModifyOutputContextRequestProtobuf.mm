@interface _MRAVModifyOutputContextRequestProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)outputContextTypeAsString:(int)string;
- (int)StringAsOutputContextType:(id)type;
- (int)outputContextType;
- (unint64_t)hash;
- (void)addAddingOutputDeviceUID:(id)d;
- (void)addClusterAwareAddingOutputDeviceUID:(id)d;
- (void)addClusterAwareRemovingOutputDeviceUID:(id)d;
- (void)addClusterAwareSettingOutputDeviceUID:(id)d;
- (void)addRemovingOutputDeviceUID:(id)d;
- (void)addSettingOutputDeviceUID:(id)d;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRAVModifyOutputContextRequestProtobuf

- (int)outputContextType
{
  if (*&self->_has)
  {
    return self->_outputContextType;
  }

  else
  {
    return 0;
  }
}

- (id)outputContextTypeAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E76A4E00[string];
  }

  return v4;
}

- (int)StringAsOutputContextType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 0;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 4;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAddingOutputDeviceUID:(id)d
{
  dCopy = d;
  addingOutputDeviceUIDs = self->_addingOutputDeviceUIDs;
  v8 = dCopy;
  if (!addingOutputDeviceUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_addingOutputDeviceUIDs;
    self->_addingOutputDeviceUIDs = v6;

    dCopy = v8;
    addingOutputDeviceUIDs = self->_addingOutputDeviceUIDs;
  }

  [(NSMutableArray *)addingOutputDeviceUIDs addObject:dCopy];
}

- (void)addRemovingOutputDeviceUID:(id)d
{
  dCopy = d;
  removingOutputDeviceUIDs = self->_removingOutputDeviceUIDs;
  v8 = dCopy;
  if (!removingOutputDeviceUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_removingOutputDeviceUIDs;
    self->_removingOutputDeviceUIDs = v6;

    dCopy = v8;
    removingOutputDeviceUIDs = self->_removingOutputDeviceUIDs;
  }

  [(NSMutableArray *)removingOutputDeviceUIDs addObject:dCopy];
}

- (void)addSettingOutputDeviceUID:(id)d
{
  dCopy = d;
  settingOutputDeviceUIDs = self->_settingOutputDeviceUIDs;
  v8 = dCopy;
  if (!settingOutputDeviceUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_settingOutputDeviceUIDs;
    self->_settingOutputDeviceUIDs = v6;

    dCopy = v8;
    settingOutputDeviceUIDs = self->_settingOutputDeviceUIDs;
  }

  [(NSMutableArray *)settingOutputDeviceUIDs addObject:dCopy];
}

- (void)addClusterAwareAddingOutputDeviceUID:(id)d
{
  dCopy = d;
  clusterAwareAddingOutputDeviceUIDs = self->_clusterAwareAddingOutputDeviceUIDs;
  v8 = dCopy;
  if (!clusterAwareAddingOutputDeviceUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clusterAwareAddingOutputDeviceUIDs;
    self->_clusterAwareAddingOutputDeviceUIDs = v6;

    dCopy = v8;
    clusterAwareAddingOutputDeviceUIDs = self->_clusterAwareAddingOutputDeviceUIDs;
  }

  [(NSMutableArray *)clusterAwareAddingOutputDeviceUIDs addObject:dCopy];
}

- (void)addClusterAwareRemovingOutputDeviceUID:(id)d
{
  dCopy = d;
  clusterAwareRemovingOutputDeviceUIDs = self->_clusterAwareRemovingOutputDeviceUIDs;
  v8 = dCopy;
  if (!clusterAwareRemovingOutputDeviceUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clusterAwareRemovingOutputDeviceUIDs;
    self->_clusterAwareRemovingOutputDeviceUIDs = v6;

    dCopy = v8;
    clusterAwareRemovingOutputDeviceUIDs = self->_clusterAwareRemovingOutputDeviceUIDs;
  }

  [(NSMutableArray *)clusterAwareRemovingOutputDeviceUIDs addObject:dCopy];
}

- (void)addClusterAwareSettingOutputDeviceUID:(id)d
{
  dCopy = d;
  clusterAwareSettingOutputDeviceUIDs = self->_clusterAwareSettingOutputDeviceUIDs;
  v8 = dCopy;
  if (!clusterAwareSettingOutputDeviceUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clusterAwareSettingOutputDeviceUIDs;
    self->_clusterAwareSettingOutputDeviceUIDs = v6;

    dCopy = v8;
    clusterAwareSettingOutputDeviceUIDs = self->_clusterAwareSettingOutputDeviceUIDs;
  }

  [(NSMutableArray *)clusterAwareSettingOutputDeviceUIDs addObject:dCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAVModifyOutputContextRequestProtobuf;
  v4 = [(_MRAVModifyOutputContextRequestProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAVModifyOutputContextRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    outputContextType = self->_outputContextType;
    if (outputContextType >= 6)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_outputContextType];
    }

    else
    {
      v5 = off_1E76A4E00[outputContextType];
    }

    [dictionary setObject:v5 forKey:@"outputContextType"];
  }

  addingOutputDeviceUIDs = self->_addingOutputDeviceUIDs;
  if (addingOutputDeviceUIDs)
  {
    [dictionary setObject:addingOutputDeviceUIDs forKey:@"addingOutputDeviceUID"];
  }

  removingOutputDeviceUIDs = self->_removingOutputDeviceUIDs;
  if (removingOutputDeviceUIDs)
  {
    [dictionary setObject:removingOutputDeviceUIDs forKey:@"removingOutputDeviceUID"];
  }

  settingOutputDeviceUIDs = self->_settingOutputDeviceUIDs;
  if (settingOutputDeviceUIDs)
  {
    [dictionary setObject:settingOutputDeviceUIDs forKey:@"settingOutputDeviceUID"];
  }

  clusterAwareAddingOutputDeviceUIDs = self->_clusterAwareAddingOutputDeviceUIDs;
  if (clusterAwareAddingOutputDeviceUIDs)
  {
    [dictionary setObject:clusterAwareAddingOutputDeviceUIDs forKey:@"clusterAwareAddingOutputDeviceUID"];
  }

  clusterAwareRemovingOutputDeviceUIDs = self->_clusterAwareRemovingOutputDeviceUIDs;
  if (clusterAwareRemovingOutputDeviceUIDs)
  {
    [dictionary setObject:clusterAwareRemovingOutputDeviceUIDs forKey:@"clusterAwareRemovingOutputDeviceUID"];
  }

  clusterAwareSettingOutputDeviceUIDs = self->_clusterAwareSettingOutputDeviceUIDs;
  if (clusterAwareSettingOutputDeviceUIDs)
  {
    [dictionary setObject:clusterAwareSettingOutputDeviceUIDs forKey:@"clusterAwareSettingOutputDeviceUID"];
  }

  request = self->_request;
  if (request)
  {
    dictionaryRepresentation = [(_MRGroupTopologyModificationRequestProtobuf *)request dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v65 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = self->_addingOutputDeviceUIDs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v7);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = self->_removingOutputDeviceUIDs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v12);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = self->_settingOutputDeviceUIDs;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      v19 = 0;
      do
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v17);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = self->_clusterAwareAddingOutputDeviceUIDs;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      v24 = 0;
      do
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v43 objects:v61 count:16];
    }

    while (v22);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = self->_clusterAwareRemovingOutputDeviceUIDs;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v39 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteStringField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v39 objects:v60 count:16];
    }

    while (v27);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = self->_clusterAwareSettingOutputDeviceUIDs;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v35 objects:v59 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      v34 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteStringField();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v35 objects:v59 count:16];
    }

    while (v32);
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[10] = self->_outputContextType;
    *(toCopy + 72) |= 1u;
  }

  v29 = toCopy;
  if ([(_MRAVModifyOutputContextRequestProtobuf *)self addingOutputDeviceUIDsCount])
  {
    [v29 clearAddingOutputDeviceUIDs];
    addingOutputDeviceUIDsCount = [(_MRAVModifyOutputContextRequestProtobuf *)self addingOutputDeviceUIDsCount];
    if (addingOutputDeviceUIDsCount)
    {
      v6 = addingOutputDeviceUIDsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(_MRAVModifyOutputContextRequestProtobuf *)self addingOutputDeviceUIDAtIndex:i];
        [v29 addAddingOutputDeviceUID:v8];
      }
    }
  }

  if ([(_MRAVModifyOutputContextRequestProtobuf *)self removingOutputDeviceUIDsCount])
  {
    [v29 clearRemovingOutputDeviceUIDs];
    removingOutputDeviceUIDsCount = [(_MRAVModifyOutputContextRequestProtobuf *)self removingOutputDeviceUIDsCount];
    if (removingOutputDeviceUIDsCount)
    {
      v10 = removingOutputDeviceUIDsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(_MRAVModifyOutputContextRequestProtobuf *)self removingOutputDeviceUIDAtIndex:j];
        [v29 addRemovingOutputDeviceUID:v12];
      }
    }
  }

  if ([(_MRAVModifyOutputContextRequestProtobuf *)self settingOutputDeviceUIDsCount])
  {
    [v29 clearSettingOutputDeviceUIDs];
    settingOutputDeviceUIDsCount = [(_MRAVModifyOutputContextRequestProtobuf *)self settingOutputDeviceUIDsCount];
    if (settingOutputDeviceUIDsCount)
    {
      v14 = settingOutputDeviceUIDsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(_MRAVModifyOutputContextRequestProtobuf *)self settingOutputDeviceUIDAtIndex:k];
        [v29 addSettingOutputDeviceUID:v16];
      }
    }
  }

  if ([(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareAddingOutputDeviceUIDsCount])
  {
    [v29 clearClusterAwareAddingOutputDeviceUIDs];
    clusterAwareAddingOutputDeviceUIDsCount = [(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareAddingOutputDeviceUIDsCount];
    if (clusterAwareAddingOutputDeviceUIDsCount)
    {
      v18 = clusterAwareAddingOutputDeviceUIDsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareAddingOutputDeviceUIDAtIndex:m];
        [v29 addClusterAwareAddingOutputDeviceUID:v20];
      }
    }
  }

  if ([(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareRemovingOutputDeviceUIDsCount])
  {
    [v29 clearClusterAwareRemovingOutputDeviceUIDs];
    clusterAwareRemovingOutputDeviceUIDsCount = [(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareRemovingOutputDeviceUIDsCount];
    if (clusterAwareRemovingOutputDeviceUIDsCount)
    {
      v22 = clusterAwareRemovingOutputDeviceUIDsCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareRemovingOutputDeviceUIDAtIndex:n];
        [v29 addClusterAwareRemovingOutputDeviceUID:v24];
      }
    }
  }

  if ([(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareSettingOutputDeviceUIDsCount])
  {
    [v29 clearClusterAwareSettingOutputDeviceUIDs];
    clusterAwareSettingOutputDeviceUIDsCount = [(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareSettingOutputDeviceUIDsCount];
    if (clusterAwareSettingOutputDeviceUIDsCount)
    {
      v26 = clusterAwareSettingOutputDeviceUIDsCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(_MRAVModifyOutputContextRequestProtobuf *)self clusterAwareSettingOutputDeviceUIDAtIndex:ii];
        [v29 addClusterAwareSettingOutputDeviceUID:v28];
      }
    }
  }

  if (self->_request)
  {
    [v29 setRequest:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_outputContextType;
    *(v5 + 72) |= 1u;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v7 = self->_addingOutputDeviceUIDs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v67;
    do
    {
      v11 = 0;
      do
      {
        if (*v67 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v66 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addAddingOutputDeviceUID:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v9);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v13 = self->_removingOutputDeviceUIDs;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v63;
    do
    {
      v17 = 0;
      do
      {
        if (*v63 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v62 + 1) + 8 * v17) copyWithZone:zone];
        [v6 addRemovingOutputDeviceUID:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v15);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v19 = self->_settingOutputDeviceUIDs;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v58 objects:v73 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v59;
    do
    {
      v23 = 0;
      do
      {
        if (*v59 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v58 + 1) + 8 * v23) copyWithZone:zone];
        [v6 addSettingOutputDeviceUID:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v58 objects:v73 count:16];
    }

    while (v21);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v25 = self->_clusterAwareAddingOutputDeviceUIDs;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v54 objects:v72 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v55;
    do
    {
      v29 = 0;
      do
      {
        if (*v55 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v54 + 1) + 8 * v29) copyWithZone:zone];
        [v6 addClusterAwareAddingOutputDeviceUID:v30];

        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v54 objects:v72 count:16];
    }

    while (v27);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v31 = self->_clusterAwareRemovingOutputDeviceUIDs;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v50 objects:v71 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v51;
    do
    {
      v35 = 0;
      do
      {
        if (*v51 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v50 + 1) + 8 * v35) copyWithZone:zone];
        [v6 addClusterAwareRemovingOutputDeviceUID:v36];

        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v50 objects:v71 count:16];
    }

    while (v33);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = self->_clusterAwareSettingOutputDeviceUIDs;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v46 objects:v70 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v47;
    do
    {
      v41 = 0;
      do
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v46 + 1) + 8 * v41) copyWithZone:{zone, v46}];
        [v6 addClusterAwareSettingOutputDeviceUID:v42];

        ++v41;
      }

      while (v39 != v41);
      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v46 objects:v70 count:16];
    }

    while (v39);
  }

  v43 = [(_MRGroupTopologyModificationRequestProtobuf *)self->_request copyWithZone:zone];
  v44 = v6[7];
  v6[7] = v43;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_outputContextType != *(equalCopy + 10))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  addingOutputDeviceUIDs = self->_addingOutputDeviceUIDs;
  if (addingOutputDeviceUIDs | *(equalCopy + 1) && ![(NSMutableArray *)addingOutputDeviceUIDs isEqual:?])
  {
    goto LABEL_21;
  }

  removingOutputDeviceUIDs = self->_removingOutputDeviceUIDs;
  if (removingOutputDeviceUIDs | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)removingOutputDeviceUIDs isEqual:?])
    {
      goto LABEL_21;
    }
  }

  settingOutputDeviceUIDs = self->_settingOutputDeviceUIDs;
  if (settingOutputDeviceUIDs | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)settingOutputDeviceUIDs isEqual:?])
    {
      goto LABEL_21;
    }
  }

  clusterAwareAddingOutputDeviceUIDs = self->_clusterAwareAddingOutputDeviceUIDs;
  if (clusterAwareAddingOutputDeviceUIDs | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)clusterAwareAddingOutputDeviceUIDs isEqual:?])
    {
      goto LABEL_21;
    }
  }

  clusterAwareRemovingOutputDeviceUIDs = self->_clusterAwareRemovingOutputDeviceUIDs;
  if (clusterAwareRemovingOutputDeviceUIDs | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)clusterAwareRemovingOutputDeviceUIDs isEqual:?])
    {
      goto LABEL_21;
    }
  }

  clusterAwareSettingOutputDeviceUIDs = self->_clusterAwareSettingOutputDeviceUIDs;
  if (clusterAwareSettingOutputDeviceUIDs | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)clusterAwareSettingOutputDeviceUIDs isEqual:?])
    {
      goto LABEL_21;
    }
  }

  request = self->_request;
  if (request | *(equalCopy + 7))
  {
    v12 = [(_MRGroupTopologyModificationRequestProtobuf *)request isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_outputContextType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_addingOutputDeviceUIDs hash]^ v3;
  v5 = [(NSMutableArray *)self->_removingOutputDeviceUIDs hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_settingOutputDeviceUIDs hash];
  v7 = [(NSMutableArray *)self->_clusterAwareAddingOutputDeviceUIDs hash];
  v8 = v7 ^ [(NSMutableArray *)self->_clusterAwareRemovingOutputDeviceUIDs hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_clusterAwareSettingOutputDeviceUIDs hash];
  return v9 ^ [(_MRGroupTopologyModificationRequestProtobuf *)self->_request hash];
}

- (void)mergeFrom:(id)from
{
  v68 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 72))
  {
    self->_outputContextType = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = *(fromCopy + 1);
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_MRAVModifyOutputContextRequestProtobuf *)self addAddingOutputDeviceUID:*(*(&v58 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v8);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = v5[6];
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(_MRAVModifyOutputContextRequestProtobuf *)self addRemovingOutputDeviceUID:*(*(&v54 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v13);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = v5[8];
  v17 = [v16 countByEnumeratingWithState:&v50 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(_MRAVModifyOutputContextRequestProtobuf *)self addSettingOutputDeviceUID:*(*(&v50 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v50 objects:v65 count:16];
    }

    while (v18);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = v5[2];
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v64 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(_MRAVModifyOutputContextRequestProtobuf *)self addClusterAwareAddingOutputDeviceUID:*(*(&v46 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v46 objects:v64 count:16];
    }

    while (v23);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = v5[3];
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v63 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(_MRAVModifyOutputContextRequestProtobuf *)self addClusterAwareRemovingOutputDeviceUID:*(*(&v42 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v63 count:16];
    }

    while (v28);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = v5[4];
  v32 = [v31 countByEnumeratingWithState:&v38 objects:v62 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v39;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(_MRAVModifyOutputContextRequestProtobuf *)self addClusterAwareSettingOutputDeviceUID:*(*(&v38 + 1) + 8 * ii), v38];
      }

      v33 = [v31 countByEnumeratingWithState:&v38 objects:v62 count:16];
    }

    while (v33);
  }

  request = self->_request;
  v37 = v5[7];
  if (request)
  {
    if (v37)
    {
      [(_MRGroupTopologyModificationRequestProtobuf *)request mergeFrom:?];
    }
  }

  else if (v37)
  {
    [(_MRAVModifyOutputContextRequestProtobuf *)self setRequest:?];
  }
}

@end