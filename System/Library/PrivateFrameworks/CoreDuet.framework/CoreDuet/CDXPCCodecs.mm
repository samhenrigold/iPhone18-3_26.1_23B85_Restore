@interface CDXPCCodecs
@end

@implementation CDXPCCodecs

uint64_t __20___CDXPCCodecs__log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet", "CDXPCCodecs");
  v1 = _log_log;
  _log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __35___CDXPCCodecs_eventTypeWithEvent___block_invoke()
{
  v0 = eventTypeWithEvent__eventTypeByMsgType;
  eventTypeWithEvent__eventTypeByMsgType = &unk_1F05EF7E0;
}

uint64_t __43___CDXPCCodecs_supportedClassesToUnarchive__block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v21 setWithObjects:{v20, v19, v18, v17, v16, v15, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = supportedClassesToUnarchive_supportedClasses;
  supportedClassesToUnarchive_supportedClasses = v12;

  return MEMORY[0x1EEE66BB8](v12, v13);
}

@end