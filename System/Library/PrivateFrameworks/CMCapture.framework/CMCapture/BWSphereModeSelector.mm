@interface BWSphereModeSelector
+ (void)initialize;
- (BWSphereModeSelector)initWithPortType:(id)type stillActivePreviewSupported:(BOOL)supported sphereVideoSupported:(BOOL)videoSupported sphereVideoMaxFrameRate:(float)rate spherePanoSupported:(BOOL)panoSupported trueVideoUsesSphereModeVideoHighRange:(BOOL)range;
- (float)_updateSphereMode;
- (void)dealloc;
@end

@implementation BWSphereModeSelector

- (float)_updateSphereMode
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *off_1E798C498;
  if (*(result + 40) == 1)
  {
    v4 = result[8];
    v5 = *off_1E798C498;
    if (v4 <= result[15])
    {
      if (*(result + 36) == 1 && *(result + 37) == 1)
      {
        if (*(result + 58) == 1)
        {
          v6 = *(result + 57);
        }

        else
        {
          v6 = 0;
        }

        if (*(result + 59) != 1 || (v6 & 1) != 0)
        {
          if (*(result + 56) != 1)
          {
            v12 = (v4 < 60.0) | v6;
            v13 = *(result + 12);
            v11 = &qword_1ED844FF0[3 * *(result + 42) + v13];
            v14 = (v12 & 1) == 0;
            if (v12)
            {
              v10 = qword_1ED844FF0;
            }

            else
            {
              v10 = qword_1ED845020;
            }

            if (v14)
            {
              v11 = &qword_1ED845020[3 * *(result + 42) + v13];
            }

            goto LABEL_44;
          }

          v9 = *(result + 12);
          v10 = &qword_1ED8450E0;
        }

        else
        {
          v9 = *(result + 12);
          v10 = qword_1ED845020;
        }

        v11 = &v10[3 * *(result + 42) + v9];
LABEL_44:
        v5 = *v11;
        v3 = *v10;
        if (v4 <= 60.0 && (*(result + 38) & 1) != 0)
        {
          result = objc_msgSend_isEqualToString_(v5, a2, *off_1E798C4B0);
          if (result)
          {
            v5 = *off_1E798C4C8;
          }

          else
          {
            result = objc_msgSend_isEqualToString_(v5);
            if (result)
            {
              v5 = *off_1E798C4C0;
            }
          }
        }

        goto LABEL_34;
      }

      if (*(result + 43) == 1 && ((result[11] & 1) != 0 || (result[14] & 1) != 0 || *(result + 64) == 1))
      {
        if (*(result + 52) == 1)
        {
          v7 = *(result + 12);
          v8 = &qword_1ED8450B0;
        }

        else
        {
          v7 = *(result + 12);
          if (*(result + 56) == 1)
          {
            v8 = &qword_1ED845110;
          }

          else
          {
            v8 = &qword_1ED845080;
          }
        }
      }

      else if (*(result + 54) == 1 && *(result + 55) == 1)
      {
        v7 = *(result + 12);
        v8 = &qword_1ED845140;
      }

      else if (*(result + 39) == 1)
      {
        v7 = *(result + 12);
        v8 = &qword_1ED845050;
      }

      else
      {
        v7 = *(result + 12);
        if (*(result + 53) == 1)
        {
          v8 = &qword_1ED844FC0;
        }

        else
        {
          v8 = &_MergedGlobals_9;
        }
      }

      v5 = v8[3 * *(result + 42) + v7];
      v3 = *v8;
    }
  }

  else
  {
    v5 = *off_1E798C498;
  }

