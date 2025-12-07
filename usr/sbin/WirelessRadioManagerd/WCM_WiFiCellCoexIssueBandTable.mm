@interface WCM_WiFiCellCoexIssueBandTable
- ($3C9879B8047CCA62E59FC5E141A81388)findIssueBandForBandInfoType:(int)type cellDlHighFreq:(double)freq cellDlLowFreq:(double)lowFreq cellUlHighFreq:(double)highFreq cellUlLowFreq:(double)ulLowFreq wifiBand:(int)band;
- ($3C9879B8047CCA62E59FC5E141A81388)search_2GWifi_IssueBandForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq matchedIssuBand:(unsigned int *)band;
- ($3C9879B8047CCA62E59FC5E141A81388)search_5GWifi_IssueBandForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq matchedIssuBand:(unsigned int *)band;
- ($3C9879B8047CCA62E59FC5E141A81388)search_WifiEnh_IssueBandForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq matchedIssuBand:(unsigned int *)band;
- (BOOL)coexBandCheckBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (BOOL)configureBy:(id *)by;
- (BOOL)isFalseTDDIssueBand:(int)band cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (BOOL)isLTEB7FoundForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (BOOL)isWifiRangingProtectionEnabledForOOBCoexIssueBand:(int)band cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (BOOL)wifiBtAgcCoexModeEnableCheckBandCombination:(int)combination cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq coexModeWifiLevel:(int64_t *)level;
- (BOOL)wifiBtAgcCoexModeEnableCheckBandCombinationV2:(int)v2 cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiChannel:(unsigned int)channel channelCenterFreqMHz:(unsigned int)hz channelBandwidthMHz:(unsigned int)self0 coexModeWifiLevel:(int64_t *)self1 coexModeBTLevel:(int64_t *)self2;
- (WCM_WiFiCellCoexIssueBandTable)init;
- (id)GetHFBTBandBlockedChannelMapWithCellUlHighFreq:(double)freq cellUlLowFreq:(double)lowFreq cellDlHighFreq:(double)highFreq cellDlLowFreq:(double)dlLowFreq gpsRadioActive:(BOOL)active coexIssues:(id)issues btBandLowFreq:(double)bandLowFreq btBandHighFreq:(double)self0 btNumChannel:(int)self1;
- (id)HFBTAntBlockingBandsFromWiFiConfigForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)HFBTPreferredChannelMapForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq gpsRadioActive:(BOOL)active;
- (id)btPreferredChannelMapForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq gpsRadioActive:(BOOL)active;
- (id)btPreferredChannelMapFromLegacyWiFiConfigForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq gpsRadioActive:(BOOL)active maxChannelsToAvoidForCellOOB:(int)b;
- (id)coexIssuesFor:(int)for;
- (id)findWiFiAntennaOrCellTxPowerConstraintCoexIssueByCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiChannel:(int)channel gpsRadioActive:(BOOL)active wifiAntennaConstraint:(BOOL *)self0 cellTxPowerConstraint:(BOOL *)self1;
- (id)findWiFiAntennaOrCellTxPowerConstraintWiFiEnhCoexIssueByCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiChannel:(int)channel wifiCenterFreq:(unsigned int)centerFreq wifiBandwidth:(unsigned int)self0 gpsRadioActive:(BOOL)self1 wifiAntennaConstraint:(BOOL *)self2 cellTxPowerConstraint:(BOOL *)self3;
- (id)findWiFiVictimCoexIssueByCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)getHFBTAFHCoexIssuesFromIssueBand:(id *)band;
- (id)getWifiDesensedCoexIssueFromIssueBand:(id *)band;
- (id)wifi2GChannelsToEnableConditionalMitigationForCoexIssueBand:(id *)band cellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq ulcaPriority:(char *)priority;
- (id)wifi2GHzLTEB7IMD3EnableType7ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)wifi5GChannelsToEnableConditionalMitigationForCoexIssueBand:(id *)band cellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq ulcaPriority:(char *)priority;
- (id)wifi5GHzChannelsToEnableType7MSGForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)wifiChannelsToDisableOCLForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)wifiChannelsToDisableOCLWiFiEnhForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)wifiChannelsToEnableConditionalMitigationForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq ulcaPriority2G:(char *)g ulcaPriority5G:(char *)priority5G ulcaPriorityEnh:(char *)self0;
- (id)wifiChannelsToEnableLTEMBType7ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq pissueBandMatchAntIdx:(unsigned __int16 *)idx;
- (id)wifiChannelsToEnableType7WiFiEnhForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq pissueBandMatchAntIdx:(unsigned __int16 *)idx;
- (id)wifiChannelsToEnableWCI2ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)wifiChannelsToEnableWCI2V2ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq pissueBandMatch:(BOOL *)match;
- (id)wifiChannelsToEnableWCI2WiFiEnhForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq pissueBandMatch:(BOOL *)match;
- (id)wifiEnhChannelsToEnableConditionalMitigationForCoexIssueBand:(id *)band cellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq ulcaPriority:(char *)priority;
- (id)wifiPHSChannelsToBlocklistForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)wifiPHSChannelsToBlocklistV2ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (void)combineWifiChannelList:(id)list withChannelList:(id)channelList;
- (void)combineWifiChannelList:(id)list withChannelList:(id)channelList inAllowedChannelSet:(id)set;
- (void)dealloc;
- (void)getCellDynamicAntBlockingIndex:(int)index cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiChannel:(unsigned int)channel pissueBandMatchAntIdx:(unsigned __int16 *)idx cellAntBlkEnableIdx1:(char *)self0 cellAntBlkEnableIdx2:(char *)self1;
@end

@implementation WCM_WiFiCellCoexIssueBandTable

- (WCM_WiFiCellCoexIssueBandTable)init
{
  v3.receiver = self;
  v3.super_class = WCM_WiFiCellCoexIssueBandTable;
  result = [(WCM_WiFiCellCoexIssueBandTable *)&v3 init];
  if (result)
  {
    result->_issueBand[0]._bandInfoType = 24;
    *&result->_issueBand[0]._downlinkLowFreq = xmmword_100195D10;
    *&result->_issueBand[0]._uplinkLowFreq = xmmword_100195D20;
    result->_issueBand[0]._hasIssue = 0;
    result->_issueBand[1]._bandInfoType = 63;
    *&result->_issueBand[1]._downlinkLowFreq = xmmword_100195D30;
    *&result->_issueBand[1]._uplinkLowFreq = xmmword_100195D40;
    result->_issueBand[1]._hasIssue = 0;
    result->_issueBand[2]._bandInfoType = 35;
    *&result->_issueBand[2]._downlinkLowFreq = xmmword_100195D50;
    *&result->_issueBand[2]._uplinkLowFreq = xmmword_100195D60;
    result->_issueBand[2]._hasIssue = 0;
    result->_issueBand[3]._bandInfoType = 35;
    result->_issueBand[3]._downlinkLowFreq = 860.0;
    *&result->_issueBand[3]._downlinkHighFreq = xmmword_100195D70;
    result->_issueBand[3]._uplinkHighFreq = 830.0;
    result->_issueBand[3]._hasIssue = 0;
    result->_issueBand[4]._bandInfoType = 35;
    *&result->_issueBand[4]._downlinkLowFreq = xmmword_100195D80;
    *&result->_issueBand[4]._uplinkLowFreq = xmmword_100195D90;
    result->_issueBand[4]._hasIssue = 0;
    result->_issueBand[5]._bandInfoType = 35;
    result->_issueBand[5]._downlinkLowFreq = 791.0;
    *&result->_issueBand[5]._downlinkHighFreq = xmmword_100195DA0;
    result->_issueBand[5]._uplinkHighFreq = 862.0;
    result->_issueBand[5]._hasIssue = 0;
    result->_issueBand[6]._bandInfoType = 35;
    *&result->_issueBand[6]._downlinkLowFreq = xmmword_100195DB0;
    *&result->_issueBand[6]._uplinkLowFreq = xmmword_100195DC0;
    result->_issueBand[6]._hasIssue = 0;
    result->_issueBand[7]._bandInfoType = 35;
    result->_issueBand[7]._downlinkLowFreq = 852.0;
    *&result->_issueBand[7]._downlinkHighFreq = xmmword_100195DD0;
    result->_issueBand[7]._uplinkHighFreq = 824.0;
    result->_issueBand[7]._hasIssue = 0;
    result->_issueBand[8]._bandInfoType = 35;
    *&result->_issueBand[8]._downlinkLowFreq = xmmword_100195DE0;
    *&result->_issueBand[8]._uplinkLowFreq = xmmword_100195DF0;
    result->_issueBand[8]._hasIssue = 0;
    result->_issueBand[9]._bandInfoType = 35;
    result->_issueBand[9]._downlinkLowFreq = 2350.0;
    *&result->_issueBand[9]._downlinkHighFreq = xmmword_100195E00;
    result->_issueBand[9]._uplinkHighFreq = 2315.0;
    result->_issueBand[9]._hasIssue = 0;
    result->_issueBand[10]._bandInfoType = 35;
    *&result->_issueBand[10]._downlinkLowFreq = xmmword_100195E10;
    *&result->_issueBand[10]._uplinkLowFreq = xmmword_100195E10;
    result->_issueBand[10]._hasIssue = 0;
    result->_issueBand[11]._bandInfoType = 35;
    result->_issueBand[11]._downlinkLowFreq = 2300.0;
    *&result->_issueBand[11]._downlinkHighFreq = xmmword_100195E20;
    result->_issueBand[11]._uplinkHighFreq = 2400.0;
    result->_issueBand[11]._hasIssue = 0;
    result->_issueBand[12]._bandInfoType = 35;
    *&result->_issueBand[12]._downlinkLowFreq = xmmword_100195E30;
    *&result->_issueBand[12]._uplinkLowFreq = xmmword_100195E30;
    result->_issueBand[12]._hasIssue = 0;
    result->_issueBand[13]._bandInfoType = 64;
    result->_issueBand[13]._downlinkLowFreq = 4400.0;
    *&result->_issueBand[13]._downlinkHighFreq = xmmword_100195E40;
    result->_issueBand[13]._uplinkHighFreq = 5000.0;
    result->_issueBand[13]._hasIssue = 0;
    result->_issueBand[14]._bandInfoType = 35;
    *&result->_issueBand[14]._downlinkLowFreq = xmmword_100195E50;
    *&result->_issueBand[14]._uplinkLowFreq = xmmword_100195E60;
    result->_issueBand[14]._hasIssue = 0;
    result->_issueBand[15]._bandInfoType = 35;
    result->_issueBand[15]._downlinkLowFreq = 1880.0;
    *&result->_issueBand[15]._downlinkHighFreq = xmmword_100195E70;
    result->_issueBand[15]._uplinkHighFreq = 1920.0;
    result->_issueBand[15]._hasIssue = 0;
    result->_issueBand[16]._bandInfoType = 64;
    *&result->_issueBand[16]._downlinkLowFreq = xmmword_100195E30;
    *&result->_issueBand[16]._uplinkLowFreq = xmmword_100195E30;
    result->_issueBand[16]._hasIssue = 0;
    result->_issueBand[17]._bandInfoType = 35;
    result->_issueBand[17]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[17]._downlinkHighFreq = xmmword_100195E80;
    result->_issueBand[17]._uplinkHighFreq = 1915.0;
    result->_issueBand[17]._hasIssue = 0;
    result->_issueBand[21]._bandInfoType = 35;
    result->_issueBand[21]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[21]._downlinkHighFreq = xmmword_100195E90;
    result->_issueBand[21]._uplinkHighFreq = 1910.0;
    result->_issueBand[21]._hasIssue = 0;
    result->_issueBand[18]._bandInfoType = 35;
    *&result->_issueBand[18]._downlinkLowFreq = xmmword_100195EA0;
    *&result->_issueBand[18]._uplinkLowFreq = xmmword_100195EB0;
    result->_issueBand[18]._hasIssue = 0;
    result->_issueBand[19]._bandInfoType = 35;
    result->_issueBand[19]._downlinkLowFreq = 2110.0;
    *&result->_issueBand[19]._downlinkHighFreq = xmmword_100195EC0;
    result->_issueBand[19]._uplinkHighFreq = 1755.0;
    result->_issueBand[19]._hasIssue = 0;
    result->_issueBand[20]._bandInfoType = 35;
    *&result->_issueBand[20]._downlinkLowFreq = xmmword_100195ED0;
    *&result->_issueBand[20]._uplinkLowFreq = xmmword_100195EE0;
    result->_issueBand[20]._hasIssue = 0;
    result->_issueBand[22]._bandInfoType = 64;
    *&result->_issueBand[22]._downlinkLowFreq = xmmword_100195EF0;
    *&result->_issueBand[22]._uplinkLowFreq = xmmword_100195EF0;
    result->_issueBand[22]._hasIssue = 0;
    result->_issueBand[23]._bandInfoType = 64;
    result->_issueBand[23]._downlinkLowFreq = 860.0;
    *&result->_issueBand[23]._downlinkHighFreq = xmmword_100195D70;
    result->_issueBand[23]._uplinkHighFreq = 830.0;
    result->_issueBand[23]._hasIssue = 0;
    result->_issueBand[24]._bandInfoType = 64;
    *&result->_issueBand[24]._downlinkLowFreq = xmmword_100195DB0;
    *&result->_issueBand[24]._uplinkLowFreq = xmmword_100195DC0;
    result->_issueBand[24]._hasIssue = 0;
    result->_issueBand[25]._bandInfoType = 64;
    result->_issueBand[25]._downlinkLowFreq = 791.0;
    *&result->_issueBand[25]._downlinkHighFreq = xmmword_100195DA0;
    result->_issueBand[25]._uplinkHighFreq = 862.0;
    result->_issueBand[25]._hasIssue = 0;
    result->_issueBand[26]._bandInfoType = 64;
    *&result->_issueBand[26]._downlinkLowFreq = xmmword_100195DE0;
    *&result->_issueBand[26]._uplinkLowFreq = xmmword_100195DF0;
    result->_issueBand[26]._hasIssue = 0;
    result->_issueBand[27]._bandInfoType = 64;
    result->_issueBand[27]._downlinkLowFreq = 869.0;
    *&result->_issueBand[27]._downlinkHighFreq = xmmword_100195F00;
    result->_issueBand[27]._uplinkHighFreq = 849.0;
    result->_issueBand[27]._hasIssue = 0;
    result->_issueBand[28]._bandInfoType = 64;
    *&result->_issueBand[28]._downlinkLowFreq = xmmword_100195F10;
    *&result->_issueBand[28]._uplinkLowFreq = xmmword_100195F20;
    result->_issueBand[28]._hasIssue = 0;
    result->_issueBand[29]._bandInfoType = 64;
    result->_issueBand[29]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[29]._downlinkHighFreq = xmmword_100195E80;
    result->_issueBand[29]._uplinkHighFreq = 1915.0;
    result->_issueBand[29]._hasIssue = 0;
    result->_issueBand[30]._bandInfoType = 64;
    *&result->_issueBand[30]._downlinkLowFreq = xmmword_100195E50;
    *&result->_issueBand[30]._uplinkLowFreq = xmmword_100195E60;
    result->_issueBand[30]._hasIssue = 0;
    result->_issueBand[31]._bandInfoType = 64;
    result->_issueBand[31]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[31]._downlinkHighFreq = xmmword_100195E90;
    result->_issueBand[31]._uplinkHighFreq = 1910.0;
    result->_issueBand[31]._hasIssue = 0;
    result->_issueBand[32]._bandInfoType = 64;
    *&result->_issueBand[32]._downlinkLowFreq = xmmword_100195F30;
    *&result->_issueBand[32]._uplinkLowFreq = xmmword_100195F30;
    result->_issueBand[32]._hasIssue = 0;
    result->_issueBand[33]._bandInfoType = 35;
    result->_issueBand[33]._downlinkLowFreq = 2110.0;
    *&result->_issueBand[33]._downlinkHighFreq = xmmword_100195F40;
    result->_issueBand[33]._uplinkHighFreq = 1980.0;
    result->_issueBand[33]._hasIssue = 0;
    result->_issueBand[34]._bandInfoType = 35;
    *&result->_issueBand[34]._downlinkLowFreq = xmmword_100195F50;
    *&result->_issueBand[34]._uplinkLowFreq = xmmword_100195F60;
    result->_issueBand[34]._hasIssue = 0;
    result->_issueBand[35]._bandInfoType = 35;
    result->_issueBand[35]._downlinkLowFreq = 1805.0;
    *&result->_issueBand[35]._downlinkHighFreq = xmmword_100195F70;
    result->_issueBand[35]._uplinkHighFreq = 1785.0;
    result->_issueBand[35]._hasIssue = 0;
    result->_issueBand[36]._bandInfoType = 35;
    *&result->_issueBand[36]._downlinkLowFreq = xmmword_100195F80;
    *&result->_issueBand[36]._uplinkLowFreq = xmmword_100195F90;
    result->_issueBand[36]._hasIssue = 0;
    result->_issueBand[37]._bandInfoType = 35;
    result->_issueBand[37]._downlinkLowFreq = 2010.0;
    *&result->_issueBand[37]._downlinkHighFreq = xmmword_100195FA0;
    result->_issueBand[37]._uplinkHighFreq = 2025.0;
    result->_issueBand[37]._hasIssue = 0;
    result->_issueBand[38]._bandInfoType = 35;
    *&result->_issueBand[38]._downlinkLowFreq = xmmword_100195F30;
    *&result->_issueBand[38]._uplinkLowFreq = xmmword_100195F30;
    result->_issueBand[38]._hasIssue = 0;
    result->_issueBand[39]._bandInfoType = 35;
    result->_issueBand[39]._downlinkLowFreq = 2620.0;
    *&result->_issueBand[39]._downlinkHighFreq = xmmword_100195FB0;
    result->_issueBand[39]._uplinkHighFreq = 2570.0;
    result->_issueBand[39]._hasIssue = 0;
    result->_issueBand[40]._bandInfoType = 35;
    *&result->_issueBand[40]._downlinkLowFreq = xmmword_100195E30;
    *&result->_issueBand[40]._uplinkLowFreq = xmmword_100195E30;
    result->_issueBand[40]._hasIssue = 0;
    result->_issueBand[41]._bandInfoType = 35;
    result->_issueBand[41]._downlinkLowFreq = 3400.0;
    *&result->_issueBand[41]._downlinkHighFreq = xmmword_100195FC0;
    result->_issueBand[41]._uplinkHighFreq = 3600.0;
    result->_issueBand[41]._hasIssue = 0;
    result->_issueBand[42]._bandInfoType = 64;
    *&result->_issueBand[42]._downlinkLowFreq = xmmword_100195FD0;
    *&result->_issueBand[42]._uplinkLowFreq = xmmword_100195FD0;
    result->_issueBand[42]._hasIssue = 0;
    result->_issueBand[43]._bandInfoType = 64;
    result->_issueBand[43]._downlinkLowFreq = 2496.0;
    *&result->_issueBand[43]._downlinkHighFreq = xmmword_100195FE0;
    result->_issueBand[43]._uplinkHighFreq = 2690.0;
    result->_issueBand[43]._hasIssue = 0;
    result->_issueBand[44]._bandInfoType = 35;
    *&result->_issueBand[44]._downlinkLowFreq = xmmword_100195ED0;
    *&result->_issueBand[44]._uplinkLowFreq = xmmword_100195EE0;
    result->_issueBand[44]._hasIssue = 0;
    result->_issueBand[45]._bandInfoType = 64;
    result->_issueBand[45]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[45]._downlinkHighFreq = xmmword_100195E90;
    result->_issueBand[45]._uplinkHighFreq = 1910.0;
    result->_issueBand[45]._hasIssue = 0;
    result->_issueBand[46]._bandInfoType = 64;
    *&result->_issueBand[46]._downlinkLowFreq = xmmword_100195EA0;
    *&result->_issueBand[46]._uplinkLowFreq = xmmword_100195EB0;
    result->_issueBand[46]._hasIssue = 0;
    result->_issueBand[47]._bandInfoType = 64;
    result->_issueBand[47]._downlinkLowFreq = 2110.0;
    *&result->_issueBand[47]._downlinkHighFreq = xmmword_100195FF0;
    result->_issueBand[47]._uplinkHighFreq = 1780.0;
    result->_issueBand[47]._hasIssue = 0;
    result->_issueBand[48]._bandInfoType = 64;
    *&result->_issueBand[48]._downlinkLowFreq = xmmword_100195E50;
    *&result->_issueBand[48]._uplinkLowFreq = xmmword_100195E60;
    result->_issueBand[48]._hasIssue = 0;
    result->_issueBand[49]._bandInfoType = 64;
    result->_issueBand[49]._downlinkLowFreq = 1880.0;
    *&result->_issueBand[49]._downlinkHighFreq = xmmword_100195E70;
    result->_issueBand[49]._uplinkHighFreq = 1920.0;
    result->_issueBand[49]._hasIssue = 0;
    result->_issueBand[50]._bandInfoType = 35;
    *&result->_issueBand[50]._downlinkLowFreq = xmmword_100195F10;
    *&result->_issueBand[50]._uplinkLowFreq = xmmword_100195F20;
    result->_issueBand[50]._hasIssue = 0;
    result->_issueBand[51]._bandInfoType = 35;
    result->_issueBand[51]._downlinkLowFreq = 2300.0;
    *&result->_issueBand[51]._downlinkHighFreq = xmmword_100195E20;
    result->_issueBand[51]._uplinkHighFreq = 2400.0;
    result->_issueBand[51]._hasIssue = 0;
    result->_issueBand[52]._bandInfoType = 64;
    *&result->_issueBand[52]._downlinkLowFreq = xmmword_100195FD0;
    *&result->_issueBand[52]._uplinkLowFreq = xmmword_100195FD0;
    result->_issueBand[52]._hasIssue = 0;
    result->_issueBand[53]._bandInfoType = 35;
    result->_issueBand[53]._downlinkLowFreq = 2110.0;
    *&result->_issueBand[53]._downlinkHighFreq = xmmword_100195F40;
    result->_issueBand[53]._uplinkHighFreq = 1980.0;
    result->_issueBand[53]._hasIssue = 0;
    result->_issueBand[54]._bandInfoType = 64;
    *&result->_issueBand[54]._downlinkLowFreq = xmmword_100195E50;
    *&result->_issueBand[54]._uplinkLowFreq = xmmword_100195E60;
    result->_issueBand[54]._hasIssue = 0;
    result->_issueBand[55]._bandInfoType = 35;
    result->_issueBand[55]._downlinkLowFreq = 3400.0;
    *&result->_issueBand[55]._downlinkHighFreq = xmmword_100195FC0;
    result->_issueBand[55]._uplinkHighFreq = 3600.0;
    result->_issueBand[55]._hasIssue = 0;
    result->_issueBand[56]._bandInfoType = 64;
    result->_issueBand[56]._hasIssue = 0;
    *&result->_issueBand[56]._uplinkLowFreq = 0u;
    *&result->_issueBand[56]._downlinkLowFreq = 0u;
    result->_issueBand[57]._bandInfoType = 35;
    result->_issueBand[57]._downlinkLowFreq = 3550.0;
    *&result->_issueBand[57]._downlinkHighFreq = xmmword_100196000;
    result->_issueBand[57]._uplinkHighFreq = 3700.0;
    result->_issueBand[57]._hasIssue = 0;
    result->_issueBand[58]._bandInfoType = 64;
    *&result->_issueBand[58]._downlinkLowFreq = xmmword_100196010;
    *&result->_issueBand[58]._uplinkLowFreq = xmmword_100196010;
    result->_issueBand[58]._hasIssue = 0;
    result->_issueBand[59]._bandInfoType = 64;
    result->_issueBand[59]._downlinkLowFreq = 3550.0;
    *&result->_issueBand[59]._downlinkHighFreq = xmmword_100196000;
    result->_issueBand[59]._uplinkHighFreq = 3700.0;
    result->_issueBand[59]._hasIssue = 0;
    result->_issueBand[60]._bandInfoType = 64;
    *&result->_issueBand[60]._downlinkLowFreq = xmmword_100195EF0;
    *&result->_issueBand[60]._uplinkLowFreq = xmmword_100195EF0;
    result->_issueBand[60]._hasIssue = 0;
  }

  return result;
}

