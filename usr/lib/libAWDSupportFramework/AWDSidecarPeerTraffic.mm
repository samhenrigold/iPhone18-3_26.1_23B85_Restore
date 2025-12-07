@interface AWDSidecarPeerTraffic
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRxDataRate:(id)rate;
- (void)addRxFWDelay:(id)delay;
- (void)addRxIPCDelay:(id)delay;
- (void)addRxRSSI:(id)i;
- (void)addRxTotalDelay:(id)delay;
- (void)addTxCCA:(id)a;
- (void)addTxDataRate:(id)rate;
- (void)addTxFWDelay:(id)delay;
- (void)addTxHWDelay:(id)delay;
- (void)addTxIPCDelay:(id)delay;
- (void)addTxPacketBurstInterval:(id)interval;
- (void)addTxPacketBurstSize:(id)size;
- (void)addTxRetries:(id)retries;
- (void)addTxTotalDelay:(id)delay;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTxExpiredCount:(BOOL)count;
- (void)setHasTxSuccessCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDSidecarPeerTraffic

- (void)dealloc
{
  [(AWDSidecarPeerTraffic *)self setTxTotalDelays:0];
  [(AWDSidecarPeerTraffic *)self setTxIPCDelays:0];
  [(AWDSidecarPeerTraffic *)self setTxFWDelays:0];
  [(AWDSidecarPeerTraffic *)self setTxHWDelays:0];
  [(AWDSidecarPeerTraffic *)self setTxDataRates:0];
  [(AWDSidecarPeerTraffic *)self setTxCCAs:0];
  [(AWDSidecarPeerTraffic *)self setTxRetries:0];
  [(AWDSidecarPeerTraffic *)self setTxPacketBurstSizes:0];
  [(AWDSidecarPeerTraffic *)self setTxPacketBurstIntervals:0];
  [(AWDSidecarPeerTraffic *)self setRxTotalDelays:0];
  [(AWDSidecarPeerTraffic *)self setRxIPCDelays:0];
  [(AWDSidecarPeerTraffic *)self setRxFWDelays:0];
  [(AWDSidecarPeerTraffic *)self setRxDataRates:0];
  [(AWDSidecarPeerTraffic *)self setRxRSSIs:0];
  v3.receiver = self;
  v3.super_class = AWDSidecarPeerTraffic;
  [(AWDSidecarPeerTraffic *)&v3 dealloc];
}

- (void)setHasTxSuccessCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTxExpiredCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addTxTotalDelay:(id)delay
{
  txTotalDelays = self->_txTotalDelays;
  if (!txTotalDelays)
  {
    txTotalDelays = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txTotalDelays = txTotalDelays;
  }

  [(NSMutableArray *)txTotalDelays addObject:delay];
}

- (void)addTxIPCDelay:(id)delay
{
  txIPCDelays = self->_txIPCDelays;
  if (!txIPCDelays)
  {
    txIPCDelays = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txIPCDelays = txIPCDelays;
  }

  [(NSMutableArray *)txIPCDelays addObject:delay];
}

- (void)addTxFWDelay:(id)delay
{
  txFWDelays = self->_txFWDelays;
  if (!txFWDelays)
  {
    txFWDelays = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txFWDelays = txFWDelays;
  }

  [(NSMutableArray *)txFWDelays addObject:delay];
}

- (void)addTxHWDelay:(id)delay
{
  txHWDelays = self->_txHWDelays;
  if (!txHWDelays)
  {
    txHWDelays = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txHWDelays = txHWDelays;
  }

  [(NSMutableArray *)txHWDelays addObject:delay];
}

- (void)addTxDataRate:(id)rate
{
  txDataRates = self->_txDataRates;
  if (!txDataRates)
  {
    txDataRates = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txDataRates = txDataRates;
  }

  [(NSMutableArray *)txDataRates addObject:rate];
}

- (void)addTxCCA:(id)a
{
  txCCAs = self->_txCCAs;
  if (!txCCAs)
  {
    txCCAs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txCCAs = txCCAs;
  }

  [(NSMutableArray *)txCCAs addObject:a];
}

- (void)addTxRetries:(id)retries
{
  txRetries = self->_txRetries;
  if (!txRetries)
  {
    txRetries = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txRetries = txRetries;
  }

  [(NSMutableArray *)txRetries addObject:retries];
}

- (void)addTxPacketBurstSize:(id)size
{
  txPacketBurstSizes = self->_txPacketBurstSizes;
  if (!txPacketBurstSizes)
  {
    txPacketBurstSizes = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txPacketBurstSizes = txPacketBurstSizes;
  }

  [(NSMutableArray *)txPacketBurstSizes addObject:size];
}

- (void)addTxPacketBurstInterval:(id)interval
{
  txPacketBurstIntervals = self->_txPacketBurstIntervals;
  if (!txPacketBurstIntervals)
  {
    txPacketBurstIntervals = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txPacketBurstIntervals = txPacketBurstIntervals;
  }

  [(NSMutableArray *)txPacketBurstIntervals addObject:interval];
}

- (void)addRxTotalDelay:(id)delay
{
  rxTotalDelays = self->_rxTotalDelays;
  if (!rxTotalDelays)
  {
    rxTotalDelays = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxTotalDelays = rxTotalDelays;
  }

  [(NSMutableArray *)rxTotalDelays addObject:delay];
}

- (void)addRxIPCDelay:(id)delay
{
  rxIPCDelays = self->_rxIPCDelays;
  if (!rxIPCDelays)
  {
    rxIPCDelays = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxIPCDelays = rxIPCDelays;
  }

  [(NSMutableArray *)rxIPCDelays addObject:delay];
}

- (void)addRxFWDelay:(id)delay
{
  rxFWDelays = self->_rxFWDelays;
  if (!rxFWDelays)
  {
    rxFWDelays = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxFWDelays = rxFWDelays;
  }

  [(NSMutableArray *)rxFWDelays addObject:delay];
}

- (void)addRxDataRate:(id)rate
{
  rxDataRates = self->_rxDataRates;
  if (!rxDataRates)
  {
    rxDataRates = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxDataRates = rxDataRates;
  }

  [(NSMutableArray *)rxDataRates addObject:rate];
}

