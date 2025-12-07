@interface STLog
+ (NSDictionary)logCategories;
+ (OS_os_log)accountState;
+ (OS_os_log)apns;
+ (OS_os_log)appExceptions;
+ (OS_os_log)appInfo;
+ (OS_os_log)appMonitor;
+ (OS_os_log)ask;
+ (OS_os_log)askClient;
+ (OS_os_log)backgroundActivity;
+ (OS_os_log)blueprint;
+ (OS_os_log)cachingCodableStore;
+ (OS_os_log)checkpoint;
+ (OS_os_log)cloudkit;
+ (OS_os_log)communicationClient;
+ (OS_os_log)communicationSafety;
+ (OS_os_log)conduit;
+ (OS_os_log)contactStorePrimitives;
+ (OS_os_log)contactsService;
+ (OS_os_log)conversation;
+ (OS_os_log)coreAnalytics;
+ (OS_os_log)coreAnimation;
+ (OS_os_log)coreDataConfigurationStore;
+ (OS_os_log)coreDataObserver;
+ (OS_os_log)coreDataTransformer;
+ (OS_os_log)coreDataValidation;
+ (OS_os_log)daemon;
+ (OS_os_log)defaultUserPolicyApplicator;
+ (OS_os_log)deviceCapabilitiesClient;
+ (OS_os_log)deviceInformationPrimitives;
+ (OS_os_log)deviceState;
+ (OS_os_log)diagnostics;
+ (OS_os_log)downtimeClient;
+ (OS_os_log)eyeReliefStateWriter;
+ (OS_os_log)family;
+ (OS_os_log)familyCirclePrimitives;
+ (OS_os_log)familyCommunicationService;
+ (OS_os_log)familyInformationProvider;
+ (OS_os_log)familyMemberGenesisStateStore;
+ (OS_os_log)familyMessaging;
+ (OS_os_log)familyScreenTimeManager;
+ (OS_os_log)familySettingsManager;
+ (OS_os_log)fileBackedKeyValueStore;
+ (OS_os_log)idsMessageTransport;
+ (OS_os_log)idsTransport;
+ (OS_os_log)idsTransportMessageAddressMap;
+ (OS_os_log)idsTransportMessageIdentifierMap;
+ (OS_os_log)idsTransportPrimitives;
+ (OS_os_log)managementStateObserver;
+ (OS_os_log)messageTrackingTransportEnvoy;
+ (OS_os_log)messageTrackingTransportService;
+ (OS_os_log)mirroring;
+ (OS_os_log)oneMoreMinuteManager;
+ (OS_os_log)organizationControllerConfigurationAdapter;
+ (OS_os_log)passcodeAuthenticationProviderService;
+ (OS_os_log)passcodeProviderService;
+ (OS_os_log)payload;
+ (OS_os_log)payloadManager;
+ (OS_os_log)payloadQueue;
+ (OS_os_log)persistence;
+ (OS_os_log)personal;
+ (OS_os_log)pinController;
+ (OS_os_log)pinService;
+ (OS_os_log)privateService;
+ (OS_os_log)promise;
+ (OS_os_log)reactor;
+ (OS_os_log)reactorCore;
+ (OS_os_log)reactorDirectiveProcessor;
+ (OS_os_log)reactorTool;
+ (OS_os_log)regionRating;
+ (OS_os_log)remoteViewService;
+ (OS_os_log)requestManager;
+ (OS_os_log)restrictionsMigrator;
+ (OS_os_log)screenTimeOrganizationController;
+ (OS_os_log)screentime;
+ (OS_os_log)settingsService;
+ (OS_os_log)setupClient;
+ (OS_os_log)test;
+ (OS_os_log)tool;
+ (OS_os_log)transaction;
+ (OS_os_log)transportServiceMessageLedger;
+ (OS_os_log)usage;
+ (OS_os_log)userNotifications;
+ (OS_os_log)userSafetyPolicyWriter;
+ (OS_os_log)utility;
+ (OS_os_log)v2Disable;
+ (OS_os_log)versionVector;
+ (OS_os_log)xpcServiceProvider;
@end

@implementation STLog