- (void)dealloc
{
  v3 = 0;
  coexIssues = self->_issueBand[0]._coexIssues;
  do
  {
    for (i = 0; i != 5; ++i)
    {
    }

    ++v3;
    coexIssues += 11;
  }

  while (v3 != 61);
  v6.receiver = self;
  v6.super_class = WCM_WiFiCellCoexIssueBandTable;
  [(WCM_WiFiCellCoexIssueBandTable *)&v6 dealloc];
}

- (BOOL)isFalseTDDIssueBand:(int)band cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  result = 0;
  if (band <= 106)
  {
    if (band > 0x10 || ((1 << band) & 0x11800) == 0)
    {
      return result;
    }

    return highFreq != ulHighFreq || freq != lowFreq;
  }

  if (band == 107 || band == 210 || band == 110)
  {
    return highFreq != ulHighFreq || freq != lowFreq;
  }

  return result;
}

- ($3C9879B8047CCA62E59FC5E141A81388)search_2GWifi_IssueBandForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq matchedIssuBand:(unsigned int *)band
{
  if (band)
  {
    *band = 999;
  }

  v15 = 0;
  for (i = 0; ; ++i)
  {
    if ((self->_issueBand[v15]._bandInfoType & type) != 0 && self->_issueBand[v15]._downlinkLowFreq <= freq && self->_issueBand[v15]._downlinkHighFreq >= highFreq && self->_issueBand[v15]._uplinkLowFreq <= lowFreq && self->_issueBand[v15]._uplinkHighFreq >= ulHighFreq && ![(WCM_WiFiCellCoexIssueBandTable *)self isFalseTDDIssueBand:i cellDlLowFreq:freq cellDlHighFreq:highFreq cellUlLowFreq:lowFreq cellUlHighFreq:ulHighFreq])
    {
      if (band)
      {
        *band = i;
      }

      if (self->_issueBand[v15]._hasIssue)
      {
        break;
      }
    }

    if (++v15 == 33)
    {
      return 0;
    }
  }

  [WCM_Logging logLevel:3 message:@"2G wifi policy table found matched cell issue band: %s", off_10023FC78[i]];
  return &self->_issueBand[v15];
}

- ($3C9879B8047CCA62E59FC5E141A81388)search_5GWifi_IssueBandForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq matchedIssuBand:(unsigned int *)band
{
  if (band)
  {
    *band = 999;
  }

  v15 = 0;
  v16 = &qword_10023FF98;
  v17 = off_10023FD80;
  v18 = 100;
  while (1)
  {
    if ((self->_issueBand[v15 + 33]._bandInfoType & type) != 0 && self->_issueBand[v15 + 33]._downlinkLowFreq <= freq && self->_issueBand[v15 + 33]._downlinkHighFreq >= highFreq && self->_issueBand[v15 + 33]._uplinkLowFreq <= lowFreq && self->_issueBand[v15 + 33]._uplinkHighFreq >= ulHighFreq && ![(WCM_WiFiCellCoexIssueBandTable *)self isFalseTDDIssueBand:v18 cellDlLowFreq:freq cellDlHighFreq:highFreq cellUlLowFreq:lowFreq cellUlHighFreq:ulHighFreq])
    {
      if (band)
      {
        *band = v18;
      }

      if (self->_issueBand[v15 + 33]._hasIssue)
      {
        break;
      }
    }

    ++v18;
    ++v16;
    ++v17;
    if (++v15 == 17)
    {
      return 0;
    }
  }

  v19 = &self->_issueBand[v15 + 33];
  if (v18 - 100 >= 0x11 && (v17 = v16, v18 > 0x20))
  {
    v21 = "<ISSUE_BAND_INVALID: Negative number.>";
  }

  else
  {
    v21 = *v17;
  }

  [WCM_Logging logLevel:3 message:@"5G wifi policy table found matched cell issue band: %s", v21];
  return v19;
}

- ($3C9879B8047CCA62E59FC5E141A81388)search_WifiEnh_IssueBandForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq matchedIssuBand:(unsigned int *)band
{
  if (band)
  {
    *band = 999;
  }

  v15 = &qword_1002402B8;
  v16 = off_1002400A0;
  v17 = off_10023FE08;
  v18 = -4408;
  v19 = -968;
  v20 = 200;
  for (i = 4488; ; i += 88)
  {
    if ((*(&self[1].super.isa + v19) & type) != 0 && *(&self[1]._issueBand[0]._bandInfoType + v19) <= freq && *(&self[1]._issueBand[0]._downlinkLowFreq + v19) >= highFreq && *(&self[1]._issueBand[0]._downlinkHighFreq + v19) <= lowFreq && *(&self[1]._issueBand[0]._uplinkLowFreq + v19) >= ulHighFreq && ![(WCM_WiFiCellCoexIssueBandTable *)self isFalseTDDIssueBand:v20 cellDlLowFreq:freq cellDlHighFreq:highFreq cellUlLowFreq:lowFreq cellUlHighFreq:ulHighFreq])
    {
      if (band)
      {
        *band = v20;
      }

      if (*(&self->super.isa + i) == 1)
      {
        break;
      }
    }

    ++v20;
    ++v15;
    ++v16;
    ++v17;
    v18 -= 88;
    v19 += 88;
    if (!v19)
    {
      return 0;
    }
  }

  v22 = (self - v18);
  if (v20 <= 0xC7 && (v17 = v16, (v20 - 100) >= 0x11) && (v17 = v15, v20 > 0x20))
  {
    v24 = "<ISSUE_BAND_INVALID: Negative number.>";
  }

  else
  {
    v24 = *v17;
  }

  [WCM_Logging logLevel:3 message:@"6G wifi policy table found matched cell issue band: %s", v24];
  return v22;
}

