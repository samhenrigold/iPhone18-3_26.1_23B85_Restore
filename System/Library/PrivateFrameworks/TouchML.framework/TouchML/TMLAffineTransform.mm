@interface TMLAffineTransform
+ (void)initializeJSContext:(id)context;
- (CGAffineTransform)transform;
- (TMLAffineTransform)initWithAffineTransform:(CGAffineTransform *)transform;
- (id)CGAffineTransformValue;
@end

@implementation TMLAffineTransform

- (TMLAffineTransform)initWithAffineTransform:(CGAffineTransform *)transform
{
  v7.receiver = self;
  v7.super_class = TMLAffineTransform;
  result = [(TMLAffineTransform *)&v7 init];
  if (result)
  {
    v5 = *&transform->a;
    v6 = *&transform->c;
    *&result->_transform.tx = *&transform->tx;
    *&result->_transform.c = v6;
    *&result->_transform.a = v5;
  }

  return result;
}

- (id)CGAffineTransformValue
{
  v2 = *&self->_transform.c;
  v5[0] = *&self->_transform.a;
  v5[1] = v2;
  v5[2] = *&self->_transform.tx;
  v3 = [MEMORY[0x277CCAE60] valueWithCGAffineTransform:v5];

  return v3;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  v5 = [self alloc];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v26[0] = *MEMORY[0x277CBF2C0];
  v26[1] = v6;
  v26[2] = *(MEMORY[0x277CBF2C0] + 32);
  v7 = [v5 initWithAffineTransform:v26];
  [contextCopy setObject:v7 forKeyedSubscript:@"CGAffineTransformIdentity"];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_26F1A8F38;
  v25[3] = &unk_279DC61E8;
  v25[4] = self;
  v8 = MEMORY[0x27438BB60](v25);
  [contextCopy setObject:v8 forKeyedSubscript:@"affinetransform"];
  [contextCopy setObject:v8 forKeyedSubscript:@"CGAffineTransformMake"];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_26F1A8FB0;
  v24[3] = &unk_279DC6208;
  v24[4] = self;
  v9 = MEMORY[0x27438BB60](v24);
  [contextCopy setObject:v9 forKeyedSubscript:@"CGAffineTransformMakeTranslation"];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_26F1A901C;
  v23[3] = &unk_279DC6208;
  v23[4] = self;
  v10 = MEMORY[0x27438BB60](v23);
  [contextCopy setObject:v10 forKeyedSubscript:@"CGAffineTransformMakeScale"];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_26F1A9088;
  v22[3] = &unk_279DC6228;
  v22[4] = self;
  v11 = MEMORY[0x27438BB60](v22);
  [contextCopy setObject:v11 forKeyedSubscript:@"CGAffineTransformMakeRotation"];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26F1A90EC;
  v21[3] = &unk_279DC6248;
  v21[4] = self;
  v12 = MEMORY[0x27438BB60](v21);
  [contextCopy setObject:v12 forKeyedSubscript:@"CGAffineTransformConcat"];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26F1A91B8;
  v20[3] = &unk_279DC6268;
  v20[4] = self;
  v13 = MEMORY[0x27438BB60](v20);
  [contextCopy setObject:v13 forKeyedSubscript:@"CGAffineTransformTranslate"];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_26F1A9260;
  v19[3] = &unk_279DC6268;
  v19[4] = self;
  v14 = MEMORY[0x27438BB60](v19);
  [contextCopy setObject:v14 forKeyedSubscript:@"CGAffineTransformScale"];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26F1A9308;
  v18[3] = &unk_279DC6288;
  v18[4] = self;
  v15 = MEMORY[0x27438BB60](v18);
  [contextCopy setObject:v15 forKeyedSubscript:@"CGAffineTransformRotate"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26F1A93A8;
  v17[3] = &unk_279DC62A8;
  v17[4] = self;
  v16 = MEMORY[0x27438BB60](v17);
  [contextCopy setObject:v16 forKeyedSubscript:@"CGAffineTransformInvert"];

  [contextCopy setObject:&unk_287F2BD30 forKeyedSubscript:@"CGAffineTransformEqualToTransform"];
}

- (CGAffineTransform)transform
{
  v3 = *&self->d;
  *&retstr->a = *&self->b;
  *&retstr->c = v3;
  *&retstr->tx = *&self->ty;
  return self;
}

@end