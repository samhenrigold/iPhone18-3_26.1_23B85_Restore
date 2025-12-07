@interface SGDCloudKitSyncPersistedState
@end

@implementation SGDCloudKitSyncPersistedState

void __44___SGDCloudKitSyncPersistedState_properties__block_invoke()
{
  v48[9] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = MEMORY[0x277D42648];
  v1 = objc_opt_class();
  v46 = NSStringFromClass(v1);
  v45 = NSStringFromSelector(sel_salt);
  v44 = [v0 tupleWithFirst:v46 second:v45];
  v48[0] = v44;
  v2 = MEMORY[0x277D42648];
  v3 = objc_opt_class();
  v43 = NSStringFromClass(v3);
  v42 = NSStringFromSelector(sel_saltAtomicReferenceId);
  v41 = [v2 tupleWithFirst:v43 second:v42];
  v48[1] = v41;
  v4 = MEMORY[0x277D42648];
  v5 = objc_opt_class();
  v40 = NSStringFromClass(v5);
  v39 = NSStringFromSelector(sel_saltUsesManatee);
  v38 = [v4 tupleWithFirst:v40 second:v39];
  v48[2] = v38;
  v6 = MEMORY[0x277D42648];
  v7 = objc_opt_class();
  v37 = NSStringFromClass(v7);
  v36 = NSStringFromSelector(sel_syncToken);
  v35 = [v6 tupleWithFirst:v37 second:v36];
  v48[3] = v35;
  v8 = MEMORY[0x277D42648];
  v9 = objc_opt_class();
  v34 = NSStringFromClass(v9);
  v33 = NSStringFromSelector(sel_hasSubscription);
  v32 = [v8 tupleWithFirst:v34 second:v33];
  v48[4] = v32;
  v10 = MEMORY[0x277D42648];
  v11 = objc_opt_class();
  v31 = NSStringFromClass(v11);
  v30 = NSStringFromSelector(sel_eventsWereRemovedFromEventKit);
  v12 = [v10 tupleWithFirst:v31 second:v30];
  v48[5] = v12;
  v13 = MEMORY[0x277D42648];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = NSStringFromSelector(sel_primaryICloudCalendarAccount);
  v17 = [v13 tupleWithFirst:v15 second:v16];
  v48[6] = v17;
  v18 = MEMORY[0x277D42648];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = NSStringFromSelector(sel_hasDeferredSync);
  v22 = [v18 tupleWithFirst:v20 second:v21];
  v48[7] = v22;
  v23 = MEMORY[0x277D42648];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = NSStringFromSelector(sel_hasDeferredProcessStateChanges);
  v27 = [v23 tupleWithFirst:v25 second:v26];
  v48[8] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:9];
  v29 = properties__pasExprOnceResult;
  properties__pasExprOnceResult = v28;

  objc_autoreleasePoolPop(context);
}

@end