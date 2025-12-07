@interface PVCameraPreviewRenderer
- (HGRef<PVRenderManager>)renderManager;
- (PVCameraPreviewRenderer)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)enqueueRenderRequest:(id)request completion:(id)completion;
@end

@implementation PVCameraPreviewRenderer

- (PVCameraPreviewRenderer)init
{
  v9.receiver = self;
  v9.super_class = PVCameraPreviewRenderer;
  v2 = [(PVCameraPreviewRenderer *)&v9 init];
  if (v2)
  {
    PVRenderManager::INSTANCE(&v8);
    m_Obj = v2->_renderManager.m_Obj;
    v4 = v8;
    if (m_Obj == v8)
    {
      if (m_Obj)
      {
        (*(*v8 + 24))();
        v4 = v2->_renderManager.m_Obj;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(v2->_renderManager.m_Obj);
        v4 = v8;
      }

      v2->_renderManager.m_Obj = v4;
    }

    PVRenderManager::SetupTextureFactories(v4, 0.5);
    v5 = +[PVVideoCompositingContext createContextForGPU];
    compositingContext = v2->_compositingContext;
    v2->_compositingContext = v5;
  }

  return v2;
}

- (void)dealloc
{
  PVRenderManager::TearDownTextureFactories(self->_renderManager.m_Obj);
  v3.receiver = self;
  v3.super_class = PVCameraPreviewRenderer;
  [(PVCameraPreviewRenderer *)&v3 dealloc];
}

- (HGRef<PVRenderManager>)renderManager
{
  m_Obj = self->_renderManager.m_Obj;
  *v2 = m_Obj;
  if (m_Obj)
  {
    return (*(*m_Obj + 16))();
  }

  return m_Obj;
}

- (void)enqueueRenderRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (requestCopy && completionCopy)
  {
    if (self->_currentRenderJob.m_Obj)
    {
      PVRenderManager::CancelRenderJob(self->_renderManager.m_Obj, &self->_currentRenderJob.m_Obj);
    }

    v7 = HGObject::operator new(0x180uLL);
    m_Obj = self->_renderManager.m_Obj;
    v10 = m_Obj;
    if (m_Obj)
    {
      (*(*m_Obj + 16))(m_Obj);
    }

    PVCameraPreviewGraphBuildJob::PVCameraPreviewGraphBuildJob(v7, &v10, requestCopy, self->_compositingContext, completionCopy);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end