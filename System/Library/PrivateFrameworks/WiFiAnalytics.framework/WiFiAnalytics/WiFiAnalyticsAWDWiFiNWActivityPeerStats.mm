@interface WiFiAnalyticsAWDWiFiNWActivityPeerStats
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
- (void)addCca:(id)cca;
- (void)addPackets:(id)packets;
- (void)addRssi:(id)rssi;
- (void)addSnr:(id)snr;
- (void)addTxLatencyBE:(id)e;
- (void)addTxLatencyBK:(id)k;
- (void)addTxLatencyVI:(id)i;
- (void)addTxLatencyVO:(id)o;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIbssCCA:(BOOL)a;
- (void)setHasInterferenceCCA:(BOOL)a;
- (void)setHasNfValue:(BOOL)value;
- (void)setHasObssCCA:(BOOL)a;
- (void)setHasOfdmDesense:(BOOL)desense;
- (void)setHasQbssCCA:(BOOL)a;
- (void)setHasQbssSTACount:(BOOL)count;
- (void)setHasRole:(BOOL)role;
- (void)setHasRssiValue0:(BOOL)value0;
- (void)setHasRssiValue1:(BOOL)value1;
- (void)setHasRssiValue:(BOOL)value;
- (void)setHasSnrValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityPeerStats

- (int)role
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_role;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRole:(BOOL)role
{
  if (role)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)roleAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E830EFB0[string];
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

- (void)addCca:(id)cca
{
  ccaCopy = cca;
  ccas = self->_ccas;
  v8 = ccaCopy;
  if (!ccas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_ccas;
    self->_ccas = v6;

    ccaCopy = v8;
    ccas = self->_ccas;
  }

  [(NSMutableArray *)ccas addObject:ccaCopy];
}

