void *re::allocInfo_CollisionWorld(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_131, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_131))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D8D0, "CollisionWorld");
    __cxa_guard_release(&_MergedGlobals_131);
  }

  return &unk_1EE19D8D0;
}

void re::initInfo_CollisionWorld(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x28D4E2496010BF40;
  v8[1] = "CollisionWorld";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_CollisionWorld(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t *re::collisionLogObjects(re *this)
{
  {
    re::collisionLogObjects(void)::logObjects = os_log_create("com.apple.re", "Collision");
  }

  return &re::collisionLogObjects(void)::logObjects;
}

void *re::PhysXCompoundShape::aabb@<X0>(uint64_t a1@<X0>, float *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = 240 * v5;
    v8.i64[0] = 0x7F0000007FLL;
    v8.i64[1] = 0x7F0000007FLL;
    v9 = vnegq_f32(v8);
    do
    {
      v36 = v9;
      v37 = v8;
      re::GeometricObjectBase::aabb(v6);
      v11 = v36;
      v10 = v37;
      v11.i32[3] = 0;
      v12 = v38;
      v13 = v39;
      v12.i32[3] = 0;
      v10.i32[3] = 0;
      v9 = vminnmq_f32(v11, v12);
      v13.i32[3] = 0;
      v8 = vmaxnmq_f32(v10, v13);
      v6 = (v6 + 240);
      v7 -= 240;
    }

    while (v7);
  }

  else
  {
    v8.i64[0] = 0x7F0000007FLL;
    v8.i64[1] = 0x7F0000007FLL;
    v9 = vnegq_f32(v8);
  }

  v42[0] = v9;
  v42[1] = v8;
  v14 = a2[4];
  v15 = a2[5];
  v16 = v14 + v14;
  v17 = v15 + v15;
  v18 = a2[6];
  v19 = a2[7];
  v20 = v18 + v18;
  v21 = v14 * (v14 + v14);
  v22 = v15 * (v15 + v15);
  v23 = v18 * (v18 + v18);
  v24 = v16 * v15;
  v25 = v16 * v18;
  v26 = v17 * v18;
  v27 = v17 * v19;
  v28 = v20 * v19;
  v29.i32[3] = 0;
  v29.f32[0] = 1.0 - (v22 + v23);
  v29.f32[1] = v24 + v28;
  v29.f32[2] = v25 - v27;
  v30 = v16 * v19;
  v31 = 1.0 - (v21 + v23);
  v32.i32[3] = 0;
  v32.f32[0] = v24 - v28;
  v32.f32[1] = v31;
  v32.f32[2] = v26 + v30;
  HIDWORD(v33) = 0;
  *&v33 = v25 + v27;
  *(&v33 + 1) = v26 - v30;
  *(&v33 + 2) = 1.0 - (v21 + v22);
  v38 = v29;
  v39 = v32;
  v34 = *a2;
  HIDWORD(v34) = 1.0;
  v40 = v33;
  v41 = v34;
  return re::AABB::transform(v42, &v38, a3);
}

void re::PhysXCompoundShape::~PhysXCompoundShape(re::PhysXCompoundShape *this)
{
  re::CompoundShape::~CompoundShape(this);

  JUMPOUT(0x1E6906520);
}

float re::ConeShape::massProperties(uint64_t a1, float *a2, _OWORD *a3, uint64_t a4)
{
  v8 = (*(*a1 + 64))(a1);
  v9 = (*(*a1 + 72))(a1);
  v10 = v9 * v9;
  v11 = v8 * (v10 * 1.0472);
  *a2 = v11;
  v12 = ((v8 * (v8 * 0.0375)) + (v10 * 0.15)) * v11;
  *a4 = v12;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 20) = v10 * (v11 * 0.3);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = v12;
  *(a4 + 44) = 0;
  result = v8 * -0.25;
  LODWORD(v14) = 0;
  *(&v14 + 1) = v8 * -0.25;
  *a3 = v14;
  return result;
}

float32x4_t re::PhysXEmptyShape::aabb@<Q0>(float32x4_t *a1@<X8>)
{
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *a1 = vnegq_f32(result);
  a1[1] = result;
  return result;
}

float re::RectangleShape::massProperties(uint64_t a1, float *a2, void *a3, uint64_t a4)
{
  (*(*a1 + 64))(a1);
  v15 = v8;
  v9 = (*(*a1 + 64))(a1);
  v10.i64[0] = LODWORD(v15) | 0x3400000000000000;
  v10.i64[1] = HIDWORD(v9) | 0x3400000000000000;
  v11 = vmulq_f32(v10, v10);
  v12 = (v15 * 0.00000011921) * *(&v9 + 1);
  *a2 = v12;
  v13 = v12 / 12.0;
  *a4 = v13 * (v11.f32[1] + v11.f32[2]);
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 20) = v13 * (v11.f32[0] + v11.f32[2]);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  result = v13 * vaddv_f32(*v11.f32);
  *(a4 + 40) = result;
  *(a4 + 44) = 0;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

re::PhysXCollisionFactory *re::PhysXCollisionFactory::PhysXCollisionFactory(re::PhysXCollisionFactory *this)
{
  v1 = this;
  v50 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0u;
  v2 = (this + 8);
  *this = &unk_1F5CCEA90;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((atomic_load_explicit(&qword_1EE19D968, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_1EE19D968);
    if (this)
    {
      _MergedGlobals_132 = &unk_1F5D28018;
      __cxa_guard_release(&qword_1EE19D968);
    }
  }

  if ((atomic_load_explicit(&qword_1EE19D978, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_1EE19D978);
    if (this)
    {
      qword_1EE19D970 = 0x412000003F800000;
      __cxa_guard_release(&qword_1EE19D978);
    }
  }

  re::internal::nvphysx::initPhysX(this);
  Instance = physx::shdfnd::Foundation::createInstance(67174656, &_MergedGlobals_132, re::PhysXCollisionFactory::PhysXCollisionFactory(void)::s_allocatorCallback);
  if (*v2)
  {
    (***v2)(*v2);
  }

  *v2 = Instance;
  v8 = physx::NpPhysics::createInstance(0x4010100, Instance, &qword_1EE19D970, 0, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    PxRegisterArticulations(v8);
    PxRegisterArticulationsReducedCoordinate(v14);
    physx::PxvRegisterHeightFields(v15);
    physx::Gu::registerHeightFields(v16);
  }

  v17 = *(v1 + 2);
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  *(v1 + 2) = v14;
  v18 = *(v1 + 1);
  *&v42 = *&qword_1EE19D970 * (*&qword_1EE19D970 * 0.06);
  *(&v42 + 4) = 976715828;
  *(&v42 + 11) = 0;
  v43 = qword_1EE19D970;
  v44 = 0;
  v45 = 0x3F0CCCCD00000000;
  v46 = 0;
  v47 = 0;
  v48 = 32;
  v19 = PxCreateCooking(0x4010100, v18, &v42, v9, v10, v11, v12, v13);
  v21 = v20;
  v22 = *(v1 + 3);
  if (v22)
  {
    (**v22)(v22, v19);
  }

  *(v1 + 3) = v21;
  v23 = (*(**(v1 + 2) + 240))(*(v1 + 2), 0.5, 0.5, 0.1);
  v24 = *(v1 + 6);
  if (v24)
  {
    (**v24)(v24);
  }

  *(v1 + 6) = v23;
  v26 = *(v1 + 2);
  v25 = *(v1 + 3);
  bzero(&v42, 0x3C0uLL);
  for (i = 0; i != 60; ++i)
  {
    v28 = __sincosf_stret(((i / 60.0) + (i / 60.0)) * 3.1416);
    *&v29 = LODWORD(v28.__cosval) | 0xBF00000000000000;
    *(&v29 + 1) = LODWORD(v28.__sinval) | 0xBF00000000000000;
    *(&v42 + i) = v29;
  }

  v49 = xmmword_1E3066660;
  v31 = *(v1 + 4);
  if (v31)
  {
    (**v31)(v31);
  }

  *(v1 + 4) = ConvexMesh;
  v33 = *(v1 + 2);
  v32 = *(v1 + 3);
  bzero(&v42, 0x780uLL);
  for (j = 0; j != 60; ++j)
  {
    v36 = __sincosf_stret(((j / 60.0) + (j / 60.0)) * 3.1416);
    *&v35 = v36.__cosval;
    v37 = v35;
    DWORD1(v37) = -0.5;
    DWORD2(v37) = LODWORD(v36.__sinval);
    v38 = &v42 + j;
    DWORD1(v35) = 0.5;
    *v38 = v37;
    DWORD2(v35) = LODWORD(v36.__sinval);
    v38[60] = v35;
  }

  v40 = *(v1 + 5);
  if (v40)
  {
    (**v40)(v40);
  }

  *(v1 + 5) = v39;
  return v1;
}

void re::PhysXCollisionFactory::~PhysXCollisionFactory(re::PhysXCollisionFactory *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    (**v2)(v2);
  }

  *(this + 5) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    (**v3)(v3);
  }

  *(this + 4) = 0;
  v4 = *(this + 6);
  if (v4)
  {
    (**v4)(v4);
  }

  *(this + 6) = 0;
  v5 = *(this + 3);
  if (v5)
  {
    (**v5)(v5);
  }

  *(this + 3) = 0;
  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  *(this + 2) = 0;
  v7 = *(this + 1);
  if (v7)
  {
    (**v7)(v7);
  }

  *(this + 1) = 0;
  v8 = *(this + 6);
  if (v8)
  {
    (**v8)(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    (**v9)(v9);
  }

  v10 = *(this + 4);
  if (v10)
  {
    (**v10)(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    (**v11)(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    (**v13)(v13);
  }
}

{
  re::PhysXCollisionFactory::~PhysXCollisionFactory(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysXCollisionFactory::createCollisionWorld(re::PhysXCollisionFactory *this, re::Allocator *a2)
{
  v4 = (*(*a2 + 32))(a2, 416, 16);
  v5 = *(this + 2);

  return re::PhysXCollisionWorld::PhysXCollisionWorld(v4, a2, v5);
}

float re::PhysXCollisionFactory::createBoxShape(double a1, double a2, float a3, uint64_t a4, const char *a5, float *a6)
{
  v8 = *a6 * 0.5;
  if (re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken != -1)
  {
    dispatch_once(&re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken, &__block_literal_global_11);
  }

  v12 = a6[1] * 0.5;
  if (re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken != -1)
  {
    dispatch_once(&re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken, &__block_literal_global_11);
  }

  v15 = a6[2];
  if (re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken != -1)
  {
    dispatch_once(&re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken, &__block_literal_global_11);
  }

  v17 = (*(*a5 + 32))(a5, 40, 8);
  v18 = fminf(fminf(v11, v16), v14);
  *(v17 + 20) = 3;
  result = v18 + v18;
  *(v17 + 16) = result;
  *v17 = &unk_1F5CCED60;
  *(v17 + 8) = v17 + 20;
  *(v17 + 24) = v11;
  *(v17 + 28) = v14;
  *(v17 + 32) = v16;
  return result;
}

float anonymous namespace::ensureValidExtent(_anonymous_namespace_ *this, float a2, const char *a3, float a4, float a5)
{
  v5 = a2;
  v14 = *MEMORY[0x1E69E9840];
  if (a2 < a4)
  {
    a2 = a4;
  }

  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v6 = 1000000.0;
  }

  else
  {
    v6 = a2;
  }

  if (v6 != v5)
  {
    v8 = *re::collisionLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = this;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Bad parameter (%s), value = %f, passed to shape creation.", &v10, 0x16u);
    }
  }

  return v6;
}

float re::PhysXCollisionFactory::createCapsuleShape(re::PhysXCollisionFactory *this, re::Allocator *a2, float a3, float a4, float a5)
{
  v11 = (*(*a2 + 32))(a2, 32, 8);
  if (v10 <= v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  *(v11 + 20) = 2;
  result = v12 + v12;
  *(v11 + 16) = result;
  *v11 = &unk_1F5CCDD98;
  *(v11 + 8) = v11 + 20;
  *(v11 + 24) = v7;
  *(v11 + 28) = v10;
  return result;
}

uint64_t re::PhysXCollisionFactory::createConvexPolyhedronShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = result;
    v8 = (*(*a2 + 32))(a2, 72, 8);
    return re::PhysXConvexPolyhedronShape::PhysXConvexPolyhedronShape(v8, v7);
  }

  return result;
}

uint64_t anonymous namespace::createConvexMesh(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v27 = 255;
  v20 = 0;
  v19 = a4;
  v18 = a3;
  v17 = a5;
  v25 = 0;
  v26 = 16711762;
  v7 = (*(*physx::shdfnd::Foundation::mInstance + 32))(physx::shdfnd::Foundation::mInstance);
  v13 = &unk_1F5D28378;
  v14 = v7;
  v15 = 0;
  v16 = 0;
  v12 = 0;
  v8 = (*(*a1 + 56))(a1, &v17, &v13, &v12);
  if (v8)
  {
    *buf = &unk_1F5D283B0;
    v30 = v15;
    v29 = v16;
    v31 = 0;
    v9 = (*(*a2 + 96))(a2, buf);
  }

  else
  {
    v10 = *re::collisionLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to cook convex mesh (0x%x)", buf, 8u);
    }

    v9 = 0;
  }

  v13 = &unk_1F5D28378;
  if (v15)
  {
    (*(*v14 + 24))(v14);
  }

  return v9;
}

uint64_t re::PhysXCollisionFactory::createConvexPolyhedronShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return re::PhysXCollisionFactory::createConvexPolyhedronShape(a1, a2, a3, a4, 16);
}

{
  return re::PhysXCollisionFactory::createConvexPolyhedronShape(a1, a2, a3, a4, 16);
}

uint64_t re::PhysXCollisionFactory::createConvexPolyhedronShape(re::PhysXCollisionFactory *this, Allocator *a2, const re::ConvexPolyhedronShape *a3)
{
  v3 = *(*(a3 + 1) + 32);
  v4 = (*(a2->var0 + 4))(a2, 72, 8);

  return re::PhysXConvexPolyhedronShape::PhysXConvexPolyhedronShape(v4, v3);
}

uint64_t *re::PhysXCollisionFactory::emptyShape(re::PhysXCollisionFactory *this)
{
  if ((atomic_load_explicit(&qword_1EE19D980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D980))
  {
    dword_1EE19D998 = 0;
    qword_1EE19D988 = &unk_1F5CCEA10;
    unk_1EE19D990 = 0;
    __cxa_guard_release(&qword_1EE19D980);
  }

  return &qword_1EE19D988;
}

uint64_t re::PhysXCollisionFactory::createEmptyShape(re::PhysXCollisionFactory *this, Allocator *a2)
{
  result = (*(a2->var0 + 4))(a2, 24, 8);
  *(result + 16) = 0;
  *result = &unk_1F5CCEA10;
  *(result + 8) = 0;
  return result;
}

uint64_t re::PhysXCollisionFactory::createPlaneShape(float a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = (*(*a3 + 32))(a3, 112, 16);

  return re::PhysXPlaneShape::PhysXPlaneShape(v6, a4, a1);
}

uint64_t re::PhysXCollisionFactory::createSphereShape(re::PhysXCollisionFactory *this, re::Allocator *a2, float a3, double a4, float a5)
{
  result = (*(*a2 + 32))(a2, 32, 8);
  *(result + 20) = 0;
  *(result + 16) = v6;
  *result = &unk_1F5CCECF0;
  *(result + 8) = result + 20;
  *(result + 24) = v6;
  return result;
}

double re::PhysXCollisionFactory::createConeShape(re::PhysXCollisionFactory *this, re::Allocator *a2, float a3, float a4, float a5)
{
  v12 = (*(*a2 + 32))(a2, 72, 8);
  v13 = *(this + 4);
  v14 = v8 + v8;
  *(v12 + 24) = 4;
  if ((v8 + v8) > v11)
  {
    v14 = v11;
  }

  *(v12 + 16) = v14;
  *v12 = &unk_1F5CCDF70;
  *(v12 + 8) = v12 + 24;
  *(v12 + 28) = v8;
  *(v12 + 32) = v11;
  *(v12 + 36) = v8;
  result = 0.0;
  *(v12 + 40) = xmmword_1E30474D0;
  *(v12 + 56) = v13;
  *(v12 + 64) = 1;
  *(v12 + 67) = 0;
  *(v12 + 65) = 0;
  return result;
}

double re::PhysXCollisionFactory::createCylinderShape(re::PhysXCollisionFactory *this, re::Allocator *a2, float a3, float a4, float a5)
{
  v12 = (*(*a2 + 32))(a2, 72, 8);
  v13 = *(this + 5);
  v14 = v8 + v8;
  *(v12 + 24) = 4;
  if ((v8 + v8) > v11)
  {
    v14 = v11;
  }

  *(v12 + 16) = v14;
  *v12 = &unk_1F5CCE7F0;
  *(v12 + 8) = v12 + 24;
  *(v12 + 28) = v8;
  *(v12 + 32) = v11;
  *(v12 + 36) = v8;
  result = 0.0;
  *(v12 + 40) = xmmword_1E30474D0;
  *(v12 + 56) = v13;
  *(v12 + 64) = 1;
  *(v12 + 67) = 0;
  *(v12 + 65) = 0;
  return result;
}

float re::PhysXCollisionFactory::createRectangleShape(double a1, double a2, float a3, uint64_t a4, const char *a5, float *a6)
{
  v12 = (*(*a5 + 32))(a5, 40, 8);
  if (v11 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v11;
  }

  *(v12 + 20) = 3;
  result = v13 + v13;
  *(v12 + 16) = result;
  *v12 = &unk_1F5CCE780;
  *(v12 + 8) = v12 + 20;
  *(v12 + 24) = v8;
  *(v12 + 28) = 872415232;
  *(v12 + 32) = v11;
  return result;
}

void *re::PhysXCollisionFactory::createCompoundShape(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(*a2 + 32))(a2, 144, 8, a4, a5, a6);
  result = re::CompoundShape::CompoundShape(v12, a2, 0, a3, a4, a5, a7);
  *result = &unk_1F5CCE980;
  return result;
}

void re::PhysXCollisionFactory::createTriangleMeshShape(re::PhysXCollisionFactory *this, re::Allocator *a2, const re::IndexedTriangleMesh *a3)
{
  if (a3)
  {
    v4 = *(a3 + 8);
    if (v4)
    {
      (*(*v4 + 120))(&v9);
      v6 = vsub_f32(v12, v10);
      if (v6.f32[0] >= v6.f32[1])
      {
        v6.f32[0] = v6.f32[1];
      }

      if ((v11 - v9) >= v6.f32[0])
      {
        v7 = v6.f32[0];
      }

      else
      {
        v7 = v11 - v9;
      }

      v8 = (*(*a2 + 32))(a2, 80, 8);
      re::PhysXTriangleMeshShape::PhysXTriangleMeshShape(v8, a3, v7);
    }
  }
}

re::PhysXCollisionObject *re::PhysXCollisionFactory::createCollisionObject(re::CollisionFactory *a1, re::Allocator *a2, const re::CollisionShape *a3, float32x4_t *a4, uint64_t a5, re::Allocator *a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(4, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) shape must not be null.", "shape != nullptr", "createCollisionObject", 325);
    _os_crash("assertion failure: (shape != nullptr) shape must not be null.");
    __break(1u);
  }

  v6 = a6;
  v12 = (*(*a3 + 56))(a3);
  v13 = *(a1 + 2);
  if ((a5 & 9) != 0 || v12)
  {
    goto LABEL_7;
  }

  v27 = a4[1];
  v28 = a4->i64[0];
  LODWORD(v29) = a4->i32[2];
  v14 = (*(*v13 + 176))(v13, &v27);
  (*(*v14 + 560))();
  (*(*v14 + 560))(v14, 2, 1);
  (*(*v14 + 560))(v14, 4, 1);
  (*(*v14 + 560))(v14, 8, 1);
  (*(*v14 + 560))(v14, 16, 1);
  (*(*v14 + 560))(v14, 32, 1);
  if (v6)
  {
LABEL_8:
    v17 = a3;
  }

  else
  {
    while (1)
    {
      v15 = (*(*a3 + 24))(a3);
      v17 = re::CollisionFactory::deepCopyShape(a1, a2, a3);
      v6 = a2;
      if (v17)
      {
        break;
      }

      re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) deepCopyShape() failed (%p). Shape type: %d", "shape != nullptr", "createCollisionObject", 354, a3, v15);
      v13 = _os_crash("assertion failure: (shape != nullptr) deepCopyShape() failed (%p). Shape type: %d", v25, v26);
      __break(1u);
LABEL_7:
      v27 = a4[1];
      v28 = a4->i64[0];
      LODWORD(v29) = a4->i32[2];
      v14 = (*(*v13 + 168))(v13, &v27);
      if (v6)
      {
        goto LABEL_8;
      }
    }
  }

  GeometricObject = re::CollisionFactory::createGeometricObject(a1, a2, v17, a4, v6);
  v19 = *(a1 + 6);
  v20 = *(a1 + 2);
  v27 = 0uLL;
  v29 = 0x3F80000000000000;
  v30[0] = v19;
  v28 = 0;
  if (attachShape(v20, v14, GeometricObject, 0, &v27, v30, 1, (a5 >> 1) & 1))
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(*a2 + 32))(a2, 144, 16);
  v23.i32[0] = 1.0;
  return re::PhysXCollisionObject::PhysXCollisionObject(v22, v23, v21, a5, GeometricObject, a2, v14);
}

uint64_t attachShape(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (*(*a3 + 16))(a3);
  if ((*(*v16 + 24))(v16) == 1)
  {
    return 0;
  }

  if (a4)
  {
    (*(*a3 + 40))(&v54, a3);
    _Q0 = a5[1];
    v18 = vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL);
    v19 = vnegq_f32(_Q0);
    v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), v19), v54, v18);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v19), v22, v18);
    v24 = vaddq_f32(vaddq_f32(v54, vmulq_laneq_f32(v22, _Q0, 3)), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v19), v55, v18);
    v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), v55, _Q0, 3), _Q0, v55, 3);
    _S4 = v55.i32[3];
    __asm { FMLA            S5, S4, V0.S[3] }

    v26.i32[3] = _Q5.i32[0];
    *a5 = vaddq_f32(*a5, v24);
    a5[1] = v26;
  }

  if ((*(*v16 + 24))(v16) == 7)
  {
    v32 = *(v16 + 32);
    if (v32)
    {
      v33 = *(v16 + 40);
      v34 = 240 * v32;
      LODWORD(v16) = 1;
      do
      {
        v35 = a5[1];
        v54 = *a5;
        v55 = v35;
        v16 = v16 & attachShape(a1, a2, v33, a3, &v54, a6, a7, a8);
        v33 += 30;
        v34 -= 240;
      }

      while (v34);
      return v16;
    }

    return 1;
  }

  v36 = *(v16 + 8);
  if (!v36)
  {
    return 1;
  }

  a3[6] = a4;
  v54.i8[0] = 11;
  v37 = (*(*a1 + 192))(a1, v36, a6, a7, 1, &v54);
  v38 = v37;
  if (a8)
  {
    (*(*v37 + 296))(v37, 1, 0);
    (*(*v38 + 296))(v38, 4, 1);
  }

  else if (!v37)
  {
    return 1;
  }

  if ((*(*v16 + 40))(v16))
  {
    v39 = (*(*v16 + 48))(v16);
    _Q0 = a5[1];
    v41 = vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL);
    _Q4 = *(v39 + 16);
    v43 = vnegq_f32(_Q0);
    v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v39, *v39), *v39, 0xCuLL), v43), *v39, v41);
    v45 = vaddq_f32(v44, v44);
    v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), v43), v46, v41);
    v48 = vaddq_f32(*a5, vaddq_f32(vaddq_f32(*v39, vmulq_laneq_f32(v46, _Q0, 3)), vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL)));
    _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v43), _Q4, v41);
    v50 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q4, _Q0, 3);
    _Q3.i32[0] = _Q4.i32[3];
    v51 = vmlaq_laneq_f32(v50, _Q0, _Q4, 3);
    __asm { FMLA            S4, S3, V0.S[3] }

    v51.i32[3] = _Q4.i32[0];
    *a5 = v48;
    a5[1] = v51;
    v52 = v48.i32[2];
  }

  else
  {
    v51 = a5[1];
    v48.i64[0] = a5->i64[0];
    v52 = a5->i32[2];
  }

  a3[7] = v38;
  v54 = v51;
  v55.i64[0] = v48.i64[0];
  v55.i32[2] = v52;
  (*(*v38 + 152))(v38, &v54);
  (*(*a2 + 168))(a2, v38);
  v16 = (*(*v38 + 64))(v38) == 3 || (*(*v38 + 64))(v38) == 4 || (*(*v38 + 64))(v38) == 5;
  (**v38)(v38);
  return v16;
}

