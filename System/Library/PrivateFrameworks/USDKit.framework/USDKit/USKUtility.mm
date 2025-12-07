@interface USKUtility
+ (BOOL)isSceneGraphNode:(id)node;
+ (BOOL)isShaderOutputProperty:(id)property;
+ (BOOL)isTransformNode:(id)node;
+ (__n128)localTransformWithNode:(uint64_t)node time:(void *)time;
+ (__n128)worldTransformWithNode:(uint64_t)node time:(void *)time;
+ (id)USDPreviewSurfaceDefaults;
+ (id)bufferMaterialPropertiesWithMaterial:(id)material;
+ (id)constantMaterialPropertiesWithMaterial:(id)material;
+ (id)firstUVMeshAttributeNameInMaterial:(id)material;
+ (id)localTransformOperationWithNode:(id)node time:(double)time;
+ (id)meshGroupsWithNode:(id)node;
+ (id)meshUniqueAndTriangulate:(id)triangulate names:(id)names;
+ (id)shaderNodeType:(id)type;
+ (id)targetPropertyWithProperty:(id)property;
+ (id)textureMaterialPropertiesWithMaterial:(id)material;
+ (id)transformKeyTimesWithNode:(id)node;
+ (void)setLocalTransformOperationWithNode:(id)node op:(id)op time:(double)time;
+ (void)setLocalTransformWithNode:(float32x4_t)node transform:(float32x4_t)transform time:(double)time;
@end

@implementation USKUtility

+ (id)localTransformOperationWithNode:(id)node time:(double)time
{
  nodeCopy = node;
  v9 = nodeCopy;
  if (nodeCopy)
  {
    v29._propName._rep._ptrAndBits = 0;
    v30 = 0;
    v31 = 0;
    objc_msgSend_usdPrim(nodeCopy, v6, v7, v8);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v29._propName, &v29);
    v29._propName._rep._ptrAndBits = (MEMORY[0x277D86748] + 16);
    if ((v29._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v29._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v29._proxyPrimPath);
    if (v29._prim._p._pointer)
    {
      sub_270314574(v29._prim._p._pointer);
    }

    v28 = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetOrderedXformOps(&v29._type, &v29._propName, &v28);
    v12 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v10, 0xF0F0F0F0F0F0F0F1 * ((v29._prim._p._pointer - *&v29._type) >> 3), v11);
    v13 = *&v29._type;
    for (i = v29._prim._p._pointer; v13 != i; v13 += 136)
    {
      v15 = [USKXFormOp alloc];
      sub_270347A3C(v26, v13);
      v16 = *(v13 + 128);
      v27 = *(v13 + 132);
      v26[32] = v16;
      v19 = objc_msgSend_initWithOperation_atTime_(v15, v17, v26, v18, time);
      sub_270314308(v26);
      objc_msgSend_addObject_(v12, v20, v19, v21);
    }

    v22 = [USKXForm alloc];
    v24 = objc_msgSend_initWithOperations_resetsStack_(v22, v23, v12, v28);

    v32 = &v29;
    sub_270348098(&v32);
    MEMORY[0x27439E280](&v29._propName);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (void)setLocalTransformOperationWithNode:(id)node op:(id)op time:(double)time
{
  v36 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  opCopy = op;
  if (nodeCopy)
  {
    v32._propName._rep._ptrAndBits = 0;
    v33 = 0;
    v34 = 0;
    objc_msgSend_usdPrim(nodeCopy, v7, v8, v9);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v32._propName, &v32);
    v32._propName._rep._ptrAndBits = (MEMORY[0x277D86748] + 16);
    if ((v32._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v32._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v32._proxyPrimPath);
    if (v32._prim._p._pointer)
    {
      sub_270314574(v32._prim._p._pointer);
    }

    if (v33 && (*(v33 + 57) & 8) == 0 && (*(v32._propName._rep._ptrAndBits + 4))(&v32._propName))
    {
      objc_msgSend_resetsStack(opCopy, v11, v12, v13);
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::SetResetXformStack(&v32._propName);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = objc_msgSend_operations(opCopy, v14, v15, v16);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v28, v35, 16);
      if (v19)
      {
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v28 + 1) + 8 * i);
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v26, &v32._propName);
            v26[0] = MEMORY[0x277D86748] + 16;
            objc_msgSend_addToXformable_(v22, v23, v26, v24);
            sub_270314308(v27);
            MEMORY[0x27439E280](v26);
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &v28, v35, 16);
        }

        while (v19);
      }
    }

    MEMORY[0x27439E280](&v32._propName);
  }
}

+ (__n128)localTransformWithNode:(uint64_t)node time:(void *)time
{
  timeCopy = time;
  v8 = timeCopy;
  if (timeCopy)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    objc_msgSend_usdPrim(timeCopy, v5, v6, v7);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v13, v12);
    v13 = MEMORY[0x277D86748] + 16;
    if ((v12[24] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v12[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v12[16]);
    if (*&v12[8])
    {
      sub_270314574(*&v12[8]);
    }

    memset(v12, 0, sizeof(v12));
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v12, 1.0);
    if (v14 && (*(v14 + 57) & 8) == 0 && (*(v13 + 32))(&v13))
    {
      MEMORY[0x27439E260](v11, &v13);
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation();
      v16 = v11;
      sub_270348098(&v16);
    }

    memset(v11, 0, sizeof(v11));
    MEMORY[0x27439DFB0](v11, v12);
    v10 = v11[0];
    MEMORY[0x27439E280](&v13);
  }

  else
  {
    v10 = *MEMORY[0x277D860B8];
  }

  return v10;
}

+ (void)setLocalTransformWithNode:(float32x4_t)node transform:(float32x4_t)transform time:(double)time
{
  v9 = a8;
  v13 = v9;
  if (v9)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    objc_msgSend_usdPrim(v9, v10, v11, v12);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v25, v21);
    v25 = MEMORY[0x277D86748] + 16;
    if ((v21[24] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v21[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v21[16]);
    if (*&v21[8])
    {
      sub_270314574(*&v21[8]);
    }

    if (v26 && (*(v26 + 57) & 8) == 0 && (*(v25 + 32))(&v25))
    {
      v24 = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetOrderedXformOps(v23, &v25, &v24);
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      v14 = v23[0];
      if (v23[1] == v23[0])
      {
        *&v20[0] = 0;
        pxrInternal__aapl__pxrReserved__::UsdGeomXformable::AddTransformOp();
      }

      else
      {
        sub_270347A3C(v21, v23[0]);
        v15 = *(v14 + 128);
        BYTE4(v22) = *(v14 + 132);
        LODWORD(v22) = v15;
      }

      v20[0] = vcvtq_f64_f32(*self.f32);
      v20[1] = vcvt_hight_f64_f32(self);
      v20[2] = vcvtq_f64_f32(*a2.f32);
      v20[3] = vcvt_hight_f64_f32(a2);
      v20[4] = vcvtq_f64_f32(*node.f32);
      v20[5] = vcvt_hight_f64_f32(node);
      v20[6] = vcvtq_f64_f32(*transform.f32);
      v20[7] = vcvt_hight_f64_f32(transform);
      sub_2703403F0(v21, v20, time);
      sub_270314308(v21);
      *v21 = v23;
      sub_270348098(v21);
    }

    MEMORY[0x27439E280](&v25);
  }
}

