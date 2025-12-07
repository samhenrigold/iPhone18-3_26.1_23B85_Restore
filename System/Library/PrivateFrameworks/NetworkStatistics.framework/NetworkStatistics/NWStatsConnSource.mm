@interface NWStatsConnSource
- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)details length:(int64_t)length;
- (BOOL)updateWithDetails:(nstat_msg_src_details_convenient *)details length:(int64_t)length monitor:(id)monitor;
- (NWStatsConnSource)initWithDetails:(nstat_msg_src_details_convenient *)details length:(int64_t)length monitor:(id)monitor;
- (id)createSnapshot:(int)snapshot firstOccurrence:(BOOL)occurrence;
- (id)description;
- (void)deriveAttribution:(id)attribution;
- (void)populateConnProperties:(id)properties fromDomainInfo:(nstat_domain_info *)info;
- (void)significantMetadataChange:(nstat_connection_descriptor *)change monitor:(id)monitor;
@end

@implementation NWStatsConnSource

- (id)description
{
  p_nstatConnDetails = &self->_nstatConnDetails;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  pname = p_nstatConnDetails->conn_desc.pname;
  attributedEntity = [(NWStatsSource *)self attributedEntity];
  pid = p_nstatConnDetails->conn_desc.pid;
  epid = p_nstatConnDetails->conn_desc.epid;
  v9 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatConnDetails->conn_desc.uuid];
  v10 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatConnDetails->conn_desc.euuid];
  v11 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatConnDetails->conn_desc.fuuid];
  [(NWStatsSource *)self creationTimestamp];
  v13 = dateStringMillisecondsFromReferenceInterval(v12);
  v14 = [v4 initWithFormat:@"NWStatsConnSource %s attributed %@ pid %d epid %d uuid %@ euuid %@ fuuid %@ started %@", pname, attributedEntity, pid, epid, v9, v10, v11, v13];

  return v14;
}

- (void)populateConnProperties:(id)properties fromDomainInfo:(nstat_domain_info *)info
{
  propertiesCopy = properties;
  [propertiesCopy setIsSilent:info->var7];
  [propertiesCopy setIsTracker:info->var5];
  [propertiesCopy setIsNonAppInitiated:info->var6];
  if (([propertiesCopy isSilent] & 1) == 0)
  {
    if (info->var0[0])
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info];
      [propertiesCopy setDomainName:v5];
    }

    else
    {
      [propertiesCopy setDomainName:0];
    }

    if (info->var1[0])
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var1];
      [propertiesCopy setDomainOwner:v6];
    }

    else
    {
      [propertiesCopy setDomainOwner:0];
    }

    if (info->var2[0])
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var2];
      [propertiesCopy setDomainTrackerContext:v7];
    }

    else
    {
      [propertiesCopy setDomainTrackerContext:0];
    }

    if (info->var3[0])
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:info->var3];
      [propertiesCopy setDomainAttributedBundleId:v8];
    }

    else
    {
      [propertiesCopy setDomainAttributedBundleId:0];
    }

    if (info->var4.var0.sin_len)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&info->var4 length:info->var4.var0.sin_len];
      [propertiesCopy setRemoteAddress:v9];
    }

    else
    {
      [propertiesCopy setRemoteAddress:0];
    }
  }
}

- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)details length:(int64_t)length
{
  selfCopy = self;
  v26 = *MEMORY[0x277D85DE8];
  LOBYTE(self) = 1;
  if (length >= 8)
  {
    detailsCopy = details;
    if (details)
    {
      while (1)
      {
        var0 = detailsCopy->var0;
        v7 = length - 8;
        if (length - 8 >= detailsCopy->var1)
        {
          var1 = detailsCopy->var1;
        }

        else
        {
          var1 = length - 8;
        }

        if (var0 == 4 || var0 == 1)
        {
          if (var1 <= 0x41F)
          {
            [NWStatsConnSource processExtendedDetails:length:];
          }

          if (v7 <= 0x41F)
          {
            [NWStatsConnSource processExtendedDetails:length:];
          }

          LODWORD(self) = [(NWStatsSource *)selfCopy handleDomainInfo:&detailsCopy[1]];
          if (!self)
          {
            return self;
          }

          v10 = objc_alloc_init(NWStatsConnProperties);
          [(NWStatsConnSource *)selfCopy populateConnProperties:v10 fromDomainInfo:&detailsCopy[1]];
          if (var0 == 1)
          {
            v11 = &OBJC_IVAR___NWStatsConnSource__currentProperties;
          }

          else
          {
            v11 = &OBJC_IVAR___NWStatsConnSource__ancestralProperties;
          }

          v12 = *v11;
          v13 = *(&selfCopy->super.super.isa + v12);
          *(&selfCopy->super.super.isa + v12) = v10;
        }

        else
        {
          v14 = [MEMORY[0x277CBEA90] dataWithBytes:&detailsCopy[1] length:var1];
          v15 = NStatGetLog(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            v21 = var0;
            v22 = 2048;
            v23 = var1;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_ERROR, "NWStatsConn Unexpected extended item type: %d, length: %zd contents %@", buf, 0x1Cu);
          }

          v17 = [(NWStatsSource *)selfCopy handleUnknownExtension:var0 data:v14];
          if (!v17)
          {
            LOBYTE(self) = 0;
            return self;
          }
        }

        v18 = (var1 + 7) & 0x1FFFFFFF8;
        length = v7 - v18;
        detailsCopy = (detailsCopy + v18 + 8);
        if (v7 - v18 <= 7)
        {
          LOBYTE(self) = 1;
          return self;
        }
      }
    }
  }

  return self;
}

- (void)deriveAttribution:(id)attribution
{
  attributionCopy = attribution;
  v13 = 0;
  [NWStatsProtocolSnapshot _referenceIntervalWithContinuousTime:self->_nstatConnDetails.conn_desc.start_timestamp];
  [(NWStatsSource *)self setCreationTimestamp:?];
  v5 = [(NWStatsSource *)self _createNSUUIDForBytes:self->_nstatConnDetails.conn_desc.uuid];
  v6 = [(NWStatsSource *)self _createNSUUIDForBytes:self->_nstatConnDetails.conn_desc.euuid];
  v7 = [attributionCopy bestIdentifierForUUID:v5 EUUID:v6 pid:self->_nstatConnDetails.conn_desc.pid epid:self->_nstatConnDetails.conn_desc.epid procname:self->_nstatConnDetails.conn_desc.pname derivation:&v13 + 4];
  [(NWStatsSource *)self setAttributedEntity:v7];
  [(NWStatsSource *)self setAttributionReason:HIDWORD(v13)];
  if (HIDWORD(v13) == 2)
  {
    v8 = [attributionCopy extensionNameForUUID:v6];
    [(NWStatsSource *)self setAttributedExtension:v8];
  }

  if (*self->_nstatConnDetails.conn_desc.uuid != *self->_nstatConnDetails.conn_desc.euuid || *&self->_nstatConnDetails.conn_desc.uuid[8] != *&self->_nstatConnDetails.conn_desc.euuid[8])
  {
    v10 = [attributionCopy bestIdentifierForUUID:v5 EUUID:0 pid:self->_nstatConnDetails.conn_desc.pid epid:0 procname:self->_nstatConnDetails.conn_desc.pname derivation:&v13];
    [(NWStatsSource *)self setDelegateName:v10];
  }

  [(NWStatsSource *)self setDelegateAttributionReason:HIDWORD(v13)];
  if ([attributionCopy debugMode])
  {
    v11 = [attributionCopy allIdentifiersForUUID:v5 EUUID:v6 pid:self->_nstatConnDetails.conn_desc.pid epid:self->_nstatConnDetails.conn_desc.epid procname:self->_nstatConnDetails.conn_desc.pname];
    lookupResults = self->_lookupResults;
    self->_lookupResults = v11;
  }
}