re::PhysXCollisionObject *re::PhysXCollisionFactory::createCollisionObject(re::PhysXCollisionFactory *this, re::Allocator *a2, re::GeometricObjectBase *a3, void *a4, void *const *a5, uint64_t a6)
{
  v9 = *(this + 2);
  v14 = 0uLL;
  v15 = 0;
  v16 = 0x3F80000000000000;
  if (attachShape(v9, a4, a3, 0, &v14, a5, a6, 0))
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = (*(*a2 + 32))(a2, 144, 16);
  v12.i32[0] = 1.0;

  return re::PhysXCollisionObject::PhysXCollisionObject(v11, v12, v10, 8, a3, 0, a4);
}

uint64_t re::PhysXCollisionFactory::createIndexedTriangleMesh(re *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v11 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Triangle mesh positions must not be null.";
      goto LABEL_10;
    }

    return 0;
  }

  if (!a6)
  {
    v11 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Triangle mesh indices must not be null.";
      goto LABEL_10;
    }

    return 0;
  }

  if (a7 != 3 * (a7 / 3))
  {
    v11 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Triangle mesh index count is not a multiple of 3.";
LABEL_10:
      v13 = v11;
      v14 = 2;
LABEL_11:
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      return 0;
    }

    return 0;
  }

  if (a9 && a7 / 3 > a10)
  {
    v17 = *re::collisionLogObjects(a1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134217984;
    *v35 = a7;
    v12 = "Failed to cook triangle mesh material index count is too small, expected %zu material indices";
    v13 = v17;
    v14 = 12;
    goto LABEL_11;
  }

  v40 = 0;
  v36 = a4;
  *&v35[4] = a3;
  *buf = a5;
  v39 = a7 / 3;
  v38 = a6;
  if (a8 == 1)
  {
    v40 = 2;
    v20 = 6;
  }

  else
  {
    v20 = 12;
  }

  v42 = a9;
  v37 = v20;
  v41 = 2 * (a9 != 0);
  v21 = (*(*physx::shdfnd::Foundation::mInstance + 32))(physx::shdfnd::Foundation::mInstance);
  v26 = &unk_1F5D28378;
  v27 = v21;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v22 = (*(**(a1 + 3) + 32))(*(a1 + 3), buf, &v26, &v25);
  if (v22)
  {
    *v30 = &unk_1F5D283B0;
    v31 = v29;
    v32 = v28;
    v33 = 0;
    v23 = (*(**(a1 + 2) + 48))(*(a1 + 2), v30);
    v18 = (*(*a2 + 32))(a2, 72, 8);
    re::PhysXIndexedTriangleMesh::PhysXIndexedTriangleMesh(v18, v23);
  }

  else
  {
    v24 = *re::collisionLogObjects(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v30 = 67109120;
      *&v30[4] = v25;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Failed to cook triangle mesh (0x%x)", v30, 8u);
    }

    v18 = 0;
  }

  v26 = &unk_1F5D28378;
  if (v28)
  {
    (*(*v27 + 24))(v27);
  }

  return v18;
}

uint64_t re::PhysXCollisionFactory::createCharacterController(uint64_t a1, re::Allocator *a2, uint64_t a3, float32x2_t *a4, uint64_t *a5, uint64_t a6, float a7)
{
  v14 = *(a3 + 24);
  if ((*(a3 + 20) + (v14 * -2.0)) >= 0.01)
  {
    v15 = *(a3 + 20) + (v14 * -2.0);
  }

  else
  {
    v15 = 0.01;
  }

  v16 = (*(*a2 + 32))(a2, 384, 16);
  v17 = re::CharacterController::CharacterController(v16, a2, *a3, *(a3 + 8), *(a3 + 4));
  *(v17 + 84) = (v15 + (v14 * 2.0)) + (v14 * -2.0);
  *(v17 + 85) = v14;
  *v17 = &unk_1F5CCE4B0;
  *(v17 + 43) = &unk_1F5CCE5A8;
  *(v17 + 44) = v17;
  *(v17 + 45) = &unk_1F5CCEBD8;
  *(v17 + 46) = 0;
  re::PhysXCollisionFactory::createCapsuleShape(v17, a2, (v15 + (*(a3 + 24) * 2.0)) * a7, *(a3 + 24) * a7, v18);
  re::internal::PhysXCapsuleController::createUnderlyingController(v16, a2, v19, a3, a4, a5, a6, *(a1 + 48), a7);
  v20 = (*(**(v16 + 152) + 56))(*(v16 + 152));
  v21 = (*(*a2 + 32))(a2, 144, 16);
  *v22.i32 = a7;
  v23 = re::PhysXCollisionObject::PhysXCollisionObject(v21, v22, 1, 0, v16, 0, v20);
  *(v16 + 136) = v23;
  v24 = *(a3 + 12);
  if (*(v23 + 4) != v24)
  {
    *(v23 + 4) = v24;
    (*(*v23 + 80))(v23);
  }

  return v16;
}

void *re::PhysXCollisionFactory::serializeRawShape@<X0>(re::Allocator *a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = a1;
  result = re::DynamicArray<BOOL>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::internal::PhysXControllerBehaviorCallback::getBehaviorFlags(_BYTE *a1@<X8>)
{
  *a1 = 4;
}

{
  *a1 = 4;
}

{
  *a1 = 4;
}

void ___ZN2re23RECollisionFeatureFlags22getMinimumBoxDimensionEv_block_invoke(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  re::Defaults::floatValue(&v4, "RECollisionMinimumBoxDimension", a2);
  if (v4 == 1)
  {
    re::RECollisionFeatureFlags::gMinimumBoxDimension = LODWORD(v5);
  }

  v3 = *re::collisionLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = *&re::RECollisionFeatureFlags::gMinimumBoxDimension;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "RECollisionMinimumBoxDimension is now %f.", &v4, 0xCu);
  }
}

void re::ContactSet::~ContactSet(re::ContactSet *this)
{
  v2 = this + 16;
  if (*(this + 2))
  {
    re::DynamicArray<unsigned long>::deinit(this + 16);
    *(this + 14) = 0;
    *(this + 15) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(v2);
}

uint64_t re::ContactSet::set(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a2 + 32))(a2, a3);
  re::DynamicArray<re::Contact>::resize(a1 + 2, v6);
  v7 = *(*a1 + 24);
  v8 = v7 != *((*(*a2 + 40))(a2, a3) + 24);
  v9 = *(*a2 + 56);

  return v9(a2, a3, a1, 0, v6, v8);
}

void *re::DynamicArray<re::Contact>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 80 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 80 * v4;
        v7 = v5 / 0x50uLL + 1;
        do
        {
          *(v6 + 64) = 0;
          *(v6 + 32) = 0uLL;
          *(v6 + 48) = 0uLL;
          *v6 = 0uLL;
          *(v6 + 16) = 0uLL;
          v6 += 80;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::ContactSet::merge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = (*(*a2 + 32))(a2, a3);
  re::DynamicArray<re::Contact>::resize((a1 + 16), v7 + v6);
  v8 = *(*a1 + 24);
  v9 = v8 != *((*(*a2 + 40))(a2, a3) + 24);
  v10 = *(*a2 + 56);

  return v10(a2, a3, a1, v6, v7, v9);
}

re::PhysXCollisionObject *re::PhysXCollisionObject::PhysXCollisionObject(re::PhysXCollisionObject *a1, int32x2_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = re::CollisionObject::CollisionObject(a1, a3, a4, a5, a6, a7);
  v10->i64[0] = &unk_1F5CCEC68;
  v10[7].i64[0] = 0;
  v10[7].i64[1] = 0;
  v10[6].i64[1] = 0;
  v10[8] = vdupq_lane_s32(a2, 0);
  a7[2] = v10;
  v11 = (*(*a5 + 16))(a5);
  if ((*(*v11 + 24))(v11) == 7)
  {
    v13 = (*(*a5 + 16))(a5);
    *&v59 = a1;
    *(&v59 + 1) = re::PhysXCollisionObject::onChildPoseDidChange;
    *&v60 = 0;
    *(&v60 + 1) = re::Event<re::GeometricObjectBase>::createSubscription<re::PhysXCollisionObject>(re::PhysXCollisionObject *,REEventHandlerResult (re::PhysXCollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
    v12.n128_f64[0] = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v13 + 56), &v59);
  }

  v14 = (*(*a7 + 184))(a7, v12);
  v15 = v14;
  v16 = v14;
  *(a1 + 14) = v16;
  if (v15)
  {
    *(a1 + 15) = v17;
    if (!v17)
    {
      goto LABEL_47;
    }
  }

  v19 = (*(*a7 + 184))(a7);
  if (v19)
  {
    v20 = 0;
    v21 = 8;
    v22 = v19;
    while (1)
    {
      v47 = 0;
      (*(*a7 + 192))(a7, &v47, 1, v20);
      v23 = (*(*v47 + 64))(v47);
      if (v23 > 2)
      {
        break;
      }

      if (v23)
      {
        if (v23 != 1)
        {
          if (v23 != 2)
          {
            goto LABEL_48;
          }

          *&v54[8] = 0;
          *v54 = 2;
          (*(*v47 + 104))(v47, v54);
          v25 = *(a1 + 14);
          if (v25 <= v20)
          {
            goto LABEL_31;
          }

          *(*(a1 + 15) + v21 - 8) = vrev64_s32(*&v54[4]);
        }
      }

      else
      {
        v48 = 0;
        (*(*v47 + 96))(v47, &v48);
        v25 = *(a1 + 14);
        if (v25 <= v20)
        {
          goto LABEL_35;
        }

        *(*(a1 + 15) + v21 - 8) = HIDWORD(v48);
      }

LABEL_25:
      ++v20;
      v21 += 12;
      if (v22 == v20)
      {
        goto LABEL_26;
      }
    }

    switch(v23)
    {
      case 5:
        v49 = 5;
        v50 = xmmword_1E304F3C0;
        v51 = 0;
        *v52 = 1065353216;
        v53 = 0;
        (*(*v47 + 128))(v47, &v49);
        v25 = *(a1 + 14);
        if (v25 <= v20)
        {
          goto LABEL_43;
        }

        break;
      case 4:
        v49 = 4;
        v50 = xmmword_1E304F3C0;
        v51 = 0;
        *v52 = 1065353216;
        *&v52[4] = 0;
        LOBYTE(v53) = 1;
        *(&v53 + 1) = 0;
        BYTE3(v53) = 0;
        (*(*v47 + 120))(v47, &v49);
        v25 = *(a1 + 14);
        if (v25 <= v20)
        {
          goto LABEL_39;
        }

        break;
      case 3:
        *v54 = 3;
        *&v54[8] = 0;
        (*(*v47 + 88))(v47, v54);
        v25 = *(a1 + 14);
        if (v25 <= v20)
        {
          v48 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          v29 = MEMORY[0x1E69E9C10];
          v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          *&v50 = "operator[]";
          WORD4(v50) = 1024;
          if (v30)
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          *(&v50 + 10) = 468;
          HIWORD(v50) = 2048;
          v51 = v20;
          *v52 = 2048;
          *&v52[2] = v25;
          _os_log_send_and_compose_impl(v31, &v48, &v59, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v44, v45);
          _os_crash_msg();
          __break(1u);
LABEL_31:
          v48 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          v32 = MEMORY[0x1E69E9C10];
          v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          *&v50 = "operator[]";
          WORD4(v50) = 1024;
          if (v33)
          {
            v34 = 3;
          }

          else
          {
            v34 = 2;
          }

          *(&v50 + 10) = 468;
          HIWORD(v50) = 2048;
          v51 = v20;
          *v52 = 2048;
          *&v52[2] = v25;
          _os_log_send_and_compose_impl(v34, &v48, &v59, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v44, v45);
          _os_crash_msg();
          __break(1u);
LABEL_35:
          *v54 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          v35 = MEMORY[0x1E69E9C10];
          v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          *&v50 = "operator[]";
          WORD4(v50) = 1024;
          if (v36)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          *(&v50 + 10) = 468;
          HIWORD(v50) = 2048;
          v51 = v20;
          *v52 = 2048;
          *&v52[2] = v25;
          _os_log_send_and_compose_impl(v37, v54, &v59, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v44, v45);
          _os_crash_msg();
          __break(1u);
LABEL_39:
          v48 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v54 = 136315906;
          *&v54[4] = "operator[]";
          *&v54[12] = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          *&v54[14] = 468;
          v55 = 2048;
          v56 = v20;
          v57 = 2048;
          v58 = v25;
          _os_log_send_and_compose_impl(v40, &v48, &v59, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v54, 38, v44, v45);
          _os_crash_msg();
          __break(1u);
LABEL_43:
          v48 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          v41 = MEMORY[0x1E69E9C10];
          v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v54 = 136315906;
          *&v54[4] = "operator[]";
          *&v54[12] = 1024;
          if (v42)
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          *&v54[14] = 468;
          v55 = 2048;
          v56 = v20;
          v57 = 2048;
          v58 = v25;
          _os_log_send_and_compose_impl(v43, &v48, &v59, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v54, 38, v44, v45);
          _os_crash_msg();
          __break(1u);
LABEL_47:
          re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
LABEL_48:
          re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Unsupported geometry type!", "!Unreachable code", "getExtentsForAllShapes", 63);
          _os_crash("assertion failure: (!Unreachable code) Unsupported geometry type!");
          __break(1u);
        }

        v26 = (*(a1 + 15) + v21);
        *(v26 - 1) = *&v54[4];
        v27 = *&v54[12];
        goto LABEL_24;
      default:
        goto LABEL_48;
    }

    v26 = (*(a1 + 15) + v21);
    *(v26 - 1) = v50;
    v27 = DWORD2(v50);
LABEL_24:
    *v26 = v27;
    goto LABEL_25;
  }

LABEL_26:
  re::PhysXCollisionObject::updateFilterData(a1);
  return a1;
}

uint64_t re::PhysXCollisionObject::onChildPoseDidChange(re::PhysXCollisionObject *this, re::GeometricObjectBase *a2)
{
  re::GeometricObjectBase::parentPose(a2, v4);
  updateLocalPoses(a2, v4);
  return 0;
}

uint64_t re::PhysXCollisionObject::updateFilterData(re::PhysXCollisionObject *this)
{
  v2 = *(this + 3);
  v3 = *(this + 2) & 1;
  if (v2)
  {
    v4 = v2[4] == 5;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 432))(v12, *(this + 3));
    v3 |= (LOBYTE(v12[0]) >> 1) & 2;
  }

  v5 = *(this + 22);
  result = (*(*v2 + 184))(v2);
  if (result)
  {
    v7 = 0;
    v8 = (v5 >> 1) & 4 | v3;
    do
    {
      v13 = 0;
      (*(*v2 + 192))(v2, &v13, 1, v7);
      v9 = *(this + 4);
      v12[0] = v8;
      v12[1] = v9;
      (*(*v13 + 168))(v13, v12);
      (*(*v13 + 184))(v13, v12);
      v7 = (v7 + 1);
      result = (*(*v2 + 184))(v2);
    }

    while (v7 < result);
  }

  v10 = *(this + 7);
  if (v10)
  {
    re::ContactSetCollection::remove((*(v10 + 128) + 72), this);
    (*(**(v10 + 128) + 200))(*(v10 + 128), this);
    v11 = *(v10 + 128);
    *(this + 7) = v11;
    return (*(*v11 + 192))(v11, this);
  }

  return result;
}

void re::PhysXCollisionObject::~PhysXCollisionObject(re::PhysXCollisionObject *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  v3 = (*(*v2 + 16))(v2);
  if ((*(*v3 + 24))(v3) == 7)
  {
    v4 = (*(*v2 + 16))(v2);
    *&v7 = this;
    *(&v7 + 1) = re::PhysXCollisionObject::onChildPoseDidChange;
    v8 = 0;
    v9 = re::Event<re::GeometricObjectBase>::createSubscription<re::PhysXCollisionObject>(re::PhysXCollisionObject *,REEventHandlerResult (re::PhysXCollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 56, &v7);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (**v5)(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    if (*(this + 14))
    {
      (*(*v6 + 40))(v6, *(this + 15));
      *(this + 14) = 0;
      *(this + 15) = 0;
    }

    *(this + 13) = 0;
  }

  re::CollisionObject::~CollisionObject(this);
}

{
  re::PhysXCollisionObject::~PhysXCollisionObject(this);

  JUMPOUT(0x1E6906520);
}

re::PhysXCollisionObject *re::PhysXCollisionObject::setRawCollisionObject(re::PhysXCollisionObject *this, void *a2)
{
  *(this + 3) = a2;
  if (a2)
  {
    a2[2] = this;
    return re::PhysXCollisionObject::updateFilterData(this);
  }

  return this;
}

uint64_t re::PhysXCollisionObject::poseDidChange(re::PhysXCollisionObject *this, re::GeometricObjectBase *a2)
{
  v2 = *(this + 3);
  (*(*a2 + 40))(&v4, a2);
  v7 = v6;
  v8 = v4;
  v9 = v5;
  (*(*v2 + 160))(v2, &v7, 1);
  return 0;
}

uint64_t updateLocalPoses(void *a1, uint64_t a2)
{
  (*(*a1 + 40))(&v39);
  _Q0 = *(a2 + 16);
  _Q2 = vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL);
  v6 = vnegq_f32(_Q0);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v6), v39, _Q2);
  v8 = vaddq_f32(v7, v7);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v6), v9, _Q2);
  _Q1 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v6), v40, _Q2);
  v12 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v40, _Q0, 3);
  _Q1.i32[0] = v40.i32[3];
  v13 = vmlaq_laneq_f32(v12, _Q0, v40, 3);
  __asm { FMLA            S2, S1, V0.S[3] }

  v36 = _Q2.i32[0];
  v37 = v13;
  v13.i32[3] = _Q2.i32[0];
  v38 = vaddq_f32(*a2, vaddq_f32(vaddq_f32(v39, vmulq_laneq_f32(v9, _Q0, 3)), vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL)));
  v41[0] = v38;
  v41[1] = v13;
  v35 = v13;
  v18 = (*(*a1 + 16))(a1);
  result = (*(*v18 + 24))(v18);
  if (result != 1)
  {
    if (result == 7)
    {
      v20 = v18[4];
      if (v20)
      {
        v21 = v18[5];
        v22 = 240 * v20;
        do
        {
          result = updateLocalPoses(v21, v41);
          v21 += 30;
          v22 -= 240;
        }

        while (v22);
      }
    }

    else
    {
      v23 = a1[7];
      if ((*(*v18 + 40))(v18))
      {
        v24 = (*(*v18 + 48))(v18);
        v25 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
        _Q2 = *(v24 + 16);
        _Q4 = vnegq_f32(v37);
        v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v24, *v24), *v24, 0xCuLL), _Q4), *v24, v25);
        v29 = vaddq_f32(v28, v28);
        v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
        v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), _Q4), v30, v25);
        v32 = vaddq_f32(v38, vaddq_f32(vaddq_f32(*v24, vmulq_laneq_f32(v30, v35, 3)), vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL)));
        _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), _Q4), _Q2, v25);
        v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q2, v35, 3), v37, _Q2, 3);
        _Q4.i32[0] = v36;
        __asm { FMLA            S3, S4, V2.S[3] }

        v39.i64[0] = v34.i64[0];
        v39.i64[1] = __PAIR64__(_Q3.u32[0], v34.u32[2]);
        v40.i64[0] = v32.i64[0];
        v40.i32[2] = v32.i32[2];
      }

      else
      {
        v39.i64[0] = v37.i64[0];
        v39.i64[1] = __PAIR64__(v36, v37.u32[2]);
        v40.i64[0] = v38.i64[0];
        v40.i32[2] = v38.i32[2];
      }

      return (*(*v23 + 152))(v23, &v39);
    }
  }

  return result;
}

uint64_t re::PhysXCollisionObject::pxShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  (*(*v5 + 152))(&v32, v5);
  v31 = 0;
  (*(*v5 + 192))(v5, &v31, 1, a2);
  if (a3)
  {
    (*(*v31 + 160))(&v27);
    _S2 = v28 + v28;
    _S4 = v30 + v30;
    v8 = v35;
    v9 = (v34 * v34) + -0.5;
    *v10.i32 = v32;
    _Q7.i64[0] = v33;
    __asm
    {
      FMLA            S16, S4, V7.S[1]
      FMLA            S18, S2, V7.S[1]
      FMLA            S20, S16, V7.S[1]
    }

    v19 = v36 + (((v34 * _S18) + ((v29 + v29) * v9)) + (*&v33 * _S16));
    v20 = v27;
    v20.i32[3] = HIDWORD(v33);
    v21 = v37 + _S20;
    v22 = ((v34 * (vmuls_lane_f32(v29 + v29, vnegq_f32(v20), 3) + (*&v33 * (v30 + v30)))) + ((v28 + v28) * v9)) + (v32 * _S16);
    v23 = vextq_s8(vextq_s8(v10, v10, 4uLL), _Q7, 0xCuLL);
    v23.f32[3] = -v32;
    v24 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v27, 3), v27, 4uLL), v23), v27, v34);
    v23.f32[3] = -*&v33;
    _Q7.i64[1] = __PAIR64__(v27.u32[2], LODWORD(v32));
    v25 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v24, v24, 4uLL), v24), vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL), v23), _Q7, v20);
    *a3 = vzip2q_s32(vzip1q_s32(v25, vextq_s8(v25, v25, 0xCuLL)), v25);
    *(a3 + 16) = v8 + v22;
    *(a3 + 20) = v19;
    *(a3 + 24) = v21;
  }

  return v31;
}

uint64_t re::PhysXCollisionObject::hasTriggerShapes(re::PhysXCollisionObject *this)
{
  v1 = *(this + 3);
  if (!(*(*v1 + 184))(v1))
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v6 = 0;
    (*(*v1 + 192))(v1, &v6, 1, v2);
    (*(*v6 + 312))(&v5);
    v3 = (v5 >> 2) & 1;
    if ((v5 & 4) == 0)
    {
      break;
    }

    v2 = (v2 + 1);
  }

  while (v2 < (*(*v1 + 184))(v1));
  return v3;
}

