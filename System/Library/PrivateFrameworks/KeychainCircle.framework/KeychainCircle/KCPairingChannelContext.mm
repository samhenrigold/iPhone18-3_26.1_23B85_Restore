@interface KCPairingChannelContext
- (BOOL)isEqual:(id)equal;
- (KCPairingChannelContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCPairingChannelContext

- (KCPairingChannelContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = KCPairingChannelContext;
  v5 = [(KCPairingChannelContext *)&v32 init];
  if (!v5 || (([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"], v6 = objc_claimAutoreleasedReturnValue(), model = v5->_model, v5->_model = v6, model, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"modelVersion"), v8 = objc_claimAutoreleasedReturnValue(), modelVersion = v5->_modelVersion, v5->_modelVersion = v8, modelVersion, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"modelClass"), v10 = objc_claimAutoreleasedReturnValue(), modelClass = v5->_modelClass, v5->_modelClass = v10, modelClass, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"osVersion"), v12 = objc_claimAutoreleasedReturnValue(), osVersion = v5->_osVersion, v5->_osVersion = v12, osVersion, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"altDSID"), v14 = objc_claimAutoreleasedReturnValue(), altDSID = v5->_altDSID, v5->_altDSID = v14, altDSID, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"uniqueDeviceID"), v16 = objc_claimAutoreleasedReturnValue(), uniqueDeviceID = v5->_uniqueDeviceID, v5->_uniqueDeviceID = v16, uniqueDeviceID, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"uniqueClientID"), v18 = objc_claimAutoreleasedReturnValue(), uniqueClientID = v5->_uniqueClientID, v5->_uniqueClientID = v18, uniqueClientID, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"intent"), v20 = objc_claimAutoreleasedReturnValue(), intent = v5->_intent, v5->_intent = v20, intent, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"capability"), v22 = objc_claimAutoreleasedReturnValue(), capability = v5->_capability, v5->_capability = v22, capability, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"flowID"), v24 = objc_claimAutoreleasedReturnValue(), flowID = v5->_flowID, v5->_flowID = v24, flowID, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"deviceSessionID"), v26 = objc_claimAutoreleasedReturnValue(), deviceSessionID = v5->_deviceSessionID, v5->_deviceSessionID = v26, deviceSessionID, (v28 = v5->_intent) == 0) || -[NSString isEqualToString:](v28, "isEqualToString:", @"none") || -[NSString isEqualToString:](v5->_intent, "isEqualToString:", @"repair") || -[NSString isEqualToString:](v5->_intent, "isEqualToString:", @"userdriven")) && ((v29 = v5->_capability) == 0 || -[NSString isEqualToString:](v29, "isEqualToString:", @"full") || -[NSString isEqualToString:](v5->_capability, "isEqualToString:", @"limited")))
  {
    v30 = v5;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)encodeWithCoder:(id)coder
{
  model = self->_model;
  coderCopy = coder;
  [coderCopy encodeObject:model forKey:@"model"];
  [coderCopy encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [coderCopy encodeObject:self->_modelClass forKey:@"modelClass"];
  [coderCopy encodeObject:self->_osVersion forKey:@"osVersion"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
  [coderCopy encodeObject:self->_uniqueDeviceID forKey:@"uniqueDeviceID"];
  [coderCopy encodeObject:self->_uniqueClientID forKey:@"uniqueClientID"];
  [coderCopy encodeObject:self->_intent forKey:@"intent"];
  [coderCopy encodeObject:self->_capability forKey:@"capability"];
  [coderCopy encodeObject:self->_flowID forKey:@"flowID"];
  [coderCopy encodeObject:self->_deviceSessionID forKey:@"deviceSessionID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((model = self->_model, !(model | equalCopy[2])) || -[NSString isEqual:](model, "isEqual:")) && ((modelVersion = self->_modelVersion, !(modelVersion | equalCopy[3])) || -[NSString isEqual:](modelVersion, "isEqual:")) && ((modelClass = self->_modelClass, !(modelClass | equalCopy[4])) || -[NSString isEqual:](modelClass, "isEqual:")) && ((osVersion = self->_osVersion, !(osVersion | equalCopy[5])) || -[NSString isEqual:](osVersion, "isEqual:")) && ((uniqueDeviceID = self->_uniqueDeviceID, !(uniqueDeviceID | equalCopy[6])) || -[NSString isEqual:](uniqueDeviceID, "isEqual:")) && ((altDSID = self->_altDSID, !(altDSID | equalCopy[8])) || -[NSString isEqual:](altDSID, "isEqual:")) && ((uniqueClientID = self->_uniqueClientID, !(uniqueClientID | equalCopy[7])) || -[NSString isEqual:](uniqueClientID, "isEqual:")) && ((intent = self->_intent, !(intent | equalCopy[11])) || -[NSString isEqual:](intent, "isEqual:")) && ((capability = self->_capability, !(capability | equalCopy[12])) || -[NSString isEqual:](capability, "isEqual:")) && ((flowID = self->_flowID, !(flowID | equalCopy[9])) || -[NSString isEqual:](flowID, "isEqual:")))
  {
    if (self->_deviceSessionID | equalCopy[10])
    {
      v15 = [(NSString *)self->_flowID isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end