+ (OS_os_log)communicationClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"communicationClient"];

  return v3;
}

void __22__STLog_logCategories__block_invoke()
{
  v86[83] = *MEMORY[0x1E69E9840];
  v85[0] = @"accountState";
  v84 = os_log_create("com.apple.screentime.core", "accountState");
  v86[0] = v84;
  v85[1] = @"appInfo";
  v83 = os_log_create("com.apple.screentime.core", "appInfo");
  v86[1] = v83;
  v85[2] = @"appExceptions";
  v82 = os_log_create("com.apple.screentime.core", "appExceptions");
  v86[2] = v82;
  v85[3] = @"appMonitor";
  v81 = os_log_create("com.apple.screentime.core", "appMonitor");
  v86[3] = v81;
  v85[4] = @"apns";
  v80 = os_log_create("com.apple.screentime.core", "apns");
  v86[4] = v80;
  v85[5] = @"ask";
  v79 = os_log_create("com.apple.screentime.core", "ask");
  v86[5] = v79;
  v85[6] = @"blueprint";
  v78 = os_log_create("com.apple.screentime.core", "blueprint");
  v86[6] = v78;
  v85[7] = @"checkpoint";
  v77 = os_log_create("com.apple.screentime.core", "checkpoint");
  v86[7] = v77;
  v85[8] = @"cloudkit";
  v76 = os_log_create("com.apple.screentime.core", "cloudkit");
  v86[8] = v76;
  v85[9] = @"communicationSafety";
  v75 = os_log_create("com.apple.screentime.core", "communicationSafety");
  v86[9] = v75;
  v85[10] = @"conduit";
  v74 = os_log_create("com.apple.screentime.core", "conduit");
  v86[10] = v74;
  v85[11] = @"contactsService";
  v73 = os_log_create("com.apple.screentime.core", "contactsService");
  v86[11] = v73;
  v85[12] = @"conversation";
  v72 = os_log_create("com.apple.screentime.core", "conversation");
  v86[12] = v72;
  v85[13] = @"coreAnalytics";
  v71 = os_log_create("com.apple.screentime.core", "coreAnalytics");
  v86[13] = v71;
  v85[14] = @"coreAnimation";
  v70 = os_log_create("com.apple.screentime.core", "coreAnimation");
  v86[14] = v70;
  v85[15] = @"daemon";
  v69 = os_log_create("com.apple.screentime.core", "daemon");
  v86[15] = v69;
  v85[16] = @"deviceState";
  v68 = os_log_create("com.apple.screentime.core", "deviceState");
  v86[16] = v68;
  v85[17] = @"diagnostics";
  v67 = os_log_create("com.apple.screentime.core", "diagnostics");
  v86[17] = v67;
  v85[18] = @"family";
  v66 = os_log_create("com.apple.screentime.core", "family");
  v86[18] = v66;
  v85[19] = @"familyScreenTimeManager";
  v65 = os_log_create("com.apple.screentime.core", "familyScreenTimeManager");
  v86[19] = v65;
  v85[20] = @"familySettingsManager";
  v64 = os_log_create("com.apple.screentime.core", "familySettingsManager");
  v86[20] = v64;
  v85[21] = @"idsTransport";
  v63 = os_log_create("com.apple.screentime.core", "idsTransport");
  v86[21] = v63;
  v85[22] = @"managementStateObserver";
  v62 = os_log_create("com.apple.screentime.core", "managementStateObserver");
  v86[22] = v62;
  v85[23] = @"mirroring";
  v61 = os_log_create("com.apple.screentime.core", "mirroring");
  v86[23] = v61;
  v85[24] = @"oneMoreMinuteManager";
  v60 = os_log_create("com.apple.screentime.core", "oneMoreMinuteManager");
  v86[24] = v60;
  v85[25] = @"payload";
  v59 = os_log_create("com.apple.screentime.core", "payload");
  v86[25] = v59;
  v85[26] = @"payloadManager";
  v58 = os_log_create("com.apple.screentime.core", "payloadManager");
  v86[26] = v58;
  v85[27] = @"payloadQueue";
  v57 = os_log_create("com.apple.screentime.core", "payloadQueue");
  v86[27] = v57;
  v85[28] = @"persistence";
  v56 = os_log_create("com.apple.screentime.core", "persistence");
  v86[28] = v56;
  v85[29] = @"personal";
  v55 = os_log_create("com.apple.screentime.core", "personal");
  v86[29] = v55;
  v85[30] = @"pinController";
  v54 = os_log_create("com.apple.screentime.core", "pinController");
  v86[30] = v54;
  v85[31] = @"pinService";
  v53 = os_log_create("com.apple.screentime.core", "pinService");
  v86[31] = v53;
  v85[32] = @"privateService";
  v52 = os_log_create("com.apple.screentime.core", "privateService");
  v86[32] = v52;
  v85[33] = @"requestManager";
  v51 = os_log_create("com.apple.screentime.core", "requestManager");
  v86[33] = v51;
  v85[34] = @"restrictionsMigrator";
  v50 = os_log_create("com.apple.screentime.core", "restrictionsMigrator");
  v86[34] = v50;
  v85[35] = @"screentime";
  v49 = os_log_create("com.apple.screentime.core", "screentime");
  v86[35] = v49;
  v85[36] = @"screenTimeOrganizationController";
  v48 = os_log_create("com.apple.screentime.core", "screenTimeOrganizationController");
  v86[36] = v48;
  v85[37] = @"settingsService";
  v47 = os_log_create("com.apple.screentime.core", "settingsService");
  v86[37] = v47;
  v85[38] = @"test";
  v46 = os_log_create("com.apple.screentime.core", "test");
  v86[38] = v46;
  v85[39] = @"tool";
  v45 = os_log_create("com.apple.screentime.core", "tool");
  v86[39] = v45;
  v85[40] = @"transaction";
  v44 = os_log_create("com.apple.screentime.core", "transaction");
  v86[40] = v44;
  v85[41] = @"usage";
  v43 = os_log_create("com.apple.screentime.core", "usage");
  v86[41] = v43;
  v85[42] = @"userNotifications";
  v42 = os_log_create("com.apple.screentime.core", "userNotifications");
  v86[42] = v42;
  v85[43] = @"utility";
  v41 = os_log_create("com.apple.screentime.core", "utility");
  v86[43] = v41;
  v85[44] = @"versionVector";
  v40 = os_log_create("com.apple.screentime.core", "versionVector");
  v86[44] = v40;
  v85[45] = @"askClient";
  v39 = os_log_create("com.apple.screentime.core", "askClient");
  v86[45] = v39;
  v85[46] = @"backgroundActivity";
  v38 = os_log_create("com.apple.screentime.core", "backgroundActivity");
  v86[46] = v38;
  v85[47] = @"cachingCodableStore";
  v37 = os_log_create("com.apple.screentime.core", "cachingCodableStore");
  v86[47] = v37;
  v85[48] = @"communicationClient";
  v36 = os_log_create("com.apple.screentime.core", "communicationClient");
  v86[48] = v36;
  v85[49] = @"contactStorePrimitives";
  v35 = os_log_create("com.apple.screentime.core", "contactStorePrimitives");
  v86[49] = v35;
  v85[50] = @"coreDataConfigurationStore";
  v34 = os_log_create("com.apple.screentime.core", "coreDataConfigurationStore");
  v86[50] = v34;
  v85[51] = @"coreDataTransformer";
  v33 = os_log_create("com.apple.screentime.core", "coreDataTransformer");
  v86[51] = v33;
  v85[52] = @"coreDataObserver";
  v32 = os_log_create("com.apple.screentime.core", "coreDataObserver");
  v86[52] = v32;
  v85[53] = @"defaultUserPolicyApplicator";
  v31 = os_log_create("com.apple.screentime.core", "defaultUserPolicyApplicator");
  v86[53] = v31;
  v85[54] = @"deviceCapabilitiesClient";
  v30 = os_log_create("com.apple.screentime.core", "deviceCapabilitiesClient");
  v86[54] = v30;
  v85[55] = @"deviceInformationPrimitives";
  v29 = os_log_create("com.apple.screentime.core", "deviceInformationPrimitives");
  v86[55] = v29;
  v85[56] = @"eyeReliefStateWriter";
  v28 = os_log_create("com.apple.screentime.core", "eyeReliefStateWriter");
  v86[56] = v28;
  v85[57] = @"familyCirclePrimitives";
  v27 = os_log_create("com.apple.screentime.core", "familyCirclePrimitives");
  v86[57] = v27;
  v85[58] = @"familyCommunicationService";
  v26 = os_log_create("com.apple.screentime.core", "familyCommunicationService");
  v86[58] = v26;
  v85[59] = @"familyInformationProvider";
  v25 = os_log_create("com.apple.screentime.core", "familyInformationProvider");
  v86[59] = v25;
  v85[60] = @"familyMemberGenesisStateStore";
  v24 = os_log_create("com.apple.screentime.core", "familyMemberGenesisStateStore");
  v86[60] = v24;
  v85[61] = @"fileBackedKeyValueStore";
  v23 = os_log_create("com.apple.screentime.core", "fileBackedKeyValueStore");
  v86[61] = v23;
  v85[62] = @"idsMessageTransport";
  v22 = os_log_create("com.apple.screentime.core", "idsMessageTransport");
  v86[62] = v22;
  v85[63] = @"idsTransportMessageAddressMap";
  v21 = os_log_create("com.apple.screentime.core", "idsTransportMessageAddressMap");
  v86[63] = v21;
  v85[64] = @"idsTransportMessageIdentifierMap";
  v20 = os_log_create("com.apple.screentime.core", "idsTransportMessageIdentifierMap");
  v86[64] = v20;
  v85[65] = @"idsTransportPrimitives";
  v19 = os_log_create("com.apple.screentime.core", "idsTransportPrimitives");
  v86[65] = v19;
  v85[66] = @"messageTrackingTransportEnvoy";
  v18 = os_log_create("com.apple.screentime.core", "messageTrackingTransportEnvoy");
  v86[66] = v18;
  v85[67] = @"messageTrackingTransportService";
  v17 = os_log_create("com.apple.screentime.core", "messageTrackingTransportService");
  v86[67] = v17;
  v85[68] = @"organizationControllerConfigurationAdapter";
  v16 = os_log_create("com.apple.screentime.core", "organizationControllerConfigurationAdapter");
  v86[68] = v16;
  v85[69] = @"passcodeAuthenticationProviderService";
  v15 = os_log_create("com.apple.screentime.core", "passcodeAuthenticationProviderService");
  v86[69] = v15;
  v85[70] = @"passcodeProviderService";
  v14 = os_log_create("com.apple.screentime.core", "passcodeProviderService");
  v86[70] = v14;
  v85[71] = @"promise";
  v13 = os_log_create("com.apple.screentime.core", "promise");
  v86[71] = v13;
  v85[72] = @"reactor";
  v12 = os_log_create("com.apple.screentime.core", "reactor");
  v86[72] = v12;
  v85[73] = @"reactorCore";
  v0 = os_log_create("com.apple.screentime.core", "reactorCore");
  v86[73] = v0;
  v85[74] = @"reactorDirectiveProcessor";
  v1 = os_log_create("com.apple.screentime.core", "reactorDirectiveProcessor");
  v86[74] = v1;
  v85[75] = @"reactorTool";
  v2 = os_log_create("com.apple.screentime.core", "reactorTool");
  v86[75] = v2;
  v85[76] = @"remoteViewService";
  v3 = os_log_create("com.apple.screentime.core", "remoteViewService");
  v86[76] = v3;
  v85[77] = @"setupClient";
  v4 = os_log_create("com.apple.screentime.core", "setupClient");
  v86[77] = v4;
  v85[78] = @"transportServiceMessageLedger";
  v5 = os_log_create("com.apple.screentime.core", "transportServiceMessageLedger");
  v86[78] = v5;
  v85[79] = @"userSafetyPolicyWriter";
  v6 = os_log_create("com.apple.screentime.core", "userSafetyPolicyWriter");
  v86[79] = v6;
  v85[80] = @"v2Disable";
  v7 = os_log_create("com.apple.screentime.core", "v2Disable");
  v86[80] = v7;
  v85[81] = @"xpcServiceProvider";
  v8 = os_log_create("com.apple.screentime.core", "xpcServiceProvider");
  v86[81] = v8;
  v85[82] = @"familyMessaging";
  v9 = os_log_create("com.apple.screentime.core", "familyMessaging");
  v86[82] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:83];
  v11 = _logCategories;
  _logCategories = v10;
}