__n128 re::PhysXCollisionObject::setScaleInternal(uint64_t a1, float32x2_t *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if ((*(*v4 + 184))(v4))
  {
    v5 = 0;
    for (i = 0; i < (*(*v4 + 184))(v4); ++i)
    {
      v33 = 0;
      (*(*v4 + 192))(v4, &v33, 1, i);
      v7 = (*(*v33 + 64))(v33);
      if (v7 > 2)
      {
        if (v7 == 5)
        {
          v35 = 5;
          v36 = xmmword_1E304F3C0;
          v37 = 0;
          *v38 = 1065353216;
          v39 = 0;
          (*(*v33 + 128))(v33, &v35);
          v9 = *(a1 + 112);
          if (v9 <= i)
          {
            goto LABEL_44;
          }

          goto LABEL_20;
        }

        if (v7 == 4)
        {
          v35 = 4;
          v36 = xmmword_1E304F3C0;
          v37 = 0;
          *v38 = 1065353216;
          *&v38[4] = 0;
          LOBYTE(v39) = 1;
          *(&v39 + 1) = 0;
          BYTE3(v39) = 0;
          (*(*v33 + 120))(v33, &v35);
          v9 = *(a1 + 112);
          if (v9 <= i)
          {
            goto LABEL_40;
          }

LABEL_20:
          v13 = (*(a1 + 120) + v5);
          v14 = v13[1].f32[0] * a2[1].f32[0];
          *&v36 = vmul_f32(*v13, *a2);
          *(&v36 + 2) = v14;
          v12 = *(*v33 + 72);
          goto LABEL_21;
        }

        if (v7 != 3)
        {
          goto LABEL_48;
        }

        *v40 = 3;
        *&v40[8] = 0;
        (*(*v33 + 88))(v33, v40);
        v9 = *(a1 + 112);
        if (v9 <= i)
        {
          v34 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          *&v36 = "operator[]";
          WORD4(v36) = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          *(&v36 + 10) = 468;
          HIWORD(v36) = 2048;
          v37 = i;
          *v38 = 2048;
          *&v38[2] = v9;
          _os_log_send_and_compose_impl(v18, &v34, &v45, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
LABEL_32:
          v34 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          *&v36 = "operator[]";
          WORD4(v36) = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          *(&v36 + 10) = 468;
          HIWORD(v36) = 2048;
          v37 = i;
          *v38 = 2048;
          *&v38[2] = v9;
          _os_log_send_and_compose_impl(v21, &v34, &v45, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
LABEL_36:
          *v40 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          *&v36 = "operator[]";
          WORD4(v36) = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          *(&v36 + 10) = 468;
          HIWORD(v36) = 2048;
          v37 = i;
          *v38 = 2048;
          *&v38[2] = v9;
          _os_log_send_and_compose_impl(v24, v40, &v45, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
LABEL_40:
          v34 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v25 = MEMORY[0x1E69E9C10];
          v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v40 = 136315906;
          *&v40[4] = "operator[]";
          *&v40[12] = 1024;
          if (v26)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          *&v40[14] = 468;
          v41 = 2048;
          v42 = i;
          v43 = 2048;
          v44 = v9;
          _os_log_send_and_compose_impl(v27, &v34, &v45, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v40, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
LABEL_44:
          v34 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v28 = MEMORY[0x1E69E9C10];
          v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v40 = 136315906;
          *&v40[4] = "operator[]";
          *&v40[12] = 1024;
          if (v29)
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          *&v40[14] = 468;
          v41 = 2048;
          v42 = i;
          v43 = 2048;
          v44 = v9;
          _os_log_send_and_compose_impl(v30, &v34, &v45, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v40, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
LABEL_48:
          re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Unsupported geometry type!", "!Unreachable code", "setScaleInternal", 238);
          _os_crash("assertion failure: (!Unreachable code) Unsupported geometry type!");
          __break(1u);
        }

        v10 = (*(a1 + 120) + v5);
        v11 = v10[1].f32[0] * a2[1].f32[0];
        *&v40[4] = vmul_f32(*v10, *a2);
        *&v40[12] = v11;
      }

      else
      {
        if (!v7)
        {
          v34 = 0;
          (*(*v33 + 96))(v33, &v34);
          v9 = *(a1 + 112);
          if (v9 <= i)
          {
            goto LABEL_36;
          }

          *(&v34 + 1) = *(*(a1 + 120) + v5) * a2->f32[0];
          v12 = *(*v33 + 72);
          goto LABEL_21;
        }

        if (v7 == 1)
        {
          goto LABEL_22;
        }

        if (v7 != 2)
        {
          goto LABEL_48;
        }

        *&v40[8] = 0;
        *v40 = 2;
        (*(*v33 + 104))(v33, v40);
        v9 = *(a1 + 112);
        if (v9 <= i)
        {
          goto LABEL_32;
        }

        *&v40[4] = vrev64_s32(vmul_n_f32(*(*(a1 + 120) + v5), COERCE_FLOAT(*a2)));
      }

      v12 = *(*v33 + 72);
LABEL_21:
      v12();
LABEL_22:
      if (v4[4] == 5 && (*(*v4 + 56))(v4) && (*(*v4 + 512))(v4))
      {
        (*(*v4 + 592))(v4);
      }

      v5 += 12;
    }
  }

  result = *a2->f32;
  *(a1 + 128) = *a2->f32;
  return result;
}

void re::PhysXCollisionObject::logState(re::PhysXCollisionObject *this)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = (*(*v2 + 48))(v2);
  if (!v3)
  {
    v58 = *re::collisionLogObjects(v3);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    v55 = "%p (%p) - Actor type: static";
    v56 = v58;
    v57 = 22;
    goto LABEL_46;
  }

  v4 = (*(*v2 + 48))(v2);
  v5 = v4;
  v6 = *re::collisionLogObjects(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 != 1)
  {
    if (!v7)
    {
      return;
    }

    v59 = (*(*v2 + 48))(v2);
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 1024;
    *&buf[14] = v59;
    v55 = "%p - Actor type: unknown! %d";
    v56 = v6;
    v57 = 18;
    goto LABEL_46;
  }

  if (v7)
  {
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "%p (%p) - Actor type: dynamic", buf, 0x16u);
  }

  v8 = *re::collisionLogObjects(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v2 + 432))(&v64, v2);
    *buf = 67109120;
    *&buf[4] = v64;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "RB flags: %#010x", buf, 8u);
  }

  v9 = (*(*v2 + 504))(v2, &v64);
  if (v9)
  {
    v10 = *re::collisionLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = *&v65;
      *&buf[12] = 2048;
      *&buf[14] = *(&v65 + 1);
      *&buf[22] = 2048;
      v68 = v66;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Kinematic target set to: %f, %f, %f", buf, 0x20u);
    }
  }

  v11 = (*(*v2 + 152))(buf, v2);
  v64 = *buf;
  v65 = *&buf[16];
  v66 = *&v68;
  v12 = *re::collisionLogObjects(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *buf = 134218496;
    *&buf[4] = *&v65;
    *&buf[12] = 2048;
    *&buf[14] = *(&v65 + 1);
    *&buf[22] = 2048;
    v68 = v66;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Pose: %f, %f, %f", buf, 0x20u);
  }

  v14 = *re::collisionLogObjects(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    v16 = *(this + 32);
    v17 = *(this + 33);
    v18 = *(this + 34);
    *buf = 134218496;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    *&buf[22] = 2048;
    v68 = v18;
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Scale: %f, %f, %f", buf, 0x20u);
  }

  v19 = *re::collisionLogObjects(v15);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    v21 = (*(*v2 + 512))(v2);
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Sleeping: %d", buf, 8u);
  }

  v22 = *re::collisionLogObjects(v20);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    v24 = (*(*v2 + 528))(v2);
    *buf = 134217984;
    *&buf[4] = v24;
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Sleep threshold: %f", buf, 0xCu);
  }

  v25 = *re::collisionLogObjects(v23);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    v27 = (*(*v2 + 584))(v2);
    *buf = 134217984;
    *&buf[4] = v27;
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Wake counter: %f", buf, 0xCu);
  }

  v28 = *re::collisionLogObjects(v26);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    (*(*v2 + 552))(&v62, v2);
    *buf = 67109120;
    *&buf[4] = v62;
    _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Lock Flags %#010x", buf, 8u);
  }

  v30 = *re::collisionLogObjects(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = (*(*v2 + 240))(v2);
    *buf = 134217984;
    *&buf[4] = v31;
    _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Mass: %f", buf, 0xCu);
  }

  v32 = (*(*v2 + 224))(buf, v2);
  v64 = *buf;
  v65 = *&buf[16];
  v66 = *&v68;
  v33 = *re::collisionLogObjects(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219520;
    *&buf[4] = *&v65;
    *&buf[12] = 2048;
    *&buf[14] = *(&v65 + 1);
    *&buf[22] = 2048;
    v68 = v66;
    v69 = 2048;
    v70 = *&v64;
    v71 = 2048;
    v72 = *(&v64 + 1);
    v73 = 2048;
    v74 = *(&v64 + 2);
    v75 = 2048;
    v76 = *(&v64 + 3);
    _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "CMass local pose: %f, %f, %f, %f, %f, %f, %f", buf, 0x48u);
  }

  v34 = (*(*v2 + 264))(&v62, v2);
  v35 = *re::collisionLogObjects(v34);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v36)
  {
    *buf = 134218496;
    *&buf[4] = *&v62;
    *&buf[12] = 2048;
    *&buf[14] = *(&v62 + 1);
    *&buf[22] = 2048;
    v68 = v63;
    _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "MassSpace inertia tensor: %f, %f, %f", buf, 0x20u);
  }

  v37 = *re::collisionLogObjects(v36);
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
  if (v38)
  {
    v39 = (*(*v2 + 288))(v2);
    *buf = 134217984;
    *&buf[4] = v39;
    _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "Linear damping: %f", buf, 0xCu);
  }

  v40 = *re::collisionLogObjects(v38);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = (*(*v2 + 304))(v2);
    *buf = 134217984;
    *&buf[4] = v41;
    _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Angular damping: %f", buf, 0xCu);
  }

  v42 = (*(*v2 + 312))(&v60, v2);
  v43 = *re::collisionLogObjects(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = *&v60;
    *&buf[12] = 2048;
    *&buf[14] = *(&v60 + 1);
    *&buf[22] = 2048;
    v68 = v61;
    _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "Linear velocity: %f, %f, %f", buf, 0x20u);
  }

  v44 = (*(*v2 + 328))(buf, v2);
  v60 = *buf;
  v61 = *&buf[8];
  v45 = *re::collisionLogObjects(v44);
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
  if (v46)
  {
    *buf = 134218496;
    *&buf[4] = *&v60;
    *&buf[12] = 2048;
    *&buf[14] = *(&v60 + 1);
    *&buf[22] = 2048;
    v68 = v61;
    _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "Angular velocity: %f, %f, %f", buf, 0x20u);
  }

  v47 = *re::collisionLogObjects(v46);
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
  if (v48)
  {
    v49 = (*(*v2 + 352))(v2);
    *buf = 134217984;
    *&buf[4] = v49;
    _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, "Max angular velocity: %f", buf, 0xCu);
  }

  v50 = *re::collisionLogObjects(v48);
  v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
  if (v51)
  {
    v52 = (*(*v2 + 368))(v2);
    *buf = 134217984;
    *&buf[4] = v52;
    _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "Max angular velocity: %f", buf, 0xCu);
  }

  v53 = *re::collisionLogObjects(v51);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = (*(*v2 + 448))(v2);
    *buf = 134217984;
    *&buf[4] = v54;
    v55 = "Max CCD advance coefficient: %f";
    v56 = v53;
    v57 = 12;
LABEL_46:
    _os_log_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEFAULT, v55, buf, v57);
  }
}

__n128 re::PhysXCollisionObject::internalLocalPose@<Q0>(re::GeometricObject *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (v4 == 7 || v4 == 1)
  {
    v7 = *(a1 + 7);
    v6 = *(a1 + 8);
    *a2 = v7;
    *(a2 + 16) = v6;
  }

  else
  {
    (*(**(a1 + 7) + 160))(v11);
    *&v7 = v11[2];
    DWORD2(v7) = v12;
    v8 = v11[0];
    v9 = v11[1];
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  result.n128_u64[0] = v7;
  result.n128_u32[2] = DWORD2(v7);
  return result;
}

uint64_t re::PhysXCollisionObject::isSleeping(re::PhysXCollisionObject *this)
{
  result = *(this + 3);
  if (result)
  {
    if (*(result + 8) == 5)
    {
      return (*(*result + 512))();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::PhysXCollisionObject::rayCastInternal(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, __n128 a5)
{
  v8 = 0;
  v64 = *MEMORY[0x1E69E9840];
  a5.n128_u64[0] = 2139095039;
  do
  {
    v9 = &v57[v8];
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 4) = -1;
    *(v9 + 10) = 0;
    *(v9 + 4) = 0;
    *(v9 + 5) = 0;
    *(v9 + 3) = 0;
    *(v9 + 6) = 2139095039;
    v8 += 64;
    *(v9 + 14) = 0;
  }

  while (v8 != 2048);
  v10 = *a3;
  if (v10 >= 3)
  {
    goto LABEL_18;
  }

  v11 = *(a1 + 24);
  result = (*(*v11 + 184))(v11, a5);
  if (result)
  {
    v13 = 0;
    v42 = (32 * v10) | 3;
    while (1)
    {
      v43 = 0;
      (*(*v11 + 192))(v11, &v43, 1, v13);
      v14 = v43;
      v15 = *(a2 + 32);
      (*(*v43 + 80))(&v59, v43);
      *v52 = &v59;
      (*(*v11 + 152))(v52, v11);
      (*(*v14 + 160))(&v48, v14);
      _S2 = v49 + v49;
      _S3 = v51 + v51;
      v18 = (v53 * v53) + -0.5;
      v19.i32[0] = *v52;
      _Q7.i64[0] = *&v52[4];
      __asm
      {
        FMLA            S16, S3, V7.S[1]
        FMLA            S18, S2, V7.S[1]
        FMLA            S20, S16, V7.S[1]
      }

      v28 = v48;
      v28.i32[3] = *&v52[8];
      v29 = vextq_s8(vextq_s8(v19, v19, 4uLL), _Q7, 0xCuLL);
      v29.f32[3] = -*v52;
      v30 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v48, 3), v48, 4uLL), v29), v48, v53);
      v29.f32[3] = -*&v52[4];
      _Q7.i64[1] = __PAIR64__(v48.u32[2], *v52);
      v31 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v30, v30, 4uLL), v30), vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL), v29), _Q7, v28);
      v44 = vzip2q_s32(vzip1q_s32(v31, vextq_s8(v31, v31, 0xCuLL)), v31);
      v45 = v54 + (((v53 * (vmuls_lane_f32(v50 + v50, vnegq_f32(v28), 3) + (*&v52[4] * (v51 + v51)))) + ((v49 + v49) * v18)) + (*v52 * _S16));
      v46 = v55 + (((v53 * _S18) + ((v50 + v50) * v18)) + (*&v52[4] * _S16));
      v47 = v56 + _S20;
      v32 = gRaycastMap[v59];
      *v52 = v42;
      v33 = (v32)(&v59, &v44, a2, a2 + 16, v52, 32, v57, v15);
      if (v33)
      {
        break;
      }

LABEL_15:
      v13 = (v13 + 1);
      result = (*(*v11 + 184))(v11);
      if (v13 >= result)
      {
        return result;
      }
    }

    v34 = v33;
    v35 = &v58;
    while (1)
    {
      v36 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(a4);
      *v36 = 0;
      *(v36 + 16) = 0u;
      *(v36 + 32) = 0u;
      *(v36 + 48) = 2139095039;
      *(v36 + 52) = 0xFFFFFFFF00000000;
      *(v36 + 64) = 0;
      v38 = *(a4 + 40);
      if (!v38)
      {
        break;
      }

      v39 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](a4, v38 - 1);
      *(v39 + 48) = *(v35 + 4) / *(a2 + 32);
      *&v40 = *(v35 - 1);
      DWORD2(v40) = *v35;
      *(v39 + 16) = v40;
      *&v40 = *(v35 + 4);
      DWORD2(v40) = *(v35 + 3);
      *(v39 + 32) = v40;
      *v39 = a1;
      *(v39 + 52) = v13;
      if ((*(*v43 + 64))(v43) == 5)
      {
        v60 = xmmword_1E304F3C0;
        v61 = 0;
        v59 = 5;
        v62 = 1065353216;
        v63 = 0;
        (*(*v43 + 128))(v43, &v59);
        if ((*(*v63 + 104))(v63))
        {
          v41 = ((*(*v63 + 104))(v63) + 4 * *(v35 - 4));
        }

        else
        {
          v41 = v35 - 2;
        }

        *(v39 + 56) = *v41;
        *(v39 + 64) = *(v35 + 20);
      }

      v35 += 8;
      if (!--v34)
      {
        goto LABEL_15;
      }
    }

    re::internal::assertLog(4, v37, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_18:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported collision query type!", "!Unreachable code", "toPhysX", 89);
    _os_crash("assertion failure: (!Unreachable code) Unsupported collision query type!");
    __break(1u);
  }

  return result;
}

uint64_t re::Event<re::GeometricObjectBase>::createSubscription<re::PhysXCollisionObject>(re::PhysXCollisionObject *,REEventHandlerResult (re::PhysXCollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

double re::PhysXSphereShape::aabb@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  v17 = *(a2 + 1);
  v14.i64[1] = *(&v17 + 1);
  v18 = *a2;
  v19 = *(a2 + 2);
  v14.i64[0] = 0;
  LODWORD(a8) = 1.0;
  physx::Gu::computeBounds(v20, a1 + 20, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a4, a5, a6, a7);
  result = *v20;
  *&v16 = *&v20[12];
  DWORD2(v16) = v21;
  *a3 = *v20;
  a3[1] = v16;
  return result;
}

double re::PhysXBoxShape::extent(re::PhysXBoxShape *this, float32x4_t a2)
{
  a2.i64[0] = *(this + 3);
  a2.i32[2] = *(this + 8);
  a2.i64[0] = vaddq_f32(a2, a2).u64[0];
  return *a2.i64;
}

double re::PhysXBoxShape::aabb@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  v17 = *(a2 + 1);
  v14.i64[1] = *(&v17 + 1);
  v18 = *a2;
  v19 = *(a2 + 2);
  v14.i64[0] = 0;
  LODWORD(a8) = 1.0;
  physx::Gu::computeBounds(v20, a1 + 20, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a4, a5, a6, a7);
  result = *v20;
  *&v16 = *&v20[12];
  DWORD2(v16) = v21;
  *a3 = *v20;
  a3[1] = v16;
  return result;
}

uint64_t re::PhysXSimulationEventCallback::onContact(uint64_t result, void *a2, uint64_t a3, unsigned int a4)
{
  v77 = *MEMORY[0x1E69E9840];
  if (*(result + 24) != 1)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 8);
  v9 = *(v8 + 40);
  v10 = v9 + 1;
  if (v9 == -1)
  {
    v11 = 0;
    do
    {
      v12 = re::BucketArray<re::PhysXManifold,256ul>::operator[](v8, v11);
      re::DynamicArray<unsigned long>::deinit(v12 + 16);
      ++v11;
    }

    while (v11 != *(v8 + 40));
    *(v8 + 40) = v10;
  }

  else
  {
    if (v10 <= *(v8 + 8) << 8)
    {
      *(v8 + 40) = v10;
    }

    else
    {
      re::BucketArray<re::PhysXManifold,256ul>::setBucketsCapacity(*(result + 8), (v9 + 256) >> 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v10;
      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v14 = re::BucketArray<re::PhysXManifold,256ul>::operator[](v8, v9);
      *(v14 + 48) = 0;
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 28) = 0u;
      ++v9;
    }

    while (v9 != *(v8 + 40));
  }

LABEL_11:
  ++*(v8 + 48);
  v15 = *(v7 + 8);
  v16 = *(v15 + 40);
  if (!v16)
  {
    goto LABEL_72;
  }

  result = re::BucketArray<re::PhysXManifold,256ul>::operator[](v15, v16 - 1);
  v17 = result;
  *result = *(*a2 + 16);
  *(result + 8) = *(a2[1] + 16);
  v18 = 0;
  if (a4)
  {
    v19 = a4;
    v20 = (a3 + 44);
    do
    {
      v21 = *v20;
      v20 += 64;
      v18 += v21;
      --v19;
    }

    while (v19);
  }

  v22 = v18;
  v23 = *(result + 32);
  if (v23 < v18)
  {
    if (*(result + 24) < v18)
    {
      result = re::DynamicArray<physx::PxContactPairPoint>::setCapacity((result + 16), v18);
      v23 = *(v17 + 32);
    }

    v24 = v22 - v23;
    if (v22 > v23)
    {
      v25 = (*(v17 + 48) + 48 * v23 + 44);
      do
      {
        *(v25 - 8) = 0;
        *(v25 - 4) = 0;
        *v25 = 0;
        v25 += 12;
        --v24;
      }

      while (v24);
    }

    goto LABEL_23;
  }

  if (v23 > v18)
  {
LABEL_23:
    *(v17 + 32) = v22;
    ++*(v17 + 40);
    v23 = v22;
  }

  if (a4 && v22)
  {
    v26 = 0;
    v27 = 0;
    v28 = *(v17 + 48);
    v29 = a4;
    while (1)
    {
      v30 = v27;
      if (v23 <= v27)
      {
        break;
      }

      v31 = a3 + (v26 << 6);
      v32 = *(v31 + 44);
      if (*(v31 + 44))
      {
        v33 = *(v31 + 16);
        if (v33)
        {
          v34 = v33[5].i8[3];
          v35 = (v34 & 2) != 0 ? 64 : 16;
          result = v34 >= 0 ? v35 : 32;
          v36 = (v34 & 1) == 0;
        }

        else
        {
          result = 0;
          v36 = 1;
        }

        v37 = *(v31 + 45);
        if (*(v31 + 45))
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = *(v31 + 24);
          v43 = *(v31 + 32);
          v44 = (v43 + 4 * *(v31 + 44));
          v45 = *(v31 + 48);
          do
          {
            if (v40)
            {
              v46 = v33[5].u8[1];
              v47 = v46 >= v41;
              v49 = v46 - v41;
              v48 = v49 != 0 && v47;
              LODWORD(v50) = v49 * result;
              if (v48)
              {
                v50 = v50;
              }

              else
              {
                v50 = 0;
              }

              v42 = (v42 + v50);
              v33 += 6;
            }

            ++v40;
            v41 = v33[5].u8[1];
            v51 = v41;
            while (v51)
            {
              v52 = (v39 & 1) == 0;
              if (v39)
              {
                v53 = result;
              }

              else
              {
                v53 = 0;
              }

              v42 = (v42 + v53);
              if (v52)
              {
                v54 = 0;
              }

              else
              {
                v54 = 4;
              }

              v44 = (v44 + v54);
              v55 = v28 + 48 * v30 + 48 * v38;
              *v55 = *v42;
              v56 = v33[2];
              *(v55 + 16) = v56;
              v57 = v33[3].f32[0];
              *(v55 + 24) = v57;
              if ((v45 & 0x20) != 0)
              {
                if (v36)
                {
                  v59 = -1;
                }

                else
                {
                  v59 = *v44;
                }

                *(v55 + 28) = v59;
                v58 = -1;
              }

              else
              {
                v58 = -1;
                *(v55 + 28) = -1;
                if (!v36)
                {
                  v58 = *v44;
                }
              }

              *(v55 + 44) = v58;
              if ((v45 & 0x10) != 0)
              {
                v62 = *(v43 + 4 * v38);
                v60 = vmul_n_f32(v56, v62);
                v61 = v57 * v62;
              }

              else
              {
                v60 = 0;
                v61 = 0.0;
              }

              *(v55 + 32) = v60;
              *(v55 + 40) = v61;
              ++v38;
              --v51;
              v39 = 1;
              if (v32 == v38)
              {
                goto LABEL_66;
              }
            }
          }

          while (v40 != v37);
        }
      }

LABEL_66:
      v27 = v30 + v32;
      if (++v26 == v29)
      {
        return result;
      }
    }

    v67 = 0;
    memset(v76, 0, sizeof(v76));
    v63 = MEMORY[0x1E69E9C10];
    v68 = 136315906;
    v69 = "operator[]";
    v70 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v71 = 789;
    v72 = 2048;
    v73 = v30;
    v74 = 2048;
    v75 = v23;
    _os_log_send_and_compose_impl(v64, &v67, v76, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
LABEL_72:
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

void re::PhysXSimulationEventCallback::onTrigger(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(result + 24) == 1)
  {
    v41 = v3;
    v42 = v4;
    v8 = *(result + 16);
    v9 = *(v8 + 28) + a3;
    if (*(v8 + 24) < v9)
    {
      re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::setCapacity(v8, v9);
    }

    if (a3)
    {
      v10 = 0;
      v11 = a3;
      do
      {
        v12 = a2 + 40 * v10;
        v13 = *(*(v12 + 24) + 16);
        v14 = *(*(v12 + 8) + 16);
        *&v39 = v13;
        *(&v39 + 1) = v14;
        LOBYTE(v40) = 0;
        if ((*(v12 + 32) & 0x10) != 0)
        {
          v25 = *(result + 16);
          if ((*(v12 + 36) & 3) != 0)
          {
            re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::remove(v25, &v39);
          }

          else
          {
            v32 = *(v25 + 24);
            if (v32)
            {
              v33 = *(*(v25 + 8) + 4 * ((((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + v14) ^ v13) % v32));
              if (v33 != 0x7FFFFFFF)
              {
                v34 = *(v25 + 16);
                while (1)
                {
                  v35 = v34 + 40 * v33;
                  v38 = *(v35 + 16);
                  v36 = v35 + 16;
                  v37 = v38;
                  if (v38 == v13 && *(v36 + 8) == v14)
                  {
                    break;
                  }

                  if (v37 == v14 && *(v36 + 8) == v13)
                  {
                    break;
                  }

                  v33 = *(v34 + 40 * v33 + 8) & 0x7FFFFFFF;
                  if (v33 == 0x7FFFFFFF)
                  {
                    goto LABEL_25;
                  }
                }

                *(v36 + 16) = 2;
              }
            }
          }

          goto LABEL_25;
        }

        v15 = *(result + 16);
        v16 = ((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + v14) ^ v13;
        v17 = *(v15 + 24);
        if (v17)
        {
          v18 = v16 % v17;
          v19 = *(*(v15 + 8) + 4 * (v16 % v17));
          if (v19 != 0x7FFFFFFF)
          {
            v20 = *(v15 + 16);
            do
            {
              v21 = v20 + 40 * v19;
              v24 = *(v21 + 16);
              v22 = v21 + 16;
              v23 = v24;
              if (v24 == v13 && *(v22 + 8) == v14)
              {
                goto LABEL_25;
              }

              if (v23 == v14 && *(v22 + 8) == v13)
              {
                goto LABEL_25;
              }

              v19 = *(v20 + 40 * v19 + 8) & 0x7FFFFFFF;
            }

            while (v19 != 0x7FFFFFFF);
          }
        }

        else
        {
          v18 = 0;
        }

        v26 = *(v15 + 36);
        if (v26 == 0x7FFFFFFF)
        {
          v26 = *(v15 + 32);
          v27 = v26;
          if (v26 == v17)
          {
            re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::setCapacity(*(result + 16), 2 * *(v15 + 28));
            v18 = v16 % *(v15 + 24);
            v27 = *(v15 + 32);
          }

          *(v15 + 32) = v27 + 1;
          v28 = *(v15 + 16);
          v29 = *(v28 + 40 * v26 + 8);
        }

        else
        {
          v28 = *(v15 + 16);
          v29 = *(v28 + 40 * v26 + 8);
          *(v15 + 36) = v29 & 0x7FFFFFFF;
        }

        *(v28 + 40 * v26 + 8) = v29 | 0x80000000;
        *(*(v15 + 16) + 40 * v26 + 8) = *(*(v15 + 16) + 40 * v26 + 8) & 0x80000000 | *(*(v15 + 8) + 4 * v18);
        *(*(v15 + 16) + 40 * v26) = v16;
        v30 = *(v15 + 16) + 40 * v26;
        v31 = v39;
        *(v30 + 32) = v40;
        *(v30 + 16) = v31;
        *(*(v15 + 8) + 4 * v18) = v26;
        ++*(v15 + 28);
        ++*(v15 + 40);
LABEL_25:
        ++v10;
      }

      while (v10 != v11);
    }
  }
}

void re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::setCapacity(__int128 *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 6) != a2 && *(a1 + 7) <= a2)
    {
      memset(v25, 0, 36);
      *&v25[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(v25, v4, a2);
      v5 = *a1;
      *a1 = *v25;
      v6 = *(a1 + 2);
      v7 = *&v25[8];
      *v25 = v5;
      *&v25[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v25[24];
      *&v25[24] = *(a1 + 24);
      v8 = *&v25[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = DWORD1(v9);
        v13 = v7;
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 2) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 6);
            v17 = v15 % v16;
            v18 = *(a1 + 9);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 8);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::setCapacity(a1, 2 * v12);
                v17 = v15 % *(a1 + 6);
                v19 = *(a1 + 8);
                v13 = *(a1 + 1);
              }

              *(a1 + 8) = v19 + 1;
              v20 = *(a1 + 2);
              v21 = *(v20 + 40 * v18 + 8);
            }

            else
            {
              v20 = *(a1 + 2);
              v21 = *(v20 + 40 * v18 + 8);
              *(a1 + 9) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 40 * v18 + 8) = v21 | 0x80000000;
            *(*(a1 + 2) + 40 * v18 + 8) = *(*(a1 + 2) + 40 * v18 + 8) & 0x80000000 | *(v13 + 4 * v17);
            *(*(a1 + 2) + 40 * v18) = v15;
            v22 = *(a1 + 2) + 40 * v18;
            v23 = *v14;
            *(v22 + 32) = *(v14 + 2);
            *(v22 + 16) = v23;
            v13 = *(a1 + 1);
            *(v13 + 4 * v17) = v18;
            v12 = *(a1 + 7) + 1;
            *(a1 + 7) = v12;
          }

          ++v11;
          v14 = (v14 + 40);
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v25);
    }
  }

  else
  {
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 3;
    }
  }
}

