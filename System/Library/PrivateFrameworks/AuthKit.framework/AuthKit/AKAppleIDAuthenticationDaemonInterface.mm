@interface AKAppleIDAuthenticationDaemonInterface
+ (id)XPCInterface;
@end

@implementation AKAppleIDAuthenticationDaemonInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_13;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_54);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_12;

  return v2;
}

void __54__AKAppleIDAuthenticationDaemonInterface_XPCInterface__block_invoke(void *a1)
{
  v114[2] = a1;
  v114[1] = a1;
  v97 = 0x1E695D000uLL;
  v87 = MEMORY[0x1E695DFD8];
  v98 = 0x1E695D000uLL;
  v86 = objc_opt_class();
  v106 = 0x1E695D000uLL;
  v80 = objc_opt_class();
  v101 = 0x1E696A000uLL;
  v81 = objc_opt_class();
  v103 = 0x1E696A000uLL;
  v82 = objc_opt_class();
  v110 = 0x1E695D000uLL;
  v83 = objc_opt_class();
  v108 = 0x1E695D000uLL;
  v84 = objc_opt_class();
  v85 = objc_opt_class();
  v88 = &v7;
  v112 = 0;
  v114[0] = [v87 setWithObjects:{v86, v80, v81, v82, v83, v84, v85, objc_opt_class(), 0}];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07DD048];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface_12;
  XPCInterface_interface_12 = v1;
  MEMORY[0x1E69E5920](v2);
  v3 = p_info[80];
  v94 = 0;
  v95 = 1;
  [__objc2_class_ro setClasses:v3 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v114[0] ofReply:sel_fetchUserInformationForAltDSID_completion_];
  v90 = p_info[80];
  v89 = v114[0];
  v92 = 0x1E73D2000uLL;
  v91 = [v114[0] setByAddingObject:objc_opt_class()];
  [__objc2_class_ro setClasses:v90 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v91);
  v93 = p_info[80];
  [(__objc2_class_ro *)v93 setClass:objc_opt_class() forSelector:sel_getUserInformationWithContext_completion_ argumentIndex:v94 ofReply:v95 & 1];
  [(__objc2_class_ro *)p_info[80] setClasses:v114[0] forSelector:sel_setConfigurationInfo_forIdentifier_forAltDSID_completion_ argumentIndex:v94 ofReply:0];
  [(__objc2_class_ro *)p_info[80] setClasses:v114[0] forSelector:sel_configurationInfoWithIdentifiers_forAltDSID_completion_ argumentIndex:v94 ofReply:v95 & 1];
  v99 = p_info[80];
  v100 = *(v97 + 4056);
  v102 = objc_opt_class();
  v104 = objc_opt_class();
  v105 = objc_opt_class();
  v107 = objc_opt_class();
  v109 = objc_opt_class();
  v111 = objc_opt_class();
  v113 = objc_opt_class();
  if (KeychainCircleLibraryCore(v112))
  {
    KCAESGCMDuplexSessionClass = getKCAESGCMDuplexSessionClass();
  }

  else
  {
    KCAESGCMDuplexSessionClass = 0;
  }

  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v4 = objc_opt_class();
  obj = 0;
  v10 = [v100 setWithObjects:{v102, v104, v105, v107, v109, v111, v113, v8, v9, v4, 0}];
  v75 = 0;
  v76 = 1;
  [__objc2_class_ro setClasses:v99 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v10);
  v73 = &OBJC_METACLASS___AKAppleIDSession.info;
  v20 = XPCInterface_interface_12;
  v49 = 0x1E695D000uLL;
  v19 = MEMORY[0x1E695DFD8];
  v50 = 0x1E695D000uLL;
  v18 = objc_opt_class();
  v51 = 0x1E696A000uLL;
  v11 = objc_opt_class();
  v52 = 0x1E696A000uLL;
  v12 = objc_opt_class();
  v53 = 0x1E695D000uLL;
  v13 = objc_opt_class();
  v54 = 0x1E695D000uLL;
  v14 = objc_opt_class();
  v55 = 0x1E695D000uLL;
  v15 = objc_opt_class();
  v56 = 0x1E695D000uLL;
  v16 = objc_opt_class();
  v57 = 0x1E73D2000uLL;
  v17 = objc_opt_class();
  v58 = 0x1E73D2000uLL;
  v21 = [v19 setWithObjects:{v18, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  [v20 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v21);
  v27 = v73[80];
  v26 = *(v49 + 4056);
  v25 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v28 = [v26 setWithObjects:{v25, v22, v23, v24, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v27 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v28);
  v36 = v73[80];
  v35 = *(v49 + 4056);
  v34 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v37 = [v35 setWithObjects:{v34, v29, v30, v31, v32, v33, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v36 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v37);
  v47 = v73[80];
  v46 = *(v49 + 4056);
  v45 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v48 = [v46 setWithObjects:{v45, v38, v39, v40, v41, v42, v43, v44, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v47 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v48);
  v68 = v73[80];
  v67 = *(v49 + 4056);
  v66 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v65 = objc_opt_class();
  v69 = [v67 setWithObjects:{v66, v59, v60, v61, v62, v63, v64, v65, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v68 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v69);
  v5 = v73[80];
  location = v114;
  [(__objc2_class_ro *)v5 setClasses:v114[0] forSelector:sel_fetchTokensWithAltDSID_tokenIdentifiers_completion_ argumentIndex:v75 ofReply:v76 & 1];
  [(__objc2_class_ro *)v73[80] setClasses:v114[0] forSelector:sel_deleteTokensFromCacheWithAltDSID_tokenIdentifiers_completion_ argumentIndex:v75 ofReply:v76 & 1];
  [(__objc2_class_ro *)v73[80] setClasses:v114[0] forSelector:sel_refreshBAADeviceTokenWithCompletion_ argumentIndex:v75 ofReply:v76 & 1];
  [(__objc2_class_ro *)v73[80] setClasses:v114[0] forSelector:sel_fetchBAADeviceTokenWithCompletion_ argumentIndex:v75 ofReply:v76 & 1];
  v6 = v73[80];
  v74 = 0x1FBDC9000uLL;
  [(__objc2_class_ro *)v6 setClasses:v114[0] forSelector:0x1FBDC934FuLL argumentIndex:1 ofReply:v76 & 1];
  v71 = v73[80];
  v70 = v114[0];
  v72 = [v114[0] setByAddingObject:objc_opt_class()];
  [__objc2_class_ro setClasses:v71 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v72);
  [(__objc2_class_ro *)v73[80] setClasses:v114[0] forSelector:v74 + 847 argumentIndex:v75 ofReply:v76 & 1];
  objc_storeStrong(location, obj);
}

@end