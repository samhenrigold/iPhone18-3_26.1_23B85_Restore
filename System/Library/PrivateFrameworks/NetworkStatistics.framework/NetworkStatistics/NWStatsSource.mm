@interface NWStatsSource
- (BOOL)bundleNameImpliesNonAppInitiated:(id)initiated;
- (BOOL)handleDomainInfo:(nstat_domain_info *)info;
- (BOOL)handleUnknownExtension:(unsigned int)extension data:(id)data;
- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)details length:(int64_t)length;
- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16];
- (unsigned)flagsForProvider:(unsigned int)provider;
- (unsigned)flagsForProvider:(unsigned int)provider sockaddr:(sockaddr *)sockaddr;
- (void)logAddressChangeOn:(unint64_t)on procName:(char *)name variant:(id)variant oldAddress:(sockaddr *)address newAddress:(sockaddr *)newAddress;
- (void)logAttributionChangeOn:(unint64_t)on oldProcName:(char *)name newProcName:(char *)procName oldPid:(int)pid newPid:(int)newPid oldEPid:(int)ePid newEPid:(int)newEPid oldUUID:(unsigned __int8)self0[16] newUUID:(unsigned __int8)self1[16] oldEUUID:(unsigned __int8)self2[16] newEUUID:(unsigned __int8)self3[16] monitor:(id)self4;
- (void)saveOldValues:(nstat_detailed_counts *)values;
- (void)setAttribution:(id)attribution derivation:(int)derivation delegateName:(id)name delegateDerivation:(int)delegateDerivation extensionName:(id)extensionName;
@end

@implementation NWStatsSource

- (unsigned)flagsForProvider:(unsigned int)provider
{
  v3 = provider - 2;
  if (provider - 2 >= 9 || ((0x1CFu >> v3) & 1) == 0)
  {
    [NWStatsSource flagsForProvider:];
  }

  return dword_25BA77980[v3];
}

- (unsigned)flagsForProvider:(unsigned int)provider sockaddr:(sockaddr *)sockaddr
{
  v4 = provider - 2;
  if (provider - 2 >= 9 || ((0x1CFu >> v4) & 1) == 0)
  {
    [NWStatsSource flagsForProvider:sockaddr:];
  }

  v5 = dword_25BA77980[v4];
  sa_family = sockaddr->sa_family;
  v7 = v5 | 8;
  if (sa_family == 2)
  {
    v5 |= 4u;
  }

  if (sa_family == 30)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16]
{
  if (uuid_is_null(bytes))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:bytes];
  }

  return v4;
}

- (void)saveOldValues:(nstat_detailed_counts *)values
{
  self->_prevItems.savedTxBytes = values->nstat_media_stats.ms_total.ts_txbytes;
  *&self->_prevItems.savedRxPackets = *&values->nstat_media_stats.ms_total.ts_rxpackets;
  self->_prevItems.savedTxPackets = values->nstat_media_stats.ms_total.ts_txpackets;
  v3 = *&values->nstat_media_stats.ms_cellular.ts_txpackets;
  v4 = *&values->nstat_media_stats.ms_cellular.ts_rxpackets;
  *&self->_prevItems.savedRxCellularPackets = vzip1q_s64(v4, v3);
  *&self->_prevItems.savedRxCellularBytes = vzip2q_s64(v4, v3);
  v6 = *&values->nstat_media_stats.ms_wifi_infra.ts_rxpackets;
  v5 = *&values->nstat_media_stats.ms_wifi_infra.ts_txpackets;
  *&self->_prevItems.savedRxWiFiInfraPackets = vzip1q_s64(v6, v5);
  *&self->_prevItems.savedRxWiFiInfraBytes = vzip2q_s64(v6, v5);
  v7 = *&values->nstat_media_stats.ms_wifi_non_infra.ts_txpackets;
  v8 = *&values->nstat_media_stats.ms_wifi_non_infra.ts_rxpackets;
  *&self->_prevItems.savedRxWiFiNonInfraPackets = vzip1q_s64(v8, v7);
  *&self->_prevItems.savedRxWiFiNonInfraBytes = vzip2q_s64(v8, v7);
  v10 = *&values->nstat_media_stats.ms_wired.ts_rxpackets;
  v9 = *&values->nstat_media_stats.ms_wired.ts_txpackets;
  *&self->_prevItems.savedRxWiredPackets = vzip1q_s64(v10, v9);
  *&self->_prevItems.savedRxWiredBytes = vzip2q_s64(v10, v9);
  v12 = *&values->nstat_media_stats.ms_bluetooth.ts_rxpackets;
  v11 = *&values->nstat_media_stats.ms_bluetooth.ts_txpackets;
  *&self->_prevItems.savedRxCompanionLinkBluetoothPackets = vzip1q_s64(v12, v11);
  *&self->_prevItems.savedRxCompanionLinkBluetoothBytes = vzip2q_s64(v12, v11);
  v14 = *&values->nstat_media_stats.ms_alternate.ts_rxpackets;
  v13 = *&values->nstat_media_stats.ms_alternate.ts_txpackets;
  *&self->_prevItems.savedRxAlternatePackets = vzip1q_s64(v14, v13);
  *&self->_prevItems.savedRxAlternateBytes = vzip2q_s64(v14, v13);
  self->_prevItems.savedRxDuplicateBytes = values->nstat_rxduplicatebytes;
  *&self->_prevItems.savedRxOutOfOrderBytes = vmovn_s64(*&values->nstat_rxoutoforderbytes);
}