void *re::DynamicArray<physx::PxContactPairPoint>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v4)
      {
        result = re::DynamicArray<physx::PxContactPairPoint>::setCapacity(v4, a2);
        ++*(v4 + 6);
        return result;
      }

      if (a2)
      {
        result = (*(*result + 32))(result, 48 * a2, 4);
        if (!result)
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 48 * a2, *(*v4 + 8));
          result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v12, v13);
          __break(1u);
          return result;
        }

        v6 = result;
        if (!v4[1])
        {
          goto LABEL_14;
        }
      }

      else
      {
        v6 = 0;
        if (!v2)
        {
LABEL_14:
          v4[4] = v6;
          v4[1] = a2;
          return result;
        }
      }

      v7 = v4[4];
      v8 = v4[2];
      if (v8)
      {
        v9 = v7 + 48 * v8;
        v10 = v6;
        v11 = v4[4];
        do
        {
          *v10 = *v11;
          v10[2] = *(v11 + 16);
          *(v10 + 6) = *(v11 + 24);
          *(v10 + 7) = *(v11 + 28);
          v10[4] = *(v11 + 32);
          *(v10 + 10) = *(v11 + 40);
          *(v10 + 11) = *(v11 + 44);
          v11 += 48;
          v10 += 6;
        }

        while (v11 != v9);
      }

      result = (*(**v4 + 40))(*v4, v7);
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t re::CollisionFactory::createGeometricObject(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v9 = (*(*a2 + 32))(a2, 240, 16);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0x3F80000000000000;
  *v9 = &unk_1F5CCDD10;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0x3F80000000000000;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0x3F80000000000000;
  *(v9 + 144) = 0;
  *(v9 + 168) = 0;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0;
  *(v9 + 208) = 0;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  v10 = a4[1];
  *(v9 + 16) = *a4;
  *(v9 + 32) = v10;
  *(v9 + 64) = a3;
  v11 = a4[1];
  *(v9 + 112) = *a4;
  *(v9 + 128) = v11;
  *(v9 + 144) = a2;
  re::DynamicArray<re::EvaluationRegister>::setCapacity((v9 + 144), 0);
  ++*(v9 + 168);
  *(v9 + 232) = a5;
  return v9;
}

uint64_t re::CollisionFactory::deepCopyShape(re::CollisionFactory *this, re::Allocator *a2, const re::CollisionShape *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v9 = (*(*a3 + 24))(a3);
  v11 = 0;
  if (v9 > 5)
  {
    if (v9 <= 8)
    {
      if (v9 != 6)
      {
        if (v9 != 7)
        {
          v12 = (*(*a3 + 64))(a3);
          (*(*a3 + 72))(a3);
          v13 = *(*this + 128);
          v14.n128_u32[0] = v17.n128_u32[0];
          v15 = this;
          v16 = a2;
          v17.n128_f32[0] = v12;

          return v13(v15, v16, v17, v14);
        }

        v26 = *(a3 + 4);
        v27 = *(a3 + 5);
        v53 = 0;
        v54 = 0;
        v55 = 0;
        re::FixedArray<unsigned long>::init<>(&v53, a2, v26);
        v50 = 0;
        v51 = 0;
        v52 = 0;
        re::FixedArray<re::Pose<float>>::init<>(&v50, a2, v26);
        if (v26)
        {
          v28 = 0;
          v4 = 0;
          v5 = &v65;
          v29 = (v27 + 112);
          while (1)
          {
            v30 = re::CollisionFactory::deepCopyShape(this, a2, *(v29 - 6));
            v3 = v54;
            if (v54 <= v4)
            {
              break;
            }

            *(v55 + 8 * v4) = v30;
            v3 = v51;
            if (v51 <= v4)
            {
              goto LABEL_60;
            }

            v31 = v52;
            v32 = (v52 + v28);
            v33 = *v29;
            v34 = *(v29 + 1);
            v29 += 30;
            *v32 = v33;
            v32[1] = v34;
            ++v4;
            v28 += 32;
            if (v26 == v4)
            {
              goto LABEL_48;
            }
          }

LABEL_56:
          v56 = 0;
          v5[3] = 0u;
          v5[4] = 0u;
          v5[2] = 0u;
          v65 = 0u;
          v66 = 0u;
          v42 = MEMORY[0x1E69E9C10];
          v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v57 = 136315906;
          v58 = "operator[]";
          v59 = 1024;
          if (v43)
          {
            v44 = 3;
          }

          else
          {
            v44 = 2;
          }

          v60 = 468;
          v61 = 2048;
          v62 = v4;
          v63 = 2048;
          v64 = v3;
          _os_log_send_and_compose_impl(v44, &v56, &v65, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v48, v49);
          _os_crash_msg();
          __break(1u);
LABEL_60:
          v56 = 0;
          v5[3] = 0u;
          v5[4] = 0u;
          v5[2] = 0u;
          v65 = 0u;
          v66 = 0u;
          v45 = MEMORY[0x1E69E9C10];
          v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v57 = 136315906;
          v58 = "operator[]";
          v59 = 1024;
          if (v46)
          {
            v47 = 3;
          }

          else
          {
            v47 = 2;
          }

          v60 = 468;
          v61 = 2048;
          v62 = v4;
          v63 = 2048;
          v64 = v3;
          _os_log_send_and_compose_impl(v47, &v56, &v65, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v48, v49);
          _os_crash_msg();
          __break(1u);
        }

        v31 = v52;
LABEL_48:
        v40 = v55;
        v41 = (*(*a3 + 64))(a3);
        v11 = (*(*this + 160))(this, a2, v40, v31, v26, v41, a2);
        if (v50 && v51)
        {
          (*(*v50 + 40))();
        }

        if (v53 && v54)
        {
          (*(*v53 + 40))();
        }

        return v11;
      }

      v37 = (*(*a3 + 64))(a3);
      (*(*a3 + 72))(a3);
      v18 = *(*this + 104);
      v19 = this;
      v20 = a2;
      v21 = v37;

      return v18(v19, v20, v21);
    }

    if (v9 == 9)
    {
      v38 = (*(*a3 + 64))(a3);
      (*(*a3 + 72))(a3);
      v13 = *(*this + 120);
      v14.n128_u32[0] = v17.n128_u32[0];
      v15 = this;
      v16 = a2;
      v17.n128_f32[0] = v38;

      return v13(v15, v16, v17, v14);
    }

    if (v9 != 11)
    {
      if (v9 != 12)
      {
        return v11;
      }

      v21 = *(a3 + 3);
      v18 = *(*this + 144);
      v19 = this;
      v20 = a2;

      return v18(v19, v20, v21);
    }

    *&v65 = (*(*a3 + 64))(a3);
    return (*(*this + 136))(this, a2, &v65);
  }

  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        v36 = (*(*a3 + 64))(a3);
        (*(*a3 + 72))(a3);
        v13 = *(*this + 40);
        v14.n128_u32[0] = v17.n128_u32[0];
        v15 = this;
        v16 = a2;
        v17.n128_f32[0] = v36;

        return v13(v15, v16, v17, v14);
      }

      v18 = *(*this + 80);
      v19 = this;
      v20 = a2;
      v21 = a3;

      return v18(v19, v20, v21);
    }

    *&v65 = (*(*a3 + 64))(a3);
    *(&v65 + 1) = v39;
    return (*(*this + 32))(this, a2, &v65);
  }

  switch(v9)
  {
    case 1:
      v22 = *(*this + 96);
      v23 = this;
      v24 = a2;

      return v22(v23, v24);
    case 2:
      (*(*a3 + 64))(a3);
      v22 = *(*this + 112);
      v23 = this;
      v24 = a2;

      return v22(v23, v24);
    case 0:
      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "deepCopyShape", 45);
      _os_crash("assertion failure: (!Unreachable code) ");
      __break(1u);
      goto LABEL_56;
  }

  return v11;
}

double re::PhysXTriangleMeshShape::PhysXTriangleMeshShape(re::PhysXTriangleMeshShape *this, const re::IndexedTriangleMesh *a2, float a3)
{
  *(this + 4) = a3;
  *(this + 3) = a2;
  *this = &unk_1F5CCEE48;
  *(this + 1) = this + 32;
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  *(this + 8) = 5;
  result = 0.00781250185;
  *(this + 36) = xmmword_1E304F3C0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 60) = 1065353216;
  *(this + 9) = v3;
  return result;
}

void re::PhysXTriangleMeshShape::aabb(uint64_t result@<X0>, uint64_t *a2@<X1>, float32x4_t *a3@<X8>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  if (*(result + 72))
  {
    v17 = *(a2 + 1);
    v14.i64[1] = *(&v17 + 1);
    v18 = *a2;
    v19 = *(a2 + 2);
    v14.i64[0] = 0;
    LODWORD(a8) = 1.0;
    physx::Gu::computeBounds(v20, result + 32, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a4, a5, a6, a7);
    v15 = *v20;
    v16.i64[0] = *&v20[12];
    v16.i32[2] = v21;
  }

  else
  {
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v15 = vnegq_f32(v16);
  }

  *a3 = v15;
  a3[1] = v16;
}

uint64_t re::PhysXTriangleMeshShape::indexFormat(re::PhysXTriangleMeshShape *this)
{
  (*(**(this + 9) + 96))(&var1);
  if ((var1 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t re::CollisionObject::CollisionObject(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CCEEE0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a6;
  *(a1 + 32) = xmmword_1E3066800;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  *(a1 + 96) = a5;
  if ((a2 & 1) == 0)
  {
    v7 = (*(*a4 + 48))(a4);
    *&v9 = a1;
    *(&v9 + 1) = re::CollisionObject::poseDidChange;
    v10 = 0;
    v11 = re::Event<re::GeometricObjectBase>::createSubscription<re::CollisionObject>(re::CollisionObject *,REEventHandlerResult (re::CollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v7, &v9);
  }

  return a1;
}

void re::CollisionObject::~CollisionObject(re::CollisionObject *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CCEEE0;
  if ((*(this + 8) & 1) == 0)
  {
    v2 = *(this + 2);
    v3 = (*(*v2 + 48))(v2);
    *&v6 = this;
    *(&v6 + 1) = re::CollisionObject::poseDidChange;
    v7 = 0;
    v8 = re::Event<re::GeometricObjectBase>::createSubscription<re::CollisionObject>(re::CollisionObject *,REEventHandlerResult (re::CollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3, &v6);
    v4 = *(this + 12);
    (**v2)(v2);
    (*(*v4 + 40))(v4, v2);
  }

  if (*(this + 64) == 1)
  {
    v5 = *(this + 9);
    if (v5)
    {

      *(this + 9) = 0;
    }
  }
}

uint64_t re::CollisionObject::setScale(uint64_t a1, float32x4_t *a2)
{
  v3 = *a2;
  v3.i32[3] = 0;
  v4 = vmaxnmq_f32(v3, xmmword_1E3066810);
  v13 = v4;
  if ((*(a1 + 8) & 2) != 0)
  {
    v6 = v4.f32[1];
    v5 = v4.f32[2];
  }

  else
  {
    v13 = vdupq_lane_s32(*v4.f32, 0);
    v5 = v4.f32[0];
    v6 = v4.f32[0];
  }

  v10 = v4.f32[0];
  if (v4.f32[0] <= 0.00001 || v6 <= 0.00001 || v5 <= 0.00001)
  {
    v7 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Collider scale, 0 or negative is not supported. Setting scale to epsilon value.", buf, 2u);
    }
  }

  result = (*(*a1 + 16))(a1);
  *buf = result;
  v12 = v9;
  if (v10 != *&result && vabds_f32(*&result, v10) >= (((fabsf(v10) + fabsf(*&result)) + 1.0) * 0.0001) || v6 != *(&result + 1) && vabds_f32(*(&result + 1), v6) >= (((fabsf(v6) + fabsf(*(&result + 1))) + 1.0) * 0.0001) || v5 != *&v9 && vabds_f32(*&v9, v5) >= (((fabsf(v5) + fabsf(*&v9)) + 1.0) * 0.0001))
  {
    (*(*a1 + 72))(a1, &v13);
    return (*(**(a1 + 16) + 32))(*(a1 + 16), buf, &v13);
  }

  return result;
}

unint64_t re::CollisionObject::rayCast(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = re::BucketArray<re::CollisionCastHit,10ul>::clear(a4);
  v9 = *(a3 + 4);
  v10 = a1[4];
  v11 = v10 & HIDWORD(v9);
  v12 = v9 & HIDWORD(v10);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(*a1 + 88);

    return v14(a1, a2, a3, a4);
  }

  return result;
}

id re::CollisionObject::weakPointer@<X0>(re::CollisionObject *this@<X0>, id *a2@<X8>)
{
  v4 = this + 64;
  if ((*(this + 64) & 1) == 0)
  {
    v8 = this;
    re::make::shared::object<re::CollisionObject::Shareable,re::CollisionObject*>(&v8, &v9);
    v10[0] = 1;
    v11 = v9;
    v9 = 0;
    re::Optional<re::SharedPtr<re::CollisionObject::Shareable>>::operator=(v4, v10);
    if (v10[0] == 1 && v11)
    {

      v11 = 0;
    }

    if (v9)
    {
    }
  }

  v5 = *(this + 9);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  return objc_initWeak(a2, v6);
}

uint64_t re::Optional<re::SharedPtr<re::CollisionObject::Shareable>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v3;
    }

    else
    {
      v4 = *(a1 + 8);
      if (v4)
      {

        *(a1 + 8) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  return a1;
}

uint64_t re::Event<re::GeometricObjectBase>::createSubscription<re::CollisionObject>(re::CollisionObject *,REEventHandlerResult (re::CollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

void re::make::shared::object<re::CollisionObject::Shareable,re::CollisionObject*>(re *a1@<X0>, _anonymous_namespace_ **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 32, 8);
  v6 = *a1;
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 3) = v6;
  *v5 = &unk_1F5CCEF60;
  *a2 = v5;
}

void re::CollisionObject::Shareable::~Shareable(re::CollisionObject::Shareable *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

float re::SphereShape::massProperties(uint64_t a1, float *a2, void *a3, uint64_t a4)
{
  v7 = (*(*a1 + 64))(a1);
  v8 = v7 * v7;
  v9 = v7 * ((v7 * v7) * 4.1888);
  *a2 = v9;
  result = v8 * (v9 * 0.4);
  *a4 = result;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 20) = result;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = result;
  *(a4 + 44) = 0;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

void re::basicLocalWallTime(re *this@<X0>, re::DynamicString *a2@<X8>)
{
  v11 = [MEMORY[0x1E695DF00] date];
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v5 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v4 setTimeZone:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  [v4 setDateFormat:v6];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v4 stringFromDate:v11];
  v9 = [v7 stringWithFormat:@"%@", v8];

  v10 = [v9 UTF8String];
}

void re::WrappedError::make(uint64_t *__return_ptr a1@<X8>, re::WrappedError *this@<X0>, const __CFString *a3@<X1>, uint64_t a4@<X2>)
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:this code:a3 userInfo:a4];
  *a1 = v5;
}

{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A578];
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:4];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:this code:a3 userInfo:v8];
  *a1 = v9;
}

void re::WrappedError::make(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X3>, void *a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E696A578];
  v9 = [MEMORY[0x1E696AEC0] stringWithCString:a3 encoding:4];
  v14[1] = *MEMORY[0x1E696AA08];
  v15 = v9;
  v16 = *a4;
  v10 = MEMORY[0x1E695DF20];
  v11 = v16;
  v12 = [v10 dictionaryWithObjects:&v15 forKeys:v14 count:2];

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:a1 code:a2 userInfo:v12];
  *a5 = v13;
}

uint64_t re::WrappedError::localizedDescription(id *this)
{
  v1 = [*this localizedDescription];
  v2 = [v1 UTF8String];

  return v2;
}

CFErrorDomain re::WrappedError::domain(id *this)
{
  v1 = *this;

  return CFErrorGetDomain(v1);
}

void re::formattedErrorMessage<re::DetailedError>(uint64_t a1@<X0>, re::DynamicString *a2@<X8>)
{
  std::error_code::message(&v7, a1);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = a1 + 25;
  }

  re::DynamicString::format(a2, "%s. %s", v4, v5, v6);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void re::runInLocalAutoreleasePool(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3);

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    re::StackScratchAllocator::FreePersistentBlocks(v4);
  }
}

void re::StackScratchAllocator::FreePersistentBlocks(re::StackScratchAllocator *this)
{
  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  if (atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount))
  {
    for (i = 0; i < v7; ++i)
    {
      v4 = re::StackScratchAllocator::s_rootsWithPersistentBlocks[i];
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = re::globalAllocators(v1);
        v1 = (*(*v6[2] + 40))(v6[2], v5);
        v4 = re::StackScratchAllocator::s_rootsWithPersistentBlocks[i];
      }

      *(v4 + 8) = 0;
      v7 = atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);
    }
  }

  atomic_store(0, &re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);

  std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
}

re::StackScratchAllocator *re::StackScratchAllocator::StackScratchAllocator(re::StackScratchAllocator *this)
{
  *(this + 16) = 0;
  *this = &unk_1F5CCEFC0;
  *(this + 1) = "Thread-local Scratch Allocator";
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 108) = 0x7FFFFFFFLL;
  {
    v7 = re::StackScratchAllocator::StackScratchAllocator(void)::root(&re::StackScratchAllocator::StackScratchAllocator(void)::root);
    _tlv_atexit(re::StackScratchAllocator::Root::~Root, v7);
  }

  v3 = re::StackScratchAllocator::StackScratchAllocator(void)::root(&re::StackScratchAllocator::StackScratchAllocator(void)::root);
  v4 = *v3;
  if (*v3)
  {
    *(this + 6) = v4;
    *(this + 24) = *(v4 + 24);
    v5 = v3[1];
  }

  else
  {
    v5 = v3[1];
    if (!v5)
    {
      goto LABEL_6;
    }

    v8 = v5 + *(v5 + 8);
    *(this + 3) = v5 + 16;
    *(this + 4) = v8;
  }

  *(this + 5) = v5;
LABEL_6:
  *v3 = this;
  *(this + 7) = v3;
  return this;
}

void re::StackScratchAllocator::Root::~Root(re::StackScratchAllocator::Root *this)
{
  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = re::globalAllocators(v2);
    (*(*v4[2] + 40))(v4[2], v3);
    v6 = &re::StackScratchAllocator::s_rootsWithPersistentBlocksCount;
    if (atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount))
    {
      v8 = 0;
      v9 = re::StackScratchAllocator::s_rootsWithPersistentBlocks;
      while (re::StackScratchAllocator::s_rootsWithPersistentBlocks[v8] != this)
      {
        ++v8;
        v10 = atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);
        if (v8 >= v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Can't find allocated block", "!Unreachable code", "~Root", 193);
      _os_crash("assertion failure: (!Unreachable code) Can't find allocated block");
      __break(1u);
    }

    atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = atomic_load(v6);
    v12 = v9[v8];
    v9[v8] = v9[v11];
    v9[v11] = v12;
  }

  std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
}

void re::StackScratchAllocator::~StackScratchAllocator(re::StackScratchAllocator *this)
{
  v1 = this;
  *this = &unk_1F5CCEFC0;
  v2 = *(this + 7);
  v3 = v2 + 1;
  v4 = v2[1];
  for (i = *(this + 5); v4 != i && *v4; i = *(v1 + 5))
  {
    *v3 = *v4;
    v6 = re::globalAllocators(this);
    this = (*(*v6[2] + 40))(v6[2], v4);
    v2 = *(v1 + 7);
    v3 = v2 + 1;
    v4 = v2[1];
  }

  *v2 = *(v1 + 6);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v1 + 9);

  re::Allocator::~Allocator(v1);
}

{
  re::StackScratchAllocator::~StackScratchAllocator(this);

  JUMPOUT(0x1E6906520);
}

re::StackScratchAllocator **re::StackScratchAllocator::alloc(re::StackScratchAllocator ***this, uint64_t a2, uint64_t a3)
{
  if (*this[7] != this)
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Attempting to allocate from a StackScratchAlloc object that is not top of stack", "m_root->m_top == this", "alloc", 93);
    _os_crash("assertion failure: (m_root->m_top == this) Attempting to allocate from a StackScratchAlloc object that is not top of stack");
    __break(1u);
LABEL_7:
    re::StackScratchAllocator::growAndAlign(v3, v4, a3);
    result = v3[3];
    goto LABEL_5;
  }

  v4 = a2;
  v3 = this;
  if (a3 <= 1)
  {
    a3 = 1;
  }

  v5 = this[4];
  result = ((this[3] + a3 - 1) & -a3);
  v3[3] = result;
  if ((result + a2) > v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v3[3] = (result + v4);
  return result;
}

