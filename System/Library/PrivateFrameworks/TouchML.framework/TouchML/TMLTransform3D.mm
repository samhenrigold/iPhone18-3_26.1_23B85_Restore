@interface TMLTransform3D
+ (void)initializeJSContext:(id)context;
- (CATransform3D)transform;
- (TMLAffineTransform)affineTransform;
- (TMLTransform3D)initWithTransform3D:(CATransform3D *)d;
- (id)CATransform3DValue;
@end

@implementation TMLTransform3D

- (TMLTransform3D)initWithTransform3D:(CATransform3D *)d
{
  v11.receiver = self;
  v11.super_class = TMLTransform3D;
  result = [(TMLTransform3D *)&v11 init];
  if (result)
  {
    v5 = *&d->m11;
    v6 = *&d->m13;
    v7 = *&d->m21;
    *&result->_transform.m23 = *&d->m23;
    *&result->_transform.m21 = v7;
    *&result->_transform.m13 = v6;
    *&result->_transform.m11 = v5;
    v8 = *&d->m31;
    v9 = *&d->m33;
    v10 = *&d->m41;
    *&result->_transform.m43 = *&d->m43;
    *&result->_transform.m41 = v10;
    *&result->_transform.m33 = v9;
    *&result->_transform.m31 = v8;
  }

  return result;
}

- (id)CATransform3DValue
{
  v2 = *&self->_transform.m33;
  v8[4] = *&self->_transform.m31;
  v8[5] = v2;
  v3 = *&self->_transform.m43;
  v8[6] = *&self->_transform.m41;
  v8[7] = v3;
  v4 = *&self->_transform.m13;
  v8[0] = *&self->_transform.m11;
  v8[1] = v4;
  v5 = *&self->_transform.m23;
  v8[2] = *&self->_transform.m21;
  v8[3] = v5;
  v6 = [MEMORY[0x277CCAE60] valueWithCATransform3D:v8];

  return v6;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  v5 = [self alloc];
  v6 = *(MEMORY[0x277CD9DE8] + 80);
  v29[4] = *(MEMORY[0x277CD9DE8] + 64);
  v29[5] = v6;
  v7 = *(MEMORY[0x277CD9DE8] + 112);
  v29[6] = *(MEMORY[0x277CD9DE8] + 96);
  v29[7] = v7;
  v8 = *(MEMORY[0x277CD9DE8] + 16);
  v29[0] = *MEMORY[0x277CD9DE8];
  v29[1] = v8;
  v9 = *(MEMORY[0x277CD9DE8] + 48);
  v29[2] = *(MEMORY[0x277CD9DE8] + 32);
  v29[3] = v9;
  v10 = [v5 initWithTransform3D:v29];
  [contextCopy setObject:v10 forKeyedSubscript:@"CATransform3DIdentity"];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_26F1B9A64;
  v28[3] = &unk_279DC66F0;
  v28[4] = self;
  v11 = MEMORY[0x27438BB60](v28);
  [contextCopy setObject:v11 forKeyedSubscript:@"CATransform3DMakeTranslation"];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_26F1B9AE0;
  v27[3] = &unk_279DC66F0;
  v27[4] = self;
  v12 = MEMORY[0x27438BB60](v27);
  [contextCopy setObject:v12 forKeyedSubscript:@"CATransform3DMakeScale"];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_26F1B9B5C;
  v26[3] = &unk_279DC6710;
  v26[4] = self;
  v13 = MEMORY[0x27438BB60](v26);
  [contextCopy setObject:v13 forKeyedSubscript:@"CATransform3DMakeRotation"];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_26F1B9BE0;
  v25[3] = &unk_279DC6730;
  v25[4] = self;
  v14 = MEMORY[0x27438BB60](v25);
  [contextCopy setObject:v14 forKeyedSubscript:@"CATransform3DConcat"];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_26F1B9CBC;
  v24[3] = &unk_279DC6750;
  v24[4] = self;
  v15 = MEMORY[0x27438BB60](v24);
  [contextCopy setObject:v15 forKeyedSubscript:@"CATransform3DTranslate"];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_26F1B9D84;
  v23[3] = &unk_279DC6750;
  v23[4] = self;
  v16 = MEMORY[0x27438BB60](v23);
  [contextCopy setObject:v16 forKeyedSubscript:@"CATransform3DScale"];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_26F1B9E4C;
  v22[3] = &unk_279DC6770;
  v22[4] = self;
  v17 = MEMORY[0x27438BB60](v22);
  [contextCopy setObject:v17 forKeyedSubscript:@"CATransform3DRotate"];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26F1B9F1C;
  v21[3] = &unk_279DC6790;
  v21[4] = self;
  v18 = MEMORY[0x27438BB60](v21);
  [contextCopy setObject:v18 forKeyedSubscript:@"CATransform3DInvert"];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26F1B9FBC;
  v20[3] = &unk_279DC67B0;
  v20[4] = self;
  v19 = MEMORY[0x27438BB60](v20);
  [contextCopy setObject:v19 forKeyedSubscript:@"CATransform3DMakeAffineTransform"];
}

- (TMLAffineTransform)affineTransform
{
  v3 = [TMLAffineTransform alloc];
  v4 = *&self->_transform.m33;
  *&v10.m31 = *&self->_transform.m31;
  *&v10.m33 = v4;
  v5 = *&self->_transform.m43;
  *&v10.m41 = *&self->_transform.m41;
  *&v10.m43 = v5;
  v6 = *&self->_transform.m13;
  *&v10.m11 = *&self->_transform.m11;
  *&v10.m13 = v6;
  v7 = *&self->_transform.m23;
  *&v10.m21 = *&self->_transform.m21;
  *&v10.m23 = v7;
  CATransform3DGetAffineTransform(&v11, &v10);
  v8 = [(TMLAffineTransform *)v3 initWithAffineTransform:&v11];

  return v8;
}

- (CATransform3D)transform
{
  v3 = *&self->m34;
  *&retstr->m31 = *&self->m32;
  *&retstr->m33 = v3;
  v4 = *&self->m44;
  *&retstr->m41 = *&self->m42;
  *&retstr->m43 = v4;
  v5 = *&self->m14;
  *&retstr->m11 = *&self->m12;
  *&retstr->m13 = v5;
  v6 = *&self->m24;
  *&retstr->m21 = *&self->m22;
  *&retstr->m23 = v6;
  return self;
}

@end