LABEL_34:
  if (*(v2 + 2) != v5)
  {
    *(v2 + 2) = v5;
  }

  if (*(v2 + 3) != v3)
  {
    *(v2 + 3) = v3;
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _MergedGlobals_9 = *off_1E798C490;
    *algn_1ED844F98 = _MergedGlobals_9;
    qword_1ED844FA0 = _MergedGlobals_9;
    unk_1ED844FA8 = _MergedGlobals_9;
    qword_1ED844FB0 = _MergedGlobals_9;
    unk_1ED844FB8 = _MergedGlobals_9;
    qword_1ED844FC0 = *off_1E798C480;
    unk_1ED844FC8 = qword_1ED844FC0;
    qword_1ED844FD0 = _MergedGlobals_9;
    unk_1ED844FD8 = _MergedGlobals_9;
    qword_1ED844FE0 = _MergedGlobals_9;
    unk_1ED844FE8 = _MergedGlobals_9;
    qword_1ED844FF0[0] = *off_1E798C4B8;
    unk_1ED844FF8 = qword_1ED844FF0[0];
    qword_1ED845000 = qword_1ED844FF0[0];
    unk_1ED845008 = qword_1ED844FC0;
    qword_1ED845010 = qword_1ED844FC0;
    unk_1ED845018 = qword_1ED844FC0;
    qword_1ED845020[0] = *off_1E798C4B0;
    unk_1ED845028 = qword_1ED845020[0];
    qword_1ED845030 = qword_1ED845020[0];
    unk_1ED845038 = _MergedGlobals_9;
    qword_1ED845040 = _MergedGlobals_9;
    unk_1ED845048 = _MergedGlobals_9;
    qword_1ED845050 = qword_1ED844FC0;
    unk_1ED845058 = qword_1ED844FC0;
    qword_1ED845060 = _MergedGlobals_9;
    unk_1ED845068 = qword_1ED844FC0;
    qword_1ED845070 = qword_1ED844FC0;
    unk_1ED845078 = _MergedGlobals_9;
    qword_1ED845080 = *off_1E798C4A8;
    unk_1ED845088 = qword_1ED845080;
    qword_1ED845090 = qword_1ED844FC0;
    unk_1ED845098 = qword_1ED844FC0;
    qword_1ED8450A0 = qword_1ED844FC0;
    unk_1ED8450A8 = qword_1ED844FC0;
    qword_1ED8450B0 = qword_1ED844FC0;
    unk_1ED8450B8 = qword_1ED844FC0;
    qword_1ED8450C0 = _MergedGlobals_9;
    unk_1ED8450C8 = _MergedGlobals_9;
    qword_1ED8450D0 = _MergedGlobals_9;
    unk_1ED8450D8 = _MergedGlobals_9;
    qword_1ED8450E0 = qword_1ED844FF0[0];
    unk_1ED8450E8 = qword_1ED844FF0[0];
    qword_1ED8450F0 = qword_1ED844FF0[0];
    unk_1ED8450F8 = qword_1ED844FC0;
    qword_1ED845100 = qword_1ED844FC0;
    unk_1ED845108 = _MergedGlobals_9;
    qword_1ED845110 = qword_1ED845080;
    unk_1ED845118 = qword_1ED845080;
    qword_1ED845120 = qword_1ED844FC0;
    unk_1ED845128 = qword_1ED844FC0;
    qword_1ED845130 = qword_1ED844FC0;
    unk_1ED845138 = _MergedGlobals_9;
    qword_1ED845140 = *off_1E798C4A0;
    unk_1ED845148 = qword_1ED845140;
    qword_1ED845150 = _MergedGlobals_9;
    unk_1ED845158 = _MergedGlobals_9;
    qword_1ED845160 = _MergedGlobals_9;
    unk_1ED845168 = _MergedGlobals_9;
  }
}

- (BWSphereModeSelector)initWithPortType:(id)type stillActivePreviewSupported:(BOOL)supported sphereVideoSupported:(BOOL)videoSupported sphereVideoMaxFrameRate:(float)rate spherePanoSupported:(BOOL)panoSupported trueVideoUsesSphereModeVideoHighRange:(BOOL)range
{
  v18.receiver = self;
  v18.super_class = BWSphereModeSelector;
  v14 = [(BWSphereModeSelector *)&v18 init];
  if (v14)
  {
    typeCopy = type;
    v16 = *off_1E798C498;
    v14->_portType = typeCopy;
    v14->_currentSphereMode = v16;
    v14->_currentNonLowPowerSphereMode = v16;
    v14->_stillPreviewActiveSupported = supported;
    v14->_sphereVideoSupported = videoSupported;
    v14->_maximumFrameRateSupported = fmaxf(rate, 120.0);
    v14->_spherePanoSupported = panoSupported;
    v14->_trueVideoUsesSphereModeVideoHighRange = range;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSphereModeSelector;
  [(BWSphereModeSelector *)&v3 dealloc];
}

@end