+ (NSDictionary)logCategories
{
  if (logCategories_onceToken != -1)
  {
    +[STLog logCategories];
  }

  v3 = _logCategories;

  return v3;
}

+ (OS_os_log)reactor
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"reactor"];

  return v3;
}

+ (OS_os_log)xpcServiceProvider
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"xpcServiceProvider"];

  return v3;
}

+ (OS_os_log)conversation
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"conversation"];

  return v3;
}

+ (OS_os_log)screenTimeOrganizationController
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"screenTimeOrganizationController"];

  return v3;
}

+ (OS_os_log)coreDataObserver
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreDataObserver"];

  return v3;
}

+ (OS_os_log)accountState
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"accountState"];

  return v3;
}

+ (OS_os_log)appInfo
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"appInfo"];

  return v3;
}

+ (OS_os_log)appExceptions
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"appExceptions"];

  return v3;
}

+ (OS_os_log)appMonitor
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"appMonitor"];

  return v3;
}

+ (OS_os_log)apns
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"apns"];

  return v3;
}

+ (OS_os_log)ask
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"ask"];

  return v3;
}

+ (OS_os_log)blueprint
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"blueprint"];

  return v3;
}

+ (OS_os_log)checkpoint
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"checkpoint"];

  return v3;
}

+ (OS_os_log)cloudkit
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"cloudkit"];

  return v3;
}

