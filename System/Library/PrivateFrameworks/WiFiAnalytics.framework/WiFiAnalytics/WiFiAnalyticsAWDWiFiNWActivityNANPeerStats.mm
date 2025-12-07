@interface WiFiAnalyticsAWDWiFiNWActivityNANPeerStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)roleAsString:(int)string;
- (int)StringAsRole:(id)role;
- (int)role;
- (unint64_t)hash;
- (void)addAcCompletions:(id)completions;
- (void)addBytes:(id)bytes;
- (void)addPackets:(id)packets;
- (void)addRssi:(id)rssi;
- (void)addTxLatencyBE:(id)e;
- (void)addTxLatencyBK:(id)k;
- (void)addTxLatencyVI:(id)i;
- (void)addTxLatencyVO:(id)o;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRssiValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityNANPeerStats

- (int)role
{
  if (*&self->_has)
  {
    return self->_role;
  }

  else
  {
    return 3;
  }
}

- (id)roleAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E830E7E0[string];
  }

  return v4;
}

- (int)StringAsRole:(id)role
{
  roleCopy = role;
  if ([roleCopy isEqualToString:@"INFRA"])
  {
    v4 = 0;
  }

  else if ([roleCopy isEqualToString:@"LEGACYAWDL"])
  {
    v4 = 1;
  }

  else if ([roleCopy isEqualToString:@"LLWAWDL"])
  {
    v4 = 2;
  }

  else if ([roleCopy isEqualToString:@"NAN"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addRssi:(id)rssi
{
  rssiCopy = rssi;
  rssis = self->_rssis;
  v8 = rssiCopy;
  if (!rssis)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rssis;
    self->_rssis = v6;

    rssiCopy = v8;
    rssis = self->_rssis;
  }

  [(NSMutableArray *)rssis addObject:rssiCopy];
}

- (void)addPackets:(id)packets
{
  packetsCopy = packets;
  packets = self->_packets;
  v8 = packetsCopy;
  if (!packets)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_packets;
    self->_packets = v6;

    packetsCopy = v8;
    packets = self->_packets;
  }

  [(NSMutableArray *)packets addObject:packetsCopy];
}

- (void)addBytes:(id)bytes
{
  bytesCopy = bytes;
  bytes = self->_bytes;
  v8 = bytesCopy;
  if (!bytes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bytes;
    self->_bytes = v6;

    bytesCopy = v8;
    bytes = self->_bytes;
  }

  [(NSMutableArray *)bytes addObject:bytesCopy];
}

- (void)addTxLatencyBK:(id)k
{
  kCopy = k;
  txLatencyBKs = self->_txLatencyBKs;
  v8 = kCopy;
  if (!txLatencyBKs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyBKs;
    self->_txLatencyBKs = v6;

    kCopy = v8;
    txLatencyBKs = self->_txLatencyBKs;
  }

  [(NSMutableArray *)txLatencyBKs addObject:kCopy];
}

- (void)addTxLatencyBE:(id)e
{
  eCopy = e;
  txLatencyBEs = self->_txLatencyBEs;
  v8 = eCopy;
  if (!txLatencyBEs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyBEs;
    self->_txLatencyBEs = v6;

    eCopy = v8;
    txLatencyBEs = self->_txLatencyBEs;
  }

  [(NSMutableArray *)txLatencyBEs addObject:eCopy];
}

- (void)addTxLatencyVO:(id)o
{
  oCopy = o;
  txLatencyVOs = self->_txLatencyVOs;
  v8 = oCopy;
  if (!txLatencyVOs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyVOs;
    self->_txLatencyVOs = v6;

    oCopy = v8;
    txLatencyVOs = self->_txLatencyVOs;
  }

  [(NSMutableArray *)txLatencyVOs addObject:oCopy];
}

- (void)addTxLatencyVI:(id)i
{
  iCopy = i;
  txLatencyVIs = self->_txLatencyVIs;
  v8 = iCopy;
  if (!txLatencyVIs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyVIs;
    self->_txLatencyVIs = v6;

    iCopy = v8;
    txLatencyVIs = self->_txLatencyVIs;
  }

  [(NSMutableArray *)txLatencyVIs addObject:iCopy];
}

- (void)addAcCompletions:(id)completions
{
  completionsCopy = completions;
  acCompletions = self->_acCompletions;
  v8 = completionsCopy;
  if (!acCompletions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_acCompletions;
    self->_acCompletions = v6;

    completionsCopy = v8;
    acCompletions = self->_acCompletions;
  }

  [(NSMutableArray *)acCompletions addObject:completionsCopy];
}

- (void)setHasRssiValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityNANPeerStats;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v107 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    role = self->_role;
    if (role >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_role];
    }

    else
    {
      v5 = off_1E830E7E0[role];
    }

    [dictionary setObject:v5 forKey:@"role"];
  }

  hashID = self->_hashID;
  if (hashID)
  {
    [dictionary setObject:hashID forKey:@"hashID"];
  }

  if ([(NSMutableArray *)self->_rssis count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rssis, "count")}];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v8 = self->_rssis;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v95 objects:v106 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v96;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v96 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v95 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v95 objects:v106 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"rssi"];
  }

  if ([(NSMutableArray *)self->_packets count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_packets, "count")}];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v15 = self->_packets;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v91 objects:v105 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v92;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v92 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v91 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v91 objects:v105 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v22 = self->_bytes;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v87 objects:v104 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v88;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v88 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v87 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v87 objects:v104 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v21 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_txLatencyBKs count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBKs, "count")}];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v29 = self->_txLatencyBKs;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v83 objects:v103 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v84;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v84 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation4 = [*(*(&v83 + 1) + 8 * m) dictionaryRepresentation];
          [v28 addObject:dictionaryRepresentation4];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v83 objects:v103 count:16];
      }

      while (v31);
    }

    [dictionary setObject:v28 forKey:@"txLatencyBK"];
  }

  if ([(NSMutableArray *)self->_txLatencyBEs count])
  {
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBEs, "count")}];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v36 = self->_txLatencyBEs;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v79 objects:v102 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v80;
      do
      {
        for (n = 0; n != v38; ++n)
        {
          if (*v80 != v39)
          {
            objc_enumerationMutation(v36);
          }

          dictionaryRepresentation5 = [*(*(&v79 + 1) + 8 * n) dictionaryRepresentation];
          [v35 addObject:dictionaryRepresentation5];
        }

        v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v79 objects:v102 count:16];
      }

      while (v38);
    }

    [dictionary setObject:v35 forKey:@"txLatencyBE"];
  }

  if ([(NSMutableArray *)self->_txLatencyVOs count])
  {
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVOs, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v43 = self->_txLatencyVOs;
    v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v75 objects:v101 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v76;
      do
      {
        for (ii = 0; ii != v45; ++ii)
        {
          if (*v76 != v46)
          {
            objc_enumerationMutation(v43);
          }

          dictionaryRepresentation6 = [*(*(&v75 + 1) + 8 * ii) dictionaryRepresentation];
          [v42 addObject:dictionaryRepresentation6];
        }

        v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v75 objects:v101 count:16];
      }

      while (v45);
    }

    [dictionary setObject:v42 forKey:@"txLatencyVO"];
  }

  if ([(NSMutableArray *)self->_txLatencyVIs count])
  {
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVIs, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v50 = self->_txLatencyVIs;
    v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v71 objects:v100 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v72;
      do
      {
        for (jj = 0; jj != v52; ++jj)
        {
          if (*v72 != v53)
          {
            objc_enumerationMutation(v50);
          }

          dictionaryRepresentation7 = [*(*(&v71 + 1) + 8 * jj) dictionaryRepresentation];
          [v49 addObject:dictionaryRepresentation7];
        }

        v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v71 objects:v100 count:16];
      }

      while (v52);
    }

    [dictionary setObject:v49 forKey:@"txLatencyVI"];
  }

  completions = self->_completions;
  if (completions)
  {
    dictionaryRepresentation8 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"completions"];
  }

  if ([(NSMutableArray *)self->_acCompletions count])
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_acCompletions, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v59 = self->_acCompletions;
    v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v67 objects:v99 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v68;
      do
      {
        for (kk = 0; kk != v61; ++kk)
        {
          if (*v68 != v62)
          {
            objc_enumerationMutation(v59);
          }

          dictionaryRepresentation9 = [*(*(&v67 + 1) + 8 * kk) dictionaryRepresentation];
          [v58 addObject:dictionaryRepresentation9];
        }

        v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v67 objects:v99 count:16];
      }

      while (v61);
    }

    [dictionary setObject:v58 forKey:@"acCompletions"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithInt:self->_rssiValue];
    [dictionary setObject:v65 forKey:@"rssiValue"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v85 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hashID)
  {
    PBDataWriterWriteStringField();
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v5 = self->_rssis;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v74;
    do
    {
      v9 = 0;
      do
      {
        if (*v74 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v7);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = self->_packets;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v70;
    do
    {
      v14 = 0;
      do
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v69 objects:v83 count:16];
    }

    while (v12);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v15 = self->_bytes;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v66;
    do
    {
      v19 = 0;
      do
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v65 objects:v82 count:16];
    }

    while (v17);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v20 = self->_txLatencyBKs;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v61 objects:v81 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v62;
    do
    {
      v24 = 0;
      do
      {
        if (*v62 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v61 objects:v81 count:16];
    }

    while (v22);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v25 = self->_txLatencyBEs;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v57 objects:v80 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v58;
    do
    {
      v29 = 0;
      do
      {
        if (*v58 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v57 objects:v80 count:16];
    }

    while (v27);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v30 = self->_txLatencyVOs;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v53 objects:v79 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v54;
    do
    {
      v34 = 0;
      do
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v53 objects:v79 count:16];
    }

    while (v32);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = self->_txLatencyVIs;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v49 objects:v78 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v50;
    do
    {
      v39 = 0;
      do
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v49 objects:v78 count:16];
    }

    while (v37);
  }

  if (self->_completions)
  {
    PBDataWriterWriteSubmessage();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v40 = self->_acCompletions;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v45 objects:v77 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v46;
    do
    {
      v44 = 0;
      do
      {
        if (*v46 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v45 objects:v77 count:16];
    }

    while (v42);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[12] = self->_role;
    *(toCopy + 96) |= 1u;
  }

  v37 = toCopy;
  if (self->_hashID)
  {
    [toCopy setHashID:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self rssisCount])
  {
    [v37 clearRssis];
    rssisCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self rssisCount];
    if (rssisCount)
    {
      v6 = rssisCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self rssiAtIndex:i];
        [v37 addRssi:v8];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self packetsCount])
  {
    [v37 clearPackets];
    packetsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self packetsCount];
    if (packetsCount)
    {
      v10 = packetsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self packetsAtIndex:j];
        [v37 addPackets:v12];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self bytesCount])
  {
    [v37 clearBytes];
    bytesCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self bytesCount];
    if (bytesCount)
    {
      v14 = bytesCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self bytesAtIndex:k];
        [v37 addBytes:v16];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBKsCount])
  {
    [v37 clearTxLatencyBKs];
    txLatencyBKsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBKsCount];
    if (txLatencyBKsCount)
    {
      v18 = txLatencyBKsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBKAtIndex:m];
        [v37 addTxLatencyBK:v20];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBEsCount])
  {
    [v37 clearTxLatencyBEs];
    txLatencyBEsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBEsCount];
    if (txLatencyBEsCount)
    {
      v22 = txLatencyBEsCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBEAtIndex:n];
        [v37 addTxLatencyBE:v24];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVOsCount])
  {
    [v37 clearTxLatencyVOs];
    txLatencyVOsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVOsCount];
    if (txLatencyVOsCount)
    {
      v26 = txLatencyVOsCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVOAtIndex:ii];
        [v37 addTxLatencyVO:v28];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVIsCount])
  {
    [v37 clearTxLatencyVIs];
    txLatencyVIsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVIsCount];
    if (txLatencyVIsCount)
    {
      v30 = txLatencyVIsCount;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVIAtIndex:jj];
        [v37 addTxLatencyVI:v32];
      }
    }
  }

  if (self->_completions)
  {
    [v37 setCompletions:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self acCompletionsCount])
  {
    [v37 clearAcCompletions];
    acCompletionsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self acCompletionsCount];
    if (acCompletionsCount)
    {
      v34 = acCompletionsCount;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self acCompletionsAtIndex:kk];
        [v37 addAcCompletions:v36];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v37 + 13) = self->_rssiValue;
    *(v37 + 96) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v100 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_role;
    *(v5 + 96) |= 1u;
  }

  v7 = [(NSString *)self->_hashID copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v9 = self->_rssis;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v88 objects:v99 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v89;
    do
    {
      v13 = 0;
      do
      {
        if (*v89 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v88 + 1) + 8 * v13) copyWithZone:zone];
        [v6 addRssi:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v88 objects:v99 count:16];
    }

    while (v11);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v15 = self->_packets;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v85;
    do
    {
      v19 = 0;
      do
      {
        if (*v85 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v84 + 1) + 8 * v19) copyWithZone:zone];
        [v6 addPackets:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v84 objects:v98 count:16];
    }

    while (v17);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v21 = self->_bytes;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v80 objects:v97 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v81;
    do
    {
      v25 = 0;
      do
      {
        if (*v81 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v80 + 1) + 8 * v25) copyWithZone:zone];
        [v6 addBytes:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v80 objects:v97 count:16];
    }

    while (v23);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v27 = self->_txLatencyBKs;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v76 objects:v96 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v77;
    do
    {
      v31 = 0;
      do
      {
        if (*v77 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v76 + 1) + 8 * v31) copyWithZone:zone];
        [v6 addTxLatencyBK:v32];

        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v76 objects:v96 count:16];
    }

    while (v29);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v33 = self->_txLatencyBEs;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v72 objects:v95 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v73;
    do
    {
      v37 = 0;
      do
      {
        if (*v73 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v72 + 1) + 8 * v37) copyWithZone:zone];
        [v6 addTxLatencyBE:v38];

        ++v37;
      }

      while (v35 != v37);
      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v72 objects:v95 count:16];
    }

    while (v35);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = self->_txLatencyVOs;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v68 objects:v94 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v69;
    do
    {
      v43 = 0;
      do
      {
        if (*v69 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v68 + 1) + 8 * v43) copyWithZone:zone];
        [v6 addTxLatencyVO:v44];

        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v68 objects:v94 count:16];
    }

    while (v41);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v45 = self->_txLatencyVIs;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v64 objects:v93 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v65;
    do
    {
      v49 = 0;
      do
      {
        if (*v65 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v64 + 1) + 8 * v49) copyWithZone:zone];
        [v6 addTxLatencyVI:v50];

        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v64 objects:v93 count:16];
    }

    while (v47);
  }

  v51 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)self->_completions copyWithZone:zone];
  v52 = *(v6 + 24);
  *(v6 + 24) = v51;

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v53 = self->_acCompletions;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v60 objects:v92 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v61;
    do
    {
      v57 = 0;
      do
      {
        if (*v61 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [*(*(&v60 + 1) + 8 * v57) copyWithZone:{zone, v60}];
        [v6 addAcCompletions:v58];

        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v60 objects:v92 count:16];
    }

    while (v55);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 52) = self->_rssiValue;
    *(v6 + 96) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_role != *(equalCopy + 12))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 96))
  {
LABEL_31:
    v15 = 0;
    goto LABEL_32;
  }

  hashID = self->_hashID;
  if (hashID | *(equalCopy + 4) && ![(NSString *)hashID isEqual:?])
  {
    goto LABEL_31;
  }

  rssis = self->_rssis;
  if (rssis | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)rssis isEqual:?])
    {
      goto LABEL_31;
    }
  }

  packets = self->_packets;
  if (packets | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)packets isEqual:?])
    {
      goto LABEL_31;
    }
  }

  bytes = self->_bytes;
  if (bytes | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)bytes isEqual:?])
    {
      goto LABEL_31;
    }
  }

  txLatencyBKs = self->_txLatencyBKs;
  if (txLatencyBKs | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)txLatencyBKs isEqual:?])
    {
      goto LABEL_31;
    }
  }

  txLatencyBEs = self->_txLatencyBEs;
  if (txLatencyBEs | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)txLatencyBEs isEqual:?])
    {
      goto LABEL_31;
    }
  }

  txLatencyVOs = self->_txLatencyVOs;
  if (txLatencyVOs | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)txLatencyVOs isEqual:?])
    {
      goto LABEL_31;
    }
  }

  txLatencyVIs = self->_txLatencyVIs;
  if (txLatencyVIs | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)txLatencyVIs isEqual:?])
    {
      goto LABEL_31;
    }
  }

  completions = self->_completions;
  if (completions | *(equalCopy + 3))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions isEqual:?])
    {
      goto LABEL_31;
    }
  }

  acCompletions = self->_acCompletions;
  if (acCompletions | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)acCompletions isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v15 = (*(equalCopy + 96) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_rssiValue != *(equalCopy + 13))
    {
      goto LABEL_31;
    }

    v15 = 1;
  }

