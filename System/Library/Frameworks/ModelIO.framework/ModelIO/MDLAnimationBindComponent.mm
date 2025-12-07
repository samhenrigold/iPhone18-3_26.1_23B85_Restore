@interface MDLAnimationBindComponent
- (__n128)geometryBindTransform;
- (__n128)setGeometryBindTransform:(__int128 *)transform;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MDLAnimationBindComponent

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = objc_msgSend_allocWithZone_(MDLAnimationBindComponent, a2, zone, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v25 = objc_msgSend_init(v13, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  objc_msgSend_setSkeleton_(v25, v26, self->_skeleton, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  objc_msgSend_setJointAnimation_(v25, v36, self->_jointAnimation, v37, v42, v43, v44, v45, v38, v39, v40, v41);
  v46 = *&self[1]._jointAnimation;
  var10[0] = *&self[1].super.isa;
  var10[1] = v46;
  objc_msgSend_setGeometryBindTransform_(v25, v47, var10, v48, *&self[2].super.isa, *&self[2]._jointAnimation, v53, v54, v49, v50, v51, v52);
  return v25;
}

- (__n128)geometryBindTransform
{
  v2 = *(self + 112);
  *(a2 + 64) = *(self + 96);
  *(a2 + 80) = v2;
  v3 = *(self + 144);
  *(a2 + 96) = *(self + 128);
  *(a2 + 112) = v3;
  v4 = *(self + 48);
  *a2 = *(self + 32);
  *(a2 + 16) = v4;
  result = *(self + 64);
  v6 = *(self + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setGeometryBindTransform:(__int128 *)transform
{
  v3 = *transform;
  v4 = transform[1];
  v5 = transform[3];
  *(self + 64) = transform[2];
  *(self + 80) = v5;
  *(self + 32) = v3;
  *(self + 48) = v4;
  result = transform[4];
  v7 = transform[5];
  v8 = transform[7];
  *(self + 128) = transform[6];
  *(self + 144) = v8;
  *(self + 96) = result;
  *(self + 112) = v7;
  return result;
}

@end