@interface SFProximityEstimatorMaxOfMean
- (SFProximityEstimatorMaxOfMean)initWithProximityInfo:(id)info;
- (id)description;
- (int)_estimateRSSIForSFBLEDevice:(id)device;
- (void)dealloc;
@end

@implementation SFProximityEstimatorMaxOfMean

- (void)dealloc
{
  channelNumberArray = self->_channelNumberArray;
  if (channelNumberArray)
  {
    free(channelNumberArray);
    self->_channelNumberArray = 0;
  }

  rssiArray = self->_rssiArray;
  if (rssiArray)
  {
    free(rssiArray);
    self->_rssiArray = 0;
  }

  v5.receiver = self;
  v5.super_class = SFProximityEstimatorMaxOfMean;
  [(SFProximityEstimatorMaxOfMean *)&v5 dealloc];
}

- (SFProximityEstimatorMaxOfMean)initWithProximityInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = SFProximityEstimatorMaxOfMean;
  v5 = [(SFProximityEstimator *)&v14 initWithProximityInfo:infoCopy];
  if (!v5)
  {
    goto LABEL_10;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v5->_rssiMinCount = Int64Ranged;
  if (Int64Ranged)
  {
    if (Int64Ranged < 0x41)
    {
      goto LABEL_7;
    }

    Int64Ranged = 64;
    v7 = 64;
  }

  else
  {
    v7 = 16;
    Int64Ranged = 16;
  }

  v5->_rssiMinCount = v7;
LABEL_7:
  v8 = malloc_type_calloc(Int64Ranged, 1uLL, 0x100004077774924uLL);
  v5->_channelNumberArray = v8;
  if (v8)
  {
    v9 = malloc_type_calloc(v5->_rssiMinCount, 1uLL, 0x100004077774924uLL);
    v5->_rssiArray = v9;
    if (v9)
    {
      v10 = v5;
LABEL_10:

      return v5;
    }
  }

  else
  {
    FatalErrorF("calloc channel numbers %u x 1 failed", v5->_rssiMinCount);
  }

  v12 = FatalErrorF("calloc RSSIs %u x 1 failed", v5->_rssiMinCount);
  return [(SFProximityEstimatorMaxOfMean *)v12 description];
}

- (id)description
{
  v12 = 0;
  NSAppendPrintF(&v12, "SFProximityEstimatorMaxOfMean");
  v3 = v12;
  descriptionParams = [(SFProximityEstimator *)self descriptionParams];
  v5 = descriptionParams;
  if (descriptionParams)
  {
    v11 = v3;
    NSAppendPrintF(&v11, "%@", descriptionParams);
    v6 = v11;

    v3 = v6;
  }

  if (self->_rssiMinCount)
  {
    rssiMinCount = self->_rssiMinCount;
    v10 = v3;
    NSAppendPrintF(&v10, ", s=%u", rssiMinCount);
    v7 = v10;

    v3 = v7;
  }

  return v3;
}

- (int)_estimateRSSIForSFBLEDevice:(id)device
{
  v35[2] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  rssi = [deviceCopy rssi];
  if ((rssi & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  v6 = rssi;
  rssiIndex = self->_rssiIndex;
  advertisementFields = [deviceCopy advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  self->_channelNumberArray[rssiIndex] = Int64Ranged;
  self->_rssiArray[rssiIndex] = v6;
  if ((rssiIndex + 1) < self->_rssiMinCount)
  {
    v10 = rssiIndex + 1;
  }

  else
  {
    v10 = 0;
  }

  self->_rssiIndex = v10;
  LODWORD(v11) = self->_rssiCount;
  rssiMinCount = self->_rssiMinCount;
  if (v11 < rssiMinCount)
  {
    LODWORD(v11) = v11 + 1;
    self->_rssiCount = v11;
    rssiMinCount = self->_rssiMinCount;
  }

  if (v11 < rssiMinCount)
  {
    goto LABEL_17;
  }

  v35[0] = 0;
  v35[1] = 0;
  v34[0] = 0;
  v34[1] = 0;
  v32 = -1;
  if (v11)
  {
    channelNumberArray = self->_channelNumberArray;
    rssiArray = self->_rssiArray;
    v11 = v11;
    do
    {
      v16 = *channelNumberArray++;
      v15 = v16;
      v17 = v16 & 3;
      v18 = *rssiArray++;
      *(v35 + v17) += v18;
      ++*(v34 + v17);
      *(&v32 | v15 & 3) = v15;
      --v11;
    }

    while (v11);
  }

  v19 = 0;
  v20 = 0x80;
  do
  {
    v21 = *(v34 + v19);
    if (v21)
    {
      v22 = *(v35 + v19) / v21;
      *(v35 + v19) = v22;
      if (v22 > v20)
      {
        v20 = v22;
      }
    }

    v19 += 4;
  }

  while (v19 != 16);
  if (v20 != 128)
  {
    v23 = v20;
    if (gLogCategory_SFProximityEstimator <= 9 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
    {
      v30 = deviceCopy;
      v25 = 0;
      memset(v33, 0, sizeof(v33));
      v31 = v33;
      do
      {
        v26 = *(&v32 + v25);
        if (v26 != 255)
        {
          SNPrintF_Add(&v31, v34, "\tCh %2u: Mean %3d: ", *(&v32 + v25), *(v35 + v25));
          rssiCount = self->_rssiCount;
          if (rssiCount)
          {
            for (i = 0; i < rssiCount; ++i)
            {
              if (self->_channelNumberArray[i] == v26)
              {
                SNPrintF_Add(&v31, v34, "%3d ", self->_rssiArray[i]);
                rssiCount = self->_rssiCount;
              }
            }
          }

          SNPrintF_Add(&v31, v34, "\n");
        }

        ++v25;
      }

      while (v25 != 4);
      deviceCopy = v30;
      if (gLogCategory_SFProximityEstimator < 51 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
      {
        identifier = [v30 identifier];
        LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimatorMaxOfMean _estimateRSSIForSFBLEDevice:]", 50, "%{ptr} %@: R/E %3d/%3d, Thr %3d/%3d, I/N/F %3d/%3d/%3d, Ch %2u\n%s\n", self, identifier, v6, v23, self->super._rssiEnter, self->super._rssiExit, self->super._rssiImmediate, self->super._rssiNear, self->super._rssiFar, Int64Ranged, v33);
      }
    }
  }

  else
  {
LABEL_17:
    LODWORD(v23) = 0;
  }

  return v23;
}

@end