void re::StackScratchAllocator::growAndAlign(re::StackScratchAllocator *this, uint64_t a2, uint64_t a3)
{
  if ((a3 + a2) <= 0x2000)
  {
    v5 = 0x4000;
  }

  else
  {
    v5 = a3 + a2 + 0x4000;
  }

  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], v5, 0);
  v8 = *(this + 7);
  *v7 = *(v8 + 8);
  v7[1] = v5;
  if (*(this + 3))
  {
    goto LABEL_7;
  }

  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  add = atomic_fetch_add(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount, 1uLL);
  if (add < 0x100)
  {
    re::StackScratchAllocator::s_rootsWithPersistentBlocks[add] = *(this + 7);
    std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
    v8 = *(this + 7);
LABEL_7:
    *(v8 + 8) = v7;
    *(this + 3) = (v7 + a3 + 15) & -a3;
    *(this + 4) = v7 + v5;
    return;
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < MAX_THREADS", "growAndAlign", 161);
  _os_crash("assertion failure: (index < MAX_THREADS) ");
  __break(1u);
}

uint64_t re::StackScratchAllocator::free(uint64_t this, uint64_t a2)
{
  if (**(this + 56) != this)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to free from a StackScratchAlloc object that is not top of stack", "m_root->m_top == this", "free", 124, v2, v3);
    this = _os_crash("assertion failure: (m_root->m_top == this) Attempting to free from a StackScratchAlloc object that is not top of stack");
    __break(1u);
  }

  return this;
}

void re::Data::makeDataWithBytes(uint64_t *__return_ptr a1@<X8>, re::Data *this@<X0>, const void *a3@<X1>)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:this length:a3];
  *a1 = v4;
}

void re::Data::makeDataWithBytesNoCopy(uint64_t *__return_ptr a1@<X8>, re::Data *this@<X0>, const void *a3@<X1>)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:this length:a3 freeWhenDone:0];
  *a1 = v4;
}

uint64_t *re::globalAllocators(re *this)
{
  {
    if (v2)
    {
      re::globalAllocators(void)::s_instance = &unk_1F5CCF060;
      byte_1EE1C6ED0 = 0;
      *algn_1EE1C6EE0 = 0u;
      *&algn_1EE1C6EE0[16] = 0u;
      re::GlobalAllocators::init(&re::globalAllocators(void)::s_instance);
    }
  }

  return &re::globalAllocators(void)::s_instance;
}

void anonymous namespace::internalSystemAllocator(_anonymous_namespace_ *this)
{
  {
    byte_1EE1C7940 = 0;
    *algn_1EE1C7938 = "System allocator";
  }
}

uint64_t *re::initGlobalAllocators(re *this)
{
  result = re::globalAllocators(this);
  if ((byte_1EE1C6ED0 & 1) == 0)
  {
    re::globalAllocators(result);

    return re::GlobalAllocators::init(&re::globalAllocators(void)::s_instance);
  }

  return result;
}

_anonymous_namespace_ *re::GlobalAllocators::init(_anonymous_namespace_ *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v1 = this;
    re::globalMemoryTracker(this);
    if ((re::globalMemoryTracker(void)::s_instance & 1) == 0)
    {
      qword_1EE1C6BE8 = *(v1 + 2);
      re::DynamicArray<float *>::setCapacity(&qword_1EE1C6BE8, 0x400uLL);
      ++dword_1EE1C6C00;
      re::globalMemoryTracker(void)::s_instance = 1;
    }

    re::MemoryTracker::track(&re::globalMemoryTracker(void)::s_instance, *(v1 + 2));
    v2 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v3 = re::Allocator::Allocator(v2, "SIMD-aligned allocator", 1);
    *v3 = &unk_1F5CCF458;
    *(v3 + 3) = 16;
    *(v1 + 3) = v3;
    v4 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v5 = re::Allocator::Allocator(v4, "Cache-aligned allocator", 1);
    *v5 = &unk_1F5CCF458;
    *(v5 + 3) = 128;
    *(v1 + 4) = v5;
    v6 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v7 = re::Allocator::Allocator(v6, "TLB-aligned allocator", 1);
    *v7 = &unk_1F5CCF458;
    *(v7 + 3) = 0x4000;
    *(v1 + 5) = v7;
    v8 = (*(**(v1 + 2) + 32))(*(v1 + 2), 5304, 8);
    *v8 = 0;
    *(v8 + 88) = 0;
    *(v8 + 96) = 0;
    *(v8 + 104) = 0;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 68) = 0u;
    *(v8 + 108) = 0x1FFFFFFFFLL;
    *(v8 + 120) = 0;
    *(v8 + 136) = 0;
    *(v8 + 144) = 0;
    *(v8 + 128) = 0;
    *(v8 + 152) = 0;
    bzero((v8 + 160), 0x1418uLL);
    *(v1 + 6) = v8;
    this = re::PerFrameAllocatorManager::init(v8);
    *(v1 + 8) = 1;
  }

  return this;
}

void re::deinitGlobalAllocators(re *this)
{
  v1 = re::globalAllocators(this);
  if (byte_1EE1C6ED0 == 1)
  {
    re::globalAllocators(v1);

    re::GlobalAllocators::deinit(&re::globalAllocators(void)::s_instance);
  }
}

void re::GlobalAllocators::deinit(re::PerFrameAllocatorManager **this)
{
  if (*(this + 8) == 1)
  {
    re::StackScratchAllocator::FreePersistentBlocks(this);
    re::globalMemoryTracker(v2);
    re::PerFrameAllocatorManager::deinit(this[6]);
    v3 = this[2];
    v4 = this[6];
    if (v4)
    {
      v5 = 5120;
      do
      {
        *(v4 + v5 + 128) = 0;
        v5 -= 40;
      }

      while (v5);
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = *(v4 + 20);
        if (v7)
        {
          v8 = *(v4 + 18);
          if (v8)
          {
            v9 = 88 * v8;
            v10 = v7 + 48;
            do
            {
              re::DynamicArray<unsigned long>::deinit(v10);
              re::DynamicArray<unsigned long>::deinit(v10 - 40);
              v10 += 88;
              v9 -= 88;
            }

            while (v9);
            v6 = *(v4 + 16);
            v7 = *(v4 + 20);
          }

          (*(*v6 + 40))(v6, v7);
        }

        *(v4 + 20) = 0;
        *(v4 + 17) = 0;
        *(v4 + 18) = 0;
        *(v4 + 16) = 0;
        ++*(v4 + 38);
      }

      re::DataArray<re::PerFrameAllocatorImpl>::deinit(v4 + 56);
      re::DynamicArray<unsigned long>::deinit(v4 + 56);
      v11 = *(v4 + 4);
      if (v11)
      {
        if (*(v4 + 5))
        {
          (*(*v11 + 40))(v11, *(v4 + 6));
          *(v4 + 5) = 0;
          *(v4 + 6) = 0;
        }

        *(v4 + 4) = 0;
      }

      re::FixedArray<CoreIKTransform>::deinit(v4 + 1);
      (*(*v3 + 40))(v3, v4);
      v3 = this[2];
    }

    this[6] = 0;
    v12 = this[5];
    if (v12)
    {
      (**v12)(this[5]);
      (*(*v3 + 40))(v3, v12);
      v3 = this[2];
    }

    this[5] = 0;
    v13 = this[4];
    if (v13)
    {
      (**v13)(this[4]);
      (*(*v3 + 40))(v3, v13);
      v3 = this[2];
    }

    this[4] = 0;
    v14 = this[3];
    if (v14)
    {
      (**v14)(this[3]);
      (*(*v3 + 40))(v3, v14);
      v3 = this[2];
    }

    this[3] = 0;
    re::MemoryTracker::untrack(&re::globalMemoryTracker(void)::s_instance, v3);
    if (re::globalMemoryTracker(void)::s_instance == 1)
    {
      v15 = re::DynamicArray<unsigned long>::deinit(&qword_1EE1C6BE8);
      re::globalMemoryTracker(void)::s_instance = 0;
    }

    *(this + 8) = 0;
  }
}

void re::GlobalAllocators::~GlobalAllocators(re::PerFrameAllocatorManager **this)
{
  *this = &unk_1F5CCF060;
  re::GlobalAllocators::deinit(this);
}

{
  *this = &unk_1F5CCF060;
  re::GlobalAllocators::deinit(this);

  JUMPOUT(0x1E6906520);
}

char *re::globalMemoryTracker(re *this)
{
  {
    if (v2)
    {
      re::globalMemoryTracker(void)::s_instance = 0;
      qword_1EE1C6C08 = 0;
      *&algn_1EE1C6BE1[3] = 0u;
      *&algn_1EE1C6BF0[4] = 0u;
      re::DynamicArray<float *>::setCapacity(&qword_1EE1C6BE8, 0x400uLL);
      ++dword_1EE1C6C00;
      re::globalMemoryTracker(void)::s_instance = 1;
    }
  }

  return &re::globalMemoryTracker(void)::s_instance;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::PerFrameAllocatorImpl>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::PerFrameAllocatorImpl>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::PerFrameAllocatorImpl>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t (***re::DataArray<re::PerFrameAllocatorImpl>::destroy(uint64_t a1, unint64_t a2))(void)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  result = re::DataArray<re::PerFrameAllocatorImpl>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = (**result)(result);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x1E69E9C10];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 184 * a2;
  }

  else
  {
    return 0;
  }
}

void re::StringID::init(re::StringID *this, re::Allocator *a2, const char *__s)
{
  if (__s)
  {
    v6 = strlen(__s);
  }

  else
  {
    v6 = 0;
  }

  re::StringID::init(this, a2, __s, v6);
}

re::StringID *re::StringID::StringID(re::StringID *this, const char *a2)
{
  *this = 0;
  *(this + 1) = &str_67;
  return this;
}

void re::StringID::init(re::StringID *this, re::Allocator *a2, const char *a3, size_t a4)
{
  if (!a3)
  {
    re::StringID::invalid(v14);
    v12 = re::StringID::operator=(this, v14);
    if ((v14[0] & 1) == 0)
    {
      return;
    }

    if ((v14[0] & 1) == 0)
    {
      return;
    }

LABEL_12:
    return;
  }

  if (!a4)
  {
    v14[0] = 0;
    v14[1] = &str_67;
    v13 = re::StringID::operator=(this, v14);
    if ((v14[0] & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = *a3;
  v8 = a4 - 1;
  if (a4 != 1)
  {
    v9 = a3 + 1;
    do
    {
      v10 = *v9++;
      v7 = v10 - v7 + 32 * v7;
      --v8;
    }

    while (v8);
  }

  *this = *this & 1 | (2 * v7);
  v11 = (*(*a2 + 32))(a2, a4 + 1, 0);
  memcpy(v11, a3, a4);
  *(v11 + a4) = 0;
  *this |= 1uLL;
  *(this + 1) = v11;
}

re::StringID *re::StringID::StringID(re::StringID *this, const re::DynamicString *a2)
{
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = *(a2 + 2);
  }

  else
  {
    v4 = a2 + 9;
  }

  v5 = v3 >> 1;
  v6 = v3 >> 1;
  if (*(a2 + 1))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  *this = 0;
  *(this + 1) = &str_67;
  return this;
}

re::StringID *re::StringID::StringID(re::StringID *this, const StringID *a2)
{
  v4 = *&a2->var0;
  *this = *&a2->var0 & 0xFFFFFFFFFFFFFFFELL | *this & 1;
  if (*&a2->var0)
  {
    var1 = a2->var1;
    v6 = strlen(var1);
    memcpy(v7, var1, v6);
    v7[v6] = 0;
    v8 = *this | 1;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v7 = a2->var1;
  }

  *this = v8;
  *(this + 1) = v7;
  return this;
}

void re::StringID::destroyString(re::StringID *this)
{
  if (*this)
  {
    if (*this)
    {
    }
  }

  *this = 0;
  *(this + 1) = &str_67;
}

unint64_t *re::StringID::operator=(unint64_t *a1, uint64_t *a2)
{
  re::StringID::destroyString(a1);
  v5 = *a2;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  v6 = *a2;
  *a1 = v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  if (v6)
  {
    v7 = a2[1];
    v8 = strlen(v7);
    memcpy(v9, v7, v8);
    *(v9 + v8) = 0;
  }

  else
  {
    v9 = a2[1];
  }

  a1[1] = v9;
  return a1;
}

_anonymous_namespace_ *re::StringID::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5 = *a1;
  *a1 = v3;
  *(a1 + 1) = v4;
  if (v5)
  {
  }

  return a1;
}

re::StringID *re::StringID::invalid@<X0>(re::StringID *a1@<X8>)
{
  v2 = a1;
  {
    v2 = a1;
    if (v4)
    {
      re::StringID::invalid(void)::invalid = -2;
      *algn_1EE1C5798 = &str_67;
      v2 = a1;
    }
  }

  return re::StringID::StringID(v2, &re::StringID::invalid(void)::invalid);
}

char *re::WeakStringID::debugStr(re::WeakStringID *this)
{
  if (*this == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (!*this)
  {
    return &str_67;
  }

  v1 = re::WeakStringID::debugStr(void)const::msg;
  snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *this);
  return v1;
}

void re::StringID::copy(re::StringID *this, const re::StringID *a2, re::Allocator *a3)
{
  if (*this)
  {
    (*(*a3 + 40))(a3, *(this + 1));
  }

  *this = 0;
  *(this + 1) = &str_67;
  if (*a2)
  {
    v6 = *(a2 + 1);

    re::StringID::init(this, a3, v6);
  }

  else
  {

    re::StringID::operator=(this, a2);
  }
}

BOOL re::StringID::operator==(void *a1, void *a2)
{
  if ((*a2 & 0x7FFFFFFFFFFFFFFFLL) != *a1 >> 1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  return v2 == v3 || strcmp(v2, v3) == 0;
}

{
  if ((*a2 ^ *a1) > 1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  return v2 == v3 || strcmp(v2, v3) == 0;
}

void re::MemoryTracker::track(os_unfair_lock_s *this, const re::Allocator *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 1);
  re::DynamicArray<re::TransitionCondition *>::add(&this[2], &v3);
  os_unfair_lock_unlock(this + 1);
}

void re::MemoryTracker::untrack(os_unfair_lock_s *this, const re::Allocator *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 1);
  re::DynamicArray<re::Allocator const*>::removeStable(&this[2]._os_unfair_lock_opaque, &v3);
  os_unfair_lock_unlock(this + 1);
}

uint64_t re::DynamicArray<re::Allocator const*>::removeStable(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[2];
  if (v3)
  {
    v4 = 8 * v3;
    for (i = a1[4]; *i != *a2; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    i = a1[4];
  }

  if (i == (v2 + 8 * v3))
  {
    return 0;
  }

  re::DynamicArray<re::Allocator const*>::removeStableAt(a1, (i - v2) >> 3);
  return 1;
}

uint64_t re::MemoryTracker::statistics(os_unfair_lock_s *this)
{
  v3[0] = 0;
  v3[1] = 0;
  os_unfair_lock_lock(this + 1);
  re::MemoryTracker::statistics(this, 0, v3);
  os_unfair_lock_unlock(this + 1);
  return v3[0];
}

uint64_t re::MemoryTracker::statistics(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    v6 = result;
    v7 = *(result + 40);
    v8 = 8 * v3;
    do
    {
      v9 = *v7;
      result = (*(**v7 + 48))(*v7);
      if (result == a2)
      {
        v10 = (*(*v9 + 56))(v9);
        v12 = a3[1] + v11;
        *a3 += v10;
        a3[1] = v12;
        result = re::MemoryTracker::statistics(v6, v9, a3);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

void re::MemoryTracker::logMemoryLeaks(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  re::MemoryTracker::logMemoryLeaks(this, 0);

  os_unfair_lock_unlock(this + 1);
}

const re::Allocator *re::MemoryTracker::logMemoryLeaks(const re::Allocator *this, const re::Allocator *a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 5);
    v5 = 8 * v2;
    do
    {
      v6 = *v4;
      this = (*(**v4 + 48))(*v4);
      if (this == a2)
      {
        this = (*(*v6 + 64))(v6);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return this;
}

void *re::DynamicArray<re::Allocator const*>::removeStableAt(void *result, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = result[2];
  if (v3 <= a2)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "removeStableAt";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 969;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v4 = result;
  v5 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v6 = result[4];
    result = (v6 + 8 * a2);
    v7 = (v6 + 8 * v3);
    if (v7 != (result + 1))
    {
      result = memmove(result, result + 1, v7 - (result + 1));
      v5 = v4[2] - 1;
    }
  }

  v4[2] = v5;
  ++*(v4 + 6);
  return result;
}

unsigned __int8 *re::StringSlice::findFirstOf@<X0>(uint64_t *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>((*a1 + a3), *a1 + a1[1], *a2, &a2[1][*a2]);
  if ((*a1 + a1[1]) == result)
  {
    v7 = 0;
  }

  else
  {
    *(a4 + 8) = &result[-*a1];
    v7 = 1;
  }

  *a4 = v7;
  return result;
}

uint64_t *re::StringSlice::findLastOf@<X0>(uint64_t *result@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = a2[1];
  if (v4 == a3 || v5 == 0)
  {
    goto LABEL_19;
  }

  v7 = *result;
  v8 = (*result + v4);
  v9 = (*result + a3);
  v10 = (*a2 + 1);
  v11 = **a2;
  v12 = v5 - 1;
  v13 = v8;
  do
  {
    v14 = v9 + 1;
    while (*v9 != v11)
    {
      ++v9;
      ++v14;
      if (v9 == v8)
      {
        goto LABEL_17;
      }
    }

    v15 = v12;
    result = v10;
    while (v15)
    {
      if (v14 == v8)
      {
        goto LABEL_17;
      }

      v17 = *v14++;
      v16 = v17;
      v18 = *result;
      result = (result + 1);
      --v15;
      if (v16 != v18)
      {
        goto LABEL_16;
      }
    }

    v13 = v9;
LABEL_16:
    ++v9;
  }

  while (v9 != v8);
LABEL_17:
  if (v13 == v8)
  {
LABEL_19:
    *a4 = 0;
  }

  else
  {
    *a4 = 1;
    *(a4 + 8) = &v13[-v7];
  }

  return result;
}

unsigned __int8 *std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 == a3)
  {
    return a1;
  }

  v5 = a2;
  if (a2 - a1 >= v4)
  {
    v6 = (a2 - v4 + 1);
    if (v6 != a1)
    {
      v9 = *a3;
      v7 = a3 + 1;
      v8 = v9;
      while (*a1 != v8)
      {
LABEL_9:
        if (++a1 == v6)
        {
          return v5;
        }
      }

      v10 = a1 + 1;
      v11 = v7;
      while (v11 != a4)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = *v11++;
        if (v12 != v14)
        {
          goto LABEL_9;
        }
      }

      return a1;
    }
  }

  return v5;
}

void *std::function<void ()(re::EventQueue &)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(re::EventQueue &)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(re::EventQueue &)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(re::EventQueue &)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void re::EventQueue::postEvent(os_unfair_lock_s *this, const void *a2, size_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    re::internal::assertLog(4, 0, a3, "assertion failure: '%s' (%s:line %i) event must not be null.", "event", "postEvent", 28);
    _os_crash("assertion failure: (event) event must not be null.");
    __break(1u);
    goto LABEL_13;
  }

  if (a3 <= 3)
  {
LABEL_13:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid size.", "size >= sizeof(uint32_t)", "postEvent", 29);
    _os_crash("assertion failure: (size >= sizeof(uint32_t)) Invalid size.");
    __break(1u);
LABEL_14:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Invalid size. Size causes arithmetic overflow.", "!overflow", "postEvent", 44);
    _os_crash("assertion failure: (!overflow) Invalid size. Size causes arithmetic overflow.");
    __break(1u);
LABEL_15:
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v12 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v13, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_lock(this);
  v8 = &this[10 * this[22]._os_unfair_lock_opaque];
  v3 = *&v8[6]._os_unfair_lock_opaque;
  v9 = a3 + v3 + 4;
  v10 = __CFADD__(a3, v3 + 4);
  if (v3 >= 0xFFFFFFFFFFFFFFFCLL || v10)
  {
    goto LABEL_14;
  }

  re::DynamicArray<char>::resize(&v8[2], v9);
  v4 = *&v8[6]._os_unfair_lock_opaque;
  if (v4 <= v3)
  {
    goto LABEL_15;
  }

  v11 = *&v8[10]._os_unfair_lock_opaque;
  *(v11 + v3) = a3;
  memcpy((v11 + v3 + 4), a2, a3);

  os_unfair_lock_unlock(this);
}

void re::DynamicArray<char>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<char>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      bzero((*(a1 + 32) + v4), v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::EventQueue::processEvents(os_unfair_lock_s *this)
{
  re::EventQueue::swapBuffers(this);
  result = *&this[32]._os_unfair_lock_opaque;
  if (result)
  {
    v3 = *(*result + 48);

    return v3();
  }

  return result;
}

void re::EventQueue::swapBuffers(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = (this[22]._os_unfair_lock_opaque & 1) == 0;
  this[22]._os_unfair_lock_opaque = v2;
  v3 = &this[10 * v2];
  *&v3[6]._os_unfair_lock_opaque = 0;
  ++v3[8]._os_unfair_lock_opaque;
  *&this[24]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this);
}

uint64_t re::EventQueue::peekEvent(re::EventQueue *this, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 12);
  v4 = *(this + 5 * ((*(this + 22) & 1) == 0) + 3);
  if (v4 == v3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) EventQueue is empty.", "!isEmpty()", "peekEvent", 100);
    _os_crash("assertion failure: (!isEmpty()) EventQueue is empty.");
    __break(1u);
    goto LABEL_6;
  }

  if (v4 - v3 - 8 < a2)
  {
LABEL_6:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid offset.", "offset <= events.size() - payloadOffset - sizeof(uint32_t)", "peekEvent", 105);
    _os_crash("assertion failure: (offset <= events.size() - payloadOffset - sizeof(uint32_t)) Invalid offset.");
    __break(1u);
LABEL_7:
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v6 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = v2;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v7, &v10, v19, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v8, v9);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 + v3 + 4;
  if (v4 <= v2)
  {
    goto LABEL_7;
  }

  return *(*(this + 5 * ((*(this + 22) & 1) == 0) + 5) + v2);
}

void *re::EventQueue::readEvent(re::EventQueue *this, void *__dst, size_t __n)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(this + 12);
  v4 = *(this + 5 * ((*(this + 22) & 1) == 0) + 3);
  if (v3 == v4)
  {
    re::internal::assertLog(4, __dst, __n, "assertion failure: '%s' (%s:line %i) EventQueue is empty.", "!isEmpty()", "readEvent", 115);
    _os_crash("assertion failure: (!isEmpty()) EventQueue is empty.");
    __break(1u);
    goto LABEL_8;
  }

  if (!__dst)
  {
LABEL_8:
    re::internal::assertLog(4, __dst, __n, "assertion failure: '%s' (%s:line %i) buffer must not be null.", "buffer", "readEvent", 116);
    _os_crash("assertion failure: (buffer) buffer must not be null.");
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= v3)
  {
LABEL_9:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v10, &v16, &v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(this + 5 * ((*(this + 22) & 1) == 0) + 5);
  if (*(v6 + v3) != __n)
  {
LABEL_13:
    re::internal::assertLog(4, __dst, "assertion failure: '%s' (%s:line %i) Specified size does not match event size.", "size == nextEventSize()", "readEvent", 117);
    _os_crash("assertion failure: (size == nextEventSize()) Specified size does not match event size.");
    __break(1u);
LABEL_14:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v13, &v16, &v25, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
  }

  v3 += 4;
  if (v4 <= v3)
  {
    goto LABEL_14;
  }

  result = memcpy(__dst, (v6 + v3), __n);
  *(this + 12) += __n + 4;
  return result;
}

