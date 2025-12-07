@interface IDSGroupSessionKeyValueDeliveryHandlerProxy
- (IDSGroupSessionKeyValueDeliveryHandler)handler;
- (IDSGroupSessionKeyValueDeliveryHandlerProxy)initWithHandler:(id)handler;
- (void)handleGroupSessionKeyValues:(id)values;
@end

@implementation IDSGroupSessionKeyValueDeliveryHandlerProxy

- (IDSGroupSessionKeyValueDeliveryHandlerProxy)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = IDSGroupSessionKeyValueDeliveryHandlerProxy;
  v5 = [(IDSGroupSessionKeyValueDeliveryHandlerProxy *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handler, handlerCopy);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    handlerUUID = v6->_handlerUUID;
    v6->_handlerUUID = uUID;
  }

  return v6;
}

- (void)handleGroupSessionKeyValues:(id)values
{
  v49 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  groupSessionKeyValueDelivery = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
  v6 = groupSessionKeyValueDelivery;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(groupSessionKeyValueDelivery, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = valuesCopy;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "handleGroupSessionKeyValues: received dictionary %@", buf, 0xCu);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = valuesCopy;
    v7 = [v6 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v7)
    {
      v8 = v7;
      v26 = valuesCopy;
      v9 = *v38;
      v27 = *v38;
      v28 = v6;
      do
      {
        v10 = 0;
        v29 = v8;
        do
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v37 + 1) + 8 * v10);
          v12 = [v6 objectForKeyedSubscript:v11];
          objc_opt_class();
          v31 = v12;
          LOBYTE(v12) = objc_opt_isKindOfClass();
          groupSessionKeyValueDelivery2 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
          v14 = groupSessionKeyValueDelivery2;
          if (v12)
          {
            v30 = v10;
            if (os_log_type_enabled(groupSessionKeyValueDelivery2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = v11;
              _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "handleGroupSessionKeyValues: key %@", buf, 0xCu);
            }

            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v14 = v31;
            v15 = [v14 countByEnumeratingWithState:&v33 objects:v47 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v34;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v34 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v33 + 1) + 8 * i);
                  objc_opt_class();
                  v20 = objc_opt_isKindOfClass();
                  groupSessionKeyValueDelivery3 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
                  v22 = groupSessionKeyValueDelivery3;
                  if (v20)
                  {
                    if (os_log_type_enabled(groupSessionKeyValueDelivery3, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v42 = v11;
                      v43 = 2112;
                      v44 = v19;
                      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "handleGroupSessionKeyValues: key:%@ participantID:%@", buf, 0x16u);
                    }

                    v22 = [v14 objectForKeyedSubscript:v19];
                    objc_opt_class();
                    v23 = objc_opt_isKindOfClass();
                    groupSessionKeyValueDelivery4 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
                    WeakRetained = groupSessionKeyValueDelivery4;
                    if (v23)
                    {
                      if (os_log_type_enabled(groupSessionKeyValueDelivery4, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412802;
                        v42 = v11;
                        v43 = 2112;
                        v44 = v19;
                        v45 = 2112;
                        v46 = v22;
                        _os_log_impl(&dword_1959FF000, WeakRetained, OS_LOG_TYPE_DEFAULT, "handleGroupSessionKeyValues: key:%@ participantID:%@ data:%@", buf, 0x20u);
                      }

                      WeakRetained = objc_loadWeakRetained(&self->_handler);
                      -[NSObject handleGroupSessionValue:forKey:participant:](WeakRetained, "handleGroupSessionValue:forKey:participant:", v22, [v11 intValue], objc_msgSend(v19, "unsignedLongLongValue"));
                    }

                    else if (os_log_type_enabled(groupSessionKeyValueDelivery4, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      v42 = v11;
                      v43 = 2112;
                      v44 = v19;
                      v45 = 2112;
                      v46 = v22;
                      _os_log_error_impl(&dword_1959FF000, WeakRetained, OS_LOG_TYPE_ERROR, "handleGroupSessionKeyValues: invalid value for key:%@ participantID:%@ value:%@", buf, 0x20u);
                    }
                  }

                  else if (os_log_type_enabled(groupSessionKeyValueDelivery3, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v42 = v11;
                    v43 = 2112;
                    v44 = v19;
                    _os_log_error_impl(&dword_1959FF000, v22, OS_LOG_TYPE_ERROR, "handleGroupSessionKeyValues: invalid participantID for key:%@ participantID:%@", buf, 0x16u);
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v33 objects:v47 count:16];
              }

              while (v16);
              v9 = v27;
              v6 = v28;
              v8 = v29;
            }

            v10 = v30;
          }

          else if (os_log_type_enabled(groupSessionKeyValueDelivery2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v42 = v11;
            v43 = 2112;
            v44 = v31;
            _os_log_error_impl(&dword_1959FF000, v14, OS_LOG_TYPE_ERROR, "handleGroupSessionKeyValues: remoteParticipantIDToData is not a dictionary for key:%@ data: %@", buf, 0x16u);
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [v6 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v8);
      valuesCopy = v26;
    }
  }

  else if (os_log_type_enabled(groupSessionKeyValueDelivery, OS_LOG_TYPE_ERROR))
  {
    sub_195B3D380(valuesCopy, v6);
  }
}

- (IDSGroupSessionKeyValueDeliveryHandler)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

@end