- (NWStatsConnSource)initWithDetails:(nstat_msg_src_details_convenient *)details length:(int64_t)length monitor:(id)monitor
{
  monitorCopy = monitor;
  v13.receiver = self;
  v13.super_class = NWStatsConnSource;
  v9 = [(NWStatsConnSource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    memcpy(&v9->_nstatConnDetails, details, sizeof(v9->_nstatConnDetails));
    [(NWStatsSource *)v10 setFlowFlags:[(NWStatsSource *)v10 flagsForProvider:v10->_nstatConnDetails.provider]];
    [(NWStatsConnSource *)v10 deriveAttribution:monitorCopy];
    v11 = [monitorCopy currentForegroundStateForProcessWithPid:v10->_nstatConnDetails.conn_desc.epid];
    [(NWStatsSource *)v10 setStartAppStateIsForeground:v11];
    [(NWStatsSource *)v10 setUpdateAppStateIsForeground:v11];
    if (details->hdr.hdr.type == 10009)
    {
      [(NWStatsConnSource *)v10 processExtendedDetails:&details->var0.conn + 1 length:length - 688];
    }
  }

  return v10;
}

- (void)significantMetadataChange:(nstat_connection_descriptor *)change monitor:(id)monitor
{
  monitorCopy = monitor;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (change->pid == self->_nstatConnDetails.conn_desc.pid)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v6 setObject:v8 forKeyedSubscript:@"newPid"];

    v7 = 0x8000;
  }

  if (change->epid == self->_nstatConnDetails.conn_desc.epid)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 | 0x10000;
  }

  if (uuid_compare(change->uuid, self->_nstatConnDetails.conn_desc.uuid))
  {
    v10 = v9 | 0x1000;
  }

  else
  {
    v10 = v9;
  }

  if (uuid_compare(change->euuid, self->_nstatConnDetails.conn_desc.euuid))
  {
    if (uuid_compare(self->_nstatConnDetails.conn_desc.uuid, self->_nstatConnDetails.conn_desc.euuid))
    {
      v10 |= 0x2000u;
    }

    else
    {
      v10 |= 0x4000u;
    }
  }

  if (memcmp(change->pname, self->_nstatConnDetails.conn_desc.pname, 0x40uLL))
  {
    v10 |= 0x200000u;
  }

  if ((v10 & 0xFFFFF000) != 0)
  {
    LODWORD(v11) = change->epid;
    [(NWStatsSource *)self logAttributionChangeOn:self->_nstatConnDetails.srcref oldProcName:self->_nstatConnDetails.conn_desc.pname newProcName:change->pname oldPid:self->_nstatConnDetails.conn_desc.pid newPid:change->pid oldEPid:self->_nstatConnDetails.conn_desc.epid newEPid:v11 oldUUID:self->_nstatConnDetails.conn_desc.uuid newUUID:change->uuid oldEUUID:self->_nstatConnDetails.conn_desc.euuid newEUUID:change->euuid monitor:monitorCopy];
    [(NWStatsConnSource *)self deriveAttribution:monitorCopy];
  }

  [(NWStatsSource *)self setFlowFlags:[(NWStatsSource *)self flowFlags]| v10];
}

- (BOOL)updateWithDetails:(nstat_msg_src_details_convenient *)details length:(int64_t)length monitor:(id)monitor
{
  monitorCopy = monitor;
  type = details->hdr.hdr.type;
  if (type != 10009 && !memcmp(&details->var0, &self->_nstatConnDetails, 0xC8uLL))
  {
    v10 = 0;
  }

  else
  {
    if (details->var0.route.dst.v6.sin6_addr.__u6_addr32[0] != self->_nstatConnDetails.conn_desc.pid || details->var0.route.dst.v6.sin6_addr.__u6_addr32[1] != self->_nstatConnDetails.conn_desc.epid || uuid_compare(details->var0.conn.uuid, self->_nstatConnDetails.conn_desc.uuid) || uuid_compare(&details->var0.tcp.local.v4.sin_len, self->_nstatConnDetails.conn_desc.euuid))
    {
      [(NWStatsConnSource *)self significantMetadataChange:&details->var0 monitor:monitorCopy];
    }

    [(NWStatsSource *)self saveOldValues:&self->_nstatConnDetails.detailed_counts];
    memcpy(&self->_nstatConnDetails, details, sizeof(self->_nstatConnDetails));
    -[NWStatsSource setUpdateAppStateIsForeground:](self, "setUpdateAppStateIsForeground:", [monitorCopy currentForegroundStateForProcessWithPid:details->var0.route.dst.v6.sin6_addr.__u6_addr32[1]]);
    v10 = type != 10009 || [(NWStatsConnSource *)self processExtendedDetails:&details->var0.conn + 1 length:length - 688];
  }

  return v10;
}

