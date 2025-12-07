@interface SFProximityEstimatorChannelMedian
- (id)description;
- (int)_estimateRSSIForSFBLEDevice:(id)device;
@end

@implementation SFProximityEstimatorChannelMedian

- (id)description
{
  v9 = 0;
  NSAppendPrintF(&v9, "SFProximityEstimatorChannelMedian");
  v3 = v9;
  descriptionParams = [(SFProximityEstimator *)self descriptionParams];
  v5 = descriptionParams;
  if (descriptionParams)
  {
    v8 = v3;
    NSAppendPrintF(&v8, "%@", descriptionParams);
    v6 = v8;

    v3 = v6;
  }

  return v3;
}

- (int)_estimateRSSIForSFBLEDevice:(id)device
{
  v51[0] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  rssi = [deviceCopy rssi];
  if ((rssi & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v6 = rssi;
  advertisementFields = [deviceCopy advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v9 = self->_channels + 8 * (Int64Ranged & 3) - (Int64Ranged & 3);
  *v9 = Int64Ranged;
  v10 = v9[4];
  v9[v10 + 1] = v6;
  if ((v10 + 1) <= 2u)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  v9[4] = v11;
  v12 = v9[5];
  if (v12 < 3)
  {
    v9[5] = v12 + 1;
  }

  v13 = &self->_channels[0].rssiValues[2];
  v14 = 0x80;
  v15 = 4;
  do
  {
    if (v13[2] >= 3u)
    {
      v16 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;
      if (v18 <= v16)
      {
        v19 = *(v13 - 2);
      }

      else
      {
        v19 = *v13;
      }

      if (v17 < v18)
      {
        v19 = *(v13 - 1);
      }

      if (v18 >= v16)
      {
        v20 = *(v13 - 2);
      }

      else
      {
        v20 = *v13;
      }

      if (v17 <= v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = *(v13 - 1);
      }

      if (v16 > v17)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      v13[3] = v22;
      if (v22 > v14)
      {
        v14 = v22;
      }
    }

    v13 += 7;
    --v15;
  }

  while (v15);
  if (v14 != 128)
  {
    v23 = v14;
    if (gLogCategory_SFProximityEstimator <= 9 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
    {
      v32 = v6;
      v33 = v23;
      v25 = 0;
      memset(v50, 0, sizeof(v50));
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      rssiValues = self->_channels[0].rssiValues;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v34 = &v35;
      v35 = 0;
      do
      {
        v27 = &self->_channels[0].channel + 8 * v25 - v25;
        if (v27[5])
        {
          v28 = "; ";
          if (!v25)
          {
            v28 = "";
          }

          SNPrintF_Add(&v34, v51, "%sCh %2u, Median %3d, [", v28, *v27, v27[6]);
          if (v27[5])
          {
            v29 = 0;
            do
            {
              if (v29)
              {
                v30 = ", ";
              }

              else
              {
                v30 = "";
              }

              SNPrintF_Add(&v34, v51, "%s%3d", v30, rssiValues[v29++]);
            }

            while (v29 < v27[5]);
          }

          SNPrintF_Add(&v34, v51, "]");
        }

        ++v25;
        rssiValues += 7;
      }

      while (v25 != 4);
      LODWORD(v23) = v33;
      if (gLogCategory_SFProximityEstimator < 51 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
      {
        identifier = [deviceCopy identifier];
        LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimatorChannelMedian _estimateRSSIForSFBLEDevice:]", 50, "%@: Ch %2u, RSSI %3d, Best %3d, Thr %3d/%3d, I/N/F %3d/%3d/%3d: %s\n", identifier, Int64Ranged, v32, v33, self->super._rssiEnter, self->super._rssiExit, self->super._rssiImmediate, self->super._rssiNear, self->super._rssiFar, &v35);
      }
    }
  }

  else
  {
LABEL_27:
    LODWORD(v23) = 0;
  }

  return v23;
}

@end