uint64_t std::__function::__value_func<void ()(re::EventQueue &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(re::EventQueue &)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::EventQueue &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void re::internal::refCountCheckFailHandler(re::internal *this, const void *a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v5 = "Retain";
  }

  else
  {
    v5 = "Release";
  }

  fprintf(*MEMORY[0x1E69E9848], "Ref count out of range on %s. %p (retain count is %d 0x%x)\n", v5, a2, a3, a3);
  if ((atomic_load_explicit(&qword_1EE19D9A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D9A8))
  {
    re::Defaults::BOOLValue(buf, "crashOnRefCountCheckFail", v6);
    if (buf[0])
    {
      v8 = buf[1];
    }

    else
    {
      v8 = 0;
    }

    _MergedGlobals_133 = v8;
    __cxa_guard_release(&qword_1EE19D9A8);
  }

  if (_MergedGlobals_133 == 1)
  {
    re::internal::assertLog(8, v6, "assertion failure: '%s' (%s:line %i) Ref count out of range on %s. %p (retain count is %d 0x%x)\n", "false", "refCountCheckFailHandler", 30, v5, a2, a3, a3);
    _os_crash("assertion failure: (false) Ref count out of range on %s. %p (retain count is %d 0x%x)\n", v9, v10, v11, v12);
    __break(1u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v14 = v5;
    v15 = 2048;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a3;
    _os_log_error_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Ref count out of range on %s. %p (retain count is %d 0x%x)\n", buf, 0x22u);
  }

  re::internal::logStackTrace(0, 0, v7);
}

re::PageDebugAllocator *re::PageDebugAllocator::PageDebugAllocator(re::PageDebugAllocator *this, const char *a2, BOOL a3, unint64_t a4)
{
  v6 = re::Allocator::Allocator(this, a2, a3);
  *v6 = &unk_1F5CCF090;
  *(v6 + 5) = 0;
  *(v6 + 3) = 0u;
  *(v6 + 8) = 0;
  *(v6 + 2) = 0u;
  v7 = (v6 + 32);
  return this;
}

void re::PageDebugAllocator::~PageDebugAllocator(re::PageDebugAllocator *this)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 5);
  v3 = *(this + 7);
  v4 = *(this + 8);
  v2 = (this + 56);
  if (v3 != v4)
  {
    v5 = MEMORY[0x1E69E9A60];
    do
    {
      v6 = *(this + 5);
      v7 = (v6 - 1) & v3;
      if (v6 <= v7)
      {
        v11 = 0;
        memset(v20, 0, sizeof(v20));
        v8 = MEMORY[0x1E69E9C10];
        v12 = 136315906;
        v13 = "operator[]";
        v14 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v15 = 468;
        v16 = 2048;
        v17 = (v6 - 1) & v3;
        v18 = 2048;
        v19 = v6;
        _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
        _os_crash_msg();
        __break(1u);
      }

      mach_vm_deallocate(*v5, *(*(this + 6) + 16 * v7), *(*(this + 6) + 16 * v7 + 8));
      ++v3;
    }

    while (v4 != v3);
  }

  *v2 = 0;
  *(this + 8) = 0;
  os_unfair_lock_unlock(this + 5);
  *v2 = 0;
  *(this + 8) = 0;
  re::FixedArray<CoreIKTransform>::deinit(this + 4);
  re::FixedArray<CoreIKTransform>::deinit(this + 4);

  re::Allocator::~Allocator(this);
}

{
  re::PageDebugAllocator::~PageDebugAllocator(this);

  JUMPOUT(0x1E6906520);
}

mach_vm_address_t re::PageDebugAllocator::alloc(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 5);
  v4 = ~*MEMORY[0x1E69E9AB8] & (a2 + *MEMORY[0x1E69E9AB8] + 16);
  address = 0;
  v5 = 0;
  if (!mach_vm_map(*MEMORY[0x1E69E9A60], &address, v4, 0, 1, 0, 0, 0, 3, 3, 2u))
  {
    v6 = address;
    *address = a2;
    *(v6 + 8) = v4;
    v5 = v6 + 16;
    __dmb(0xBu);
  }

  os_unfair_lock_unlock(this + 5);
  return v5;
}

void re::PageDebugAllocator::free(os_unfair_lock_s *this, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 5);
  __dmb(0xBu);
  v4 = a2 - 2;
  v5 = *(a2 - 1);
  address = v4;
  v6 = MEMORY[0x1E69E9A60];
  mach_vm_map(*MEMORY[0x1E69E9A60], &address, v5, 0, 0x4000, 0, 0, 0, 0, 3, 2u);
  v8 = *&this[14]._os_unfair_lock_opaque;
  v7 = *&this[16]._os_unfair_lock_opaque;
  v9 = v7 - v8;
  v10 = *&this[10]._os_unfair_lock_opaque;
  if (v7 - v8 == v10)
  {
    v10 = (v9 - 1) & v8;
    if (v9 <= v10)
    {
      goto LABEL_12;
    }

    v11 = (*&this[12]._os_unfair_lock_opaque + 16 * v10);
    mach_vm_deallocate(*v6, *v11, v11[1]);
    *v11 = 0;
    v11[1] = 0;
    v7 = *&this[16]._os_unfair_lock_opaque;
    v12 = *&this[14]._os_unfair_lock_opaque + 1;
    *&this[14]._os_unfair_lock_opaque = v12;
    v10 = *&this[10]._os_unfair_lock_opaque;
    v9 = v7 - v12;
  }

  v13 = v7 + 1;
  if (v9 == v10)
  {
    *&this[14]._os_unfair_lock_opaque = v13 - v9;
  }

  *&this[16]._os_unfair_lock_opaque = v13;
  v9 = (v10 - 1) & v7;
  if (v10 <= v9)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, address);
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, address);
    _os_crash_msg();
    __break(1u);
  }

  v14 = (*&this[12]._os_unfair_lock_opaque + 16 * v9);
  *v14 = v4;
  v14[1] = v5;
  os_unfair_lock_unlock(this + 5);
}

uint64_t re::PageDebugAllocator::statistics(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 5);
  os_unfair_lock_unlock(this + 5);
  return 0;
}

void re::PageDebugAllocator::logMemoryLeaks(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 5);

  os_unfair_lock_unlock(this + 5);
}

void re::FixedArray<re::PageDebugAllocator::DeferredFree>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

id *re::ObjCObject::operator=(id *location, id *a2)
{
  if (location != a2)
  {
    objc_storeStrong(location, *a2);
  }

  return location;
}

void **re::ObjCObject::operator=(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (*a1 != v3)
  {
    *a1 = v3;

    v3 = 0;
  }

  return a1;
}

const char *re::ObjCObject::description(id *this)
{
  v1 = [*this description];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 UTF8String];
  }

  else
  {
    v3 = "nil";
  }

  return v3;
}

re::ns::String *re::ns::String::String(re::ns::String *this, re::mtl *a2)
{
  v3 = re::mtl::convertToNSString(a2, a2);
  *this = v3;

  return this;
}

void re::ns::String::format(re::ns::String *this@<X0>, void *a2@<X8>, ...)
{
  va_start(va, a2);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v6 = [v4 initWithFormat:v5 arguments:va];

  v7 = v6;
  *a2 = v7;
}

uint64_t re::getRealityFilePlatformFromName(re *this, const char *a2)
{
  if (!strcasecmp(this, "macos"))
  {
    return 3;
  }

  if (!strcasecmp(this, "ios"))
  {
    return 2;
  }

  v3 = strcasecmp(this, "xros");
  if (!v3)
  {
    v5 = *re::foundationCoreLogObjects(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Detected 'xros' platform name in getVersionFromDeploymentTarget, use visionOS instead", v6, 2u);
    }

    return 4;
  }

  if (!strcasecmp(this, "visionos"))
  {
    return 4;
  }

  if (!strcasecmp(this, "tvos"))
  {
    return 5;
  }

  else
  {
    return strcasecmp(this, "all") == 0;
  }
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  re::DynamicString::setCapacity(this, 0);
  return this;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const char *__s, re::Allocator *a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  v6 = strlen(__s);
  if (v6)
  {
    v7 = v6;
    *this = a3;
    re::DynamicString::setCapacity(this, v6 + 1);
    re::DynamicString::assign(this, __s, v7);
  }

  else
  {
    *this = a3;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

void *re::DynamicString::assign(re::DynamicString *this, const char *__src, size_t __len)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = *(this + 3);
  }

  else
  {
    v7 = 23;
  }

  if (v7 <= __len)
  {
    re::DynamicString::growCapacity(this, __len + 1);
    v6 = *(this + 1);
  }

  if (v6)
  {
    v8 = *(this + 2);
  }

  else
  {
    v8 = this + 9;
  }

  result = memmove(v8, __src, __len);
  if (*(this + 8))
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = this + 9;
  }

  v10[__len] = 0;
  if (*(this + 8))
  {
    *(this + 1) = (2 * __len) | 1;
  }

  else
  {
    *(this + 8) = 2 * __len;
  }

  return result;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const char *a2, size_t a3, re::Allocator *a4)
{
  *this = 0u;
  *(this + 1) = 0u;
  if (a3)
  {
    *this = a4;
    re::DynamicString::setCapacity(this, a3 + 1);
    re::DynamicString::assign(this, a2, a3);
  }

  else
  {
    *this = a4;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const re::DynamicString *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    *this = *a2;
    re::DynamicString::setCapacity(this, v5 + 1);
    re::DynamicString::copy(this, a2);
  }

  else
  {
    v6 = *a2;
    if (!*a2)
    {
    }

    *this = v6;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

void *re::DynamicString::copy(void *this, const re::DynamicString *a2)
{
  v2 = this;
  v3 = *(a2 + 1);
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    v4 = v3 >> 1;
  }

  v5 = this[1];
  if (v4)
  {
    if (v5)
    {
      v7 = this[3];
    }

    else
    {
      v7 = 23;
    }

    if (v4 >= v7)
    {
      re::DynamicString::setCapacity(this, v4 + 1);
      v5 = v2[1];
    }

    if (v5)
    {
      v9 = v2[2];
    }

    else
    {
      v9 = v2 + 9;
    }

    v10 = *(a2 + 1);
    if (v10)
    {
      v11 = *(a2 + 2);
    }

    else
    {
      v11 = a2 + 9;
    }

    v12 = v10 >> 1;
    v13 = v10 >> 1;
    if (*(a2 + 1))
    {
      v13 = v12;
    }

    this = memmove(v9, v11, v13 + 1);
    v14 = *(a2 + 1);
    if (v2[1])
    {
      v15 = 254;
      if (v14)
      {
        v15 = -2;
      }

      v2[1] = v15 & v14 | 1;
    }

    else
    {
      *(v2 + 8) = v14 & 0xFE;
    }
  }

  else
  {
    if (v5)
    {
      this[1] = 1;
      v8 = this[2];
    }

    else
    {
      *(this + 8) = 0;
      v8 = this + 9;
    }

    *v8 = 0;
  }

  return this;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *this, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    if (!*this)
    {
      re::DynamicString::setCapacity(this, v3 + 1);
    }

    re::DynamicString::assign(this, *a2, v3);
  }

  else
  {
    if (*(this + 8))
    {
      *(this + 1) = 1;
      v5 = *(this + 2);
    }

    else
    {
      *(this + 8) = 0;
      v5 = this + 9;
    }

    *v5 = 0;
  }

  return this;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  *a1 = a3;
  re::DynamicString::setCapacity(a1, v6);

  return re::DynamicString::operator=(a1, a2);
}

void *re::DynamicString::setCapacity(void *this, size_t __n)
{
  v3 = this;
  v4 = this[1];
  if (__n <= 0x17)
  {
    if ((v4 & 1) == 0)
    {
      return this;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    v5 = 0;
    v6 = this[3];
    goto LABEL_7;
  }

  v5 = 1;
  v6 = 23;
LABEL_7:
  if (v6 != __n)
  {
    v7 = v5 ? v4 >> 1 : v4 >> 1;
    if (v7 < __n)
    {
      if (__n > 0x16)
      {
        this = (*(**this + 32))();
        if (!this)
        {
          re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "newBuffer", "setCapacity", 455);
          this = _os_crash("assertion failure: (newBuffer) Out of memory.");
          __break(1u);
          return this;
        }

        v11 = this;
        *this = 0;
        v12 = v3[1];
        v13 = v12 >> 1;
        if ((v12 & 1) == 0)
        {
          v13 = v12 >> 1;
        }

        if (v13)
        {
          if (v12)
          {
            v14 = v3[2];
          }

          else
          {
            v14 = v3 + 9;
          }

          this = memcpy(this, v14, v13 + 1);
          v12 = v3[1];
        }

        if (v12)
        {
          this = (*(**v3 + 40))(*v3, v3[2]);
          v15 = v3[1];
        }

        else
        {
          v15 = v12 & 0xFE;
        }

        v3[2] = v11;
        v3[3] = __n;
        v9 = v15 | 1;
      }

      else
      {
        v8 = this[2];
        *(this + 8) = v4;
        memcpy(this + 9, v8, __n);
        this = (*(**v3 + 40))(*v3, v8);
        v9 = v3[1] & 0xFFFFFFFFFFFFFFFELL;
      }

      v3[1] = v9;
    }
  }

  return this;
}

double re::DynamicString::deinit(re::DynamicString *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 8))
    {
      (*(*v2 + 40))(v2, *(this + 2));
    }

    result = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  return result;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *this, re::DynamicString *a2)
{
  if (this == a2)
  {
    return this;
  }

  v4 = *a2;
  if (!*this)
  {
    if (!v4)
    {
      return this;
    }

    v6 = *(a2 + 1);
    if (v6)
    {
      v7 = v6 >> 1;
    }

    else
    {
      v7 = v6 >> 1;
    }

    *this = v4;
    re::DynamicString::setCapacity(this, v7 + 1);
LABEL_11:
    re::DynamicString::copy(this, a2);
    return this;
  }

  if (v4)
  {
    goto LABEL_11;
  }

  if (*(this + 8))
  {
    *(this + 1) = 1;
    v5 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v5 = this + 9;
  }

  *v5 = 0;
  return this;
}

{
  if (this != a2)
  {
    v3 = *this;
    v4 = *a2;
    if (*this)
    {
      v5 = v3 == v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *this = v4;
      *a2 = v3;
      v6 = *(this + 3);
      *(this + 3) = *(a2 + 3);
      *(a2 + 3) = v6;
      v8 = *(this + 1);
      v7 = *(this + 2);
      v9 = *(a2 + 2);
      *(this + 1) = *(a2 + 1);
      *(this + 2) = v9;
      *(a2 + 1) = v8;
      *(a2 + 2) = v7;
    }

    else if (v4)
    {
      re::DynamicString::copy(this, a2);
    }

    else
    {
      if (*(this + 8))
      {
        *(this + 1) = 1;
        v10 = *(this + 2);
      }

      else
      {
        *(this + 8) = 0;
        v10 = this + 9;
      }

      *v10 = 0;
    }
  }

  return this;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=(a1, v4);
}

uint64_t re::DynamicString::operator[](uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, length = %zu", "index <= size()", "operator[]", 180, a2, v5, v2, v3);
    result = _os_crash("assertion failure: (index <= size()) Index out of range. index = %zu, length = %zu", v8, v9);
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      v6 = a1 + 9;
    }

    return v6 + a2;
  }

  return result;
}

{
  v4 = *(a1 + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, length = %zu", "index <= size()", "operator[]", 188, a2, v5, v2, v3);
    result = _os_crash("assertion failure: (index <= size()) Index out of range. index = %zu, length = %zu", v8, v9);
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      v6 = a1 + 9;
    }

    return v6 + a2;
  }

  return result;
}

BOOL re::DynamicString::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  return strcmp(v2, v3) == 0;
}

BOOL re::DynamicString::operator!=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  return strcmp(v2, v3) != 0;
}

uint64_t re::DynamicString::operator<(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  return strcmp(v2, v3) >> 31;
}

void *re::DynamicString::append(re::DynamicString *this, const char *__src, size_t __len)
{
  v6 = *(this + 1);
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  v8 = v7 + __len;
  if (v6)
  {
    v9 = *(this + 3);
  }

  else
  {
    v9 = 23;
  }

  if (v8 >= v9)
  {
    re::DynamicString::growCapacity(this, v8 + 1);
    v6 = *(this + 1);
  }

  if (v6)
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = this + 9;
  }

  if (v6)
  {
    v11 = v6 >> 1;
  }

  else
  {
    v11 = v6 >> 1;
  }

  result = memmove(&v10[v11], __src, __len);
  v13 = *(this + 1);
  if (v13)
  {
    v14 = v13 + 2 * __len;
    *(this + 1) = v14;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 8) = v13 + 2 * __len;
    v14 = *(this + 1);
    if (v14)
    {
LABEL_16:
      v15 = *(this + 2);
      goto LABEL_19;
    }
  }

  v15 = this + 9;
LABEL_19:
  if (v14)
  {
    v16 = v14 >> 1;
  }

  else
  {
    v16 = v14 >> 1;
  }

  v15[v16] = 0;
  return result;
}

uint64_t *re::DynamicString::operator+@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::DynamicString *a2@<X0>, uint64_t a3@<X1>)
{
  v4 = re::DynamicString::DynamicString(a1, a2);
  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = *(a3 + 16);
  }

  else
  {
    v6 = (a3 + 9);
  }

  v7 = v5 >> 1;
  v8 = v5 >> 1;
  if (*(a3 + 8))
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return re::DynamicString::append(v4, v6, v9);
}

uint64_t *re::DynamicString::operator+@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::DynamicString *a2@<X0>, const char *a3@<X1>)
{
  re::DynamicString::DynamicString(a1, a2);
  v5 = strlen(a3);

  return re::DynamicString::append(a1, a3, v5);
}

uint64_t re::DynamicString::compare(re::DynamicString *this, const re::DynamicString *a2)
{
  if (*(this + 8))
  {
    v2 = *(this + 2);
  }

  else
  {
    v2 = this + 9;
  }

  if (*(a2 + 1))
  {
    v3 = *(a2 + 2);
  }

  else
  {
    v3 = a2 + 9;
  }

  return strcmp(v2, v3);
}

void *re::DynamicString::growCapacity(void *this, size_t a2)
{
  if (this[1])
  {
    v3 = this[3];
    if (v3 >= a2)
    {
      return this;
    }

    v2 = 2 * v3;
  }

  else
  {
    if (a2 <= 0x17)
    {
      return this;
    }

    v2 = 64;
  }

  if (v2 > a2)
  {
    a2 = v2;
  }

  return re::DynamicString::setCapacity(this, a2);
}

uint64_t re::DynamicString::vappendf(re::DynamicString *this, const char *__format, va_list a3)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = v5 >> 1;
    v8 = *(this + 3);
    v7 = (*(this + 2) + (v5 >> 1));
  }

  else
  {
    v6 = v5 >> 1;
    v7 = this + v6 + 9;
    v8 = 23;
  }

  result = vsnprintf(v7, v8 - v6, __format, a3);
  v10 = *(this + 1);
  if ((result & 0x80000000) == 0)
  {
    v11 = v10 >> 1;
    v12 = v10 >> 1;
    if (v10)
    {
      v12 = v10 >> 1;
    }

    v13 = v12 + result;
    if (v10)
    {
      if (v13 >= *(this + 3))
      {
        v14 = *(this + 2);
        if (!v14)
        {
LABEL_16:
          re::DynamicString::growCapacity(this, result + v11 + 1);
          v17 = *(this + 1);
          if (v17)
          {
            v18 = v17 >> 1;
            v20 = *(this + 3);
            v19 = (*(this + 2) + (v17 >> 1));
          }

          else
          {
            v18 = v17 >> 1;
            v19 = this + v18 + 9;
            v20 = 23;
          }

          result = vsnprintf(v19, v20 - v18, __format, a3);
          goto LABEL_25;
        }

LABEL_14:
        v14[v12] = 0;
        v16 = *(this + 1);
        v11 = v16 >> 1;
        if ((v16 & 1) == 0)
        {
          v11 = v16 >> 1;
        }

        goto LABEL_16;
      }
    }

    else if (v13 >= 0x17)
    {
      v14 = this + 9;
      goto LABEL_14;
    }

LABEL_25:
    v22 = *(this + 1);
    if (v22)
    {
      *(this + 1) = v22 + 2 * result;
    }

    else
    {
      *(this + 8) = v22 + 2 * result;
    }

    return result;
  }

  if (v10)
  {
    v15 = *(this + 2);
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    v15 = this + 9;
  }

  if (v10)
  {
    v21 = v10 >> 1;
  }

  else
  {
    v21 = v10 >> 1;
  }

  v15[v21] = 0;
  return result;
}

uint64_t re::DynamicString::vassignf(re::DynamicString *this, const char *__format, va_list a3)
{
  if (*(this + 8))
  {
    *(this + 1) = 1;
    v3 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v3 = this + 9;
  }

  *v3 = 0;
  return re::DynamicString::vappendf(this, __format, a3);
}

void *re::DynamicString::resize(void *this, unint64_t a2, int a3)
{
  v3 = this[1];
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4 != a2)
  {
    v7 = this;
    this = re::DynamicString::growCapacity(this, a2 + 1);
    v8 = v7[1];
    v9 = v8 >> 1;
    if ((v8 & 1) == 0)
    {
      v9 = v8 >> 1;
    }

    if (a2 > v9)
    {
      if (v8)
      {
        v10 = v7[2];
      }

      else
      {
        v10 = v7 + 9;
      }

      this = memset(&v10[v9], a3, a2 - v9);
      v8 = v7[1];
    }

    if (v8)
    {
      v11 = v7[2];
    }

    else
    {
      v11 = v7 + 9;
    }

    v11[a2] = 0;
    if (v7[1])
    {
      v7[1] = (2 * a2) | 1;
    }

    else
    {
      *(v7 + 8) = 2 * a2;
    }
  }

  return this;
}

void *re::DynamicString::trimExcess(void *this)
{
  v2 = this + 1;
  v1 = this[1];
  if (v1)
  {
    if (v1 > 1)
    {

      return re::DynamicString::setCapacity(this, (v1 >> 1) + 1);
    }

    else
    {
      this = (*(**this + 40))(*this, this[2]);
      *v2 = 0;
      v2[1] = 0;
      v2[2] = 0;
    }
  }

  return this;
}

void *re::DynamicString::insert(re::DynamicString *this, unint64_t a2, uint64_t a3, uint64_t __c)
{
  v5 = *(this + 1);
  v6 = v5 >> 1;
  v7 = v5 >> 1;
  if (v5)
  {
    v8 = v5 >> 1;
  }

  else
  {
    v8 = v5 >> 1;
  }

  if (v8 < a2)
  {
    re::internal::assertLog(6, a2, a3, __c, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= size()", "insert", 529, a2, v8);
    result = _os_crash("assertion failure: (index <= size()) Index out of range. index = %zu, size = %zu", v21, v22);
    __break(1u);
    return result;
  }

  v9 = __c;
  v12 = a3 + v8 + 1;
  if (v5)
  {
    v13 = *(this + 3);
  }

  else
  {
    v13 = 23;
  }

  if (v12 >= v13)
  {
    re::DynamicString::growCapacity(this, v12);
    v5 = *(this + 1);
    v6 = v5 >> 1;
    v7 = v5 >> 1;
  }

  if ((v5 & 1) == 0)
  {
    v6 = v7;
  }

  if (v6 != a2)
  {
    if (v5)
    {
      v14 = *(this + 2);
    }

    else
    {
      v14 = this + 9;
    }

    memmove(&v14[a2 + a3], &v14[a2], v6 - a2);
    v5 = *(this + 1);
  }

  if (v5)
  {
    v16 = v5 + 2 * a3;
    *(this + 1) = v16;
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_21:
    v15 = this + 9;
    goto LABEL_22;
  }

  *(this + 8) = v5 + 2 * a3;
  if ((*(this + 1) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v15 = *(this + 2);
LABEL_22:
  result = memset(&v15[a2], v9, a3 + a2);
  v18 = *(this + 1);
  if (v18)
  {
    v19 = *(this + 2);
  }

  else
  {
    v19 = this + 9;
  }

  if (v18)
  {
    v20 = v18 >> 1;
  }

  else
  {
    v20 = v18 >> 1;
  }

  v19[v20] = 0;
  return result;
}

void *re::DynamicString::insert(re::DynamicString *this, unint64_t a2, const char *__src, size_t __len)
{
  v5 = *(this + 1);
  v6 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    v6 = v5 >> 1;
  }

  if (v6 < a2)
  {
    re::internal::assertLog(6, a2, __src, __len, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= size()", "insert", 561, a2, v6);
    _os_crash("assertion failure: (index <= size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
    goto LABEL_28;
  }

  v10 = __len + v6 + 1;
  if (v5)
  {
    v11 = *(this + 3);
  }

  else
  {
    v11 = 23;
  }

  if (v10 >= v11)
  {
    re::DynamicString::growCapacity(this, v10);
    v5 = *(this + 1);
  }

  if (v5)
  {
    v13 = *(this + 2);
    if (v13)
    {
      v12 = v5 >> 1;
      if (v5 >> 1 == a2)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_28:
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Unexpected null buffer after growCapacity", "data() != nullptr", "insert", 567);
    result = _os_crash("assertion failure: (data() != nullptr) Unexpected null buffer after growCapacity");
    __break(1u);
    return result;
  }

  v12 = v5 >> 1;
  if (v12 == a2)
  {
    goto LABEL_15;
  }

  v13 = this + 9;
LABEL_14:
  memmove(&v13[a2 + __len], &v13[a2], v12 - a2);
  v5 = *(this + 1);
LABEL_15:
  if (v5)
  {
    v14 = *(this + 2);
  }

  else
  {
    v14 = this + 9;
  }

  result = memmove(&v14[a2], __src, __len);
  v16 = *(this + 1);
  if (v16)
  {
    v17 = v16 + 2 * __len;
    *(this + 1) = v17;
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_22:
    v18 = this + 9;
    goto LABEL_23;
  }

  *(this + 8) = v16 + 2 * __len;
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v18 = *(this + 2);
LABEL_23:
  if (v17)
  {
    v19 = v17 >> 1;
  }

  else
  {
    v19 = v17 >> 1;
  }

  v18[v19] = 0;
  return result;
}

char *re::DynamicString::removeAt(re::DynamicString *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 >> 1;
  }

  else
  {
    v3 = v2 >> 1;
  }

  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "removeAt", 590, a2, v3);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v8, v9);
    __break(1u);
  }

  else
  {
    if (v2)
    {
      v5 = *(this + 2);
      v6 = &v5[v2 >> 1];
    }

    else
    {
      v5 = this + 9;
      v6 = this + (v2 >> 1) + 9;
    }

    result = &v5[a2];
    if (v6 != &v5[a2])
    {
      result = memmove(result, result + 1, v6 - result);
      v2 = *(this + 1);
    }

    if (v2)
    {
      *(this + 1) = v2 - 2;
    }

    else
    {
      *(this + 8) = v2 - 2;
    }
  }

  return result;
}

uint64_t *re::DynamicString::substr@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::DynamicString *this@<X0>, unint64_t a3@<X1>, size_t a4@<X2>)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (v7 < a3)
  {
    re::internal::assertLog(6, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= size()", "substr", 610, a3, v7);
    result = _os_crash("assertion failure: (index <= size()) Index out of range. index = %zu, size = %zu", v12, v13);
    __break(1u);
  }

  else
  {
    if (v7 - a3 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = v7 - a3;
    }

    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    re::DynamicString::setCapacity(a1, 0);
    *a1 = *this;
    re::DynamicString::setCapacity(a1, v9);
    if (*(this + 8))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = this + 9;
    }

    return re::DynamicString::assign(a1, &v10[a3], v9);
  }

  return result;
}