- (id)createSnapshot:(int)snapshot firstOccurrence:(BOOL)occurrence
{
  occurrenceCopy = occurrence;
  v5 = *&snapshot;
  v7 = [NWStatsConnSnapshot alloc];
  [(NWStatsSource *)self creationTimestamp];
  v9 = [(NWStatsConnSnapshot *)v7 initWithConnDetails:&self->_nstatConnDetails startTime:[(NWStatsSource *)self flowFlags] flowFlags:v8];
  [(NWStatsSource *)self setFlowFlags:[(NWStatsSource *)self flowFlags]& 0xFFC00FFFLL];
  [(NWStatsSource *)self saveOldValues:&self->_nstatConnDetails.detailed_counts];
  [(NWStatsSnapshot *)v9 setSnapshotReason:v5];
  [(NWStatsSnapshot *)v9 setFirstOccurrence:occurrenceCopy];
  attributedEntity = [(NWStatsSource *)self attributedEntity];
  attributionReason = [(NWStatsSource *)self attributionReason];
  delegateName = [(NWStatsSource *)self delegateName];
  delegateAttributionReason = [(NWStatsSource *)self delegateAttributionReason];
  attributedExtension = [(NWStatsSource *)self attributedExtension];
  [(NWStatsSnapshot *)v9 setAttribution:attributedEntity derivation:attributionReason delegateName:delegateName delegateDerivation:delegateAttributionReason extensionName:attributedExtension];

  domainName = [(NWStatsSource *)self domainName];
  domainOwner = [(NWStatsSource *)self domainOwner];
  domainTrackerContext = [(NWStatsSource *)self domainTrackerContext];
  domainAttributedBundleId = [(NWStatsSource *)self domainAttributedBundleId];
  isTracker = [(NWStatsSource *)self isTracker];
  attributedEntity2 = [(NWStatsSource *)self attributedEntity];
  isNonAppInitiated = [(NWStatsSource *)self bundleNameImpliesNonAppInitiated:attributedEntity2]|| [(NWStatsSource *)self isNonAppInitiated];
  LOBYTE(v30) = [(NWStatsSource *)self isSilent];
  [(NWStatsSnapshot *)v9 setDomainName:domainName owner:domainOwner context:domainTrackerContext attributedBundleId:domainAttributedBundleId isTracker:isTracker isNonAppInitiated:isNonAppInitiated isSilent:v30];

  [(NWStatsSnapshot *)v9 setAppStateIsForeground:[(NWStatsSource *)self updateAppStateIsForeground] screenStateOn:[(NWStatsSource *)self updateScreenStateOn] startAppStateIsForeground:[(NWStatsSource *)self startAppStateIsForeground] startScreenStateOn:[(NWStatsSource *)self startScreenStateOn]];
  if (self->_lookupResults)
  {
    v22 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_lookupResults];
    [(NWStatsSnapshot *)v9 setLookupResults:v22];
  }

  extensions = [(NWStatsSource *)self extensions];

  if (extensions)
  {
    v24 = objc_alloc(MEMORY[0x277CBEAC0]);
    extensions2 = [(NWStatsSource *)self extensions];
    v26 = [v24 initWithDictionary:extensions2];
    [(NWStatsSnapshot *)v9 setExtensions:v26];
  }

  [(NWStatsConnSnapshot *)v9 setCurrentProperties:self->_currentProperties];
  [(NWStatsConnSnapshot *)v9 setAncestralProperties:self->_ancestralProperties];
  currentProperties = self->_currentProperties;
  self->_currentProperties = 0;

  ancestralProperties = self->_ancestralProperties;
  self->_ancestralProperties = 0;

  return v9;
}

@end