+ (OS_os_log)communicationSafety
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"communicationSafety"];

  return v3;
}

+ (OS_os_log)conduit
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"conduit"];

  return v3;
}

+ (OS_os_log)contactsService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"contactsService"];

  return v3;
}

+ (OS_os_log)coreAnalytics
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreAnalytics"];

  return v3;
}

+ (OS_os_log)coreAnimation
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreAnimation"];

  return v3;
}

+ (OS_os_log)coreDataValidation
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreDataValidation"];

  return v3;
}

+ (OS_os_log)daemon
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"daemon"];

  return v3;
}

+ (OS_os_log)deviceState
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"deviceState"];

  return v3;
}

+ (OS_os_log)diagnostics
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"diagnostics"];

  return v3;
}

+ (OS_os_log)family
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"family"];

  return v3;
}

+ (OS_os_log)familyScreenTimeManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyScreenTimeManager"];

  return v3;
}

+ (OS_os_log)familySettingsManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familySettingsManager"];

  return v3;
}

+ (OS_os_log)idsTransport
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsTransport"];

  return v3;
}

+ (OS_os_log)managementStateObserver
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"managementStateObserver"];

  return v3;
}

+ (OS_os_log)mirroring
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"mirroring"];

  return v3;
}

+ (OS_os_log)oneMoreMinuteManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"oneMoreMinuteManager"];

  return v3;
}

