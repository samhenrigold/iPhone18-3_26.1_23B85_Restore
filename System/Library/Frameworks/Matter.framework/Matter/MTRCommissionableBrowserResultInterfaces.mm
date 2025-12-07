@interface MTRCommissionableBrowserResultInterfaces
- (Optional<chip::Dnssd::CommonResolutionData>)resolutionData;
- (void)setResolutionData:(Optional<chip::Dnssd::CommonResolutionData>)data;
@end

@implementation MTRCommissionableBrowserResultInterfaces

- (Optional<chip::Dnssd::CommonResolutionData>)resolutionData
{
  mHasValue = self->_resolutionData.mValueHolder.mHasValue;
  *v2 = mHasValue;
  if (mHasValue)
  {
    *(v2 + 8) = self[1].super.isa;
    v4 = *&self[8]._resolutionData.mValueHolder.mHasValue;
    *(v2 + 112) = *(self + 120);
    *(v2 + 128) = v4;
    *(v2 + 144) = *(self + 152);
    *(v2 + 155) = *(self + 163);
    v5 = *&self[4]._resolutionData.mValueHolder.mHasValue;
    *(v2 + 48) = *(self + 56);
    *(v2 + 64) = v5;
    v6 = *&self[6]._resolutionData.mValueHolder.mHasValue;
    *(v2 + 80) = *(self + 88);
    *(v2 + 96) = v6;
    v7 = *&self[2]._resolutionData.mValueHolder.mHasValue;
    *(v2 + 16) = *(self + 24);
    *(v2 + 32) = v7;
  }

  return self;
}

- (void)setResolutionData:(Optional<chip::Dnssd::CommonResolutionData>)data
{
  v3 = **&data.mValueHolder.mHasValue;
  self->_resolutionData.mValueHolder.mHasValue = v3;
  if (v3 == 1)
  {
    LODWORD(self[1].super.isa) = *(*&data.mValueHolder.mHasValue + 8);
    v4 = *(*&data.mValueHolder.mHasValue + 16);
    *(self + 40) = *(*&data.mValueHolder.mHasValue + 32);
    *&self[1]._resolutionData.mValueHolder.mHasValue = v4;
    v5 = *(*&data.mValueHolder.mHasValue + 48);
    v6 = *(*&data.mValueHolder.mHasValue + 64);
    v7 = *(*&data.mValueHolder.mHasValue + 80);
    *(self + 104) = *(*&data.mValueHolder.mHasValue + 96);
    *&self[5]._resolutionData.mValueHolder.mHasValue = v7;
    *&self[4]._resolutionData.mValueHolder.mHasValue = v6;
    *&self[3]._resolutionData.mValueHolder.mHasValue = v5;
    v8 = *(*&data.mValueHolder.mHasValue + 112);
    v9 = *(*&data.mValueHolder.mHasValue + 128);
    v10 = *(*&data.mValueHolder.mHasValue + 144);
    *(self + 163) = *(*&data.mValueHolder.mHasValue + 155);
    *&self[9]._resolutionData.mValueHolder.mHasValue = v10;
    *&self[8]._resolutionData.mValueHolder.mHasValue = v9;
    *&self[7]._resolutionData.mValueHolder.mHasValue = v8;
  }
}

@end