- (void)addSnr:(id)snr
{
  snrCopy = snr;
  snrs = self->_snrs;
  v8 = snrCopy;
  if (!snrs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_snrs;
    self->_snrs = v6;

    snrCopy = v8;
    snrs = self->_snrs;
  }

  [(NSMutableArray *)snrs addObject:snrCopy];
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
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSnrValue:(BOOL)value
{
  if (value)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasNfValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasOfdmDesense:(BOOL)desense
{
  if (desense)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIbssCCA:(BOOL)a
{
  if (a)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasObssCCA:(BOOL)a
{
  if (a)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasInterferenceCCA:(BOOL)a
{
  if (a)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasQbssCCA:(BOOL)a
{
  if (a)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasQbssSTACount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRssiValue0:(BOOL)value0
{
  if (value0)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasRssiValue1:(BOOL)value1
{
  if (value1)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityPeerStats;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v144 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x100) != 0)
  {
    role = self->_role;
    if (role >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_role];
    }

    else
    {
      v5 = off_1E830EFB0[role];
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
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v8 = self->_rssis;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v130 objects:v143 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v131;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v131 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v130 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v130 objects:v143 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"rssi"];
  }

  if ([(NSMutableArray *)self->_ccas count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_ccas, "count")}];
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v15 = self->_ccas;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v126 objects:v142 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v127;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v127 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v126 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v126 objects:v142 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"cca"];
  }

  if ([(NSMutableArray *)self->_snrs count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_snrs, "count")}];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v22 = self->_snrs;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v122 objects:v141 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v123;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v123 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v122 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v122 objects:v141 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v21 forKey:@"snr"];
  }

  if ([(NSMutableArray *)self->_packets count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_packets, "count")}];
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v29 = self->_packets;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v118 objects:v140 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v119;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v119 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation4 = [*(*(&v118 + 1) + 8 * m) dictionaryRepresentation];
          [v28 addObject:dictionaryRepresentation4];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v118 objects:v140 count:16];
      }

      while (v31);
    }

    [dictionary setObject:v28 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v36 = self->_bytes;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v114 objects:v139 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v115;
      do
      {
        for (n = 0; n != v38; ++n)
        {
          if (*v115 != v39)
          {
            objc_enumerationMutation(v36);
          }

          dictionaryRepresentation5 = [*(*(&v114 + 1) + 8 * n) dictionaryRepresentation];
          [v35 addObject:dictionaryRepresentation5];
        }

        v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v114 objects:v139 count:16];
      }

      while (v38);
    }

    [dictionary setObject:v35 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_txLatencyBKs count])
  {
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBKs, "count")}];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v43 = self->_txLatencyBKs;
    v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v110 objects:v138 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v111;
      do
      {
        for (ii = 0; ii != v45; ++ii)
        {
          if (*v111 != v46)
          {
            objc_enumerationMutation(v43);
          }

          dictionaryRepresentation6 = [*(*(&v110 + 1) + 8 * ii) dictionaryRepresentation];
          [v42 addObject:dictionaryRepresentation6];
        }

        v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v110 objects:v138 count:16];
      }

      while (v45);
    }

    [dictionary setObject:v42 forKey:@"txLatencyBK"];
  }

  if ([(NSMutableArray *)self->_txLatencyBEs count])
  {
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBEs, "count")}];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v50 = self->_txLatencyBEs;
    v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v106 objects:v137 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v107;
      do
      {
        for (jj = 0; jj != v52; ++jj)
        {
          if (*v107 != v53)
          {
            objc_enumerationMutation(v50);
          }

          dictionaryRepresentation7 = [*(*(&v106 + 1) + 8 * jj) dictionaryRepresentation];
          [v49 addObject:dictionaryRepresentation7];
        }

        v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v106 objects:v137 count:16];
      }

      while (v52);
    }

    [dictionary setObject:v49 forKey:@"txLatencyBE"];
  }

  if ([(NSMutableArray *)self->_txLatencyVOs count])
  {
    v56 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVOs, "count")}];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v57 = self->_txLatencyVOs;
    v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v102 objects:v136 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v103;
      do
      {
        for (kk = 0; kk != v59; ++kk)
        {
          if (*v103 != v60)
          {
            objc_enumerationMutation(v57);
          }

          dictionaryRepresentation8 = [*(*(&v102 + 1) + 8 * kk) dictionaryRepresentation];
          [v56 addObject:dictionaryRepresentation8];
        }

        v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v102 objects:v136 count:16];
      }

      while (v59);
    }

    [dictionary setObject:v56 forKey:@"txLatencyVO"];
  }

  if ([(NSMutableArray *)self->_txLatencyVIs count])
  {
    v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVIs, "count")}];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v64 = self->_txLatencyVIs;
    v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v98 objects:v135 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v99;
      do
      {
        for (mm = 0; mm != v66; ++mm)
        {
          if (*v99 != v67)
          {
            objc_enumerationMutation(v64);
          }

          dictionaryRepresentation9 = [*(*(&v98 + 1) + 8 * mm) dictionaryRepresentation];
          [v63 addObject:dictionaryRepresentation9];
        }

        v66 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v98 objects:v135 count:16];
      }

      while (v66);
    }

    [dictionary setObject:v63 forKey:@"txLatencyVI"];
  }

  completions = self->_completions;
  if (completions)
  {
    dictionaryRepresentation10 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"completions"];
  }

  if ([(NSMutableArray *)self->_acCompletions count])
  {
    v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_acCompletions, "count")}];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v73 = self->_acCompletions;
    v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v94 objects:v134 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v95;
      do
      {
        for (nn = 0; nn != v75; ++nn)
        {
          if (*v95 != v76)
          {
            objc_enumerationMutation(v73);
          }

          dictionaryRepresentation11 = [*(*(&v94 + 1) + 8 * nn) dictionaryRepresentation];
          [v72 addObject:dictionaryRepresentation11];
        }

        v75 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v94 objects:v134 count:16];
      }

      while (v75);
    }

    [dictionary setObject:v72 forKey:@"acCompletions"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v83 = [MEMORY[0x1E696AD98] numberWithInt:self->_rssiValue];
    [dictionary setObject:v83 forKey:@"rssiValue"];

    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_102:
      if ((has & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_116;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_102;
  }

  v84 = [MEMORY[0x1E696AD98] numberWithInt:self->_snrValue];
  [dictionary setObject:v84 forKey:@"snrValue"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_103:
    if ((has & 8) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_117;
  }

LABEL_116:
  v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaValue];
  [dictionary setObject:v85 forKey:@"ccaValue"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_104:
    if ((has & 0x20) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_118;
  }

LABEL_117:
  v86 = [MEMORY[0x1E696AD98] numberWithInt:self->_nfValue];
  [dictionary setObject:v86 forKey:@"nfValue"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_105:
    if ((has & 2) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_119;
  }

LABEL_118:
  v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ofdmDesense];
  [dictionary setObject:v87 forKey:@"ofdmDesense"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_106:
    if ((has & 0x10) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_120;
  }

LABEL_119:
  v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ibssCCA];
  [dictionary setObject:v88 forKey:@"ibssCCA"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_107:
    if ((has & 4) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_121;
  }

LABEL_120:
  v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_obssCCA];
  [dictionary setObject:v89 forKey:@"obssCCA"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_108:
    if ((has & 0x40) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_122;
  }

LABEL_121:
  v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_interferenceCCA];
  [dictionary setObject:v90 forKey:@"interferenceCCA"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_109:
    if ((has & 0x80) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_123;
  }

LABEL_122:
  v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_qbssCCA];
  [dictionary setObject:v91 forKey:@"qbssCCA"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_110:
    if ((has & 0x400) == 0)
    {
      goto LABEL_111;
    }

LABEL_124:
    v93 = [MEMORY[0x1E696AD98] numberWithInt:self->_rssiValue0];
    [dictionary setObject:v93 forKey:@"rssiValue0"];

    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_123:
  v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_qbssSTACount];
  [dictionary setObject:v92 forKey:@"qbssSTACount"];

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_124;
  }

LABEL_111:
  if ((has & 0x800) != 0)
  {
LABEL_112:
    v80 = [MEMORY[0x1E696AD98] numberWithInt:self->_rssiValue1];
    [dictionary setObject:v80 forKey:@"rssiValue1"];
  }

LABEL_113:
  v81 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  v106 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ((*&self->_has & 0x100) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hashID)
  {
    PBDataWriterWriteStringField();
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v5 = self->_rssis;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v92 objects:v105 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v93;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v93 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v92 objects:v105 count:16];
    }

    while (v7);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v10 = self->_ccas;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v88 objects:v104 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v89;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v89 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v88 objects:v104 count:16];
    }

    while (v12);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v15 = self->_snrs;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v84 objects:v103 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v85;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v85 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v84 objects:v103 count:16];
    }

    while (v17);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v20 = self->_packets;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v80 objects:v102 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v81;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v81 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v80 objects:v102 count:16];
    }

    while (v22);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v25 = self->_bytes;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v76 objects:v101 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v77;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v77 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v76 objects:v101 count:16];
    }

    while (v27);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v30 = self->_txLatencyBKs;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v72 objects:v100 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v73;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v73 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v72 objects:v100 count:16];
    }

    while (v32);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v35 = self->_txLatencyBEs;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v68 objects:v99 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v69;
    do
    {
      for (jj = 0; jj != v37; ++jj)
      {
        if (*v69 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteSubmessage();
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v68 objects:v99 count:16];
    }

    while (v37);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v40 = self->_txLatencyVOs;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v64 objects:v98 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v65;
    do
    {
      for (kk = 0; kk != v42; ++kk)
      {
        if (*v65 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v64 objects:v98 count:16];
    }

    while (v42);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v45 = self->_txLatencyVIs;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v60 objects:v97 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v61;
    do
    {
      for (mm = 0; mm != v47; ++mm)
      {
        if (*v61 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteSubmessage();
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v60 objects:v97 count:16];
    }

    while (v47);
  }

  if (self->_completions)
  {
    PBDataWriterWriteSubmessage();
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v50 = self->_acCompletions;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v56 objects:v96 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v57;
    do
    {
      for (nn = 0; nn != v52; ++nn)
      {
        if (*v57 != v53)
        {
          objc_enumerationMutation(v50);
        }

        PBDataWriterWriteSubmessage();
      }

      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v56 objects:v96 count:16];
    }

    while (v52);
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_79:
      if ((has & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_93;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_79;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_80:
    if ((has & 8) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_94;
  }

LABEL_93:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_81:
    if ((has & 0x20) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_95;
  }

LABEL_94:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_82:
    if ((has & 2) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_96;
  }

LABEL_95:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_83:
    if ((has & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_97;
  }

LABEL_96:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_84:
    if ((has & 4) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_98;
  }

LABEL_97:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_85:
    if ((has & 0x40) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_99;
  }

LABEL_98:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_86:
    if ((has & 0x80) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_100;
  }

LABEL_99:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_87:
    if ((has & 0x400) == 0)
    {
      goto LABEL_88;
    }

LABEL_101:
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_100:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_101;
  }

LABEL_88:
  if ((has & 0x800) != 0)
  {
LABEL_89:
    PBDataWriterWriteInt32Field();
  }

LABEL_90:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x100) != 0)
  {
    toCopy[24] = self->_role;
    *(toCopy + 84) |= 0x100u;
  }

  v46 = toCopy;
  if (self->_hashID)
  {
    [toCopy setHashID:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self rssisCount])
  {
    [v46 clearRssis];
    rssisCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self rssisCount];
    if (rssisCount)
    {
      v6 = rssisCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self rssiAtIndex:i];
        [v46 addRssi:v8];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self ccasCount])
  {
    [v46 clearCcas];
    ccasCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self ccasCount];
    if (ccasCount)
    {
      v10 = ccasCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self ccaAtIndex:j];
        [v46 addCca:v12];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self snrsCount])
  {
    [v46 clearSnrs];
    snrsCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self snrsCount];
    if (snrsCount)
    {
      v14 = snrsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self snrAtIndex:k];
        [v46 addSnr:v16];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self packetsCount])
  {
    [v46 clearPackets];
    packetsCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self packetsCount];
    if (packetsCount)
    {
      v18 = packetsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self packetsAtIndex:m];
        [v46 addPackets:v20];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self bytesCount])
  {
    [v46 clearBytes];
    bytesCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self bytesCount];
    if (bytesCount)
    {
      v22 = bytesCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self bytesAtIndex:n];
        [v46 addBytes:v24];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBKsCount])
  {
    [v46 clearTxLatencyBKs];
    txLatencyBKsCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBKsCount];
    if (txLatencyBKsCount)
    {
      v26 = txLatencyBKsCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBKAtIndex:ii];
        [v46 addTxLatencyBK:v28];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBEsCount])
  {
    [v46 clearTxLatencyBEs];
    txLatencyBEsCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBEsCount];
    if (txLatencyBEsCount)
    {
      v30 = txLatencyBEsCount;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBEAtIndex:jj];
        [v46 addTxLatencyBE:v32];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVOsCount])
  {
    [v46 clearTxLatencyVOs];
    txLatencyVOsCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVOsCount];
    if (txLatencyVOsCount)
    {
      v34 = txLatencyVOsCount;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVOAtIndex:kk];
        [v46 addTxLatencyVO:v36];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVIsCount])
  {
    [v46 clearTxLatencyVIs];
    txLatencyVIsCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVIsCount];
    if (txLatencyVIsCount)
    {
      v38 = txLatencyVIsCount;
      for (mm = 0; mm != v38; ++mm)
      {
        v40 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVIAtIndex:mm];
        [v46 addTxLatencyVI:v40];
      }
    }
  }

  if (self->_completions)
  {
    [v46 setCompletions:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self acCompletionsCount])
  {
    [v46 clearAcCompletions];
    acCompletionsCount = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self acCompletionsCount];
    if (acCompletionsCount)
    {
      v42 = acCompletionsCount;
      for (nn = 0; nn != v42; ++nn)
      {
        v44 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self acCompletionsAtIndex:nn];
        [v46 addAcCompletions:v44];
      }
    }
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v46 + 25) = self->_rssiValue;
    *(v46 + 84) |= 0x200u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_49:
      if ((has & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_65;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_49;
  }

  *(v46 + 30) = self->_snrValue;
  *(v46 + 84) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_50:
    if ((has & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v46 + 6) = self->_ccaValue;
  *(v46 + 84) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_51:
    if ((has & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v46 + 16) = self->_nfValue;
  *(v46 + 84) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_52:
    if ((has & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v46 + 18) = self->_ofdmDesense;
  *(v46 + 84) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_53:
    if ((has & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v46 + 14) = self->_ibssCCA;
  *(v46 + 84) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_54:
    if ((has & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v46 + 17) = self->_obssCCA;
  *(v46 + 84) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_55:
    if ((has & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v46 + 15) = self->_interferenceCCA;
  *(v46 + 84) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_56:
    if ((has & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v46 + 22) = self->_qbssCCA;
  *(v46 + 84) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_57:
    if ((has & 0x400) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v46 + 23) = self->_qbssSTACount;
  *(v46 + 84) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_58:
    if ((has & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_73:
  *(v46 + 26) = self->_rssiValue0;
  *(v46 + 84) |= 0x400u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_59:
    *(v46 + 27) = self->_rssiValue1;
    *(v46 + 84) |= 0x800u;
  }

LABEL_60:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v123 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 96) = self->_role;
    *(v5 + 168) |= 0x100u;
  }

  v7 = [(NSString *)self->_hashID copyWithZone:zone];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v9 = self->_rssis;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v109 objects:v122 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v110;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v110 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v109 + 1) + 8 * i) copyWithZone:zone];
        [v6 addRssi:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v109 objects:v122 count:16];
    }

    while (v11);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v15 = self->_ccas;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v105 objects:v121 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v106;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v106 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v105 + 1) + 8 * j) copyWithZone:zone];
        [v6 addCca:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v105 objects:v121 count:16];
    }

    while (v17);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v21 = self->_snrs;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v101 objects:v120 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v102;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v102 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v101 + 1) + 8 * k) copyWithZone:zone];
        [v6 addSnr:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v101 objects:v120 count:16];
    }

    while (v23);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v27 = self->_packets;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v97 objects:v119 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v98;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v98 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v97 + 1) + 8 * m) copyWithZone:zone];
        [v6 addPackets:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v97 objects:v119 count:16];
    }

    while (v29);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v33 = self->_bytes;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v93 objects:v118 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v94;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v94 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v93 + 1) + 8 * n) copyWithZone:zone];
        [v6 addBytes:v38];
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v93 objects:v118 count:16];
    }

    while (v35);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v39 = self->_txLatencyBKs;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v89 objects:v117 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v90;
    do
    {
      for (ii = 0; ii != v41; ++ii)
      {
        if (*v90 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v89 + 1) + 8 * ii) copyWithZone:zone];
        [v6 addTxLatencyBK:v44];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v89 objects:v117 count:16];
    }

    while (v41);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v45 = self->_txLatencyBEs;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v85 objects:v116 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v86;
    do
    {
      for (jj = 0; jj != v47; ++jj)
      {
        if (*v86 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v85 + 1) + 8 * jj) copyWithZone:zone];
        [v6 addTxLatencyBE:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v85 objects:v116 count:16];
    }

    while (v47);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v51 = self->_txLatencyVOs;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v81 objects:v115 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v82;
    do
    {
      for (kk = 0; kk != v53; ++kk)
      {
        if (*v82 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v81 + 1) + 8 * kk) copyWithZone:zone];
        [v6 addTxLatencyVO:v56];
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v81 objects:v115 count:16];
    }

    while (v53);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v57 = self->_txLatencyVIs;
  v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v77 objects:v114 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v78;
    do
    {
      for (mm = 0; mm != v59; ++mm)
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = [*(*(&v77 + 1) + 8 * mm) copyWithZone:zone];
        [v6 addTxLatencyVI:v62];
      }

      v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v77 objects:v114 count:16];
    }

    while (v59);
  }

  v63 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)self->_completions copyWithZone:zone];
  v64 = *(v6 + 40);
  *(v6 + 40) = v63;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v65 = self->_acCompletions;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v73 objects:v113 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v74;
    do
    {
      for (nn = 0; nn != v67; ++nn)
      {
        if (*v74 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = [*(*(&v73 + 1) + 8 * nn) copyWithZone:{zone, v73}];
        [v6 addAcCompletions:v70];
      }

      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v73 objects:v113 count:16];
    }

    while (v67);
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v6 + 100) = self->_rssiValue;
    *(v6 + 168) |= 0x200u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_75:
      if ((has & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_89;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_75;
  }

  *(v6 + 120) = self->_snrValue;
  *(v6 + 168) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_76:
    if ((has & 8) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v6 + 24) = self->_ccaValue;
  *(v6 + 168) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_77:
    if ((has & 0x20) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v6 + 64) = self->_nfValue;
  *(v6 + 168) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_78:
    if ((has & 2) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v6 + 72) = self->_ofdmDesense;
  *(v6 + 168) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_79:
    if ((has & 0x10) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v6 + 56) = self->_ibssCCA;
  *(v6 + 168) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_80:
    if ((has & 4) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v6 + 68) = self->_obssCCA;
  *(v6 + 168) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_81:
    if ((has & 0x40) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v6 + 60) = self->_interferenceCCA;
  *(v6 + 168) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_82:
    if ((has & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v6 + 88) = self->_qbssCCA;
  *(v6 + 168) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_83:
    if ((has & 0x400) == 0)
    {
      goto LABEL_84;
    }

LABEL_97:
    *(v6 + 104) = self->_rssiValue0;
    *(v6 + 168) |= 0x400u;
    if ((*&self->_has & 0x800) == 0)
    {
      return v6;
    }

    goto LABEL_85;
  }

LABEL_96:
  *(v6 + 92) = self->_qbssSTACount;
  *(v6 + 168) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_97;
  }

