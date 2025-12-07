@interface PSSystemGraphMessageDeserializer
+ (void)deserializeProducedStridesWillChangeMessage:(id)message completion:(id)completion;
+ (void)deserializeProducibleStridesHaveChangedToMessage:(id)message completion:(id)completion;
@end

@implementation PSSystemGraphMessageDeserializer

+ (void)deserializeProducibleStridesHaveChangedToMessage:(id)message completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAC8];
  completionCopy = completion;
  messageCopy = message;
  [v5 setClass:objc_opt_class() forClassName:@"PSExecutionSessionResourceWithStridesImpl"];
  v8 = xpc_dictionary_get_value(messageCopy, "producible_strides");

  if (v8 && (v9 = MEMORY[0x25F8C9F10](v8), v9 == MEMORY[0x277D86458]))
  {
    v13 = MEMORY[0x277CBEA90];
    bytes_ptr = xpc_data_get_bytes_ptr(v8);
    v11 = [v13 dataWithBytes:bytes_ptr length:xpc_data_get_length(v8)];
    v15 = MEMORY[0x277CCAAC8];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    v27 = 0;
    v12 = [v15 unarchivedObjectOfClasses:v20 fromData:v11 error:&v27];
    v21 = v27;

    if (v21)
    {
      v24 = __PSSGLogSharedInstance(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v21 localizedDescription];
        v26 = [localizedDescription cStringUsingEncoding:134217984];
        *buf = 136315138;
        v29 = v26;
        _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "Error decoding producible strides: %s", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v11 = __PSSGLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "Error getting produced strides from PSSG XPC message.", buf, 2u);
    }

    v12 = 0;
  }

  completionCopy[2](completionCopy, v12);
}

+ (void)deserializeProducedStridesWillChangeMessage:(id)message completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = MEMORY[0x277CCAAC8];
  completionCopy = completion;
  [v6 setClass:objc_opt_class() forClassName:@"PSExecutionSessionResourceWithStrideImpl"];
  v8 = xpc_dictionary_get_value(messageCopy, "produced_strides");
  v10 = v8;
  if (v8 && (v8 = MEMORY[0x25F8C9F10](v8), v8 == MEMORY[0x277D86458]))
  {
    v13 = MEMORY[0x277CBEA90];
    bytes_ptr = xpc_data_get_bytes_ptr(v10);
    v11 = [v13 dataWithBytes:bytes_ptr length:xpc_data_get_length(v10)];
    v15 = MEMORY[0x277CCAAC8];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    v32 = 0;
    v12 = [v15 unarchivedObjectOfClasses:v20 fromData:v11 error:&v32];
    v21 = v32;

    if (v21)
    {
      v24 = __PSSGLogSharedInstance(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v21 localizedDescription];
        v26 = [localizedDescription cStringUsingEncoding:134217984];
        *buf = 136315138;
        v34 = v26;
        _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "Error decoding produced strides: %s", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v11 = __PSSGLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "Error getting produced strides from PSSG XPC message.", buf, 2u);
    }

    v12 = 0;
  }

  uint64 = xpc_dictionary_get_uint64(messageCopy, "produced_strides_frameid");
  if (!uint64)
  {
    v29 = __PSSGLogSharedInstance(0, v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_ERROR, "Error getting produced strides frameID from PSSG XPC message.", buf, 2u);
    }
  }

  v30 = xpc_dictionary_get_BOOL(messageCopy, "produced_strides_is_physical_frameid");
  v31 = xpc_dictionary_get_uint64(messageCopy, "produced_strides_MSG_sync_id");
  completionCopy[2](completionCopy, v12, uint64, v30, v31);
}

@end