+ (OS_os_log)payload
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"payload"];

  return v3;
}

+ (OS_os_log)payloadManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"payloadManager"];

  return v3;
}

+ (OS_os_log)payloadQueue
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"payloadQueue"];

  return v3;
}

+ (OS_os_log)persistence
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"persistence"];

  return v3;
}

+ (OS_os_log)personal
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"personal"];

  return v3;
}

+ (OS_os_log)pinController
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"pinController"];

  return v3;
}

+ (OS_os_log)pinService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"pinService"];

  return v3;
}

+ (OS_os_log)privateService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"privateService"];

  return v3;
}

+ (OS_os_log)requestManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"requestManager"];

  return v3;
}

+ (OS_os_log)restrictionsMigrator
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"restrictionsMigrator"];

  return v3;
}

+ (OS_os_log)settingsService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"settingsService"];

  return v3;
}

+ (OS_os_log)screentime
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"screentime"];

  return v3;
}

+ (OS_os_log)test
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"test"];

  return v3;
}

+ (OS_os_log)tool
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"tool"];

  return v3;
}

+ (OS_os_log)transaction
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"transaction"];

  return v3;
}

+ (OS_os_log)usage
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"usage"];

  return v3;
}

+ (OS_os_log)userNotifications
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"userNotifications"];

  return v3;
}