LABEL_84:
  if ((has & 0x800) != 0)
  {
LABEL_85:
    *(v6 + 108) = self->_rssiValue1;
    *(v6 + 168) |= 0x800u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 84) & 0x100) == 0 || self->_role != *(equalCopy + 24))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 84) & 0x100) != 0)
  {
LABEL_91:
    v19 = 0;
    goto LABEL_92;
  }

  hashID = self->_hashID;
  if (hashID | *(equalCopy + 6) && ![(NSString *)hashID isEqual:?])
  {
    goto LABEL_91;
  }

  rssis = self->_rssis;
  if (rssis | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)rssis isEqual:?])
    {
      goto LABEL_91;
    }
  }

  ccas = self->_ccas;
  if (ccas | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)ccas isEqual:?])
    {
      goto LABEL_91;
    }
  }

  snrs = self->_snrs;
  if (snrs | *(equalCopy + 16))
  {
    if (![(NSMutableArray *)snrs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  packets = self->_packets;
  if (packets | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)packets isEqual:?])
    {
      goto LABEL_91;
    }
  }

  bytes = self->_bytes;
  if (bytes | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)bytes isEqual:?])
    {
      goto LABEL_91;
    }
  }

  txLatencyBKs = self->_txLatencyBKs;
  if (txLatencyBKs | *(equalCopy + 18))
  {
    if (![(NSMutableArray *)txLatencyBKs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  txLatencyBEs = self->_txLatencyBEs;
  if (txLatencyBEs | *(equalCopy + 17))
  {
    if (![(NSMutableArray *)txLatencyBEs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  txLatencyVOs = self->_txLatencyVOs;
  if (txLatencyVOs | *(equalCopy + 20))
  {
    if (![(NSMutableArray *)txLatencyVOs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  txLatencyVIs = self->_txLatencyVIs;
  if (txLatencyVIs | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)txLatencyVIs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  completions = self->_completions;
  if (completions | *(equalCopy + 5))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions isEqual:?])
    {
      goto LABEL_91;
    }
  }

  acCompletions = self->_acCompletions;
  if (acCompletions | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)acCompletions isEqual:?])
    {
      goto LABEL_91;
    }
  }

  has = self->_has;
  v18 = *(equalCopy + 84);
  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 84) & 0x200) == 0 || self->_rssiValue != *(equalCopy + 25))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 84) & 0x200) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 84) & 0x1000) == 0 || self->_snrValue != *(equalCopy + 30))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 84) & 0x1000) != 0)
  {
    goto LABEL_91;
  }

  if (has)
  {
    if ((v18 & 1) == 0 || self->_ccaValue != *(equalCopy + 6))
    {
      goto LABEL_91;
    }
  }

  else if (v18)
  {
    goto LABEL_91;
  }

  if ((has & 8) != 0)
  {
    if ((v18 & 8) == 0 || self->_nfValue != *(equalCopy + 16))
    {
      goto LABEL_91;
    }
  }

  else if ((v18 & 8) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x20) != 0)
  {
    if ((v18 & 0x20) == 0 || self->_ofdmDesense != *(equalCopy + 18))
    {
      goto LABEL_91;
    }
  }

  else if ((v18 & 0x20) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 2) != 0)
  {
    if ((v18 & 2) == 0 || self->_ibssCCA != *(equalCopy + 14))
    {
      goto LABEL_91;
    }
  }

  else if ((v18 & 2) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x10) != 0)
  {
    if ((v18 & 0x10) == 0 || self->_obssCCA != *(equalCopy + 17))
    {
      goto LABEL_91;
    }
  }

  else if ((v18 & 0x10) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 4) != 0)
  {
    if ((v18 & 4) == 0 || self->_interferenceCCA != *(equalCopy + 15))
    {
      goto LABEL_91;
    }
  }

  else if ((v18 & 4) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x40) != 0)
  {
    if ((v18 & 0x40) == 0 || self->_qbssCCA != *(equalCopy + 22))
    {
      goto LABEL_91;
    }
  }

  else if ((v18 & 0x40) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x80) != 0)
  {
    if ((v18 & 0x80) == 0 || self->_qbssSTACount != *(equalCopy + 23))
    {
      goto LABEL_91;
    }
  }

  else if ((v18 & 0x80) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 84) & 0x400) == 0 || self->_rssiValue0 != *(equalCopy + 26))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 84) & 0x400) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 84) & 0x800) == 0 || self->_rssiValue1 != *(equalCopy + 27))
    {
      goto LABEL_91;
    }

    v19 = 1;
  }

  else
  {
    v19 = (v18 & 0x800) == 0;
  }