- (void)combineWifiChannelList:(id)list withChannelList:(id)channelList
{
  if (list)
  {
    if (channelList)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [channelList countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(channelList);
            }

            v10 = *(*(&v11 + 1) + 8 * i);
            if (([list containsObject:v10] & 1) == 0)
            {
              [list addObject:v10];
            }
          }

          v7 = [channelList countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)combineWifiChannelList:(id)list withChannelList:(id)channelList inAllowedChannelSet:(id)set
{
  if (list && channelList && set)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [channelList countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(channelList);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (([list containsObject:v12] & 1) == 0 && objc_msgSend(set, "containsObject:", v12))
          {
            [list addObject:v12];
          }
        }

        v9 = [channelList countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    if ([list containsObject:&off_100271088] && objc_msgSend(list, "count") >= 2)
    {
      [list removeObject:&off_100271088];
    }

    if (![list count])
    {
      [list addObject:&off_100271088];
    }
  }

  else if (list && ![list count])
  {

    [list addObject:&off_100271088];
  }
}

- (id)coexIssuesFor:(int)for
{
  v3 = *&for;
  v5 = +[NSMutableArray array];
  if (v3 > 0x20)
  {
    if ((v3 - 100) > 0x10)
    {
      if ((v3 - 200) > 0xA)
      {
        [WCM_Logging logLevel:0 message:@"band %d does not match any of the predefined ranges defined in WCM_WiFiCellCoexIssueBand enum. Thus can not configure internal table _issueBand (which is an array of WCM_WiFiCellCoexIssueBandTableEntry type)", v3];
        return v5;
      }

      v7 = self + 88 * v3;
      v8 = -13192;
    }

    else
    {
      v7 = self + 88 * v3;
      v8 = -5888;
    }

    v6 = &v7[v8];
  }

  else
  {
    v6 = &self->_issueBand[v3];
  }

  v9 = 0;
  coexIssues = v6->_coexIssues;
  do
  {
    if (coexIssues[v9])
    {
      [v5 addObject:?];
    }

    ++v9;
  }

  while (v9 != 5);
  return v5;
}

- (BOOL)configureBy:(id *)by
{
  if (by)
  {
    byCopy = by;
    var0 = by->var0;
    result = 1;
    if (var0 <= 0xD2)
    {
      v7 = 0;
      issueBand = self->_issueBand;
      p_uplinkLowFreq = &self[-3]._issueBand[33]._uplinkLowFreq;
      p_downlinkHighFreq = &self[-2]._issueBand[55]._downlinkHighFreq;
      do
      {
        if (byCopy->var1 >= 0xFu)
        {
          [WCM_Logging logLevel:0 message:@"pConfigTable[%d] has invalid _issueType(%d)", v7, byCopy->var1, v31];
          return 0;
        }

        if (byCopy->var3 > 0xFu || byCopy->var4 > 0xFu || byCopy->var5 > 0xFu || byCopy->var6 >= 0x10u)
        {
          [WCM_Logging logLevel:0 message:@"pConfigTable[%d] has invalid antenna bitmaps", v7, var23, v31];
          return 0;
        }

        if (byCopy->var7 > 0xFu || byCopy->var8 > 0xFu || byCopy->var9 > 0xFu || byCopy->var10 > 0xFu || byCopy->var11 > 0xFu || byCopy->var12 > 0xFu || byCopy->var13 > 0xFu || byCopy->var14 > 0xFu || byCopy->var15 > 0xFu || byCopy->var16 > 0xFu || byCopy->var17 > 0xFu || byCopy->var18 > 0xFu || byCopy->var19 > 0xFu || byCopy->var20 > 0xFu || byCopy->var21 > 0xFu || byCopy->var22 >= 0x10u)
        {
          [WCM_Logging logLevel:0 message:@"pConfigTable[%d] has invalid V2 antenna bitmaps", v7, var23, v31];
          return 0;
        }

        if (byCopy->var23 >= 0x1F)
        {
          v29 = v7;
          var23 = byCopy->var23;
          v25 = @"pConfigTable[%d] has invalid _cellTxPowerLimit(%llu)";
          goto LABEL_62;
        }

        v33 = p_uplinkLowFreq;
        v34 = p_downlinkHighFreq;
        v32 = issueBand;
        if (var0 > 0x20)
        {
          if (var0 - 100 > 0x10)
          {
            if (var0 < 0xC8)
            {
              [WCM_Logging logLevel:0 message:@"pConfigTable->_issueBand does not match any of the predefined ranges defined in WCM_WiFiCellCoexIssueBand enum. Thus can not configure internal table _issueBand (which is an array of WCM_WiFiCellCoexIssueBandTableEntry type). pConfigTable->_issueBand is wrong with the Coex Table plist file at row pConfigTable[%d]", v7];
              v11 = issueBand;
            }

            else
            {
              v11 = &p_uplinkLowFreq[88 * var0];
            }
          }

          else
          {
            v11 = &p_downlinkHighFreq[88 * var0];
          }
        }

        else
        {
          v11 = &issueBand[var0];
        }

        v12 = 0;
        v11->_hasIssue = 1;
        coexIssues = v11->_coexIssues;
        while (1)
        {
          v14 = coexIssues[v12];
          if (!v14)
          {
            break;
          }

          issueType = [(WCM_WiFiCellCoexIssue *)v14 issueType];
          var1 = byCopy->var1;
          if (issueType == var1 && (var1 & 0xFFFFFFFE) != 12)
          {
            [WCM_Logging logLevel:0 message:@"There is a higher priority WCM_WiFiCellCoexIssue with the same issue type as pConfigTable[%d]", v7, var23, v31];
            return 0;
          }

          if (++v12 == 5)
          {
            [WCM_Logging logLevel:0 message:@"There is no slot left for pConfigTable[%d]", v7, var23, v31];
            return 0;
          }
        }

        v18 = [[WCM_WiFiCellCoexIssue alloc] initWithCoexIssueConfig:byCopy];
        if (!v18)
        {
          v26 = sub_10000BFB8(byCopy->var0);
          v27 = byCopy->var1;
          if (v27 == 999)
          {
            v28 = "NO_ISSUE_TYPE";
          }

          else if (v27 <= 0xE)
          {
            v28 = off_10023FE88[v27];
          }

          else
          {
            v28 = "<ISSUE_TYPE_INVALID>";
          }

          [WCM_Logging logLevel:1 message:@"\tskip invliad configuration pConfigTable[%d]: %s - %s", v7, v26, v28];
          return 0;
        }

        coexIssues[v12] = v18;
        v19 = byCopy->var0;
        v20 = "NO_ISSUE_BAND";
        if (v19 != 999)
        {
          v20 = "<ISSUE_BAND_INVALID: beyond the range>";
          if (v19 <= 0xD2)
          {
            if (v19 < 0xC8)
            {
              if ((v19 - 100) > 0x10)
              {
                v20 = "<ISSUE_BAND_INVALID: Negative number.>";
                if (v19 > 0x20)
                {
                  goto LABEL_52;
                }

                v21 = &off_10023FC78[v19];
              }

              else
              {
                v21 = &off_10023FD80[(v19 - 100)];
              }
            }

            else
            {
              v21 = &off_10023FE08[(v19 - 200)];
            }

            v20 = *v21;
          }
        }

LABEL_52:
        v22 = byCopy->var1;
        v23 = "NO_ISSUE_TYPE";
        if (v22 != 999)
        {
          v23 = "<ISSUE_TYPE_INVALID>";
          if (v22 <= 0xE)
          {
            v23 = off_10023FE88[v22];
          }
        }

        [WCM_Logging logLevel:3 message:@"\tconfigure %s with %s at %s", v20, v23, off_10023FE60[v12]];
        v7 = (v7 + 1);
        v24 = byCopy[1].var0;
        ++byCopy;
        var0 = v24;
        result = 1;
        p_uplinkLowFreq = v33;
        p_downlinkHighFreq = v34;
        issueBand = v32;
      }

      while (v24 <= 0xD2);
    }
  }

  else
  {
    v25 = @"pConfigTable = NULL";
LABEL_62:
    [WCM_Logging logLevel:0 message:v25, v29, var23, v31];
    return 0;
  }

  return result;
}

- (id)findWiFiAntennaOrCellTxPowerConstraintCoexIssueByCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiChannel:(int)channel gpsRadioActive:(BOOL)active wifiAntennaConstraint:(BOOL *)self0 cellTxPowerConstraint:(BOOL *)self1
{
  activeCopy = active;
  v14 = *&channel;
  v19 = *&type;
  [WCM_Logging logLevel:5 message:@"Try to find WiFi antenna or Cell Tx power constraints for bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf) wifiChannel(%d) gpsRadioActive(%d)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq, *&channel, active];
  v51 = 0;
  if ((v14 - 1) > 0xC)
  {
    if (v14 > 173)
    {
      v30 = +[WCM_PolicyManager singleton];
      v31 = 999;
      v32 = 999;
      v33 = 0;
      v34 = 0;
      goto LABEL_34;
    }

    v21 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v19 cellDlLowFreq:&v51 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  }

  else
  {
    v21 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v19 cellDlLowFreq:&v51 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  }

  v22 = v21;
  v23 = +[WRM_MetricsService getSingleton];
  v24 = v23;
  if (v23)
  {
    [v23 initLTECoexMetrics];
  }

  getLTECoexMetrics = [v24 getLTECoexMetrics];
  v26 = getLTECoexMetrics;
  v27 = (getLTECoexMetrics + 8);
  if (getLTECoexMetrics)
  {
    *v27 = vdup_n_s32(0x3E7u);
    *(getLTECoexMetrics + 8) = 0;
    if (v22)
    {
      *v27 = v51;
      getLTECoexMetrics[16] = 1;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (!v22)
  {
LABEL_13:
    v29 = @"No matching issue band found";
LABEL_30:
    [WCM_Logging logLevel:3 message:v29];
    v42 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    v38 = 0;
    if (!v26 || !v42)
    {
      return v38;
    }

    if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      return 0;
    }

    v30 = +[WCM_PolicyManager singleton];
    v31 = *v27;
    v32 = v27[1];
    v33 = *(v27 + 8);
    v34 = *(v27 + 9);
LABEL_34:
    [v30 wRMCACoexSubmit_AntSelPolicyStates:v31 IssueType:v32 IsCoexBand:v33 HasAntConstraint:v34];
    return 0;
  }

LABEL_11:
  constraintCopy = constraint;
  powerConstraintCopy = powerConstraint;
  if (v51 == 999)
  {
    v28 = "NO_ISSUE_BAND";
    goto LABEL_24;
  }

  if (v51 > 0xD2)
  {
    v28 = "<ISSUE_BAND_INVALID: beyond the range>";
    goto LABEL_24;
  }

  if (v51 >= 0xC8)
  {
    v35 = &off_10023FE08[v51 - 200];
LABEL_23:
    v28 = *v35;
    goto LABEL_24;
  }

  if (v51 - 100 <= 0x10)
  {
    v35 = &off_10023FD80[v51 - 100];
    goto LABEL_23;
  }

  if (v51 <= 0x20)
  {
    v35 = &off_10023FC78[v51];
    goto LABEL_23;
  }

  v28 = "<ISSUE_BAND_INVALID: Negative number.>";
LABEL_24:
  [WCM_Logging logLevel:3 message:@"need to apply rules for %s", v28];
  v36 = 0;
  var5 = v22->var5;
  while (1)
  {
    v38 = var5[v36];
    if (!v38)
    {
LABEL_29:
      v29 = @"No constraint required";
      goto LABEL_30;
    }

    v39 = [var5[v36] needWiFiAntennaConstraintOnCellDlLowFreq:v14 cellDlHighFreq:activeCopy cellUlLowFreq:freq cellUlHighFreq:highFreq wifiChannel:lowFreq gpsRadioActive:ulHighFreq];
    v40 = [v38 needCellTxPowerConstraintOnCellDlLowFreq:v14 cellDlHighFreq:activeCopy cellUlLowFreq:freq cellUlHighFreq:highFreq wifiChannel:lowFreq gpsRadioActive:ulHighFreq];
    v41 = v40;
    if ((v39 & 1) != 0 || v40)
    {
      break;
    }

    if (++v36 == 5)
    {
      goto LABEL_29;
    }
  }

  if (v39)
  {
    v44 = "WiFi antenna ";
  }

  else
  {
    v44 = "";
  }

  issueType = [v38 issueType];
  if (issueType == 999)
  {
    v46 = "NO_ISSUE_TYPE";
  }

  else if (issueType <= 0xE)
  {
    v46 = off_10023FE88[issueType];
  }

  else
  {
    v46 = "<ISSUE_TYPE_INVALID>";
  }

  v47 = "Cell Tx power ";
  if (!v41)
  {
    v47 = "";
  }

  [WCM_Logging logLevel:3 message:@"%s requires %s%sconstraint", v46, v44, v47];
  *constraintCopy = v39;
  *powerConstraintCopy = v41;
  if (v26)
  {
    v27[1] = [v38 issueType];
    *(v27 + 9) = v39;
  }

  v48 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v26 && v48 && [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  }

  return v38;
}

- (id)findWiFiAntennaOrCellTxPowerConstraintWiFiEnhCoexIssueByCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiChannel:(int)channel wifiCenterFreq:(unsigned int)centerFreq wifiBandwidth:(unsigned int)self0 gpsRadioActive:(BOOL)self1 wifiAntennaConstraint:(BOOL *)self2 cellTxPowerConstraint:(BOOL *)self3
{
  activeCopy = active;
  v15 = *&bandwidth;
  v16 = *&centerFreq;
  v17 = *&channel;
  v22 = *&type;
  [WCM_Logging logLevel:5 message:@"WiFiEnh_: Try to find WiFi antenna or Cell Tx power constraints for bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf), wifiChannel(%d), wifiBandwidth(%d), wifiCenterFreq(%d), gpsRadioActive(%d)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq, *&channel, *&bandwidth, *&centerFreq, active];
  v54 = 0;
  if ((v16 - 2400) > 0x64)
  {
    if ((v16 - 5170) > 0x299)
    {
      if ((v16 - 5925) > 0x4B0)
      {
        v34 = +[WCM_PolicyManager singleton];
        v35 = 999;
        v36 = 999;
        v37 = 0;
        v38 = 0;
        goto LABEL_38;
      }

      v24 = [(WCM_WiFiCellCoexIssueBandTable *)self search_WifiEnh_IssueBandForCellBandInfoType:v22 cellDlLowFreq:&v54 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
    }

    else
    {
      v24 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v22 cellDlLowFreq:&v54 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
    }
  }

  else
  {
    v24 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v22 cellDlLowFreq:&v54 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  }

  v25 = v24;
  v26 = +[WRM_MetricsService getSingleton];
  v27 = v26;
  if (v26)
  {
    [v26 initLTECoexMetrics];
  }

  getLTECoexMetrics = [v27 getLTECoexMetrics];
  v29 = getLTECoexMetrics;
  v30 = getLTECoexMetrics + 1;
  if (getLTECoexMetrics)
  {
    *v30 = vdup_n_s32(0x3E7u);
    getLTECoexMetrics[2].i16[0] = 0;
    if (v25)
    {
      v30->i32[0] = v54;
      getLTECoexMetrics[2].i8[0] = 1;
      goto LABEL_13;
    }
  }

  else if (v25)
  {
LABEL_13:
    constraintCopy = constraint;
    v53 = &getLTECoexMetrics[1];
    if (v54 == 999)
    {
      v31 = "NO_ISSUE_BAND";
      goto LABEL_29;
    }

    if (v54 > 0xD2)
    {
      v31 = "<ISSUE_BAND_INVALID: beyond the range>";
      goto LABEL_29;
    }

    if (v54 < 0xC8)
    {
      if (v54 - 100 > 0x10)
      {
        if (v54 > 0x20)
        {
          v31 = "<ISSUE_BAND_INVALID: Negative number.>";
LABEL_29:
          [WCM_Logging logLevel:3 message:@"need to apply rules for %s", v31];
          v40 = 0;
          var5 = v25->var5;
          do
          {
            v33 = var5[v40];
            if (!v33)
            {
              break;
            }

            v42 = [var5[v40] needWiFiAntennaConstraintWiFiEnhOnCellDlLowFreq:v17 cellDlHighFreq:v16 cellUlLowFreq:v15 cellUlHighFreq:activeCopy wifiChannel:freq wifiCenterFreq:highFreq wifiBandwidth:lowFreq gpsRadioActive:ulHighFreq];
            v43 = [v33 needCellTxPowerConstraintWiFiEnhOnCellDlLowFreq:v17 cellDlHighFreq:v16 cellUlLowFreq:v15 cellUlHighFreq:activeCopy wifiChannel:freq wifiCenterFreq:highFreq wifiBandwidth:lowFreq gpsRadioActive:ulHighFreq];
            v44 = v43;
            if ((v42 & 1) != 0 || v43)
            {
              if (v42)
              {
                v47 = "WiFi antenna ";
              }

              else
              {
                v47 = "";
              }

              issueType = [v33 issueType];
              if (issueType == 999)
              {
                v49 = "NO_ISSUE_TYPE";
              }

              else if (issueType <= 0xE)
              {
                v49 = off_10023FE88[issueType];
              }

              else
              {
                v49 = "<ISSUE_TYPE_INVALID>";
              }

              v50 = "Cell Tx power ";
              if (!v44)
              {
                v50 = "";
              }

              [WCM_Logging logLevel:3 message:@"WiFiEnh_: %s requires %s%sconstraint", v49, v47, v50];
              *constraintCopy = v42;
              *powerConstraint = v44;
              if (v29)
              {
                v53[1] = [v33 issueType];
                *(v53 + 9) = v42;
              }

              v51 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
              if (v29 && v51 && [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
              {
                [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
              }

              return v33;
            }

            ++v40;
          }

          while (v40 != 5);
          [WCM_Logging logLevel:3 message:@"No constraint required"];
          v45 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
          v33 = 0;
          if (!v29 || !v45)
          {
            return v33;
          }

          if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
          {
            return 0;
          }

          v34 = +[WCM_PolicyManager singleton];
          v35 = *v53;
          v36 = v53[1];
          v37 = *(v53 + 8);
          v38 = *(v53 + 9);
          goto LABEL_38;
        }

        v39 = &off_10023FC78[v54];
      }

      else
      {
        v39 = &off_10023FD80[v54 - 100];
      }
    }

    else
    {
      v39 = &off_10023FE08[v54 - 200];
    }

    v31 = *v39;
    goto LABEL_29;
  }

  [WCM_Logging logLevel:3 message:@"No matching issue band found"];
  v32 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v33 = 0;
  if (v29 && v32)
  {
    if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      return 0;
    }

    v34 = +[WCM_PolicyManager singleton];
    v35 = v30->u32[0];
    v36 = v30->u32[1];
    v37 = v30[1].u8[0];
    v38 = v30[1].u8[1];
LABEL_38:
    [v34 wRMCACoexSubmit_AntSelPolicyStates:v35 IssueType:v36 IsCoexBand:v37 HasAntConstraint:v38];
    return 0;
  }

  return v33;
}

- (id)wifiPHSChannelsToBlocklistForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:3 message:@"Try to get WiFi channels to avoid on cell bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v33 = 0;
  v13 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:&v33 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (!v13)
  {
    [WCM_Logging logLevel:3 message:@"No matching issue band found"];
    return &off_100285A60;
  }

  if (v33 == 999)
  {
    v14 = "NO_ISSUE_BAND";
    goto LABEL_14;
  }

  if (v33 > 0xD2)
  {
    v14 = "<ISSUE_BAND_INVALID: beyond the range>";
    goto LABEL_14;
  }

  if (v33 >= 0xC8)
  {
    v16 = &off_10023FE08[v33 - 200];
LABEL_13:
    v14 = *v16;
    goto LABEL_14;
  }

  if (v33 - 100 <= 0x10)
  {
    v16 = &off_10023FD80[v33 - 100];
    goto LABEL_13;
  }

  if (v33 <= 0x20)
  {
    v16 = &off_10023FC78[v33];
    goto LABEL_13;
  }

  v14 = "<ISSUE_BAND_INVALID: Negative number.>";
LABEL_14:
  [WCM_Logging logLevel:3 message:@"need to apply rules for %s", v14];
  v15 = +[NSMutableArray array];
  for (i = 0; i != 5; ++i)
  {
    v18 = v13->var5[i];
    if (!v18)
    {
      break;
    }

    v32 = 0;
    v19 = [v18 wifiPHSChannelsToBlocklistForCellDlLowFreq:0 cellDlHighFreq:&v32 cellUlLowFreq:freq cellUlHighFreq:highFreq wifi5G:lowFreq wifiEssentialChannel:ulHighFreq];
    issueType = [v18 issueType];
    v21 = "NO_ISSUE_TYPE";
    if (issueType != 999)
    {
      v21 = "<ISSUE_TYPE_INVALID>";
      if (issueType <= 0xE)
      {
        v21 = off_10023FE88[issueType];
      }
    }

    [WCM_Logging logLevel:3 message:@"WiFi PHS channels to avoid for %s is %@", v21, v19];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = [v19 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v28 + 1) + 8 * j);
          if (([v15 containsObject:v26] & 1) == 0)
          {
            [v15 addObject:v26];
          }
        }

        v23 = [v19 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v23);
    }

    if (sub_100010258(v15) && v32)
    {
      [v15 removeObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:")}];
      [WCM_Logging logLevel:3 message:@"removed channel %d, combined channels became %@", v32, v15];
    }
  }

  [v15 sortUsingComparator:&stru_10023FAF0];
  if (![v15 count])
  {
    [v15 addObject:&off_100271088];
  }

  [WCM_Logging logLevel:5 message:@"WiFi PHS channels to blocklist %@", v15];
  return v15;
}

- (id)wifiPHSChannelsToBlocklistV2ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:3 message:@"PDHLSV2: Try to get WiFi channels to avoid on cell bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v13 = +[NSMutableArray array];
  *&v35 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  *(&v35 + 1) = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v35)
  {
    [WCM_Logging logLevel:4 message:@"PDHLSV2: Matching issue band (in terms of cellular frequency match) found on 2.4GHz WiFi Band. Need to apply rules for %s", "ISSUE_BAND_WIFI24G_CDMABC10"];
    for (i = 0; i != 5; ++i)
    {
      v15 = *(v35 + 40 + 8 * i);
      if (!v15)
      {
        break;
      }

      v44 = 0;
      v16 = [v15 wifiPHSChannelsToBlocklistForCellDlLowFreq:0 cellDlHighFreq:&v44 cellUlLowFreq:freq cellUlHighFreq:highFreq wifi5G:lowFreq wifiEssentialChannel:ulHighFreq];
      issueType = [v15 issueType];
      v18 = "NO_ISSUE_TYPE";
      if (issueType != 999)
      {
        v18 = "<ISSUE_TYPE_INVALID>";
        if (issueType <= 0xE)
        {
          v18 = off_10023FE88[issueType];
        }
      }

      [WCM_Logging logLevel:3 message:@"PDHLSV2: WiFi 2.4GHz PDHLS channels to avoid for %s is %@", v18, v16];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v19 = [v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v41;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v41 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v40 + 1) + 8 * j);
            if (([v13 containsObject:v23] & 1) == 0)
            {
              [v13 addObject:v23];
            }
          }

          v20 = [v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v20);
      }

      if (sub_100010258(v13) && v44)
      {
        [v13 removeObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:")}];
        [WCM_Logging logLevel:3 message:@"PDHLSV2: WiFi 2.4GHz PDHLS removed channel %d, combined channels became %@", v44, v13];
      }
    }
  }

  if (*(&v35 + 1))
  {
    [WCM_Logging logLevel:4 message:@"PDHLSV2: Matching issue band (in terms of cellular frequency match) found on (FV)GHz WiFi Band. Need to apply rules for %s", "ISSUE_BAND_WIFI5G_LTEB1"];
    v24 = 0;
    do
    {
      v25 = *(*(&v35 + 1) + 40 + 8 * v24);
      if (!v25)
      {
        goto LABEL_41;
      }

      v44 = 0;
      v26 = [v25 wifiChannelsToAvoidForCellDlLowFreq:1 cellDlHighFreq:&v44 cellUlLowFreq:freq cellUlHighFreq:highFreq wifi5G:lowFreq wifiEssentialChannel:ulHighFreq];
      issueType2 = [v25 issueType];
      v28 = "NO_ISSUE_TYPE";
      if (issueType2 != 999)
      {
        v28 = "<ISSUE_TYPE_INVALID>";
        if (issueType2 <= 0xE)
        {
          v28 = off_10023FE88[issueType2];
        }
      }

      [WCM_Logging logLevel:3 message:@"PDHLSV2: WiFi (FV)GHz PDHLS channels to avoid for %s is %@", v28, v26];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = [v26 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v37;
        do
        {
          for (k = 0; k != v30; k = k + 1)
          {
            if (*v37 != v31)
            {
              objc_enumerationMutation(v26);
            }

            v33 = *(*(&v36 + 1) + 8 * k);
            if ([&off_100285A78 containsObject:v33] && (objc_msgSend(v13, "containsObject:", v33) & 1) == 0)
            {
              [v13 addObject:v33];
            }
          }

          v30 = [v26 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v30);
      }

      if (sub_100010258(v13) && v44)
      {
        [v13 removeObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:")}];
        [WCM_Logging logLevel:3 message:@"PDHLSV2: WiFi (FV)GHz PDHLS removed channel %d, combined channels became %@", v44, v13];
      }
    }

    while (++v24 != 5);
  }

  if (v35 != 0)
  {
LABEL_41:
    [v13 sortUsingComparator:&stru_10023FB10];
    goto LABEL_44;
  }

  if (![v13 count])
  {
    [v13 addObject:&off_100271088];
  }

LABEL_44:
  [WCM_Logging logLevel:5 message:@"PDHLSV2: Overall WiFi PDHLS channels to blocklist %@", v13];
  return v13;
}

- (BOOL)isWifiRangingProtectionEnabledForOOBCoexIssueBand:(int)band cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v7 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:*&band cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v7)
  {
    v8 = 0;
    var5 = v7->var5;
    do
    {
      v10 = var5[v8];
      if (!v10)
      {
        break;
      }

      if (([var5[v8] issueType] & 0xFFFFFFFE) == 0xC && objc_msgSend(v10, "enableWifiChannelAvoidance") && (objc_msgSend(v10, "issueType") == 12 || objc_msgSend(v10, "issueType") == 13))
      {
        return 1;
      }

      ++v8;
    }

    while (v8 != 5);
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"No matching issue band found"];
  }

  return 0;
}