uint64_t *re::DynamicString::find@<X0>(uint64_t *__return_ptr a1@<X8>, re::DynamicString *this@<X0>, char *a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v6 = *(this + 1);
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  if (v7 < a5)
  {
    re::internal::assertLog(6, a3, a4, "assertion failure: '%s' (%s:line %i) offset out of range. offset = %zu, size = %zu", "offset <= this->size()", "find", 631, a5, v7);
    result = _os_crash("assertion failure: (offset <= this->size()) offset out of range. offset = %zu, size = %zu", v13, v14);
    __break(1u);
  }

  else
  {
    if (v6)
    {
      v9 = *(this + 2);
    }

    else
    {
      v9 = this + 9;
    }

    v10 = &v9[v7];
    result = std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(&v9[a5], &v9[v7], a3, &a3[a4]);
    if (v10 == result)
    {
      *a1 = 0;
    }

    else
    {
      if (*(this + 8))
      {
        v12 = *(this + 2);
      }

      else
      {
        v12 = this + 9;
      }

      *a1 = 1;
      a1[1] = result - v12;
    }
  }

  return result;
}

uint64_t *re::DynamicString::rfind@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  v3 = this[1];
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    return re::DynamicString::rfind(a1, this, a3, v4 - 1);
  }

  *a1 = 0;
  return this;
}

uint64_t *re::DynamicString::rfind@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  v4 = this[1];
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5 <= a4)
  {
    re::internal::assertLog(6, a3, "assertion failure: '%s' (%s:line %i) offset out of range. offset = %zu, size = %zu", "offset < size()", "rfind", 667, a4, v5);
    this = _os_crash("assertion failure: (offset < size()) offset out of range. offset = %zu, size = %zu", v12, v13);
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = this[2];
    }

    else
    {
      v6 = this + 9;
    }

    v7 = this + 9;
    v8 = &v6[a4];
    v9 = -&v6[a4];
    v10 = v8 + 1;
    while (*(v10 - 1) != a3)
    {
      v11 = this + 9;
      if (v4)
      {
        v11 = this[2];
      }

      ++v9;
      if (--v10 == v11)
      {
        *a1 = 0;
        return this;
      }
    }

    if (v4)
    {
      v7 = this[2];
    }

    *a1 = 1;
    a1[1] = -&v7[v9];
  }

  return this;
}

uint64_t *re::DynamicString::rfind@<X0>(uint64_t *this@<X0>, const char *__s@<X1>, uint64_t *a3@<X8>)
{
  v4 = this[1];
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    v7 = this;
    v8 = strlen(__s);

    return re::DynamicString::rfind(a3, v7, __s, v8, v5 - 1);
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

uint64_t *re::DynamicString::rfind@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const char *a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v5 = this[1];
  v6 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    v6 = v5 >> 1;
  }

  if (v6 <= a5)
  {
    re::internal::assertLog(6, a3, a4, "assertion failure: '%s' (%s:line %i) offset out of range. offset = %zu, size = %zu", "offset < this->size()", "rfind", 700, a5, v6);
    this = _os_crash("assertion failure: (offset < this->size()) offset out of range. offset = %zu, size = %zu", v24, v25);
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v7 = this[2];
      if (!a4)
      {
LABEL_25:
        *a1 = 0;
        return this;
      }
    }

    else
    {
      v7 = this + 9;
      if (!a4)
      {
        goto LABEL_25;
      }
    }

    v8 = &v7[a5];
    v9 = &v7[a5 + 1];
    if (v7 == v9)
    {
      goto LABEL_25;
    }

    v12 = *a3;
    v10 = a3 + 1;
    v11 = v12;
    v13 = a4 - 1;
    v14 = &v7[a5 + 1];
    do
    {
      v15 = v7;
      while (*v15 != v11)
      {
        if (v15++ == v8)
        {
          goto LABEL_22;
        }
      }

      v17 = v13;
      v18 = v10;
      v19 = v15;
      while (v17)
      {
        if (v19 == v8)
        {
          goto LABEL_22;
        }

        v21 = *++v19;
        v20 = v21;
        v22 = *v18++;
        --v17;
        if (v20 != v22)
        {
          goto LABEL_21;
        }
      }

      v14 = v15;
LABEL_21:
      v7 = (v15 + 1);
    }

    while (v15 != v8);
LABEL_22:
    if (v14 == v9)
    {
      goto LABEL_25;
    }

    if (v5)
    {
      v23 = this[2];
    }

    else
    {
      v23 = this + 9;
    }

    *a1 = 1;
    a1[1] = v14 - v23;
  }

  return this;
}

void *re::DynamicString::format@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::DynamicString *this@<X0>, re::Allocator *a3@<X1>, const char *a4@<X2>, ...)
{
  va_start(va, a4);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = this;
  *(a1 + 1) = 0;
  re::DynamicString::setCapacity(a1, 0);
  return re::DynamicString::vassignf(a1, a3, va);
}

uint64_t *re::DynamicString::format@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::DynamicString *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  re::DynamicString::setCapacity(a1, 0);
  return re::DynamicString::vassignf(a1, this, va);
}

__n128 re::internal::anonymous namespace::RegexOperationList::parseRegex(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5, _BYTE *a6)
{
  v6 = a4;
  *(a2 + 16) = 0;
  v105 = a2;
  ++*(a2 + 24);
  if (a4 >= a5)
  {
LABEL_191:
    *a1 = 1;
    *(a1 + 8) = v6;
    return result;
  }

  v103 = a6 + 1;
  while (1)
  {
    v115.n128_u8[0] = 0;
    v115.n128_u64[1] = -1;
    v116 = 0;
    v120 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 1;
    if (*v6 != 40)
    {
      v15 = 1;
      v111 = 1;
      *&v112 = 0;
LABEL_30:
      v16 = 1;
      goto LABEL_31;
    }

    v106 = v6;
    v9 = (v6 + 1);
    do
    {
      if (v9 == a5)
      {
        goto LABEL_27;
      }

      v131 = 0;
      v129 = 0;
      v128 = 0uLL;
      v130 = 0;
      if (v125[0] == 1)
      {
        v11 = *&v125[8];
        if (*&v125[8])
        {
          __endptr[0] = *(a3 + 336);
          re::DynamicArray<unsigned long>::add(&v116, __endptr);
          v12 = *v11;
          if (v12 == 41)
          {
            v13 = 1;
            v111 = 1;
            *&v112 = v11 + 1;
            v9 = v11;
          }

          else
          {
            if (v12 == 124)
            {
              v9 = v11 + 1;
            }

            else
            {
              v9 = v11;
            }

            if (v12 == 124)
            {
              v13 = 2;
            }

            else
            {
              v13 = 3;
            }
          }
        }

        else
        {
          v13 = 3;
        }
      }

      else
      {
        *__endptr = *&v125[8];
        re::DynamicString::DynamicString(&v122, &v126);
        v111 = 0;
        v112 = *__endptr;
        *v113 = v122;
        v114 = v124;
        result = v123;
        *&v113[8] = v123;
        if (v126.n128_u64[0])
        {
          if (v126.n128_u8[8])
          {
            (*(*v126.n128_u64[0] + 40))(v126.n128_u64[0], v127);
          }

          result = 0uLL;
          v127 = 0u;
          v126 = 0u;
        }

        v13 = 1;
      }

      v14 = v128.n128_u64[0];
      if (v128.n128_u64[0])
      {
        a2 = v131;
        if (v131)
        {
          v14 = (*(*v128.n128_u64[0] + 40))(v128.n128_u64[0]);
        }
      }
    }

    while (v13 == 2);
    if (v13 == 3)
    {
LABEL_27:
      re::DynamicString::format(v125, "Regular expression group missing corresponding ')'.", a2, v103);
      v15 = 0;
      v16 = 0;
      result = *v125;
      v111 = 0;
      *&v112 = 100;
      *(&v112 + 1) = re::FoundationErrorCategory(void)::instance;
      *v113 = *v125;
      *&v113[16] = *&v125[16];
      v114 = v126.n128_u64[0];
LABEL_28:
      v6 = v106;
      goto LABEL_31;
    }

    if ((v111 & 1) == 0)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_28;
    }

    v6 = v106;
    if (!v112)
    {
      v15 = 1;
      goto LABEL_30;
    }

    v115.n128_u8[0] = 5;
    v44 = *(a3 + 128);
    v45 = *(a3 + 136);
    v115.n128_u64[1] = v45;
    if (v45 >= v44)
    {
      v46 = v45 + 1;
      if (v44 < v45 + 1)
      {
        if (*(a3 + 120))
        {
          v47 = 2 * v44;
          v23 = v44 == 0;
          v48 = 8;
          if (!v23)
          {
            v48 = v47;
          }

          if (v48 <= v46)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((a3 + 120), v49);
        }

        else
        {
          re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((a3 + 120), v46);
          ++*(a3 + 144);
        }
      }
    }

    v16 = 0;
    v97 = *(a3 + 152) + 40 * *(a3 + 136);
    *(v97 + 32) = 0;
    *(v97 + 24) = 0;
    *(v97 + 8) = 0;
    *(v97 + 16) = 0;
    *v97 = 0;
    *v97 = v116;
    v116 = 0;
    *(v97 + 8) = v117;
    v117 = 0;
    v98 = *(v97 + 16);
    *(v97 + 16) = v118;
    v118 = v98;
    v99 = *(v97 + 32);
    *(v97 + 32) = v120;
    v120 = v99;
    ++v119;
    ++*(v97 + 24);
    ++*(a3 + 136);
    ++*(a3 + 144);
    v15 = 1;
LABEL_31:
    v17 = v116;
    if (v116)
    {
      a2 = v120;
      if (v120)
      {
        v17 = (*(*v116 + 40))();
      }
    }

    if (!v16)
    {
      break;
    }

    *v125 = &unk_1F5CCF100;
    *&v127 = 0;
    *&v125[16] = 0;
    v126.n128_u64[0] = 0;
    *&v125[8] = 0;
    v126.n128_u32[2] = 1;
    v18 = *v6;
    if (v18 == 91)
    {
      v19 = (v6 + 1);
      if ((v6 + 1) == a5)
      {
LABEL_76:
        if (*v19 != 93)
        {
          re::DynamicString::format(__endptr, "Character set missing corresponding ']'.", a2);
          v15 = 0;
          result = *__endptr;
          v111 = 0;
          *&v112 = 100;
          *(&v112 + 1) = re::FoundationErrorCategory(void)::instance;
          *v113 = *__endptr;
          *&v113[16] = v122;
          v114 = v123.n128_u64[0];
          goto LABEL_95;
        }
      }

      else
      {
        while (*v19 != 93)
        {
          v128.n128_u8[0] = 0;
          v128.n128_u64[1] = -1;
          __endptr[0] = &unk_1F5CCF1A0;
          if (a5 - v19 >= 2 && *v19 == 92)
          {
            LOBYTE(__endptr[1]) = v19[1];
            v19 += 2;
            v128.n128_u8[0] = 2;
            v128.n128_u64[1] = *(a3 + 56);
          }

          else
          {
            __endptr[0] = &unk_1F5CCF140;
            if ((a5 - v19) <= 2)
            {
              goto LABEL_57;
            }

            v20 = 0;
            v21 = *v19;
            do
            {
              v23 = v22 == v21 || v20++ == 8;
            }

            while (!v23);
            if (v22 == v21 || v19[1] != 45)
            {
              goto LABEL_57;
            }

            v24 = 0;
            v26 = v19 + 2;
            v25 = v19[2];
            do
            {
            }

            while (v27 != v25 && v24++ != 8);
            if (v27 == v25)
            {
LABEL_57:
              __endptr[0] = &unk_1F5CCF1D0;
              v29 = *v19++;
              LOBYTE(__endptr[1]) = v29;
              v128.n128_u8[0] = 1;
              v128.n128_u64[1] = *(a3 + 16);
            }

            else
            {
              v30 = v6;
              if (v25 >= v21)
              {
                v26 = v19;
              }

              LOBYTE(__endptr[1]) = *v26;
              if (v21 <= v25)
              {
                LOBYTE(v21) = v25;
              }

              BYTE1(__endptr[1]) = v21;
              v128.n128_u8[0] = 3;
              v31 = *(a3 + 88);
              v32 = *(a3 + 96);
              v128.n128_u64[1] = v32;
              if (v32 >= v31)
              {
                v33 = v32 + 1;
                if (v31 < v32 + 1)
                {
                  if (*(a3 + 80))
                  {
                    v34 = 2 * v31;
                    v23 = v31 == 0;
                    v35 = 8;
                    if (!v23)
                    {
                      v35 = v34;
                    }

                    if (v35 <= v33)
                    {
                      v36 = v33;
                    }

                    else
                    {
                      v36 = v35;
                    }
                  }

                  else
                  {
                    ++*(a3 + 104);
                  }
                }
              }

              v19 += 3;
              v37 = *(a3 + 112) + 16 * *(a3 + 96);
              *v37 = &unk_1F5CCF140;
              *(v37 + 8) = __endptr[1];
              ++*(a3 + 96);
              ++*(a3 + 104);
              v6 = v30;
            }
          }

          __endptr[0] = *(a3 + 256);
          re::DynamicArray<unsigned long>::add(&v125[8], __endptr);
          if (v19 == a5)
          {
            goto LABEL_76;
          }
        }
      }

      v107 = v6;
      v111 = 1;
      *&v112 = v19 + 1;
      v115.n128_u8[0] = 6;
      v38 = *(a3 + 168);
      v115.n128_u64[1] = *(a3 + 176);
      v39 = v115.n128_u64[1] + 1;
      if (v115.n128_u64[1] >= v38 && v38 < v39)
      {
        if (*(a3 + 160))
        {
          v64 = 2 * v38;
          v23 = v38 == 0;
          v65 = 8;
          if (!v23)
          {
            v65 = v64;
          }

          if (v65 <= v39)
          {
            v66 = v115.n128_u64[1] + 1;
          }

          else
          {
            v66 = v65;
          }
        }

        else
        {
          ++*(a3 + 184);
        }
      }

      v41 = *(a3 + 192) + 48 * *(a3 + 176);
      *(v41 + 40) = 0;
      *v41 = &unk_1F5CCF100;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      *(v41 + 8) = *&v125[8];
      *&v125[8] = 0;
      *(v41 + 16) = *&v125[16];
      *&v125[16] = 0;
      v42 = *(v41 + 24);
      *(v41 + 24) = v126.n128_u64[0];
      v126.n128_u64[0] = v42;
      v43 = *(v41 + 40);
      *(v41 + 40) = v127;
      *&v127 = v43;
      ++v126.n128_u32[2];
      ++*(v41 + 32);
      ++*(a3 + 176);
      ++*(a3 + 184);
      v15 = 1;
      v6 = v107;
    }

    else
    {
      v15 = 1;
      v111 = 1;
      *&v112 = 0;
    }

LABEL_95:
    *v125 = &unk_1F5CCF100;
    v50 = *&v125[8];
    if (*&v125[8] && v127)
    {
      v50 = (*(**&v125[8] + 40))(*&v125[8]);
    }

    if (v18 == 91)
    {
      break;
    }

    *v125 = &unk_1F5CCF170;
    v125[8] = 0;
    v51 = *v6;
    switch(v51)
    {
      case '$':
        v52 = 3;
LABEL_108:
        v125[8] = v52;
        v53 = v6;
        v111 = 1;
        *&v112 = v6 + 1;
        v115.n128_u8[0] = 4;
        v54 = *(a3 + 208);
        v55 = *(a3 + 216);
        v115.n128_u64[1] = v55;
        if (v55 >= v54)
        {
          v56 = v55 + 1;
          if (v54 < v55 + 1)
          {
            if (*(a3 + 200))
            {
              v57 = 2 * v54;
              v23 = v54 == 0;
              v58 = 8;
              if (!v23)
              {
                v58 = v57;
              }

              if (v58 <= v56)
              {
                v59 = v56;
              }

              else
              {
                v59 = v58;
              }
            }

            else
            {
              ++*(a3 + 224);
            }
          }
        }

        v67 = *(a3 + 216);
        v68 = *(a3 + 232) + 16 * v67;
        *v68 = &unk_1F5CCF170;
        *(v68 + 8) = v125[8];
        *(a3 + 216) = v67 + 1;
        ++*(a3 + 224);
        v6 = v53;
        goto LABEL_138;
      case '.':
        v52 = 1;
        goto LABEL_108;
      case '^':
        v52 = 2;
        goto LABEL_108;
    }

    *v125 = &unk_1F5CCF1A0;
    v125[8] = -1;
    if (&a5[-v6] >= 2 && *v6 == 92)
    {
      v125[8] = *(v6 + 1);
      v111 = 1;
      *&v112 = v6 + 2;
      v115.n128_u8[0] = 2;
      v115.n128_u64[1] = *(a3 + 56);
    }

    else
    {
      v60 = 0;
      *v125 = &unk_1F5CCF1D0;
      v125[8] = -1;
      v61 = *v6;
      v125[8] = *v6;
      do
      {
      }

      while (v62 != v61 && v60++ != 8);
      if (v62 == v61)
      {
        goto LABEL_191;
      }

      v111 = 1;
      *&v112 = v6 + 1;
      v115.n128_u8[0] = 1;
      v115.n128_u64[1] = *(a3 + 16);
    }

LABEL_138:
    if (!v112)
    {
      goto LABEL_191;
    }

    v69 = *(a3 + 256);
    if (v112 == a5)
    {
      v70 = 0;
      v72 = 1;
      LODWORD(v75) = 1;
LABEL_148:
      v74 = v112;
      goto LABEL_172;
    }

    v70 = 0;
    v71 = *v112;
    v72 = 1;
    if (v71 > 0x3E)
    {
      if (v71 == 63)
      {
        LODWORD(v75) = 0;
        v82 = *(v112 + 1);
        v70 = v82 != 63;
        if (v82 == 63)
        {
          v74 = v112 + 2;
        }

        else
        {
          v74 = v112 + 1;
        }

        v72 = 1;
      }

      else
      {
        LODWORD(v75) = 1;
        v74 = v112;
        if (v71 == 123)
        {
          __endptr[0] = 0;
          v76 = strtol((v112 + 1), __endptr, 10);
          if ((v76 & 0x8000000000000000) != 0)
          {
            v100 = "Repetition brace requires valid positive number.";
LABEL_202:
            re::DynamicString::format(v125, v100, v77, v103);
            result = *v125;
            v101 = *&v125[16];
            v102 = v126.n128_u64[0];
            *a1 = 0;
            *(a1 + 8) = 100;
            *(a1 + 16) = re::FoundationErrorCategory(void)::instance;
            *(a1 + 24) = result;
            *(a1 + 40) = v101;
            *(a1 + 48) = v102;
            return result;
          }

          v75 = v76;
          if (v76 >= 0xFFFFFFFF)
          {
            v100 = "Repetition brace exceeded maximum match count.";
            goto LABEL_202;
          }

          v78 = __endptr[0];
          v79 = *__endptr[0];
          if (v79 == 44)
          {
            v80 = strtol(__endptr[0] + 1, __endptr, 10);
            if ((v80 & 0x8000000000000000) != 0)
            {
              v100 = "Repetition brace maximum requires valid positive number.";
              goto LABEL_202;
            }

            v72 = v80;
            if (v80 >= 0xFFFFFFFF)
            {
              v100 = "Repetition brace maximum exceeded maximum match count.";
              goto LABEL_202;
            }

            if (v80 < v75)
            {
              v100 = "Repetition brace maximum must be larger than the minimum.";
              goto LABEL_202;
            }

            v78 = __endptr[0];
            v79 = *__endptr[0];
          }

          else
          {
            v72 = v76;
          }

          if (v79 != 125)
          {
            v100 = "Repetition brace expected closing '}'.";
            goto LABEL_202;
          }

          v84 = v78[1];
          v83 = v78 + 1;
          v70 = v84 != 63;
          if (v84 == 63)
          {
            v74 = (v83 + 1);
          }

          else
          {
            v74 = v83;
          }
        }
      }
    }

    else
    {
      if (v71 == 42)
      {
        LODWORD(v75) = 0;
        v81 = *(v112 + 1);
        v70 = v81 != 63;
        if (v81 == 63)
        {
          v74 = v112 + 2;
        }

        else
        {
          v74 = v112 + 1;
        }
      }

      else
      {
        if (v71 != 43)
        {
          LODWORD(v75) = 1;
          goto LABEL_148;
        }

        v73 = *(v112 + 1);
        v70 = v73 != 63;
        if (v73 == 63)
        {
          v74 = v112 + 2;
        }

        else
        {
          v74 = v112 + 1;
        }

        LODWORD(v75) = 1;
      }

      v72 = 0x7FFFFFFF;
    }

LABEL_172:
    *a1 = 1;
    v6 = v74;
    *(a1 + 8) = v74;
    *v125 = *(a3 + 296);
    v85 = re::DynamicArray<unsigned long>::add(v105, v125);
    v86 = *(a3 + 288);
    v87 = *(a3 + 296);
    if (v87 >= v86)
    {
      v88 = v87 + 1;
      if (v86 < v87 + 1)
      {
        if (*(a3 + 280))
        {
          v89 = 2 * v86;
          v23 = v86 == 0;
          v90 = 8;
          if (!v23)
          {
            v90 = v89;
          }

          if (v90 <= v88)
          {
            v91 = v88;
          }

          else
          {
            v91 = v90;
          }

          re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 280), v91);
        }

        else
        {
          re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 280), v88);
          ++*(a3 + 304);
        }
      }
    }

    v92 = *(a3 + 312) + 24 * *(a3 + 296);
    *v92 = v69;
    *(v92 + 8) = v70;
    *(v92 + 11) = v110;
    *(v92 + 9) = v109;
    *(v92 + 12) = v75;
    *(v92 + 16) = v72;
    ++*(a3 + 296);
    ++*(a3 + 304);
    v93 = *a6;
    if (*a6)
    {
      v94 = 0;
      v95 = v103;
      do
      {
        v94 |= v93 == *v6;
        v96 = *v95++;
        v93 = v96;
      }

      while (v96);
      if (v94)
      {
        goto LABEL_191;
      }
    }

    if (v6 >= a5)
    {
      goto LABEL_191;
    }
  }

  if (v15)
  {
    goto LABEL_138;
  }

  *v125 = v112;
  re::DynamicString::DynamicString(&v125[16], v113);
  *a1 = 0;
  *(a1 + 8) = *v125;
  *(a1 + 24) = *&v125[16];
  *(a1 + 48) = v127;
  result = v126;
  *(a1 + 32) = v126;
  if (*v113)
  {
    if (v113[8])
    {
      (*(**v113 + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::anonymous namespace::RegexOperationList>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v12 = 2 * v4;
      v13 = v4 == 0;
      v14 = 8;
      if (!v13)
      {
        v14 = v12;
      }

      if (v14 <= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v14;
      }

      result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(result, v15);
    }

    else
    {
      result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(v3, v6);
      ++*(v3 + 6);
    }
  }

  v8 = *(v3 + 4) + 40 * *(v3 + 2);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>::~BucketArray(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  return a1;
}

BOOL re::internal::RegexRoot::fullMatch(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a1[47];
  if (!v5)
  {
    return a2 == a3;
  }

  v43[0] = a1;
  v43[1] = a2;
  v43[2] = a3;
  v44 = a2;
  v45 = 0;
  v46 = 0;
  v47 = 1;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v51 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 1;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v8 = a1[49];
  v9 = &v8[v5];
  v42 = 0;
  while (1)
  {
    v10 = *v8;
    v11 = a1[42];
    if (v11 <= *v8)
    {
      goto LABEL_54;
    }

    {
      goto LABEL_13;
    }

    if (v44 == a3)
    {
      break;
    }

    do
    {
      v11 = a1[42];
      if (v11 <= v10)
      {
        v52 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v56 = 797;
        v57 = 2048;
        v58 = v10;
        v59 = 2048;
        v60 = v11;
        _os_log_send_and_compose_impl(v32, &v52, &v61, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v36, v37[0]);
        _os_crash_msg();
        __break(1u);
LABEL_54:
        v52 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v56 = 797;
        v57 = 2048;
        v58 = v10;
        v59 = 2048;
        v60 = v11;
        _os_log_send_and_compose_impl(v35, &v52, &v61, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v36, v37[0]);
        _os_crash_msg();
        __break(1u);
      }

      {
        v12 = v44 == a3;
      }

      else
      {
        v12 = 1;
      }
    }

    while (!v12);
    if (v44 == a3)
    {
      break;
    }

LABEL_13:
    if (++v8 == v9)
    {
      v13 = 0;
      goto LABEL_34;
    }
  }

  *(a4 + 16) = 0;
  ++*(a4 + 24);
  v14 = v41;
  if (v41)
  {
    v15 = 0;
    do
    {
      if (*v16 == 5)
      {
        v17 = v16;
        v18 = *(a4 + 8);
        v19 = *(a4 + 16);
        if (v19 >= v18)
        {
          v20 = v19 + 1;
          if (v18 < v19 + 1)
          {
            if (*a4)
            {
              if (v18)
              {
                v21 = 2 * v18;
              }

              else
              {
                v21 = 8;
              }

              if (v21 <= v20)
              {
                v22 = v19 + 1;
              }

              else
              {
                v22 = v21;
              }

              re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v22);
            }

            else
            {
              re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v20);
              ++*(a4 + 24);
            }
          }

          v19 = *(a4 + 16);
        }

        *(*(a4 + 32) + 16 * v19) = *(v17 + 1);
        ++*(a4 + 16);
        ++*(a4 + 24);
      }

      ++v15;
    }

    while (v14 != v15);
  }

  v13 = 1;
LABEL_34:
  v23 = v50;
  if (v50)
  {
    v24 = 0;
    do
    {
      re::BucketArray<unsigned long,8ul>::deinit(v25 + 64);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v25 + 64);
      v26 = *(v25 + 48);
      if (v26)
      {
        for (i = 0; i != v26; ++i)
        {
        }
      }

      while (*(v25 + 16))
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket((v25 + 8));
      }

      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v25 + 8);
      *(v25 + 48) = 0;
      ++*(v25 + 56);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v25 + 8);
      ++v24;
    }

    while (v24 != v23);
  }

  while (v46)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v45);
  }

  if (v45 && (v47 & 1) == 0)
  {
    (*(*v45 + 40))();
  }

  return v13;
}