- (void)addRxRSSI:(id)i
{
  rxRSSIs = self->_rxRSSIs;
  if (!rxRSSIs)
  {
    rxRSSIs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxRSSIs = rxRSSIs;
  }

  [(NSMutableArray *)rxRSSIs addObject:i];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSidecarPeerTraffic;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSidecarPeerTraffic description](&v3, sel_description), -[AWDSidecarPeerTraffic dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v160 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txSuccessCount), @"txSuccessCount"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txExpiredCount), @"txExpiredCount"}];
  if (*&self->_has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txErrorCount), @"txErrorCount"}];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_txTotalDelays count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txTotalDelays, "count")}];
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    txTotalDelays = self->_txTotalDelays;
    v7 = [(NSMutableArray *)txTotalDelays countByEnumeratingWithState:&v142 objects:v159 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v143;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v143 != v9)
          {
            objc_enumerationMutation(txTotalDelays);
          }

          [v5 addObject:{objc_msgSend(*(*(&v142 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)txTotalDelays countByEnumeratingWithState:&v142 objects:v159 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"txTotalDelay"];
  }

  if ([(NSMutableArray *)self->_txIPCDelays count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txIPCDelays, "count")}];
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    txIPCDelays = self->_txIPCDelays;
    v13 = [(NSMutableArray *)txIPCDelays countByEnumeratingWithState:&v138 objects:v158 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v139;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v139 != v15)
          {
            objc_enumerationMutation(txIPCDelays);
          }

          [v11 addObject:{objc_msgSend(*(*(&v138 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)txIPCDelays countByEnumeratingWithState:&v138 objects:v158 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"txIPCDelay"];
  }

  if ([(NSMutableArray *)self->_txFWDelays count])
  {
    v17 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txFWDelays, "count")}];
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    txFWDelays = self->_txFWDelays;
    v19 = [(NSMutableArray *)txFWDelays countByEnumeratingWithState:&v134 objects:v157 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v135;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v135 != v21)
          {
            objc_enumerationMutation(txFWDelays);
          }

          [v17 addObject:{objc_msgSend(*(*(&v134 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v20 = [(NSMutableArray *)txFWDelays countByEnumeratingWithState:&v134 objects:v157 count:16];
      }

      while (v20);
    }

    [dictionary setObject:v17 forKey:@"txFWDelay"];
  }

  if ([(NSMutableArray *)self->_txHWDelays count])
  {
    v23 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txHWDelays, "count")}];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    txHWDelays = self->_txHWDelays;
    v25 = [(NSMutableArray *)txHWDelays countByEnumeratingWithState:&v130 objects:v156 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v131;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v131 != v27)
          {
            objc_enumerationMutation(txHWDelays);
          }

          [v23 addObject:{objc_msgSend(*(*(&v130 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v26 = [(NSMutableArray *)txHWDelays countByEnumeratingWithState:&v130 objects:v156 count:16];
      }

      while (v26);
    }

    [dictionary setObject:v23 forKey:@"txHWDelay"];
  }

  if ([(NSMutableArray *)self->_txDataRates count])
  {
    v29 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txDataRates, "count")}];
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    txDataRates = self->_txDataRates;
    v31 = [(NSMutableArray *)txDataRates countByEnumeratingWithState:&v126 objects:v155 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v127;
      do
      {
        for (n = 0; n != v32; ++n)
        {
          if (*v127 != v33)
          {
            objc_enumerationMutation(txDataRates);
          }

          [v29 addObject:{objc_msgSend(*(*(&v126 + 1) + 8 * n), "dictionaryRepresentation")}];
        }

        v32 = [(NSMutableArray *)txDataRates countByEnumeratingWithState:&v126 objects:v155 count:16];
      }

      while (v32);
    }

    [dictionary setObject:v29 forKey:@"txDataRate"];
  }

  if ([(NSMutableArray *)self->_txCCAs count])
  {
    v35 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txCCAs, "count")}];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    txCCAs = self->_txCCAs;
    v37 = [(NSMutableArray *)txCCAs countByEnumeratingWithState:&v122 objects:v154 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v123;
      do
      {
        for (ii = 0; ii != v38; ++ii)
        {
          if (*v123 != v39)
          {
            objc_enumerationMutation(txCCAs);
          }

          [v35 addObject:{objc_msgSend(*(*(&v122 + 1) + 8 * ii), "dictionaryRepresentation")}];
        }

        v38 = [(NSMutableArray *)txCCAs countByEnumeratingWithState:&v122 objects:v154 count:16];
      }

      while (v38);
    }

    [dictionary setObject:v35 forKey:@"txCCA"];
  }

  if ([(NSMutableArray *)self->_txRetries count])
  {
    v41 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txRetries, "count")}];
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    txRetries = self->_txRetries;
    v43 = [(NSMutableArray *)txRetries countByEnumeratingWithState:&v118 objects:v153 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v119;
      do
      {
        for (jj = 0; jj != v44; ++jj)
        {
          if (*v119 != v45)
          {
            objc_enumerationMutation(txRetries);
          }

          [v41 addObject:{objc_msgSend(*(*(&v118 + 1) + 8 * jj), "dictionaryRepresentation")}];
        }

        v44 = [(NSMutableArray *)txRetries countByEnumeratingWithState:&v118 objects:v153 count:16];
      }

      while (v44);
    }

    [dictionary setObject:v41 forKey:@"txRetries"];
  }

  if ([(NSMutableArray *)self->_txPacketBurstSizes count])
  {
    v47 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txPacketBurstSizes, "count")}];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    txPacketBurstSizes = self->_txPacketBurstSizes;
    v49 = [(NSMutableArray *)txPacketBurstSizes countByEnumeratingWithState:&v114 objects:v152 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v115;
      do
      {
        for (kk = 0; kk != v50; ++kk)
        {
          if (*v115 != v51)
          {
            objc_enumerationMutation(txPacketBurstSizes);
          }

          [v47 addObject:{objc_msgSend(*(*(&v114 + 1) + 8 * kk), "dictionaryRepresentation")}];
        }

        v50 = [(NSMutableArray *)txPacketBurstSizes countByEnumeratingWithState:&v114 objects:v152 count:16];
      }

      while (v50);
    }

    [dictionary setObject:v47 forKey:@"txPacketBurstSize"];
  }

  if ([(NSMutableArray *)self->_txPacketBurstIntervals count])
  {
    v53 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txPacketBurstIntervals, "count")}];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    txPacketBurstIntervals = self->_txPacketBurstIntervals;
    v55 = [(NSMutableArray *)txPacketBurstIntervals countByEnumeratingWithState:&v110 objects:v151 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v111;
      do
      {
        for (mm = 0; mm != v56; ++mm)
        {
          if (*v111 != v57)
          {
            objc_enumerationMutation(txPacketBurstIntervals);
          }

          [v53 addObject:{objc_msgSend(*(*(&v110 + 1) + 8 * mm), "dictionaryRepresentation")}];
        }

        v56 = [(NSMutableArray *)txPacketBurstIntervals countByEnumeratingWithState:&v110 objects:v151 count:16];
      }

      while (v56);
    }

    [dictionary setObject:v53 forKey:@"txPacketBurstInterval"];
  }

  if ([(NSMutableArray *)self->_rxTotalDelays count])
  {
    v59 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxTotalDelays, "count")}];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    rxTotalDelays = self->_rxTotalDelays;
    v61 = [(NSMutableArray *)rxTotalDelays countByEnumeratingWithState:&v106 objects:v150 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v107;
      do
      {
        for (nn = 0; nn != v62; ++nn)
        {
          if (*v107 != v63)
          {
            objc_enumerationMutation(rxTotalDelays);
          }

          [v59 addObject:{objc_msgSend(*(*(&v106 + 1) + 8 * nn), "dictionaryRepresentation")}];
        }

        v62 = [(NSMutableArray *)rxTotalDelays countByEnumeratingWithState:&v106 objects:v150 count:16];
      }

      while (v62);
    }

    [dictionary setObject:v59 forKey:@"rxTotalDelay"];
  }

  if ([(NSMutableArray *)self->_rxIPCDelays count])
  {
    v65 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxIPCDelays, "count")}];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    rxIPCDelays = self->_rxIPCDelays;
    v67 = [(NSMutableArray *)rxIPCDelays countByEnumeratingWithState:&v102 objects:v149 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v103;
      do
      {
        for (i1 = 0; i1 != v68; ++i1)
        {
          if (*v103 != v69)
          {
            objc_enumerationMutation(rxIPCDelays);
          }

          [v65 addObject:{objc_msgSend(*(*(&v102 + 1) + 8 * i1), "dictionaryRepresentation")}];
        }

        v68 = [(NSMutableArray *)rxIPCDelays countByEnumeratingWithState:&v102 objects:v149 count:16];
      }

      while (v68);
    }

    [dictionary setObject:v65 forKey:@"rxIPCDelay"];
  }

  if ([(NSMutableArray *)self->_rxFWDelays count])
  {
    v71 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxFWDelays, "count")}];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    rxFWDelays = self->_rxFWDelays;
    v73 = [(NSMutableArray *)rxFWDelays countByEnumeratingWithState:&v98 objects:v148 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v99;
      do
      {
        for (i2 = 0; i2 != v74; ++i2)
        {
          if (*v99 != v75)
          {
            objc_enumerationMutation(rxFWDelays);
          }

          [v71 addObject:{objc_msgSend(*(*(&v98 + 1) + 8 * i2), "dictionaryRepresentation")}];
        }

        v74 = [(NSMutableArray *)rxFWDelays countByEnumeratingWithState:&v98 objects:v148 count:16];
      }

      while (v74);
    }

    [dictionary setObject:v71 forKey:@"rxFWDelay"];
  }

  if ([(NSMutableArray *)self->_rxDataRates count])
  {
    v77 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxDataRates, "count")}];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    rxDataRates = self->_rxDataRates;
    v79 = [(NSMutableArray *)rxDataRates countByEnumeratingWithState:&v94 objects:v147 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v95;
      do
      {
        for (i3 = 0; i3 != v80; ++i3)
        {
          if (*v95 != v81)
          {
            objc_enumerationMutation(rxDataRates);
          }

          [v77 addObject:{objc_msgSend(*(*(&v94 + 1) + 8 * i3), "dictionaryRepresentation")}];
        }

        v80 = [(NSMutableArray *)rxDataRates countByEnumeratingWithState:&v94 objects:v147 count:16];
      }

      while (v80);
    }

    [dictionary setObject:v77 forKey:@"rxDataRate"];
  }

  if ([(NSMutableArray *)self->_rxRSSIs count])
  {
    v83 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxRSSIs, "count")}];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    rxRSSIs = self->_rxRSSIs;
    v85 = [(NSMutableArray *)rxRSSIs countByEnumeratingWithState:&v90 objects:v146 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v91;
      do
      {
        for (i4 = 0; i4 != v86; ++i4)
        {
          if (*v91 != v87)
          {
            objc_enumerationMutation(rxRSSIs);
          }

          [v83 addObject:{objc_msgSend(*(*(&v90 + 1) + 8 * i4), "dictionaryRepresentation")}];
        }

        v86 = [(NSMutableArray *)rxRSSIs countByEnumeratingWithState:&v90 objects:v146 count:16];
      }

      while (v86);
    }

    [dictionary setObject:v83 forKey:@"rxRSSI"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v145 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  txTotalDelays = self->_txTotalDelays;
  v6 = [(NSMutableArray *)txTotalDelays countByEnumeratingWithState:&v127 objects:v144 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v128;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v128 != v8)
        {
          objc_enumerationMutation(txTotalDelays);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)txTotalDelays countByEnumeratingWithState:&v127 objects:v144 count:16];
    }

    while (v7);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  txIPCDelays = self->_txIPCDelays;
  v11 = [(NSMutableArray *)txIPCDelays countByEnumeratingWithState:&v123 objects:v143 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v124;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v124 != v13)
        {
          objc_enumerationMutation(txIPCDelays);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)txIPCDelays countByEnumeratingWithState:&v123 objects:v143 count:16];
    }

    while (v12);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  txFWDelays = self->_txFWDelays;
  v16 = [(NSMutableArray *)txFWDelays countByEnumeratingWithState:&v119 objects:v142 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v120;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v120 != v18)
        {
          objc_enumerationMutation(txFWDelays);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)txFWDelays countByEnumeratingWithState:&v119 objects:v142 count:16];
    }

    while (v17);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  txHWDelays = self->_txHWDelays;
  v21 = [(NSMutableArray *)txHWDelays countByEnumeratingWithState:&v115 objects:v141 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v116;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v116 != v23)
        {
          objc_enumerationMutation(txHWDelays);
        }

        PBDataWriterWriteSubmessage();
      }

      v22 = [(NSMutableArray *)txHWDelays countByEnumeratingWithState:&v115 objects:v141 count:16];
    }

    while (v22);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  txDataRates = self->_txDataRates;
  v26 = [(NSMutableArray *)txDataRates countByEnumeratingWithState:&v111 objects:v140 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v112;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v112 != v28)
        {
          objc_enumerationMutation(txDataRates);
        }

        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)txDataRates countByEnumeratingWithState:&v111 objects:v140 count:16];
    }

    while (v27);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  txCCAs = self->_txCCAs;
  v31 = [(NSMutableArray *)txCCAs countByEnumeratingWithState:&v107 objects:v139 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v108;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v108 != v33)
        {
          objc_enumerationMutation(txCCAs);
        }

        PBDataWriterWriteSubmessage();
      }

      v32 = [(NSMutableArray *)txCCAs countByEnumeratingWithState:&v107 objects:v139 count:16];
    }

    while (v32);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  txRetries = self->_txRetries;
  v36 = [(NSMutableArray *)txRetries countByEnumeratingWithState:&v103 objects:v138 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v104;
    do
    {
      for (jj = 0; jj != v37; ++jj)
      {
        if (*v104 != v38)
        {
          objc_enumerationMutation(txRetries);
        }

        PBDataWriterWriteSubmessage();
      }

      v37 = [(NSMutableArray *)txRetries countByEnumeratingWithState:&v103 objects:v138 count:16];
    }

    while (v37);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  txPacketBurstSizes = self->_txPacketBurstSizes;
  v41 = [(NSMutableArray *)txPacketBurstSizes countByEnumeratingWithState:&v99 objects:v137 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v100;
    do
    {
      for (kk = 0; kk != v42; ++kk)
      {
        if (*v100 != v43)
        {
          objc_enumerationMutation(txPacketBurstSizes);
        }

        PBDataWriterWriteSubmessage();
      }

      v42 = [(NSMutableArray *)txPacketBurstSizes countByEnumeratingWithState:&v99 objects:v137 count:16];
    }

    while (v42);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  txPacketBurstIntervals = self->_txPacketBurstIntervals;
  v46 = [(NSMutableArray *)txPacketBurstIntervals countByEnumeratingWithState:&v95 objects:v136 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v96;
    do
    {
      for (mm = 0; mm != v47; ++mm)
      {
        if (*v96 != v48)
        {
          objc_enumerationMutation(txPacketBurstIntervals);
        }

        PBDataWriterWriteSubmessage();
      }

      v47 = [(NSMutableArray *)txPacketBurstIntervals countByEnumeratingWithState:&v95 objects:v136 count:16];
    }

    while (v47);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  rxTotalDelays = self->_rxTotalDelays;
  v51 = [(NSMutableArray *)rxTotalDelays countByEnumeratingWithState:&v91 objects:v135 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v92;
    do
    {
      for (nn = 0; nn != v52; ++nn)
      {
        if (*v92 != v53)
        {
          objc_enumerationMutation(rxTotalDelays);
        }

        PBDataWriterWriteSubmessage();
      }

      v52 = [(NSMutableArray *)rxTotalDelays countByEnumeratingWithState:&v91 objects:v135 count:16];
    }

    while (v52);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  rxIPCDelays = self->_rxIPCDelays;
  v56 = [(NSMutableArray *)rxIPCDelays countByEnumeratingWithState:&v87 objects:v134 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v88;
    do
    {
      for (i1 = 0; i1 != v57; ++i1)
      {
        if (*v88 != v58)
        {
          objc_enumerationMutation(rxIPCDelays);
        }

        PBDataWriterWriteSubmessage();
      }

      v57 = [(NSMutableArray *)rxIPCDelays countByEnumeratingWithState:&v87 objects:v134 count:16];
    }

    while (v57);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  rxFWDelays = self->_rxFWDelays;
  v61 = [(NSMutableArray *)rxFWDelays countByEnumeratingWithState:&v83 objects:v133 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v84;
    do
    {
      for (i2 = 0; i2 != v62; ++i2)
      {
        if (*v84 != v63)
        {
          objc_enumerationMutation(rxFWDelays);
        }

        PBDataWriterWriteSubmessage();
      }

      v62 = [(NSMutableArray *)rxFWDelays countByEnumeratingWithState:&v83 objects:v133 count:16];
    }

    while (v62);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  rxDataRates = self->_rxDataRates;
  v66 = [(NSMutableArray *)rxDataRates countByEnumeratingWithState:&v79 objects:v132 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v80;
    do
    {
      for (i3 = 0; i3 != v67; ++i3)
      {
        if (*v80 != v68)
        {
          objc_enumerationMutation(rxDataRates);
        }

        PBDataWriterWriteSubmessage();
      }

      v67 = [(NSMutableArray *)rxDataRates countByEnumeratingWithState:&v79 objects:v132 count:16];
    }

    while (v67);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  rxRSSIs = self->_rxRSSIs;
  v71 = [(NSMutableArray *)rxRSSIs countByEnumeratingWithState:&v75 objects:v131 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v76;
    do
    {
      for (i4 = 0; i4 != v72; ++i4)
      {
        if (*v76 != v73)
        {
          objc_enumerationMutation(rxRSSIs);
        }

        PBDataWriterWriteSubmessage();
      }

      v72 = [(NSMutableArray *)rxRSSIs countByEnumeratingWithState:&v75 objects:v131 count:16];
    }

    while (v72);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_63:
    *(to + 2) = self->_txExpiredCount;
    *(to + 144) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(to + 3) = self->_txSuccessCount;
  *(to + 144) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_63;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(to + 1) = self->_txErrorCount;
    *(to + 144) |= 1u;
  }

LABEL_5:
  if ([(AWDSidecarPeerTraffic *)self txTotalDelaysCount])
  {
    [to clearTxTotalDelays];
    txTotalDelaysCount = [(AWDSidecarPeerTraffic *)self txTotalDelaysCount];
    if (txTotalDelaysCount)
    {
      v7 = txTotalDelaysCount;
      for (i = 0; i != v7; ++i)
      {
        [to addTxTotalDelay:{-[AWDSidecarPeerTraffic txTotalDelayAtIndex:](self, "txTotalDelayAtIndex:", i)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self txIPCDelaysCount])
  {
    [to clearTxIPCDelays];
    txIPCDelaysCount = [(AWDSidecarPeerTraffic *)self txIPCDelaysCount];
    if (txIPCDelaysCount)
    {
      v10 = txIPCDelaysCount;
      for (j = 0; j != v10; ++j)
      {
        [to addTxIPCDelay:{-[AWDSidecarPeerTraffic txIPCDelayAtIndex:](self, "txIPCDelayAtIndex:", j)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self txFWDelaysCount])
  {
    [to clearTxFWDelays];
    txFWDelaysCount = [(AWDSidecarPeerTraffic *)self txFWDelaysCount];
    if (txFWDelaysCount)
    {
      v13 = txFWDelaysCount;
      for (k = 0; k != v13; ++k)
      {
        [to addTxFWDelay:{-[AWDSidecarPeerTraffic txFWDelayAtIndex:](self, "txFWDelayAtIndex:", k)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self txHWDelaysCount])
  {
    [to clearTxHWDelays];
    txHWDelaysCount = [(AWDSidecarPeerTraffic *)self txHWDelaysCount];
    if (txHWDelaysCount)
    {
      v16 = txHWDelaysCount;
      for (m = 0; m != v16; ++m)
      {
        [to addTxHWDelay:{-[AWDSidecarPeerTraffic txHWDelayAtIndex:](self, "txHWDelayAtIndex:", m)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self txDataRatesCount])
  {
    [to clearTxDataRates];
    txDataRatesCount = [(AWDSidecarPeerTraffic *)self txDataRatesCount];
    if (txDataRatesCount)
    {
      v19 = txDataRatesCount;
      for (n = 0; n != v19; ++n)
      {
        [to addTxDataRate:{-[AWDSidecarPeerTraffic txDataRateAtIndex:](self, "txDataRateAtIndex:", n)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self txCCAsCount])
  {
    [to clearTxCCAs];
    txCCAsCount = [(AWDSidecarPeerTraffic *)self txCCAsCount];
    if (txCCAsCount)
    {
      v22 = txCCAsCount;
      for (ii = 0; ii != v22; ++ii)
      {
        [to addTxCCA:{-[AWDSidecarPeerTraffic txCCAAtIndex:](self, "txCCAAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self txRetriesCount])
  {
    [to clearTxRetries];
    txRetriesCount = [(AWDSidecarPeerTraffic *)self txRetriesCount];
    if (txRetriesCount)
    {
      v25 = txRetriesCount;
      for (jj = 0; jj != v25; ++jj)
      {
        [to addTxRetries:{-[AWDSidecarPeerTraffic txRetriesAtIndex:](self, "txRetriesAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self txPacketBurstSizesCount])
  {
    [to clearTxPacketBurstSizes];
    txPacketBurstSizesCount = [(AWDSidecarPeerTraffic *)self txPacketBurstSizesCount];
    if (txPacketBurstSizesCount)
    {
      v28 = txPacketBurstSizesCount;
      for (kk = 0; kk != v28; ++kk)
      {
        [to addTxPacketBurstSize:{-[AWDSidecarPeerTraffic txPacketBurstSizeAtIndex:](self, "txPacketBurstSizeAtIndex:", kk)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self txPacketBurstIntervalsCount])
  {
    [to clearTxPacketBurstIntervals];
    txPacketBurstIntervalsCount = [(AWDSidecarPeerTraffic *)self txPacketBurstIntervalsCount];
    if (txPacketBurstIntervalsCount)
    {
      v31 = txPacketBurstIntervalsCount;
      for (mm = 0; mm != v31; ++mm)
      {
        [to addTxPacketBurstInterval:{-[AWDSidecarPeerTraffic txPacketBurstIntervalAtIndex:](self, "txPacketBurstIntervalAtIndex:", mm)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self rxTotalDelaysCount])
  {
    [to clearRxTotalDelays];
    rxTotalDelaysCount = [(AWDSidecarPeerTraffic *)self rxTotalDelaysCount];
    if (rxTotalDelaysCount)
    {
      v34 = rxTotalDelaysCount;
      for (nn = 0; nn != v34; ++nn)
      {
        [to addRxTotalDelay:{-[AWDSidecarPeerTraffic rxTotalDelayAtIndex:](self, "rxTotalDelayAtIndex:", nn)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self rxIPCDelaysCount])
  {
    [to clearRxIPCDelays];
    rxIPCDelaysCount = [(AWDSidecarPeerTraffic *)self rxIPCDelaysCount];
    if (rxIPCDelaysCount)
    {
      v37 = rxIPCDelaysCount;
      for (i1 = 0; i1 != v37; ++i1)
      {
        [to addRxIPCDelay:{-[AWDSidecarPeerTraffic rxIPCDelayAtIndex:](self, "rxIPCDelayAtIndex:", i1)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self rxFWDelaysCount])
  {
    [to clearRxFWDelays];
    rxFWDelaysCount = [(AWDSidecarPeerTraffic *)self rxFWDelaysCount];
    if (rxFWDelaysCount)
    {
      v40 = rxFWDelaysCount;
      for (i2 = 0; i2 != v40; ++i2)
      {
        [to addRxFWDelay:{-[AWDSidecarPeerTraffic rxFWDelayAtIndex:](self, "rxFWDelayAtIndex:", i2)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self rxDataRatesCount])
  {
    [to clearRxDataRates];
    rxDataRatesCount = [(AWDSidecarPeerTraffic *)self rxDataRatesCount];
    if (rxDataRatesCount)
    {
      v43 = rxDataRatesCount;
      for (i3 = 0; i3 != v43; ++i3)
      {
        [to addRxDataRate:{-[AWDSidecarPeerTraffic rxDataRateAtIndex:](self, "rxDataRateAtIndex:", i3)}];
      }
    }
  }

  if ([(AWDSidecarPeerTraffic *)self rxRSSIsCount])
  {
    [to clearRxRSSIs];
    rxRSSIsCount = [(AWDSidecarPeerTraffic *)self rxRSSIsCount];
    if (rxRSSIsCount)
    {
      v46 = rxRSSIsCount;
      for (i4 = 0; i4 != v46; ++i4)
      {
        [to addRxRSSI:{-[AWDSidecarPeerTraffic rxRSSIAtIndex:](self, "rxRSSIAtIndex:", i4)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v163 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_txSuccessCount;
    *(v5 + 144) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_txExpiredCount;
  *(v5 + 144) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_txErrorCount;
    *(v5 + 144) |= 1u;
  }

LABEL_5:
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  txTotalDelays = self->_txTotalDelays;
  v9 = [(NSMutableArray *)txTotalDelays countByEnumeratingWithState:&v145 objects:v162 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v146;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v146 != v11)
        {
          objc_enumerationMutation(txTotalDelays);
        }

        v13 = [*(*(&v145 + 1) + 8 * i) copyWithZone:zone];
        [v6 addTxTotalDelay:v13];
      }

      v10 = [(NSMutableArray *)txTotalDelays countByEnumeratingWithState:&v145 objects:v162 count:16];
    }

    while (v10);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  txIPCDelays = self->_txIPCDelays;
  v15 = [(NSMutableArray *)txIPCDelays countByEnumeratingWithState:&v141 objects:v161 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v142;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v142 != v17)
        {
          objc_enumerationMutation(txIPCDelays);
        }

        v19 = [*(*(&v141 + 1) + 8 * j) copyWithZone:zone];
        [v6 addTxIPCDelay:v19];
      }

      v16 = [(NSMutableArray *)txIPCDelays countByEnumeratingWithState:&v141 objects:v161 count:16];
    }

    while (v16);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  txFWDelays = self->_txFWDelays;
  v21 = [(NSMutableArray *)txFWDelays countByEnumeratingWithState:&v137 objects:v160 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v138;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v138 != v23)
        {
          objc_enumerationMutation(txFWDelays);
        }

        v25 = [*(*(&v137 + 1) + 8 * k) copyWithZone:zone];
        [v6 addTxFWDelay:v25];
      }

      v22 = [(NSMutableArray *)txFWDelays countByEnumeratingWithState:&v137 objects:v160 count:16];
    }

    while (v22);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  txHWDelays = self->_txHWDelays;
  v27 = [(NSMutableArray *)txHWDelays countByEnumeratingWithState:&v133 objects:v159 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v134;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v134 != v29)
        {
          objc_enumerationMutation(txHWDelays);
        }

        v31 = [*(*(&v133 + 1) + 8 * m) copyWithZone:zone];
        [v6 addTxHWDelay:v31];
      }

      v28 = [(NSMutableArray *)txHWDelays countByEnumeratingWithState:&v133 objects:v159 count:16];
    }

    while (v28);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  txDataRates = self->_txDataRates;
  v33 = [(NSMutableArray *)txDataRates countByEnumeratingWithState:&v129 objects:v158 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v130;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v130 != v35)
        {
          objc_enumerationMutation(txDataRates);
        }

        v37 = [*(*(&v129 + 1) + 8 * n) copyWithZone:zone];
        [v6 addTxDataRate:v37];
      }

      v34 = [(NSMutableArray *)txDataRates countByEnumeratingWithState:&v129 objects:v158 count:16];
    }

    while (v34);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  txCCAs = self->_txCCAs;
  v39 = [(NSMutableArray *)txCCAs countByEnumeratingWithState:&v125 objects:v157 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v126;
    do
    {
      for (ii = 0; ii != v40; ++ii)
      {
        if (*v126 != v41)
        {
          objc_enumerationMutation(txCCAs);
        }

        v43 = [*(*(&v125 + 1) + 8 * ii) copyWithZone:zone];
        [v6 addTxCCA:v43];
      }

      v40 = [(NSMutableArray *)txCCAs countByEnumeratingWithState:&v125 objects:v157 count:16];
    }

    while (v40);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  txRetries = self->_txRetries;
  v45 = [(NSMutableArray *)txRetries countByEnumeratingWithState:&v121 objects:v156 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v122;
    do
    {
      for (jj = 0; jj != v46; ++jj)
      {
        if (*v122 != v47)
        {
          objc_enumerationMutation(txRetries);
        }

        v49 = [*(*(&v121 + 1) + 8 * jj) copyWithZone:zone];
        [v6 addTxRetries:v49];
      }

      v46 = [(NSMutableArray *)txRetries countByEnumeratingWithState:&v121 objects:v156 count:16];
    }

    while (v46);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  txPacketBurstSizes = self->_txPacketBurstSizes;
  v51 = [(NSMutableArray *)txPacketBurstSizes countByEnumeratingWithState:&v117 objects:v155 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v118;
    do
    {
      for (kk = 0; kk != v52; ++kk)
      {
        if (*v118 != v53)
        {
          objc_enumerationMutation(txPacketBurstSizes);
        }

        v55 = [*(*(&v117 + 1) + 8 * kk) copyWithZone:zone];
        [v6 addTxPacketBurstSize:v55];
      }

      v52 = [(NSMutableArray *)txPacketBurstSizes countByEnumeratingWithState:&v117 objects:v155 count:16];
    }

    while (v52);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  txPacketBurstIntervals = self->_txPacketBurstIntervals;
  v57 = [(NSMutableArray *)txPacketBurstIntervals countByEnumeratingWithState:&v113 objects:v154 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v114;
    do
    {
      for (mm = 0; mm != v58; ++mm)
      {
        if (*v114 != v59)
        {
          objc_enumerationMutation(txPacketBurstIntervals);
        }

        v61 = [*(*(&v113 + 1) + 8 * mm) copyWithZone:zone];
        [v6 addTxPacketBurstInterval:v61];
      }

      v58 = [(NSMutableArray *)txPacketBurstIntervals countByEnumeratingWithState:&v113 objects:v154 count:16];
    }

    while (v58);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  rxTotalDelays = self->_rxTotalDelays;
  v63 = [(NSMutableArray *)rxTotalDelays countByEnumeratingWithState:&v109 objects:v153 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v110;
    do
    {
      for (nn = 0; nn != v64; ++nn)
      {
        if (*v110 != v65)
        {
          objc_enumerationMutation(rxTotalDelays);
        }

        v67 = [*(*(&v109 + 1) + 8 * nn) copyWithZone:zone];
        [v6 addRxTotalDelay:v67];
      }

      v64 = [(NSMutableArray *)rxTotalDelays countByEnumeratingWithState:&v109 objects:v153 count:16];
    }

    while (v64);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  rxIPCDelays = self->_rxIPCDelays;
  v69 = [(NSMutableArray *)rxIPCDelays countByEnumeratingWithState:&v105 objects:v152 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v106;
    do
    {
      for (i1 = 0; i1 != v70; ++i1)
      {
        if (*v106 != v71)
        {
          objc_enumerationMutation(rxIPCDelays);
        }

        v73 = [*(*(&v105 + 1) + 8 * i1) copyWithZone:zone];
        [v6 addRxIPCDelay:v73];
      }

      v70 = [(NSMutableArray *)rxIPCDelays countByEnumeratingWithState:&v105 objects:v152 count:16];
    }

    while (v70);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  rxFWDelays = self->_rxFWDelays;
  v75 = [(NSMutableArray *)rxFWDelays countByEnumeratingWithState:&v101 objects:v151 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v102;
    do
    {
      for (i2 = 0; i2 != v76; ++i2)
      {
        if (*v102 != v77)
        {
          objc_enumerationMutation(rxFWDelays);
        }

        v79 = [*(*(&v101 + 1) + 8 * i2) copyWithZone:zone];
        [v6 addRxFWDelay:v79];
      }

      v76 = [(NSMutableArray *)rxFWDelays countByEnumeratingWithState:&v101 objects:v151 count:16];
    }

    while (v76);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  rxDataRates = self->_rxDataRates;
  v81 = [(NSMutableArray *)rxDataRates countByEnumeratingWithState:&v97 objects:v150 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v98;
    do
    {
      for (i3 = 0; i3 != v82; ++i3)
      {
        if (*v98 != v83)
        {
          objc_enumerationMutation(rxDataRates);
        }

        v85 = [*(*(&v97 + 1) + 8 * i3) copyWithZone:zone];
        [v6 addRxDataRate:v85];
      }

      v82 = [(NSMutableArray *)rxDataRates countByEnumeratingWithState:&v97 objects:v150 count:16];
    }

    while (v82);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  rxRSSIs = self->_rxRSSIs;
  v87 = [(NSMutableArray *)rxRSSIs countByEnumeratingWithState:&v93 objects:v149 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v94;
    do
    {
      for (i4 = 0; i4 != v88; ++i4)
      {
        if (*v94 != v89)
        {
          objc_enumerationMutation(rxRSSIs);
        }

        v91 = [*(*(&v93 + 1) + 8 * i4) copyWithZone:zone];
        [v6 addRxRSSI:v91];
      }

      v88 = [(NSMutableArray *)rxRSSIs countByEnumeratingWithState:&v93 objects:v149 count:16];
    }

    while (v88);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 144) & 4) == 0 || self->_txSuccessCount != *(equal + 3))
      {
        goto LABEL_45;
      }
    }

    else if ((*(equal + 144) & 4) != 0)
    {
LABEL_45:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 144) & 2) == 0 || self->_txExpiredCount != *(equal + 2))
      {
        goto LABEL_45;
      }
    }

    else if ((*(equal + 144) & 2) != 0)
    {
      goto LABEL_45;
    }

    if (*&self->_has)
    {
      if ((*(equal + 144) & 1) == 0 || self->_txErrorCount != *(equal + 1))
      {
        goto LABEL_45;
      }
    }

    else if (*(equal + 144))
    {
      goto LABEL_45;
    }

    txTotalDelays = self->_txTotalDelays;
    if (!(txTotalDelays | *(equal + 17)) || (v5 = [(NSMutableArray *)txTotalDelays isEqual:?]) != 0)
    {
      txIPCDelays = self->_txIPCDelays;
      if (!(txIPCDelays | *(equal + 13)) || (v5 = [(NSMutableArray *)txIPCDelays isEqual:?]) != 0)
      {
        txFWDelays = self->_txFWDelays;
        if (!(txFWDelays | *(equal + 11)) || (v5 = [(NSMutableArray *)txFWDelays isEqual:?]) != 0)
        {
          txHWDelays = self->_txHWDelays;
          if (!(txHWDelays | *(equal + 12)) || (v5 = [(NSMutableArray *)txHWDelays isEqual:?]) != 0)
          {
            txDataRates = self->_txDataRates;
            if (!(txDataRates | *(equal + 10)) || (v5 = [(NSMutableArray *)txDataRates isEqual:?]) != 0)
            {
              txCCAs = self->_txCCAs;
              if (!(txCCAs | *(equal + 9)) || (v5 = [(NSMutableArray *)txCCAs isEqual:?]) != 0)
              {
                txRetries = self->_txRetries;
                if (!(txRetries | *(equal + 16)) || (v5 = [(NSMutableArray *)txRetries isEqual:?]) != 0)
                {
                  txPacketBurstSizes = self->_txPacketBurstSizes;
                  if (!(txPacketBurstSizes | *(equal + 15)) || (v5 = [(NSMutableArray *)txPacketBurstSizes isEqual:?]) != 0)
                  {
                    txPacketBurstIntervals = self->_txPacketBurstIntervals;
                    if (!(txPacketBurstIntervals | *(equal + 14)) || (v5 = [(NSMutableArray *)txPacketBurstIntervals isEqual:?]) != 0)
                    {
                      rxTotalDelays = self->_rxTotalDelays;
                      if (!(rxTotalDelays | *(equal + 8)) || (v5 = [(NSMutableArray *)rxTotalDelays isEqual:?]) != 0)
                      {
                        rxIPCDelays = self->_rxIPCDelays;
                        if (!(rxIPCDelays | *(equal + 6)) || (v5 = [(NSMutableArray *)rxIPCDelays isEqual:?]) != 0)
                        {
                          rxFWDelays = self->_rxFWDelays;
                          if (!(rxFWDelays | *(equal + 5)) || (v5 = [(NSMutableArray *)rxFWDelays isEqual:?]) != 0)
                          {
                            rxDataRates = self->_rxDataRates;
                            if (!(rxDataRates | *(equal + 4)) || (v5 = [(NSMutableArray *)rxDataRates isEqual:?]) != 0)
                            {
                              rxRSSIs = self->_rxRSSIs;
                              if (rxRSSIs | *(equal + 7))
                              {

                                LOBYTE(v5) = [(NSMutableArray *)rxRSSIs isEqual:?];
                              }

                              else
                              {
                                LOBYTE(v5) = 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761u * self->_txSuccessCount;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761u * self->_txExpiredCount;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761u * self->_txErrorCount;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_txTotalDelays hash];
  v7 = [(NSMutableArray *)self->_txIPCDelays hash];
  v8 = v6 ^ v7 ^ [(NSMutableArray *)self->_txFWDelays hash];
  v9 = [(NSMutableArray *)self->_txHWDelays hash];
  v10 = v9 ^ [(NSMutableArray *)self->_txDataRates hash];
  v11 = v8 ^ v10 ^ [(NSMutableArray *)self->_txCCAs hash];
  v12 = [(NSMutableArray *)self->_txRetries hash];
  v13 = v12 ^ [(NSMutableArray *)self->_txPacketBurstSizes hash];
  v14 = v13 ^ [(NSMutableArray *)self->_txPacketBurstIntervals hash];
  v15 = v11 ^ v14 ^ [(NSMutableArray *)self->_rxTotalDelays hash];
  v16 = [(NSMutableArray *)self->_rxIPCDelays hash];
  v17 = v16 ^ [(NSMutableArray *)self->_rxFWDelays hash];
  v18 = v17 ^ [(NSMutableArray *)self->_rxDataRates hash];
  return v15 ^ v18 ^ [(NSMutableArray *)self->_rxRSSIs hash];
}

- (void)mergeFrom:(id)from
{
  v146 = *MEMORY[0x29EDCA608];
  v5 = *(from + 144);
  if ((v5 & 4) != 0)
  {
    self->_txSuccessCount = *(from + 3);
    *&self->_has |= 4u;
    v5 = *(from + 144);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 144) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_txExpiredCount = *(from + 2);
  *&self->_has |= 2u;
  if (*(from + 144))
  {
LABEL_4:
    self->_txErrorCount = *(from + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v6 = *(from + 17);
  v7 = [v6 countByEnumeratingWithState:&v128 objects:v145 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v129;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v129 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDSidecarPeerTraffic *)self addTxTotalDelay:*(*(&v128 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v128 objects:v145 count:16];
    }

    while (v8);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v11 = *(from + 13);
  v12 = [v11 countByEnumeratingWithState:&v124 objects:v144 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v125;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v125 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDSidecarPeerTraffic *)self addTxIPCDelay:*(*(&v124 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v124 objects:v144 count:16];
    }

    while (v13);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v16 = *(from + 11);
  v17 = [v16 countByEnumeratingWithState:&v120 objects:v143 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v121;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v121 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(AWDSidecarPeerTraffic *)self addTxFWDelay:*(*(&v120 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v120 objects:v143 count:16];
    }

    while (v18);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v21 = *(from + 12);
  v22 = [v21 countByEnumeratingWithState:&v116 objects:v142 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v117;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v117 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(AWDSidecarPeerTraffic *)self addTxHWDelay:*(*(&v116 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v116 objects:v142 count:16];
    }

    while (v23);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v26 = *(from + 10);
  v27 = [v26 countByEnumeratingWithState:&v112 objects:v141 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v113;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v113 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(AWDSidecarPeerTraffic *)self addTxDataRate:*(*(&v112 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v112 objects:v141 count:16];
    }

    while (v28);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v31 = *(from + 9);
  v32 = [v31 countByEnumeratingWithState:&v108 objects:v140 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v109;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v109 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(AWDSidecarPeerTraffic *)self addTxCCA:*(*(&v108 + 1) + 8 * ii)];
      }

      v33 = [v31 countByEnumeratingWithState:&v108 objects:v140 count:16];
    }

    while (v33);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v36 = *(from + 16);
  v37 = [v36 countByEnumeratingWithState:&v104 objects:v139 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v105;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v105 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(AWDSidecarPeerTraffic *)self addTxRetries:*(*(&v104 + 1) + 8 * jj)];
      }

      v38 = [v36 countByEnumeratingWithState:&v104 objects:v139 count:16];
    }

    while (v38);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v41 = *(from + 15);
  v42 = [v41 countByEnumeratingWithState:&v100 objects:v138 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v101;
    do
    {
      for (kk = 0; kk != v43; ++kk)
      {
        if (*v101 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(AWDSidecarPeerTraffic *)self addTxPacketBurstSize:*(*(&v100 + 1) + 8 * kk)];
      }

      v43 = [v41 countByEnumeratingWithState:&v100 objects:v138 count:16];
    }

    while (v43);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v46 = *(from + 14);
  v47 = [v46 countByEnumeratingWithState:&v96 objects:v137 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v97;
    do
    {
      for (mm = 0; mm != v48; ++mm)
      {
        if (*v97 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(AWDSidecarPeerTraffic *)self addTxPacketBurstInterval:*(*(&v96 + 1) + 8 * mm)];
      }

      v48 = [v46 countByEnumeratingWithState:&v96 objects:v137 count:16];
    }

    while (v48);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v51 = *(from + 8);
  v52 = [v51 countByEnumeratingWithState:&v92 objects:v136 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v93;
    do
    {
      for (nn = 0; nn != v53; ++nn)
      {
        if (*v93 != v54)
        {
          objc_enumerationMutation(v51);
        }

        [(AWDSidecarPeerTraffic *)self addRxTotalDelay:*(*(&v92 + 1) + 8 * nn)];
      }

      v53 = [v51 countByEnumeratingWithState:&v92 objects:v136 count:16];
    }

    while (v53);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v56 = *(from + 6);
  v57 = [v56 countByEnumeratingWithState:&v88 objects:v135 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v89;
    do
    {
      for (i1 = 0; i1 != v58; ++i1)
      {
        if (*v89 != v59)
        {
          objc_enumerationMutation(v56);
        }

        [(AWDSidecarPeerTraffic *)self addRxIPCDelay:*(*(&v88 + 1) + 8 * i1)];
      }

      v58 = [v56 countByEnumeratingWithState:&v88 objects:v135 count:16];
    }

    while (v58);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v61 = *(from + 5);
  v62 = [v61 countByEnumeratingWithState:&v84 objects:v134 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v85;
    do
    {
      for (i2 = 0; i2 != v63; ++i2)
      {
        if (*v85 != v64)
        {
          objc_enumerationMutation(v61);
        }

        [(AWDSidecarPeerTraffic *)self addRxFWDelay:*(*(&v84 + 1) + 8 * i2)];
      }

      v63 = [v61 countByEnumeratingWithState:&v84 objects:v134 count:16];
    }

    while (v63);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v66 = *(from + 4);
  v67 = [v66 countByEnumeratingWithState:&v80 objects:v133 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v81;
    do
    {
      for (i3 = 0; i3 != v68; ++i3)
      {
        if (*v81 != v69)
        {
          objc_enumerationMutation(v66);
        }

        [(AWDSidecarPeerTraffic *)self addRxDataRate:*(*(&v80 + 1) + 8 * i3)];
      }

      v68 = [v66 countByEnumeratingWithState:&v80 objects:v133 count:16];
    }

    while (v68);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v71 = *(from + 7);
  v72 = [v71 countByEnumeratingWithState:&v76 objects:v132 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v77;
    do
    {
      for (i4 = 0; i4 != v73; ++i4)
      {
        if (*v77 != v74)
        {
          objc_enumerationMutation(v71);
        }

        [(AWDSidecarPeerTraffic *)self addRxRSSI:*(*(&v76 + 1) + 8 * i4)];
      }

      v73 = [v71 countByEnumeratingWithState:&v76 objects:v132 count:16];
    }

    while (v73);
  }
}

@end