+ (__n128)worldTransformWithNode:(uint64_t)node time:(void *)time
{
  timeCopy = time;
  v9 = timeCopy;
  selfCopy = self;
  memset(&v15, 0, 32);
  if (timeCopy)
  {
    objc_msgSend_usdPrim(timeCopy, v6, v7, v8);
  }

  memset(v14, 0, sizeof(v14));
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v14, &v15);
  v14[0] = MEMORY[0x277D86740] + 16;
  if (sub_27033E778(&v15))
  {
    memset(v13, 0, sizeof(v13));
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::ComputeLocalToWorldTransform();
    MEMORY[0x27439DFB0](&v12, v13);
    v11 = v12;
  }

  else
  {
    v11 = *MEMORY[0x277D860B8];
  }

  MEMORY[0x27439E250](v14);
  if ((v15._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v15._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15._proxyPrimPath);
  if (v15._prim._p._pointer)
  {
    sub_270314574(v15._prim._p._pointer);
  }

  return v11;
}

+ (id)transformKeyTimesWithNode:(id)node
{
  v22[2] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v7 = nodeCopy;
  if (nodeCopy)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    objc_msgSend_usdPrim(nodeCopy, v4, v5, v6);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v17, &v13);
    v17 = MEMORY[0x277D86748] + 16;
    if ((v13._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v13._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v13._proxyPrimPath);
    if (v13._prim._p._pointer)
    {
      sub_270314574(v13._prim._p._pointer);
    }

    if (v18 && (*(v18 + 57) & 8) == 0 && (*(v17 + 32))(&v17))
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetTimeSamples();
      memset(&v13, 0, sizeof(v13));
      v20 = 0;
      v21 = &v20;
      sub_2703301D4(&v13, (v15 - __p) >> 3, &v21);
      v8 = __p;
      if (v15 != __p)
      {
        v9 = 0;
        do
        {
          v10 = v8[v9];
          sub_270330518(&v13);
          *(v13._propName._rep._ptrAndBits + v9++) = v10;
          v8 = __p;
        }

        while (v9 < (v15 - __p) >> 3);
      }

      v11 = [USKData alloc];
      v22[1] = &off_288041348;
      sub_27032FBF4(v22, &v13);
    }

    MEMORY[0x27439E280](&v17);
  }

  return 0;
}

+ (BOOL)isSceneGraphNode:(id)node
{
  nodeCopy = node;
  v7 = nodeCopy;
  if (nodeCopy)
  {
    *v15 = 0u;
    v16 = 0u;
    objc_msgSend_usdPrim(nodeCopy, v4, v5, v6);
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(0, v8);
    v9 = MEMORY[0x18];
    v10 = MEMORY[0x27439E610](&v14, "");
    v11 = v14 ^ *v9;
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v11 >= 8)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(v10);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    }

    else
    {
      IsA = 1;
    }

    if ((BYTE8(v16) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v16 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v16);
    if (v15[1])
    {
      sub_270314574(v15[1]);
    }
  }

  else
  {
    IsA = 0;
  }

  return IsA;
}

+ (BOOL)isTransformNode:(id)node
{
  nodeCopy = node;
  v7 = nodeCopy;
  if (nodeCopy)
  {
    v8 = objc_msgSend_usdPrim(nodeCopy, v4, v5, v6);
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::_GetStaticTfType(v8);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v12);
    if (v11)
    {
      sub_270314574(v11);
    }
  }

  else
  {
    IsA = 0;
  }

  return IsA;
}