- (void)logAttributionChangeOn:(unint64_t)on oldProcName:(char *)name newProcName:(char *)procName oldPid:(int)pid newPid:(int)newPid oldEPid:(int)ePid newEPid:(int)newEPid oldUUID:(unsigned __int8)self0[16] newUUID:(unsigned __int8)self1[16] oldEUUID:(unsigned __int8)self2[16] newEUUID:(unsigned __int8)self3[16] monitor:(id)self4
{
  v14 = *&newPid;
  v60 = *MEMORY[0x277D85DE8];
  v17 = MEMORY[0x277CCAD78];
  monitorCopy = monitor;
  v19 = [[v17 alloc] initWithUUIDBytes:iD];
  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uUID];
  v38 = [monitorCopy bestIdentifierForUUID:v19 EUUID:v20 pid:v14 epid:newEPid procname:procName derivation:0];

  v22 = NStatGetLog(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:d];
    [v32 UUIDString];
    v23 = v34 = v20;
    selfCopy = self;
    v24 = v19;
    v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uID];
    uUIDString = [v25 UUIDString];
    uUIDString2 = [v24 UUIDString];
    uUIDString3 = [v34 UUIDString];
    *buf = 134220546;
    onCopy2 = on;
    v42 = 2080;
    nameCopy = name;
    v44 = 1024;
    *v45 = pid;
    *&v45[4] = 1024;
    *&v45[6] = ePid;
    v46 = 2112;
    v47 = v23;
    v48 = 2112;
    v49 = uUIDString;
    v50 = 2080;
    procNameCopy = procName;
    v52 = 1024;
    v53 = v14;
    v54 = 1024;
    newEPidCopy = newEPid;
    v56 = 2112;
    v57 = uUIDString2;
    v58 = 2112;
    v59 = uUIDString3;
    _os_log_impl(&dword_25BA3A000, v22, OS_LOG_TYPE_DEFAULT, "Source %lld attribution change, was procname %s pid %d epid %d uuid %@ euuid %@  now %s %d %d %@ %@", buf, 0x60u);

    v19 = v24;
    self = selfCopy;

    v20 = v34;
  }

  v30 = NStatGetLog(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    attributedEntity = [(NWStatsSource *)self attributedEntity];
    *buf = 134218498;
    onCopy2 = on;
    v42 = 2112;
    nameCopy = attributedEntity;
    v44 = 2112;
    *v45 = v38;
    _os_log_impl(&dword_25BA3A000, v30, OS_LOG_TYPE_DEFAULT, "Source %lld old attribution %@ new attribution %@", buf, 0x20u);
  }
}

- (void)logAddressChangeOn:(unint64_t)on procName:(char *)name variant:(id)variant oldAddress:(sockaddr *)address newAddress:(sockaddr *)newAddress
{
  v29 = *MEMORY[0x277D85DE8];
  variantCopy = variant;
  v13 = NStatGetLog(variantCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    attributedEntity = [(NWStatsSource *)self attributedEntity];
    v15 = sockaddrForLogging(address);
    v16 = sockaddrForLogging(newAddress);
    v17 = 138413570;
    v18 = variantCopy;
    v19 = 2048;
    onCopy = on;
    v21 = 2080;
    nameCopy = name;
    v23 = 2112;
    v24 = attributedEntity;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected %@ on flow %lld for process %s attributed %@, was %@ now %@", &v17, 0x3Eu);
  }
}

- (BOOL)handleDomainInfo:(nstat_domain_info *)info
{
  if (!info)
  {
    [NWStatsSource handleDomainInfo:];
  }

  if (info->var0[0])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info];
    [(NWStatsSource *)self setDomainName:v5];
  }

  else
  {
    [(NWStatsSource *)self setDomainName:0];
  }

  if (info->var1[0])
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var1];
    [(NWStatsSource *)self setDomainOwner:v6];
  }

  else
  {
    [(NWStatsSource *)self setDomainOwner:0];
  }

  if (info->var2[0])
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var2];
    [(NWStatsSource *)self setDomainTrackerContext:v7];
  }

  else
  {
    [(NWStatsSource *)self setDomainTrackerContext:0];
  }

  if (info->var3[0])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var3];
    [(NWStatsSource *)self setDomainAttributedBundleId:v8];
  }

  else
  {
    [(NWStatsSource *)self setDomainAttributedBundleId:0];
  }

  [(NWStatsSource *)self setIsTracker:info->var5];
  [(NWStatsSource *)self setIsNonAppInitiated:info->var6];
  [(NWStatsSource *)self setIsSilent:info->var7];
  [(NWStatsSource *)self isSilent];
  return 1;
}