LABEL_92:

  return v19;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x100) != 0)
  {
    v29 = 2654435761 * self->_role;
  }

  else
  {
    v29 = 0;
  }

  v28 = [(NSString *)self->_hashID hash];
  v27 = [(NSMutableArray *)self->_rssis hash];
  v26 = [(NSMutableArray *)self->_ccas hash];
  v25 = [(NSMutableArray *)self->_snrs hash];
  v3 = [(NSMutableArray *)self->_packets hash];
  v4 = [(NSMutableArray *)self->_bytes hash];
  v5 = [(NSMutableArray *)self->_txLatencyBKs hash];
  v6 = [(NSMutableArray *)self->_txLatencyBEs hash];
  v7 = [(NSMutableArray *)self->_txLatencyVOs hash];
  v8 = [(NSMutableArray *)self->_txLatencyVIs hash];
  v9 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)self->_completions hash];
  v10 = [(NSMutableArray *)self->_acCompletions hash];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v12 = 2654435761 * self->_rssiValue;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_6:
      v13 = 2654435761 * self->_snrValue;
      if (has)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_6;
    }
  }

  v13 = 0;
  if (has)
  {
LABEL_7:
    v14 = 2654435761 * self->_ccaValue;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v15 = 2654435761 * self->_nfValue;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v15 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v16 = 2654435761 * self->_ofdmDesense;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v16 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v17 = 2654435761 * self->_ibssCCA;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v18 = 2654435761 * self->_obssCCA;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v18 = 0;
  if ((has & 4) != 0)
  {
LABEL_12:
    v19 = 2654435761 * self->_interferenceCCA;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v19 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_13:
    v20 = 2654435761 * self->_qbssCCA;
    if ((has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v20 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_14:
    v21 = 2654435761 * self->_qbssSTACount;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_27:
    v22 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    v23 = 0;
    return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
  }

LABEL_26:
  v21 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  v22 = 2654435761 * self->_rssiValue0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  v23 = 2654435761 * self->_rssiValue1;
  return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
}

- (void)mergeFrom:(id)from
{
  v109 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[42] & 0x100) != 0)
  {
    self->_role = fromCopy[24];
    *&self->_has |= 0x100u;
  }

  if (*(fromCopy + 6))
  {
    [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self setHashID:?];
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v6 = *(v5 + 14);
  v7 = [v6 countByEnumeratingWithState:&v95 objects:v108 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v96;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v96 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addRssi:*(*(&v95 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v95 objects:v108 count:16];
    }

    while (v8);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v11 = *(v5 + 4);
  v12 = [v11 countByEnumeratingWithState:&v91 objects:v107 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v92;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v92 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addCca:*(*(&v91 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v91 objects:v107 count:16];
    }

    while (v13);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v16 = *(v5 + 16);
  v17 = [v16 countByEnumeratingWithState:&v87 objects:v106 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v88;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v88 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addSnr:*(*(&v87 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v87 objects:v106 count:16];
    }

    while (v18);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v21 = *(v5 + 10);
  v22 = [v21 countByEnumeratingWithState:&v83 objects:v105 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v84;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v84 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addPackets:*(*(&v83 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v83 objects:v105 count:16];
    }

    while (v23);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v26 = *(v5 + 2);
  v27 = [v26 countByEnumeratingWithState:&v79 objects:v104 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v80;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v80 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addBytes:*(*(&v79 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v79 objects:v104 count:16];
    }

    while (v28);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v31 = *(v5 + 18);
  v32 = [v31 countByEnumeratingWithState:&v75 objects:v103 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v76;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v76 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addTxLatencyBK:*(*(&v75 + 1) + 8 * ii)];
      }

      v33 = [v31 countByEnumeratingWithState:&v75 objects:v103 count:16];
    }

    while (v33);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v36 = *(v5 + 17);
  v37 = [v36 countByEnumeratingWithState:&v71 objects:v102 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v72;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v72 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addTxLatencyBE:*(*(&v71 + 1) + 8 * jj)];
      }

      v38 = [v36 countByEnumeratingWithState:&v71 objects:v102 count:16];
    }

    while (v38);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v41 = *(v5 + 20);
  v42 = [v41 countByEnumeratingWithState:&v67 objects:v101 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v68;
    do
    {
      for (kk = 0; kk != v43; ++kk)
      {
        if (*v68 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addTxLatencyVO:*(*(&v67 + 1) + 8 * kk)];
      }

      v43 = [v41 countByEnumeratingWithState:&v67 objects:v101 count:16];
    }

    while (v43);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v46 = *(v5 + 19);
  v47 = [v46 countByEnumeratingWithState:&v63 objects:v100 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v64;
    do
    {
      for (mm = 0; mm != v48; ++mm)
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addTxLatencyVI:*(*(&v63 + 1) + 8 * mm)];
      }

      v48 = [v46 countByEnumeratingWithState:&v63 objects:v100 count:16];
    }

    while (v48);
  }

  completions = self->_completions;
  v52 = *(v5 + 5);
  if (completions)
  {
    if (v52)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions mergeFrom:?];
    }
  }

  else if (v52)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self setCompletions:?];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v53 = *(v5 + 1);
  v54 = [v53 countByEnumeratingWithState:&v59 objects:v99 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v60;
    do
    {
      for (nn = 0; nn != v55; ++nn)
      {
        if (*v60 != v56)
        {
          objc_enumerationMutation(v53);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addAcCompletions:*(*(&v59 + 1) + 8 * nn), v59];
      }

      v55 = [v53 countByEnumeratingWithState:&v59 objects:v99 count:16];
    }

    while (v55);
  }

  v58 = *(v5 + 84);
  if ((v58 & 0x200) != 0)
  {
    self->_rssiValue = *(v5 + 25);
    *&self->_has |= 0x200u;
    v58 = *(v5 + 84);
    if ((v58 & 0x1000) == 0)
    {
LABEL_82:
      if ((v58 & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_96;
    }
  }

  else if ((*(v5 + 84) & 0x1000) == 0)
  {
    goto LABEL_82;
  }

  self->_snrValue = *(v5 + 30);
  *&self->_has |= 0x1000u;
  v58 = *(v5 + 84);
  if ((v58 & 1) == 0)
  {
LABEL_83:
    if ((v58 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_ccaValue = *(v5 + 6);
  *&self->_has |= 1u;
  v58 = *(v5 + 84);
  if ((v58 & 8) == 0)
  {
LABEL_84:
    if ((v58 & 0x20) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_nfValue = *(v5 + 16);
  *&self->_has |= 8u;
  v58 = *(v5 + 84);
  if ((v58 & 0x20) == 0)
  {
LABEL_85:
    if ((v58 & 2) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_ofdmDesense = *(v5 + 18);
  *&self->_has |= 0x20u;
  v58 = *(v5 + 84);
  if ((v58 & 2) == 0)
  {
LABEL_86:
    if ((v58 & 0x10) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_ibssCCA = *(v5 + 14);
  *&self->_has |= 2u;
  v58 = *(v5 + 84);
  if ((v58 & 0x10) == 0)
  {
LABEL_87:
    if ((v58 & 4) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_obssCCA = *(v5 + 17);
  *&self->_has |= 0x10u;
  v58 = *(v5 + 84);
  if ((v58 & 4) == 0)
  {
LABEL_88:
    if ((v58 & 0x40) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_interferenceCCA = *(v5 + 15);
  *&self->_has |= 4u;
  v58 = *(v5 + 84);
  if ((v58 & 0x40) == 0)
  {
LABEL_89:
    if ((v58 & 0x80) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_qbssCCA = *(v5 + 22);
  *&self->_has |= 0x40u;
  v58 = *(v5 + 84);
  if ((v58 & 0x80) == 0)
  {
LABEL_90:
    if ((v58 & 0x400) == 0)
    {
      goto LABEL_91;
    }

LABEL_104:
    self->_rssiValue0 = *(v5 + 26);
    *&self->_has |= 0x400u;
    if ((*(v5 + 84) & 0x800) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_103:
  self->_qbssSTACount = *(v5 + 23);
  *&self->_has |= 0x80u;
  v58 = *(v5 + 84);
  if ((v58 & 0x400) != 0)
  {
    goto LABEL_104;
  }

LABEL_91:
  if ((v58 & 0x800) != 0)
  {
LABEL_92:
    self->_rssiValue1 = *(v5 + 27);
    *&self->_has |= 0x800u;
  }

LABEL_93:
}

@end