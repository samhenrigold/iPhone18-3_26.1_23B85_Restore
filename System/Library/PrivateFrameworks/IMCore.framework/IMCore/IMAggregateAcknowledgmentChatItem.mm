@interface IMAggregateAcknowledgmentChatItem
- (BOOL)isEqual:(id)equal;
- (id)_initWithAcknowledgments:(id)acknowledgments;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation IMAggregateAcknowledgmentChatItem

- (id)_initWithAcknowledgments:(id)acknowledgments
{
  v46 = *MEMORY[0x1E69E9840];
  acknowledgmentsCopy = acknowledgments;
  if (![acknowledgmentsCopy count])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"acknowledgments array must be nonempty"];
    v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"acknowledgments.count > 0", "-[IMAggregateAcknowledgmentChatItem _initWithAcknowledgments:]", v6, 5592, v7];

    v9 = IMGetAssertionFailureHandler();
    if (v9)
    {
      v9(v8);
    }

    else
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFFFC();
      }
    }
  }

  lastObject = [acknowledgmentsCopy lastObject];
  _item = [lastObject _item];
  sender = [lastObject sender];
  v14 = [(IMAssociatedMessageChatItem *)self _initWithItem:_item sender:sender];

  if (v14)
  {
    v15 = [acknowledgmentsCopy copy];
    v16 = *(v14 + 21);
    *(v14 + 21) = v15;

    v34 = lastObject;
    [v14 _setParentMessageIsFromMe:{objc_msgSend(lastObject, "parentMessageIsFromMe")}];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = *(v14 + 21);
    v17 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        v20 = 0;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v37 + 1) + 8 * v20);
          associatedMessageGUID = [v14 associatedMessageGUID];
          associatedMessageGUID2 = [v21 associatedMessageGUID];
          v24 = [associatedMessageGUID isEqualToString:associatedMessageGUID2];

          if ((v24 & 1) == 0)
          {
            v25 = MEMORY[0x1E696AEC0];
            v26 = IMFileLocationTrimFileName();
            v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"all acknowledgments must have the same associated message"];
            v28 = [v25 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"[self.associatedMessageGUID isEqualToString:acknowledgment.associatedMessageGUID]", "-[IMAggregateAcknowledgmentChatItem _initWithAcknowledgments:]", v26, 5599, v27];

            v29 = IMGetAssertionFailureHandler();
            if (v29)
            {
              v29(v28);
            }

            else
            {
              warning2 = [MEMORY[0x1E69A6138] warning];
              if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v28;
                _os_log_error_impl(&dword_1A823F000, warning2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", buf, 0xCu);
              }
            }
          }

          if ([v21 isFromMe])
          {
            objc_storeStrong(v14 + 22, v21);
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v18);
    }

    *(v14 + 161) = [acknowledgmentsCopy count] > 1;
    lastObject = v34;
    *(v14 + 160) = [v34 isFromMe];
    tapback = [v34 tapback];
    v32 = *(v14 + 23);
    *(v14 + 23) = tapback;

    v36 = 0u;
    objc_msgSend_geometryDescriptor(v14);
    *&v36 = 10;
    *buf = v36;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    [v14 _setGeometryDescriptor:buf];
  }

  return v14;
}

- (unint64_t)hash
{
  lastObject = [(NSArray *)self->_acknowledgments lastObject];
  v3 = [lastObject hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self->_latestIsFromMe == *(v5 + 160) && [(IMTapback *)self->_latestTapback isEqual:v5[23]]&& self->_includesMultiple == *(v5 + 161))
    {
      v6 = [(NSArray *)self->_acknowledgments isEqual:v5[21]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  acknowledgments = self->_acknowledgments;

  return [v4 _initWithAcknowledgments:acknowledgments];
}

@end