- (id)wifiChannelsToEnableWCI2ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:5 message:@"Try to get WiFi channels to enable WCI2 on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v13 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v13)
  {
    v14 = v13;
    v15 = +[NSMutableArray array];
    v16 = 0;
    var5 = v14->var5;
    do
    {
      v18 = var5[v16];
      if (!v18)
      {
        break;
      }

      v19 = [var5[v16] wifiChannelsAffectedByCellUlLowFreq:0 cellUlHighFreq:lowFreq wifi5G:ulHighFreq];
      if ([v19 count])
      {
        issueType = [v18 issueType];
        v21 = "NO_ISSUE_TYPE";
        if (issueType != 999)
        {
          v21 = "<ISSUE_TYPE_INVALID>";
          if (issueType <= 0xE)
          {
            v21 = off_10023FE88[issueType];
          }
        }

        [WCM_Logging logLevel:3 message:@"WiFi channels for %s %@", v21, v19];
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v22 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v29;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v29 != v24)
              {
                objc_enumerationMutation(v19);
              }

              v26 = *(*(&v28 + 1) + 8 * i);
              if (([v15 containsObject:v26] & 1) == 0)
              {
                [v15 addObject:v26];
              }
            }

            v23 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v23);
        }
      }

      ++v16;
    }

    while (v16 != 5);
    [v15 sortUsingComparator:&stru_10023FB30];
    if (![v15 count])
    {
      [v15 addObject:&off_100271088];
    }

    [WCM_Logging logLevel:3 message:@"WiFi channels to enable WCI2 %@", v15];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"No matching issue band found"];
    return &off_100285A90;
  }

  return v15;
}

- (id)findWiFiVictimCoexIssueByCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:5 message:@"findWiFiVictimCoexIssueByCellBandInfoType: Try to get coex issue of WiFi victim  bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v13 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  v14 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (!(v13 | v14))
  {
    [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType: No matching issue band found."];
    return 0;
  }

  v16 = v14;
  if (!v13 && v14)
  {
    [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType: Matching issueBand found only for 5GHz WiFi Band."];
    v17 = 0;
    v18 = v16 + 40;
    while (1)
    {
      v19 = *(v18 + v17);
      if (!v19)
      {
        break;
      }

      if ([objc_msgSend(*(v18 + v17) wifiChannelsAffectedByCellUlLowFreq:1 cellUlHighFreq:lowFreq wifi5G:{ulHighFreq), "count"}])
      {
        issueType = [v19 issueType];
        if (issueType == 999)
        {
          v26 = "NO_ISSUE_TYPE";
        }

        else if (issueType <= 0xE)
        {
          v26 = off_10023FE88[issueType];
        }

        else
        {
          v26 = "<ISSUE_TYPE_INVALID>";
        }

        [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType: Matching issueType (%s) found only for 5GHz WiFi Band.", v26];
        break;
      }

      v17 += 8;
      if (v17 == 40)
      {
        goto LABEL_17;
      }
    }

LABEL_65:
    if ([v19 ulcaPriorityCCWiFi])
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  if (v13 && !v14)
  {
    [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType: Matching issueBand  found only for 2.4GHz WiFi Band."];
    v20 = 0;
    v21 = (v13 + 40);
    while (1)
    {
      v19 = v21[v20];
      if (!v19)
      {
        goto LABEL_65;
      }

      if ([objc_msgSend(v21[v20] wifiChannelsAffectedByCellUlLowFreq:0 cellUlHighFreq:lowFreq wifi5G:{ulHighFreq), "count"}])
      {
        issueType2 = [v19 issueType];
        if (issueType2 == 999)
        {
          v30 = "NO_ISSUE_TYPE";
        }

        else if (issueType2 <= 0xE)
        {
          v30 = off_10023FE88[issueType2];
        }

        else
        {
          v30 = "<ISSUE_TYPE_INVALID>";
        }

        [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType: Matching issueType (%s) found only for 2.4GHz WiFi Band.", v30];
        goto LABEL_65;
      }

      if (++v20 == 5)
      {
LABEL_17:
        v19 = 0;
        goto LABEL_65;
      }
    }
  }

  v22 = 0;
  v23 = (v14 + 40);
  while (1)
  {
    v24 = v23[v22];
    if (!v24)
    {
      break;
    }

    if ([objc_msgSend(v23[v22] wifiChannelsAffectedByCellUlLowFreq:1 cellUlHighFreq:lowFreq wifi5G:{ulHighFreq), "count"}])
    {
      issueType3 = [v24 issueType];
      if (issueType3 == 999)
      {
        v28 = "NO_ISSUE_TYPE";
      }

      else if (issueType3 <= 0xE)
      {
        v28 = off_10023FE88[issueType3];
      }

      else
      {
        v28 = "<ISSUE_TYPE_INVALID>";
      }

      [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType: Matching issueType (%s) found only for 5GHz WiFi Band.", v28];
      break;
    }

    if (++v22 == 5)
    {
      v24 = 0;
      break;
    }
  }

  v31 = 0;
  v32 = (v13 + 40);
  while (1)
  {
    v15 = v32[v31];
    if (!v15)
    {
      break;
    }

    if ([objc_msgSend(v32[v31] wifiChannelsAffectedByCellUlLowFreq:0 cellUlHighFreq:lowFreq wifi5G:{ulHighFreq), "count"}])
    {
      issueType4 = [v15 issueType];
      if (issueType4 == 999)
      {
        v34 = "NO_ISSUE_TYPE";
      }

      else if (issueType4 <= 0xE)
      {
        v34 = off_10023FE88[issueType4];
      }

      else
      {
        v34 = "<ISSUE_TYPE_INVALID>";
      }

      [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType: Matching issueType (%s) found only for 5GHz WiFi Band.", v34];
      break;
    }

    if (++v31 == 5)
    {
      v15 = 0;
      break;
    }
  }

  if ([v15 ulcaPriorityCCWiFi] >= 0x63 && objc_msgSend(v24, "ulcaPriorityCCWiFi") > 0x62)
  {
    [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType:  CC_WiFi(CC2) Priority = PRIORITY_WIFINOCONCERN(99) for both (2.4GHz and 5GHz) WiFi Bands. WiFi is not victim with current Cell Freq."];
    return v15;
  }

  [WCM_Logging logLevel:4 message:@"findWiFiVictimCoexIssueByCellBandInfoType: WiFi Victim issue found on one of the two (2.4GHz and 5GHz) WiFi Bands. Picking the issue with higher CC_WiFi(CC2) Priority."];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"findWiFiVictimCoexIssueByCellBandInfoType: 2G wifi CC_WiFi(CC2) issueType = %d, ULCA Priority=(%d).", [v15 issueType], objc_msgSend(v15, "ulcaPriorityCCWiFi"));
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"findWiFiVictimCoexIssueByCellBandInfoType: 5G wifi CC_WiFi(CC2) issueType = %d, ULCA Priority=(%d).", [v24 issueType], objc_msgSend(v24, "ulcaPriorityCCWiFi"));
  if (![v15 ulcaPriorityCCWiFi] && !objc_msgSend(v24, "ulcaPriorityCCWiFi"))
  {
    return 0;
  }

  if (![v15 ulcaPriorityCCWiFi] && objc_msgSend(v24, "ulcaPriorityCCWiFi"))
  {
    return v24;
  }

  if (![v15 ulcaPriorityCCWiFi] || objc_msgSend(v24, "ulcaPriorityCCWiFi"))
  {
    ulcaPriorityCCWiFi = [v15 ulcaPriorityCCWiFi];
    if (ulcaPriorityCCWiFi >= [v24 ulcaPriorityCCWiFi])
    {
      return v24;
    }
  }

  return v15;
}

- (BOOL)coexBandCheckBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:5 message:@"NewCoexBandCheck-- Checking if the following cell freq match a row in policy table: bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v13 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  return (v13 | [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq]) != 0;
}

- (id)wifiChannelsToEnableWCI2V2ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq pissueBandMatch:(BOOL *)match
{
  v12 = *&type;
  [WCM_Logging logLevel:5 message:@"WCI2_V2: Try to get WiFi channels to enable WCI2 on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v14 = +[NSMutableArray array];
  *&v40 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v12 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  *(&v40 + 1) = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v12 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v40)
  {
    [WCM_Logging logLevel:4 message:@"WCI2_V2: Matching issue band (in terms of cellular frequency match) found on 2.4GHz WiFi Band."];
    v15 = 0;
    v16 = v40 + 40;
    do
    {
      v17 = *(v16 + 8 * v15);
      if (v17)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"V2BtimapDebug_: coexIssue.issueType is %d and the priority p = %d", [*(v16 + 8 * v15) issueType], v15);
        v18 = [v17 wifiChannelsAffectedByCellUlLowFreq:0 cellUlHighFreq:lowFreq wifi5G:ulHighFreq];
        if ([v18 count])
        {
          issueType = [v17 issueType];
          v20 = "NO_ISSUE_TYPE";
          if (issueType != 999)
          {
            v20 = "<ISSUE_TYPE_INVALID>";
            if (issueType <= 0xE)
            {
              v20 = off_10023FE88[issueType];
            }
          }

          [WCM_Logging logLevel:3 message:@"WCI2_V2: WiFi channels for %s %@", v20, v18];
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v21 = [v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v46;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v46 != v23)
                {
                  objc_enumerationMutation(v18);
                }

                v25 = *(*(&v45 + 1) + 8 * i);
                if (([v14 containsObject:v25] & 1) == 0)
                {
                  [v14 addObject:v25];
                }
              }

              v22 = [v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
            }

            while (v22);
          }
        }
      }

      ++v15;
    }

    while (v15 != 5);
  }

  if (*(&v40 + 1))
  {
    [WCM_Logging logLevel:4 message:@"WCI2_V2: Matching issue band (in terms of cellular frequency match) found on (FV)GHz WiFi Band."];
    v26 = 0;
    v27 = *(&v40 + 1) + 40;
    do
    {
      v28 = *(v27 + 8 * v26);
      if (v28)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"V2BtimapDebug_: coexIssue_5GHz.issueType is %d and the priority p = %d", [*(v27 + 8 * v26) issueType], v26);
        v29 = [v28 wifiChannelsAffectedByCellUlLowFreq:1 cellUlHighFreq:lowFreq wifi5G:ulHighFreq];
        if ([v29 count])
        {
          issueType2 = [v28 issueType];
          v31 = "NO_ISSUE_TYPE";
          if (issueType2 != 999)
          {
            v31 = "<ISSUE_TYPE_INVALID>";
            if (issueType2 <= 0xE)
            {
              v31 = off_10023FE88[issueType2];
            }
          }

          [WCM_Logging logLevel:3 message:@"WCI2_V2: WiFi channels for %s %@", v31, v29];
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v32 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v42;
            do
            {
              for (j = 0; j != v33; j = j + 1)
              {
                if (*v42 != v34)
                {
                  objc_enumerationMutation(v29);
                }

                v36 = *(*(&v41 + 1) + 8 * j);
                if ([&off_100285AA8 containsObject:v36] && (objc_msgSend(v14, "containsObject:", v36) & 1) == 0)
                {
                  [v14 addObject:v36];
                }
              }

              v33 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v33);
          }
        }
      }

      ++v26;
    }

    while (v26 != 5);
  }

  if (v40 == 0)
  {
    if (![v14 count])
    {
      [v14 addObject:&off_100271088];
    }

    v37 = 0;
  }

  else
  {
    [v14 sortUsingComparator:&stru_10023FB50];
    v37 = 1;
  }

  *match = v37;
  [WCM_Logging logLevel:3 message:@"WiFi channels to enable WCI2_V2 %@", v14];
  return v14;
}

