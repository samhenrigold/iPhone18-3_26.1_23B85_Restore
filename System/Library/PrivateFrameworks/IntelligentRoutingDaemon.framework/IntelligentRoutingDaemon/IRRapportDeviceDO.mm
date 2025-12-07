@interface IRRapportDeviceDO
+ (IRRapportDeviceDO)rapportDeviceDOWithRapportEffectiveID:(id)d idsID:(id)iD name:(id)name deviceModel:(id)model mediaRemoteIdentifier:(id)identifier iCloudId:(id)id mediaRouteIdentifier:(id)routeIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRapportDeviceDO:(id)o;
- (IRRapportDeviceDO)initWithCoder:(id)coder;
- (IRRapportDeviceDO)initWithRapportEffectiveID:(id)d idsID:(id)iD name:(id)name deviceModel:(id)model mediaRemoteIdentifier:(id)identifier iCloudId:(id)id mediaRouteIdentifier:(id)routeIdentifier;
- (id)copyWithReplacementDeviceModel:(id)model;
- (id)copyWithReplacementICloudId:(id)id;
- (id)copyWithReplacementIdsID:(id)d;
- (id)copyWithReplacementMediaRemoteIdentifier:(id)identifier;
- (id)copyWithReplacementMediaRouteIdentifier:(id)identifier;
- (id)copyWithReplacementName:(id)name;
- (id)copyWithReplacementRapportEffectiveID:(id)d;
- (id)description;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRRapportDeviceDO

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MMM-dd HH:mm:ss.SSSSSS"];
  rapportEffectiveID = [(IRRapportDeviceDO *)self rapportEffectiveID];
  [v3 setObject:rapportEffectiveID forKeyedSubscript:@"rapportEffectiveID"];

  idsID = [(IRRapportDeviceDO *)self idsID];
  [v3 setObject:idsID forKeyedSubscript:@"idsID"];

  name = [(IRRapportDeviceDO *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  mediaRemoteIdentifier = [(IRRapportDeviceDO *)self mediaRemoteIdentifier];
  [v3 setObject:mediaRemoteIdentifier forKeyedSubscript:@"mediaRemoteIdentifier"];

  iCloudId = [(IRRapportDeviceDO *)self iCloudId];
  [v3 setObject:iCloudId forKeyedSubscript:@"iCloudId"];

  return v3;
}

- (IRRapportDeviceDO)initWithRapportEffectiveID:(id)d idsID:(id)iD name:(id)name deviceModel:(id)model mediaRemoteIdentifier:(id)identifier iCloudId:(id)id mediaRouteIdentifier:(id)routeIdentifier
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  modelCopy = model;
  identifierCopy = identifier;
  idCopy = id;
  routeIdentifierCopy = routeIdentifier;
  v26.receiver = self;
  v26.super_class = IRRapportDeviceDO;
  v18 = [(IRRapportDeviceDO *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_rapportEffectiveID, d);
    objc_storeStrong(&v19->_idsID, iD);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_deviceModel, model);
    objc_storeStrong(&v19->_mediaRemoteIdentifier, identifier);
    objc_storeStrong(&v19->_iCloudId, id);
    objc_storeStrong(&v19->_mediaRouteIdentifier, routeIdentifier);
  }

  return v19;
}

+ (IRRapportDeviceDO)rapportDeviceDOWithRapportEffectiveID:(id)d idsID:(id)iD name:(id)name deviceModel:(id)model mediaRemoteIdentifier:(id)identifier iCloudId:(id)id mediaRouteIdentifier:(id)routeIdentifier
{
  routeIdentifierCopy = routeIdentifier;
  idCopy = id;
  identifierCopy = identifier;
  modelCopy = model;
  nameCopy = name;
  iDCopy = iD;
  dCopy = d;
  v23 = [[self alloc] initWithRapportEffectiveID:dCopy idsID:iDCopy name:nameCopy deviceModel:modelCopy mediaRemoteIdentifier:identifierCopy iCloudId:idCopy mediaRouteIdentifier:routeIdentifierCopy];

  return v23;
}

- (id)copyWithReplacementRapportEffectiveID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:dCopy idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementIdsID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:dCopy name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:nameCopy deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementDeviceModel:(id)model
{
  modelCopy = model;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:modelCopy mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementMediaRemoteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:identifierCopy iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementICloudId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:idCopy mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementMediaRouteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:identifierCopy];

  return v5;
}

- (BOOL)isEqualToRapportDeviceDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy || (v6 = self->_rapportEffectiveID == 0, [oCopy rapportEffectiveID], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (rapportEffectiveID = self->_rapportEffectiveID) != 0 && (objc_msgSend(v5, "rapportEffectiveID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](rapportEffectiveID, "isEqual:", v10), v10, !v11) || (v12 = self->_idsID == 0, objc_msgSend(v5, "idsID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (idsID = self->_idsID) != 0 && (objc_msgSend(v5, "idsID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](idsID, "isEqual:", v16), v16, !v17) || (v18 = self->_name == 0, objc_msgSend(v5, "name"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (name = self->_name) != 0 && (objc_msgSend(v5, "name"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSString isEqual:](name, "isEqual:", v22), v22, !v23) || (v24 = self->_deviceModel == 0, objc_msgSend(v5, "deviceModel"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 != 0, v25, v24 == v26) || (deviceModel = self->_deviceModel) != 0 && (objc_msgSend(v5, "deviceModel"), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[NSString isEqual:](deviceModel, "isEqual:", v28), v28, !v29) || (v30 = self->_mediaRemoteIdentifier == 0, objc_msgSend(v5, "mediaRemoteIdentifier"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 != 0, v31, v30 == v32) || (mediaRemoteIdentifier = self->_mediaRemoteIdentifier) != 0 && (objc_msgSend(v5, "mediaRemoteIdentifier"), v34 = objc_claimAutoreleasedReturnValue(), v35 = -[NSString isEqual:](mediaRemoteIdentifier, "isEqual:", v34), v34, !v35) || (v36 = self->_iCloudId == 0, objc_msgSend(v5, "iCloudId"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 != 0, v37, v36 == v38) || (iCloudId = self->_iCloudId) != 0 && (objc_msgSend(v5, "iCloudId"), v40 = objc_claimAutoreleasedReturnValue(), v41 = -[NSString isEqual:](iCloudId, "isEqual:", v40), v40, !v41) || (v42 = self->_mediaRouteIdentifier == 0, objc_msgSend(v5, "mediaRouteIdentifier"), v43 = objc_claimAutoreleasedReturnValue(), v44 = v43 != 0, v43, v42 == v44))
  {
    v47 = 0;
  }

  else
  {
    mediaRouteIdentifier = self->_mediaRouteIdentifier;
    if (mediaRouteIdentifier)
    {
      mediaRouteIdentifier = [v5 mediaRouteIdentifier];
      v47 = [(NSString *)mediaRouteIdentifier isEqual:mediaRouteIdentifier];
    }

    else
    {
      v47 = 1;
    }
  }

  return v47 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRRapportDeviceDO *)self isEqualToRapportDeviceDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_rapportEffectiveID hash];
  v4 = [(NSString *)self->_idsID hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_name hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_deviceModel hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_mediaRemoteIdentifier hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_iCloudId hash]- v7 + 32 * v7;
  return [(NSString *)self->_mediaRouteIdentifier hash]- v8 + 32 * v8;
}

- (IRRapportDeviceDO)initWithCoder:(id)coder
{
  v68[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rapportEffectiveID"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key rapportEffectiveID (expected %@, decoded %@)", v7, v9, 0];
      v67 = *MEMORY[0x277CCA450];
      v68[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_4:
      selfCopy = 0;
LABEL_23:

LABEL_24:
LABEL_25:

      goto LABEL_26;
    }

LABEL_7:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsID"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key idsID (expected %@, decoded %@)", v9, v10, 0];
        v65 = *MEMORY[0x277CCA450];
        v66 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v17];
LABEL_21:
        selfCopy = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        v10 = NSStringFromClass(v19);
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key name (expected %@, decoded %@)", v10, v11, 0];
        v63 = *MEMORY[0x277CCA450];
        v64 = v12;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v17];
        [coderCopy failWithError:v21];
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = objc_opt_class();
        v11 = NSStringFromClass(v23);
        v24 = objc_opt_class();
        v12 = NSStringFromClass(v24);
        v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key deviceModel (expected %@, decoded %@)", v11, v12, 0];
        v61 = *MEMORY[0x277CCA450];
        v62 = v51;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v25 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v21];
        [coderCopy failWithError:v25];

        v17 = v51;
        goto LABEL_20;
      }
    }

    else
    {
      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
        goto LABEL_25;
      }
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaRemoteIdentifier"];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = objc_opt_class();
        v12 = NSStringFromClass(v28);
        v29 = objc_opt_class();
        v52 = NSStringFromClass(v29);
        v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key mediaRemoteIdentifier (expected %@, decoded %@)", v12, v52, 0];
        v59 = *MEMORY[0x277CCA450];
        v60 = v49;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v31 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v30];
        [coderCopy failWithError:v31];

        v17 = v52;
