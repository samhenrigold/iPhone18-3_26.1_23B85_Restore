@interface CBCharacteristic
- (CBCharacteristic)initWithService:(id)service dictionary:(id)dictionary;
- (CBService)service;
- (id)description;
- (id)handleDescriptorsDiscovered:(id)discovered;
- (id)handleValueBroadcasted:(id)broadcasted;
- (id)handleValueNotifying:(id)notifying;
- (id)handleValueUpdated:(id)updated;
- (void)invalidate;
@end

@implementation CBCharacteristic

- (CBCharacteristic)initWithService:(id)service dictionary:(id)dictionary
{
  serviceCopy = service;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v9 = [CBUUID UUIDWithData:v8];
  v21.receiver = self;
  v21.super_class = CBCharacteristic;
  v10 = [(CBAttribute *)&v21 initWithUUID:v9];

  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgCharacteristicProperties"];
    v10->_properties = [v11 unsignedIntegerValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgCharacteristicHandle"];
    handle = v10->_handle;
    v10->_handle = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgCharacteristicValueHandle"];
    valueHandle = v10->_valueHandle;
    v10->_valueHandle = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgData"];
    value = v10->_value;
    v10->_value = v16;

    v10->_valueTimestamp = 0;
    peripheral = [serviceCopy peripheral];
    peripheral = v10->_peripheral;
    v10->_peripheral = peripheral;

    objc_storeWeak(&v10->_service, serviceCopy);
    v10->_isBroadcasted = 0;
    v10->_isNotifying = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(CBAttribute *)self UUID];
  properties = self->_properties;
  value = [(CBCharacteristic *)self value];
  v8 = value;
  if (self->_isNotifying)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, UUID = %@, properties = 0x%lX, value = %@, notifying = %@>", v4, self, uUID, properties, value, v9];

  return v10;
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_descriptors;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CBCharacteristic *)self setDescriptors:0];
  [(CBPeripheral *)self->_peripheral removeAttributeForHandle:self->_valueHandle];
  [(CBPeripheral *)self->_peripheral removeAttributeForHandle:self->_handle];
}

- (id)handleValueUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgData"];
  v6 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgTimestamp"];

  [(CBCharacteristic *)self setValue:v5];
  self->_valueTimestamp = [v6 unsignedLongLongValue];

  return self;
}

- (id)handleValueBroadcasted:(id)broadcasted
{
  v4 = [broadcasted objectForKeyedSubscript:@"kCBMsgArgState"];
  self->_isBroadcasted = [v4 BOOLValue];

  return self;
}

- (id)handleValueNotifying:(id)notifying
{
  v4 = [notifying objectForKeyedSubscript:@"kCBMsgArgState"];
  self->_isNotifying = [v4 BOOLValue];

  return self;
}

- (id)handleDescriptorsDiscovered:(id)discovered
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [discovered objectForKeyedSubscript:@"kCBMsgArgDescriptors"];
  selfCopy = self;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_descriptors];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v24 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v24)
  {
LABEL_25:

    v19 = [v5 copy];
    [(CBCharacteristic *)selfCopy setDescriptors:v19];

    v18 = selfCopy;
    goto LABEL_26;
  }

  v8 = *v27;
  *&v7 = 138412546;
  v21 = v7;
  v22 = v6;
  v23 = v5;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v27 != v8)
    {
      objc_enumerationMutation(v6);
    }

    v10 = *(*(&v26 + 1) + 8 * v9);
    v11 = [v10 objectForKeyedSubscript:{@"kCBMsgArgDescriptorHandle", v21}];
    v12 = [(CBPeripheral *)selfCopy->_peripheral attributeForHandle:v11];
    if (v12)
    {
      if (([v5 containsObject:v12] & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    v13 = [v10 objectForKeyedSubscript:@"kCBMsgArgUUID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v13 length] != 2 && objc_msgSend(v13, "length") != 4 && objc_msgSend(v13, "length") != 16)
    {
      break;
    }

    v12 = [[CBDescriptor alloc] initWithCharacteristic:selfCopy dictionary:v10];
    peripheral = selfCopy->_peripheral;
    handle = [(CBDescriptor *)v12 handle];
    [(CBPeripheral *)peripheral setAttribute:v12 forHandle:handle];

    v6 = v22;
    v5 = v23;
    if (([v23 containsObject:v12] & 1) == 0)
    {
LABEL_16:
      [v5 addObject:v12];
      if (CBLogInitOnce != -1)
      {
        [CBCharacteristic handleDescriptorsDiscovered:];
      }

      v16 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        *buf = v21;
        v31 = v12;
        v32 = 2112;
        v33 = selfCopy;
        _os_log_debug_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_DEBUG, "Added %@ to %@", buf, 0x16u);
      }
    }

LABEL_5:

    if (v24 == ++v9)
    {
      v24 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (!v24)
      {
        goto LABEL_25;
      }

      goto LABEL_4;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBCharacteristic handleDescriptorsDiscovered:];
  }

  v17 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [(CBCharacteristic *)v11 handleDescriptorsDiscovered:selfCopy, v17];
  }

  v6 = v22;
  v18 = 0;
  v5 = v23;
LABEL_26:

  return v18;
}

- (CBService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)handleDescriptorsDiscovered:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_1C0AC1000, log, OS_LOG_TYPE_DEBUG, "Data in %@ does not contain a valid UUID for descriptor handle = %@", &v3, 0x16u);
}

@end