- (id)wifiChannelsToEnableWCI2WiFiEnhForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq pissueBandMatch:(BOOL *)match
{
  v12 = *&type;
  [WCM_Logging logLevel:5 message:@"WCI2_WiFiEnh: Try to get WiFi channels to enable WCI2 on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v14 = +[NSMutableArray array];
  v15 = +[NSMutableArray array];
  v16 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v12 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  *(&v54 + 1) = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v12 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  v52 = [(WCM_WiFiCellCoexIssueBandTable *)self search_WifiEnh_IssueBandForCellBandInfoType:v12 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  *&v54 = v16;
  if (v16)
  {
    [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh2G5G 2G Part: Matching issue band (in terms of cellular frequency match) found on 2.4GHz WiFi Band."];
    v17 = 0;
    var5 = v16->var5;
    do
    {
      v19 = var5[v17];
      if (v19)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"WCI2_WiFiEnh2G5G 2G Part: coexIssue.issueType is %d and the priority p = %d", [var5[v17] issueType], v17);
        v20 = [v19 wifiChannelsAffectedByCellUlLowFreq:0 cellUlHighFreq:lowFreq wifi5G:ulHighFreq];
        if ([v20 count])
        {
          issueType = [v19 issueType];
          v22 = "NO_ISSUE_TYPE";
          if (issueType != 999)
          {
            v22 = "<ISSUE_TYPE_INVALID>";
            if (issueType <= 0xE)
            {
              v22 = off_10023FE88[issueType];
            }
          }

          [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh2G5G 2G Part: WiFi channels for %s %@", v22, v20];
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v23 = [v20 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v64;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v64 != v25)
                {
                  objc_enumerationMutation(v20);
                }

                v27 = *(*(&v63 + 1) + 8 * i);
                if (([v14 containsObject:v27] & 1) == 0)
                {
                  [v14 addObject:v27];
                }
              }

              v24 = [v20 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v24);
          }
        }
      }

      ++v17;
    }

    while (v17 != 5);
  }

  if (*(&v54 + 1))
  {
    [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh2G5G 5G Part: Matching issue band (in terms of cellular frequency match) found on (FV)GHz WiFi Band."];
    v28 = 0;
    v29 = *(&v54 + 1) + 40;
    do
    {
      v30 = *(v29 + 8 * v28);
      if (v30)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"WCI2_WiFiEnh2G5G 5G Part: coexIssue_5GHz.issueType is %d and the priority p = %d", [*(v29 + 8 * v28) issueType], v28);
        v31 = [v30 wifiChannelsAffectedByCellUlLowFreq:1 cellUlHighFreq:lowFreq wifi5G:ulHighFreq];
        if ([v31 count])
        {
          issueType2 = [v30 issueType];
          v33 = "NO_ISSUE_TYPE";
          if (issueType2 != 999)
          {
            v33 = "<ISSUE_TYPE_INVALID>";
            if (issueType2 <= 0xE)
            {
              v33 = off_10023FE88[issueType2];
            }
          }

          [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh2G5G 5G Part: WiFi channels for %s %@", v33, v31];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v34 = [v31 countByEnumeratingWithState:&v59 objects:v70 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v60;
            do
            {
              for (j = 0; j != v35; j = j + 1)
              {
                if (*v60 != v36)
                {
                  objc_enumerationMutation(v31);
                }

                v38 = *(*(&v59 + 1) + 8 * j);
                if ([&off_100285AC0 containsObject:v38] && (objc_msgSend(v14, "containsObject:", v38) & 1) == 0)
                {
                  [v14 addObject:v38];
                }
              }

              v35 = [v31 countByEnumeratingWithState:&v59 objects:v70 count:16];
            }

            while (v35);
          }
        }
      }

      ++v28;
    }

    while (v28 != 5);
  }

  if (v52)
  {
    [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh Enh Part: Matching issue band (in terms of cellular frequency match) found on Enh WiFi Band."];
    v39 = 0;
    v40 = v52->var5;
    do
    {
      v41 = v40[v39];
      if (v41)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"WCI2_WiFiEnh Enh Part: coexIssue_Enh.issueType is %d and the priority p = %d", [v40[v39] issueType], v39);
        v42 = [v41 wiFiEnhChannelsAffectedByCellUlLowFreq:lowFreq cellUlHighFreq:ulHighFreq];
        if ([v42 count])
        {
          issueType3 = [v41 issueType];
          v44 = "NO_ISSUE_TYPE";
          if (issueType3 != 999)
          {
            v44 = "<ISSUE_TYPE_INVALID>";
            if (issueType3 <= 0xE)
            {
              v44 = off_10023FE88[issueType3];
            }
          }

          [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh Enh Part: WiFi channels for %s %@", v44, v42];
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v45 = [v42 countByEnumeratingWithState:&v55 objects:v69 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v56;
            do
            {
              for (k = 0; k != v46; k = k + 1)
              {
                if (*v56 != v47)
                {
                  objc_enumerationMutation(v42);
                }

                v49 = *(*(&v55 + 1) + 8 * k);
                if ([&off_100285AD8 containsObject:v49] && (objc_msgSend(v15, "containsObject:", v49) & 1) == 0)
                {
                  [v15 addObject:v49];
                }
              }

              v46 = [v42 countByEnumeratingWithState:&v55 objects:v69 count:16];
            }

            while (v46);
          }
        }
      }

      ++v39;
    }

    while (v39 != 5);
  }

  if (v54 == 0)
  {
    if (![v14 count])
    {
      [v14 addObject:&off_100271088];
    }

    v50 = 0;
  }

  else
  {
    [v14 sortUsingComparator:&stru_10023FB70];
    v50 = 1;
  }

  *match = v50;
  [WCM_Logging logLevel:3 message:@"WiFi channels to enable WCI2_WiFiEnh2G5G is %@, combinedChannelsEnh is %@", v14, v15];
  v67[0] = @"wifiChannels2Gand5G";
  v67[1] = @"wifiChannelsEnh";
  v68[0] = v14;
  v68[1] = v15;
  return [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];
}

- (void)getCellDynamicAntBlockingIndex:(int)index cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiChannel:(unsigned int)channel pissueBandMatchAntIdx:(unsigned __int16 *)idx cellAntBlkEnableIdx1:(char *)self0 cellAntBlkEnableIdx2:(char *)self1
{
  v13 = *&channel;
  v18 = *&index;
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager singleton])
  {
    idx1Copy = idx1;
    idx2Copy = idx2;
    [WCM_Logging logLevel:4 message:@"YYDebug_ getCellDynamicAntBlockingIndex bandinfoType(0x%x) dlLowFreq = %lf, dlHighFreq = %lf, ulLowFreq = %lf, ulHighFreq = %lf, wifiChannel = %d", v18, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq, v13];
    v20 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v18 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
    if (v20)
    {
      v21 = v20;
      [WCM_Logging logLevel:4 message:@"YYDebug_ getCellDynamicAntBlockingIndex issueBand5GHz found"];
      v22 = 0;
      var5 = v21->var5;
      do
      {
        v24 = var5[v22];
        if (v24 && [var5[v22] issueType])
        {
          issueType = [v24 issueType];
          [v24 cellFrequencyLimitForOOB];
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"YYDebug_ getCellDynamicAntBlockingIndex: coexIssue_5GHz.issueType is %d and the priority p = %d, cell cutoff frequency = %lf, wifi channels count = %lu, blockIndex (%d, %d)", issueType, v22, v26, [objc_msgSend(v24 "wifiChannelsToApplyCellAntBlocking")], objc_msgSend(v24, "cellAntBlkEnableIdx"), objc_msgSend(v24, "cellAntBlkEnableIdx2"));
          if ([v24 issueType] == 13)
          {
            [v24 cellFrequencyLimitForOOB];
            if (v27 < ulHighFreq)
            {
              [v24 cellBandwidthLimitForOOB];
              if (ulHighFreq - lowFreq > v28)
              {
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                wifiChannelsToApplyCellAntBlocking = [v24 wifiChannelsToApplyCellAntBlocking];
                v30 = [wifiChannelsToApplyCellAntBlocking countByEnumeratingWithState:&v38 objects:v42 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v39;
                  while (2)
                  {
                    for (i = 0; i != v31; i = i + 1)
                    {
                      if (*v39 != v32)
                      {
                        objc_enumerationMutation(wifiChannelsToApplyCellAntBlocking);
                      }

                      v34 = *(*(&v38 + 1) + 8 * i);
                      if ([v34 intValue] == v13)
                      {
                        [v24 cellFrequencyLimitForOOB];
                        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"YYDebug_ matched cutoff frequency %lf and channel %d ", v35, [v34 intValue]);
                        *idx1Copy = [v24 cellAntBlkEnableIdx];
                        *idx2Copy = [v24 cellAntBlkEnableIdx2];
                        return;
                      }
                    }

                    v31 = [wifiChannelsToApplyCellAntBlocking countByEnumeratingWithState:&v38 objects:v42 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }
            }
          }

          else
          {
            +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"getCellDynamicAntBlockingIndex has invalid _issueType(%d)", [v24 issueType]);
          }
        }

        ++v22;
      }

      while (v22 != 5);
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. getCellDynamicAntBlockingIndex"];
  }
}

- (id)wifiChannelsToEnableLTEMBType7ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq pissueBandMatchAntIdx:(unsigned __int16 *)idx
{
  v12 = *&type;
  [WCM_Logging logLevel:5 message:@"2.4GHzWiFi_Type7(extended from LTEMB only): Try to get WiFi channels to enable WCI2 Type7 on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v14 = +[NSMutableArray array];
  *&v42 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v12 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  *(&v42 + 1) = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v12 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v42)
  {
    [WCM_Logging logLevel:4 message:@"2.4GHzWiFi_Type7(extended from LTEMB only): Matching issue band (in terms of cellular frequency match) found on 2.4GHz WiFi Band."];
    v15 = 0;
    v16 = v42 + 40;
    do
    {
      v17 = *(v16 + 8 * v15);
      if (v17)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"2.4GHzWiFi_Type7(extended from LTEMB only): coexIssue.issueType is %d and the priority p = %d", [*(v16 + 8 * v15) issueType], v15);
        cellAntBlkEnableIdx = [v17 cellAntBlkEnableIdx];
        if (cellAntBlkEnableIdx)
        {
          v19 = cellAntBlkEnableIdx;
          v52 = 0;
          v20 = [v17 wifiChannelsToAvoidForCellDlLowFreq:0 cellDlHighFreq:&v52 cellUlLowFreq:freq cellUlHighFreq:highFreq wifi5G:lowFreq wifiEssentialChannel:ulHighFreq];
          if ([v20 count])
          {
            issueType = [v17 issueType];
            v22 = "NO_ISSUE_TYPE";
            if (issueType != 999)
            {
              v22 = "<ISSUE_TYPE_INVALID>";
              if (issueType <= 0xE)
              {
                v22 = off_10023FE88[issueType];
              }
            }

            [WCM_Logging logLevel:3 message:@"2.4GHzWiFi_Type7(extended from LTEMB only): WiFi channels for %s %@", v22, v20];
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v23 = [v20 countByEnumeratingWithState:&v48 objects:v54 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v49;
              do
              {
                for (i = 0; i != v24; i = i + 1)
                {
                  if (*v49 != v25)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v27 = *(*(&v48 + 1) + 8 * i);
                  if (([v14 containsObject:v27] & 1) == 0)
                  {
                    [v14 addObject:v27];
                  }
                }

                v24 = [v20 countByEnumeratingWithState:&v48 objects:v54 count:16];
              }

              while (v24);
            }

            *idx = v19;
            [WCM_Logging logLevel:4 message:@"2.4GHzWiFi_Type7(extended from LTEMB only): Matching issue band (in terms of cellular frequency match) found on 2.4GHz WiFi Band. *pissueBandMatchAntIdx=cellAntBlkEnableIdx(%d)", v19];
          }
        }
      }

      ++v15;
    }

    while (v15 != 5);
  }

  if (*(&v42 + 1))
  {
    [WCM_Logging logLevel:4 message:@"2.4GHzWiFi_Type7(extended from LTEMB only): Matching issue band (in terms of cellular frequency match) found on (FV)GHz WiFi Band."];
    v28 = 0;
    v29 = *(&v42 + 1) + 40;
    do
    {
      v30 = *(v29 + 8 * v28);
      if (v30)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"5GHzWiFi_Type7(extended from LTEMB only): coexIssue_5GHz.issueType is %d and the priority p = %d", [*(v29 + 8 * v28) issueType], v28);
        cellAntBlkEnableIdx2 = [v30 cellAntBlkEnableIdx];
        if (cellAntBlkEnableIdx2)
        {
          v32 = cellAntBlkEnableIdx2;
          v52 = 0;
          v33 = [v30 wifiChannelsToAvoidForCellDlLowFreq:1 cellDlHighFreq:&v52 cellUlLowFreq:freq cellUlHighFreq:highFreq wifi5G:lowFreq wifiEssentialChannel:ulHighFreq];
          if ([v33 count])
          {
            issueType2 = [v30 issueType];
            v35 = "NO_ISSUE_TYPE";
            if (issueType2 != 999)
            {
              v35 = "<ISSUE_TYPE_INVALID>";
              if (issueType2 <= 0xE)
              {
                v35 = off_10023FE88[issueType2];
              }
            }

            [WCM_Logging logLevel:3 message:@"5GHzWiFi_Type7(extended from LTEMB only): WiFi channels for %s %@", v35, v33];
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v36 = [v33 countByEnumeratingWithState:&v44 objects:v53 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v45;
              do
              {
                for (j = 0; j != v37; j = j + 1)
                {
                  if (*v45 != v38)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v40 = *(*(&v44 + 1) + 8 * j);
                  if ([&off_100285AF0 containsObject:v40] && (objc_msgSend(v14, "containsObject:", v40) & 1) == 0)
                  {
                    [v14 addObject:v40];
                  }
                }

                v37 = [v33 countByEnumeratingWithState:&v44 objects:v53 count:16];
              }

              while (v37);
            }

            *idx = v32;
            [WCM_Logging logLevel:4 message:@"5GHzWiFi_Type7(extended from LTEMB only): Matching issue band (in terms of cellular frequency match) found on (FV)GHz WiFi Band. *pissueBandMatchAntIdx=cellAntBlkEnableIdx_5GHz(%d)", v32];
          }
        }
      }

      ++v28;
    }

    while (v28 != 5);
  }

  if (v42 == 0)
  {
    if (![v14 count])
    {
      [v14 addObject:&off_100271088];
    }
  }

  else
  {
    [v14 sortUsingComparator:&stru_10023FB90];
  }

  [WCM_Logging logLevel:3 message:@"5GHzWiFi_Type7(extended from LTEMB only): WiFi channels to enable Type7 MSG after combining 2.4GHz and 5GHz channel lists%@", v14];
  return v14;
}

- (id)wifi2GChannelsToEnableConditionalMitigationForCoexIssueBand:(id *)band cellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq ulcaPriority:(char *)priority
{
  v16 = [NSMutableArray array:band];
  if (!band)
  {
    ulcaPriorityCCWiFi = 99;
    if (!priority)
    {
      return v16;
    }

    goto LABEL_10;
  }

  v17 = 0;
  var5 = band->var5;
  ulcaPriorityCCWiFi = 99;
  do
  {
    v20 = var5[v17];
    if (v20 && [var5[v17] isWifiConditionalMitigationRequired])
    {
      if ([v20 ulcaPriorityCCWiFi] < ulcaPriorityCCWiFi)
      {
        ulcaPriorityCCWiFi = [v20 ulcaPriorityCCWiFi];
      }

      -[WCM_WiFiCellCoexIssueBandTable combineWifiChannelList:withChannelList:inAllowedChannelSet:](self, "combineWifiChannelList:withChannelList:inAllowedChannelSet:", v16, [v20 wifiChannelsToAvoidForCellDlLowFreq:0 cellDlHighFreq:0 cellUlLowFreq:freq cellUlHighFreq:highFreq wifi5G:lowFreq wifiEssentialChannel:ulHighFreq], &off_100285B08);
    }

    ++v17;
  }

  while (v17 != 5);
  if (priority)
  {
LABEL_10:
    *priority = ulcaPriorityCCWiFi;
  }

  return v16;
}

- (id)wifi5GChannelsToEnableConditionalMitigationForCoexIssueBand:(id *)band cellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq ulcaPriority:(char *)priority
{
  v16 = [NSMutableArray array:band];
  if (!band)
  {
    ulcaPriorityCCWiFi = 99;
    if (!priority)
    {
      return v16;
    }

    goto LABEL_10;
  }

  v17 = 0;
  var5 = band->var5;
  ulcaPriorityCCWiFi = 99;
  do
  {
    v20 = var5[v17];
    if (v20 && [var5[v17] isWifiConditionalMitigationRequired])
    {
      if ([v20 ulcaPriorityCCWiFi] < ulcaPriorityCCWiFi)
      {
        ulcaPriorityCCWiFi = [v20 ulcaPriorityCCWiFi];
      }

      -[WCM_WiFiCellCoexIssueBandTable combineWifiChannelList:withChannelList:inAllowedChannelSet:](self, "combineWifiChannelList:withChannelList:inAllowedChannelSet:", v16, [v20 wifiChannelsToAvoidForCellDlLowFreq:1 cellDlHighFreq:0 cellUlLowFreq:freq cellUlHighFreq:highFreq wifi5G:lowFreq wifiEssentialChannel:ulHighFreq], &off_100285B20);
    }

    ++v17;
  }

  while (v17 != 5);
  if (priority)
  {
LABEL_10:
    *priority = ulcaPriorityCCWiFi;
  }

  return v16;
}

- (id)wifiEnhChannelsToEnableConditionalMitigationForCoexIssueBand:(id *)band cellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq ulcaPriority:(char *)priority
{
  v16 = [NSMutableArray array:band];
  if (!band)
  {
    ulcaPriorityCCWiFi = 99;
    if (!priority)
    {
      return v16;
    }

    goto LABEL_10;
  }

  v17 = 0;
  var5 = band->var5;
  ulcaPriorityCCWiFi = 99;
  do
  {
    v20 = var5[v17];
    if (v20 && [var5[v17] isWifiConditionalMitigationRequired])
    {
      if ([v20 ulcaPriorityCCWiFi] < ulcaPriorityCCWiFi)
      {
        ulcaPriorityCCWiFi = [v20 ulcaPriorityCCWiFi];
      }

      -[WCM_WiFiCellCoexIssueBandTable combineWifiChannelList:withChannelList:inAllowedChannelSet:](self, "combineWifiChannelList:withChannelList:inAllowedChannelSet:", v16, [v20 wifiChannelsToAvoidWiFiEnhForCellDlLowFreq:freq cellDlHighFreq:highFreq cellUlLowFreq:lowFreq cellUlHighFreq:ulHighFreq], &off_100285B38);
    }

    ++v17;
  }

  while (v17 != 5);
  if (priority)
  {
LABEL_10:
    *priority = ulcaPriorityCCWiFi;
  }

  return v16;
}

