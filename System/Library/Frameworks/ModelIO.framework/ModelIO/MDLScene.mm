@interface MDLScene
- (MDLScene)init;
- (__n128)hitTestRayFrom:(uint64_t)from withDirection:(uint64_t)direction usingCamera:(void *)camera;
- (id).cxx_construct;
- (id)raytraceSceneWithCamera:(const RTCamera *)camera reflection:(id)reflection irradiance:(id)irradiance size:;
- (int)acquireLockGuard;
- (void)addObject:(id)object;
- (void)clear;
- (void)dealloc;
@end

@implementation MDLScene

- (MDLScene)init
{
  v4.receiver = self;
  v4.super_class = MDLScene;
  v2 = [(MDLScene *)&v4 init];
  if (v2)
  {
    v2->_signature = 0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  sceneMutex = self->_sceneMutex;
  std::mutex::lock(sceneMutex);
  begin = self->_sceneObjects.__begin_;
  end = self->_sceneObjects.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      (*(**begin + 24))(*begin);
    }

    ++begin;
  }

  std::mutex::unlock(sceneMutex);
  v6.receiver = self;
  v6.super_class = MDLScene;
  [(MDLScene *)&v6 dealloc];
}

- (int)acquireLockGuard
{
  std::mutex::lock(self->_sceneMutex);
  result = self->_signature + 1;
  self->_signature = result;
  return result;
}

- (__n128)hitTestRayFrom:(uint64_t)from withDirection:(uint64_t)direction usingCamera:(void *)camera
{
  cameraCopy = camera;
  __asm { FMOV            V0.2S, #1.0 }

  v12 = *(from + 16);
  v11 = *(from + 24);
  v13.i64[0] = 0x80000000800000;
  v13.i64[1] = 0x80000000800000;
  v14 = vnegq_f32(v13);
  if (v12 == v11)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14;
    v5.i32[0] = 2139095039;
    do
    {
      v17 = v5;
      sub_239E879CC(*v12);
      v15.i32[0] = 2139095039;
      v5 = v17;
      v18 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v17, v15), 0), 0, v18);
      if (v17.f32[0] > 3.4028e38)
      {
        v5.f32[0] = 3.4028e38;
      }

      ++v12;
    }

    while (v12 != v11);
  }

  return v18;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  objc_msgSend_addObject_(self->_objects, v5, objectCopy, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  sceneMutex = self->_sceneMutex;
  std::mutex::lock(sceneMutex);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = objectCopy;
      objc_msgSend_vertexCount(v16, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
      objc_msgSend_vertexCount(v16, v28, v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);
      objc_msgSend_vertexCount(v16, v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);
      objc_msgSend_vertexCount(v16, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
      objc_msgSend_vertexCount(v16, v61, v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);
      objc_msgSend_vertexCount(v16, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
      objc_msgSend_vertexCount(v16, v83, v84, v85, v90, v91, v92, v93, v86, v87, v88, v89);
    }

    operator new();
  }

  v94 = objectCopy;
  sub_239F5469C(&self->_sceneLights.__begin_, &v94);

  std::mutex::unlock(sceneMutex);
}

- (void)clear
{
  sceneMutex = self->_sceneMutex;
  std::mutex::lock(sceneMutex);
  begin = self->_sceneObjects.__begin_;
  end = self->_sceneObjects.__end_;
  if (begin != end)
  {
    do
    {
      if (*begin)
      {
        (*(**begin + 24))(*begin);
      }

      ++begin;
    }

    while (begin != end);
    begin = self->_sceneObjects.__begin_;
  }

  self->_sceneObjects.__end_ = begin;

  std::mutex::unlock(sceneMutex);
}

- (id)raytraceSceneWithCamera:(const RTCamera *)camera reflection:(id)reflection irradiance:(id)irradiance size:
{
  v91 = v5;
  reflectionCopy = reflection;
  irradianceCopy = irradiance;
  v11 = objc_alloc(MEMORY[0x277CBEB28]);
  v21 = objc_msgSend_initWithLength_(v11, v12, 4 * v91.n128_u32[1] * v91.n128_u32[0], v13, v91, v18, v19, v20, v14, v15, v16, v17);
  v22 = v21;
  v34 = objc_msgSend_mutableBytes(v22, v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  if ((atomic_load_explicit(&qword_27DF912B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF912B8))
  {
    operator new();
  }

  v35 = objc_autoreleasePoolPush();
  v47 = objc_msgSend_acquireLockGuard(self, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
  v48 = clock();
  objc_msgSend_translation(camera->var10, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  v87 = v60;
  v89 = dispatch_queue_create("trace", 0);
  v88 = dispatch_group_create();
  v61 = dispatch_get_global_queue(33, 0);
  v90 = COERCE_DOUBLE(vcvt_f32_s32(v91.n128_u64[0]));
  *&v62 = sub_239F1633C(camera, 0.0, v90);
  v86 = v62;
  *&v63 = sub_239F1633C(camera, COERCE_DOUBLE(LODWORD(v90)), v90);
  v85 = v63;
  DWORD1(v63) = HIDWORD(v90);
  LODWORD(v63) = 0;
  *&v64 = sub_239F1633C(camera, *&v63, v90);
  v84 = v64;
  *&v65 = sub_239F1633C(camera, v90, v90);
  v66 = vrsqrte_f32(1062333316);
  v67 = vmul_f32(vrsqrts_f32(1062333316, vmul_f32(v66, v66)), v66);
  block[1] = 3221225472;
  block[0] = MEMORY[0x277D85DD0];
  block[2] = sub_239F54C00;
  block[3] = &unk_278B41200;
  v104 = v91.n128_u64[0];
  v93 = v86;
  v94 = v84;
  v95 = v85;
  v96 = v65;
  selfCopy = self;
  v105 = v34;
  cameraCopy = camera;
  v97 = v87;
  v98 = vmulq_n_f32(xmmword_239F9EB30, vmul_f32(v67, vrsqrts_f32(1062333316, vmul_f32(v67, v67))).f32[0]);
  v68 = reflectionCopy;
  v100 = v68;
  v69 = irradianceCopy;
  v101 = v69;
  v70 = v88;
  v102 = v70;
  v71 = v89;
  v103 = v71;
  dispatch_apply(0x20uLL, v61, block);
  dispatch_group_wait(v70, 0xFFFFFFFFFFFFFFFFLL);
  v72 = clock();
  NSLog(&cfstr_FrameTime2fms.isa, (v72 - v48) * 0.0001);
  objc_msgSend_releaseLockGuard_(self, v73, v47, v74, v79, v80, v81, v82, v75, v76, v77, v78);

  objc_autoreleasePoolPop(v35);

  return v21;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end