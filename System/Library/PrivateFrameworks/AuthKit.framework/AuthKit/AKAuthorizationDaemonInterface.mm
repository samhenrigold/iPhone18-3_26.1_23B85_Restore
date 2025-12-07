@interface AKAuthorizationDaemonInterface
+ (id)XPCInterface;
@end

@implementation AKAuthorizationDaemonInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_5;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_19);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_5;

  return v2;
}

void __46__AKAuthorizationDaemonInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v108[2] = a1;
  v108[1] = a1;
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07DCD48];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface_5;
  XPCInterface_interface_5 = v1;
  MEMORY[0x1E69E5920](v2);
  v90 = 0x1E695D000uLL;
  v37 = MEMORY[0x1E695DFD8];
  v22 = 0x1E73D2000uLL;
  v36 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v94 = 0x1E695D000uLL;
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v91 = 0x1E696A000uLL;
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v93 = 0x1E695D000uLL;
  v35 = objc_opt_class();
  v92 = 0x1E696A000uLL;
  v106 = 0;
  v12 = [v37 setWithObjects:{v36, v3, v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, objc_opt_class(), 0, 0x1E73D2000uLL}];
  v105 = v108;
  v108[0] = v12;
  v13 = p_info[73];
  v38 = 0x1FBDCB000uLL;
  v100 = 0;
  v59 = 0;
  v101 = 1;
  [__objc2_class_ro setClasses:v13 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v108[0] ofReply:0x1FBDCB914uLL];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:v38 + 2324 argumentIndex:v100 ofReply:v101 & 1];
  v14 = p_info[73];
  v39 = 0x1FB8F8000uLL;
  [(__objc2_class_ro *)v14 setClasses:v108[0] forSelector:0x1FB8F8B14uLL argumentIndex:v100 ofReply:v59 & 1];
  v15 = p_info[73];
  v44 = 1;
  [__objc2_class_ro setClasses:v15 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v108[0] ofReply:v39 + 2836];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:v39 + 2836 argumentIndex:v100 ofReply:v101 & 1];
  v16 = p_info[73];
  v40 = 0x1FB327000uLL;
  [(__objc2_class_ro *)v16 setClasses:v108[0] forSelector:0x1FB327878uLL argumentIndex:v100 ofReply:v59 & 1];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:v40 + 2168 argumentIndex:v100 ofReply:v101 & 1];
  v17 = p_info[73];
  v41 = 0x1FAD7D000uLL;
  [(__objc2_class_ro *)v17 setClasses:v108[0] forSelector:0x1FAD7D6C3uLL argumentIndex:v100 ofReply:v59 & 1];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:v41 + 1731 argumentIndex:v100 ofReply:v101 & 1];
  v18 = p_info[73];
  v42 = 0x1FAC61000uLL;
  [(__objc2_class_ro *)v18 setClasses:v108[0] forSelector:0x1FAC61C8EuLL argumentIndex:v100 ofReply:v59 & 1];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:v42 + 3214 argumentIndex:v100 ofReply:v101 & 1];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:sel_continueFetchingIconForRequestContext_completion_ argumentIndex:v100 ofReply:v59 & 1];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:sel_establishConnectionWithNotificationHandlerEndpoint_completion_ argumentIndex:v100 ofReply:v59 & 1];
  v19 = p_info[73];
  v43 = 0x1FAF9E000uLL;
  [(__objc2_class_ro *)v19 setClasses:v108[0] forSelector:0x1FAF9EA78uLL argumentIndex:v100 ofReply:v59 & 1];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:v43 + 2680 argumentIndex:v44 ofReply:v59 & 1];
  v47 = *(v90 + 4056);
  v46 = objc_opt_class();
  v45 = objc_opt_class();
  v20 = [v47 setWithObjects:{v46, v45, objc_opt_class(), 0}];
  v104 = &v107;
  v107 = v20;
  v21 = p_info[73];
  v48 = 0x1FB0ED000uLL;
  [(__objc2_class_ro *)v21 setClasses:v107 forSelector:0x1FB0EDA0BuLL argumentIndex:v100 ofReply:v59 & 1];
  [(__objc2_class_ro *)p_info[73] setClasses:v107 forSelector:v48 + 2571 argumentIndex:v100 ofReply:v101 & 1];
  v51 = p_info[73];
  v50 = *(v90 + 4056);
  v49 = objc_opt_class();
  v52 = [v50 setWithObjects:{v49, objc_opt_class(), 0}];
  v56 = 0x1FAE64000uLL;
  [__objc2_class_ro setClasses:v51 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v52);
  v57 = p_info[73];
  v55 = *(v90 + 4056);
  v54 = objc_opt_class();
  v53 = objc_opt_class();
  v58 = [v55 setWithObjects:{v54, v53, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v57 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v58);
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:sel_startDiscoveryWithCompletion_ argumentIndex:v100 ofReply:v101 & 1];
  [(__objc2_class_ro *)p_info[73] setClasses:v108[0] forSelector:sel_revokeUpgradeWithContext_completion_ argumentIndex:v100 ofReply:v59 & 1];
  v64 = p_info[73];
  v63 = *(v90 + 4056);
  v62 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v65 = [v63 setWithObjects:{v62, v60, v61, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v64 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v65);
  v70 = p_info[73];
  v69 = *(v90 + 4056);
  v68 = objc_opt_class();
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v71 = [v69 setWithObjects:{v68, v66, v67, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v70 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v71);
  v76 = p_info[73];
  v75 = *(v90 + 4056);
  v74 = objc_opt_class();
  v72 = objc_opt_class();
  v73 = objc_opt_class();
  v77 = [v75 setWithObjects:{v74, v72, v73, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v76 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v77);
  v82 = p_info[73];
  v81 = *(v90 + 4056);
  v80 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v83 = [v81 setWithObjects:{v80, v78, v79, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v82 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v83);
  v87 = p_info[73];
  v86 = *(v90 + 4056);
  v85 = objc_opt_class();
  v84 = objc_opt_class();
  v88 = [v86 setWithObjects:{v85, v84, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v87 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v88);
  v102 = p_info[73];
  v99 = *(v90 + 4056);
  v98 = objc_opt_class();
  v95 = objc_opt_class();
  v96 = objc_opt_class();
  v97 = objc_opt_class();
  v103 = [v99 setWithObjects:{v98, v95, v96, v97, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v102 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v103);
  objc_storeStrong(v104, v106);
  objc_storeStrong(v105, v106);
}

@end