LABEL_39:

        goto LABEL_21;
      }
    }

    else
    {
      error4 = [coderCopy error];

      if (error4)
      {
        selfCopy = 0;
        goto LABEL_24;
      }
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iCloudId"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = objc_opt_class();
        v53 = NSStringFromClass(v33);
        v34 = objc_opt_class();
        v49 = NSStringFromClass(v34);
        v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key iCloudId (expected %@, decoded %@)", v53, v49, 0];
        v57 = *MEMORY[0x277CCA450];
        v58 = v47;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v36 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v35];
        [coderCopy failWithError:v36];

        v17 = v53;
        goto LABEL_39;
      }
    }

    else
    {
      error5 = [coderCopy error];

      if (error5)
      {
        goto LABEL_4;
      }
    }

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaRouteIdentifier"];
    if (v38)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v40 = v38;
      if ((isKindOfClass & 1) == 0)
      {
        v54 = v38;
        v41 = objc_opt_class();
        v50 = NSStringFromClass(v41);
        v42 = objc_opt_class();
        v48 = NSStringFromClass(v42);
        v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key mediaRouteIdentifier (expected %@, decoded %@)", v50, v48, 0];
        v55 = *MEMORY[0x277CCA450];
        v56 = v46;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v44 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v43];
        [coderCopy failWithError:v44];

        selfCopy = 0;
        v17 = v54;
        goto LABEL_22;
      }
    }

    else
    {
      error6 = [coderCopy error];

      v40 = 0;
      if (error6)
      {
        selfCopy = 0;
        v17 = 0;
        goto LABEL_22;
      }
    }

    v17 = v40;
    self = [(IRRapportDeviceDO *)self initWithRapportEffectiveID:v5 idsID:v7 name:v9 deviceModel:v10 mediaRemoteIdentifier:v11 iCloudId:v12 mediaRouteIdentifier:v40];
    selfCopy = self;
    goto LABEL_22;
  }

  error7 = [coderCopy error];

  if (!error7)
  {
    goto LABEL_7;
  }

  selfCopy = 0;
LABEL_28:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rapportEffectiveID = self->_rapportEffectiveID;
  v12 = coderCopy;
  if (rapportEffectiveID)
  {
    [coderCopy encodeObject:rapportEffectiveID forKey:@"rapportEffectiveID"];
    coderCopy = v12;
  }

  idsID = self->_idsID;
  if (idsID)
  {
    [v12 encodeObject:idsID forKey:@"idsID"];
    coderCopy = v12;
  }

  name = self->_name;
  if (name)
  {
    [v12 encodeObject:name forKey:@"name"];
    coderCopy = v12;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v12 encodeObject:deviceModel forKey:@"deviceModel"];
    coderCopy = v12;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    [v12 encodeObject:mediaRemoteIdentifier forKey:@"mediaRemoteIdentifier"];
    coderCopy = v12;
  }

  iCloudId = self->_iCloudId;
  if (iCloudId)
  {
    [v12 encodeObject:iCloudId forKey:@"iCloudId"];
    coderCopy = v12;
  }

  mediaRouteIdentifier = self->_mediaRouteIdentifier;
  if (mediaRouteIdentifier)
  {
    [v12 encodeObject:mediaRouteIdentifier forKey:@"mediaRouteIdentifier"];
    coderCopy = v12;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRRapportDeviceDO | rapportEffectiveID:%@ idsID:%@ name:%@ deviceModel:%@ mediaRemoteIdentifier:%@ iCloudId:%@ mediaRouteIdentifier:%@>", self->_rapportEffectiveID, self->_idsID, self->_name, self->_deviceModel, self->_mediaRemoteIdentifier, self->_iCloudId, self->_mediaRouteIdentifier];

  return v2;
}

@end