uint64_t re::internal::anonymous namespace::RegexOperationList::unwindMatch(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = v4 - 1;
  while (1)
  {
    v9 = *(a1 + 16);
    if (v9 <= v8)
    {
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v28 = 797;
      v29 = 2048;
      v30 = v8;
      v31 = 2048;
      v32 = v9;
      _os_log_send_and_compose_impl(v16, &v24, &v33, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
LABEL_21:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v28 = 797;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v3;
      _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
LABEL_25:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v28 = 797;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v3;
      _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    v10 = *a2;
    v9 = *(*(a1 + 32) + 8 * v8);
    v3 = *(*a2 + 296);
    if (v3 <= v9)
    {
      goto LABEL_21;
    }

    v11 = (v10[39] + 24 * v9);
    v9 = *v11;
    v3 = v10[32];
    if (v3 <= *v11)
    {
      goto LABEL_25;
    }

    v3 = a2[3];
    {
      break;
    }

    --v8;
LABEL_13:
    if (v8 >= v4)
    {
      return 0;
    }
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  return 1;
}

uint64_t *re::internal::regularExpressionCreate@<X0>(re::internal *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v34 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 400, 8);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v5[17] = 0u;
  v5[18] = 0u;
  v5[19] = 0u;
  v5[20] = 0u;
  v5[21] = 0u;
  v5[22] = 0u;
  v5[23] = 0u;
  v5[24] = 0u;
  *v31 = &unk_1F5CCF200;
  *&v32 = v31;
  v30 = v29;
  v28 = v5;
  v29[0] = &unk_1F5CCF200;
  std::__function::__value_func<void ()(re::internal::RegexRoot *)>::~__value_func[abi:nn200100](v31);
  v6 = v28;
  v7 = &v2[strlen(v2)];
  do
  {
    if (v2 >= v7)
    {
      goto LABEL_22;
    }

    v27 = 0;
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    if (v31[0] != 1)
    {
      v17 = v31[0];
      v18 = *&v31[8];
      re::DynamicString::DynamicString(&v19, &v32);
      if (v32)
      {
        if (BYTE8(v32))
        {
          (*(*v32 + 40))(v32, v33);
        }

        v33 = 0u;
        v32 = 0u;
      }

      goto LABEL_13;
    }

    v9 = *&v31[8];
    if (!*&v31[8])
    {
      re::DynamicString::format(&v22, "Unknown error parsing regular expression.", v8);
      v17 = 0;
      *&v18 = 100;
      *(&v18 + 1) = re::FoundationErrorCategory(void)::instance;
      v19 = v22;
      v20 = v23;
      v21 = v24;
LABEL_13:
      v11 = 1;
      goto LABEL_17;
    }

    *&v22 = v6[42];
    re::DynamicArray<unsigned long>::add((v6 + 45), &v22);
    if (!*v9)
    {
      v11 = 3;
LABEL_16:
      v2 = v9;
      goto LABEL_17;
    }

    if (*v9 != 124)
    {
      re::DynamicString::format(&v22, "Could not parse regular expression: %s.", v10, v9);
      v17 = 0;
      *&v18 = 100;
      *(&v18 + 1) = re::FoundationErrorCategory(void)::instance;
      v19 = v22;
      v20 = v23;
      v21 = v24;
      v11 = 1;
      goto LABEL_16;
    }

    v2 = v9 + 1;
    v11 = 2;
LABEL_17:
    if (v25[0] && v27)
    {
      (*(*v25[0] + 40))();
    }
  }

  while (v11 == 2);
  if (v11 == 3)
  {
LABEL_22:
    v17 = 1;
    goto LABEL_23;
  }

  if ((v17 & 1) == 0)
  {
    *v31 = v18;
    re::DynamicString::DynamicString(&v31[16], &v19);
    *a2 = 0;
    *(a2 + 8) = *v31;
    v14 = v33;
    *(a2 + 24) = *&v31[16];
    *(a2 + 48) = v14;
    *(a2 + 32) = v32;
    goto LABEL_35;
  }

LABEL_23:
  v12 = v28;
  v13 = v30;
  v28 = 0;
  *v31 = v12;
  if (!v30)
  {
    *a2 = 1;
    *(&v32 + 1) = 0;
    *v31 = 0;
    *(a2 + 8) = v12;
LABEL_29:
    *(a2 + 40) = 0;
    goto LABEL_34;
  }

  if (v30 == v29)
  {
    *(&v32 + 1) = &v31[8];
    (*(*v30 + 24))(v30, &v31[8]);
    v15 = *v31;
    v13 = *(&v32 + 1);
    *a2 = 1;
    *v31 = 0;
    *(a2 + 8) = v15;
    if (v13)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v30 = 0;
  *a2 = 1;
  *(&v32 + 1) = v13;
  *v31 = 0;
  *(a2 + 8) = v12;
LABEL_31:
  if (v13 == &v31[8])
  {
    *(a2 + 40) = a2 + 16;
    (*(*v13 + 24))(v13);
  }

  else
  {
    *(a2 + 40) = v13;
    *(&v32 + 1) = 0;
  }

LABEL_34:
  std::unique_ptr<re::internal::RegexRoot,std::function<void ()(re::internal::RegexRoot*)>>::~unique_ptr[abi:nn200100](v31);
LABEL_35:
  if (v17 & 1) == 0 && v19 && (BYTE8(v19))
  {
    (*(*v19 + 40))();
  }

  return std::unique_ptr<re::internal::RegexRoot,std::function<void ()(re::internal::RegexRoot*)>>::~unique_ptr[abi:nn200100](&v28);
}

uint64_t re::internal::regularExpressionFullMatch@<X0>(char *__s@<X1>, void **a2@<X0>, uint64_t a3@<X8>)
{
  v6 = strlen(__s);
  v12 = 0;
  v10 = 0uLL;
  v9 = 0;
  v11 = 0;
  result = re::internal::RegexRoot::fullMatch(*a2, __s, &__s[v6], &v9);
  if (result)
  {
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 40) = v12;
    *(a3 + 32) = 1;
    *a3 = 1;
  }

  else
  {
    result = v9;
    *a3 = 0;
    if (result && v12)
    {
      v8 = *(*result + 40);

      return v8();
    }
  }

  return result;
}

__n128 re::DynamicArray<re::internal::anonymous namespace::RegexToken>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v9 = 2 * v4;
      v10 = v4 == 0;
      v11 = 8;
      if (!v10)
      {
        v11 = v9;
      }

      if (v11 <= v6)
      {
        v12 = v6;
      }

      else
      {
        v12 = v11;
      }

      re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
    }

    else
    {
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v6);
      ++*(a1 + 24);
    }
  }

  result = *a2;
  *(*(a1 + 32) + 16 * (*(a1 + 16))++) = *a2;
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::anonymous namespace::RegexTokenEscapedCharacter>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v10 = 2 * v4;
      v11 = v4 == 0;
      v12 = 8;
      if (!v11)
      {
        v12 = v10;
      }

      if (v12 <= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      ++*(v3 + 6);
    }
  }

  v8 = *(v3 + 2);
  v9 = *(v3 + 4) + 16 * v8;
  *v9 = &unk_1F5CCF1A0;
  *(v9 + 8) = *(a2 + 8);
  *(v3 + 2) = v8 + 1;
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::anonymous namespace::RegexTokenCharacter>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v10 = 2 * v4;
      v11 = v4 == 0;
      v12 = 8;
      if (!v11)
      {
        v12 = v10;
      }

      if (v12 <= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      ++*(v3 + 6);
    }
  }

  v8 = *(v3 + 2);
  v9 = *(v3 + 4) + 16 * v8;
  *v9 = &unk_1F5CCF1D0;
  *(v9 + 8) = *(a2 + 8);
  *(v3 + 2) = v8 + 1;
  ++*(v3 + 6);
  return result;
}

uint64_t re::internal::anonymous namespace::RegexTokenCharacterSet::tryMatch(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = 8 * v2 - 8;
    do
    {
      v6 = *v4;
      v7 = *(*a2 + 256);
      if (v7 <= *v4)
      {
        v21 = 0;
        memset(v30, 0, sizeof(v30));
        v11 = MEMORY[0x1E69E9C10];
        v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v22 = 136315906;
        v23 = "operator[]";
        v24 = 1024;
        if (v12)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v25 = 797;
        v26 = 2048;
        v27 = v6;
        v28 = 2048;
        v29 = v7;
        _os_log_send_and_compose_impl(v13, &v21, v30, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v14, v15);
        _os_crash_msg();
        __break(1u);
      }

      if (v8)
      {
        break;
      }

      ++v4;
      v9 = v5;
      v5 -= 8;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t re::internal::anonymous namespace::RegexToken::match(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = &v76;
  v99 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v9 = *(a1 + 1);
        v10 = *(*a3 + 16);
        if (v10 <= v9)
        {
          goto LABEL_101;
        }

        v11 = (*(*a3 + 32) + 16 * v9);
        v12 = 1;
        goto LABEL_51;
      case 2u:
        v9 = *(a1 + 1);
        v10 = *(*a3 + 56);
        if (v10 <= v9)
        {
          goto LABEL_93;
        }

        v11 = (*(*a3 + 72) + 16 * v9);
        v12 = 2;
        goto LABEL_51;
      case 3u:
        v9 = *(a1 + 1);
        v10 = *(*a3 + 96);
        if (v10 <= v9)
        {
          goto LABEL_85;
        }

        v11 = (*(*a3 + 112) + 16 * v9);
        v12 = 3;
LABEL_51:
    }

    goto LABEL_113;
  }

  if (v8 == 4)
  {
    v9 = *(a1 + 1);
    v10 = *(*a3 + 216);
    if (v10 <= v9)
    {
      goto LABEL_105;
    }

    v11 = (*(*a3 + 232) + 16 * v9);
    v12 = 4;
    goto LABEL_51;
  }

  if (v8 != 5)
  {
    if (v8 == 6)
    {
      v9 = *(a1 + 1);
      v10 = *(*a3 + 176);
      if (v10 <= v9)
      {
        goto LABEL_89;
      }

      v11 = (*(*a3 + 192) + 48 * v9);
      v12 = 6;
      goto LABEL_51;
    }

LABEL_113:
    re::internal::assertLog(4, a2, a2, "assertion failure: '%s' (%s:line %i) Invalid token type.", "!Unreachable code", "match", 915);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid token type.");
    __break(1u);
    return result;
  }

  v9 = *(a1 + 1);
  v10 = *(*a3 + 136);
  if (v10 <= v9)
  {
    goto LABEL_97;
  }

  v13 = *(*a3 + 152);
  LOBYTE(v76) = 0;
  v14 = v13 + 40 * v9;
  *(&v76 + 1) = 0;
  *&v77 = 0;
  DWORD2(v77) = 1;
  *&v79 = 0;
  v78 = 0uLL;
  DWORD2(v79) = 0;
  v80 = 0;
  v81 = 0;
  v82 = 1;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v86 = 0;
  v70 = a3[3];
  v15 = *(v14 + 16);
  v9 = *(a2 + 4);
  if (v9 < 1)
  {
LABEL_26:
    if (*v6 == 1)
    {
      LOBYTE(v76) = 1;
      if (v9 < *(a2 + 8))
      {
        if (v15)
        {
          v68 = a3[3];
          do
          {
            v18 = 0;
            v17 = 0;
            while (1)
            {
              *v72 = 0;
              *&v72[8] = 0;
              *&v72[16] = 1;
              *&v73[12] = 0;
              v74 = 0;
              *&v73[4] = 0;
              v75 = 0;
              v10 = *(v14 + 16);
              if (v10 <= v17)
              {
                goto LABEL_77;
              }

              v10 = *(*(v14 + 32) + 8 * v17);
              v7 = *(*a3 + 336);
              if (v7 <= v10)
              {
                goto LABEL_81;
              }

              {
                break;
              }

              v18 = ++v17 >= v15;
              if (v15 == v17)
              {
                goto LABEL_38;
              }
            }

            *re::BucketArray<unsigned long,8ul>::addUninitialized(&v80) = v17;
            if (v18 || v68 == a3[3])
            {
              break;
            }

            v9 = (v9 + 1);
            v68 = a3[3];
          }

          while (v9 < *(a2 + 8));
        }
      }
    }

LABEL_38:
    v19 = a3[9];
    v10 = a3[5];
    if (v19 + 1 > v10 << 6)
    {
      v10 = a3[5];
    }

    v9 = v19 >> 6;
    if (v10 <= v19 >> 6)
    {
      goto LABEL_109;
    }

    v20 = a3[8];
    if (a3[6])
    {
      v20 = a3 + 7;
    }

    v21 = v20[v9];
    ++a3[9];
    ++*(a3 + 20);
    v22 = v21 + 120 * (v19 & 0x3F);
    *v22 = v76;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 32) = 0;
    *(v22 + 56) = 0;
    *(&v95 + 1) = 0;
    *&v96 = 0;
    v94 = 0uLL;
    *(v22 + 24) = 3;
    LODWORD(v95) = 3;
    if (v94 && (v95 & 1) == 0)
    {
      (*(*v94 + 40))();
    }

    v23 = *(v22 + 48);
    *(v22 + 48) = v79;
    *&v79 = v23;
    ++*(v22 + 56);
    ++DWORD2(v79);
    *(v22 + 64) = 0;
    *(v22 + 72) = 0;
    v24 = v22 + 64;
    v25 = 1;
    *(v24 + 16) = 1;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0;
    *(v24 + 24) = 0;
    *(v24 + 48) = 0;
    re::BucketArray<RESubscriptionHandle,8ul>::swap(v24, &v80);
    LOBYTE(v94) = 5;
    v26 = a3[3] - v70;
    *(&v94 + 1) = a3[9] - 1;
    *&v95 = v70;
    *(&v95 + 1) = v26;
  }

  else
  {
    if (v15)
    {
      v16 = 0;
      v17 = 40;
      while (1)
      {
        v67 = v16;
        v9 = 0;
        while (1)
        {
          *v72 = 0;
          *&v72[8] = 0;
          *&v72[16] = 1;
          *&v73[12] = 0;
          v74 = 0;
          *&v73[4] = 0;
          v75 = 0;
          v10 = *(v14 + 16);
          if (v10 <= v9)
          {
            v71 = 0;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v94 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v87 = 136315906;
            *&v87[4] = "operator[]";
            v88 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v89 = 797;
            v90 = 2048;
            v91 = v9;
            v92 = 2048;
            v93 = v10;
            _os_log_send_and_compose_impl(v34, &v71, &v94, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v71 = 0;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v94 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v87 = 136315906;
            *&v87[4] = "operator[]";
            v88 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v89 = 797;
            v90 = 2048;
            v91 = v10;
            v92 = 2048;
            v93 = v7;
            _os_log_send_and_compose_impl(v37, &v71, &v94, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v71 = 0;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v94 = 0u;
            v38 = MEMORY[0x1E69E9C10];
            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v87 = 136315906;
            *&v87[4] = "operator[]";
            v88 = 1024;
            if (v39)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            v89 = 797;
            v90 = 2048;
            v91 = v17;
            v92 = 2048;
            v93 = v10;
            _os_log_send_and_compose_impl(v40, &v71, &v94, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v71 = 0;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v94 = 0u;
            v41 = MEMORY[0x1E69E9C10];
            v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v87 = 136315906;
            *&v87[4] = "operator[]";
            v88 = 1024;
            if (v42)
            {
              v43 = 3;
            }

            else
            {
              v43 = 2;
            }

            v89 = 797;
            v90 = 2048;
            v91 = v10;
            v92 = 2048;
            v93 = v7;
            _os_log_send_and_compose_impl(v43, &v71, &v94, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            *v72 = 0;
            v7[4] = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v44 = MEMORY[0x1E69E9C10];
            v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v94) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v94) = 1024;
            if (v45)
            {
              v46 = 3;
            }

            else
            {
              v46 = 2;
            }

            *(v7 + 190) = 797;
            WORD1(v95) = 2048;
            *(v7 + 196) = v9;
            WORD6(v95) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl(v46, v72, &v76, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_89:
            *v72 = 0;
            v7[4] = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v47 = MEMORY[0x1E69E9C10];
            v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v94) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v94) = 1024;
            if (v48)
            {
              v49 = 3;
            }

            else
            {
              v49 = 2;
            }

            *(v7 + 190) = 797;
            WORD1(v95) = 2048;
            *(v7 + 196) = v9;
            WORD6(v95) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl(v49, v72, &v76, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_93:
            *v72 = 0;
            v7[4] = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v50 = MEMORY[0x1E69E9C10];
            v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v94) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v94) = 1024;
            if (v51)
            {
              v52 = 3;
            }

            else
            {
              v52 = 2;
            }

            *(v7 + 190) = 797;
            WORD1(v95) = 2048;
            *(v7 + 196) = v9;
            WORD6(v95) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl(v52, v72, &v76, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_97:
            *v72 = 0;
            v7[4] = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v53 = MEMORY[0x1E69E9C10];
            v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v94) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v94) = 1024;
            if (v54)
            {
              v55 = 3;
            }

            else
            {
              v55 = 2;
            }

            *(v7 + 190) = 797;
            WORD1(v95) = 2048;
            *(v7 + 196) = v9;
            WORD6(v95) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl(v55, v72, &v76, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_101:
            *v72 = 0;
            v7[4] = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v56 = MEMORY[0x1E69E9C10];
            v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v94) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v94) = 1024;
            if (v57)
            {
              v58 = 3;
            }

            else
            {
              v58 = 2;
            }

            *(v7 + 190) = 797;
            WORD1(v95) = 2048;
            *(v7 + 196) = v9;
            WORD6(v95) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl(v58, v72, &v76, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_105:
            *v72 = 0;
            v7[4] = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v59 = MEMORY[0x1E69E9C10];
            v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v94) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v94) = 1024;
            if (v60)
            {
              v61 = 3;
            }

            else
            {
              v61 = 2;
            }

            *(v7 + 190) = 797;
            WORD1(v95) = 2048;
            *(v7 + 196) = v9;
            WORD6(v95) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl(v61, v72, &v76, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
LABEL_109:
            *v87 = 0;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v94 = 0u;
            v62 = MEMORY[0x1E69E9C10];
            v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v72 = 136315906;
            *&v72[4] = "operator[]";
            *&v72[12] = 1024;
            if (v63)
            {
              v64 = 3;
            }

            else
            {
              v64 = 2;
            }

            *&v72[14] = 858;
            *&v72[18] = 2048;
            *v73 = v9;
            *&v73[8] = 2048;
            *&v73[10] = v10;
            _os_log_send_and_compose_impl(v64, v87, &v94, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v65, v66);
            _os_crash_msg();
            __break(1u);
          }

          v10 = *(*(v14 + 32) + 8 * v9);
          v7 = *(*a3 + 336);
          if (v7 <= v10)
          {
            goto LABEL_73;
          }

          {
            break;
          }

          if (v15 == ++v9)
          {
            goto LABEL_54;
          }
        }

        *re::BucketArray<unsigned long,8ul>::addUninitialized(&v80) = v9;
        v16 = v67 + 1;
        v9 = *(a2 + 4);
        if (v67 + 1 >= v9)
        {
          v6 = a2;
          goto LABEL_26;
        }
      }
    }

LABEL_54:
    v25 = 0;
    a3[3] = v70;
  }

  re::BucketArray<unsigned long,8ul>::deinit(&v80);
  if (v80)
  {
    v28 = v82;
    if ((v82 & 1) == 0)
    {
      (*(*v80 + 40))();
      v28 = v82;
    }

    v80 = 0;
    v81 = 0;
    v82 = (v28 | 1) + 2;
  }

  v29 = v79;
  if (v79)
  {
    v30 = 0;
    do
    {
      ++v30;
    }

    while (v29 != v30);
  }

  while (v77)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v76 + 1);
  }

  if (*(&v76 + 1) && (BYTE8(v77) & 1) == 0)
  {
    (*(**(&v76 + 1) + 40))();
  }

  return v25;
}