@interface MTRCommissionableBrowserResult
- (Optional<chip::Controller::SetUpCodePairerParameters>)params;
- (void)setParams:(Optional<chip::Controller::SetUpCodePairerParameters>)params;
@end

@implementation MTRCommissionableBrowserResult

- (Optional<chip::Controller::SetUpCodePairerParameters>)params
{
  mHasValue = self->_params.mValueHolder.mHasValue;
  *v2 = mHasValue;
  if (mHasValue)
  {
    *(v2 + 8) = *&self[1].super.isa;
    instanceName_high = HIDWORD(self[1]._instanceName);
    *(v2 + 24) = self[1]._instanceName;
    *(v2 + 28) = instanceName_high;
    *(v2 + 32) = self[1]._vendorID;
    *(v2 + 88) = *&self[2]._commissioningMode;
    *(v2 + 104) = *&self[2]._vendorID;
    *(v2 + 120) = *&self[2]._discriminator;
    *(v2 + 132) = *(&self[2]._peripheral + 4);
    *(v2 + 40) = *&self[1]._productID;
    *(v2 + 56) = *&self[1]._peripheral;
    *(v2 + 72) = *&self[1]._params.mValueHolder.mHasValue;
    v5 = *(&self[2]._params + 4);
    *(v2 + 148) = v5;
    if (v5 == 1)
    {
      *(v2 + 152) = self[3].super.isa;
      *(v2 + 160) = *&self[3]._commissioningMode;
    }

    *(v2 + 168) = *&self[3]._instanceName;
    *(v2 + 184) = self[3]._productID;
    v6 = *&self[3]._interfaces;
    *(v2 + 192) = *&self[3]._discriminator;
    *(v2 + 208) = v6;
    *(v2 + 217) = *&self[3]._params.mValueHolder.mValue.mData;
    *(v2 + 236) = *(&self[4]._commissioningMode + 4);
  }

  return self;
}

- (void)setParams:(Optional<chip::Controller::SetUpCodePairerParameters>)params
{
  v3 = **&params.mValueHolder.mHasValue;
  self->_params.mValueHolder.mHasValue = v3;
  if (v3 == 1)
  {
    v4 = *(*&params.mValueHolder.mHasValue + 8);
    LODWORD(self[1]._instanceName) = *(*&params.mValueHolder.mHasValue + 24);
    *&self[1].super.isa = v4;
    HIDWORD(self[1]._instanceName) = *(*&params.mValueHolder.mHasValue + 28);
    self[1]._vendorID = *(*&params.mValueHolder.mHasValue + 32);
    v5 = *(*&params.mValueHolder.mHasValue + 40);
    v6 = *(*&params.mValueHolder.mHasValue + 56);
    *&self[1]._params.mValueHolder.mHasValue = *(*&params.mValueHolder.mHasValue + 72);
    *&self[1]._peripheral = v6;
    *&self[1]._productID = v5;
    v7 = *(*&params.mValueHolder.mHasValue + 88);
    v8 = *(*&params.mValueHolder.mHasValue + 104);
    v9 = *(*&params.mValueHolder.mHasValue + 120);
    *(&self[2]._peripheral + 4) = *(*&params.mValueHolder.mHasValue + 132);
    *&self[2]._discriminator = v9;
    *&self[2]._vendorID = v8;
    *&self[2]._commissioningMode = v7;
    *(&self[2]._params + 4) = 0;
    v10 = *(*&params.mValueHolder.mHasValue + 148);
    *(&self[2]._params + 4) = v10;
    if (v10 == 1)
    {
      v11 = *(*&params.mValueHolder.mHasValue + 152);
      *&self[3]._commissioningMode = *(*&params.mValueHolder.mHasValue + 160);
      self[3].super.isa = v11;
    }

    v12 = *(*&params.mValueHolder.mHasValue + 168);
    self[3]._productID = *(*&params.mValueHolder.mHasValue + 184);
    *&self[3]._instanceName = v12;
    v13 = *(*&params.mValueHolder.mHasValue + 192);
    v14 = *(*&params.mValueHolder.mHasValue + 208);
    *&self[3]._params.mValueHolder.mValue.mData = *(*&params.mValueHolder.mHasValue + 217);
    *&self[3]._discriminator = v13;
    *&self[3]._interfaces = v14;
    *(&self[4]._commissioningMode + 1) = *(*&params.mValueHolder.mHasValue + 236);
    LODWORD(self[4]._instanceName) = *(*&params.mValueHolder.mHasValue + 240);
  }
}

@end