- (id)wifiChannelsToEnableConditionalMitigationForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq ulcaPriority2G:(char *)g ulcaPriority5G:(char *)priority5G ulcaPriorityEnh:(char *)self0
{
  v17 = *&type;
  [WCM_Logging logLevel:5 message:@"WiFi channels for Conditional Mitigation: cell bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v19 = +[NSMutableArray array];
  v20 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v17 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  v21 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v17 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  v22 = [(WCM_WiFiCellCoexIssueBandTable *)self search_WifiEnh_IssueBandForCellBandInfoType:v17 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  v23 = [(WCM_WiFiCellCoexIssueBandTable *)self wifi2GChannelsToEnableConditionalMitigationForCoexIssueBand:v20 cellBandInfoType:v17 cellDlLowFreq:g cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq ulcaPriority:ulHighFreq];
  v24 = [(WCM_WiFiCellCoexIssueBandTable *)self wifi5GChannelsToEnableConditionalMitigationForCoexIssueBand:v21 cellBandInfoType:v17 cellDlLowFreq:priority5G cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq ulcaPriority:ulHighFreq];
  v25 = [(WCM_WiFiCellCoexIssueBandTable *)self wifiEnhChannelsToEnableConditionalMitigationForCoexIssueBand:v22 cellBandInfoType:v17 cellDlLowFreq:enh cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq ulcaPriority:ulHighFreq];
  [v19 addObject:v23];
  [v19 addObject:v24];
  [v19 addObject:v25];
  return v19;
}

- (id)wifiChannelsToEnableType7WiFiEnhForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq pissueBandMatchAntIdx:(unsigned __int16 *)idx
{
  v12 = *&type;
  [WCM_Logging logLevel:5 message:@"WiFiType7_WiFiEnh: Try to get WiFiEnh channels to enable Type7 on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v14 = +[NSMutableArray array];
  v15 = [(WCM_WiFiCellCoexIssueBandTable *)self search_WifiEnh_IssueBandForCellBandInfoType:v12 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v15)
  {
    v16 = v15;
    [WCM_Logging logLevel:4 message:@"WiFiType7_WiFiEnh: Matching issue band (in terms of cellular frequency match) found on (Enh)GHz WiFi Band."];
    v17 = 0;
    var5 = v16->var5;
    do
    {
      v19 = var5[v17];
      if (v19)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"WiFiType7_WiFiEnh: coexIssue_Enh.issueType is %d and the priority p = %d", [var5[v17] issueType], v17);
        cellAntBlkEnableIdx = [v19 cellAntBlkEnableIdx];
        if (cellAntBlkEnableIdx)
        {
          v21 = cellAntBlkEnableIdx;
          v22 = [v19 wifiChannelsToAvoidWiFiEnhForCellDlLowFreq:freq cellDlHighFreq:highFreq cellUlLowFreq:lowFreq cellUlHighFreq:ulHighFreq];
          if ([v22 count])
          {
            issueType = [v19 issueType];
            v24 = "NO_ISSUE_TYPE";
            if (issueType != 999)
            {
              v24 = "<ISSUE_TYPE_INVALID>";
              if (issueType <= 0xE)
              {
                v24 = off_10023FE88[issueType];
              }
            }

            [WCM_Logging logLevel:4 message:@"WiFiType7_WiFiEnh: WiFi channels for %s %@", v24, v22];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v25 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v33;
              do
              {
                for (i = 0; i != v26; i = i + 1)
                {
                  if (*v33 != v27)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v29 = *(*(&v32 + 1) + 8 * i);
                  if ([&off_100285B50 containsObject:v29] && (objc_msgSend(v14, "containsObject:", v29) & 1) == 0)
                  {
                    [v14 addObject:v29];
                  }
                }

                v26 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
              }

              while (v26);
            }

            *idx = v21;
            [WCM_Logging logLevel:4 message:@"WiFiType7_WiFiEnh: Matching issue band (in terms of cellular frequency match) found on (Enh)GHz WiFi Band. *pissueBandMatchWiFiEnhType7AntIdx=cellAntBlkEnableIdx_Enh(%d)", v21];
          }
        }
      }

      ++v17;
    }

    while (v17 != 5);
    [v14 sortUsingComparator:&stru_10023FBB0];
  }

  else if (![v14 count])
  {
    [v14 addObject:&off_100271088];
  }

  [WCM_Logging logLevel:4 message:@"WiFiType7_WiFiEnh: WiFi channels to enable Type7 MSG on Enh Band is %@", v14];
  return v14;
}

- (id)wifi5GHzChannelsToEnableType7MSGForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:5 message:@"DLDebug_: (WiFi_Type7) Try to get WiFi channels to enable WiFi_Type7 on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v13 = +[NSMutableArray array];
  v14 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v14)
  {
    v15 = v14;
    [WCM_Logging logLevel:4 message:@"DLDebug_: (WiFi_Type7) Matching issue band (in terms of cellular frequency match) found on (FV)GHz WiFi Band."];
    v16 = 0;
    var5 = v15->var5;
    do
    {
      v18 = var5[v16];
      if (v18)
      {
        v19 = [var5[v16] wifi5GHzChannelsAffectedByNR79UlLowFreq:lowFreq cellUlHighFreq:ulHighFreq];
        if ([v19 count])
        {
          issueType = [v18 issueType];
          v21 = "NO_ISSUE_TYPE";
          if (issueType != 999)
          {
            v21 = "<ISSUE_TYPE_INVALID>";
            if (issueType <= 0xE)
            {
              v21 = off_10023FE88[issueType];
            }
          }

          [WCM_Logging logLevel:3 message:@"DLDebug_: (WiFi_Type7) WiFi channels for %s %@", v21, v19];
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v22 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v29;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v29 != v24)
                {
                  objc_enumerationMutation(v19);
                }

                v26 = *(*(&v28 + 1) + 8 * i);
                if ([&off_100285B68 containsObject:v26] && (objc_msgSend(v13, "containsObject:", v26) & 1) == 0)
                {
                  [v13 addObject:v26];
                }
              }

              v23 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
            }

            while (v23);
          }
        }
      }

      ++v16;
    }

    while (v16 != 5);
    [v13 sortUsingComparator:&stru_10023FBD0];
  }

  if (![v13 count])
  {
    [v13 addObject:&off_100271088];
  }

  [WCM_Logging logLevel:1 message:@"DLDebug_: WiFi channels to enable Type7 MSG %@", v13];
  return v13;
}

- (id)wifi2GHzLTEB7IMD3EnableType7ForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:5 message:@"TYPE7_2GWIFI_SUPPORT_: Band7 Cell info: bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v13 = +[NSMutableArray array];
  v30 = 0;
  v14 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:&v30 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v14)
  {
    v15 = v14;
    if (v30 == 8 || v30 == 106)
    {
      [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: issueBand confirmed to be B7."];
      [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: LTE Band7 Freq match confirmed."];
      v16 = 0;
      v17 = 0;
      var5 = v15->var5;
      do
      {
        if ([var5[v16] issueType] == 4)
        {
          v17 = var5[v16];
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"TYPE7_2GWIFI_SUPPORT_: IssueType is also matched as %d", [v17 issueType]);
        }

        ++v16;
      }

      while (v16 != 5);
      v19 = [v17 wifiChannelsIMD3ByCellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq wifi5G:ulHighFreq];
      if ([v19 count])
      {
        [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: 2.4GHz WiFi channels with Type7 MSG enabled are: %@", v19];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v27;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v27 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v26 + 1) + 8 * i);
              if ([&off_100285B80 containsObject:v24] && (objc_msgSend(v13, "containsObject:", v24) & 1) == 0)
              {
                [v13 addObject:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
          }

          while (v21);
        }
      }

      [v13 sortUsingComparator:&stru_10023FBF0];
    }

    else
    {
      [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: WARNING: issueBand matched, but is NOT B7."];
    }
  }

  if (![v13 count])
  {
    [v13 addObject:&off_100271088];
  }

  [WCM_Logging logLevel:3 message:@"TYPE7_2GWIFI_SUPPORT_: WiFi channels to enable Type %@", v13];
  return v13;
}

- (BOOL)isLTEB7FoundForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v6 = freq >= 2620.0;
  if (highFreq > 2690.0)
  {
    v6 = 0;
  }

  if (lowFreq <= 2500.0)
  {
    v6 = 0;
  }

  return ulHighFreq < 2570.0 && v6;
}

- (id)wifiChannelsToDisableOCLForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:3 message:@"Try to get WiFi channels to disable OCL on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v13 = +[NSMutableArray array];
  selfCopy = self;
  v42 = v11;
  v14 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v14)
  {
    v15 = 0;
    var5 = v14->var5;
    do
    {
      v17 = var5[v15];
      if (!v17)
      {
        break;
      }

      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        v18 = [v17 wifiOclChannelsAffectedByCellUlLowFreq:0 cellUlHighFreq:lowFreq isWifi5G:ulHighFreq];
      }

      else
      {
        v18 = [v17 wifiChannelsAffectedByCellUlLowFreq:0 cellUlHighFreq:lowFreq wifi5G:ulHighFreq];
      }

      v19 = v18;
      if ([v18 count])
      {
        issueType = [v17 issueType];
        v21 = "NO_ISSUE_TYPE";
        if (issueType != 999)
        {
          v21 = "<ISSUE_TYPE_INVALID>";
          if (issueType <= 0xE)
          {
            v21 = off_10023FE88[issueType];
          }
        }

        [WCM_Logging logLevel:3 message:@"WiFi channels for %s %@", v21, v19];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v22 = [v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v48;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v48 != v24)
              {
                objc_enumerationMutation(v19);
              }

              v26 = *(*(&v47 + 1) + 8 * i);
              if (([v13 containsObject:v26] & 1) == 0)
              {
                [v13 addObject:v26];
              }
            }

            v23 = [v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v23);
        }
      }

      ++v15;
    }

    while (v15 != 5);
  }

  v27 = [(WCM_WiFiCellCoexIssueBandTable *)selfCopy search_5GWifi_IssueBandForCellBandInfoType:v42 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v27)
  {
    v28 = 0;
    v29 = v27->var5;
    do
    {
      v30 = v29[v28];
      if (!v30)
      {
        break;
      }

      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        v31 = [v30 wifiOclChannelsAffectedByCellUlLowFreq:1 cellUlHighFreq:lowFreq isWifi5G:ulHighFreq];
      }

      else
      {
        v31 = [v30 wifiChannelsAffectedByCellUlLowFreq:1 cellUlHighFreq:lowFreq wifi5G:ulHighFreq];
      }

      v32 = v31;
      if ([v31 count])
      {
        issueType2 = [v30 issueType];
        v34 = "NO_ISSUE_TYPE";
        if (issueType2 != 999)
        {
          v34 = "<ISSUE_TYPE_INVALID>";
          if (issueType2 <= 0xE)
          {
            v34 = off_10023FE88[issueType2];
          }
        }

        [WCM_Logging logLevel:3 message:@"WiFi channels for %s %@", v34, v32];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v35 = [v32 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v44;
          do
          {
            for (j = 0; j != v36; j = j + 1)
            {
              if (*v44 != v37)
              {
                objc_enumerationMutation(v32);
              }

              v39 = *(*(&v43 + 1) + 8 * j);
              if (([v13 containsObject:v39] & 1) == 0)
              {
                [v13 addObject:v39];
              }
            }

            v36 = [v32 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v36);
        }
      }

      ++v28;
    }

    while (v28 != 5);
  }

  [WCM_Logging logLevel:3 message:@"WiFi channels to disble OCL %@", v13];
  return v13;
}

- (id)wifiChannelsToDisableOCLWiFiEnhForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  [WCM_Logging logLevel:5 message:@"DisableOCL_WiFiEnh: Try to get WiFi channels to disable OCL on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"OCL_PLIST_INPUT is not enabled"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  v13 = +[NSMutableArray array];
  v14 = +[NSMutableArray array];
  v15 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  v50 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  v51 = [(WCM_WiFiCellCoexIssueBandTable *)self search_WifiEnh_IssueBandForCellBandInfoType:v11 cellDlLowFreq:0 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (v15)
  {
    [WCM_Logging logLevel:4 message:@"DisableOCL_WiFiEnh 2G Part: Matching issue band (in terms of cellular frequency match) found on 2.4GHz WiFi Band."];
    v16 = 0;
    var5 = v15->var5;
    do
    {
      v18 = var5[v16];
      if (v18)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"DisableOCL_WiFiEnh 2G Part: coexIssue.issueType is %d and the priority p = %d", [var5[v16] issueType], v16);
        v19 = [v18 wifiOclChannelsAffectedByCellUlLowFreq:0 cellUlHighFreq:lowFreq isWifi5G:ulHighFreq];
        if ([v19 count])
        {
          issueType = [v18 issueType];
          v21 = "NO_ISSUE_TYPE";
          if (issueType != 999)
          {
            v21 = "<ISSUE_TYPE_INVALID>";
            if (issueType <= 0xE)
            {
              v21 = off_10023FE88[issueType];
            }
          }

          [WCM_Logging logLevel:4 message:@"DisableOCL_WiFiEnh 2G Part: WiFi channels for %s %@", v21, v19];
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v22 = [v19 countByEnumeratingWithState:&v60 objects:v68 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v61;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v61 != v24)
                {
                  objc_enumerationMutation(v19);
                }

                v26 = *(*(&v60 + 1) + 8 * i);
                if (([v13 containsObject:v26] & 1) == 0)
                {
                  [v13 addObject:v26];
                }
              }

              v23 = [v19 countByEnumeratingWithState:&v60 objects:v68 count:16];
            }

            while (v23);
          }
        }
      }

      ++v16;
    }

    while (v16 != 5);
  }

  if (v50)
  {
    [WCM_Logging logLevel:4 message:@"DisableOCL_WiFiEnh 5G Part: Matching issue band (in terms of cellular frequency match) found on (FV)GHz WiFi Band."];
    v27 = 0;
    v28 = v50->var5;
    do
    {
      v29 = v28[v27];
      if (v29)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"DisableOCL_WiFiEnh 5G Part: coexIssue_5GHz.issueType is %d and the priority p = %d", [v28[v27] issueType], v27);
        v30 = [v29 wifiOclChannelsAffectedByCellUlLowFreq:1 cellUlHighFreq:lowFreq isWifi5G:ulHighFreq];
        if ([v30 count])
        {
          issueType2 = [v29 issueType];
          v32 = "NO_ISSUE_TYPE";
          if (issueType2 != 999)
          {
            v32 = "<ISSUE_TYPE_INVALID>";
            if (issueType2 <= 0xE)
            {
              v32 = off_10023FE88[issueType2];
            }
          }

          [WCM_Logging logLevel:4 message:@"DisableOCL_WiFiEnh 5G Part: WiFi channels for %s %@", v32, v30];
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v33 = [v30 countByEnumeratingWithState:&v56 objects:v67 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v57;
            do
            {
              for (j = 0; j != v34; j = j + 1)
              {
                if (*v57 != v35)
                {
                  objc_enumerationMutation(v30);
                }

                v37 = *(*(&v56 + 1) + 8 * j);
                if ([&off_100285B98 containsObject:v37] && (objc_msgSend(v13, "containsObject:", v37) & 1) == 0)
                {
                  [v13 addObject:v37];
                }
              }

              v34 = [v30 countByEnumeratingWithState:&v56 objects:v67 count:16];
            }

            while (v34);
          }
        }
      }

      ++v27;
    }

    while (v27 != 5);
  }

  if (v51)
  {
    [WCM_Logging logLevel:4 message:@"DisableOCL_WiFiEnh Enh Part: Matching issue band (in terms of cellular frequency match) found on Enh WiFi Band."];
    v38 = 0;
    v39 = v51->var5;
    do
    {
      v40 = v39[v38];
      if (v40)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"DisableOCL_WiFiEnh Enh Part: coexIssue_Enh.issueType is %d and the priority p = %d", [v39[v38] issueType], v38);
        v41 = [v40 wiFiEnhOclChannelsAffectedByCellUlLowFreq:lowFreq cellUlHighFreq:ulHighFreq];
        if ([v41 count])
        {
          issueType3 = [v40 issueType];
          v43 = "NO_ISSUE_TYPE";
          if (issueType3 != 999)
          {
            v43 = "<ISSUE_TYPE_INVALID>";
            if (issueType3 <= 0xE)
            {
              v43 = off_10023FE88[issueType3];
            }
          }

          [WCM_Logging logLevel:4 message:@"DisableOCL_WiFiEnh Enh Part: WiFi channels for %s %@", v43, v41];
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v44 = [v41 countByEnumeratingWithState:&v52 objects:v66 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v53;
            do
            {
              for (k = 0; k != v45; k = k + 1)
              {
                if (*v53 != v46)
                {
                  objc_enumerationMutation(v41);
                }

                v48 = *(*(&v52 + 1) + 8 * k);
                if ([&off_100285BB0 containsObject:v48] && (objc_msgSend(v14, "containsObject:", v48) & 1) == 0)
                {
                  [v14 addObject:v48];
                }
              }

              v45 = [v41 countByEnumeratingWithState:&v52 objects:v66 count:16];
            }

            while (v45);
          }
        }
      }

      ++v38;
    }

    while (v38 != 5);
  }

  [WCM_Logging logLevel:3 message:@"DisableOCL_WiFiEnh: WiFi channels to disable OCL combinedChannels is %@, combinedChannelsEnh is %@", v13, v14];
  v64[0] = @"wifiChannels2Gand5G";
  v64[1] = @"wifiChannelsEnh";
  v65[0] = v13;
  v65[1] = v14;
  return [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
}