+ (BOOL)isShaderOutputProperty:(id)property
{
  propertyCopy = property;
  v7 = propertyCopy;
  if (propertyCopy)
  {
    objc_msgSend_usdProperty(propertyCopy, v4, v5, v6);
    v8 = v18 == 3;
    if ((BYTE8(v19) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v19 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v8 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v19);
  if (*(&v18 + 1))
  {
    sub_270314574(*(&v18 + 1));
  }

  if (!v8)
  {
    goto LABEL_25;
  }

  v18 = 0u;
  v19 = 0u;
  if (v7)
  {
    objc_msgSend_usdProperty(v7, v9, v10, v11);
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
  }

  sub_270340D70(&v16, &v18);
  if ((BYTE8(v17) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v17 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v17);
  if (*(&v16 + 1))
  {
    sub_270314574(*(&v16 + 1));
  }

  v16 = 0u;
  v17 = 0u;
  MEMORY[0x27439E190](&v16, &v18);
  IsOutput = pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput(&v16, v12);
  if ((BYTE8(v17) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v17 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v17);
  if (*(&v16 + 1))
  {
    sub_270314574(*(&v16 + 1));
  }

  if ((BYTE8(v19) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v19 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v19);
  if (*(&v18 + 1))
  {
    sub_270314574(*(&v18 + 1));
  }

  if (IsOutput)
  {
    v14 = 1;
  }

  else
  {
LABEL_25:
    v14 = 0;
  }

  return v14;
}

+ (id)shaderNodeType:(id)type
{
  typeCopy = type;
  v7 = typeCopy;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (typeCopy)
  {
    objc_msgSend_usdPrim(typeCopy, v4, v5, v6);
  }

  else
  {
    memset(&v10, 0, 32);
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v11, &v10);
  v11 = MEMORY[0x277D86708] + 16;
  if ((v10._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v10._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v10._proxyPrimPath);
  if (v10._prim._p._pointer)
  {
    sub_270314574(v10._prim._p._pointer);
  }

  if (v12 && (*(v12 + 57) & 8) == 0 && (*(v11 + 32))(&v11))
  {
    memset(&v10, 0, 32);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v10._type, &v11);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  v8 = @"Unknown";
  MEMORY[0x27439E1B0](&v11);

  return v8;
}

+ (id)constantMaterialPropertiesWithMaterial:(id)material
{
  materialCopy = material;
  v7 = objc_opt_new();
  v65._propName._rep._ptrAndBits = 0;
  v66 = 0;
  v67 = 0;
  if (materialCopy)
  {
    objc_msgSend_usdPrim(materialCopy, v4, v5, v6);
  }

  else
  {
    memset(&v65, 0, 32);
  }

  sub_2703417C4(&v65, &v65._propName);
  if ((v65._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v65._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v65._proxyPrimPath);
  if (v65._prim._p._pointer)
  {
    sub_270314574(v65._prim._p._pointer);
  }

  if (v66 && (*(v66 + 57) & 8) == 0 && (*(v65._propName._rep._ptrAndBits + 4))(&v65._propName))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v63, &v65._propName);
    v8 = v64;
    if (v63 != v64)
    {
      v9 = v63 + 16;
      while (1)
      {
        memset(&v65, 0, 32);
        v10 = v9 - 16;
        v65._type = *(v9 - 16);
        v11 = *(v9 - 8);
        v65._prim._p._pointer = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v65._proxyPrimPath, v9);
        sub_270325728(&v65._proxyPrimPath._primPart._poolHandle + 1, (v9 + 4));
        v12 = *(v9 + 8);
        v65._proxyPrimPath._propPart._poolHandle = v12;
        if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v65._proxyPrimPath._propPart._poolHandle = (v65._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
        }

        v61 = 0u;
        v62 = 0u;
        sub_270341294(&v65, &v61);
        if (!sub_27033E778(&v61))
        {
          goto LABEL_90;
        }

        if ((pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput(&v61, v13) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v61))
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          sub_270347BF8(&v52, &v61 + 1, &v62);
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v53, &v52);
          v53 = MEMORY[0x277D86708] + 16;
          if ((v52._proxyPrimPath._propPart._poolHandle & 7) != 0)
          {
            atomic_fetch_add_explicit((v52._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_2703143D8(&v52._proxyPrimPath);
          if (v52._prim._p._pointer)
          {
            sub_270314574(v52._prim._p._pointer);
          }

          if (v54 && (*(v54 + 57) & 8) == 0 && (*(v53 + 32))(&v53))
          {
            memset(&v52, 0, 32);
            MEMORY[0x27439E610](&v47, "fallback");
            pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v48, &v53, &v47);
            v52._type = v48;
            v52._prim._p._pointer = v49;
            if (v49)
            {
              atomic_fetch_add_explicit((v49 + 48), 1uLL, memory_order_relaxed);
            }

            sub_2703256DC(&v52._proxyPrimPath, &v50);
            sub_270325728(&v52._proxyPrimPath._primPart._poolHandle + 1, &v50 + 1);
            v52._proxyPrimPath._propPart._poolHandle = v51;
            if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v52._proxyPrimPath._propPart._poolHandle = (v52._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
            }

            if ((v51 & 7) != 0)
            {
              atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_2703143D8(&v50);
            if (v49)
            {
              sub_270314574(v49);
            }

            if ((v47 & 7) != 0)
            {
              atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (sub_27033E778(&v52))
            {
              BaseName = pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v48, &v61);
              if ((v48 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                EmptyString = (v48 & 0xFFFFFFFFFFFFFFF8) + 16;
              }

              else
              {
                EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
              }

              if (*(EmptyString + 23) < 0)
              {
                sub_2703129A8(__p, *EmptyString, *(EmptyString + 8));
              }

              else
              {
                v28 = *EmptyString;
                v46 = *(EmptyString + 16);
                *__p = v28;
              }

              v30 = sub_270341E10(&v52, __p);
              if (SHIBYTE(v46) < 0)
              {
                operator delete(__p[0]);
              }

              if ((v48 & 7) != 0)
              {
                atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (v30)
              {
                v41 = v7;
                v43 = materialCopy;
                v48 = 0;
                v49 = 0;
                v50 = 0;
                v31 = sub_2703428CC(&v65, v29);
                if ((*v31 & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v32 = (*v31 & 0xFFFFFFFFFFFFFFF8) + 16;
                }

                else
                {
                  v32 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
                }

                if (*(v32 + 23) >= 0)
                {
                  v33 = *(v32 + 23);
                }

                else
                {
                  v33 = *(v32 + 8);
                }

                v49 = 0;
                v50 = 0;
                v48 = 0;
                sub_2703481F4(&v48, v33 + 9);
                if (v50 >= 0)
                {
                  v36 = &v48;
                }

                else
                {
                  v36 = v48;
                }

                if (v33)
                {
                  if (*(v32 + 23) >= 0)
                  {
                    v37 = v32;
                  }

                  else
                  {
                    v37 = *v32;
                  }

                  memmove(v36, v37, v33);
                }

                strcpy(v36 + v33, ":fallback");
                if (v50 >= 0)
                {
                  objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, &v48, v35, v41, v43);
                }

                else
                {
                  objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v48, v35, v41, v43);
                }
                v38 = ;
                v7 = v42;
                materialCopy = v44;
                objc_msgSend_setObject_forKey_(v42, v39, v30, v38);

                if (SHIBYTE(v50) < 0)
                {
                  operator delete(v48);
                }
              }
            }

            if ((v52._proxyPrimPath._propPart._poolHandle & 7) != 0)
            {
              atomic_fetch_add_explicit((v52._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_2703143D8(&v52._proxyPrimPath);
            if (v52._prim._p._pointer)
            {
              sub_270314574(v52._prim._p._pointer);
            }
          }

          MEMORY[0x27439E1B0](&v53);
          goto LABEL_90;
        }

        v14 = [USKProperty alloc];
        v56 = v61;
        v57 = *(&v61 + 1);
        if (*(&v61 + 1))
        {
          atomic_fetch_add_explicit((*(&v61 + 1) + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v58, &v62);
        sub_270325728(&v59, &v62 + 1);
        v60 = *(&v62 + 1);
        if ((BYTE8(v62) & 7) != 0 && (atomic_fetch_add_explicit((*(&v62 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v60 &= 0xFFFFFFFFFFFFFFF8;
        }

        v17 = objc_msgSend_initWithUsdProperty_(v14, v15, &v56, v16);
        v18 = MEMORY[0x277CCACA8];
        v22 = *sub_2703428CC(&v65, v19) & 0xFFFFFFFFFFFFFFF8;
        if (!v22)
        {
          break;
        }

        v23 = (v22 + 16);
        if ((*(v22 + 39) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        objc_msgSend_stringWithUTF8String_(v18, v20, *v23, v21);
        v26 = LABEL_52:;
        objc_msgSend_setObject_forKey_(v7, v27, v17, v26);

        if ((v60 & 7) != 0)
        {
          atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v58);
        if (v57)
        {
          sub_270314574(v57);
        }

LABEL_90:
        if ((BYTE8(v62) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v62 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v62);
        if (*(&v61 + 1))
        {
          sub_270314574(*(&v61 + 1));
        }

        if ((v65._proxyPrimPath._propPart._poolHandle & 7) != 0)
        {
          atomic_fetch_add_explicit((v65._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v65._proxyPrimPath);
        if (v65._prim._p._pointer)
        {
          sub_270314574(v65._prim._p._pointer);
        }

        v9 += 32;
        if (v10 + 32 == v8)
        {
          goto LABEL_99;
        }
      }

      v23 = "";
LABEL_51:
      objc_msgSend_stringWithUTF8String_(v18, v20, v23, v21);
      goto LABEL_52;
    }

LABEL_99:
    *&v65._type = &v63;
    sub_27034811C(&v65);
  }

  MEMORY[0x27439E1B0](&v65._propName);

  return v7;
}

+ (id)bufferMaterialPropertiesWithMaterial:(id)material
{
  materialCopy = material;
  v7 = objc_opt_new();
  v47._propName._rep._ptrAndBits = 0;
  v48 = 0;
  v49 = 0;
  if (materialCopy)
  {
    objc_msgSend_usdPrim(materialCopy, v4, v5, v6);
  }

  else
  {
    memset(&v47, 0, 32);
  }

  sub_2703417C4(&v47, &v47._propName);
  if ((v47._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v47._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v47._proxyPrimPath);
  if (v47._prim._p._pointer)
  {
    sub_270314574(v47._prim._p._pointer);
  }

  if (v48 && (*(v48 + 57) & 8) == 0 && (*(v47._propName._rep._ptrAndBits + 4))(&v47._propName))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v45, &v47._propName);
    v8 = v46;
    if (v45 != v46)
    {
      v9 = v45 + 16;
      while (1)
      {
        memset(&v47, 0, 32);
        v10 = v9 - 16;
        v47._type = *(v9 - 16);
        v11 = *(v9 - 8);
        v47._prim._p._pointer = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v47._proxyPrimPath, v9);
        sub_270325728(&v47._proxyPrimPath._primPart._poolHandle + 1, (v9 + 4));
        v12 = *(v9 + 8);
        v47._proxyPrimPath._propPart._poolHandle = v12;
        if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v47._proxyPrimPath._propPart._poolHandle = (v47._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
        }

        v43 = 0u;
        v44 = 0u;
        sub_270341294(&v47, &v43);
        if (!sub_27033E778(&v43))
        {
          goto LABEL_57;
        }

        v42 = 0;
        sub_270347BF8(&v38, &v43 + 1, &v44);
        sub_270341C94(&v38, &v42);
        if ((v41 & 7) != 0)
        {
          atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v40);
        if (v39)
        {
          sub_270314574(v39);
        }

        MEMORY[0x27439E610](&v38, "UsdPrimvarReader_float");
        v13 = v38;
        if ((v38 ^ v42) >= 8)
        {
          MEMORY[0x27439E610](&v37, "UsdPrimvarReader_float2");
          v15 = v37;
          if ((v37 ^ v42) >= 8)
          {
            MEMORY[0x27439E610](&v36, "UsdPrimvarReader_float3");
            v16 = v36;
            if ((v36 ^ v42) >= 8)
            {
              MEMORY[0x27439E610](&v35, "UsdPrimvarReader_float4");
              v14 = (v35 ^ v42) < 8;
              if ((v35 & 7) != 0)
              {
                atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v16 = v36;
            }

            else
            {
              v14 = 1;
            }

            if ((v16 & 7) != 0)
            {
              atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v15 = v37;
          }

          else
          {
            v14 = 1;
          }

          if ((v15 & 7) != 0)
          {
            atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v13 = v38;
        }

        else
        {
          v14 = 1;
        }

        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v14)
        {
          break;
        }

LABEL_55:
        if ((v42 & 7) != 0)
        {
          atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_57:
        if ((BYTE8(v44) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v44 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v44);
        if (*(&v43 + 1))
        {
          sub_270314574(*(&v43 + 1));
        }

        if ((v47._proxyPrimPath._propPart._poolHandle & 7) != 0)
        {
          atomic_fetch_add_explicit((v47._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v47._proxyPrimPath);
        if (v47._prim._p._pointer)
        {
          sub_270314574(v47._prim._p._pointer);
        }

        v9 += 32;
        if (v10 + 32 == v8)
        {
          goto LABEL_66;
        }
      }

      v17 = [USKProperty alloc];
      LODWORD(v30) = v43;
      v31 = *(&v43 + 1);
      if (*(&v43 + 1))
      {
        atomic_fetch_add_explicit((*(&v43 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v32, &v44);
      sub_270325728(&v33, &v44 + 1);
      v34 = *(&v44 + 1);
      if ((BYTE8(v44) & 7) != 0 && (atomic_fetch_add_explicit((*(&v44 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v34 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20 = objc_msgSend_initWithUsdProperty_(v17, v18, &v30, v19);
      v21 = MEMORY[0x277CCACA8];
      v25 = *sub_2703428CC(&v47, v22) & 0xFFFFFFFFFFFFFFF8;
      if (v25)
      {
        v26 = (v25 + 16);
        if (*(v25 + 39) < 0)
        {
          objc_msgSend_stringWithUTF8String_(v21, v23, *v26, v24, v30);
          v27 = LABEL_51:;
          objc_msgSend_setObject_forKey_(v7, v28, v20, v27);

          if ((v34 & 7) != 0)
          {
            atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_2703143D8(&v32);
          if (v31)
          {
            sub_270314574(v31);
          }

          goto LABEL_55;
        }
      }

      else
      {
        v26 = "";
      }

      objc_msgSend_stringWithUTF8String_(v21, v23, v26, v24, v30);
      goto LABEL_51;
    }

LABEL_66:
    *&v47._type = &v45;
    sub_27034811C(&v47);
  }

  MEMORY[0x27439E1B0](&v47._propName);

  return v7;
}

+ (id)textureMaterialPropertiesWithMaterial:(id)material
{
  materialCopy = material;
  v7 = objc_opt_new();
  v43._propName._rep._ptrAndBits = 0;
  v44 = 0;
  v45 = 0;
  if (materialCopy)
  {
    objc_msgSend_usdPrim(materialCopy, v4, v5, v6);
  }

  else
  {
    memset(&v43, 0, 32);
  }

  sub_2703417C4(&v43, &v43._propName);
  if ((v43._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v43._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v43._proxyPrimPath);
  if (v43._prim._p._pointer)
  {
    sub_270314574(v43._prim._p._pointer);
  }

  if (v44 && (*(v44 + 57) & 8) == 0 && (*(v43._propName._rep._ptrAndBits + 4))(&v43._propName))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v41, &v43._propName);
    v8 = v42;
    if (v41 != v42)
    {
      v9 = v41 + 16;
      while (1)
      {
        memset(&v43, 0, 32);
        v10 = v9 - 16;
        v43._type = *(v9 - 16);
        v11 = *(v9 - 8);
        v43._prim._p._pointer = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v43._proxyPrimPath, v9);
        sub_270325728(&v43._proxyPrimPath._primPart._poolHandle + 1, (v9 + 4));
        v12 = *(v9 + 8);
        v43._proxyPrimPath._propPart._poolHandle = v12;
        if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v43._proxyPrimPath._propPart._poolHandle = (v43._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
        }

        v39 = 0u;
        v40 = 0u;
        sub_270341294(&v43, &v39);
        if (!sub_27033E778(&v39))
        {
          goto LABEL_42;
        }

        sub_270347BF8(v34, &v39 + 1, &v40);
        sub_270341C94(v34, &v38);
        MEMORY[0x27439E610](&v33, "UsdUVTexture");
        v13 = v38;
        v14 = v33;
        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v38 & 7) != 0)
        {
          atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v36);
        if (v35)
        {
          sub_270314574(v35);
        }

        if ((v14 ^ v13) > 7)
        {
          goto LABEL_42;
        }

        v15 = [USKProperty alloc];
        v28 = v39;
        v29 = *(&v39 + 1);
        if (*(&v39 + 1))
        {
          atomic_fetch_add_explicit((*(&v39 + 1) + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v30, &v40);
        sub_270325728(&v31, &v40 + 1);
        v32 = *(&v40 + 1);
        if ((BYTE8(v40) & 7) != 0 && (atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v32 &= 0xFFFFFFFFFFFFFFF8;
        }

        v18 = objc_msgSend_initWithUsdProperty_(v15, v16, &v28, v17);
        v19 = MEMORY[0x277CCACA8];
        v23 = *sub_2703428CC(&v43, v20) & 0xFFFFFFFFFFFFFFF8;
        if (!v23)
        {
          break;
        }

        v24 = (v23 + 16);
        if ((*(v23 + 39) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        objc_msgSend_stringWithUTF8String_(v19, v21, *v24, v22);
        v25 = LABEL_38:;
        objc_msgSend_setObject_forKey_(v7, v26, v18, v25);

        if ((v32 & 7) != 0)
        {
          atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v30);
        if (v29)
        {
          sub_270314574(v29);
        }

LABEL_42:
        if ((BYTE8(v40) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v40);
        if (*(&v39 + 1))
        {
          sub_270314574(*(&v39 + 1));
        }

        if ((v43._proxyPrimPath._propPart._poolHandle & 7) != 0)
        {
          atomic_fetch_add_explicit((v43._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v43._proxyPrimPath);
        if (v43._prim._p._pointer)
        {
          sub_270314574(v43._prim._p._pointer);
        }

        v9 += 32;
        if (v10 + 32 == v8)
        {
          goto LABEL_51;
        }
      }

      v24 = "";
LABEL_37:
      objc_msgSend_stringWithUTF8String_(v19, v21, v24, v22);
      goto LABEL_38;
    }

LABEL_51:
    *&v43._type = &v41;
    sub_27034811C(&v43);
  }

  MEMORY[0x27439E1B0](&v43._propName);

  return v7;
}

+ (id)firstUVMeshAttributeNameInMaterial:(id)material
{
  v63 = *MEMORY[0x277D85DE8];
  materialCopy = material;
  v7 = materialCopy;
  v59._propName._rep._ptrAndBits = 0;
  v60 = 0;
  v61 = 0;
  if (materialCopy)
  {
    objc_msgSend_usdPrim(materialCopy, v4, v5, v6);
  }

  else
  {
    memset(&v59, 0, 32);
  }

  sub_2703417C4(&v59, &v59._propName);
  if ((v59._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v59._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v59._proxyPrimPath);
  if (v59._prim._p._pointer)
  {
    sub_270314574(v59._prim._p._pointer);
  }

  if (!v60 || (*(v60 + 57) & 8) != 0 || !(*(v59._propName._rep._ptrAndBits + 4))(&v59._propName))
  {
    v8 = 0;
LABEL_160:
    v8 = v8;
    goto LABEL_161;
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v57, &v59._propName);
  v41 = v58;
  if (v57 == v58)
  {
    v8 = 0;
LABEL_165:
    *&v59._type = &v57;
    sub_27034811C(&v59);
    goto LABEL_160;
  }

  v8 = 0;
  v9 = v57 + 16;
  while (1)
  {
    memset(&v59, 0, 32);
    v10 = v9 - 16;
    v59._type = *(v9 - 16);
    v11 = *(v9 - 8);
    v59._prim._p._pointer = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v59._proxyPrimPath, v9);
    sub_270325728(&v59._proxyPrimPath._primPart._poolHandle + 1, (v9 + 4));
    v12 = *(v9 + 8);
    v59._proxyPrimPath._propPart._poolHandle = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v59._proxyPrimPath._propPart._poolHandle = (v59._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
    }

    memset(&v56, 0, 32);
    sub_270341294(&v59, &v56);
    if (!sub_27033E778(&v56) || v56._type == v59._type && *&v56._prim._p._pointer == *&v59._prim._p._pointer && (v59._proxyPrimPath._propPart._poolHandle ^ v56._proxyPrimPath._propPart._poolHandle) < 8uLL)
    {
LABEL_141:
      v38 = 1;
      goto LABEL_143;
    }

    v54 = 0u;
    v55 = 0u;
    sub_270347BF8(&v54, &v56._prim, &v56._proxyPrimPath);
    sub_270341C94(&v54, v53);
    MEMORY[0x27439E610](v52, "UsdUVTexture");
    v13 = v53[0];
    v14 = v52[0];
    if ((v52[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v52[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v53[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v53[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v14 ^ v13) > 7)
    {
LABEL_134:
      v37 = 1;
      goto LABEL_136;
    }

    memset(v53, 0, sizeof(v53));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v50, &v54);
    *&v50 = MEMORY[0x277D86708] + 16;
    MEMORY[0x27439E610](&v48, "st");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(v52, &v50, &v48);
    LODWORD(v53[0]) = v52[0];
    v53[1] = v52[1];
    if (v52[1])
    {
      atomic_fetch_add_explicit((v52[1] + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v53[2], &v52[2]);
    sub_270325728(&v53[2] + 1, &v52[2] + 1);
    v53[3] = v52[3];
    if ((v52[3] & 7) != 0 && (atomic_fetch_add_explicit((v52[3] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v53[3] &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v52[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v52[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v52[2]);
    if (v52[1])
    {
      sub_270314574(v52[1]);
    }

    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x27439E1B0](&v50);
    if (!sub_27033E778(v53))
    {
LABEL_127:
      v36 = 1;
      goto LABEL_129;
    }

    memset(v52, 0, sizeof(v52));
    sub_270341294(v53, v52);
    if (!sub_27033E778(v52) || LODWORD(v52[0]) == LODWORD(v53[0]) && *&v52[1] == *&v53[1] && (v53[3] ^ v52[3]) < 8uLL)
    {
LABEL_120:
      v35 = 1;
      goto LABEL_122;
    }

    v50 = 0u;
    v51 = 0u;
    LODWORD(v50) = 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(&v51 + 1) = 0;
    v49 = 0u;
    v48 = 0u;
    sub_270347BF8(&v48, &v52[1], &v52[2]);
    v47 = 0;
    sub_270341C94(&v48, &v47);
    MEMORY[0x27439E610](v46, "UsdPrimvarReader_float2");
    v15 = v47;
    v16 = *&v46[0];
    if ((v46[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v46[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v16 ^ v15) > 7)
    {
      MEMORY[0x27439E610](v46, "UsdTransform2d");
      v18 = v47;
      v19 = *&v46[0];
      if ((v46[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&v46[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v19 ^ v18) <= 7)
      {
        memset(v46, 0, sizeof(v46));
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v45, &v48);
        *&v45[0] = MEMORY[0x277D86708] + 16;
        MEMORY[0x27439E610](__p, "in");
        pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(v46, v45, __p);
        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        MEMORY[0x27439E1B0](v45);
        if (sub_27033E778(v46) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput(v46, v20))
        {
          memset(v45, 0, sizeof(v45));
          sub_270341294(v46, v45);
          if (sub_27033E778(v45) && (LODWORD(v45[0]) != LODWORD(v46[0]) || *(v45 + 8) != *(v46 + 8) || (*(&v46[1] + 1) ^ *(&v45[1] + 1)) >= 8))
          {
            *__p = 0u;
            v44 = 0u;
            sub_270347BF8(__p, v45 + 1, &v45[1]);
            sub_270341C94(__p, &v62);
            MEMORY[0x27439E610](&v42, "UsdPrimvarReader_float2");
            v21 = v62.__vftable;
            v22 = v42;
            if ((v42 & 7) != 0)
            {
              atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v62.__vftable & 7) != 0)
            {
              atomic_fetch_add_explicit((v62.__vftable & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v22 ^ v21) <= 7)
            {
              sub_270347B78(&v50, __p);
            }

            sub_27033B284(__p);
          }

          sub_270340E50(v45);
        }

        if ((BYTE8(v46[1]) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v46[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v46[1]);
        if (*(&v46[0] + 1))
        {
          sub_270314574(*(&v46[0] + 1));
        }
      }
    }

    else
    {
      LODWORD(v50) = v48;
      v17 = *(&v48 + 1);
      if (*(&v48 + 1))
      {
        atomic_fetch_add_explicit((*(&v48 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      if (*(&v50 + 1))
      {
        sub_270314574(*(&v50 + 1));
      }

      *(&v50 + 1) = v17;
      sub_27032787C(&v51, &v49);
      sub_2703278D4(&v51 + 4, &v49 + 1);
      sub_270325CAC(&v51 + 1, &v49 + 1);
    }

    if (!sub_27033E778(&v50))
    {
LABEL_107:
      v34 = 1;
      goto LABEL_109;
    }

    memset(v46, 0, sizeof(v46));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v45, &v50);
    *&v45[0] = MEMORY[0x277D86708] + 16;
    MEMORY[0x27439E610](__p, "varname");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(v46, v45, __p);
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x27439E1B0](v45);
    if (!sub_27033E778(v46) || !pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput(v46, v23))
    {
LABEL_101:
      v33 = 1;
      goto LABEL_102;
    }

    memset(v45, 0, sizeof(v45));
    sub_270341294(v46, v45);
    if (!sub_27033E778(v45))
    {
      goto LABEL_87;
    }

    v62.__vftable = 0;
    v62.__type_name = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    if (!v62.__type_name)
    {
      sub_270311D34(&v62);
LABEL_87:
      v28 = 1;
      goto LABEL_96;
    }

    if (sub_270344B44(&v62))
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = sub_270344B7C(&v62);
      if (*(v25 + 23) >= 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v62);
      if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040408, v30))
      {
        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(__p, &v62);
        v39 = __p;
        if (SBYTE7(v44) < 0)
        {
          v39 = __p[0];
        }

        NSLog(&cfstr_WarningInvalid.isa, v39);
        if (SBYTE7(v44) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_95;
      }

      v31 = sub_270344C10(&v62);
      if (&v62 != v31)
      {
        sub_270347CFC(v31, &v62);
      }

      v24 = MEMORY[0x277CCACA8];
      v25 = sub_270344B7C(&v62);
      if (*(v25 + 23) >= 0)
      {
LABEL_93:
        objc_msgSend_stringWithUTF8String_(v24, v26, v25, v27);
        goto LABEL_94;
      }
    }

    objc_msgSend_stringWithUTF8String_(v24, v26, *v25, v27);
    v32 = LABEL_94:;

    v8 = v32;
LABEL_95:
    v8 = v8;
    sub_270311D34(&v62);
    v28 = 0;
LABEL_96:
    if ((BYTE8(v45[1]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v45[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v45[1]);
    if (*(&v45[0] + 1))
    {
      sub_270314574(*(&v45[0] + 1));
    }

    if (v28)
    {
      goto LABEL_101;
    }

    v33 = 0;
LABEL_102:
    if ((BYTE8(v46[1]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v46[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v46[1]);
    if (*(&v46[0] + 1))
    {
      sub_270314574(*(&v46[0] + 1));
    }

    if (v33)
    {
      goto LABEL_107;
    }

    v34 = 0;
LABEL_109:
    if ((v47 & 7) != 0)
    {
      atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((BYTE8(v49) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v49 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v49);
    if (*(&v48 + 1))
    {
      sub_270314574(*(&v48 + 1));
    }

    if ((BYTE8(v51) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v51 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v51);
    if (*(&v50 + 1))
    {
      sub_270314574(*(&v50 + 1));
    }

    if (v34)
    {
      goto LABEL_120;
    }

    v35 = 0;
LABEL_122:
    if ((v52[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v52[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v52[2]);
    if (v52[1])
    {
      sub_270314574(v52[1]);
    }

    if (v35)
    {
      goto LABEL_127;
    }

    v36 = 0;
LABEL_129:
    if ((v53[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v53[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v53[2]);
    if (v53[1])
    {
      sub_270314574(v53[1]);
    }

    if (v36)
    {
      goto LABEL_134;
    }

    v37 = 0;
LABEL_136:
    if ((BYTE8(v55) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v55 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v55);
    if (*(&v54 + 1))
    {
      sub_270314574(*(&v54 + 1));
    }

    if (v37)
    {
      goto LABEL_141;
    }

    v38 = 0;
LABEL_143:
    if ((v56._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v56._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v56._proxyPrimPath);
    if (v56._prim._p._pointer)
    {
      sub_270314574(v56._prim._p._pointer);
    }

    if ((v59._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v59._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v59._proxyPrimPath);
    if (v59._prim._p._pointer)
    {
      sub_270314574(v59._prim._p._pointer);
    }

    if ((v38 & 1) == 0)
    {
      break;
    }

    v9 += 32;
    if (v10 + 32 == v41)
    {
      goto LABEL_165;
    }
  }

  *&v59._type = &v57;
  sub_27034811C(&v59);
LABEL_161:
  MEMORY[0x27439E1B0](&v59._propName);

  return v8;
}

+ (id)USDPreviewSurfaceDefaults
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [USKData alloc];
  v5 = &off_28803FBF8 + 2;
  operator new();
}

+ (id)targetPropertyWithProperty:(id)property
{
  propertyCopy = property;
  v7 = propertyCopy;
  if (propertyCopy)
  {
    objc_msgSend_usdProperty(propertyCopy, v4, v5, v6);
    v8 = LODWORD(v23[0]) == 3;
    if ((v23[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v23[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v8 = 0;
    memset(v23, 0, sizeof(v23));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v23[2]);
  if (v23[1])
  {
    sub_270314574(v23[1]);
  }

  if (v8)
  {
    memset(v23, 0, sizeof(v23));
    if (v7)
    {
      objc_msgSend_usdProperty(v7, v9, v10, v11);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    sub_270340D70(v22, v23);
    if ((BYTE8(v22[1]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v22[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v22[1]);
    if (*(&v22[0] + 1))
    {
      sub_270314574(*(&v22[0] + 1));
    }

    memset(v22, 0, sizeof(v22));
    sub_270341294(v23, v22);
    if (LODWORD(v22[0]) == LODWORD(v23[0]) && *(v22 + 8) == *&v23[1] && (v23[3] ^ *(&v22[1] + 1)) < 8)
    {
      v12 = v7;
    }

    else
    {
      v13 = [USKProperty alloc];
      v17 = v22[0];
      v18 = *(&v22[0] + 1);
      if (*(&v22[0] + 1))
      {
        atomic_fetch_add_explicit((*(&v22[0] + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v19, &v22[1]);
      sub_270325728(&v20, &v22[1] + 1);
      v21 = *(&v22[1] + 1);
      if ((BYTE8(v22[1]) & 7) != 0 && (atomic_fetch_add_explicit((*(&v22[1] + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v21 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = objc_msgSend_initWithUsdProperty_(v13, v14, &v17, v15);
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v19);
      if (v18)
      {
        sub_270314574(v18);
      }
    }

    if ((BYTE8(v22[1]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v22[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v22[1]);
    if (*(&v22[0] + 1))
    {
      sub_270314574(*(&v22[0] + 1));
    }

    if ((v23[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v23[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v23[2]);
    if (v23[1])
    {
      sub_270314574(v23[1]);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)meshGroupsWithNode:(id)node
{
  nodeCopy = node;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(&v30, 0, 32);
  if (nodeCopy)
  {
    objc_msgSend_usdPrim(nodeCopy, v4, v5, v6);
  }

  v28 = 0u;
  v29 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v28, &v30);
  *(&v29 + 1) = 0;
  v27 = 0;
  *&v28 = MEMORY[0x277D867B8] + 16;
  v25 = 0;
  v26 = 0;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v25, &v28);
  v8 = v25;
  for (i = v26; v8 != i; v8 = (v8 + 24))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v22, v8);
    v22 = (MEMORY[0x277D866F8] + 16);
    v10 = [USKNode alloc];
    sub_270347BF8(&v18, &v23, &v24);
    v13 = objc_msgSend_initWithUsdPrim_(v10, v11, &v18, v12);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v20);
    if (v19)
    {
      sub_270314574(v19);
    }

    objc_msgSend_addObject_(v7, v14, v13, v15);

    MEMORY[0x27439E0D0](&v22);
  }

  v16 = v7;
  v22 = &v25;
  sub_270348338(&v22);
  MEMORY[0x27439E470](&v28);
  if ((v30._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v30._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v30._proxyPrimPath);
  if (v30._prim._p._pointer)
  {
    sub_270314574(v30._prim._p._pointer);
  }

  return v16;
}

+ (id)meshUniqueAndTriangulate:(id)triangulate names:(id)names
{
  v181 = *MEMORY[0x277D85DE8];
  triangulateCopy = triangulate;
  namesCopy = names;
  v128 = triangulateCopy;
  v129 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_type(triangulateCopy, v6, v7, v8);

  if (v9 == @"Mesh")
  {
    memset(&v164, 0, 32);
    if (triangulateCopy)
    {
      objc_msgSend_usdPrim(triangulateCopy, v10, v11, v12);
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v20 = namesCopy;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v160, v180, 16);
    if (v24)
    {
      v25 = 0;
      v26 = *v161;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v161 != v26)
          {
            objc_enumerationMutation(v20);
          }

          v25 |= objc_msgSend_isEqualToString_(*(*(&v160 + 1) + 8 * i), v22, @"points", v23);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v160, v180, 16);
      }

      while (v24);

      if (v25)
      {
        v159 = 0;
        v158 = 0u;
        memset(v157, 0, sizeof(v157));
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v30 = objc_msgSend_property_(triangulateCopy, v28, @"faceVertexIndices", v29);
        v34 = objc_msgSend_data(v30, v31, v32, v33);
        v38 = v34;
        if (v34)
        {
          objc_msgSend_value(v34, v35, v36, v37);
        }

        else
        {
          v170 = 0;
          v169 = 0;
        }

        sub_270346560(&v172, &v169);
        sub_270310E24(&v157[1]);
        *&v157[1] = v172;
        *&v157[3] = v173;
        v172 = 0u;
        v173 = 0u;
        v157[5] = v174;
        *&v174 = 0;
        sub_270310E24(&v172);
        sub_270311D34(&v169);

        v42 = objc_msgSend_property_(triangulateCopy, v40, @"faceVertexCounts", v41);
        v46 = objc_msgSend_data(v42, v43, v44, v45);
        v50 = v46;
        if (v46)
        {
          objc_msgSend_value(v46, v47, v48, v49);
        }

        else
        {
          v170 = 0;
          v169 = 0;
        }

        sub_270346560(&v172, &v169);
        sub_270310E24(&v155);
        v155 = v172;
        v156 = v173;
        v172 = 0u;
        v173 = 0u;
        v157[0] = v174;
        *&v174 = 0;
        sub_270310E24(&v172);
        sub_270311D34(&v169);

        v178 = 0;
        v179 = 0;
        v53 = objc_msgSend_property_(triangulateCopy, v51, @"points", v52);
        v57 = objc_msgSend_data(v53, v54, v55, v56);
        v61 = v57;
        if (v57)
        {
          objc_msgSend_value(v57, v58, v59, v60);
        }

        else
        {
          v178 = 0;
          v179 = 0;
        }

        sub_270313C14(&v172, &v178);
        *&v175 = 0;
        v173 = 0u;
        v174 = 0u;
        MEMORY[0x27439E610](&v175 + 8, "points");
        v62 = atomic_load(MEMORY[0x277D86578]);
        if (!v62)
        {
          v62 = sub_270318AF4(MEMORY[0x277D86578]);
        }

        *&v176 = *(v62 + 83);
        MEMORY[0x27439E610](&v176 + 8, "vertex");
        LODWORD(v177) = 1;
        sub_2703163EC(&v153 + 1, &v172);
        if ((BYTE8(v176) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v176 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((BYTE8(v175) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v175 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_270310E24(&v173);
        sub_270311D34(&v172);
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v63 = v20;
        v65 = 0;
        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v146, v171, 16);
        if (v68)
        {
          obj = 0;
          v69 = *v147;
          do
          {
            v70 = 0;
            do
            {
              if (*v147 != v69)
              {
                objc_enumerationMutation(v63);
              }

              v71 = *(*(&v146 + 1) + 8 * v70);
              if ((objc_msgSend_isEqualToString_(v71, v66, @"faceVertexIndices", v67) & 1) == 0 && (objc_msgSend_isEqualToString_(v71, v66, @"faceVertexCounts", v67) & 1) == 0 && (objc_msgSend_isEqualToString_(v71, v66, @"points", v67) & 1) == 0)
              {
                if ((objc_msgSend_isEqualToString_(v71, v66, @"normals", v67) & 1) != 0 || objc_msgSend_isEqualToString_(v71, v72, @"primvar:normals", v73))
                {
                  v65 = sub_2703466FC(&v153, v128) ^ 1;
                }

                else if (objc_msgSend_isEqualToString_(v71, v74, @"tangents", v75))
                {
                  obj = !sub_2703467AC(&v153, v128);
                }

                else
                {
                  v76 = v71;
                  if ((objc_msgSend_hasPrefix_(v76, v77, @"primvars:", v78) & 1) == 0)
                  {
                    v81 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v79, @"primvars:%@", v80, v76);

                    v76 = v81;
                  }

                  sub_270345E10(&v153, v128, v76);
                  if (!atomic_load(MEMORY[0x277D86578]))
                  {
                    sub_270318AF4(MEMORY[0x277D86578]);
                  }

                  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                  {
                    goto LABEL_53;
                  }

                  if (!atomic_load(MEMORY[0x277D86578]))
                  {
                    sub_270318AF4(MEMORY[0x277D86578]);
                  }

                  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                  {
LABEL_53:
                    v84 = (v154 - 32);
                    v85 = v151;
                    if (v151 >= v152)
                    {
                      v87 = sub_2703484E8(&v150, v84);
                    }

                    else
                    {
                      v86 = *v84;
                      *v151 = *v84;
                      if ((v86 & 7) != 0 && (atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                      {
                        *v85 &= 0xFFFFFFFFFFFFFFF8;
                      }

                      v87 = (v85 + 1);
                    }

                    v151 = v87;
                  }
                }
              }

              ++v70;
            }

            while (v68 != v70);
            v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v146, v171, 16);
            v68 = v88;
          }

          while (v88);
        }

        else
        {
          obj = 0;
        }

        v144 = 0u;
        v145 = 0u;
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v144, &v164);
        *(&v145 + 1) = 0;
        v143 = 0;
        *&v144 = MEMORY[0x277D867B8] + 16;
        v141 = 0;
        v142 = 0;
        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v141, &v144);
        if (v141 != v142)
        {
          memset(v140, 0, sizeof(v140));
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v140, v141);
          v140[0] = MEMORY[0x277D866F8] + 16;
          memset(v139, 0, sizeof(v139));
          pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(v139, v140);
          *&v174 = 0;
          v172 = 0u;
          v173 = 0u;
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
        }

        v89 = sub_27030E17C(&v153);
        if ((v65 | obj))
        {
          if (v65)
          {
            sub_27031642C(&v153, 0);
          }

          if (obj && v151 != v150)
          {
            v90 = *v150 & 0xFFFFFFFFFFFFFFF8;
            v91 = v90 ? v90 + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
            if (*(v91 + 23) < 0)
            {
              sub_2703129A8(__p, *v91, *(v91 + 8));
            }

            else
            {
              v92 = *v91;
              v138 = *(v91 + 16);
              *__p = v92;
            }

            sub_270317B1C(&v153, 0, __p, 3.1416);
            if (SHIBYTE(v138) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        sub_27036AC10(&v153);
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        obja = v63;
        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v93, &v133, v168, 16);
        if (v94)
        {
          v95 = *v134;
          do
          {
            for (j = 0; j != v94; ++j)
            {
              if (*v134 != v95)
              {
                objc_enumerationMutation(obja);
              }

              v97 = *(*(&v133 + 1) + 8 * j);
              v169 = 0;
              v98 = v97;
              v102 = objc_msgSend_UTF8String(v98, v99, v100, v101);
              MEMORY[0x27439E610](&v169, v102);
              v104 = *(&v153 + 1);
              v105 = v154;
              while (1)
              {
                if (v104 == v105)
                {
                  goto LABEL_109;
                }

                v177 = 0;
                v175 = 0u;
                v176 = 0u;
                v173 = 0u;
                v174 = 0u;
                v172 = 0u;
                sub_270313C14(&v172, v104);
                v106 = *(v104 + 32);
                v173 = *(v104 + 16);
                v174 = v106;
                v107 = *(v104 + 48);
                *&v175 = v107;
                if (v107)
                {
                  v108 = (v107 - 16);
                  if (*(&v174 + 1))
                  {
                    v108 = *(&v174 + 1);
                  }

                  atomic_fetch_add_explicit(v108, 1uLL, memory_order_relaxed);
                }

                v109 = *(v104 + 56);
                *(&v175 + 1) = v109;
                if ((v109 & 7) != 0 && (atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  *(&v175 + 1) &= 0xFFFFFFFFFFFFFFF8;
                }

                v110 = *(v104 + 72);
                *&v176 = *(v104 + 64);
                *(&v176 + 1) = v110;
                if ((v110 & 7) != 0 && (atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  *(&v176 + 1) &= 0xFFFFFFFFFFFFFFF8;
                }

                LODWORD(v177) = *(v104 + 80);
                v111 = *(&v175 + 1);
                if ((v169 ^ *(&v175 + 1)) <= 7)
                {
                  break;
                }

                if ((BYTE8(v176) & 7) != 0)
                {
                  atomic_fetch_add_explicit((*(&v176 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  v111 = *(&v175 + 1);
                }

                if ((v111 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                sub_270310E24(&v173);
                sub_270311D34(&v172);
                v104 += 88;
              }

              v112 = [USKData alloc];
              sub_270313C14(v167, &v172);
              pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v132, &v176);
              v114 = objc_msgSend_initWithVtValue_typeName_(v112, v113, v167, &v132);
              if ((v132 & 7) != 0)
              {
                atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              sub_270311D34(v167);
              objc_msgSend_addObject_(v129, v115, v114, v116);

              if ((BYTE8(v176) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v176 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((BYTE8(v175) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v175 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              sub_270310E24(&v173);
              sub_270311D34(&v172);
LABEL_109:
              if ((v169 & 7) != 0)
              {
                atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v103, &v133, v168, 16);
          }

          while (v94);
        }

        v117 = v158;
        if (*(&v158 + 1) != v158)
        {
          *&v174 = 0;
          v172 = 0u;
          v173 = 0u;
          v118 = 3 * *v158;
          LODWORD(v139[0]) = 0;
          v169 = v139;
          sub_27031192C(&v172, v118, &v169);
          sub_270310DE0(v117);
          v119 = v117[4];
          sub_270310DE0(v117);
          v120 = v117[4] + 4 * *v117;
          if (v119 != v120)
          {
            v121 = 0;
            do
            {
              v122 = *v119;
              sub_270310DE0(&v157[1]);
              v123 = 3 * v122;
              LODWORD(v122) = *(v157[5] + 12 * v122);
              sub_270310DE0(&v172);
              *(v174 + v121) = v122;
              sub_270310DE0(&v157[1]);
              LODWORD(v122) = *(v157[5] + 4 * v123 + 4);
              sub_270310DE0(&v172);
              *(v174 + v121 + 4) = v122;
              sub_270310DE0(&v157[1]);
              LODWORD(v122) = *(v157[5] + 4 * v123 + 8);
              sub_270310DE0(&v172);
              *(v174 + v121 + 8) = v122;
              ++v119;
              v121 += 12;
            }

            while (v119 != v120);
          }

          v124 = [USKData alloc];
          v165 = &off_288040CB8;
          sub_27032C360(&v164._propName, &v172);
        }

        v125 = [USKData alloc];
        v166[1] = &off_288040CB8;
        sub_27032C360(v166, &v157[1]);
      }
    }

    else
    {
    }

    NSLog(&cfstr_ErrorObjectIsM.isa);
    v39 = v129;
    if ((v164._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v164._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v164._proxyPrimPath);
    if (v164._prim._p._pointer)
    {
      sub_270314574(v164._prim._p._pointer);
    }

    v18 = v129;
  }

  else
  {
    v13 = objc_msgSend_name(triangulateCopy, v10, v11, v12);
    v17 = objc_msgSend_stringValue(v13, v14, v15, v16);
    NSLog(&cfstr_ErrorNodeIsNot.isa, v17);

    v18 = v129;
    v19 = v129;
  }

  return v129;
}

@end