+ (OS_os_log)utility
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"utility"];

  return v3;
}

+ (OS_os_log)versionVector
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"versionVector"];

  return v3;
}

+ (OS_os_log)askClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"askClient"];

  return v3;
}

+ (OS_os_log)backgroundActivity
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"backgroundActivity"];

  return v3;
}

+ (OS_os_log)cachingCodableStore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"cachingCodableStore"];

  return v3;
}

+ (OS_os_log)contactStorePrimitives
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"contactStorePrimitives"];

  return v3;
}

+ (OS_os_log)coreDataConfigurationStore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreDataConfigurationStore"];

  return v3;
}

+ (OS_os_log)coreDataTransformer
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreDataTransformer"];

  return v3;
}

+ (OS_os_log)defaultUserPolicyApplicator
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"defaultUserPolicyApplicator"];

  return v3;
}

+ (OS_os_log)deviceCapabilitiesClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"deviceCapabilitiesClient"];

  return v3;
}

+ (OS_os_log)deviceInformationPrimitives
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"deviceInformationPrimitives"];

  return v3;
}

+ (OS_os_log)downtimeClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"downtimeClient"];

  return v3;
}

+ (OS_os_log)eyeReliefStateWriter
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"eyeReliefStateWriter"];

  return v3;
}

+ (OS_os_log)familyCirclePrimitives
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyCirclePrimitives"];

  return v3;
}

+ (OS_os_log)familyCommunicationService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyCommunicationService"];

  return v3;
}

+ (OS_os_log)familyInformationProvider
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyInformationProvider"];

  return v3;
}

+ (OS_os_log)familyMemberGenesisStateStore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyMemberGenesisStateStore"];

  return v3;
}

+ (OS_os_log)fileBackedKeyValueStore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"fileBackedKeyValueStore"];

  return v3;
}

+ (OS_os_log)idsMessageTransport
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsMessageTransport"];

  return v3;
}

+ (OS_os_log)idsTransportMessageAddressMap
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsTransportMessageAddressMap"];

  return v3;
}

+ (OS_os_log)idsTransportMessageIdentifierMap
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsTransportMessageIdentifierMap"];

  return v3;
}

+ (OS_os_log)idsTransportPrimitives
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsTransportPrimitives"];

  return v3;
}

+ (OS_os_log)messageTrackingTransportEnvoy
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"messageTrackingTransportEnvoy"];

  return v3;
}

+ (OS_os_log)messageTrackingTransportService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"messageTrackingTransportService"];

  return v3;
}

+ (OS_os_log)organizationControllerConfigurationAdapter
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"organizationControllerConfigurationAdapter"];

  return v3;
}

+ (OS_os_log)passcodeAuthenticationProviderService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"passcodeAuthenticationProviderService"];

  return v3;
}

+ (OS_os_log)passcodeProviderService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"passcodeProviderService"];

  return v3;
}

+ (OS_os_log)promise
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"promise"];

  return v3;
}

+ (OS_os_log)reactorCore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"reactorCore"];

  return v3;
}

+ (OS_os_log)reactorDirectiveProcessor
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"reactorDirectiveProcessor"];

  return v3;
}

+ (OS_os_log)reactorTool
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"reactorTool"];

  return v3;
}

+ (OS_os_log)regionRating
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"regionRating"];

  return v3;
}

+ (OS_os_log)remoteViewService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"remoteViewService"];

  return v3;
}

+ (OS_os_log)setupClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"setupClient"];

  return v3;
}

+ (OS_os_log)transportServiceMessageLedger
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"transportServiceMessageLedger"];

  return v3;
}

+ (OS_os_log)userSafetyPolicyWriter
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"userSafetyPolicyWriter"];

  return v3;
}

+ (OS_os_log)v2Disable
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"v2Disable"];

  return v3;
}

+ (OS_os_log)familyMessaging
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyMessaging"];

  return v3;
}

@end