LABEL_32:

  return v15;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v15 = 2654435761 * self->_role;
  }

  else
  {
    v15 = 0;
  }

  v14 = [(NSString *)self->_hashID hash];
  v3 = [(NSMutableArray *)self->_rssis hash];
  v4 = [(NSMutableArray *)self->_packets hash];
  v5 = [(NSMutableArray *)self->_bytes hash];
  v6 = [(NSMutableArray *)self->_txLatencyBKs hash];
  v7 = [(NSMutableArray *)self->_txLatencyBEs hash];
  v8 = [(NSMutableArray *)self->_txLatencyVOs hash];
  v9 = [(NSMutableArray *)self->_txLatencyVIs hash];
  v10 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)self->_completions hash];
  v11 = [(NSMutableArray *)self->_acCompletions hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_rssiValue;
  }

  else
  {
    v12 = 0;
  }

  return v14 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v88 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[24])
  {
    self->_role = fromCopy[12];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self setHashID:?];
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v6 = *(v5 + 7);
  v7 = [v6 countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v77;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v77 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addRssi:*(*(&v76 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v76 objects:v87 count:16];
    }

    while (v8);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v11 = *(v5 + 5);
  v12 = [v11 countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v73;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v73 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addPackets:*(*(&v72 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v72 objects:v86 count:16];
    }

    while (v13);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v16 = *(v5 + 2);
  v17 = [v16 countByEnumeratingWithState:&v68 objects:v85 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v69;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v69 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addBytes:*(*(&v68 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v68 objects:v85 count:16];
    }

    while (v18);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v21 = *(v5 + 9);
  v22 = [v21 countByEnumeratingWithState:&v64 objects:v84 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v65;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v65 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addTxLatencyBK:*(*(&v64 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v64 objects:v84 count:16];
    }

    while (v23);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v26 = *(v5 + 8);
  v27 = [v26 countByEnumeratingWithState:&v60 objects:v83 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v61;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v61 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addTxLatencyBE:*(*(&v60 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v60 objects:v83 count:16];
    }

    while (v28);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v31 = *(v5 + 11);
  v32 = [v31 countByEnumeratingWithState:&v56 objects:v82 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v57;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addTxLatencyVO:*(*(&v56 + 1) + 8 * ii)];
      }

      v33 = [v31 countByEnumeratingWithState:&v56 objects:v82 count:16];
    }

    while (v33);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = *(v5 + 10);
  v37 = [v36 countByEnumeratingWithState:&v52 objects:v81 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v53;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addTxLatencyVI:*(*(&v52 + 1) + 8 * jj)];
      }

      v38 = [v36 countByEnumeratingWithState:&v52 objects:v81 count:16];
    }

    while (v38);
  }

  completions = self->_completions;
  v42 = *(v5 + 3);
  if (completions)
  {
    if (v42)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions mergeFrom:?];
    }
  }

  else if (v42)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self setCompletions:?];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v43 = *(v5 + 1);
  v44 = [v43 countByEnumeratingWithState:&v48 objects:v80 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v49;
    do
    {
      for (kk = 0; kk != v45; ++kk)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addAcCompletions:*(*(&v48 + 1) + 8 * kk), v48];
      }

      v45 = [v43 countByEnumeratingWithState:&v48 objects:v80 count:16];
    }

    while (v45);
  }

  if ((*(v5 + 96) & 2) != 0)
  {
    self->_rssiValue = *(v5 + 13);
    *&self->_has |= 2u;
  }
}

@end