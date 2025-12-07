@interface HAPBTLETuple
+ (id)atvState2String:(unint64_t)string;
+ (id)makeTupleWithATVState:(unint64_t)state MaxHAPConnections:(int)connections;
+ (id)makeTupleWithATVState:(unint64_t)state MaxHAPConnections:(int)connections MinBandwidth:(float)bandwidth MaxBandwidth:(float)maxBandwidth;
+ (id)makeTupleWithState:(BTStatus *)state MaxHAPConnections:(int)connections MinBandwidth:(float)bandwidth MaxBandwidth:(float)maxBandwidth;
+ (id)state2String:(BTStatus *)string;
+ (void)bandwidthFromATVState:(unint64_t)state MinBandwidth:(float *)bandwidth MaxBandwidth:(float *)maxBandwidth;
- (BTStatus)state;
- (id)description;
- (void)setState:(BTStatus *)state;
@end

@implementation HAPBTLETuple

- (void)setState:(BTStatus *)state
{
  *&self->_state.leRemote = *&state->leRemote;
  v3 = *&state->btKB;
  v4 = *&state->btGC;
  v5 = *&state->nonHIDConnections;
  *&self->_state.hk = *&state->hk;
  *&self->_state.nonHIDConnections = v5;
  *&self->_state.btKB = v3;
  *&self->_state.btGC = v4;
  v6 = *&state->oneSniffAttemptDevices;
  v7 = *&state->sco;
  v8 = *&state->remote;
  *&self->_state.isScanning = *&state->isScanning;
  *&self->_state.sco = v7;
  *&self->_state.remote = v8;
  *&self->_state.oneSniffAttemptDevices = v6;
}

- (BTStatus)state
{
  v3 = *&self[1].leAcc;
  *&retstr->sco = *&self->isScanning;
  *&retstr->remote = v3;
  *&retstr->isScanning = self[1].a2dp;
  v4 = *&self->oneSniffAttemptDevices;
  *&retstr->btGC = *&self->nonHIDConnections;
  *&retstr->hk = v4;
  v5 = *&self->remote;
  *&retstr->nonHIDConnections = *&self->sco;
  *&retstr->oneSniffAttemptDevices = v5;
  v6 = *&self->hk;
  *&retstr->leRemote = *&self->btGC;
  *&retstr->btKB = v6;
  return self;
}

- (id)description
{
  if ([(HAPBTLETuple *)self atvState])
  {
    [HAPBTLETuple atvState2String:self->_atvState];
  }

  else
  {
    [HAPBTLETuple state2String:&self->_state];
  }
  v3 = ;

  return v3;
}

+ (id)state2String:(BTStatus *)string
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LE devices            : %zu \n", &stru_283E79C60, string->lowEnergyConnections];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ classic devices       : %zu \n", v4, string->connectedDevices];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ leRemote              : %zu \n", v5, string->leRemote];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ leAcc                 : %zu \n", v6, string->leAcc];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ btKb                  : %zu \n", v7, string->btKB];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ a2dp                  : %zu \n", v8, string->a2dp];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ btGC                  : %zu \n", v9, string->btGC];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ eAcc                  : %zu \n", v10, string->eAcc];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ HK                    : %zu \n", v11, string->hk];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ non-HID               : %zu \n", v12, string->nonHIDConnections];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ HID                   : %zu \n", v13, string->connectedHIDDevices];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ oneSniffAttemptDevices: %zu \n", v14, string->oneSniffAttemptDevices];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ twoSniffAttemptDevices: %zu \n", v15, string->twoSniffAttemptDevices];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ sco                   : %zu \n", v16, string->sco];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ wiap                  : %zu \n", v17, string->wiap];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ remote                : %zu \n", v18, string->remote];

  if (string->isScanning)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ scanning              : %@ \n", v19, v20];

  if (string->isDiscoverable)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ discoverable          : %@ \n", v21, v22];

  if (string->isConnectable)
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ connectable           : %@ \n", v23, v24];

  return v25;
}

