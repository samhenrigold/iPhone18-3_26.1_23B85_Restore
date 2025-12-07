@interface MDLPackedJointAnimation
- (MDLPackedJointAnimation)initWithName:(NSString *)name jointPaths:(NSArray *)jointPaths;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MDLPackedJointAnimation

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = objc_msgSend_allocWithZone_(MDLPackedJointAnimation, a2, zone, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v25 = objc_msgSend_name(self, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  v35 = objc_msgSend_initWithName_jointPaths_(v13, v26, v25, self->_jointPaths, v31, v32, v33, v34, v27, v28, v29, v30);

  v47 = objc_msgSend_copy(self->_translations, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
  v48 = v35[8];
  v35[8] = v47;

  v60 = objc_msgSend_copy(self->_rotations, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  v61 = v35[9];
  v35[9] = v60;

  v73 = objc_msgSend_copy(self->_scales, v62, v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);
  v74 = v35[10];
  v35[10] = v73;

  return v35;
}

- (MDLPackedJointAnimation)initWithName:(NSString *)name jointPaths:(NSArray *)jointPaths
{
  v6 = name;
  v7 = jointPaths;
  v121.receiver = self;
  v121.super_class = MDLPackedJointAnimation;
  v15 = [(MDLObject *)&v121 init];
  if (v15)
  {
    v20 = objc_msgSend_copy(v6, v8, v9, v10, v16, v17, v18, v19, v11, v12, v13, v14);
    objc_msgSend_setName_(v15, v21, v20, v22, v27, v28, v29, v30, v23, v24, v25, v26);

    v42 = objc_msgSend_copy(v7, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    v43 = v15->_jointPaths;
    v15->_jointPaths = v42;

    v44 = [MDLAnimatedVector3Array alloc];
    v56 = objc_msgSend_count(v15->_jointPaths, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51);
    v67 = objc_msgSend_initWithElementCount_(v44, v57, v56, v58, v63, v64, v65, v66, v59, v60, v61, v62);
    translations = v15->_translations;
    v15->_translations = v67;

    v69 = [MDLAnimatedQuaternionArray alloc];
    v81 = objc_msgSend_count(v15->_jointPaths, v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);
    v92 = objc_msgSend_initWithElementCount_(v69, v82, v81, v83, v88, v89, v90, v91, v84, v85, v86, v87);
    rotations = v15->_rotations;
    v15->_rotations = v92;

    v94 = [MDLAnimatedVector3Array alloc];
    v106 = objc_msgSend_count(v15->_jointPaths, v95, v96, v97, v102, v103, v104, v105, v98, v99, v100, v101);
    v117 = objc_msgSend_initWithElementCount_(v94, v107, v106, v108, v113, v114, v115, v116, v109, v110, v111, v112);
    scales = v15->_scales;
    v15->_scales = v117;

    v119 = v15;
  }

  return v15;
}

@end