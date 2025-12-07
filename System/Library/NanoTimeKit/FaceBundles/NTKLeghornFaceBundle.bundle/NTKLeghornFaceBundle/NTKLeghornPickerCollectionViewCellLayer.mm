@interface NTKLeghornPickerCollectionViewCellLayer
- (CALayer)labelLayer;
- (void)setTransform:(CATransform3D *)transform;
@end

@implementation NTKLeghornPickerCollectionViewCellLayer

- (void)setTransform:(CATransform3D *)transform
{
  v15.receiver = self;
  v15.super_class = NTKLeghornPickerCollectionViewCellLayer;
  v5 = *(MEMORY[0x277CD9DE8] + 80);
  *&v14.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v14.m33 = v5;
  v6 = *(MEMORY[0x277CD9DE8] + 112);
  *&v14.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v14.m43 = v6;
  v7 = *(MEMORY[0x277CD9DE8] + 16);
  *&v14.m11 = *MEMORY[0x277CD9DE8];
  *&v14.m13 = v7;
  v8 = *(MEMORY[0x277CD9DE8] + 48);
  *&v14.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v14.m23 = v8;
  [(NTKLeghornPickerCollectionViewCellLayer *)&v15 setTransform:&v14];
  v13 = *transform;
  v11 = objc_msgSend_labelLayer(self, v9, v10);
  v14 = v13;
  objc_msgSend_setTransform_(v11, v12, &v14);
}

- (CALayer)labelLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_labelLayer);

  return WeakRetained;
}

@end