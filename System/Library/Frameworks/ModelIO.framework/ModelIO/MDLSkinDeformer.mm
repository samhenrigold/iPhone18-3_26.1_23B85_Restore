@interface MDLSkinDeformer
- (MDLSkinDeformer)initWithJointPaths:(__n128)paths jointBindTransforms:(__n128)transforms count:(__n128)count meshBindTransform:(uint64_t)transform;
- (MDLSkinDeformer)initWithJointPaths:(__n128)paths jointBindTransforms:(__n128)transforms meshBindTransform:(__n128)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)copyJointBindTransformsInto:(id *)into maxCount:(unint64_t)count;
@end

@implementation MDLSkinDeformer

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = objc_msgSend_allocWithZone_(MDLSkinDeformer, a2, zone, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  jointPaths = self->_jointPaths;
  jointBindTransforms = self->_jointBindTransforms;
  v16 = *&self[1].super.isa;
  v17 = *&self[1]._jointBindTransforms;
  v18 = *&self[2].super.isa;
  v19 = *&self[2]._jointBindTransforms;

  return MEMORY[0x2821F9670](v13, sel_initWithJointPaths_jointBindTransforms_meshBindTransform_, jointPaths, jointBindTransforms, v16, v17, v18, v19);
}

- (MDLSkinDeformer)initWithJointPaths:(__n128)paths jointBindTransforms:(__n128)transforms meshBindTransform:(__n128)transform
{
  v10 = a7;
  v11 = a8;
  v45.receiver = self;
  v45.super_class = MDLSkinDeformer;
  v19 = [(MDLSkinDeformer *)&v45 init];
  if (v19)
  {
    v24 = objc_msgSend_copy(v10, v12, v13, v14, v20, v21, v22, v23, v15, v16, v17, v18);
    jointPaths = v19->_jointPaths;
    v19->_jointPaths = v24;

    v37 = objc_msgSend_copy(v11, v26, v27, v28, v33, v34, v35, v36, v29, v30, v31, v32);
    jointBindTransforms = v19->_jointBindTransforms;
    v19->_jointBindTransforms = v37;

    *&v19[1].super.isa = a2;
    *&v19[1]._jointBindTransforms = paths;
    *&v19[2].super.isa = transforms;
    *&v19[2]._jointBindTransforms = transform;
    v39 = v19;
  }

  return v19;
}

- (MDLSkinDeformer)initWithJointPaths:(__n128)paths jointBindTransforms:(__n128)transforms count:(__n128)count meshBindTransform:(uint64_t)transform
{
  v12 = a7;
  v56.receiver = self;
  v56.super_class = MDLSkinDeformer;
  v20 = [(MDLSkinDeformer *)&v56 init];
  if (!v20)
  {
    goto LABEL_5;
  }

  if (objc_msgSend_count(v12, v13, v14, v15, v21, v22, v23, v24, v16, v17, v18, v19) != a9)
  {
    NSLog(&cfstr_JointpathCount.isa);
LABEL_5:
    v50 = 0;
    goto LABEL_6;
  }

  v36 = objc_msgSend_copy(v12, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  jointPaths = v20->_jointPaths;
  v20->_jointPaths = v36;

  v38 = objc_alloc(MEMORY[0x277CBEA90]);
  v48 = objc_msgSend_initWithBytes_length_(v38, v39, a8, a9 << 6, v44, v45, v46, v47, v40, v41, v42, v43);
  jointBindTransforms = v20->_jointBindTransforms;
  v20->_jointBindTransforms = v48;

  *&v20[1].super.isa = a2;
  *&v20[1]._jointBindTransforms = paths;
  *&v20[2].super.isa = transforms;
  *&v20[2]._jointBindTransforms = count;
  v50 = v20;
LABEL_6:

  return v50;
}

- (unint64_t)copyJointBindTransformsInto:(id *)into maxCount:(unint64_t)count
{
  v15 = objc_msgSend_length(self->_jointBindTransforms, a2, into, count, v8, v9, v10, v11, v4, v5, v6, v7);
  v27 = v15 >> 6;
  if (v15 >> 6 > count)
  {
    NSLog(&cfstr_Jointbindtrans.isa, count, v15 >> 6);
  }

  v28 = objc_msgSend_bytes(self->_jointBindTransforms, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  v40 = objc_msgSend_length(self->_jointBindTransforms, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  memcpy(into, v28, v40);
  return v27;
}

@end