- (BOOL)handleUnknownExtension:(unsigned int)extension data:(id)data
{
  v4 = *&extension;
  dataCopy = data;
  if (!dataCopy)
  {
    [NWStatsSource handleUnknownExtension:data:];
  }

  v7 = dataCopy;
  extensions = [(NWStatsSource *)self extensions];

  if (!extensions)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NWStatsSource *)self setExtensions:v9];
  }

  extensions2 = [(NWStatsSource *)self extensions];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [extensions2 setObject:v7 forKeyedSubscript:v11];

  return 1;
}

- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)details length:(int64_t)length
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if (length >= 8)
  {
    detailsCopy = details;
    if (details)
    {
      while (1)
      {
        var0 = detailsCopy->var0;
        var1 = detailsCopy->var1;
        v9 = length - 8;
        if (length - 8 < var1)
        {
          v10 = NStatGetLog(v5);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v17 = var1;
            *&v17[8] = 2048;
            *&v17[10] = v9;
            _os_log_impl(&dword_25BA3A000, v10, OS_LOG_TYPE_ERROR, "Parsing extensions, item length %zd > remaining size for extensions %zd", buf, 0x16u);
          }

          var1 = v9;
        }

        if (var0 == 1)
        {
          if (var1 <= 0x41F)
          {
            [NWStatsSource processExtendedDetails:length:];
          }

          if (v9 <= 0x41F)
          {
            [NWStatsSource processExtendedDetails:length:];
          }

          v5 = [(NWStatsSource *)self handleDomainInfo:&detailsCopy[1]];
          if (!v5)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v11 = [MEMORY[0x277CBEA90] dataWithBytes:&detailsCopy[1] length:var1];
          v12 = NStatGetLog(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *v17 = var0;
            *&v17[4] = 2048;
            *&v17[6] = var1;
            *&v17[14] = 2112;
            *&v17[16] = v11;
            _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_ERROR, "Unexpected extended item type: %d, length: %zd contents %@", buf, 0x1Cu);
          }

          v13 = [(NWStatsSource *)self handleUnknownExtension:var0 data:v11];
          if (!v13)
          {
LABEL_17:
            LOBYTE(v5) = 0;
            return v5;
          }
        }

        v14 = (var1 + 7) & 0xFFFFFFFFFFFFFFF8;
        length = v9 - v14;
        detailsCopy = (detailsCopy + v14 + 8);
        if (v9 - v14 <= 7)
        {
          LOBYTE(v5) = 1;
          return v5;
        }
      }
    }
  }

  return v5;
}

- (BOOL)bundleNameImpliesNonAppInitiated:(id)initiated
{
  initiatedCopy = initiated;
  v4 = initiatedCopy;
  if (bundleNameImpliesNonAppInitiated__onceToken != -1)
  {
    [NWStatsSource bundleNameImpliesNonAppInitiated:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!initiatedCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [bundleNameImpliesNonAppInitiated__nonAppInitiatedBundleIDs containsObject:v4];
LABEL_6:

  return v5;
}

void __50__NWStatsSource_bundleNameImpliesNonAppInitiated___block_invoke()
{
  v0 = bundleNameImpliesNonAppInitiated__nonAppInitiatedBundleIDs;
  bundleNameImpliesNonAppInitiated__nonAppInitiatedBundleIDs = &unk_286D3E5B8;
}

- (void)setAttribution:(id)attribution derivation:(int)derivation delegateName:(id)name delegateDerivation:(int)delegateDerivation extensionName:(id)extensionName
{
  v8 = *&delegateDerivation;
  v9 = *&derivation;
  nameCopy = name;
  extensionNameCopy = extensionName;
  v13 = MEMORY[0x277CCACA8];
  attributionCopy = attribution;
  v15 = [[v13 alloc] initWithString:attributionCopy];

  [(NWStatsSource *)self setAttributedEntity:v15];
  [(NWStatsSource *)self setAttributionReason:v9];
  [(NWStatsSource *)self setDelegateAttributionReason:v8];
  if (nameCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:nameCopy];
    [(NWStatsSource *)self setDelegateName:v16];
  }

  if (extensionNameCopy)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:extensionNameCopy];
    [(NWStatsSource *)self setAttributedExtension:v17];
  }
}

@end