- (id)GetHFBTBandBlockedChannelMapWithCellUlHighFreq:(double)freq cellUlLowFreq:(double)lowFreq cellDlHighFreq:(double)highFreq cellDlLowFreq:(double)dlLowFreq gpsRadioActive:(BOOL)active coexIssues:(id)issues btBandLowFreq:(double)bandLowFreq btBandHighFreq:(double)self0 btNumChannel:(int)self1
{
  v11 = *&channel;
  activeCopy = active;
  v20 = +[NSArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = [issues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(issues);
        }

        v20 = -[NSArray arrayByAddingObjectsFromArray:](v20, "arrayByAddingObjectsFromArray:", [*(*(&v26 + 1) + 8 * v24) HFBTChannelsToAvoidForCellUlLowFreq:activeCopy cellUlHighFreq:lowFreq cellDlLowFreq:freq cellDlHighFreq:dlLowFreq btBandLowFreq:highFreq btBandHighFreq:bandLowFreq gpsRadioActive:bandHighFreq]);
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [issues countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v22);
  }

  return sub_100011168([(NSArray *)[[NSSet setWithArray:?]] sortedArrayUsingComparator:&stru_10023FC30], v11);
}

- ($3C9879B8047CCA62E59FC5E141A81388)findIssueBandForBandInfoType:(int)type cellDlHighFreq:(double)freq cellDlLowFreq:(double)lowFreq cellUlHighFreq:(double)highFreq cellUlLowFreq:(double)ulLowFreq wifiBand:(int)band
{
  v14 = 0;
  if (band == 2)
  {
    v8 = [(WCM_WiFiCellCoexIssueBandTable *)self search_WifiEnh_IssueBandForCellBandInfoType:*&type cellDlLowFreq:&v14 cellDlHighFreq:lowFreq cellUlLowFreq:freq cellUlHighFreq:ulLowFreq matchedIssuBand:highFreq];
    if (!v8)
    {
      return v8;
    }

    if (v14 == 999)
    {
      v10 = "NO_ISSUE_BAND";
    }

    else if (v14 <= 0xD2)
    {
      if (v14 < 0xC8)
      {
        if (v14 - 100 > 0x10)
        {
          if (v14 > 0x20)
          {
            v10 = "<ISSUE_BAND_INVALID: Negative number.>";
            goto LABEL_31;
          }

          v12 = &off_10023FC78[v14];
        }

        else
        {
          v12 = &off_10023FD80[v14 - 100];
        }
      }

      else
      {
        v12 = &off_10023FE08[v14 - 200];
      }

      v10 = *v12;
    }

    else
    {
      v10 = "<ISSUE_BAND_INVALID: beyond the range>";
    }

LABEL_31:
    [WCM_Logging logLevel:3 message:@"HFAFHDebug_ found match for 6G band %s", v10];
    return v8;
  }

  if (band == 1)
  {
    v8 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:*&type cellDlLowFreq:&v14 cellDlHighFreq:lowFreq cellUlLowFreq:freq cellUlHighFreq:ulLowFreq matchedIssuBand:highFreq];
    if (!v8)
    {
      return v8;
    }

    if (v14 == 999)
    {
      v9 = "NO_ISSUE_BAND";
    }

    else if (v14 <= 0xD2)
    {
      if (v14 < 0xC8)
      {
        if (v14 - 100 > 0x10)
        {
          if (v14 > 0x20)
          {
            v9 = "<ISSUE_BAND_INVALID: Negative number.>";
            goto LABEL_27;
          }

          v11 = &off_10023FC78[v14];
        }

        else
        {
          v11 = &off_10023FD80[v14 - 100];
        }
      }

      else
      {
        v11 = &off_10023FE08[v14 - 200];
      }

      v9 = *v11;
    }

    else
    {
      v9 = "<ISSUE_BAND_INVALID: beyond the range>";
    }

LABEL_27:
    [WCM_Logging logLevel:3 message:@"HFAFHDebug_ found match for 5G band %s", v9];
    return v8;
  }

  if (band)
  {
    return 0;
  }

  else
  {
    return [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:*&type cellDlLowFreq:&v14 cellDlHighFreq:lowFreq cellUlLowFreq:freq cellUlHighFreq:ulLowFreq matchedIssuBand:highFreq];
  }
}

- (id)getHFBTAFHCoexIssuesFromIssueBand:(id *)band
{
  v4 = objc_opt_new();
  if (band)
  {
    v5 = 0;
    var5 = band->var5;
    while (1)
    {
      v7 = var5[v5];
      if (!v7)
      {
        goto LABEL_11;
      }

      if ([var5[v5] issueType] != 12 && objc_msgSend(v7, "issueType") != 13)
      {
        break;
      }

      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        goto LABEL_7;
      }

LABEL_10:
      if (++v5 == 5)
      {
        goto LABEL_11;
      }
    }

    if ([v7 btDiversityBlocklistTypeForC0B1] != 3 || objc_msgSend(v7, "btChannelsToAvoidForC0B1"))
    {
      goto LABEL_10;
    }

LABEL_7:
    [v4 addObject:v7];
    goto LABEL_10;
  }

LABEL_11:

  return [NSArray arrayWithArray:v4];
}

- (id)getWifiDesensedCoexIssueFromIssueBand:(id *)band
{
  if (!band)
  {
    return 0;
  }

  v3 = 0;
  var5 = band->var5;
  while (1)
  {
    v5 = var5[v3];
    if (!v5 || [var5[v3] enableWifiChannelAvoidance])
    {
      break;
    }

    if (++v3 == 5)
    {
      return 0;
    }
  }

  return v5;
}

- (id)HFBTAntBlockingBandsFromWiFiConfigForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  v11 = *&type;
  v13 = [&off_10028D918 mutableCopy];
  v14 = [(WCM_WiFiCellCoexIssueBandTable *)self getWifiDesensedCoexIssueFromIssueBand:[(WCM_WiFiCellCoexIssueBandTable *)self findIssueBandForBandInfoType:v11 cellDlHighFreq:1 cellDlLowFreq:highFreq cellUlHighFreq:freq cellUlLowFreq:ulHighFreq wifiBand:lowFreq]];
  if (v14)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10009B9D0;
    v18[3] = &unk_10023FC58;
    v18[4] = v13;
    [objc_msgSend(v14 HFBTAntBlkBandsForCellUlLowFreq:lowFreq cellUlHighFreq:{ulHighFreq), "enumerateKeysAndObjectsUsingBlock:", v18}];
  }

  v15 = [(WCM_WiFiCellCoexIssueBandTable *)self getWifiDesensedCoexIssueFromIssueBand:[(WCM_WiFiCellCoexIssueBandTable *)self findIssueBandForBandInfoType:v11 cellDlHighFreq:2 cellDlLowFreq:highFreq cellUlHighFreq:freq cellUlLowFreq:ulHighFreq wifiBand:lowFreq]];
  if (v15)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10009BA40;
    v17[3] = &unk_10023FC58;
    v17[4] = v13;
    [objc_msgSend(v15 HFBTAntBlkBandsForCellUlLowFreq:lowFreq cellUlHighFreq:{ulHighFreq), "enumerateKeysAndObjectsUsingBlock:", v17}];
  }

  return v13;
}

- (id)HFBTPreferredChannelMapForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq gpsRadioActive:(BOOL)active
{
  activeCopy = active;
  v13 = *&type;
  [WCM_Logging logLevel:3 message:@"HFAFHDebug_ Try to get preferred channel map on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf) ", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v15 = +[NSMutableData data];
  v16 = [(WCM_WiFiCellCoexIssueBandTable *)self getHFBTAFHCoexIssuesFromIssueBand:[(WCM_WiFiCellCoexIssueBandTable *)self findIssueBandForBandInfoType:v13 cellDlHighFreq:1 cellDlLowFreq:highFreq cellUlHighFreq:freq cellUlLowFreq:ulHighFreq wifiBand:lowFreq]];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"HFAFHDebug_ Coex Issue array count 5G: %lu", [v16 count]);
  if ([v16 count])
  {
    [v15 appendData:{-[WCM_WiFiCellCoexIssueBandTable GetHFBTBandBlockedChannelMapWithCellUlHighFreq:cellUlLowFreq:cellDlHighFreq:cellDlLowFreq:gpsRadioActive:coexIssues:btBandLowFreq:btBandHighFreq:btNumChannel:](self, "GetHFBTBandBlockedChannelMapWithCellUlHighFreq:cellUlLowFreq:cellDlHighFreq:cellDlLowFreq:gpsRadioActive:coexIssues:btBandLowFreq:btBandHighFreq:btNumChannel:", activeCopy, v16, 101, ulHighFreq, lowFreq, highFreq, freq, 5150.0, 5250.0)}];
    v17 = [(WCM_WiFiCellCoexIssueBandTable *)self GetHFBTBandBlockedChannelMapWithCellUlHighFreq:activeCopy cellUlLowFreq:v16 cellDlHighFreq:126 cellDlLowFreq:ulHighFreq gpsRadioActive:lowFreq coexIssues:highFreq btBandLowFreq:freq btBandHighFreq:5725.0 btNumChannel:5850.0];
  }

  else
  {
    [v15 appendData:{sub_100011168(+[NSMutableArray array](NSMutableArray, "array"), 101)}];
    v17 = sub_100011168(+[NSMutableArray array], 126);
  }

  [v15 appendData:v17];
  v18 = [(WCM_WiFiCellCoexIssueBandTable *)self getHFBTAFHCoexIssuesFromIssueBand:[(WCM_WiFiCellCoexIssueBandTable *)self findIssueBandForBandInfoType:v13 cellDlHighFreq:2 cellDlLowFreq:highFreq cellUlHighFreq:freq cellUlLowFreq:ulHighFreq wifiBand:lowFreq]];
  if ([v18 count])
  {
    [v15 appendData:{-[WCM_WiFiCellCoexIssueBandTable GetHFBTBandBlockedChannelMapWithCellUlHighFreq:cellUlLowFreq:cellDlHighFreq:cellDlLowFreq:gpsRadioActive:coexIssues:btBandLowFreq:btBandHighFreq:btNumChannel:](self, "GetHFBTBandBlockedChannelMapWithCellUlHighFreq:cellUlLowFreq:cellDlHighFreq:cellDlLowFreq:gpsRadioActive:coexIssues:btBandLowFreq:btBandHighFreq:btNumChannel:", activeCopy, v18, 125, ulHighFreq, lowFreq, highFreq, freq, 5925.0, 6050.0)}];
    [v15 appendData:{-[WCM_WiFiCellCoexIssueBandTable GetHFBTBandBlockedChannelMapWithCellUlHighFreq:cellUlLowFreq:cellDlHighFreq:cellDlLowFreq:gpsRadioActive:coexIssues:btBandLowFreq:btBandHighFreq:btNumChannel:](self, "GetHFBTBandBlockedChannelMapWithCellUlHighFreq:cellUlLowFreq:cellDlHighFreq:cellDlLowFreq:gpsRadioActive:coexIssues:btBandLowFreq:btBandHighFreq:btNumChannel:", activeCopy, v18, 125, ulHighFreq, lowFreq, highFreq, freq, 6051.0, 6175.0)}];
    [v15 appendData:{-[WCM_WiFiCellCoexIssueBandTable GetHFBTBandBlockedChannelMapWithCellUlHighFreq:cellUlLowFreq:cellDlHighFreq:cellDlLowFreq:gpsRadioActive:coexIssues:btBandLowFreq:btBandHighFreq:btNumChannel:](self, "GetHFBTBandBlockedChannelMapWithCellUlHighFreq:cellUlLowFreq:cellDlHighFreq:cellDlLowFreq:gpsRadioActive:coexIssues:btBandLowFreq:btBandHighFreq:btNumChannel:", activeCopy, v18, 125, ulHighFreq, lowFreq, highFreq, freq, 6176.0, 6300.0)}];
    v19 = [(WCM_WiFiCellCoexIssueBandTable *)self GetHFBTBandBlockedChannelMapWithCellUlHighFreq:activeCopy cellUlLowFreq:v18 cellDlHighFreq:125 cellDlLowFreq:ulHighFreq gpsRadioActive:lowFreq coexIssues:highFreq btBandLowFreq:freq btBandHighFreq:6301.0 btNumChannel:6425.0];
  }

  else
  {
    [v15 appendData:{sub_100011168(+[NSMutableArray array](NSMutableArray, "array"), 125)}];
    [v15 appendData:{sub_100011168(+[NSMutableArray array](NSMutableArray, "array"), 125)}];
    [v15 appendData:{sub_100011168(+[NSMutableArray array](NSMutableArray, "array"), 125)}];
    v19 = sub_100011168(+[NSMutableArray array], 125);
  }

  [v15 appendData:v19];
  [WCM_Logging logLevel:3 message:@"HFAFHDebug_ preferred channel map %@", v15];
  if ([v15 length] != 96)
  {
    [WCM_Logging logLevel:0 message:@"HFAFHDebug_ Wrong map length"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  return v15;
}

- (id)btPreferredChannelMapFromLegacyWiFiConfigForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq gpsRadioActive:(BOOL)active maxChannelsToAvoidForCellOOB:(int)b
{
  v9 = *&b;
  activeCopy = active;
  v15 = *&type;
  v17 = WRM_IPTelephonyController;
  [WCM_Logging logLevel:3 message:@"Try to get BT preferred channel map on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf) gpsRadioActive(%d) maxChannelsToAvoidForCellOOB(%d)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq, active, *&b];
  v18 = +[NSMutableArray array];
  v52 = 0;
  v19 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v15 cellDlLowFreq:&v52 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  if (!v19)
  {
    goto LABEL_43;
  }

  v20 = v19;
  if (v52 == 999)
  {
    v21 = "NO_ISSUE_BAND";
    goto LABEL_13;
  }

  if (v52 > 0xD2)
  {
    v21 = "<ISSUE_BAND_INVALID: beyond the range>";
    goto LABEL_13;
  }

  if (v52 >= 0xC8)
  {
    v22 = &off_10023FE08[v52 - 200];
LABEL_12:
    v21 = *v22;
    goto LABEL_13;
  }

  if (v52 - 100 <= 0x10)
  {
    v22 = &off_10023FD80[v52 - 100];
    goto LABEL_12;
  }

  if (v52 <= 0x20)
  {
    v22 = &off_10023FC78[v52];
    goto LABEL_12;
  }

  v21 = "<ISSUE_BAND_INVALID: Negative number.>";
LABEL_13:
  [WCM_Logging logLevel:3 message:@"need to apply rules for %s", v21];
  v23 = 0;
  v46 = v9;
  var5 = v20->var5;
  v45 = activeCopy;
  do
  {
    v24 = var5[v23];
    if (!v24)
    {
      break;
    }

    if (([var5[v23] enableWifiChannelAvoidance] & 1) != 0 || objc_msgSend(v24, "wifiUlAntennaBitmapOnCellLAT") || objc_msgSend(v24, "wifiUlAntennaBitmapOnCellUAT"))
    {
      v25 = [v24 btChannelsToAvoidForCellUlLowFreq:activeCopy cellUlHighFreq:lowFreq gpsRadioActive:ulHighFreq];
      v26 = [v25 count];
      issueType = [v24 issueType];
      if (v9)
      {
        if ((issueType & 0xFFFFFFFE) == 0xC && v26 > v46)
        {
          [&v17[98] logLevel:3 message:{@"limit OOB affected channels from %lu to %d channels", v26, v9}];
          v25 = [v25 subarrayWithRange:{0, v46}];
          v26 = v46;
        }
      }

      if (v26)
      {
        v29 = v9;
        v30 = v17;
        v31 = [objc_msgSend(v25 objectAtIndex:{0), "intValue"}];
        v32 = [objc_msgSend(v25 objectAtIndex:{v26 - 1), "intValue"}];
        v33 = v30;
        v34 = v30 + 98;
        issueType2 = [v24 issueType];
        v36 = "NO_ISSUE_TYPE";
        if (issueType2 != 999)
        {
          v36 = "<ISSUE_TYPE_INVALID>";
          if (issueType2 <= 0xE)
          {
            v36 = off_10023FE88[issueType2];
          }
        }

        [(__objc2_class *)v34 logLevel:3 message:@"BT channels to avoid for %s: %d ~ %d (%lu channels)", v36, v31, v32, v26];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v37 = [v25 countByEnumeratingWithState:&v48 objects:v53 count:16];
        v17 = v33;
        v9 = v29;
        activeCopy = v45;
        if (v37)
        {
          v38 = v37;
          v39 = *v49;
          while (2)
          {
            for (i = 0; i != v38; i = i + 1)
            {
              if (*v49 != v39)
              {
                objc_enumerationMutation(v25);
              }

              v41 = *(*(&v48 + 1) + 8 * i);
              if (([v18 containsObject:v41] & 1) == 0)
              {
                if (([v18 count] - 80) >= -21)
                {
                  [&v17[98] logLevel:3 message:{@"stop combining at channel %d with %lu total blocklist channels", objc_msgSend(v41, "intValue"), objc_msgSend(v18, "count")}];
                  goto LABEL_43;
                }

                [v18 addObject:v41];
              }
            }

            v38 = [v25 countByEnumeratingWithState:&v48 objects:v53 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  while (v23++ < 4);
LABEL_43:
  v43 = sub_100010994(v18);
  [&v17[98] logLevel:3 message:{@"BT preferred channel map %@", v43}];
  return v43;
}

- (id)btPreferredChannelMapForCellBandInfoType:(int)type cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq gpsRadioActive:(BOOL)active
{
  activeCopy = active;
  v13 = *&type;
  v15 = WRM_IPTelephonyController;
  [WCM_Logging logLevel:3 message:@"Try to get BT preferred channel map on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf) gpsRadioActive(%d)", *&type, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq, active];
  v16 = +[NSMutableArray array];
  v50 = 0;
  v17 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v13 cellDlLowFreq:&v50 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
  v18 = v50;
  if (!v17)
  {
    goto LABEL_35;
  }

  v19 = v17;
  if (v50 == 999)
  {
    v20 = "NO_ISSUE_BAND";
    goto LABEL_12;
  }

  if (v50 > 0xD2)
  {
    v20 = "<ISSUE_BAND_INVALID: beyond the range>";
    goto LABEL_12;
  }

  if (v50 >= 0xC8)
  {
    v21 = v50 - 200;
    v22 = off_10023FE08;
LABEL_10:
    v23 = &v22[v21];
LABEL_11:
    v20 = *v23;
    goto LABEL_12;
  }

  v21 = v50 - 100;
  if (v50 - 100 <= 0x10)
  {
    v22 = off_10023FD80;
    goto LABEL_10;
  }

  if (v50 <= 0x20)
  {
    v23 = &off_10023FC78[v50];
    goto LABEL_11;
  }

  v20 = "<ISSUE_BAND_INVALID: Negative number.>";
LABEL_12:
  [WCM_Logging logLevel:5 message:@"need to apply rules for %s", v20];
  v26 = v19->var5[0];
  var5 = v19->var5;
  v25 = v26;
  if (!v26)
  {
LABEL_35:
    issueType = 999;
    goto LABEL_38;
  }

  v44 = activeCopy;
  v45 = v18;
  v27 = 0;
  while (1)
  {
    issueType = [v25 issueType];
    v29 = [v25 btDiversityBlocklistTypeFor:1];
    if ((v29 & 0xFFFFFFFD) == 1)
    {
      v30 = &__NSArray0__struct;
      if (v29 != 1)
      {
        v30 = [v25 btDiversityChannelsToAvoidForCellBTAntennaCombination:1 cellDlLowFreq:v44 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq gpsRadioActive:ulHighFreq];
      }
    }

    else
    {
      [&v15[98] logLevel:0 message:{@"%@ featuere is enabled but platform configuration is not valid for this feature", @"BTUseC0B1AntennaConfig"}];
      v30 = &__NSArray0__struct;
    }

    v31 = [v30 count];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_msgSend(v30 objectAtIndex:{0), "intValue"}];
      v34 = [objc_msgSend(v30 objectAtIndex:{v32 - 1), "intValue"}];
      issueType2 = [v25 issueType];
      v36 = "NO_ISSUE_TYPE";
      if (issueType2 != 999)
      {
        v36 = "<ISSUE_TYPE_INVALID>";
        if (issueType2 <= 0xE)
        {
          v36 = off_10023FE88[issueType2];
        }
      }

      [WCM_Logging logLevel:3 message:@"BT channels to avoid for %s: %d ~ %d (%lu channels)", v36, v33, v34, v32];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v37 = [v30 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v47;
        while (2)
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v47 != v39)
            {
              objc_enumerationMutation(v30);
            }

            v41 = *(*(&v46 + 1) + 8 * i);
            if (([v16 containsObject:v41] & 1) == 0)
            {
              if (([v16 count] - 80) >= -21)
              {
                v15 = WRM_IPTelephonyController;
                +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"stop combining at channel %d with %lu total blocklist channels", [v41 intValue], objc_msgSend(v16, "count"));
                goto LABEL_37;
              }

              [v16 addObject:v41];
            }
          }

          v38 = [v30 countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }
    }

    if (v27 >= 4)
    {
      break;
    }

    v25 = var5[++v27];
    v15 = WRM_IPTelephonyController;
    v18 = v45;
    if (!v25)
    {
      goto LABEL_38;
    }
  }

  v15 = WRM_IPTelephonyController;
LABEL_37:
  v18 = v45;
LABEL_38:
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v42 = sub_100010994(v16);
  [&v15[98] logLevel:3 message:{@"BT preferred channel map %@", v42}];
  return v42;
}

- (BOOL)wifiBtAgcCoexModeEnableCheckBandCombination:(int)combination cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq coexModeWifiLevel:(int64_t *)level
{
  v13 = *&combination;
  [WCM_Logging logLevel:3 message:@"Check if band is eligible for AgcCoexMode on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf) ", *&combination, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq];
  v34 = 0;
  v15 = +[WRM_MetricsService getSingleton];
  v16 = v15;
  if (v15)
  {
    [v15 initLTECoexMetrics];
  }

  getLTECoexMetrics = [v16 getLTECoexMetrics];
  v18 = getLTECoexMetrics;
  v19 = (getLTECoexMetrics + 56);
  if (getLTECoexMetrics)
  {
    *v19 = xmmword_100196020;
    getLTECoexMetrics[72] = 0;
    v33 = 0;
    v20 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v13 cellDlLowFreq:&v33 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
    *v19 = v33;
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v33 = 0;
    v20 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v13 cellDlLowFreq:&v33 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
    if (!v20)
    {
LABEL_29:
      v28 = 0;
      v25 = 0;
      goto LABEL_30;
    }
  }

  *(v19 + 16) = 1;
  if (v33 == 999)
  {
    v21 = "NO_ISSUE_BAND";
    goto LABEL_18;
  }

  if (v33 > 0xD2)
  {
    v21 = "<ISSUE_BAND_INVALID: beyond the range>";
    goto LABEL_18;
  }

  if (v33 >= 0xC8)
  {
    v22 = &off_10023FE08[v33 - 200];
LABEL_17:
    v21 = *v22;
    goto LABEL_18;
  }

  if (v33 - 100 <= 0x10)
  {
    v22 = &off_10023FD80[v33 - 100];
    goto LABEL_17;
  }

  if (v33 <= 0x20)
  {
    v22 = &off_10023FC78[v33];
    goto LABEL_17;
  }

  v21 = "<ISSUE_BAND_INVALID: Negative number.>";
LABEL_18:
  [WCM_Logging logLevel:3 message:@"AgcCoexMode need to apply rules for %s", v21];
  v23 = v20->var5[0];
  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = 0;
  LODWORD(v25) = 0;
  v26 = &v20->var5[1];
  while (1)
  {
    v27 = [v23 wifiBtAgcCoexModeEnabledInPolicy:&v34 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq agccoexmode:ulHighFreq];
    v28 = v34;
    v29 = v27 ? v34 : 0;
    v25 = (v29 + v25);
    if (v18)
    {
      if (v34 >= 1)
      {
        break;
      }
    }

    if (v34 <= 0 && v24 != 4)
    {
      v23 = v26[v24++];
      if (v23)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  v19[1] = [v23 issueType];
  v28 = v34;
LABEL_30:
  [WCM_Logging logLevel:3 message:@"AgcCoexMode for this band 0 - No NonZero - Yes %d, level %d", v25, v28];
  v30 = v34;
  *level = v34;
  if (v18)
  {
    if (v25 >= 1)
    {
      if (v30 == 2)
      {
        v31 = 2;
      }

      else
      {
        v31 = 3;
      }

      v19[2] = v31;
      v19[3] = 1;
    }

    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  }

  return v25 > 0;
}

- (BOOL)wifiBtAgcCoexModeEnableCheckBandCombinationV2:(int)v2 cellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiChannel:(unsigned int)channel channelCenterFreqMHz:(unsigned int)hz channelBandwidthMHz:(unsigned int)self0 coexModeWifiLevel:(int64_t *)self1 coexModeBTLevel:(int64_t *)self2
{
  v12 = *&hz;
  v17 = *&v2;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v50 = *&channel;
  [WCM_Logging logLevel:5 message:@"DLDebug_ Check if band is eligible for AgcCoexMode on bandinfoType(0x%x) downlink(%lf ~ %lf) uplink(%lf ~ %lf) wifiChannel(%d)", *&v2, *&freq, *&highFreq, *&lowFreq, *&ulHighFreq, *&channel];
  if ((v12 - 2400) <= 0x64)
  {
    v19 = [(WCM_WiFiCellCoexIssueBandTable *)self search_2GWifi_IssueBandForCellBandInfoType:v17 cellDlLowFreq:&v53 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
LABEL_7:
    v20 = v19;
    goto LABEL_8;
  }

  if ((v12 - 5170) <= 0x299)
  {
    v19 = [(WCM_WiFiCellCoexIssueBandTable *)self search_5GWifi_IssueBandForCellBandInfoType:v17 cellDlLowFreq:&v53 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
    goto LABEL_7;
  }

  if ((v12 - 5925) <= 0x4B0)
  {
    v19 = [(WCM_WiFiCellCoexIssueBandTable *)self search_WifiEnh_IssueBandForCellBandInfoType:v17 cellDlLowFreq:&v53 cellDlHighFreq:freq cellUlLowFreq:highFreq cellUlHighFreq:lowFreq matchedIssuBand:ulHighFreq];
    goto LABEL_7;
  }

  v20 = 0;
LABEL_8:
  v21 = +[WRM_MetricsService getSingleton];
  v22 = v21;
  if (v21)
  {
    [v21 initLTECoexMetrics];
  }

  getLTECoexMetrics = [v22 getLTECoexMetrics];
  v24 = (getLTECoexMetrics + 56);
  v52 = getLTECoexMetrics;
  if (getLTECoexMetrics)
  {
    *v24 = xmmword_100196020;
    getLTECoexMetrics[72] = 0;
    *v24 = v53;
  }

  v25 = 1;
  if (!v20)
  {
    v27 = 0;
    v28 = 0;
    v29 = 1;
    goto LABEL_77;
  }

  getLTECoexMetrics[72] = 1;
  v48 = (getLTECoexMetrics + 56);
  if (v53 == 999)
  {
    v26 = "NO_ISSUE_BAND";
  }

  else if (v53 <= 0xD2)
  {
    if (v53 < 0xC8)
    {
      if (v53 - 100 > 0x10)
      {
        if (v53 > 0x20)
        {
          v26 = "<ISSUE_BAND_INVALID: Negative number.>";
          goto LABEL_26;
        }

        v30 = &off_10023FC78[v53];
      }

      else
      {
        v30 = &off_10023FD80[v53 - 100];
      }
    }

    else
    {
      v30 = &off_10023FE08[v53 - 200];
    }

    v26 = *v30;
  }

  else
  {
    v26 = "<ISSUE_BAND_INVALID: beyond the range>";
  }

LABEL_26:
  [WCM_Logging logLevel:3 message:@"AgcCoexMode need to apply rules for %s", v26];
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  LOBYTE(v27) = 0;
  var5 = v20->var5;
  while (1)
  {
    v34 = "NO_ISSUE_BAND";
    if (v53 != 999)
    {
      v34 = "<ISSUE_BAND_INVALID: beyond the range>";
      if (v53 <= 0xD2)
      {
        if (v53 >= 0xC8)
        {
          v35 = &off_10023FE08[v53 - 200];
LABEL_35:
          v34 = *v35;
          goto LABEL_36;
        }

        if (v53 - 100 <= 0x10)
        {
          v35 = &off_10023FD80[v53 - 100];
          goto LABEL_35;
        }

        v34 = "<ISSUE_BAND_INVALID: Negative number.>";
        if (v53 <= 0x20)
        {
          v35 = &off_10023FC78[v53];
          goto LABEL_35;
        }
      }
    }

LABEL_36:
    v36 = var5[v31];
    issueType = [v36 issueType];
    v38 = "NO_ISSUE_TYPE";
    if (issueType != 999)
    {
      v38 = "<ISSUE_TYPE_INVALID>";
      if (issueType <= 0xE)
      {
        v38 = off_10023FE88[issueType];
      }
    }

    [WCM_Logging logLevel:4 message:@"DLDebug_ For coexIssueBand (%s), coexIssueType (%s), coexIssuePrioirty (%s)", v34, v38, off_10023FE60[v31]];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"DLDebug_ For the coexIssue above, the policy table has following entries: wifiBtAgcCoexModeEnable = (%d), btAgcCoexModeEnable = (%d)", [v36 wifiBtAgcCoexModeEnable], objc_msgSend(v36, "btAgcCoexModeEnable"));
    if (!v36)
    {
      break;
    }

    v27 = [v36 wifiBtAgcCoexModeEnabledInPolicyV2:v50 cellDlHighFreq:v12 cellUlLowFreq:mHz cellUlHighFreq:&v55 wifiChannel:&v54 channelCenterFreqMHz:freq channelBandwidthMHz:highFreq coexModeWifiLevel:lowFreq coexModeBTLevel:ulHighFreq];
    [WCM_Logging logLevel:4 message:@"DLDebug_ Upon returning from wifiBtAgcCoexModeEnabledInPolicyV2, coexModeWifiLevel = %ld and coexModeBTLevel = %ld, Flag coexModeBandMatch = %d", v55, v54, v27];
    [WCM_Logging logLevel:4 message:@"DLDebug_ nonzeroCoexModeWiFiMatchedBefore = %d, nonzeroCoexModeBTMatchedBefore = %d", v33 & 1, v32 & 1];
    if (v27)
    {
      v39 = "NO_ISSUE_BAND";
      if (v53 != 999)
      {
        v39 = "<ISSUE_BAND_INVALID: beyond the range>";
        if (v53 <= 0xD2)
        {
          if (v53 < 0xC8)
          {
            if (v53 - 100 > 0x10)
            {
              v39 = "<ISSUE_BAND_INVALID: Negative number.>";
              if (v53 > 0x20)
              {
                goto LABEL_50;
              }

              v40 = &off_10023FC78[v53];
            }

            else
            {
              v40 = &off_10023FD80[v53 - 100];
            }
          }

          else
          {
            v40 = &off_10023FE08[v53 - 200];
          }

          v39 = *v40;
        }
      }

LABEL_50:
      [WCM_Logging logLevel:4 message:@"DLDebug_ coexModeBandMatch = %s for Band %d, Priority %d", v39, v27, v31];
      if (v52)
      {
        v48[1] = [v36 issueType];
      }

      if (v33)
      {
        v33 = 1;
        if ((v32 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v41 = v55;
        *level = v55;
        [WCM_Logging logLevel:4 message:@"DLDebug_ Assign coexModeWifiLevel_temp value (%ld) to *coexModeWifiLevel (%ld)", v41, v41];
        if (v55 < 1)
        {
          v33 = 0;
          if ((v32 & 1) == 0)
          {
LABEL_64:
            v43 = v54;
            *tLevel = v54;
            [WCM_Logging logLevel:4 message:@"DLDebug_ Assign coexModeBTLevel_temp value (%ld) to *coexModeBTLevel (%ld)", v43, v43];
            if (v54 < 1)
            {
              v32 = 0;
              v28 = 1;
              goto LABEL_72;
            }

            if (v52)
            {
              if (v54 == 1)
              {
                v44 = 1;
              }

              else
              {
                v44 = 2;
              }

              v48[3] = v44;
              [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
            }

            v28 = 1;
            [WCM_Logging logLevel:4 message:@"DLDebug_ nonzeroCoexModeBTMatchedBefore switched from FALSE to %d", 1];
            goto LABEL_71;
          }
        }

        else
        {
          if (v52)
          {
            if (v55 == 2)
            {
              v42 = 2;
            }

            else
            {
              v42 = 3;
            }

            v48[2] = v42;
            [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
          }

          v33 = 1;
          [WCM_Logging logLevel:4 message:@"DLDebug_ nonzeroCoexModeWiFiMatchedBefore switched from FALSE to %d", 1];
          if ((v32 & 1) == 0)
          {
            goto LABEL_64;
          }
        }
      }

      v28 = 1;
LABEL_71:
      v32 = 1;
    }

LABEL_72:
    if (++v31 == 5)
    {
      goto LABEL_76;
    }
  }

  v27 = (v27 & 1);
LABEL_76:
  v29 = v32 ^ 1;
  v25 = v33 ^ 1;
  v24 = v48;
LABEL_77:
  if (v52 && (v29 & 1) != 0)
  {
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  }

  if (v52 != 0 && (v25 & 1) != 0)
  {
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  }

  [WCM_Logging logLevel:4 message:@"DLDebug_ wifiBtAgcCoexModeEnableCheckBandCombinationV2 is returning with coexModeBandMatch = %d and coexModeBandMatch_Flag = %d", v27, v28 & 1];
  return v28 & 1;
}

@end