+ (id)makeTupleWithState:(BTStatus *)state MaxHAPConnections:(int)connections MinBandwidth:(float)bandwidth MaxBandwidth:(float)maxBandwidth
{
  v8 = *&connections;
  v10 = objc_alloc_init(HAPBTLETuple);
  *&v10->_state.leRemote = *&state->leRemote;
  v11 = *&state->nonHIDConnections;
  v13 = *&state->btKB;
  v12 = *&state->btGC;
  *&v10->_state.hk = *&state->hk;
  *&v10->_state.nonHIDConnections = v11;
  *&v10->_state.btKB = v13;
  *&v10->_state.btGC = v12;
  v15 = *&state->sco;
  v14 = *&state->remote;
  v16 = *&state->oneSniffAttemptDevices;
  *&v10->_state.isScanning = *&state->isScanning;
  *&v10->_state.sco = v15;
  *&v10->_state.remote = v14;
  *&v10->_state.oneSniffAttemptDevices = v16;
  [(HAPBTLETuple *)v10 setAtvState:0];
  *&v17 = bandwidth;
  [(HAPBTLETuple *)v10 setMinBandwidth:v17];
  *&v18 = maxBandwidth;
  [(HAPBTLETuple *)v10 setMaxBandwidth:v18];
  [(HAPBTLETuple *)v10 setMaxHAPConnections:v8];

  return v10;
}

+ (id)atvState2String:(unint64_t)string
{
  v4 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d ("), string;
  if ([&unk_283EA9C08 count])
  {
    v5 = 0;
    do
    {
      if ((qword_22AC9DF78[v5] & string) != 0)
      {
        v6 = MEMORY[0x277CCACA8];
        v7 = [&unk_283EA9C08 objectAtIndexedSubscript:v5];
        v8 = [v6 stringWithFormat:@"%@|%@", v4, v7];

        v4 = v8;
      }

      ++v5;
    }

    while ([&unk_283EA9C08 count] > v5);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@"], v4);

  return v9;
}

+ (void)bandwidthFromATVState:(unint64_t)state MinBandwidth:(float *)bandwidth MaxBandwidth:(float *)maxBandwidth
{
  v5 = 0;
  v24 = *MEMORY[0x277D85DE8];
  v6 = (state >> 1) & 2;
  if ((state & 2) != 0)
  {
    v6 = 1;
  }

  while ((btgcConfig[v5] & state) == 0)
  {
    if (++v5 == 4)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = v5 + 1;
LABEL_7:
  v8 = 0;
  v9 = vand_s8(vshl_u32(vdup_n_s32(state), 0xFFFFFFF9FFFFFFFALL), 0x100000001);
  while ((leaConfig[v8] & state) == 0)
  {
    if (++v8 == 3)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v10 = v8 + 1;
LABEL_12:
  v11 = 0;
  while ((eaConfig[v11] & state) == 0)
  {
    if (++v11 == 3)
    {
      v12 = 0;
      goto LABEL_17;
    }
  }

  v12 = v11 + 1;
LABEL_17:
  v13 = 0;
  while ((hkConfig_21606[v13] & state) == 0)
  {
    if (++v13 == 3)
    {
      v14 = 0;
      goto LABEL_22;
    }
  }

  v14 = v13 + 1;
LABEL_22:
  v15 = 0;
  v19[0] = v6;
  v19[1] = v10;
  v16 = 0.0;
  v20 = v9;
  v21 = v7;
  v22 = v12;
  v17 = 0.0;
  v23 = v14;
  do
  {
    v18 = v19[v15];
    v16 = fminf(v16 + (*&maxFactors[v15] * v18), 100.0);
    v17 = fminf(v17 + (*&minFactors[v15++] * v18), 100.0);
  }

  while (v15 != 7);
  *bandwidth = v17;
  *maxBandwidth = v16;
}

+ (id)makeTupleWithATVState:(unint64_t)state MaxHAPConnections:(int)connections
{
  v4 = *&connections;
  v10 = 0;
  [HAPBTLETuple bandwidthFromATVState:state MinBandwidth:&v10 + 4 MaxBandwidth:&v10];
  LODWORD(v6) = HIDWORD(v10);
  LODWORD(v7) = v10;
  v8 = [HAPBTLETuple makeTupleWithATVState:state MaxHAPConnections:v4 MinBandwidth:v6 MaxBandwidth:v7];

  return v8;
}

+ (id)makeTupleWithATVState:(unint64_t)state MaxHAPConnections:(int)connections MinBandwidth:(float)bandwidth MaxBandwidth:(float)maxBandwidth
{
  v8 = *&connections;
  v10 = objc_alloc_init(HAPBTLETuple);
  [(HAPBTLETuple *)v10 setAtvState:state];
  *&v11 = bandwidth;
  [(HAPBTLETuple *)v10 setMinBandwidth:v11];
  *&v12 = maxBandwidth;
  [(HAPBTLETuple *)v10 setMaxBandwidth:v12];
  [(HAPBTLETuple *)v10 setMaxHAPConnections:v8];

  return v10;
}

@end