@interface NTKParmesanCropPreviewModel
- (NTKParmesanCropPreviewModel)initWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto previewValidator:(id)validator crop:(id)crop timeLayout:(id)layout useDepthEffect:(BOOL)effect revertable:(BOOL)revertable;
- (id)description;
@end

@implementation NTKParmesanCropPreviewModel

- (NTKParmesanCropPreviewModel)initWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto previewValidator:(id)validator crop:(id)crop timeLayout:(id)layout useDepthEffect:(BOOL)effect revertable:(BOOL)revertable
{
  photoCopy = photo;
  maskedPhotoCopy = maskedPhoto;
  validatorCopy = validator;
  cropCopy = crop;
  layoutCopy = layout;
  v24.receiver = self;
  v24.super_class = NTKParmesanCropPreviewModel;
  v19 = [(NTKParmesanCropPreviewModel *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_photo, photo);
    objc_storeStrong(&v20->_maskedPhoto, maskedPhoto);
    objc_storeStrong(&v20->_previewValidator, validator);
    objc_storeStrong(&v20->_crop, crop);
    objc_storeStrong(&v20->_timeLayout, layout);
    v20->_useDepthEffect = effect;
    v20->_revertable = revertable;
  }

  return v20;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  photo = self->_photo;
  maskedPhoto = self->_maskedPhoto;
  objc_msgSend_cgRect(self->_crop, a2, v2);
  if (v10 <= 1.0)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"{ %.5f, %.5f, %.5f, %.5f }", v8, v9, *&v10, v11);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"{ %.1f, %.1f, %.1f, %.1f }", v8, v9, *&v10, v11);
  }
  v12 = ;
  v14 = v12;
  v15 = "NO";
  if (self->_useDepthEffect)
  {
    v16 = "YES";
  }

  else
  {
    v16 = "NO";
  }

  if (self->_revertable)
  {
    v15 = "YES";
  }

  v17 = objc_msgSend_stringWithFormat_(v4, v13, @"[previewModel: photo=%@, mask=%@, crop=%@, timelayout=%@, useDepth=%s, revertable=%s]", photo, maskedPhoto, v12, self->_timeLayout, v16, v15);

  return v17;
}

@end