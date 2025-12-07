double re::internal::defaultConstruct<re::BounceEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 1;
  a3[1] = 1;
  *a3 = &unk_1F5CAE458;
  a3[2] = 0x4000000000000003;
  return result;
}

double re::internal::defaultConstructV2<re::BounceEase>(void *a1)
{
  *&result = 1;
  a1[1] = 1;
  *a1 = &unk_1F5CAE458;
  a1[2] = 0x4000000000000003;
  return result;
}

void *re::allocInfo_CircleEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E620))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EAE8, "CircleEase");
    __cxa_guard_release(&qword_1EE18E620);
  }

  return &unk_1EE18EAE8;
}

void re::initInfo_CircleEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0xD3F06692911FCLL;
  v15[1] = "CircleEase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18E630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E630))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E628 = v13;
    __cxa_guard_release(&qword_1EE18E630);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE18E628;
  *(this + 9) = re::internal::defaultConstruct<re::CircleEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CircleEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::CircleEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::CircleEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

double re::internal::defaultConstruct<re::CircleEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 2;
  a3[1] = 2;
  *a3 = &unk_1F5CAE4B0;
  return result;
}

double re::internal::defaultConstructV2<re::CircleEase>(void *a1)
{
  *&result = 2;
  a1[1] = 2;
  *a1 = &unk_1F5CAE4B0;
  return result;
}

void *re::allocInfo_ElasticEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E640))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EB78, "ElasticEase");
    __cxa_guard_release(&qword_1EE18E640);
  }

  return &unk_1EE18EB78;
}

void re::initInfo_ElasticEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x1A6BE4973918086;
  v23[1] = "ElasticEase";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE18E648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E648))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E798 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_uint32_t(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "oscillations";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18E7A0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "springiness";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1400000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18E7A8 = v21;
    __cxa_guard_release(&qword_1EE18E648);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18E798;
  *(this + 9) = re::internal::defaultConstruct<re::ElasticEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ElasticEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::ElasticEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::ElasticEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}

double re::internal::defaultConstruct<re::ElasticEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 3;
  a3[1] = 3;
  *a3 = &unk_1F5CAE508;
  a3[2] = 0x4040000000000003;
  return result;
}

double re::internal::defaultConstructV2<re::ElasticEase>(void *a1)
{
  *&result = 3;
  a1[1] = 3;
  *a1 = &unk_1F5CAE508;
  a1[2] = 0x4040000000000003;
  return result;
}

void *re::allocInfo_ExponentialEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E658))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EC08, "ExponentialEase");
    __cxa_guard_release(&qword_1EE18E658);
  }

  return &unk_1EE18EC08;
}

void re::initInfo_ExponentialEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x41C8769A90529D66;
  v19[1] = "ExponentialEase";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE18E660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E660))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E738 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_float(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "exponent";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18E740 = v17;
    __cxa_guard_release(&qword_1EE18E660);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E738;
  *(this + 9) = re::internal::defaultConstruct<re::ExponentialEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ExponentialEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::ExponentialEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::ExponentialEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

double re::internal::defaultConstruct<re::ExponentialEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 4;
  *(a3 + 8) = 4;
  *a3 = &unk_1F5CAE560;
  *(a3 + 16) = 0x40000000;
  return result;
}

double re::internal::defaultConstructV2<re::ExponentialEase>(uint64_t a1)
{
  *&result = 4;
  *(a1 + 8) = 4;
  *a1 = &unk_1F5CAE560;
  *(a1 + 16) = 0x40000000;
  return result;
}

void *re::allocInfo_HermiteEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E670))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EC98, "HermiteEase");
    __cxa_guard_release(&qword_1EE18E670);
  }

  return &unk_1EE18EC98;
}

void re::initInfo_HermiteEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x1B70060016C0920;
  v15[1] = "HermiteEase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18E680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E680))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E678 = v13;
    __cxa_guard_release(&qword_1EE18E680);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE18E678;
  *(this + 9) = re::internal::defaultConstruct<re::HermiteEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::HermiteEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::HermiteEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::HermiteEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

double re::internal::defaultConstruct<re::HermiteEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 5;
  a3[1] = 5;
  *a3 = &unk_1F5CADE60;
  return result;
}

double re::internal::defaultConstructV2<re::HermiteEase>(void *a1)
{
  *&result = 5;
  a1[1] = 5;
  *a1 = &unk_1F5CADE60;
  return result;
}

void *re::allocInfo_LogarithmicEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E690))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18ED28, "LogarithmicEase");
    __cxa_guard_release(&qword_1EE18E690);
  }

  return &unk_1EE18ED28;
}

void re::initInfo_LogarithmicEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x19A3FD633D218F5ALL;
  v19[1] = "LogarithmicEase";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE18E698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E698))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E748 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_float(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "base";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18E750 = v17;
    __cxa_guard_release(&qword_1EE18E698);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E748;
  *(this + 9) = re::internal::defaultConstruct<re::LogarithmicEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::LogarithmicEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::LogarithmicEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::LogarithmicEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

double re::internal::defaultConstruct<re::LogarithmicEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 6;
  *(a3 + 8) = 6;
  *a3 = &unk_1F5CAE5B8;
  *(a3 + 16) = 0x40000000;
  return result;
}

double re::internal::defaultConstructV2<re::LogarithmicEase>(uint64_t a1)
{
  *&result = 6;
  *(a1 + 8) = 6;
  *a1 = &unk_1F5CAE5B8;
  *(a1 + 16) = 0x40000000;
  return result;
}

void *re::allocInfo_PowerEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E6A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EDB8, "PowerEase");
    __cxa_guard_release(&qword_1EE18E6A8);
  }

  return &unk_1EE18EDB8;
}

void re::initInfo_PowerEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x81DD5396ECE6;
  v19[1] = "PowerEase";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE18E6B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6B0))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E758 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_float(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "power";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18E760 = v17;
    __cxa_guard_release(&qword_1EE18E6B0);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E758;
  *(this + 9) = re::internal::defaultConstruct<re::PowerEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PowerEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::PowerEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::PowerEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

double re::internal::defaultConstruct<re::PowerEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 7;
  *(a3 + 8) = 7;
  *a3 = &unk_1F5CAE610;
  *(a3 + 16) = 0x40000000;
  return result;
}

double re::internal::defaultConstructV2<re::PowerEase>(uint64_t a1)
{
  *&result = 7;
  *(a1 + 8) = 7;
  *a1 = &unk_1F5CAE610;
  *(a1 + 16) = 0x40000000;
  return result;
}

void *re::allocInfo_SineEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E6C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EE48, "SineEase");
    __cxa_guard_release(&qword_1EE18E6C0);
  }

  return &unk_1EE18EE48;
}

void re::initInfo_SineEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x45443AA1876;
  v15[1] = "SineEase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18E6D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6D0))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E6C8 = v13;
    __cxa_guard_release(&qword_1EE18E6D0);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE18E6C8;
  *(this + 9) = re::internal::defaultConstruct<re::SineEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SineEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::SineEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::SineEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

double re::internal::defaultConstruct<re::SineEase>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 8;
  a3[1] = 8;
  *a3 = &unk_1F5CAE668;
  return result;
}

double re::internal::defaultConstructV2<re::SineEase>(void *a1)
{
  *&result = 8;
  a1[1] = 8;
  *a1 = &unk_1F5CAE668;
  return result;
}

void *re::allocInfo_CubicBezierEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EED8, "CubicBezierEase");
    __cxa_guard_release(&qword_1EE18E6E0);
  }

  return &unk_1EE18EED8;
}

void re::initInfo_CubicBezierEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v21[0] = 0xF7356B4E535BA46ELL;
  v21[1] = "CubicBezierEase";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE18E6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E6E8))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5D0;
    if (!qword_1EE18E5D0)
    {
      v9 = re::allocInfo_EasingFunction(v7);
      qword_1EE18E5D0 = v9;
      re::initInfo_EasingFunction(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunction";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E7B0 = v13;
    v14 = re::introspectionAllocator();
    v15 = re::introspect_Vector2F(1);
    v16 = (*(*v14 + 32))(v14, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "controlPoint1";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x1000000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE18E7B8 = v16;
    v17 = re::introspectionAllocator();
    v18 = re::introspect_Vector2F(1);
    v19 = (*(*v17 + 32))(v17, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "controlPoint2";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x1800000002;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE18E7C0 = v19;
    __cxa_guard_release(&qword_1EE18E6E8);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18E7B0;
  *(this + 9) = re::internal::defaultConstruct<re::CubicBezierEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CubicBezierEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::CubicBezierEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::CubicBezierEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v20 = v22;
}

double re::internal::defaultConstruct<re::CubicBezierEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 9;
  *a3 = &unk_1F5CAE6C0;
  result = 5.23869071e-11;
  *(a3 + 16) = 0x3DCCCCCD3E800000;
  *(a3 + 24) = 0x3F8000003E800000;
  return result;
}

double re::internal::defaultConstructV2<re::CubicBezierEase>(uint64_t a1)
{
  *(a1 + 8) = 9;
  *a1 = &unk_1F5CAE6C0;
  result = 5.23869071e-11;
  *(a1 + 16) = 0x3DCCCCCD3E800000;
  *(a1 + 24) = 0x3F8000003E800000;
  return result;
}

float re::BackEase::clone(re::BackEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE400;
  result = *(this + 4);
  *(v4 + 16) = result;
  return result;
}

float re::BackEase::easeIn(re::BackEase *this, float a2)
{
  v3 = *(this + 4);
  v4 = a2 * a2;
  v5 = sinf(a2 * -3.1416);
  v6 = 0.0;
  if (v3 > 0.0)
  {
    v6 = v3;
  }

  return (v5 * (v6 * a2)) + (v4 * a2);
}

float re::BounceEase::clone(re::BounceEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE458;
  *(v4 + 16) = *(this + 4);
  result = *(this + 5);
  *(v4 + 20) = result;
  return result;
}

double re::CircleEase::clone(re::CircleEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 16, 8);
  result = *(this + 1);
  *(v4 + 8) = result;
  *v4 = &unk_1F5CAE4B0;
  return result;
}

float re::CircleEase::easeIn(re::CircleEase *this, float a2)
{
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 < -1.0)
  {
    a2 = -1.0;
  }

  return 1.0 - sqrtf(1.0 - (a2 * a2));
}

float re::ElasticEase::clone(re::ElasticEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE508;
  *(v4 + 16) = *(this + 4);
  result = *(this + 5);
  *(v4 + 20) = result;
  return result;
}

float re::ElasticEase::easeIn(re::ElasticEase *this, float a2)
{
  v3 = *(this + 4);
  v4 = fmaxf(*(this + 5), 0.0);
  v5 = a2;
  if (v4 >= 0.00001)
  {
    v6 = 1.0 - expf(v4 * a2);
    v5 = v6 / (1.0 - expf(v4));
  }

  return sinf(((fmaxf(v3, 0.0) + 0.25) * 6.2832) * a2) * v5;
}

float re::ExponentialEase::clone(re::ExponentialEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE560;
  result = *(this + 4);
  *(v4 + 16) = result;
  return result;
}

void re::ExponentialEase::easeIn(re::ExponentialEase *this, float a2)
{
  v2 = *(this + 4);
  if (fabsf(v2) >= 0.00001)
  {
    expf(v2 * a2);
    expf(v2);
  }
}

float re::LogarithmicEase::clone(re::LogarithmicEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE5B8;
  result = *(this + 4);
  *(v4 + 16) = result;
  return result;
}

float re::LogarithmicEase::easeIn(re::LogarithmicEase *this, float a2)
{
  v2 = 0.0;
  if (a2 >= 0.0)
  {
    v3 = *(this + 4);
    v4 = logf(((v3 + -1.0) * a2) + 1.0);
    return v4 / logf(v3);
  }

  return v2;
}

float re::PowerEase::clone(re::PowerEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = *(this + 1);
  *v4 = &unk_1F5CAE610;
  result = *(this + 4);
  *(v4 + 16) = result;
  return result;
}

double re::SineEase::clone(re::SineEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 16, 8);
  result = *(this + 1);
  *(v4 + 8) = result;
  *v4 = &unk_1F5CAE668;
  return result;
}

uint64_t re::CubicBezierEase::clone(re::CubicBezierEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  result = (*(*v3[2] + 32))(v3[2], 32, 8);
  *(result + 8) = 9;
  *result = &unk_1F5CAE6C0;
  *(result + 16) = *(this + 2);
  *(result + 24) = *(this + 3);
  return result;
}

re::RigDataValue *re::RigDataValue::RigDataValue(re::RigDataValue *this, const re::RigDataValue *a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 32) = *(a2 + 32);
  re::StringID::StringID((this + 40), (a2 + 40));
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(this + 56, a2 + 7);
  *(this + 96) = *(a2 + 96);
  v4 = *(a2 + 7);
  v5 = *(a2 + 8);
  v6 = *(a2 + 10);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = v6;
  *(this + 7) = v4;
  *(this + 8) = v5;
  *(this + 22) = *(a2 + 22);
  *(this + 23) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = &str_67;
  re::DynamicArray<re::RigDataValue>::DynamicArray(this + 240, a2 + 30);
  re::StringID::copy((this + 224), (a2 + 224), *this);
  v7 = *(a2 + 23);
  if (v7)
  {
    v8 = (*(**this + 32))(*this, 360, 8);
    v9 = *(v7 + 16);
    *v8 = *v7;
    *(v8 + 16) = v9;
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 24, (v7 + 24));
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 72, (v7 + 72));
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v8 + 120, (v7 + 120));
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v8 + 160, (v7 + 160));
    re::DynamicArray<re::StringID>::DynamicArray(v8 + 200, (v7 + 200));
    re::DynamicArray<unsigned long>::DynamicArray(v8 + 240, (v7 + 240));
    re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v8 + 280, (v7 + 280));
    re::DynamicArray<unsigned long>::DynamicArray(v8 + 320, (v7 + 320));
    v11[0] = &unk_1F5CAE710;
    v11[1] = this;
    v11[3] = v11;
    v12 = v8;
    v13[3] = v13;
    v13[0] = &unk_1F5CAE710;
    v13[1] = this;
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::operator=[abi:nn200100](this + 23, &v12);
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::~unique_ptr[abi:nn200100](&v12);
    std::__function::__value_func<void ()(re::RigHierarchy *)>::~__value_func[abi:nn200100](v11);
  }

  return this;
}

uint64_t *std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::RigHierarchy *)>::operator()((a1 + 1), v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = a2[4];
  if (v7)
  {
    if (v7 == a2 + 1)
    {
      a1[4] = (a1 + 1);
      (*(*a2[4] + 24))(a2[4], a1 + 1);
    }

    else
    {
      a1[4] = v7;
      a2[4] = 0;
    }
  }

  else
  {
    a1[4] = 0;
  }

  return a1;
}

void re::RigDataValue::init(re::RigDataValue *this, re::Allocator *a2, const re::RigEnvironment *a3, const re::RigDataTypeClass *a4, re::EvaluationTree *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a5;
  *(this + 3) = 0;
  v9 = (a4 + 24);
  *(this + 32) = *a4;
  re::StringID::operator=(this + 5, a4 + 1);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::operator=(this + 56, v9);
  *(this + 96) = 1;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = -1;
  v11 = *(this + 32);
  if ((v11 - 1) >= 9 && (v11 - 11) >= 3)
  {
    if (v11 != 10)
    {
      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Cannot initialize a rig data value with an invalid rig data type.", "!Unreachable code", "init", 262, a5);
      _os_crash("assertion failure: (!Unreachable code) Cannot initialize a rig data value with an invalid rig data type.");
      __break(1u);
      return;
    }

    v12 = (*(*a2 + 32))(a2, 360, 8);
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0u;
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
    *(v12 + 272) = 0u;
    *(v12 + 288) = 0u;
    *(v12 + 320) = 0u;
    *(v12 + 336) = 0u;
    *(v12 + 60) = 0x7FFFFFFF;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0x7FFFFFFF00000000;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
    *(v12 + 136) = 0;
    *(v12 + 144) = 0;
    *(v12 + 352) = 0;
    *(v12 + 152) = 0u;
    *(v12 + 168) = 0u;
    *(v12 + 184) = 0;
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    *(v12 + 264) = 0;
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
    *(v12 + 304) = 0;
    *(v12 + 272) = 0u;
    *(v12 + 344) = 0;
    *(v12 + 312) = 0u;
    *(v12 + 328) = 0u;
    v47 = &unk_1F5CAE820;
    v48 = this;
    v50 = &v47;
    *&v27 = &v25 + 8;
    *&v25 = v12;
    *(&v25 + 1) = &unk_1F5CAE820;
    *&v26 = this;
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::operator=[abi:nn200100](this + 23, &v25);
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::~unique_ptr[abi:nn200100](&v25);
    std::__function::__value_func<void ()(re::RigHierarchy *)>::~__value_func[abi:nn200100](&v47);
    re::RigHierarchy::init(*(this + 23), a3, a2, a5, 0, 0);
  }

  *(this + 30) = a2;
  re::DynamicArray<re::RigDataValue>::setCapacity(this + 30, *(a4 + 5));
  ++*(this + 66);
  v13 = *(a4 + 5);
  if (v13)
  {
    v14 = 0;
    v15 = 16;
    do
    {
      if (v13 <= v14)
      {
        v24 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v18 = MEMORY[0x1E69E9C10];
        v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v52 = 136315906;
        v53 = "operator[]";
        v54 = 1024;
        if (v19)
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        v55 = 797;
        v56 = 2048;
        v57 = v14;
        v58 = 2048;
        v59 = v13;
        _os_log_send_and_compose_impl(v20, &v24, &v25, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v21, v22);
        _os_crash_msg();
        __break(1u);
      }

      re::RigEnvironment::lookupRigDataType(&v47, *(this + 1), (*(a4 + 7) + v15));
      v16 = *(this + 1);
      v25 = 0u;
      v26 = 0u;
      LOBYTE(v27) = 0;
      *(&v27 + 1) = 0;
      *&v28 = &str_67;
      v31 = 0;
      *(&v28 + 1) = 0;
      v29 = 0uLL;
      v30 = 0;
      v32 = 0;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = -1;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = &str_67;
      v46 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v42 = 0;
      re::RigDataValue::init(&v25, a2, v16, &v48, a5);
      re::DynamicArray<re::RigDataValue>::add(this + 240, &v25);
      re::RigDataValue::~RigDataValue(&v25);
      if (v47 == 1)
      {
        v17 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v51);
        if (v49)
        {
          if (v49)
          {
          }
        }
      }

      ++v14;
      v13 = *(a4 + 5);
      v15 += 32;
    }

    while (v14 < v13);
  }
}

uint64_t *re::RigDataValue::operator=(uint64_t *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  re::RigDataValue::deinit(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  re::StringID::operator=(a1 + 5, (a2 + 40));
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::operator=((a1 + 7), (a2 + 56));
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 112);
  v5 = *(a2 + 128);
  v6 = *(a2 + 160);
  *(a1 + 9) = *(a2 + 144);
  *(a1 + 10) = v6;
  *(a1 + 7) = v4;
  *(a1 + 8) = v5;
  a1[22] = *(a2 + 176);
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 30), (a2 + 240));
  re::StringID::copy((a1 + 28), (a2 + 224), *a1);
  v7 = *(a2 + 184);
  if (v7)
  {
    v8 = (*(**a1 + 32))(*a1, 360, 8);
    v9 = *(v7 + 16);
    *v8 = *v7;
    *(v8 + 16) = v9;
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 24, (v7 + 24));
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 72, (v7 + 72));
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v8 + 120, (v7 + 120));
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v8 + 160, (v7 + 160));
    re::DynamicArray<re::StringID>::DynamicArray(v8 + 200, (v7 + 200));
    re::DynamicArray<unsigned long>::DynamicArray(v8 + 240, (v7 + 240));
    re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v8 + 280, (v7 + 280));
    re::DynamicArray<unsigned long>::DynamicArray(v8 + 320, (v7 + 320));
    v11[0] = &unk_1F5CAE7A0;
    v11[1] = a1;
    v11[3] = v11;
    v12 = v8;
    v13[3] = v13;
    v13[0] = &unk_1F5CAE7A0;
    v13[1] = a1;
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::operator=[abi:nn200100](a1 + 23, &v12);
    std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::~unique_ptr[abi:nn200100](&v12);
    std::__function::__value_func<void ()(re::RigHierarchy *)>::~__value_func[abi:nn200100](v11);
  }

  return a1;
}

double re::RigDataValue::deinit(re::RigDataValue *this)
{
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    std::function<void ()(re::RigHierarchy *)>::operator()(this + 192, v2);
  }

  if (*(this + 56))
  {
    (*(**this + 40))(*this, *(this + 29));
  }

  *(this + 28) = 0;
  *(this + 29) = &str_67;
  re::DynamicArray<re::RigDataValue>::deinit(this + 240);
  result = 0.0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = -1;
  *(this + 3) = 0;
  *(this + 96) = 0;
  *this = 0;
  return result;
}

void re::RigDataValue::resolveRuntimeInputValues(re::RigDataValue *this, re::EvaluationContextManager *a2)
{
  v4 = *(this + 32);
  if (!v4)
  {
    if (*(this + 96) != 2)
    {
      return;
    }

    v7 = *(this + 32);
    if (v7 > 4)
    {
      if (*(this + 32) > 6u)
      {
        if (v7 == 7)
        {
          v16 = *(this + 22);
          v22 = 0;
          *&v18 = v16;
          re::DynamicArray<unsigned long>::add((a2 + 248), &v18);
          re::DynamicArray<unsigned long>::add((a2 + 608), &v22);
          v9 = *(a2 + 33);
          goto LABEL_25;
        }

        if (v7 == 8)
        {
          v12 = *(this + 22);
          v18 = 0u;
          v22 = v12;
          re::DynamicArray<unsigned long>::add((a2 + 288), &v22);
          re::DynamicArray<re::Vector3<float>>::add((a2 + 648), &v18);
          v9 = *(a2 + 38);
          goto LABEL_25;
        }
      }

      else
      {
        if (v7 == 5)
        {
          v14 = *(this + 22);
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v22 = v14;
          re::DynamicArray<unsigned long>::add((a2 + 168), &v22);
          re::DynamicArray<re::Matrix4x4<float>>::add((a2 + 528), &v18);
          v9 = *(a2 + 23);
          goto LABEL_25;
        }

        if (v7 == 6)
        {
          v10 = *(this + 22);
          v18 = xmmword_1E30474D0;
          v22 = v10;
          re::DynamicArray<unsigned long>::add((a2 + 208), &v22);
          re::DynamicArray<re::Vector3<float>>::add((a2 + 568), &v18);
          v9 = *(a2 + 28);
          goto LABEL_25;
        }
      }
    }

    else if (*(this + 32) > 2u)
    {
      if (v7 == 3)
      {
        v15 = *(this + 22);
        LODWORD(v22) = 0;
        *&v18 = v15;
        re::DynamicArray<unsigned long>::add((a2 + 88), &v18);
        re::DynamicArray<float>::add((a2 + 448), &v22);
        v9 = *(a2 + 13);
        goto LABEL_25;
      }

      if (v7 == 4)
      {
        v11 = *(this + 22);
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        v22 = v11;
        re::DynamicArray<unsigned long>::add((a2 + 128), &v22);
        re::DynamicArray<re::Matrix3x3<float>>::add((a2 + 488), &v18);
        v9 = *(a2 + 18);
        goto LABEL_25;
      }
    }

    else
    {
      if (v7 == 1)
      {
        v13 = *(this + 22);
        LODWORD(v22) = 0;
        *&v18 = v13;
        re::DynamicArray<unsigned long>::add((a2 + 8), &v18);
        re::DynamicArray<int>::add((a2 + 368), &v22);
        v9 = *(a2 + 3);
        goto LABEL_25;
      }

      if (v7 == 2)
      {
        v8 = *(this + 22);
        LODWORD(v22) = 0;
        *&v18 = v8;
        re::DynamicArray<unsigned long>::add((a2 + 48), &v18);
        re::DynamicArray<int>::add((a2 + 408), &v22);
        v9 = *(a2 + 8);
LABEL_25:
        *(this + 22) = v9 - 1;
        *(this + 96) = 3;
        return;
      }
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Cannot resolve invalid compile time type: %u", "!Unreachable code", "resolveRuntimeInputValues", 377, *(this + 32));
    _os_crash("assertion failure: (!Unreachable code) Cannot resolve invalid compile time type: %u", v17);
    __break(1u);
    return;
  }

  v5 = *(this + 34);
  v6 = 288 * v4;
  do
  {
    re::RigDataValue::resolveRuntimeInputValues(v5, a2);
    v5 = (v5 + 288);
    v6 -= 288;
  }

  while (v6);
}

void *re::RigDataValue::resolveRuntimeOutputValues(void *this, re::EvaluationContextManager *a2)
{
  v3 = this;
  v4 = this[32];
  if (v4)
  {
    v5 = this[34];
    v6 = 288 * v4;
    do
    {
      this = re::RigDataValue::resolveRuntimeOutputValues(v5, a2);
      v5 += 36;
      v6 -= 288;
    }

    while (v6);
    return this;
  }

  v7 = *(this + 96);
  if (v7 == 2)
  {
    v8 = this[22];
  }

  else
  {
    v8 = -1;
  }

  v9 = *(this + 32);
  if (v9 > 4)
  {
    if (*(this + 32) > 6u)
    {
      if (v9 == 7)
      {
        v12 = v8;
        this = re::DynamicArray<unsigned long>::add((a2 + 1688), &v12);
        v10 = *(a2 + 213);
        goto LABEL_27;
      }

      if (v9 == 8)
      {
        v12 = v8;
        this = re::DynamicArray<unsigned long>::add((a2 + 1728), &v12);
        v10 = *(a2 + 218);
        goto LABEL_27;
      }
    }

    else
    {
      if (v9 == 5)
      {
        v12 = v8;
        this = re::DynamicArray<unsigned long>::add((a2 + 1608), &v12);
        v10 = *(a2 + 203);
        goto LABEL_27;
      }

      if (v9 == 6)
      {
        v12 = v8;
        this = re::DynamicArray<unsigned long>::add((a2 + 1648), &v12);
        v10 = *(a2 + 208);
        goto LABEL_27;
      }
    }
  }

  else if (*(this + 32) > 2u)
  {
    if (v9 == 3)
    {
      v12 = v8;
      this = re::DynamicArray<unsigned long>::add((a2 + 1528), &v12);
      v10 = *(a2 + 193);
      goto LABEL_27;
    }

    if (v9 == 4)
    {
      v12 = v8;
      this = re::DynamicArray<unsigned long>::add((a2 + 1568), &v12);
      v10 = *(a2 + 198);
      goto LABEL_27;
    }
  }

  else
  {
    if (v9 == 1)
    {
      v12 = v8;
      this = re::DynamicArray<unsigned long>::add((a2 + 1448), &v12);
      v10 = *(a2 + 183);
      goto LABEL_27;
    }

    if (v9 == 2)
    {
      v12 = v8;
      this = re::DynamicArray<unsigned long>::add((a2 + 1488), &v12);
      v10 = *(a2 + 188);
LABEL_27:
      v3[22] = v10 - 1;
      *(v3 + 96) = 4;
      return this;
    }
  }

  if (v7 != 1)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Cannot resolve invalid compile time type: %u", "!Unreachable code", "resolveRuntimeOutputValues", 443, *(this + 32));
    this = _os_crash("assertion failure: (!Unreachable code) Cannot resolve invalid compile time type: %u", v11);
    __break(1u);
  }

  return this;
}

uint64_t re::RigDataValue::setRuntimeContext(uint64_t this, re::EvaluationContext *a2)
{
  if (*(this + 96) != 1)
  {
    *(this + 24) = a2;
  }

  v3 = *(this + 256);
  if (v3)
  {
    v4 = *(this + 272);
    v5 = 288 * v3;
    do
    {
      this = re::RigDataValue::setRuntimeContext(v4, a2);
      v4 += 288;
      v5 -= 288;
    }

    while (v5);
  }

  return this;
}

uint64_t re::RigDataValue::attributeValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = (*a2 + v6);
  v9 = memchr(*a2, 46, v6);
  v10 = v9 - v7;
  v11 = v9 != 0 && v9 != v8;
  if (v9 != 0 && v9 != v8)
  {
    v12 = v9 - v7;
  }

  else
  {
    v12 = v6;
  }

  v13 = *(a1 + 256);
  if (!v13)
  {
    goto LABEL_10;
  }

  HIDWORD(v32) = v11;
  v14 = 0;
  for (i = 0; i != v13; ++i)
  {
    v16 = *(re::RigDataTypeClass::attributeName((a1 + 32), i) + 8);
    if (v12 == strlen(v16))
    {
      result = memcmp(v7, v16, v12);
      if (!result)
      {
        if ((v32 & 0x100000000) != 0)
        {
          v24 = *a2 + *(a2 + 8) - (*a2 + v10 + 1);
          v33[0] = *a2 + v10 + 1;
          v33[1] = v24;
          v25 = *(a1 + 256);
          if (v25 > i)
          {
            return re::RigDataValue::attributeValue(*(a1 + 272) - v14, v33, a3);
          }

          v34 = 0;
          v40 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          *v35 = 136315906;
          *&v35[4] = "operator[]";
          *&v35[12] = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          *&v35[14] = 797;
          *&v35[18] = 2048;
          *&v35[20] = i;
          *&v35[28] = 2048;
          *&v35[30] = v25;
          _os_log_send_and_compose_impl(v28, &v34, &v36, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v32, v33[0]);
          _os_crash_msg();
          __break(1u);
        }

        else
        {
          v25 = *(a1 + 256);
          if (v25 > i)
          {
            v26 = *(a1 + 272) - v14;
            *a3 = 1;
            *(a3 + 8) = v26;
            return result;
          }
        }

        v33[0] = 0;
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v35 = 136315906;
        *&v35[4] = "operator[]";
        *&v35[12] = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        *&v35[14] = 797;
        *&v35[18] = 2048;
        *&v35[20] = i;
        *&v35[28] = 2048;
        *&v35[30] = v25;
        _os_log_send_and_compose_impl(v31, v33, &v36, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v32);
        _os_crash_msg();
        __break(1u);
      }
    }

    v14 -= 288;
  }

  v6 = *(a2 + 8);
LABEL_10:
  v18 = *a1;
  *&v35[16] = 0;
  *&v35[24] = 0;
  if (v6)
  {
    v19 = v6 + 1;
  }

  else
  {
    v19 = 0;
  }

  *v35 = v18;
  *&v35[8] = 0;
  re::DynamicString::setCapacity(v35, v19);
  re::DynamicString::operator=(v35, a2);
  if (v35[8])
  {
    v21 = *&v35[16];
  }

  else
  {
    v21 = &v35[9];
  }

  re::DynamicString::format(&v36, v18, "Attribute name could not be resolved: %s", v20, v21);
  v22 = v36;
  v23 = v37;
  *a3 = 0;
  *(a3 + 8) = 5003;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v22;
  *(a3 + 40) = v23;
  result = *v35;
  if (*v35)
  {
    if (v35[8])
    {
      return (*(**v35 + 40))();
    }
  }

  return result;
}

{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = (*a2 + v6);
  v9 = memchr(*a2, 46, v6);
  v10 = v9 - v7;
  v11 = v9 != 0 && v9 != v8;
  if (v9 != 0 && v9 != v8)
  {
    v12 = v9 - v7;
  }

  else
  {
    v12 = v6;
  }

  v13 = *(a1 + 256);
  if (!v13)
  {
    goto LABEL_10;
  }

  HIDWORD(v32) = v11;
  v14 = 0;
  for (i = 0; i != v13; ++i)
  {
    v16 = *(re::RigDataTypeClass::attributeName((a1 + 32), i) + 8);
    if (v12 == strlen(v16))
    {
      result = memcmp(v7, v16, v12);
      if (!result)
      {
        if ((v32 & 0x100000000) != 0)
        {
          v24 = *a2 + *(a2 + 8) - (*a2 + v10 + 1);
          v33[0] = *a2 + v10 + 1;
          v33[1] = v24;
          v25 = *(a1 + 256);
          if (v25 > i)
          {
            return re::RigDataValue::attributeValue(*(a1 + 272) - v14, v33, a3);
          }

          v34 = 0;
          v40 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          *v35 = 136315906;
          *&v35[4] = "operator[]";
          *&v35[12] = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          *&v35[14] = 789;
          *&v35[18] = 2048;
          *&v35[20] = i;
          *&v35[28] = 2048;
          *&v35[30] = v25;
          _os_log_send_and_compose_impl(v28, &v34, &v36, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v32, v33[0]);
          _os_crash_msg();
          __break(1u);
        }

        else
        {
          v25 = *(a1 + 256);
          if (v25 > i)
          {
            v26 = *(a1 + 272) - v14;
            *a3 = 1;
            *(a3 + 8) = v26;
            return result;
          }
        }

        v33[0] = 0;
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v35 = 136315906;
        *&v35[4] = "operator[]";
        *&v35[12] = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        *&v35[14] = 789;
        *&v35[18] = 2048;
        *&v35[20] = i;
        *&v35[28] = 2048;
        *&v35[30] = v25;
        _os_log_send_and_compose_impl(v31, v33, &v36, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v32);
        _os_crash_msg();
        __break(1u);
      }
    }

    v14 -= 288;
  }

  v6 = *(a2 + 8);
LABEL_10:
  v18 = *a1;
  *&v35[16] = 0;
  *&v35[24] = 0;
  if (v6)
  {
    v19 = v6 + 1;
  }

  else
  {
    v19 = 0;
  }

  *v35 = v18;
  *&v35[8] = 0;
  re::DynamicString::setCapacity(v35, v19);
  re::DynamicString::operator=(v35, a2);
  if (v35[8])
  {
    v21 = *&v35[16];
  }

  else
  {
    v21 = &v35[9];
  }

  re::DynamicString::format(&v36, v18, "Attribute name could not be resolved: %s", v20, v21);
  v22 = v36;
  v23 = v37;
  *a3 = 0;
  *(a3 + 8) = 5003;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v22;
  *(a3 + 40) = v23;
  result = *v35;
  if (*v35)
  {
    if (v35[8])
    {
      return (*(**v35 + 40))();
    }
  }

  return result;
}

unint64_t re::RigDataTypeClass::attributeName(re::RigDataTypeClass *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 5);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 7) + 32 * a2;
}

void re::RigDataValue::setRigDataValue(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v367 = *MEMORY[0x1E69E9840];
  v10 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*(a1 + 32) > 6u)
  {
    if (*(a1 + 32) > 9u)
    {
      if ((v9 - 11) < 3)
      {
        if (v9 != 12 || *(a1 + 256) || *(a1 + 96) - 1 > 1)
        {
          goto LABEL_189;
        }

        v11 = re::RigDataParser::parseWhitespace(a2);
        v13 = &v11[v12];
        for (i = &v11[v12] < *a2 + *(a2 + 8); ; i = &v17[v18] < v16)
        {
          v15 = i;
          if (!strncmp(v13, ".", v15))
          {
            break;
          }

          if (!v15)
          {
            goto LABEL_189;
          }

LABEL_13:
          v16 = *a2 + *(a2 + 8);
          *&v348[0] = &v13[v15];
          *(&v348[0] + 1) = v16 - &v13[v15];
          v17 = re::RigDataParser::parseWhitespace(v348);
          v13 = &v17[v18];
        }

        if (v15 && asc_1E3139C80[v15])
        {
          goto LABEL_13;
        }

        v174 = 0;
LABEL_144:
        if (asc_1E3139C80[v15])
        {
          goto LABEL_168;
        }

        v175 = *a2 + *(a2 + 8) - &v13[v15];
        *&v348[0] = &v13[v15];
        *(&v348[0] + 1) = v175;
        v176 = re::RigDataParser::parseTypeName(v348);
        *v325 = v176;
        *&v325[8] = v177;
        if (v177)
        {
          re::RigDataParser::extractArrayIndex(v325, v348);
          if (LOBYTE(v348[0]) == 1)
          {
            v178 = *&v348[1];
            if (*&v348[1])
            {
              v179 = 0;
              v180 = *(&v348[0] + 1);
              do
              {
                v181 = *v180++;
                v179 = v181 + 10 * v179 - 48;
                --v178;
              }

              while (v178);
              if (v179 + 1 > v174)
              {
                v174 = v179 + 1;
              }
            }

            else if (v174 <= 1)
            {
              v174 = 1;
            }
          }

          else if (*(&v348[1] + 1) && (v348[2] & 1) != 0)
          {
            (*(**(&v348[1] + 1) + 40))();
          }

          v182 = *&v325[8];
          v176 = *v325;
        }

        else
        {
          v182 = 0;
        }

        for (j = &v176[v182]; ; j = &v13[v15])
        {
          v184 = *a2 + *(a2 + 8);
          *&v348[0] = j;
          *(&v348[0] + 1) = v184 - j;
          v185 = re::RigDataParser::parseWhitespace(v348);
          v13 = &v185[v186];
          v15 = &v185[v186] < v184;
          if (!strncmp(&v185[v186], ".", v15))
          {
            if (!v15 || !asc_1E3139C80[v15])
            {
LABEL_167:
              if (strncmp(v13, ".", v15))
              {
LABEL_168:
                if (v174)
                {
                  v187 = *v7;
                  v188 = v7[1];
                  re::RigEnvironment::lookupRigDataType(v325, v188, v7 + 5);
                  v189 = v7[2];
                  memset(v348, 0, 33);
                  *(&v348[2] + 1) = 0;
                  *&v348[3] = &str_67;
                  v351 = 0;
                  *(&v348[3] + 1) = 0;
                  v349 = 0uLL;
                  v350 = 0;
                  v352 = 0;
                  v353 = 0u;
                  v354 = 0u;
                  v355 = 0u;
                  v356 = 0u;
                  v357 = -1;
                  v358 = 0;
                  v360 = 0;
                  v359 = 0;
                  v366 = 0;
                  v365 = 0;
                  v361 = &str_67;
                  v362 = 0;
                  v364 = 0;
                  v363 = 0;
                  re::RigDataValue::init(v348, v187, v188, &v325[8], v189);
                  v190 = v7[32];
                  if (v190 >= v174)
                  {
                    if (v190 > v174)
                    {
                      v199 = 288 * v174;
                      v192 = v7;
                      v200 = v174;
                      do
                      {
                        re::RigDataValue::~RigDataValue((v192[34] + v199));
                        ++v200;
                        v199 += 288;
                      }

                      while (v200 < v192[32]);
                      goto LABEL_184;
                    }
                  }

                  else
                  {
                    if (v7[31] < v174)
                    {
                      re::DynamicArray<re::RigDataValue>::setCapacity(v7 + 30, v174);
                      v190 = v7[32];
                    }

                    v191 = v174 - v190;
                    v192 = v7;
                    if (v174 > v190)
                    {
                      v193 = 288 * v190;
                      do
                      {
                        re::RigDataValue::RigDataValue((v192[34] + v193), v348);
                        v193 += 288;
                        --v191;
                      }

                      while (v191);
                    }

LABEL_184:
                    v192[32] = v174;
                    ++*(v192 + 66);
                    v7 = v192;
                  }

                  re::RigDataValue::~RigDataValue(v348);
                  if (v325[0] == 1)
                  {
                    v201 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v325[32]);
                    if (v325[16])
                    {
                      if (v325[16])
                      {
                      }
                    }
                  }
                }

LABEL_189:
                v202 = re::RigDataParser::parseWhitespace(a2);
                v204 = &v202[v203];
                v205 = *a2;
                v206 = *(a2 + 8);
                v207 = &v202[v203] < *a2 + v206;
                if (strncmp(&v202[v203], "{", v207) || asc_1E3139C82[v207])
                {
                  v208 = *v7;
                  re::DynamicString::DynamicString(v325, v205, v206, *v7);
                  if (v325[8])
                  {
                    v210 = *&v325[16];
                  }

                  else
                  {
                    v210 = &v325[9];
                  }

                  re::DynamicString::format(v348, v208, "Could not find initial '{' for attributes: %s", v209, v210);
                  goto LABEL_195;
                }

                v215 = v7[32];
                v315 = 0;
                v312[1] = 0;
                v313 = 0;
                v314 = 0;
                v312[0] = *v7;
                v298 = v215;
                re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(v312, v215);
                ++v314;
                v216 = *a2 + *(a2 + 8);
                *&v348[0] = &v204[v207];
                *(&v348[0] + 1) = v216 - &v204[v207];
                v217 = re::RigDataParser::parseWhitespace(v348);
                v219 = &v217[v218];
                v220 = &v217[v218] < v216;
                do
                {
                  if (strncmp(v219, ".", v220) || asc_1E3139C80[v220])
                  {
                    goto LABEL_254;
                  }

                  v299 = v220;
                  v301 = v219;
                  v221 = &v219[v220];
                  v222 = *a2 + *(a2 + 8) - v221;
                  *&v348[0] = v221;
                  *(&v348[0] + 1) = v222;
                  v223 = re::RigDataParser::parseTypeName(v348);
                  v310 = v223;
                  v311 = v224;
                  if (!v224)
                  {
                    v265 = *v7;
                    if (*a2 + *(a2 + 8) - v221 >= 0xAuLL)
                    {
                      v266 = 10;
                    }

                    else
                    {
                      v266 = *a2 + *(a2 + 8) - v221;
                    }

                    re::DynamicString::DynamicString(v325, v221, v266, *v7);
                    if (v325[8])
                    {
                      v268 = *&v325[16];
                    }

                    else
                    {
                      v268 = &v325[9];
                    }

                    re::DynamicString::format(v348, v265, "Expected attribute name: %s", v267, v268);
                    goto LABEL_284;
                  }

                  v225 = *v10;
                  if ((v225 - 11) >= 2)
                  {
                    if (v225 != 13)
                    {
                      goto LABEL_308;
                    }

                    if (!v298)
                    {
                      v234 = v223;
                      v233 = v224;
LABEL_280:
                      v275 = *v7;
                      re::DynamicString::DynamicString(v325, v234, v233, *v7);
                      if (v325[8])
                      {
                        v277 = *&v325[16];
                      }

                      else
                      {
                        v277 = &v325[9];
                      }

                      re::DynamicString::format(v348, v275, "Unknown attribute name: %s", v276, v277);
LABEL_284:
                      v278 = v348[0];
                      v279 = v348[1];
                      *&v348[0] = 0;
                      *&v348[1] = 0;
                      *a4 = 0;
                      *(a4 + 8) = 5002;
                      *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
                      *(a4 + 24) = v278;
                      *(a4 + 40) = v279;
                      if (*v325 && (v325[8] & 1) != 0)
                      {
                        (*(**v325 + 40))();
                      }

                      goto LABEL_287;
                    }

                    v231 = 0;
                    while (1)
                    {
                      v232 = *(re::RigDataTypeClass::attributeName(v10, v231) + 8);
                      v234 = v310;
                      v233 = v311;
                      if (!strncmp(v310, v232, v311) && !v232[v233])
                      {
                        break;
                      }

                      if (v298 == ++v231)
                      {
                        goto LABEL_280;
                      }
                    }

                    memset(v325, 0, 33);
                    v326 = 0;
                    v327 = &str_67;
                    v332 = 0;
                    v328 = 0;
                    v329 = 0;
                    v330 = 0;
                    v331 = 0;
                    v333 = 0;
                    v334 = 0u;
                    v335 = 0u;
                    v336 = 0u;
                    v337 = 0u;
                    v338 = -1;
                    v339 = 0;
                    v340 = 0;
                    v341 = 0;
                    v342 = &str_67;
                    v347 = 0;
                    v344 = 0;
                    v345 = 0;
                    v346 = 0;
                    v343 = 0;
                    *&v348[0] = v231;
                    re::RigDataValue::RigDataValue(&v348[1], v325);
                    re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::add(v312, v348);
                    re::RigDataValue::~RigDataValue(&v348[1]);
                    re::RigDataValue::~RigDataValue(v325);
                  }

                  else
                  {
                    re::RigDataParser::extractArrayIndex(&v310, &v306);
                    v226 = v306;
                    if (v306)
                    {
                      v227 = *(&v307 + 1);
                      if (*(&v307 + 1))
                      {
                        v228 = 0;
                        v229 = v307;
                        do
                        {
                          v230 = *v229++;
                          v228 = v230 + 10 * v228 - 48;
                          --v227;
                        }

                        while (v227);
                      }

                      else
                      {
                        v228 = 0;
                      }

                      if (v228 >= v7[32])
                      {
                        v235 = 0;
                      }

                      else
                      {
                        memset(v325, 0, 33);
                        v326 = 0;
                        v327 = &str_67;
                        v332 = 0;
                        v328 = 0;
                        v329 = 0;
                        v330 = 0;
                        v331 = 0;
                        v333 = 0;
                        v334 = 0u;
                        v335 = 0u;
                        v336 = 0u;
                        v337 = 0u;
                        v338 = -1;
                        v339 = 0;
                        v340 = 0;
                        v341 = 0;
                        v342 = &str_67;
                        v347 = 0;
                        v344 = 0;
                        v345 = 0;
                        v346 = 0;
                        v343 = 0;
                        *&v348[0] = v228;
                        re::RigDataValue::RigDataValue(&v348[1], v325);
                        re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::add(v312, v348);
                        re::RigDataValue::~RigDataValue(&v348[1]);
                        re::RigDataValue::~RigDataValue(v325);
                        v235 = 1;
                      }
                    }

                    else
                    {
                      v348[0] = v307;
                      re::DynamicString::DynamicString(&v348[1], &v308);
                      v235 = 0;
                      *a4 = 0;
                      *(a4 + 8) = v348[0];
                      v236 = *(&v348[2] + 1);
                      *(a4 + 24) = *&v348[1];
                      *(a4 + 48) = v236;
                      *(a4 + 32) = *(&v348[1] + 8);
                    }

                    if (v306 & 1) == 0 && v308 && (v309)
                    {
                      (*(*v308 + 40))();
                    }

                    if ((v226 & 1) == 0)
                    {
                      goto LABEL_287;
                    }

                    if ((v235 & 1) == 0)
                    {
                      v234 = v310;
                      v233 = v311;
                      goto LABEL_280;
                    }
                  }

                  v237 = *a2 + *(a2 + 8);
                  *&v348[0] = &v310[v311];
                  *(&v348[0] + 1) = v237 - &v310[v311];
                  v238 = re::RigDataParser::parseWhitespace(v348);
                  v240 = &v238[v239];
                  v241 = &v238[v239] < v237;
                  if (strncmp(&v238[v239], "=", v241) || asc_1E3139DA0[v241])
                  {
                    v257 = *v7;
                    if (*a2 + *(a2 + 8) - &v310[v311] >= 0xAuLL)
                    {
                      v258 = 10;
                    }

                    else
                    {
                      v258 = *a2 + *(a2 + 8) - &v310[v311];
                    }

                    re::DynamicString::DynamicString(v325, &v310[v311], v258, *v7);
                    if (v325[8])
                    {
                      v260 = *&v325[16];
                    }

                    else
                    {
                      v260 = &v325[9];
                    }

                    re::DynamicString::format(v348, v257, "Expected attribute equals operator '=': %s", v259, v260);
                    goto LABEL_284;
                  }

                  v242 = v315 + 304 * v313;
                  k = *(v242 - 304);
                  v243 = v7;
                  v7 = v7[32];
                  if (v7 <= k)
                  {
                    goto LABEL_299;
                  }

                  v244 = re::RigDataValue::operator=((v242 - 288), v243[34] + 288 * k);
                  v245 = *a2 + *(a2 + 8) - &v240[v241];
                  *v325 = &v240[v241];
                  *&v325[8] = v245;
                  re::RigDataValue::setRigDataValue(v244, v325, 0, v348);
                  v7 = v243;
                  if (v348[0])
                  {
                    v246 = *a2 + *(a2 + 8);
                    *v325 = *(&v348[0] + 1);
                    *&v325[8] = v246 - *(&v348[0] + 1);
                    v247 = re::RigDataParser::parseWhitespace(v325);
                    v219 = &v247[v248];
                    v220 = &v247[v248] < v246;
                    if (!strncmp(&v247[v248], ",", v220) && !asc_1E3139DCD[v220])
                    {
                      v253 = *a2 + *(a2 + 8);
                      *v325 = &v219[v220];
                      *&v325[8] = v253 - &v219[v220];
                      v254 = re::RigDataParser::parseWhitespace(v325);
                      v249 = 0;
                      v219 = &v254[v255];
                      v256 = &v254[v255] >= v253;
                      v7 = v243;
                      v220 = !v256;
                    }

                    else
                    {
                      v249 = 3;
                    }
                  }

                  else
                  {
                    *(a4 + 8) = *(v348 + 8);
                    v250 = *(&v348[1] + 8);
                    memset(&v348[1] + 8, 0, 32);
                    v251 = *(&v348[2] + 1);
                    v252 = *&v348[3];
                    *a4 = 0;
                    *(a4 + 24) = v250;
                    v249 = 1;
                    *(a4 + 40) = v251;
                    *(a4 + 48) = v252;
                    v220 = v299;
                    v219 = v301;
                  }

                  if (v348[0] & 1) == 0 && *(&v348[1] + 1) && (v348[2])
                  {
                    (*(**(&v348[1] + 1) + 40))();
                  }
                }

                while (!v249);
                if (v249 == 3)
                {
LABEL_254:
                  if (strncmp(v219, "}", v220) || asc_1E3139DCF[v220])
                  {
                    v261 = *v7;
                    re::DynamicString::DynamicString(v325, *a2, *(a2 + 8), *v7);
                    if (v325[8])
                    {
                      v263 = *&v325[16];
                    }

                    else
                    {
                      v263 = &v325[9];
                    }

                    re::DynamicString::format(v348, v261, "Could not find final '}' for attributes: %s", v262, v263);
                    goto LABEL_284;
                  }

                  if (a3)
                  {
                    v269 = (*a2 + *(a2 + 8));
                    *&v348[0] = &v219[v220];
                    *(&v348[0] + 1) = v269 - &v219[v220];
                    v270 = re::RigDataParser::parseWhitespace(v348);
                    if (&v270[v271] != v269)
                    {
                      v272 = *v7;
                      re::DynamicString::DynamicString(v325, *a2, *(a2 + 8), *v7);
                      if (v325[8])
                      {
                        v274 = *&v325[16];
                      }

                      else
                      {
                        v274 = &v325[9];
                      }

                      re::DynamicString::format(v348, v272, "Could not parse attribute values: %s", v273, v274);
                      goto LABEL_284;
                    }
                  }

                  if (v313)
                  {
                    v283 = v7;
                    v284 = 304 * v313;
                    v285 = v315 + 16;
                    do
                    {
                      k = *(v285 - 16);
                      v10 = v283[32];
                      if (v10 <= k)
                      {
                        goto LABEL_303;
                      }

                      re::RigDataValue::operator=((v283[34] + 288 * k), v285);
                      v285 += 304;
                      v284 -= 304;
                    }

                    while (v284);
                  }

                  *a4 = 1;
                  *(a4 + 8) = &v219[v220];
                }

LABEL_287:
                v213 = v312[0];
                if (v312[0])
                {
                  v214 = v315;
                  if (v315)
                  {
                    if (v313)
                    {
                      v280 = 304 * v313;
                      v281 = (v315 + 16);
                      do
                      {
                        re::RigDataValue::~RigDataValue(v281);
                        v281 = (v282 + 304);
                        v280 -= 304;
                      }

                      while (v280);
                      v213 = v312[0];
                      v214 = v315;
                    }

LABEL_198:
                    (*(*v213 + 40))(v213, v214);
                  }
                }

                return;
              }

              goto LABEL_144;
            }
          }

          else if (!v15)
          {
            goto LABEL_167;
          }
        }
      }

      if (v9 == 10)
      {
        v57 = v348[0];
        v58 = v348[1];
        *a4 = 0;
        *(a4 + 8) = 5002;
        *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a4 + 24) = v57;
        *(a4 + 40) = v58;
        return;
      }

LABEL_307:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown Rig Data Type: %u", "!Unreachable code", "setRigDataValue", 848, v9);
      _os_crash("assertion failure: (!Unreachable code) Unknown Rig Data Type: %u", v293);
      __break(1u);
LABEL_308:
      re::internal::assertLog(5, v224, "assertion failure: '%s' (%s:line %i) Unknown Attribute for Rig Data Type: %u", "!Unreachable code", "setAttributeValuesHelper", 973, v225);
      _os_crash("assertion failure: (!Unreachable code) Unknown Attribute for Rig Data Type: %u", v294);
      __break(1u);
      return;
    }

    v305 = a1;
    if (v9 != 7)
    {
      if (v9 != 8)
      {
        if (v9 == 9)
        {
          v46 = re::RigDataParser::parseWhitespace(a2);
          v48 = v47;
          v300 = v46;
          v49 = &v46[v47];
          v7 = *a2;
          v50 = *(a2 + 8);
          k = *a2 + v50;
          v51 = &v46[v47] < k;
          if (strncmp(&v46[v47], "", v51))
          {
            goto LABEL_176;
          }

          v52 = &v49[v51];
          if (asc_1E3139E22[v51] || k == v52)
          {
            goto LABEL_176;
          }

          v54 = 0;
          v55 = 0;
          while (1)
          {
            if (v55)
            {
              v55 = 0;
            }

            else
            {
              v56 = v52[v54];
              if (v56 == 34)
              {
                if (!a3 || (*&v348[0] = &v52[v54 + 1], *(&v348[0] + 1) = v7 + v50 + ~v48 - v300 - v51 - v54, v264 = re::RigDataParser::parseWhitespace(v348), &v264[v24] == k))
                {
                  v170 = &v52[v54 + 1];
                  if (*(v305 + 56))
                  {
                    (*(**v305 + 40))(*v305, *(v305 + 29));
                  }

                  *(v305 + 28) = 0;
                  *(v305 + 29) = &str_67;
                  re::StringID::init((v305 + 224), *v305, v52, v54);
                  goto LABEL_133;
                }

                goto LABEL_176;
              }

              v55 = v56 == 92;
            }

            if (&v52[++v54] == k)
            {
              goto LABEL_176;
            }
          }
        }

        goto LABEL_307;
      }

      v90 = re::RigDataParser::parseWhitespace(a2);
      v92 = &v90[v91];
      v93 = &v90[v91] < *a2 + *(a2 + 8);
      if (strncmp(&v90[v91], "[", v93) || asc_1E3139E79[v93])
      {
        goto LABEL_176;
      }

      v7 = 0;
      v94 = &v92[v93];
      v348[0] = 0u;
      k = v348;
      do
      {
        v95 = *a2 + *(a2 + 8) - v94;
        v306 = v94;
        *&v307 = v95;
        v96 = re::RigDataParser::parseFloat(&v306);
        v98 = v97;
        *v325 = v96;
        *&v325[8] = v97;
        v99 = *a2 + *(a2 + 8);
        v306 = &v96[v97];
        *&v307 = v99 - &v96[v97];
        v100 = re::RigDataParser::parseWhitespace(&v306);
        v102 = &v100[v101];
        v103 = &v100[v101] < v99;
        if (strncmp(&v100[v101], ",", v103) || asc_1E3139DCD[v103])
        {
          if (v7 != 8)
          {
            goto LABEL_176;
          }

          v103 = v98;
          v102 = v96;
        }

        v94 = &v102[v103];
        *(v348 + v7) = re::RigDataParser::stringToFloat(v325);
        v7 = (v7 + 4);
      }

      while (v7 != 12);
      k = *a2 + *(a2 + 8);
      *v325 = &v102[v103];
      *&v325[8] = k - v94;
      v104 = re::RigDataParser::parseWhitespace(v325);
      v106 = &v104[v105];
      v107 = &v104[v105] < k;
      if (strncmp(&v104[v105], "]", v107))
      {
        goto LABEL_176;
      }

      if (asc_1E3139E7B[v107])
      {
        goto LABEL_176;
      }

      if (a3)
      {
        k = *a2 + *(a2 + 8);
        *v325 = &v106[v107];
        *&v325[8] = k - &v106[v107];
        v108 = re::RigDataParser::parseWhitespace(v325);
        if (&v108[v24] != k)
        {
          goto LABEL_176;
        }
      }

      v44 = &v106[v107];
      v45 = v348[0];
      v324 = v348[0];
      goto LABEL_89;
    }

    v144 = re::RigDataParser::parseWhitespace(a2);
    v146 = &v144[v145];
    v147 = &v144[v145] < *a2 + *(a2 + 8);
    if (!strncmp(&v144[v145], "[", v147) && !asc_1E3139E79[v147])
    {
      k = 0;
      v148 = &v146[v147];
      v306 = 0;
      v7 = &v306;
      v149 = 1;
      do
      {
        v150 = v149;
        v151 = *a2 + *(a2 + 8) - v148;
        *v325 = v148;
        *&v325[8] = v151;
        v152 = re::RigDataParser::parseFloat(v325);
        v154 = v153;
        *&v348[0] = v152;
        *(&v348[0] + 1) = v153;
        v155 = *a2 + *(a2 + 8);
        *v325 = &v152[v153];
        *&v325[8] = v155 - &v152[v153];
        v156 = re::RigDataParser::parseWhitespace(v325);
        v158 = &v156[v157];
        v159 = &v156[v157] < v155;
        v160 = !strncmp(&v156[v157], ",", v159) && asc_1E3139DCD[v159] == 0;
        if (((k | v160) & 1) == 0)
        {
          goto LABEL_176;
        }

        v161 = !v160;
        if (v160)
        {
          v162 = v158;
        }

        else
        {
          v162 = v152;
        }

        if (v161)
        {
          v163 = v154;
        }

        else
        {
          v163 = v159;
        }

        v148 = &v162[v163];
        v164 = re::RigDataParser::stringToFloat(v348);
        v149 = 0;
        *v7 = v164;
        k = 1;
        v7 = (&v306 + 4);
      }

      while ((v150 & 1) != 0);
      k = *a2 + *(a2 + 8);
      *&v348[0] = v148;
      *(&v348[0] + 1) = k - v148;
      v165 = re::RigDataParser::parseWhitespace(v348);
      v167 = &v165[v166];
      v168 = &v165[v166] < k;
      if (!strncmp(&v165[v166], "]", v168) && !asc_1E3139E7B[v168])
      {
        if (!a3 || (k = *a2 + *(a2 + 8), *&v348[0] = &v167[v168], *(&v348[0] + 1) = k - &v167[v168], v169 = re::RigDataParser::parseWhitespace(v348), &v169[v24] == k))
        {
          v44 = &v167[v168];
          *(v305 + 14) = v306;
          goto LABEL_142;
        }
      }
    }

    goto LABEL_176;
  }

  v305 = a1;
  if (*(a1 + 32) <= 3u)
  {
    switch(v9)
    {
      case 1:
        v109 = re::RigDataParser::parseWhitespace(a2);
        k = &v109[v110];
        v111 = &v109[v110 + 1];
        if (v109[v110] != 45)
        {
          v111 = &v109[v110];
        }

        v112 = *a2 + *(a2 + 8) - v111;
        *&v348[0] = v111;
        *(&v348[0] + 1) = v112;
        v113 = re::RigDataParser::parseNumeric(v348);
        v115 = v113;
        v116 = v114;
        if (a3)
        {
          v7 = (*a2 + *(a2 + 8));
          *&v348[0] = &v113[v114];
          *(&v348[0] + 1) = v7 - &v113[v114];
          v117 = re::RigDataParser::parseWhitespace(v348);
          if (&v117[v24] != v7)
          {
            goto LABEL_176;
          }
        }

        v44 = &v115[v116];
        v118 = *k;
        v119 = v118 == 45;
        if (&v115[v116 - k] == v119)
        {
          v120 = 0;
          v121 = v305;
        }

        else
        {
          v120 = 0;
          v171 = (k + v119);
          v121 = v305;
          do
          {
            v172 = *v171++;
            v120 = v172 + 10 * v120 - 48;
          }

          while (v171 != v44);
        }

        if (v118 == 45)
        {
          v173 = -v120;
        }

        else
        {
          v173 = v120;
        }

        *(v121 + 28) = v173;
        break;
      case 2:
        v59 = re::RigDataParser::parseNumeric(a2);
        v61 = v59;
        v62 = v60;
        if (a3)
        {
          k = *a2 + *(a2 + 8);
          *&v348[0] = &v59[v60];
          *(&v348[0] + 1) = k - &v59[v60];
          v63 = re::RigDataParser::parseWhitespace(v348);
          if (&v63[v24] != k)
          {
            goto LABEL_176;
          }
        }

        v44 = &v61[v62];
        v64 = 0;
        if (v62)
        {
          v65 = v305;
          do
          {
            v66 = *v61++;
            v64 = v66 + 10 * v64 - 48;
            --v62;
          }

          while (v62);
        }

        else
        {
          v65 = v305;
        }

        *(v65 + 28) = v64;
        break;
      case 3:
        v19 = re::RigDataParser::parseFloat(a2);
        v21 = v19;
        v22 = v20;
        *&v348[0] = v19;
        *(&v348[0] + 1) = v20;
        if (a3)
        {
          k = *a2 + *(a2 + 8);
          *v325 = &v19[v20];
          *&v325[8] = k - &v19[v20];
          v23 = re::RigDataParser::parseWhitespace(v325);
          v7 = v305;
          if (&v23[v24] != k)
          {
            goto LABEL_176;
          }
        }

        else
        {
          v7 = v305;
        }

        v170 = &v21[v22];
        *(v7 + 28) = re::RigDataParser::stringToFloat(v348);
LABEL_133:
        *a4 = 1;
        *(a4 + 8) = v170;
        return;
      default:
        goto LABEL_307;
    }

LABEL_142:
    *a4 = 1;
    *(a4 + 8) = v44;
    return;
  }

  if (v9 == 4)
  {
    v122 = re::RigDataParser::parseWhitespace(a2);
    v124 = &v122[v123];
    v125 = &v122[v123] < *a2 + *(a2 + 8);
    if (strncmp(&v122[v123], "[", v125) || asc_1E3139E79[v125])
    {
      goto LABEL_176;
    }

    v7 = 0;
    v126 = &v124[v125];
    memset(v348, 0, 48);
    v127 = v348;
    do
    {
      for (k = 0; k != 12; k += 4)
      {
        v128 = *a2 + *(a2 + 8) - v126;
        v306 = v126;
        *&v307 = v128;
        v129 = re::RigDataParser::parseFloat(&v306);
        v131 = v130;
        *v325 = v129;
        *&v325[8] = v130;
        v132 = *a2 + *(a2 + 8);
        v306 = &v129[v130];
        *&v307 = v132 - &v129[v130];
        v133 = re::RigDataParser::parseWhitespace(&v306);
        v135 = &v133[v134];
        v136 = &v133[v134] < v132;
        if (strncmp(&v133[v134], ",", v136) || asc_1E3139DCD[v136])
        {
          if (v7 != 2 || k != 8)
          {
            goto LABEL_176;
          }

          v136 = v131;
          v135 = v129;
        }

        v126 = &v135[v136];
        *(v127 + k) = re::RigDataParser::stringToFloat(v325);
      }

      v7 = (v7 + 1);
      ++v127;
    }

    while (v7 != 3);
    k = *a2 + *(a2 + 8);
    *v325 = &v135[v136];
    *&v325[8] = k - v126;
    v137 = re::RigDataParser::parseWhitespace(v325);
    v139 = &v137[v138];
    v140 = &v137[v138] < k;
    if (!strncmp(&v137[v138], "]", v140) && !asc_1E3139E7B[v140])
    {
      if (!a3 || (k = *a2 + *(a2 + 8), *v325 = &v139[v140], *&v325[8] = k - &v139[v140], v141 = re::RigDataParser::parseWhitespace(v325), &v141[v24] == k))
      {
        v44 = &v139[v140];
        v142 = v348[1];
        v316 = v348[0];
        v317 = v348[1];
        v143 = v348[2];
        v318 = v348[2];
        *(v305 + 7) = v348[0];
        *(v305 + 8) = v142;
        *(v305 + 9) = v143;
        goto LABEL_142;
      }
    }

    goto LABEL_176;
  }

  if (v9 != 5)
  {
    if (v9 != 6)
    {
      goto LABEL_307;
    }

    v25 = re::RigDataParser::parseWhitespace(a2);
    v27 = &v25[v26];
    v28 = &v25[v26] < *a2 + *(a2 + 8);
    if (strncmp(&v25[v26], "[", v28) || asc_1E3139E79[v28])
    {
      goto LABEL_176;
    }

    v7 = 0;
    v29 = &v27[v28];
    v348[0] = xmmword_1E30474D0;
    k = v348;
    do
    {
      v30 = *a2 + *(a2 + 8) - v29;
      v306 = v29;
      *&v307 = v30;
      v31 = re::RigDataParser::parseFloat(&v306);
      v33 = v32;
      *v325 = v31;
      *&v325[8] = v32;
      v34 = *a2 + *(a2 + 8);
      v306 = &v31[v32];
      *&v307 = v34 - &v31[v32];
      v35 = re::RigDataParser::parseWhitespace(&v306);
      v37 = &v35[v36];
      v38 = &v35[v36] < v34;
      if (strncmp(&v35[v36], ",", v38) || asc_1E3139DCD[v38])
      {
        if (v7 != 12)
        {
          goto LABEL_176;
        }

        v38 = v33;
        v37 = v31;
      }

      v29 = &v37[v38];
      *(v348 + v7) = re::RigDataParser::stringToFloat(v325);
      v7 = (v7 + 4);
    }

    while (v7 != 16);
    k = *a2 + *(a2 + 8);
    *v325 = &v37[v38];
    *&v325[8] = k - v29;
    v39 = re::RigDataParser::parseWhitespace(v325);
    v41 = &v39[v40];
    v42 = &v39[v40] < k;
    if (strncmp(&v39[v40], "]", v42))
    {
      goto LABEL_176;
    }

    if (asc_1E3139E7B[v42])
    {
      goto LABEL_176;
    }

    if (a3)
    {
      k = *a2 + *(a2 + 8);
      *v325 = &v41[v42];
      *&v325[8] = k - &v41[v42];
      v43 = re::RigDataParser::parseWhitespace(v325);
      if (&v43[v24] != k)
      {
        goto LABEL_176;
      }
    }

    v44 = &v41[v42];
    v45 = v348[0];
    v323 = v348[0];
LABEL_89:
    *(v305 + 7) = v45;
    goto LABEL_142;
  }

  v67 = re::RigDataParser::parseWhitespace(a2);
  v69 = &v67[v68];
  v70 = &v67[v68] < *a2 + *(a2 + 8);
  if (strncmp(&v67[v68], "[", v70) || asc_1E3139E79[v70])
  {
    goto LABEL_176;
  }

  v7 = 0;
  v71 = &v69[v70];
  memset(v348, 0, sizeof(v348));
  v72 = v348;
  do
  {
    for (k = 0; k != 16; k += 4)
    {
      v73 = *a2 + *(a2 + 8) - v71;
      v306 = v71;
      *&v307 = v73;
      v74 = re::RigDataParser::parseFloat(&v306);
      v76 = v75;
      *v325 = v74;
      *&v325[8] = v75;
      v77 = *a2 + *(a2 + 8);
      v306 = &v74[v75];
      *&v307 = v77 - &v74[v75];
      v78 = re::RigDataParser::parseWhitespace(&v306);
      v80 = &v78[v79];
      v81 = &v78[v79] < v77;
      if (strncmp(&v78[v79], ",", v81) || asc_1E3139DCD[v81])
      {
        if (v7 != 3 || k != 12)
        {
          goto LABEL_176;
        }

        v81 = v76;
        v80 = v74;
      }

      v71 = &v80[v81];
      *(v72 + k) = re::RigDataParser::stringToFloat(v325);
    }

    v7 = (v7 + 1);
    ++v72;
  }

  while (v7 != 4);
  k = *a2 + *(a2 + 8);
  *v325 = &v80[v81];
  *&v325[8] = k - v71;
  v82 = re::RigDataParser::parseWhitespace(v325);
  v84 = &v82[v83];
  v85 = &v82[v83] < k;
  if (!strncmp(&v82[v83], "]", v85) && !asc_1E3139E7B[v85])
  {
    if (!a3 || (k = *a2 + *(a2 + 8), *v325 = &v84[v85], *&v325[8] = k - &v84[v85], v86 = re::RigDataParser::parseWhitespace(v325), &v86[v24] == k))
    {
      v44 = &v84[v85];
      v87 = v348[1];
      v319 = v348[0];
      v320 = v348[1];
      v88 = v348[2];
      v89 = v348[3];
      v321 = v348[2];
      v322 = v348[3];
      *(v305 + 7) = v348[0];
      *(v305 + 8) = v87;
      *(v305 + 9) = v88;
      *(v305 + 10) = v89;
      goto LABEL_142;
    }
  }

LABEL_176:
  v194 = *v10;
  if (v194 >= 0xE)
  {
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *v10, 14);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v292, v295);
    __break(1u);
LABEL_299:
    v306 = 0;
    v349 = 0u;
    memset(v348, 0, sizeof(v348));
    v286 = MEMORY[0x1E69E9C10];
    v287 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v325 = 136315906;
    *&v325[4] = "operator[]";
    *&v325[12] = 1024;
    if (v287)
    {
      v288 = 3;
    }

    else
    {
      v288 = 2;
    }

    *&v325[14] = 789;
    *&v325[18] = 2048;
    *&v325[20] = k;
    *&v325[28] = 2048;
    *&v325[30] = v7;
    _os_log_send_and_compose_impl(v288, &v306, v348, 80, &dword_1E1C61000, v286, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v325, 38, v296, v297);
    _os_crash_msg();
    __break(1u);
LABEL_303:
    v306 = 0;
    v349 = 0u;
    memset(v348, 0, sizeof(v348));
    v289 = MEMORY[0x1E69E9C10];
    v290 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v325 = 136315906;
    *&v325[4] = "operator[]";
    *&v325[12] = 1024;
    if (v290)
    {
      v291 = 3;
    }

    else
    {
      v291 = 2;
    }

    *&v325[14] = 789;
    *&v325[18] = 2048;
    *&v325[20] = k;
    *&v325[28] = 2048;
    *&v325[30] = v10;
    _os_log_send_and_compose_impl(v291, &v306, v348, 80, &dword_1E1C61000, v289, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v325, 38, v296, v297);
    _os_crash_msg();
    __break(1u);
  }

  v195 = *v305;
  v196 = (&re::kRigDataTypeDescriptions)[2 * v194];
  re::DynamicString::DynamicString(v325, *a2, *(a2 + 8), *v305);
  if (v325[8])
  {
    v198 = *&v325[16];
  }

  else
  {
    v198 = &v325[9];
  }

  re::DynamicString::format(v348, v195, "Could not parse valid %s value: %s", v197, v196, v198);
LABEL_195:
  v211 = v348[0];
  v212 = v348[1];
  *a4 = 0;
  *(a4 + 8) = 5002;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v211;
  *(a4 + 40) = v212;
  v213 = *v325;
  if (*v325 && (v325[8] & 1) != 0)
  {
    v214 = *&v325[16];
    goto LABEL_198;
  }
}

uint64_t re::RigDataValue::setCompilationValueFromCallbackOutput(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  v59 = *MEMORY[0x1E69E9840];
  v6 = *(result + 256);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(v5 + 256);
      if (v9 <= v8)
      {
        break;
      }

      v9 = a2[32];
      if (v9 <= v8)
      {
        goto LABEL_40;
      }

      result = re::RigDataValue::setCompilationValueFromCallbackOutput(*(v5 + 272) + v7, (a2[34] + v7), a3);
      ++v8;
      v7 += 288;
      if (v6 == v8)
      {
        return result;
      }
    }

    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v49 = 789;
    v50 = 2048;
    v51 = v8;
    v52 = 2048;
    v53 = v9;
    _os_log_send_and_compose_impl(v22, &v45, &v54, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v43, v44);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v49 = 797;
    v50 = 2048;
    v51 = v8;
    v52 = 2048;
    v53 = v9;
    _os_log_send_and_compose_impl(v25, &v45, &v54, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v43, v44);
    _os_crash_msg();
    __break(1u);
    goto LABEL_44;
  }

  v10 = a2[22];
  v11 = *(result + 32);
  if (v11 > 4)
  {
    if (*(result + 32) > 6u)
    {
      if (v11 == 7)
      {
        v20 = a3[31];
        if (v20 <= v10)
        {
          goto LABEL_51;
        }

        v13 = a3[30];
      }

      else
      {
        if (v11 != 8)
        {
          goto LABEL_52;
        }

        v16 = a3[33];
        if (v16 <= v10)
        {
LABEL_47:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v16);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v38);
          __break(1u);
          goto LABEL_48;
        }

        v13 = a3[32];
      }
    }

    else if (v11 == 5)
    {
      v18 = a3[27];
      if (v18 <= v10)
      {
LABEL_49:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v18);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v40);
        __break(1u);
        goto LABEL_50;
      }

      v13 = a3[26];
    }

    else
    {
      if (v11 != 6)
      {
        goto LABEL_52;
      }

      v14 = a3[29];
      if (v14 <= v10)
      {
LABEL_45:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v14);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v36);
        __break(1u);
        goto LABEL_46;
      }

      v13 = a3[28];
    }
  }

  else if (*(result + 32) > 2u)
  {
    if (v11 == 3)
    {
      v19 = a3[23];
      if (v19 <= v10)
      {
LABEL_50:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v19);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v41);
        __break(1u);
LABEL_51:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v20);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v33, v42);
        __break(1u);
      }

      v13 = a3[22];
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_52;
      }

      v15 = a3[25];
      if (v15 <= v10)
      {
LABEL_46:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v15);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v37);
        __break(1u);
        goto LABEL_47;
      }

      v13 = a3[24];
    }
  }

  else
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        v12 = a3[21];
        if (v12 <= v10)
        {
LABEL_44:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v35);
          __break(1u);
          goto LABEL_45;
        }

        v13 = a3[20];
        goto LABEL_34;
      }

LABEL_52:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Cannot resolve invalid compile time type: %u", "!Unreachable code", "setCompilationValueFromCallbackOutput", 625, *(result + 32));
      result = _os_crash("assertion failure: (!Unreachable code) Cannot resolve invalid compile time type: %u", v34);
      __break(1u);
      return result;
    }

    v17 = a3[19];
    if (v17 <= v10)
    {
LABEL_48:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v17);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v39);
      __break(1u);
      goto LABEL_49;
    }

    v13 = a3[18];
  }

LABEL_34:
  *(result + 176) = *(v13 + 8 * v10);
  *(result + 96) = 2;
  return result;
}

re::RigDataValue *re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::add(uint64_t a1, re::RigDataValue *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 304 * v5);
  *v11 = *a2;
  result = re::RigDataValue::RigDataValue((v11 + 2), (a2 + 16));
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t std::__function::__func<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE710;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = **(result + 8);
    re::DynamicArray<unsigned long>::deinit(v2 + 320);
    re::DynamicArray<unsigned long>::deinit(v2 + 280);
    re::DynamicArray<unsigned long>::deinit(v2 + 240);
    re::DynamicArray<re::StringID>::deinit(v2 + 200);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v2 + 160);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v2 + 120);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 72));
    v4.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 24));
    v5 = *(*v3 + 40);

    return v5(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::RigDataValue(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::RigDataValue::operator=(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::operator=(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE7A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigDataValue::operator=(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::operator=(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = **(result + 8);
    re::DynamicArray<unsigned long>::deinit(v2 + 320);
    re::DynamicArray<unsigned long>::deinit(v2 + 280);
    re::DynamicArray<unsigned long>::deinit(v2 + 240);
    re::DynamicArray<re::StringID>::deinit(v2 + 200);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v2 + 160);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v2 + 120);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 72));
    v4.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 24));
    v5 = *(*v3 + 40);

    return v5(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<re::RigDataValue::operator=(re::RigDataValue const&)::$_0,std::allocator<re::RigDataValue::operator=(re::RigDataValue const&)::$_0>,void ()(re::RigHierarchy *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0,std::allocator<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0>,void ()(re::RigHierarchy *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE820;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0,std::allocator<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0>,void ()(re::RigHierarchy *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = **(result + 8);
    re::DynamicArray<unsigned long>::deinit(v2 + 320);
    re::DynamicArray<unsigned long>::deinit(v2 + 280);
    re::DynamicArray<unsigned long>::deinit(v2 + 240);
    re::DynamicArray<re::StringID>::deinit(v2 + 200);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v2 + 160);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v2 + 120);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 72));
    v4.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v2 + 24));
    v5 = *(*v3 + 40);

    return v5(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0,std::allocator<re::RigDataValue::init(re::Allocator *,re::RigEnvironment const*,re::RigDataTypeClass const&,re::EvaluationTree *)::$_0>,void ()(re::RigHierarchy *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Pair<unsigned long,re::RigDataValue,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x130uLL))
        {
          v2 = 304 * a2;
          result = (*(*result + 32))(result, 304 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 304, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v7 + 2);
        v11 = 304 * v9;
        v12 = (v8 + 16);
        do
        {
          *(v10 - 2) = *(v12 - 2);
          re::RigDataValue::RigDataValue(v10, v12);
          re::RigDataValue::~RigDataValue(v12);
          v10 = (v10 + 304);
          v12 = (v12 + 304);
          v11 -= 304;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_OWORD *re::internal::translationFilterCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a4)
  {
    re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3, a2);
    CoreIKDoubleExponentialPositionFilterDoFilter();
    if (a8)
    {
      v18 = v12;
      result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a7, v11);
      *result = v18;
      return result;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::internal::translationFilterCompile(re::Allocator **a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v30 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  re::RigGraphCallbackBuilder::init(v26, *a1);
  *&v31.var0 = 0x3F8FE4A467F9494ELL;
  v31.var1 = "InputTranslation";
  if (!a3)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v25);
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addInputParam(v26, &v31, *a2);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0xA3F9AE02669A47F4;
  v31.var1 = "FilteredTranslation";
  if (!a5)
  {
    goto LABEL_13;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v26, &v31, *a4);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  if (a3 == 1)
  {
    goto LABEL_14;
  }

  if (a3 <= 2)
  {
    goto LABEL_15;
  }

  v15 = *a1;
  v16 = (*(**a1 + 32))(*a1, 16, 8);
  *v16 = CoreIKDoubleExponentialPositionFilterCreate();
  v16[1] = v15;
  v34[0] = &unk_1F5CAE8A0;
  v34[1] = v15;
  v34[3] = v34;
  p_var1 = &v31.var1;
  *&v31.var0 = v16;
  v31.var1 = &unk_1F5CAE8A0;
  v32 = v15;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v34);
  re::RigGraphCallbackBuilder::buildCallbackData(v26, a1, re::internal::translationFilterCallback, &v31);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v31);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v28 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v26 + 8);
  return 1;
}

_OWORD *re::internal::translationAndRotationFilterCallback(int a1, const re::RigDataValue *a2, re::internal *this, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a4)
  {
    re::internal::getSRTFromRDV(&v22, this);
    CoreIKDoubleExponentialTransformFilterDoFilter();
    *&v19 = 0x3F8000003F800000;
    *(&v19 + 1) = 1065353216;
    v20 = v13;
    v21 = v12;
    if (a8)
    {
      return re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a7, &v19);
    }
  }

  else
  {
    re::internal::assertLog(6, a2, this, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
    __break(1u);
  }

  re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0, v19, v20, v21);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v18);
  __break(1u);
  return result;
}

uint64_t re::internal::translationAndRotationFilterCompile(re::Allocator **a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v30 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  re::RigGraphCallbackBuilder::init(v26, *a1);
  *&v31.var0 = 0xF857424D6C8245C4;
  v31.var1 = "InputTransform";
  if (!a3)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v25);
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addInputParam(v26, &v31, *a2);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0xEA53A3BE787EB5EALL;
  v31.var1 = "FilteredTransform";
  if (!a5)
  {
    goto LABEL_13;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v26, &v31, *a4);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  if (a3 == 1)
  {
    goto LABEL_14;
  }

  if (a3 <= 2)
  {
    goto LABEL_15;
  }

  v15 = *a1;
  v16 = (*(**a1 + 32))(*a1, 16, 8);
  *v16 = CoreIKDoubleExponentialTransformFilterCreate();
  v16[1] = v15;
  v34[0] = &unk_1F5CAE920;
  v34[1] = v15;
  v34[3] = v34;
  p_var1 = &v31.var1;
  *&v31.var0 = v16;
  v31.var1 = &unk_1F5CAE920;
  v32 = v15;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v34);
  re::RigGraphCallbackBuilder::buildCallbackData(v26, a1, re::internal::translationAndRotationFilterCallback, &v31);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v31);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v28 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v26 + 8);
  return 1;
}

void re::internal::registerTranslationFilter(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717EE8;
  v11[1] = *&off_1E8717EF8;
  v11[2] = xmmword_1E8717F08;
  v11[3] = *&off_1E8717F18;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::translationFilterCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerTranslationAndRotationFilter(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717F28;
  v11[1] = *&off_1E8717F38;
  v11[2] = xmmword_1E8717F48;
  v11[3] = *&off_1E8717F58;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::translationAndRotationFilterCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_47CoreIKDoubleExponentialPositionFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE8A0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_47CoreIKDoubleExponentialPositionFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EEclEOSC_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDoubleExponentialPositionFilterDestroy();
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_47CoreIKDoubleExponentialPositionFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_47CoreIKDoubleExponentialPositionFilterNodeHelperENS_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_48CoreIKDoubleExponentialTransformFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE920;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_48CoreIKDoubleExponentialTransformFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EEclEOSC_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDoubleExponentialTransformFilterDestroy();
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_48CoreIKDoubleExponentialTransformFilterNodeHelperENS2_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISD_EEFvSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_48CoreIKDoubleExponentialTransformFilterNodeHelperENS_9AllocatorEJffEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_DWORD *re::internal::getRuntimeValue<re::internal::IKLookAtTaskSettings>@<X0>(re::RigDataValue *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = re::RigDataValue::attributeValue(a1, 0);
  *a2 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v4, v5);
  v6 = re::RigDataValue::attributeValue(a1, 1uLL);
  *(a2 + 16) = *re::RigDataValue::getRuntimeValue<float>(v6, v7);
  v8 = re::RigDataValue::attributeValue(a1, 2uLL);
  result = re::RigDataValue::getRuntimeValue<int>(v8, v9);
  *(a2 + 20) = *result;
  return result;
}

uint64_t re::internal::CoreIKGenericSolverNodeHelper::updateInteralRestPose(uint64_t this, const re::RigDataValue *a2)
{
  if (*(this + 40) == 1)
  {
    v11 = v2;
    v12 = v3;
    v5 = this;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v6 = *(this + 8);
    JointCount = CoreIKGenericSolverGetJointCount();
    re::FixedArray<CoreIKTransform>::init<>(&v8, v6, JointCount);
    re::internal::transferPose(a2, &v8);
    CoreIKGenericSolverSetRestPose();
    *(v5 + 40) = 0;
    this = v8;
    if (v8)
    {
      if (v9)
      {
        return (*(*v8 + 40))();
      }
    }
  }

  return this;
}

void *re::internal::CoreIKGenericSolverNodeHelper::updateStandardTasks(void *this, const re::RigDataValue *a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      v6 = re::RigDataValue::attributeValue(a2, i);
      v7 = re::RigDataValue::attributeValue(v6, 0);
      v8 = re::RigDataValue::attributeValue(v7, 0);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v8, v9);
      v10 = re::RigDataValue::attributeValue(v6, 0);
      v11 = re::RigDataValue::attributeValue(v10, 1uLL);
      re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v11, v12);
      v13 = re::RigDataValue::attributeValue(v6, 0);
      v14 = re::RigDataValue::attributeValue(v13, 2uLL);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v14, v15);
      v16 = re::RigDataValue::attributeValue(v6, 1uLL);
      re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v16, v17);
      v18 = re::RigDataValue::attributeValue(v6, 2uLL);
      Runtime = re::RigDataValue::getRuntimeValue<int>(v18, v19);
      MEMORY[0x1E6903A00](*v4, *Runtime);
      this = CoreIKGenericConstraintSetTargetParameters();
    }
  }

  return this;
}

unint64_t re::RigDataValue::attributeValue(re::RigDataValue *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 32);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 34) + 288 * a2;
}

{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 32);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 34) + 288 * a2;
}

void *re::internal::CoreIKGenericSolverNodeHelper::updateLookAtTasks(void *this, const re::RigDataValue *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      v6 = re::RigDataValue::attributeValue(a2, i);
      re::internal::getRuntimeValue<re::internal::IKLookAtTaskSettings>(v6, &v7);
      MEMORY[0x1E6903A00](*v4, v8);
      this = CoreIKGenericConstraintSetLookAtParameters();
    }
  }

  return this;
}

uint64_t re::internal::CoreIKGenericSolverNodeHelper::solveAndUpdate(re::internal::CoreIKGenericSolverNodeHelper *this, const re::RigDataValue *a2, re::RigDataValue *a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v6 = CoreIKGenericSolverSolve();
  if (re::internal::enableSignposts(0, 0))
  {
    CoreIKGenericSolverGetConstraintCount();
    CoreIKGenericSolverGetJointCount();
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v6, a2, this + 1, a3);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::genericSolverCallback(uint64_t a1, uint64_t a2, _BOOL8 a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, re::internal::CoreIKGenericSolverNodeHelper *a9)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, a3, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v17);
    __break(1u);
    goto LABEL_14;
  }

  if (a4 == 1)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v18);
    __break(1u);
    goto LABEL_15;
  }

  if (a4 <= 2)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v19);
    __break(1u);
    goto LABEL_16;
  }

  if (a4 == 3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v20);
    __break(1u);
    goto LABEL_17;
  }

  if (!a8)
  {
LABEL_17:
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v21);
    __break(1u);
    return result;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::CoreIKGenericSolverNodeHelper::updateInteralRestPose(a9, (a3 + 864));
  re::internal::CoreIKGenericSolverNodeHelper::updateStandardTasks(a9, a3);
  re::internal::CoreIKGenericSolverNodeHelper::updateLookAtTasks(a9, (a3 + 288));
  re::internal::transferPose((a3 + 576), a9 + 16);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return re::internal::CoreIKGenericSolverNodeHelper::solveAndUpdate(a9, (a3 + 576), a7);
}

uint64_t re::internal::genericSolverCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v66[37] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v33);
    __break(1u);
    goto LABEL_39;
  }

  if (a3 == 1)
  {
LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v34);
    __break(1u);
    goto LABEL_40;
  }

  if (a3 <= 2)
  {
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v35);
    __break(1u);
    goto LABEL_41;
  }

  v10 = a2[1];
  v11 = *(*a2 + 184);
  v12 = a2[2];
  v43[0] = 0x51C691EF1C9C00D8;
  v43[1] = "IKLookAtTaskSettings[0]";
  re::internal::makeRigDataValue(a1, v43, v66);
  if (v43[0])
  {
    if (v43[0])
    {
    }
  }

  if (a3 == 4)
  {
    re::RigDataValue::operator=(v66, a2[3]);
  }

  if (!a5)
  {
LABEL_41:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v36);
    __break(1u);
  }

  v15 = *a4;
  v16 = strlen(*(v10 + 232));
  v17 = MEMORY[0x1E6903780](*(v10 + 232), v16);
  re::internal::makePoseFromRig(a1, v11, v17, v65);
  re::RigHierarchy::getBindPoseHierarchy(v11, v18, v43);
  re::internal::makePoseFromRig(a1, v43, v17, v64);
  if (v59)
  {
    if (v63)
    {
      (*(*v59 + 40))();
    }

    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    ++v62;
  }

  if (v54)
  {
    if (v58)
    {
      (*(*v54 + 40))();
    }

    v58 = 0;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    ++v57;
  }

  if (v49)
  {
    if (v53)
    {
      (*(*v49 + 40))();
    }

    v53 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    ++v52;
  }

  re::DynamicArray<re::StringID>::deinit(&v48);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v47);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v46);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v45);
  v19 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v44);
  v20 = MEMORY[0x1E6903C40](v17, v19);
  re::internal::makePose(a1, v20, v43);
  v41 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v21 = *a1;
  re::RigGraphCallbackBuilder::init(v37, *a1);
  *&v42[0].var0 = 0x3D8860E9FFCEA9D0;
  v42[0].var1 = "TaskSettings";
  re::RigGraphCallbackBuilder::addInputParam(v37, v42, v12);
  if (*&v42[0].var0)
  {
    if (*&v42[0].var0)
    {
    }
  }

  *&v42[0].var0 = 0x80FA33623D02F274;
  v42[0].var1 = "LookAtTaskSettings";
  re::RigGraphCallbackBuilder::addInputParam(v37, v42, v66);
  if (*&v42[0].var0)
  {
    if (*&v42[0].var0)
    {
    }
  }

  *&v42[0].var0 = 0x76F1BA5D1EB6;
  v42[0].var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v37, v42, v65);
  if (*&v42[0].var0)
  {
    if (*&v42[0].var0)
    {
    }
  }

  *&v42[0].var0 = 0x8C23D7EF0C569870;
  v42[0].var1 = "InputBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v37, v42, v64);
  if (*&v42[0].var0)
  {
    if (*&v42[0].var0)
    {
    }
  }

  *&v42[0].var0 = 0x10498EC9357CACLL;
  v42[0].var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v37, v42, v43);
  if (*&v42[0].var0)
  {
    if (*&v42[0].var0)
    {
    }
  }

  re::internal::makeNodeUnique<re::internal::CoreIKGenericSolverNodeHelper,re::Allocator,CoreIKRig *>(v42, v21, v17);
  re::RigGraphCallbackBuilder::buildCallbackData(v37, a1, re::internal::genericSolverCallback, v42);
  v27 = re::internal::bindCallbackOutputToNodeOutputPose(v11, v43, v17, a1, v15);
  MEMORY[0x1E69037D0](v17, v27);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v42);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v39 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v37 + 8);
  re::RigDataValue::~RigDataValue(v43);
  re::RigDataValue::~RigDataValue(v64);
  re::RigDataValue::~RigDataValue(v65);
  re::RigDataValue::~RigDataValue(v66);
  return 1;
}

uint64_t re::internal::makeNodeUnique<re::internal::CoreIKGenericSolverNodeHelper,re::Allocator,CoreIKRig *>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v5 = (*(*a2 + 32))(a2, 48, 8);
  *v5 = CoreIKGenericSolverCreate();
  *(v5 + 8) = a2;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 40) = 1;
  JointCount = CoreIKGenericSolverGetJointCount();
  re::FixedArray<CoreIKTransform>::init<>((v5 + 16), a2, JointCount);
  v8[0] = &unk_1F5CAE9A0;
  v8[1] = a2;
  v8[3] = v8;
  a1[4] = (a1 + 1);
  *a1 = v5;
  a1[1] = &unk_1F5CAE9A0;
  a1[2] = a2;
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v8);
}

uint64_t re::internal::genericSolverDebugCallback(uint64_t a1, uint64_t a2, _BOOL8 a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, re::internal::CoreIKGenericSolverNodeHelper *a9)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a4)
  {
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v29);
    __break(1u);
    goto LABEL_16;
  }

  re::internal::CoreIKGenericSolverNodeHelper::updateStandardTasks(a9, a3);
  if (a4 == 1)
  {
LABEL_16:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v30);
    __break(1u);
    goto LABEL_17;
  }

  re::internal::CoreIKGenericSolverNodeHelper::updateLookAtTasks(a9, (a3 + 288));
  if (a4 <= 2)
  {
LABEL_17:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v31);
    __break(1u);
    goto LABEL_18;
  }

  v16 = *a9;
  re::internal::GameRigSettingsUpdateHelper::updateRigJointSettings((a3 + 576), *a9);
  if (a4 == 3)
  {
LABEL_18:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v32);
    __break(1u);
    goto LABEL_19;
  }

  re::internal::GameRigSettingsUpdateHelper::updateRigTaskSettings((a3 + 864), v16);
  if (a4 <= 4)
  {
LABEL_19:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v33);
    __break(1u);
    goto LABEL_20;
  }

  re::internal::GameRigSettingsUpdateHelper::updateRigSolverSettings((a3 + 1152), v16);
  if (a4 <= 6)
  {
LABEL_20:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v34);
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v35);
    __break(1u);
    return result;
  }

  re::internal::CoreIKGenericSolverNodeHelper::updateInteralRestPose(a9, (a3 + 1728));
  re::internal::transferPose((a3 + 1440), a9 + 16);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a8)
  {
    goto LABEL_21;
  }

  return re::internal::CoreIKGenericSolverNodeHelper::solveAndUpdate(a9, (a3 + 1440), a7);
}

uint64_t re::internal::genericSolverDebugCompile(re::Allocator **a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v35, v43);
    __break(1u);
    goto LABEL_47;
  }

  if (a3 == 1)
  {
LABEL_47:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v44);
    __break(1u);
LABEL_48:
    re::internal::assertLog(6, v15, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v37, v45);
    __break(1u);
    goto LABEL_49;
  }

  v10 = *(*a2 + 184);
  v11 = *(*(a2 + 8) + 232);
  v12 = strlen(v11);
  v13 = MEMORY[0x1E6903780](v11, v12);
  re::internal::makePoseFromRig(a1, v10, v13, v79);
  re::RigHierarchy::getBindPoseHierarchy(v10, v14, v57);
  re::internal::makePoseFromRig(a1, v57, v13, v78);
  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  if (v68)
  {
    if (v72)
    {
      (*(*v68 + 40))();
    }

    v72 = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    ++v71;
  }

  if (v63)
  {
    if (v67)
    {
      (*(*v63 + 40))();
    }

    v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    ++v66;
  }

  re::DynamicArray<re::StringID>::deinit(&v62);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v61);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v60);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v59);
  v16 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v58);
  if (!a5)
  {
    goto LABEL_48;
  }

  v17 = *a4;
  v18 = MEMORY[0x1E6903C40](v13, v16);
  re::internal::makePose(a1, v18, v57);
  v55 = 0;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  v19 = *a1;
  re::RigGraphCallbackBuilder::init(v51, *a1);
  *&v56[0].var0 = 0x3D8860E9FFCEA9D0;
  v56[0].var1 = "TaskSettings";
  if (a3 <= 2)
  {
LABEL_49:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v38, v46);
    __break(1u);
LABEL_50:
    re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v39, v47);
    __break(1u);
LABEL_51:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v48);
    __break(1u);
LABEL_52:
    re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v41, v49);
    __break(1u);
    goto LABEL_53;
  }

  re::RigGraphCallbackBuilder::addInputParam(v51, v56, *(a2 + 16));
  if (*&v56[0].var0)
  {
    if (*&v56[0].var0)
    {
    }
  }

  *&v56[0].var0 = 0x80FA33623D02F274;
  v56[0].var1 = "LookAtTaskSettings";
  if (a3 == 3)
  {
    goto LABEL_50;
  }

  re::RigGraphCallbackBuilder::addInputParam(v51, v56, *(a2 + 24));
  if (*&v56[0].var0)
  {
    if (*&v56[0].var0)
    {
    }
  }

  *&v56[0].var0 = 0x608B8AAFAB2B677ALL;
  v56[0].var1 = "RigJointSettings";
  if (a3 <= 4)
  {
    goto LABEL_51;
  }

  re::RigGraphCallbackBuilder::addInputParam(v51, v56, *(a2 + 32));
  if (*&v56[0].var0)
  {
    if (*&v56[0].var0)
    {
    }
  }

  *&v56[0].var0 = 0x963E12F0C5BD5BB0;
  v56[0].var1 = "RigTaskSettings";
  if (a3 == 5)
  {
    goto LABEL_52;
  }

  re::RigGraphCallbackBuilder::addInputParam(v51, v56, *(a2 + 40));
  if (*&v56[0].var0)
  {
    if (*&v56[0].var0)
    {
    }
  }

  *&v56[0].var0 = 0x86B1473B92D2CCCCLL;
  v56[0].var1 = "RigSolverSettings";
  if (a3 <= 6)
  {
LABEL_53:
    re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, 6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v42, v50);
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addInputParam(v51, v56, *(a2 + 48));
  if (*&v56[0].var0)
  {
    if (*&v56[0].var0)
    {
    }
  }

  *&v56[0].var0 = 0x76F1BA5D1EB6;
  v56[0].var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v51, v56, v79);
  if (*&v56[0].var0)
  {
    if (*&v56[0].var0)
    {
    }
  }

  *&v56[0].var0 = 0x8C23D7EF0C569870;
  v56[0].var1 = "InputBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v51, v56, v78);
  if (*&v56[0].var0)
  {
    if (*&v56[0].var0)
    {
    }
  }

  *&v56[0].var0 = 0x10498EC9357CACLL;
  v56[0].var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v51, v56, v57);
  if (*&v56[0].var0)
  {
    if (*&v56[0].var0)
    {
    }
  }

  re::internal::makeNodeUnique<re::internal::CoreIKGenericSolverNodeHelper,re::Allocator,CoreIKRig *>(v56, v19, v13);
  re::RigGraphCallbackBuilder::buildCallbackData(v51, a1, re::internal::genericSolverDebugCallback, v56);
  v33 = re::internal::bindCallbackOutputToNodeOutputPose(v10, v57, v13, a1, v17);
  MEMORY[0x1E69037D0](v13, v33);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v56);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v53 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v51 + 8);
  re::RigDataValue::~RigDataValue(v57);
  re::RigDataValue::~RigDataValue(v78);
  re::RigDataValue::~RigDataValue(v79);
  return 1;
}

void re::internal::registerGenericSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8717F88;
  v11[3] = *&off_1E8717F98;
  v11[4] = xmmword_1E8717FA8;
  v11[0] = xmmword_1E8717F68;
  v11[1] = *&off_1E8717F78;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::genericSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerGenericSolverNoLookAtNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717FB8;
  v11[1] = *&off_1E8717FC8;
  v11[2] = xmmword_1E8717FD8;
  v11[3] = *&off_1E8717FE8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::genericSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerGenericSolverWithRigSettingsDebug(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[4] = xmmword_1E8718038;
  v11[5] = *&off_1E8718048;
  v11[6] = xmmword_1E8718058;
  v11[7] = *&off_1E8718068;
  v11[0] = xmmword_1E8717FF8;
  v11[1] = *&off_1E8718008;
  v11[2] = xmmword_1E8718018;
  v11[3] = *&off_1E8718028;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 7uLL, 1uLL, re::internal::genericSolverDebugCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void *re::internal::ikParametersNodeCallback(uint64_t a1, uint64_t a2, re::RigDataValue *a3, uint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue **a7, uint64_t a8, re::BindNode **a9)
{
  if (result)
  {
    if (a4)
    {
      if (a8)
      {
        if (a4 != 1)
        {
          v15 = result;
          v35.i64[0] = 0x3F8000003F800000;
          v35.i64[1] = 1065353216;
          v36.i64[0] = 0;
          v36.i64[1] = 0x3F80000000000000;
          v37 = 0uLL;
          re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(a3 + 288, &v35);
          __asm { FMOV            V0.4S, #1.0 }

          v21 = v36;
          v22 = vnegq_f32(v36);
          v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
          v22.i32[3] = v36.i32[3];
          v35 = vdivq_f32(_Q0, v35);
          v36 = v22;
          v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), v21), v37, v23);
          v25 = vaddq_f32(v24, v24);
          v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
          v27 = vaddq_f32(v37, vmulq_laneq_f32(v26, v21, 3));
          v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v21), v26, v23);
          v37 = vmulq_f32(vaddq_f32(v27, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL)), vnegq_f32(v35));
          return re::FullBodyIKSolver::solve(v15, a3, a7);
        }

LABEL_9:
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
        result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v34);
        __break(1u);
        return result;
      }
    }

    else
    {
      re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v32);
      __break(1u);
    }

    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v33);
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t anonymous namespace::IKComponentSolverWrapper::getSolver(re::BindNode **this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*this == -1)
  {
    return 0;
  }

  v3 = *this;
  v4 = *(Solvers + 8);
  if (v4 <= *this)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 468;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(Solvers + 16) + (v3 << 7);
}

_OWORD *re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(uint64_t a1, _OWORD *a2)
{
  v8 = "scale";
  v9 = 5;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  *a2 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v11, v4);
  if (v10[0] & 1) == 0 && v12 && (v13)
  {
    (*(*v12 + 40))();
  }

  v8 = "rotation";
  v9 = 8;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  a2[1] = *re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v11, v5);
  if (v10[0] & 1) == 0 && v12 && (v13)
  {
    (*(*v12 + 40))();
  }

  v8 = "translation";
  v9 = 11;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v11, v6);
  a2[2] = *result;
  if ((v10[0] & 1) == 0)
  {
    result = v12;
    if (v12)
    {
      if (v13)
      {
        return (*(*v12 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::internal::ikParameterSolverNodeCompile(re::Allocator **a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v240 = *MEMORY[0x1E69E9840];
  v10 = a1[2];
  memset(v239, 0, sizeof(v239));
  re::BindNode::copy(v239, (v10 + 64));
  if (a3 <= 1)
  {
LABEL_124:
    re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v97, v101);
    __break(1u);
LABEL_125:
    re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v98, v102);
    __break(1u);
LABEL_126:
    re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v99, v103);
    __break(1u);
    goto LABEL_127;
  }

  v109 = a4;
  v110 = a5;
  v12 = *v9;
  v13 = *(a2 + 1);
  v14 = (*(**v9 + 32))(*v9, 40, 8);
  v150 = 0u;
  v151 = 0u;
  re::BindNode::copy(&v150, v239);
  *v14 = -1;
  *(v14 + 24) = 0u;
  *(v14 + 8) = 0u;
  re::BindNode::move((v14 + 8), &v150);
  if (Solvers)
  {
    v16 = *(Solvers + 8);
    if (v16)
    {
      v17 = 0;
      v18 = *(Solvers + 16);
      do
      {
        if (re::StringID::operator==(v18, (v13 + 224)))
        {
          *v14 = v17;
        }

        ++v17;
        v18 += 16;
      }

      while (v16 != v17);
    }
  }

  re::BindNode::deinit(&v150);
  *&v150 = &unk_1F5CAEAB8;
  *(&v150 + 1) = v12;
  *(&v151 + 1) = &v150;
  v238[3] = v238;
  v237 = v14;
  v238[0] = &unk_1F5CAEAB8;
  v238[1] = v12;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v150);
  v19 = v237;
  {
    if (v110)
    {
      v50 = *(*a2 + 184);
      v51 = *(*v109 + 184);
      v52 = *v50;
      *(v51 + 16) = *(v50 + 2);
      *v51 = v52;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v51 + 24), v50 + 24);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v51 + 72), v50 + 72);
      re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v51 + 120, v50 + 15);
      re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v51 + 160, v50 + 20);
      re::DynamicArray<re::StringID>::operator=(v51 + 200, v50 + 25);
      re::DynamicArray<unsigned long>::operator=(v51 + 240, v50 + 30);
      re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v51 + 280, v50 + 35);
      re::DynamicArray<unsigned long>::operator=(v51 + 320, v50 + 40);
      goto LABEL_107;
    }

LABEL_127:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v100, v104);
    __break(1u);
  }

  v149 = 0;
  memset(v145, 0, sizeof(v145));
  memset(v147, 0, sizeof(v147));
  v146 = 0;
  v148 = 0;
  re::RigGraphCallbackBuilder::init(v145, v12);
  v21 = v9[2];
  *&v150 = 158357486;
  *(&v150 + 1) = "SRT[]";
  v22 = re::RigEnvironment::lookupRigDataType(&v140, v21, &v150);
  if (v150)
  {
    if (v150)
    {
    }
  }

  v23 = v9[2];
  *&v150 = 164778;
  *(&v150 + 1) = "SRT";
  v24 = re::RigEnvironment::lookupRigDataType(&v135, v23, &v150);
  if (v150)
  {
    if (v150)
    {
    }
  }

  v26 = v9[1];
  v25 = v9[2];
  v27 = *v9;
  memset(v215, 0, sizeof(v215));
  v216 = 0;
  v28 = &str_67;
  v217 = 0;
  v218 = &str_67;
  v223 = 0;
  v221 = 0;
  v219 = 0;
  v220 = 0;
  v222 = 0;
  v224 = 0;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = -1;
  v230 = 0;
  v232 = 0;
  v231 = 0;
  v236 = 0;
  v235 = 0;
  v233 = &str_67;
  memset(v234, 0, sizeof(v234));
  re::RigDataValue::init(v215, v27, v25, &v141, v26);
  v30 = v9[1];
  v29 = v9[2];
  v31 = *v9;
  memset(v193, 0, sizeof(v193));
  v194 = 0;
  v195 = 0;
  v196 = &str_67;
  v201 = 0;
  v199 = 0;
  v197 = 0;
  v198 = 0;
  v200 = 0;
  v202 = 0;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v207 = -1;
  v208 = 0;
  v210 = 0;
  v209 = 0;
  v214 = 0;
  v213 = 0;
  v211 = &str_67;
  memset(v212, 0, sizeof(v212));
  re::RigDataValue::init(v193, v31, v29, &v141, v30);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  JointCount = CoreIKGenericSolverGetJointCount();
  v113 = JointCount;
  if (!JointCount)
  {
    v37 = *(*a2 + 184);
    goto LABEL_33;
  }

  v108 = a3;
  v33 = 0;
  a3 = 0;
  do
  {
    CoreIKGenericSolverGetJoint();
    Name = CoreIKJointGetName();
    *v192 = 0;
    *&v192[8] = &str_67;
    v35 = v133;
    if (v133 <= a3)
    {
      v121 = 0;
      v151 = 0u;
      memset(v152, 0, 48);
      v150 = 0u;
      v85 = MEMORY[0x1E69E9C10];
      v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v172[0]) = 136315906;
      *(v172 + 4) = "operator[]";
      WORD6(v172[0]) = 1024;
      if (v86)
      {
        v87 = 3;
      }

      else
      {
        v87 = 2;
      }

      *(v172 + 14) = 468;
      WORD1(v172[1]) = 2048;
      *(&v172[1] + 4) = a3;
      WORD6(v172[1]) = 2048;
      *(&v172[1] + 14) = v35;
      _os_log_send_and_compose_impl(v87, &v121, &v150, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v172, 38, v105, v106);
      _os_crash_msg();
      __break(1u);
LABEL_112:
      *v192 = 0;
      v151 = 0u;
      memset(v152, 0, 48);
      v150 = 0u;
      v88 = MEMORY[0x1E69E9C10];
      v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v172[0]) = 136315906;
      *(v172 + 4) = "operator[]";
      WORD6(v172[0]) = 1024;
      if (v89)
      {
        v90 = 3;
      }

      else
      {
        v90 = 2;
      }

      *(v172 + 14) = 468;
      WORD1(v172[1]) = 2048;
      *(&v172[1] + 4) = Name;
      WORD6(v172[1]) = 2048;
      *(&v172[1] + 14) = a3;
      _os_log_send_and_compose_impl(v90, v192, &v150, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v172, 38, v105, v106);
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v121 = 0;
      v174 = 0u;
      v173 = 0u;
      memset(v172, 0, sizeof(v172));
      v91 = MEMORY[0x1E69E9C10];
      v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *(a2 + 4) = "operator[]";
      *&v192[12] = 1024;
      if (v92)
      {
        v93 = 3;
      }

      else
      {
        v93 = 2;
      }

      *(a2 + 14) = 797;
      *&v192[18] = 2048;
      *(a2 + 20) = v35;
      *&v192[28] = 2048;
      *(a2 + 30) = v28;
      _os_log_send_and_compose_impl(v93, &v121, v172, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v105, v106);
      _os_crash_msg();
      __break(1u);
LABEL_120:
      v128[0] = 0;
      v174 = 0u;
      v173 = 0u;
      memset(v172, 0, sizeof(v172));
      v94 = MEMORY[0x1E69E9C10];
      v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v95)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      *&v192[14] = 468;
      *&v192[18] = 2048;
      *&v192[20] = v9;
      *&v192[28] = 2048;
      *&v192[30] = v28;
      _os_log_send_and_compose_impl(v96, v128, v172, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v105, v106);
      _os_crash_msg();
      __break(1u);
      goto LABEL_124;
    }

    v36 = re::StringID::operator=((v134 + v33), v192);
    if (v192[0])
    {
      if (v192[0])
      {
      }
    }

    ++a3;
    v33 += 16;
  }

  while (v113 != a3);
  Name = 0;
  v107 = a2;
  v37 = *(*a2 + 184);
  v28 = &v150;
  v38 = 8;
  v111 = v37;
  v112 = v9;
  do
  {
    a3 = v133;
    if (v133 <= Name)
    {
      goto LABEL_112;
    }

    v39 = strlen(*(v134 + v38));
    *&v150 = *(v134 + v38);
    *(&v150 + 1) = v39;
    re::RigHierarchy::getLocalSpaceJointSRT(v37, &v150, v192);
    v35 = *&v192[8];
    v9 = *&v192[16];
    v40 = *&v192[24];
    v42 = v112[1];
    v41 = v112[2];
    v43 = *v112;
    v150 = 0u;
    v151 = 0u;
    v152[0] = 0;
    *&v152[8] = 0;
    a2 = &str_67;
    *&v152[16] = &str_67;
    *&v153 = 0;
    memset(&v152[24], 0, 28);
    BYTE8(v153) = 0;
    *&v155[4] = 0u;
    v156 = 0u;
    memset(v157, 0, 32);
    *&v157[32] = -1;
    v158 = 0;
    *(&v160 + 1) = 0;
    v161 = 0;
    *&v162 = &str_67;
    *&v165 = 0;
    v163 = 0uLL;
    v164 = 0;
    *(&v162 + 1) = 0;
    re::RigDataValue::init(&v150, v43, v41, &v136, v42);
    v44 = re::RigDataValue::attributeValue(&v150, 0);
    *(v44 + 96) = 2;
    *(v44 + 176) = v35;
    v45 = re::RigDataValue::attributeValue(&v150, 1uLL);
    *(v45 + 96) = 2;
    *(v45 + 176) = v9;
    v46 = re::RigDataValue::attributeValue(&v150, 2uLL);
    *(v46 + 96) = 2;
    *(v46 + 176) = v40;
    re::DynamicArray<re::RigDataValue>::add(v234, &v150);
    v48 = v112[1];
    v47 = v112[2];
    v49 = *v112;
    memset(v172, 0, 33);
    *(&v172[2] + 1) = 0;
    *&v173 = &str_67;
    v176 = 0;
    v174 = 0uLL;
    *(&v173 + 1) = 0;
    v175 = 0;
    v177 = 0;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v182 = -1;
    v183 = 0;
    v184 = 0;
    v185 = 0;
    v186 = &str_67;
    v191 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v187 = 0;
    re::RigDataValue::init(v172, v49, v47, &v136, v48);
    re::DynamicArray<re::RigDataValue>::add(v212, v172);
    re::RigDataValue::~RigDataValue(v172);
    re::RigDataValue::~RigDataValue(&v150);
    if (v192[0] & 1) == 0 && *&v192[24] && (v192[32])
    {
      (*(**&v192[24] + 40))();
    }

    Name = (Name + 1);
    v38 += 16;
    v37 = v111;
  }

  while (v113 != Name);
  v9 = v112;
  a2 = v107;
  a3 = v108;
LABEL_33:
  *&v150 = 0x76F1BA5D1EB6;
  *(&v150 + 1) = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v145, &v150, v215);
  if (v150)
  {
    if (v150)
    {
    }
  }

  *&v150 = 0x34787D46CC9BED34;
  *(&v150 + 1) = "SolverRootModelSpaceTransform";
  if (a3 == 2)
  {
    goto LABEL_125;
  }

  re::RigGraphCallbackBuilder::addInputParam(v145, &v150, *(a2 + 2));
  if (v150)
  {
    if (v150)
    {
    }
  }

  *&v150 = 0x10498EC9357CACLL;
  *(&v150 + 1) = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v145, &v150, v193);
  if (v150)
  {
    if (v150)
    {
    }
  }

  a2 = v192;
  re::RigGraphCallbackBuilder::buildCallbackData(v145, v9, re::internal::ikParametersNodeCallback, &v237);
  v151 = 0u;
  memset(v152, 0, 28);
  v150 = 0u;
  *&v152[28] = 0x7FFFFFFFLL;
  *&v152[40] = 0u;
  v153 = 0u;
  v154 = 0;
  *v155 = 0x7FFFFFFFLL;
  *&v155[12] = 0;
  v156 = 0uLL;
  v171 = 0;
  memset(&v157[8], 0, 32);
  *v157 = 0;
  LODWORD(v158) = 0;
  v159 = 0u;
  v160 = 0u;
  LODWORD(v161) = 0;
  v164 = 0;
  v163 = 0u;
  v162 = 0u;
  v167 = 0;
  v165 = 0u;
  v166 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0;
  re::RigHierarchy::jointDescription(v37, v57, &v129);
  re::RigHierarchy::init(&v150, v9[2], *v9, v9[1], v131, v130);
  v28 = *(v37 + 216);
  if (v28)
  {
    v35 = 0;
    v59 = 8;
    while (v28 > v35)
    {
      v60 = *(v37 + 232);
      v61 = strlen(*(v60 + v59));
      v127[0] = *(v60 + v59);
      v127[1] = v61;
      re::RigHierarchy::getLocalSpaceJointScale(v37, v127, v172);
      v128[0] = *(&v172[0] + 1);
      v62 = strlen(*(v60 + v59));
      v126[0] = *(v60 + v59);
      v126[1] = v62;
      re::RigHierarchy::getLocalSpaceJointRotation(v37, v126, v192);
      v128[1] = *&v192[8];
      v63 = strlen(*(v60 + v59));
      v120[0] = *(v60 + v59);
      v120[1] = v63;
      re::RigHierarchy::getLocalSpaceJointTranslation(v37, v120, &v121);
      v128[2] = v122;
      if (v121 & 1) == 0 && v124 && (v125)
      {
        (*(*v124 + 40))();
      }

      if (v192[0] & 1) == 0 && *&v192[24] && (v192[32])
      {
        (*(**&v192[24] + 40))();
      }

      if (v172[0] & 1) == 0 && *(&v172[1] + 1) && (v172[2])
      {
        (*(**(&v172[1] + 1) + 40))();
      }

      v9 = *(v60 + v59);
      v64 = strlen(v9);
      *&v172[0] = v9;
      *(&v172[0] + 1) = v64;
      re::RigHierarchy::setLocalSpaceJointTransform(&v150, v172, v128, v117);
      if ((v117[0] & 1) == 0 && v118)
      {
        if (BYTE8(v118))
        {
          (*(*v118 + 40))();
        }

        v119 = 0u;
        v118 = 0u;
      }

      ++v35;
      v28 = *(v37 + 216);
      v59 += 16;
      if (v35 >= v28)
      {
        goto LABEL_64;
      }
    }

    goto LABEL_116;
  }

LABEL_64:
  if (v113)
  {
    v9 = 0;
    v65 = 8;
    a3 = 5;
    do
    {
      v66 = re::RigDataValue::attributeValue(v193, v9);
      v67 = re::RigDataValue::attributeValue(v66, 0);
      v68 = v67;
      if (*(v67 + 96) == 1)
      {
        v69 = *(v67 + 16);
        LODWORD(v172[0]) = 7;
        memset(v172 + 8, 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((v69 + 243), v172);
        *&v172[0] = v69[245] - 1;
        re::DynamicArray<unsigned long>::add((v69 + 36), v172);
        re::DynamicArray<re::Vector3<float>>::add((v69 + 76), v68 + 7);
        v70 = (v69[40] + 8 * v69[38] - 8);
      }

      else
      {
        v70 = (v67 + 176);
      }

      v121 = *v70;
      v71 = re::RigDataValue::attributeValue(v66, 1uLL);
      v72 = v71;
      if (*(v71 + 96) == 1)
      {
        v73 = *(v71 + 16);
        LODWORD(v172[0]) = 5;
        memset(v172 + 8, 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((v73 + 233), v172);
        *&v172[0] = v73[235] - 1;
        re::DynamicArray<unsigned long>::add((v73 + 26), v172);
        re::DynamicArray<re::Vector3<float>>::add((v73 + 66), v72 + 7);
        v74 = (v73[30] + 8 * v73[28] - 8);
      }

      else
      {
        v74 = (v71 + 176);
      }

      v122 = *v74;
      v75 = re::RigDataValue::attributeValue(v66, 2uLL);
      v76 = v75;
      if (*(v75 + 96) == 1)
      {
        v77 = *(v75 + 16);
        LODWORD(v172[0]) = 7;
        memset(v172 + 8, 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((v77 + 243), v172);
        *&v172[0] = v77[245] - 1;
        re::DynamicArray<unsigned long>::add((v77 + 36), v172);
        re::DynamicArray<re::Vector3<float>>::add((v77 + 76), v76 + 7);
        v78 = (v77[40] + 8 * v77[38] - 8);
      }

      else
      {
        v78 = (v75 + 176);
      }

      v123 = *v78;
      v28 = v133;
      if (v133 <= v9)
      {
        goto LABEL_120;
      }

      v79 = strlen(*(v134 + v65));
      *&v172[0] = *(v134 + v65);
      *(&v172[0] + 1) = v79;
      re::RigHierarchy::setLocalSpaceJointTransform(&v150, v172, &v121, v114);
      if ((v114[0] & 1) == 0 && v115)
      {
        if (BYTE8(v115))
        {
          (*(*v115 + 40))();
        }

        v116 = 0u;
        v115 = 0u;
      }

      v9 = (v9 + 1);
      v65 += 16;
    }

    while (v113 != v9);
  }

  if (!v110)
  {
    goto LABEL_126;
  }

  v80 = *(*v109 + 184);
  v81 = v150;
  *(v80 + 16) = v151;
  *v80 = v81;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v80 + 24), &v151 + 8);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v80 + 72), &v152[40]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v80 + 120, &v155[12]);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v80 + 160, &v157[16]);
  re::DynamicArray<re::StringID>::operator=(v80 + 200, &v159 + 1);
  re::DynamicArray<unsigned long>::operator=(v80 + 240, &v162 + 1);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v80 + 280, &v165 + 1);
  re::DynamicArray<unsigned long>::operator=(v80 + 320, &v168 + 1);
  if (v129 && v130)
  {
    (*(*v129 + 40))();
  }

  if (*(&v168 + 1))
  {
    if (v171)
    {
      (*(**(&v168 + 1) + 40))();
    }

    v171 = 0;
    v169 = 0uLL;
    *(&v168 + 1) = 0;
    ++v170;
  }

  if (*(&v165 + 1))
  {
    if (v168)
    {
      (*(**(&v165 + 1) + 40))();
    }

    *&v168 = 0;
    v166 = 0uLL;
    *(&v165 + 1) = 0;
    ++v167;
  }

  if (*(&v162 + 1))
  {
    if (v165)
    {
      (*(**(&v162 + 1) + 40))();
    }

    *&v165 = 0;
    v163 = 0uLL;
    *(&v162 + 1) = 0;
    ++v164;
  }

  re::DynamicArray<re::StringID>::deinit(&v159 + 8);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v157[16]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v155[12]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v152[40]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v151 + 1);
  re::FixedArray<re::StringID>::deinit(&v132);
  re::RigDataValue::~RigDataValue(v193);
  re::RigDataValue::~RigDataValue(v215);
  if (v135 == 1)
  {
    v82 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v139);
    if (v137)
    {
      if (v137)
      {
      }
    }
  }

  if (v140 == 1)
  {
    v83 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v144);
    if (v142)
    {
      if (v142)
      {
      }
    }
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v147[8]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v145 + 8);
LABEL_107:
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v237);
  re::BindNode::deinit(v239);
  return 1;
}

void re::internal::registerIKParametersComponentNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8718078;
  v11[1] = *&off_1E8718088;
  v11[2] = xmmword_1E8718098;
  v11[3] = *off_1E87180A8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::ikParameterSolverNodeCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_29CoreIKGenericSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAE9A0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_29CoreIKGenericSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKGenericSolverDestroy();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 16));
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_29CoreIKGenericSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_29CoreIKGenericSolverNodeHelperENS_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::IKComponentSolverWrapper::getSolvers(re::BindNode **this)
{
  *&v10 = "solvers";
  *(&v10 + 1) = 7;
  if ((atomic_load_explicit(&qword_1EE18F100, memory_order_acquire) & 1) == 0)
  {
    v3 = this;
    v9 = __cxa_guard_acquire(&qword_1EE18F100);
    this = v3;
    if (v9)
    {
      _MergedGlobals_13 = re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(0, v4, v5, v6, v7, v8);
      __cxa_guard_release(&qword_1EE18F100);
      this = v3;
    }
  }

  re::BindNode::bindPoint(&v11, this + 1, _MergedGlobals_13, &v10);
  if (v12[2] && re::BindPoint::isAlive(&v11))
  {
    v1 = re::BindPoint::valueUntyped(&v11);
  }

  else
  {
    v1 = 0;
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v12);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v12);
  return v1;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(int a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  {
    re::IntrospectionFixedArray<re::FullBodyIKSolver>::IntrospectionFixedArray(&re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v7 = re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v7)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info;
    }

    v9 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::lock(v9);
  }

  v10 = re::introspect_FullBodyIKSolver(1, a2, a3, a4, a5, a6);
  if ((re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v11 = v10;
    re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::isInitialized = 1;
    v12 = *(v10 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info, 0);
    qword_1EE186EA8 = 0x1800000004;
    dword_1EE186EB0 = v12;
    word_1EE186EB4 = 0;
    *&xmmword_1EE186EB8 = 0;
    *(&xmmword_1EE186EB8 + 1) = 0xFFFFFFFFLL;
    qword_1EE186EC8 = v11;
    unk_1EE186ED0 = 0;
    re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info = &unk_1F5CAEA20;
    re::IntrospectionRegistry::add(v13, v14);
    re::getPrettyTypeName(&v19, &re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info);
    if (BYTE8(v19))
    {
      v15 = v20;
    }

    else
    {
      v15 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v19 = *(v11 + 32);
    xmmword_1EE186EB8 = v18;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v16 = re::introspectionSharedMutex(v10);
    std::__shared_mutex_base::unlock(v16);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(BOOL)::info;
}

void re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionFixedArray<re::FullBodyIKSolver>::IntrospectionFixedArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CAE268;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CAEA20;
  return a1;
}

void *re::IntrospectionFixedArray<re::FullBodyIKSolver>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::FullBodyIKSolver>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::FullBodyIKSolver>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t re::IntrospectionFixedArray<re::FullBodyIKSolver>::init(uint64_t a1, uint64_t a2, re *a3, int a4, unint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::FullBodyIKSolver>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 8);
      if (v13 <= v12)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 468;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (*(a2 + 16) + v11));
      ++v12;
      v11 += 128;
    }

    while (a5 != v12);
  }

  return result;
}

unint64_t re::IntrospectionFixedArray<re::FullBodyIKSolver>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + (a3 << 7);
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + (a3 << 7);
}

void *re::FixedArray<re::FullBodyIKSolver>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = v2 << 7;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v4 + 13);
        re::FixedArray<CoreIKTransform>::deinit(v4 + 10);
        re::FixedArray<CoreIKTransform>::deinit(v4 + 7);
        std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](v4 + 2);
        re::StringID::destroyString(v4);
        v4 += 16;
        v5 -= 128;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t *std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(CoreIKGenericSolver *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(CoreIKGenericSolver *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(CoreIKGenericSolver *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(CoreIKGenericSolver *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(CoreIKGenericSolver *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::FixedArray<re::FullBodyIKSolver>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 57)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 128, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, a3 << 7, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 8) = &str_67;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 80) = 0uLL;
      *(result + 96) = 0uLL;
      *(result + 112) = 0uLL;
      result += 128;
      --v6;
    }

    while (v6);
  }

  *result = 0u;
  *(result + 16) = 0u;
  *(result + 8) = &str_67;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::FullBodyIKSolver>::deinit(a1);

  return re::FixedArray<re::FullBodyIKSolver>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::FullBodyIKSolver>::deinit(a1);
  v8 = re::FixedArray<re::FullBodyIKSolver>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = v9 << 7;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 128;
        v11 -= 128;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + (a2 << 7);
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + (v1 << 7);
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::FullBodyIKSolver>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAEAB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    v4.n128_f64[0] = re::BindNode::deinit((v2 + 8));
    v5 = *(*v3 + 40);

    return v5(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::ikParameterSolverNodeCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::DynamicString *re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 96 * v6;
          do
          {
            re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v7 + 56);
            re::StringID::destroyString((v7 + 40));
            re::DynamicString::deinit(v7);
            v7 += 96;
            v8 -= 96;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::DynamicArray<re::RigDataValue>>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::DynamicArray<re::RigDataValue>>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::DynamicArray<re::RigDataValue>>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::StringID>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::StringID>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::StringID>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::StringID>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::StringID>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<unsigned long>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<unsigned long>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<unsigned long>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::RigHierarchyJointTransform>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigHierarchyJointTransform>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigHierarchyJointTransform>::copy(a1, a2);
    }
  }

  return a1;
}

void re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_95, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 56;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::DynamicArray<re::DynamicArray<re::RigDataValue>>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      result = re::DynamicArray<re::RigDataValue>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void re::DynamicArray<re::StringID>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 16 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 16);
      v4 -= 16;
    }

    while (v4);
  }

  ++*(result + 24);
}

_OWORD *re::internal::RayCaster::cast@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(**a1 + 56))(*a1, a2, a1 + 2, a1 + 6);
  v6 = a1[11];
  if (v6)
  {
    result = re::BucketArray<re::CollisionCastHit,10ul>::operator[]((a1 + 6), 0);
    v7 = result[3];
    *(a3 + 48) = result[2];
    *(a3 + 64) = v7;
    *(a3 + 80) = result[4];
    v8 = result[1];
    *(a3 + 16) = *result;
    *(a3 + 32) = v8;
    LOBYTE(v6) = 1;
  }

  *a3 = v6;
  return result;
}

uint64_t *re::internal::getSRTFromRDV@<X0>(uint64_t *__return_ptr a1@<X8>, re::internal *this@<X0>)
{
  v26[0] = "scale";
  v26[1] = 5;
  re::RigDataValue::attributeValue(this, v26, v27);
  v5 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v28, v4);
  v6 = *v5;
  v7 = v5[1];
  v21[0] = "rotation";
  v21[1] = 8;
  re::RigDataValue::attributeValue(this, v21, v22);
  v9 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v23, v8);
  v10 = *v9;
  v11 = v9[1];
  v16[0] = "translation";
  v16[1] = 11;
  re::RigDataValue::attributeValue(this, v16, v17);
  result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v18, v12);
  v14 = *result;
  v15 = result[1];
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v10;
  a1[3] = v11;
  a1[4] = v14;
  a1[5] = v15;
  if ((v17[0] & 1) == 0)
  {
    result = v19;
    if (v19)
    {
      if (v20)
      {
        result = (*(*v19 + 40))();
      }
    }
  }

  if ((v22[0] & 1) == 0)
  {
    result = v24;
    if (v24)
    {
      if (v25)
      {
        result = (*(*v24 + 40))();
      }
    }
  }

  if ((v27[0] & 1) == 0)
  {
    result = v29;
    if (v29)
    {
      if (v30)
      {
        return (*(*v29 + 40))(v29, v31);
      }
    }
  }

  return result;
}

void re::internal::makeRigDataValue(re::Allocator **a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  re::RigEnvironment::lookupRigDataType(&v13, a1[2], a2);
  v10[0] = v14;
  re::StringID::StringID(&v11, &v15);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v12, v16);
  v6 = a1[1];
  v5 = a1[2];
  v7 = *a1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 88) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = -1;
  *(a3 + 184) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 272) = 0;
  *(a3 + 264) = 0;
  *(a3 + 232) = &str_67;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;
  re::RigDataValue::init(a3, v7, v5, v10, v6);
  v8 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v12);
  if (v11)
  {
    if (v11)
    {
    }
  }

  if (v13 == 1)
  {
    v9 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v16);
    if (*&v15.var0)
    {
      if (*&v15.var0)
      {
      }
    }
  }
}

unint64_t re::internal::makeModelSpaceJointPoseRDV@<X0>(re::Allocator **a1@<X0>, re::DynamicString **a2@<X1>, const char *a3@<X2>, re::RigDataValue *a4@<X8>)
{
  v25 = 164778;
  v26 = "SRT";
  re::internal::makeRigDataValue(a1, &v25, a4);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v24[0] = a3;
  v24[1] = strlen(a3);
  re::RigHierarchy::getModelSpaceJointScale(a2, v24, &v25);
  v8 = v26;
  v19[0] = a3;
  v19[1] = strlen(a3);
  re::RigHierarchy::getModelSpaceJointRotation(a2, v19, v20);
  v9 = v21;
  v14[0] = a3;
  v14[1] = strlen(a3);
  re::RigHierarchy::getModelSpaceJointTranslation(a2, v14, v15);
  v10 = v16;
  if (v15[0] & 1) == 0 && v17 && (v18)
  {
    (*(*v17 + 40))();
  }

  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  if (v25 & 1) == 0 && v27 && (v28)
  {
    (*(*v27 + 40))(v27, v29);
  }

  v11 = re::RigDataValue::attributeValue(a4, 0);
  *(v11 + 96) = 2;
  *(v11 + 176) = v8;
  v12 = re::RigDataValue::attributeValue(a4, 1uLL);
  *(v12 + 96) = 2;
  *(v12 + 176) = v9;
  result = re::RigDataValue::attributeValue(a4, 2uLL);
  *(result + 96) = 2;
  *(result + 176) = v10;
  return result;
}

unint64_t re::internal::makeLocalSpaceJointPoseRDV@<X0>(re::Allocator **a1@<X0>, re::DynamicString **a2@<X1>, const re::RigHierarchy *a3@<X2>, re::RigDataValue *a4@<X8>)
{
  v14 = 164778;
  v15 = "SRT";
  re::internal::makeRigDataValue(a1, &v14, a4);
  if (v14)
  {
    if (v14)
    {
    }
  }

  v8 = re::RigDataValue::attributeValue(a4, 0);
  v9 = v14;
  *(v8 + 96) = 2;
  *(v8 + 176) = v9;
  v10 = re::RigDataValue::attributeValue(a4, 1uLL);
  v11 = v15;
  *(v10 + 96) = 2;
  *(v10 + 176) = v11;
  result = re::RigDataValue::attributeValue(a4, 2uLL);
  v13 = v16;
  *(result + 96) = 2;
  *(result + 176) = v13;
  return result;
}

uint64_t *anonymous namespace::getLocalSpaceJointPoseEvalSRT@<X0>(uint64_t *__return_ptr a1@<X8>, re::DynamicString **this@<X0>, const re::RigHierarchy *__s@<X1>)
{
  v17[0] = __s;
  v17[1] = strlen(__s);
  re::RigHierarchy::getLocalSpaceJointScale(this, v17, v18);
  *a1 = v19;
  v12[0] = __s;
  v12[1] = strlen(__s);
  re::RigHierarchy::getLocalSpaceJointRotation(this, v12, v13);
  a1[1] = v14;
  v7[0] = __s;
  v7[1] = strlen(__s);
  result = re::RigHierarchy::getLocalSpaceJointTranslation(this, v7, v8);
  a1[2] = v9;
  if ((v8[0] & 1) == 0)
  {
    result = v10;
    if (v10)
    {
      if (v11)
      {
        result = (*(*v10 + 40))();
      }
    }
  }

  if ((v13[0] & 1) == 0)
  {
    result = v15;
    if (v15)
    {
      if (v16)
      {
        result = (*(*v15 + 40))();
      }
    }
  }

  if ((v18[0] & 1) == 0)
  {
    result = v20;
    if (v20)
    {
      if (v21)
      {
        return (*(*v20 + 40))(v20, v22);
      }
    }
  }

  return result;
}

re::RigHierarchy *re::internal::transferPose(re::RigHierarchy *this, re::DynamicString **a2, re::RigHierarchy *a3)
{
  if (*(this + 27))
  {
    v4 = this;
    v5 = 0;
    do
    {
      v6 = *(re::RigHierarchy::jointName(v4, v5) + 8);
      v7 = strlen(v6);
      v8[0] = v6;
      v8[1] = v7;
      this = re::RigHierarchy::setLocalSpaceJointTransform(a2, v8, v12, v9);
      if ((v9[0] & 1) == 0)
      {
        this = v10;
        if (v10)
        {
          if (BYTE8(v10))
          {
            this = (*(*v10 + 40))();
          }

          v11 = 0u;
          v10 = 0u;
        }
      }

      ++v5;
    }

    while (v5 < *(v4 + 27));
  }

  return this;
}

unint64_t re::RigHierarchy::jointName(re::RigHierarchy *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 27);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 29) + 16 * a2;
}

re::RigDataValue *re::internal::transferPose(re::RigDataValue *this, const re::RigDataValue *a2, re::RigDataValue *a3)
{
  if (*(this + 32))
  {
    v4 = this;
    v5 = 0;
    do
    {
      *&v8 = 0x3F8000003F800000;
      *(&v8 + 1) = 1065353216;
      v9 = 0;
      v10 = 0x3F80000000000000;
      v11 = 0;
      v12 = 0;
      v6 = re::RigDataValue::attributeValue(v4, v5);
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v6, &v8);
      v7 = re::RigDataValue::attributeValue(a2, v5);
      this = re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v7, &v8);
      ++v5;
    }

    while (v5 < *(v4 + 32));
  }

  return this;
}

__n128 re::internal::transferPose(re::RigDataValue *this, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      *&v14 = 0x3F8000003F800000;
      *(&v14 + 1) = 1065353216;
      v15.n128_u64[0] = 0;
      v15.n128_u64[1] = 0x3F80000000000000;
      v16 = 0uLL;
      v6 = re::RigDataValue::attributeValue(this, v5);
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v6, &v14);
      v7 = *(a2 + 8);
      if (v7 <= v5)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v11 = MEMORY[0x1E69E9C10];
        v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (v12)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v21 = 468;
        v22 = 2048;
        v23 = v5;
        v24 = 2048;
        v25 = v7;
        _os_log_send_and_compose_impl(v13, &v17, v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v14, *(&v14 + 1));
        _os_crash_msg();
        __break(1u);
      }

      result = v15;
      v9 = v16;
      v10 = (*(a2 + 16) + v4);
      v10->n128_u32[2] = DWORD2(v16);
      v10->n128_u64[0] = v9;
      v10[1] = result;
      ++v5;
      v4 += 32;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

_OWORD *re::internal::transferPose(_OWORD *result, re::RigDataValue *this)
{
  if (*(result + 1))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(v3 + 2) + v4);
      v7 = *(v6 + 2);
      v8 = *(v6 + 3);
      v9 = *v6;
      *&v11 = 0x3F8000003F800000;
      *(&v11 + 1) = 1065353216;
      v12 = v7;
      v13 = v8;
      v14 = v9;
      v10 = re::RigDataValue::attributeValue(this, v5);
      result = re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v10, &v11);
      ++v5;
      v4 += 32;
    }

    while (v5 < *(v3 + 1));
  }

  return result;
}

void anonymous namespace::getEvalSRTFromRDV(_anonymous_namespace_ *this, const re::RigDataValue *a2)
{
  v4 = re::RigDataValue::attributeValue(a2, 0);
  v5 = v4;
  if (*(v4 + 96) == 1)
  {
    v6 = *(v4 + 16);
    LODWORD(v16) = 7;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v6 + 243), &v16);
    v16 = v6[245] - 1;
    re::DynamicArray<unsigned long>::add((v6 + 36), &v16);
    re::DynamicArray<re::Vector3<float>>::add((v6 + 76), v5 + 7);
    v7 = (v6[40] + 8 * v6[38] - 8);
  }

  else
  {
    v7 = (v4 + 176);
  }

  *this = *v7;
  v8 = re::RigDataValue::attributeValue(a2, 1uLL);
  v9 = v8;
  if (*(v8 + 96) == 1)
  {
    v10 = *(v8 + 16);
    LODWORD(v16) = 5;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v16);
    v16 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 26), &v16);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = (v8 + 176);
  }

  *(this + 1) = *v11;
  v12 = re::RigDataValue::attributeValue(a2, 2uLL);
  v13 = v12;
  if (*(v12 + 96) == 1)
  {
    v14 = *(v12 + 16);
    LODWORD(v16) = 7;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v16);
    v16 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v16);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = (v12 + 176);
  }

  *(this + 2) = *v15;
}

void re::internal::makePoseFromRig(re::Allocator **a1@<X0>, re::DynamicString **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[37] = *MEMORY[0x1E69E9840];
  v13[0] = 158357486;
  v13[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v13, a4);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v9 = MEMORY[0x1E6903C40](a3);
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = MEMORY[0x1E6903C50](a3, i);
      re::internal::makeLocalSpaceJointPoseRDV(a1, a2, v12, v13);
      re::DynamicArray<re::RigDataValue>::add(a4 + 240, v13);
      re::RigDataValue::~RigDataValue(v13);
    }
  }
}

void re::internal::makeModelSpacePoseForRayTracingJoints(re::Allocator **a1@<X0>, re::DynamicString **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[37] = *MEMORY[0x1E69E9840];
  v13[0] = 158357486;
  v13[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v13, a4);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  CoreIKFootPlacementSolverGetGenericSolver();
  ConstraintCount = CoreIKGenericSolverGetConstraintCount();
  if (ConstraintCount)
  {
    v10 = ConstraintCount;
    for (i = 0; i != v10; ++i)
    {
      MEMORY[0x1E69038A0](a3, i);
      if (CoreIKFootPlacementConstraintIsRayTracing())
      {
        ConstraintTargetName = CoreIKGenericSolverGetConstraintTargetName();
        re::internal::makeModelSpaceJointPoseRDV(a1, a2, ConstraintTargetName, v13);
        re::DynamicArray<re::RigDataValue>::add(a4 + 240, v13);
        re::RigDataValue::~RigDataValue(v13);
      }
    }
  }
}

void re::internal::makePose(re::Allocator **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[37] = *MEMORY[0x1E69E9840];
  v10[0] = 158357486;
  v10[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v10, a3);
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  for (; a2; --a2)
  {
    v8 = 164778;
    v9 = "SRT";
    re::internal::makeRigDataValue(a1, &v8, v10);
    if (v8)
    {
      if (v8)
      {
      }
    }

    re::DynamicArray<re::RigDataValue>::add(a3 + 240, v10);
    re::RigDataValue::~RigDataValue(v10);
  }
}

void re::internal::makeSourcePose(re::Allocator **a1@<X0>, re::DynamicString **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[37] = *MEMORY[0x1E69E9840];
  v13[0] = 158357486;
  v13[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v13, a4);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v9 = MEMORY[0x1E6903C20](a3);
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = MEMORY[0x1E6903C30](a3, i);
      re::internal::makeLocalSpaceJointPoseRDV(a1, a2, v12, v13);
      re::DynamicArray<re::RigDataValue>::add(a4 + 240, v13);
      re::RigDataValue::~RigDataValue(v13);
    }
  }
}

double re::internal::bindCallbackOutputToNodeOutputPose(re::RigHierarchy *a1, re::RigDataValue *a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  memset(v28, 0, sizeof(v28));
  v29 = 0x7FFFFFFFLL;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v32 = 0x7FFFFFFFLL;
  memset(v33, 0, sizeof(v33));
  v49 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  v36 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v42 = 0;
  v41 = 0u;
  v40 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  re::RigHierarchy::jointDescription(a1, a2, &v25);
  re::RigHierarchy::init(v28, *(a4 + 16), *a4, *(a4 + 8), v27, v26);
  re::internal::transferPose(a1, v28, v8);
  v9 = *(&v38 + 1);
  if (*(&v38 + 1))
  {
    v10 = 0;
    do
    {
      v11 = re::RigHierarchy::jointName(v28, v10);
      re::StringID::StringID(&v23, v11);
      v12 = re::RigDataValue::attributeValue(a2, v10);
      re::RigDataValue::RigDataValue(v50, v12);
      v13 = strlen(__s);
      v18[0] = __s;
      v18[1] = v13;
      re::RigHierarchy::setLocalSpaceJointTransform(v28, v18, v22, v19);
      if ((v19[0] & 1) == 0 && v20)
      {
        if (BYTE8(v20))
        {
          (*(*v20 + 40))();
        }

        v21 = 0u;
        v20 = 0u;
      }

      re::RigDataValue::~RigDataValue(v50);
      if (v23)
      {
        if (v23)
        {
        }
      }

      ++v10;
    }

    while (v9 != v10);
  }

  v15 = *(a3 + 184);
  v16 = *v28;
  *(v15 + 16) = *&v28[16];
  *v15 = v16;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v15 + 24), &v28[24]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v15 + 72), v30);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v15 + 120, v33);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v15 + 160, &v35[1]);
  re::DynamicArray<re::StringID>::operator=(v15 + 200, &v37 + 1);
  re::DynamicArray<unsigned long>::operator=(v15 + 240, &v40 + 1);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v15 + 280, &v43 + 1);
  re::DynamicArray<unsigned long>::operator=(v15 + 320, &v46 + 1);
  if (v25 && v26)
  {
    (*(*v25 + 40))();
  }

  if (*(&v46 + 1))
  {
    if (v49)
    {
      (*(**(&v46 + 1) + 40))();
    }

    v49 = 0;
    v47 = 0uLL;
    *(&v46 + 1) = 0;
    ++v48;
  }

  if (*(&v43 + 1))
  {
    if (v46)
    {
      (*(**(&v43 + 1) + 40))();
    }

    *&v46 = 0;
    v44 = 0uLL;
    *(&v43 + 1) = 0;
    ++v45;
  }

  if (*(&v40 + 1))
  {
    if (v43)
    {
      (*(**(&v40 + 1) + 40))();
    }

    *&v43 = 0;
    v41 = 0uLL;
    *(&v40 + 1) = 0;
    ++v42;
  }

  re::DynamicArray<re::StringID>::deinit(&v37 + 8);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v35[1]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v33);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v30);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v28[24]);
}

double re::internal::bindCallbackOutputToNodeOutputPose(re::RigHierarchy *a1, re::RigDataValue *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  memset(v23, 0, sizeof(v23));
  v24 = 0x7FFFFFFFLL;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v27 = 0x7FFFFFFFLL;
  memset(v28, 0, sizeof(v28));
  v43 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  v31 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v36 = 0;
  v35 = 0u;
  v34 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  re::RigHierarchy::jointDescription(a1, a2, &v20);
  re::RigHierarchy::init(v23, *(a4 + 16), *a4, *(a4 + 8), v22, v21);
  re::internal::transferPose(a1, v23, v10);
  v11 = MEMORY[0x1E6903C40](a3);
  if (v11)
  {
    v12 = v11;
    for (i = 0; i != v12; ++i)
    {
      v14 = MEMORY[0x1E6903C50](a3, i);
      v15 = re::RigDataValue::attributeValue(a2, i);
      re::RigDataValue::RigDataValue(v49, v15);
      v16 = strlen(v14);
      v44[0] = v14;
      v44[1] = v16;
      re::RigHierarchy::setLocalSpaceJointTransform(v23, v44, v48, v45);
      if ((v45[0] & 1) == 0 && v46)
      {
        if (BYTE8(v46))
        {
          (*(*v46 + 40))();
        }

        v47 = 0u;
        v46 = 0u;
      }

      re::RigDataValue::~RigDataValue(v49);
    }
  }

  v17 = *(a5 + 184);
  v18 = *v23;
  *(v17 + 16) = *&v23[16];
  *v17 = v18;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 24), &v23[24]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 72), v25);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v17 + 120, v28);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v17 + 160, &v30[1]);
  re::DynamicArray<re::StringID>::operator=(v17 + 200, &v32[1]);
  re::DynamicArray<unsigned long>::operator=(v17 + 240, &v34 + 1);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v17 + 280, &v37 + 1);
  re::DynamicArray<unsigned long>::operator=(v17 + 320, &v40 + 1);
  if (v20 && v21)
  {
    (*(*v20 + 40))();
  }

  if (*(&v40 + 1))
  {
    if (v43)
    {
      (*(**(&v40 + 1) + 40))();
    }

    v43 = 0;
    v41 = 0uLL;
    *(&v40 + 1) = 0;
    ++v42;
  }

  if (*(&v37 + 1))
  {
    if (v40)
    {
      (*(**(&v37 + 1) + 40))();
    }

    *&v40 = 0;
    v38 = 0uLL;
    *(&v37 + 1) = 0;
    ++v39;
  }

  if (*(&v34 + 1))
  {
    if (v37)
    {
      (*(**(&v34 + 1) + 40))();
    }

    *&v37 = 0;
    v35 = 0uLL;
    *(&v34 + 1) = 0;
    ++v36;
  }

  re::DynamicArray<re::StringID>::deinit(&v32[1]);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v30[1]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v28);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v25);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v23[24]);
}

void re::internal::makePoseFromRigHierarchy(re::Allocator **a1@<X0>, re::RigHierarchy *a2@<X1>, uint64_t a3@<X8>)
{
  v13[37] = *MEMORY[0x1E69E9840];
  v13[0] = 158357486;
  v13[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v13, a3);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v7 = *(a2 + 27);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = re::RigHierarchy::jointName(a2, i);
      re::StringID::StringID(&v11, v9);
      re::internal::makeLocalSpaceJointPoseRDV(a1, a2, v12, v13);
      re::DynamicArray<re::RigDataValue>::add(a3 + 240, v13);
      re::RigDataValue::~RigDataValue(v13);
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

uint64_t *re::internal::updateOutputBasedOnSolveResult(int a1, uint64_t a2, _OWORD *a3, re::RigDataValue *this)
{
  if (a1 == 2)
  {
LABEL_4:

    return re::internal::transferPose(a3, this);
  }

  if (a1 != 1)
  {
    if (a1)
    {
      re::internal::assertLog(4, a2, a3, this, "assertion failure: '%s' (%s:line %i) Unexpected Solve Result", "!Unreachable code", "updateOutputBasedOnSolveResult", 269, v4, v5);
      result = _os_crash("assertion failure: (!Unreachable code) Unexpected Solve Result");
      __break(1u);
      return result;
    }

    goto LABEL_4;
  }

  return re::RigDataValue::operator=(this, a2);
}

void *re::EvaluationTree::init(re::EvaluationTree *this, re::Allocator *a2)
{
  v6 = a2;
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 1, &v6);
  re::DynamicRegisterTable::initArrays<re::Allocator *&>(this + 41, &v6);
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 81, &v6);
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 121, &v6);
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 161, &v6);
  re::BucketArray<re::EvaluationBranchGroupData,8ul>::init(this + 1608, v6, 1uLL);
  v3 = this + 1664;
  v4 = 8;
  do
  {
    *v3 = v6;
    re::DynamicArray<re::EvaluationRegister>::setCapacity(v3, 0);
    ++*(v3 + 6);
    v3 += 40;
    --v4;
  }

  while (v4);
  *(this + 248) = v6;
  re::DynamicArray<re::EvaluationCallbackData>::setCapacity(this + 248, 0);
  ++*(this + 502);
  *(this + 253) = v6;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this + 253, 0);
  ++*(this + 512);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::EvaluationBranchGroupData,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::EvaluationBranchGroupData,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::DynamicRegisterIdTable::deinit(re::DynamicRegisterIdTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 200);
  re::DynamicArray<unsigned long>::deinit(this + 240);

  return re::DynamicArray<unsigned long>::deinit(this + 280);
}

void *re::EvaluationTree::setupEvaluationModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a3 + 32))(&v13, a3, a2, a1);
  v10 = v13;
  if (v13 == 1)
  {
    re::FixedRegisterTable::initSize<re::SliceRegisterIdTable>(a5, a2, a4);
    re::FixedArray<re::GenericSRT<float>>::init<>(a5 + 24, a2, a4[17]);
    re::FixedRegisterTable::initSize<re::SliceRegisterIdTable>(a5 + 27, a2, a4 + 18);
    result = re::FixedArray<re::GenericSRT<float>>::init<>(a5 + 51, a2, a4[35]);
    v12 = v13;
    *a6 = 1;
    if (v12)
    {
      return result;
    }
  }

  else
  {
    *(a6 + 8) = v14;
    *(a6 + 24) = v15;
    *(a6 + 48) = v17;
    *(a6 + 32) = v16;
    v17 = 0;
    v15 = 0;
    v16 = 0uLL;
    *a6 = v10;
  }

  result = v15;
  if (v15)
  {
    if (v16)
    {
      return (*(*v15 + 40))();
    }
  }

  return result;
}

void re::FixedRegisterTable::initSize<re::SliceRegisterIdTable>(void *a1, uint64_t a2, unint64_t *a3)
{
  re::FixedArray<int>::init<>(a1, a2, a3[1]);
  re::FixedArray<int>::init<>(a1 + 3, a2, a3[3]);
  re::FixedArray<int>::init<>(a1 + 6, a2, a3[5]);
  re::FixedArray<re::Matrix3x3<float>>::init<>(a1 + 9, a2, a3[7]);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1 + 12, a2, a3[9]);
  re::FixedArray<re::Quaternion<float>>::init<>(a1 + 15, a2, a3[11]);
  re::FixedArray<re::Vector2<float>>::init<>(a1 + 18, a2, a3[13]);
  v6 = a3[15];

  re::FixedArray<re::Vector3<float>>::init<>(a1 + 21, a2, v6);
}

void re::EvaluationTree::createInputRegister(void *a1@<X0>, __n128 *a2@<X1>, void *a3@<X8>)
{
  LODWORD(v6) = 7;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v6);
  v6 = a1[245] - 1;
  re::DynamicArray<unsigned long>::add((a1 + 36), &v6);
  re::DynamicArray<re::Vector3<float>>::add((a1 + 76), a2);
  *a3 = *(a1[40] + 8 * a1[38] - 8);
  LODWORD(v6) = 5;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v6);
  v6 = a1[235] - 1;
  re::DynamicArray<unsigned long>::add((a1 + 26), &v6);
  re::DynamicArray<re::Vector3<float>>::add((a1 + 66), a2 + 1);
  a3[1] = *(a1[30] + 8 * a1[28] - 8);
  LODWORD(v6) = 7;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v6);
  v6 = a1[245] - 1;
  re::DynamicArray<unsigned long>::add((a1 + 36), &v6);
  re::DynamicArray<re::Vector3<float>>::add((a1 + 76), a2 + 2);
  a3[2] = *(a1[40] + 8 * a1[38] - 8);
}

unint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 72) + 32 * a2;
}

unint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 296);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 312) + 32 * a2;
}

unint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector2<float>>(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 256);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 272) + 32 * a2;
}

unint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 216);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 232) + 32 * a2;
}

unint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 136);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 152) + 32 * a2;
}

unint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 176);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 192) + 32 * a2;
}

unint64_t re::EvaluationTree::extractRotation(void *a1, uint64_t a2)
{
  v7 = 34;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 223), &v7);
  v4 = a1[225] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a1 + 208), v4) + 8) = a2;
  v7 = 35;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v7);
  v5 = a1[235] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v5) + 8) = v4;
  return v5;
}

unint64_t re::EvaluationTree::extractScale(void *a1, uint64_t a2)
{
  v7 = 34;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 223), &v7);
  v4 = a1[225] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a1 + 208), v4) + 8) = a2;
  v7 = 36;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v7);
  v5 = a1[245] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v5) + 8) = v4;
  return v5;
}

unint64_t re::EvaluationTree::constructMatrix4x4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 39;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 223), &v13);
  v8 = a1[225] - 1;
  v9 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a1 + 208), v8);
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v13 = 40;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 228), &v13);
  v10 = a1[230] - 1;
  v11 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a1 + 208), v10);
  *(v11 + 8) = v8;
  *(v11 + 16) = a4;
  return v10;
}

unint64_t re::EvaluationTree::transformDirection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 42;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v9);
  v6 = *(a1 + 1960) - 1;
  v7 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v6);
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return v6;
}

unint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<float>(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 96);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 112) + 32 * a2;
}

unint64_t re::EvaluationTree::additiveBlend@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v27 = 25;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v27);
  v10 = a1[245] - 1;
  v11 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v10);
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  *a4 = v10;
  v12 = a2[1];
  v13 = a3[1];
  v27 = 24;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v27);
  v14 = a1[235] - 1;
  v15 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v14);
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  a4[1] = v14;
  v16 = *a2;
  v19 = a2 + 1;
  v17 = a2[1];
  v18 = v19[1];
  v20 = a3[2];
  v27 = 30;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v27);
  v21 = a1[245] - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v21);
  *(v22 + 8) = v17;
  *(v22 + 16) = v20;
  v27 = 25;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v27);
  v23 = a1[245] - 1;
  v24 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v23);
  *(v24 + 8) = v16;
  *(v24 + 16) = v21;
  v27 = 8;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v27);
  v25 = a1[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v25);
  *(result + 8) = v18;
  *(result + 16) = v23;
  a4[2] = v25;
  return result;
}

void *re::EvaluationTree::lerp@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v22 = 11;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v22);
  v12 = a1[245] - 1;
  v13 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v12);
  v13[1] = v10;
  v13[2] = v11;
  v13[3] = a4;
  *a5 = v12;
  v14 = a2[1];
  v15 = a3[1];
  v22 = 12;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v22);
  v16 = a1[235] - 1;
  v17 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v16);
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = a4;
  a5[1] = v16;
  v18 = a2[2];
  v19 = a3[2];
  v22 = 11;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v22);
  v20 = a1[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v20);
  result[1] = v18;
  result[2] = v19;
  result[3] = a4;
  a5[2] = v20;
  return result;
}

uint64_t re::EvaluationTree::registerCallbackFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v222 = *MEMORY[0x1E69E9840];
  v8 = 0uLL;
  v212 = 0u;
  v213 = 0u;
  v9 = (a1 + 1984);
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v10 = *(a1 + 2000);
  v11 = *(a1 + 1992);
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*v9)
      {
        v13 = 2 * v11;
        v14 = v11 == 0;
        v15 = 8;
        if (!v14)
        {
          v15 = v13;
        }

        if (v15 <= v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = v15;
        }

        re::DynamicArray<re::EvaluationCallbackData>::setCapacity((a1 + 1984), v16);
      }

      else
      {
        re::DynamicArray<re::EvaluationCallbackData>::setCapacity(v9, v12);
        ++*(a1 + 2008);
      }

      v8 = 0uLL;
    }

    v10 = *(a1 + 2000);
  }

  v184 = v9;
  v17 = *(a1 + 2016) + 448 * v10;
  *v17 = v8;
  *(v17 + 16) = v8;
  *(v17 + 8) = *(&v186 + 1);
  *(&v186 + 1) = 0;
  *&v187 = 0;
  v18 = *(v17 + 24);
  *(v17 + 24) = *(&v187 + 1);
  *(&v187 + 1) = v18;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 32) = v188;
  *&v188 = 0;
  *(v17 + 40) = *(&v188 + 1);
  *(&v188 + 1) = 0;
  v19 = *(v17 + 48);
  *(v17 + 48) = v189;
  *&v189 = v19;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 56) = *(&v189 + 1);
  *(&v189 + 1) = 0;
  *(v17 + 64) = v190;
  *&v190 = 0;
  v20 = *(v17 + 72);
  *(v17 + 72) = *(&v190 + 1);
  *(&v190 + 1) = v20;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 80) = v191;
  *&v191 = 0;
  *(v17 + 88) = *(&v191 + 1);
  *(&v191 + 1) = 0;
  v21 = *(v17 + 96);
  *(v17 + 96) = v192;
  *&v192 = v21;
  *(v17 + 104) = 0;
  *(v17 + 112) = 0;
  *(v17 + 120) = 0;
  *(v17 + 104) = *(&v192 + 1);
  *(&v192 + 1) = 0;
  *(v17 + 112) = v193;
  *&v193 = 0;
  v22 = *(v17 + 120);
  *(v17 + 120) = *(&v193 + 1);
  *(&v193 + 1) = v22;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = 0;
  *(v17 + 128) = v194;
  *&v194 = 0;
  *(v17 + 136) = *(&v194 + 1);
  *(&v194 + 1) = 0;
  v23 = *(v17 + 144);
  *(v17 + 144) = v195;
  *&v195 = v23;
  *(v17 + 152) = 0;
  *(v17 + 160) = 0;
  *(v17 + 168) = 0;
  *(v17 + 152) = *(&v195 + 1);
  *(&v195 + 1) = 0;
  *(v17 + 160) = v196;
  *&v196 = 0;
  v24 = *(v17 + 168);
  *(v17 + 168) = *(&v196 + 1);
  *(&v196 + 1) = v24;
  *(v17 + 176) = 0;
  *(v17 + 184) = 0;
  *(v17 + 192) = 0;
  *(v17 + 176) = v197;
  *&v197 = 0;
  *(v17 + 184) = *(&v197 + 1);
  *(&v197 + 1) = 0;
  v25 = *(v17 + 192);
  *(v17 + 192) = v198;
  *&v198 = v25;
  *(v17 + 200) = 0;
  *(v17 + 208) = 0;
  *(v17 + 216) = 0;
  *(v17 + 200) = *(&v198 + 1);
  *(&v198 + 1) = 0;
  *(v17 + 208) = v199;
  *&v199 = 0;
  v26 = *(v17 + 216);
  *(v17 + 216) = *(&v199 + 1);
  *(&v199 + 1) = v26;
  *(v17 + 224) = 0;
  *(v17 + 232) = 0;
  *(v17 + 240) = 0;
  *(v17 + 224) = v200;
  *&v200 = 0;
  *(v17 + 232) = *(&v200 + 1);
  *(&v200 + 1) = 0;
  v27 = *(v17 + 240);
  *(v17 + 240) = v201;
  *&v201 = v27;
  *(v17 + 248) = 0;
  *(v17 + 256) = 0;
  *(v17 + 264) = 0;
  *(v17 + 248) = *(&v201 + 1);
  *(&v201 + 1) = 0;
  *(v17 + 256) = v202;
  *&v202 = 0;
  v28 = *(v17 + 264);
  *(v17 + 264) = *(&v202 + 1);
  *(&v202 + 1) = v28;
  *(v17 + 272) = 0;
  *(v17 + 280) = 0;
  *(v17 + 288) = 0;
  *(v17 + 272) = v203;
  *&v203 = 0;
  *(v17 + 280) = *(&v203 + 1);
  *(&v203 + 1) = 0;
  v29 = *(v17 + 288);
  *(v17 + 288) = v204;
  *&v204 = v29;
  *(v17 + 296) = 0;
  *(v17 + 304) = 0;
  *(v17 + 312) = 0;
  *(v17 + 296) = *(&v204 + 1);
  *(&v204 + 1) = 0;
  *(v17 + 304) = v205;
  *&v205 = 0;
  v30 = *(v17 + 312);
  *(v17 + 312) = *(&v205 + 1);
  *(&v205 + 1) = v30;
  *(v17 + 320) = 0;
  *(v17 + 328) = 0;
  *(v17 + 336) = 0;
  *(v17 + 320) = v206;
  *&v206 = 0;
  *(v17 + 328) = *(&v206 + 1);
  *(&v206 + 1) = 0;
  v31 = *(v17 + 336);
  *(v17 + 336) = v207;
  *&v207 = v31;
  *(v17 + 344) = 0;
  *(v17 + 352) = 0;
  *(v17 + 360) = 0;
  *(v17 + 344) = *(&v207 + 1);
  *(&v207 + 1) = 0;
  *(v17 + 352) = v208;
  *&v208 = 0;
  v32 = *(v17 + 360);
  *(v17 + 360) = *(&v208 + 1);
  *(&v208 + 1) = v32;
  *(v17 + 368) = 0;
  *(v17 + 376) = 0;
  *(v17 + 384) = 0;
  *(v17 + 368) = v209;
  *&v209 = 0;
  *(v17 + 376) = *(&v209 + 1);
  *(&v209 + 1) = 0;
  v33 = *(v17 + 384);
  *(v17 + 384) = v210;
  *&v210 = v33;
  *(v17 + 392) = 0;
  *(v17 + 400) = 0;
  *(v17 + 408) = 0;
  *(v17 + 392) = *(&v210 + 1);
  *(&v210 + 1) = 0;
  *(v17 + 400) = v211;
  *&v211 = 0;
  v34 = *(v17 + 408);
  *(v17 + 408) = *(&v211 + 1);
  *(&v211 + 1) = v34;
  *(v17 + 416) = 0;
  *(v17 + 424) = 0;
  *(v17 + 432) = 0;
  *(v17 + 416) = v212;
  *&v212 = 0;
  *(v17 + 424) = *(&v212 + 1);
  *(&v212 + 1) = 0;
  v35 = *(v17 + 432);
  *(v17 + 432) = v213;
  *&v213 = v35;
  *(v17 + 440) = *(&v213 + 1);
  ++*(a1 + 2000);
  ++*(a1 + 2008);
  re::EvaluationCallbackData::~EvaluationCallbackData(&v186);
  v181 = *(a1 + 2000);
  v36 = *(a1 + 2016) + 448 * v181;
  *(v36 - 448) = a2;
  *(v36 - 8) = a4;
  v37 = *(a1 + 1984);
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 440), v37, *(a3 + 8));
  v38 = (v36 - 416);
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 416), v37, *(a3 + 24));
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 392), v37, *(a3 + 40));
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 368), v37, *(a3 + 56));
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 344), v37, *(a3 + 72));
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 320), v37, *(a3 + 88));
  v182 = (v36 - 296);
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 296), v37, *(a3 + 104));
  v183 = (v36 - 272);
  v39 = re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 272), v37, *(a3 + 120));
  if (!*(v36 - 440))
  {
    v41 = *(a3 + 8);
    if (!v41)
    {
      goto LABEL_19;
    }
  }

  v42 = *(a3 + 8);
  if (*(v36 - 432) != v42)
  {
LABEL_212:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
    goto LABEL_213;
  }

  if (v42)
  {
    v39 = memmove(*(v36 - 424), *a3, 8 * v42);
  }

LABEL_19:
  if (!*v38)
  {
    v43 = *(a3 + 24);
    if (!v43)
    {
      goto LABEL_25;
    }
  }

  v44 = *(a3 + 24);
  if (*(v36 - 408) != v44)
  {
LABEL_213:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
    goto LABEL_214;
  }

  if (v44)
  {
    v39 = memmove(*(v36 - 400), *(a3 + 16), 8 * v44);
  }

LABEL_25:
  if (!*(v36 - 392))
  {
    v45 = *(a3 + 40);
    if (!v45)
    {
      goto LABEL_31;
    }
  }

  v46 = *(a3 + 40);
  if (*(v36 - 384) != v46)
  {
LABEL_214:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
    goto LABEL_215;
  }

  if (v46)
  {
    v39 = memmove(*(v36 - 376), *(a3 + 32), 8 * v46);
  }

LABEL_31:
  if (!*(v36 - 368))
  {
    v47 = *(a3 + 56);
    if (!v47)
    {
      goto LABEL_37;
    }
  }

  v48 = *(a3 + 56);
  if (*(v36 - 360) != v48)
  {
LABEL_215:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
    goto LABEL_216;
  }

  if (v48)
  {
    v39 = memmove(*(v36 - 352), *(a3 + 48), 8 * v48);
  }

LABEL_37:
  if (!*(v36 - 344))
  {
    v49 = *(a3 + 72);
    if (!v49)
    {
      goto LABEL_43;
    }
  }

  v50 = *(a3 + 72);
  if (*(v36 - 336) != v50)
  {
LABEL_216:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
    goto LABEL_217;
  }

  if (v50)
  {
    v39 = memmove(*(v36 - 328), *(a3 + 64), 8 * v50);
  }

LABEL_43:
  if (!*(v36 - 320))
  {
    v51 = *(a3 + 88);
    if (!v51)
    {
      goto LABEL_49;
    }
  }

  v52 = *(a3 + 88);
  if (*(v36 - 312) != v52)
  {
LABEL_217:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
    goto LABEL_218;
  }

  if (v52)
  {
    v39 = memmove(*(v36 - 304), *(a3 + 80), 8 * v52);
  }

LABEL_49:
  if (!*v182)
  {
    v53 = *(a3 + 104);
    if (!v53)
    {
      goto LABEL_55;
    }
  }

  v54 = *(a3 + 104);
  if (*(v36 - 288) != v54)
  {
LABEL_218:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
    goto LABEL_219;
  }

  if (v54)
  {
    v39 = memmove(*(v36 - 280), *(a3 + 96), 8 * v54);
  }

LABEL_55:
  if (!*v183)
  {
    v55 = *(a3 + 120);
    if (!v55)
    {
      goto LABEL_61;
    }
  }

  v56 = *(a3 + 120);
  if (*(v36 - 264) != v56)
  {
LABEL_219:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
LABEL_220:
    re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
  }

  if (v56)
  {
    memmove(*(v36 - 256), *(a3 + 112), 8 * v56);
  }

LABEL_61:
  v57 = re::FixedArray<re::EvaluationSRT>::init<>((v36 - 248), *v184, *(a3 + 136));
  if (!*(v36 - 248))
  {
    v59 = *(a3 + 136);
    if (!v59)
    {
      goto LABEL_67;
    }
  }

  v60 = *(a3 + 136);
  if (*(v36 - 240) != v60)
  {
    goto LABEL_220;
  }

  if (v60)
  {
    memmove(*(v36 - 232), *(a3 + 128), 24 * v60);
  }

LABEL_67:
  v61 = &v214;
  v62 = v181 - 1;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 224), *(a1 + 1984), *(a3 + 152));
  if (*(a3 + 152))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1664), &v186);
      v65 = *(a1 + 1680);
      v66 = v65 - 1;
      if (!v65)
      {
        break;
      }

      *(*(a1 + 1696) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 216);
      if (v38 <= v63)
      {
        goto LABEL_129;
      }

      *(*(v36 - 208) + 8 * v63) = v66;
      v67 = *(a3 + 152);
      if (v67 <= v63)
      {
        goto LABEL_133;
      }

      *(*(a3 + 144) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 152))
      {
        goto LABEL_73;
      }
    }

    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v100 = MEMORY[0x1E69E9C10];
    v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v101)
    {
      v102 = 3;
    }

    else
    {
      v102 = 2;
    }

    v217 = 789;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = 0;
    _os_log_send_and_compose_impl(v102, &v185, &v186, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v103 = MEMORY[0x1E69E9C10];
    v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v104)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v63;
    v220 = 2048;
    v221 = v38;
    _os_log_send_and_compose_impl(v105, &v185, &v186, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v67);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v168);
    __break(1u);
    goto LABEL_134;
  }

LABEL_73:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 200), *(a1 + 1984), *(a3 + 168));
  if (*(a3 + 168))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1704), &v186);
      v69 = *(a1 + 1720);
      v66 = v69 - 1;
      if (!v69)
      {
        break;
      }

      *(*(a1 + 1736) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 192);
      if (v38 <= v63)
      {
        goto LABEL_138;
      }

      *(*(v36 - 184) + 8 * v63) = v66;
      v70 = *(a3 + 168);
      if (v70 <= v63)
      {
        goto LABEL_142;
      }

      *(*(a3 + 160) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 168))
      {
        goto LABEL_79;
      }
    }

LABEL_134:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v106 = MEMORY[0x1E69E9C10];
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    v217 = 789;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = 0;
    _os_log_send_and_compose_impl(v108, &v185, &v186, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_138:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v110)
    {
      v111 = 3;
    }

    else
    {
      v111 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v63;
    v220 = 2048;
    v221 = v38;
    _os_log_send_and_compose_impl(v111, &v185, &v186, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_142:
    re::internal::assertLog(6, v68, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v70);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v158, v169);
    __break(1u);
    goto LABEL_143;
  }

LABEL_79:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 176), *(a1 + 1984), *(a3 + 184));
  if (*(a3 + 184))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1744), &v186);
      v72 = *(a1 + 1760);
      v66 = v72 - 1;
      if (!v72)
      {
        break;
      }

      *(*(a1 + 1776) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 168);
      if (v38 <= v63)
      {
        goto LABEL_147;
      }

      *(*(v36 - 160) + 8 * v63) = v66;
      v73 = *(a3 + 184);
      if (v73 <= v63)
      {
        goto LABEL_151;
      }

      *(*(a3 + 176) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 184))
      {
        goto LABEL_85;
      }
    }

LABEL_143:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v112 = MEMORY[0x1E69E9C10];
    v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v113)
    {
      v114 = 3;
    }

    else
    {
      v114 = 2;
    }

    v217 = 789;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = 0;
    _os_log_send_and_compose_impl(v114, &v185, &v186, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v115 = MEMORY[0x1E69E9C10];
    v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v116)
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v63;
    v220 = 2048;
    v221 = v38;
    _os_log_send_and_compose_impl(v117, &v185, &v186, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v73);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v159, v170);
    __break(1u);
    goto LABEL_152;
  }

LABEL_85:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 152), *(a1 + 1984), *(a3 + 200));
  if (*(a3 + 200))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1784), &v186);
      v75 = *(a1 + 1800);
      v66 = v75 - 1;
      if (!v75)
      {
        break;
      }

      *(*(a1 + 1816) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 144);
      if (v38 <= v63)
      {
        goto LABEL_156;
      }

      *(*(v36 - 136) + 8 * v63) = v66;
      v76 = *(a3 + 200);
      if (v76 <= v63)
      {
        goto LABEL_160;
      }

      *(*(a3 + 192) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 200))
      {
        goto LABEL_91;
      }
    }

LABEL_152:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v118 = MEMORY[0x1E69E9C10];
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    v217 = 789;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = 0;
    _os_log_send_and_compose_impl(v120, &v185, &v186, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_156:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v121 = MEMORY[0x1E69E9C10];
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v63;
    v220 = 2048;
    v221 = v38;
    _os_log_send_and_compose_impl(v123, &v185, &v186, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_160:
    re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v76);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v160, v171);
    __break(1u);
    goto LABEL_161;
  }

LABEL_91:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 128), *(a1 + 1984), *(a3 + 216));
  if (*(a3 + 216))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1824), &v186);
      v78 = *(a1 + 1840);
      v66 = v78 - 1;
      if (!v78)
      {
        break;
      }

      *(*(a1 + 1856) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 120);
      if (v38 <= v63)
      {
        goto LABEL_165;
      }

      *(*(v36 - 112) + 8 * v63) = v66;
      v79 = *(a3 + 216);
      if (v79 <= v63)
      {
        goto LABEL_169;
      }

      *(*(a3 + 208) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 216))
      {
        goto LABEL_97;
      }
    }

LABEL_161:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v124 = MEMORY[0x1E69E9C10];
    v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v125)
    {
      v126 = 3;
    }

    else
    {
      v126 = 2;
    }

    v217 = 789;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = 0;
    _os_log_send_and_compose_impl(v126, &v185, &v186, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v127 = MEMORY[0x1E69E9C10];
    v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v128)
    {
      v129 = 3;
    }

    else
    {
      v129 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v63;
    v220 = 2048;
    v221 = v38;
    _os_log_send_and_compose_impl(v129, &v185, &v186, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    re::internal::assertLog(6, v77, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v79);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v161, v172);
    __break(1u);
    goto LABEL_170;
  }

LABEL_97:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 104), *(a1 + 1984), *(a3 + 232));
  if (*(a3 + 232))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1864), &v186);
      v81 = *(a1 + 1880);
      v66 = v81 - 1;
      if (!v81)
      {
        break;
      }

      *(*(a1 + 1896) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 96);
      if (v38 <= v63)
      {
        goto LABEL_174;
      }

      *(*(v36 - 88) + 8 * v63) = v66;
      v82 = *(a3 + 232);
      if (v82 <= v63)
      {
        goto LABEL_178;
      }

      *(*(a3 + 224) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 232))
      {
        goto LABEL_103;
      }
    }

LABEL_170:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v130 = MEMORY[0x1E69E9C10];
    v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v131)
    {
      v132 = 3;
    }

    else
    {
      v132 = 2;
    }

    v217 = 789;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = 0;
    _os_log_send_and_compose_impl(v132, &v185, &v186, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_174:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v133 = MEMORY[0x1E69E9C10];
    v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v134)
    {
      v135 = 3;
    }

    else
    {
      v135 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v63;
    v220 = 2048;
    v221 = v38;
    _os_log_send_and_compose_impl(v135, &v185, &v186, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_178:
    re::internal::assertLog(6, v80, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v82);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v162, v173);
    __break(1u);
    goto LABEL_179;
  }

LABEL_103:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 80), *(a1 + 1984), *(a3 + 248));
  if (*(a3 + 248))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1904), &v186);
      v84 = *(a1 + 1920);
      v66 = v84 - 1;
      if (!v84)
      {
        break;
      }

      *(*(a1 + 1936) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 72);
      if (v38 <= v63)
      {
        goto LABEL_183;
      }

      *(*(v36 - 64) + 8 * v63) = v66;
      v85 = *(a3 + 248);
      if (v85 <= v63)
      {
        goto LABEL_187;
      }

      *(*(a3 + 240) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 248))
      {
        goto LABEL_109;
      }
    }

LABEL_179:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v136 = MEMORY[0x1E69E9C10];
    v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v137)
    {
      v138 = 3;
    }

    else
    {
      v138 = 2;
    }

    v217 = 789;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = 0;
    _os_log_send_and_compose_impl(v138, &v185, &v186, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_183:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v139 = MEMORY[0x1E69E9C10];
    v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v140)
    {
      v141 = 3;
    }

    else
    {
      v141 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v63;
    v220 = 2048;
    v221 = v38;
    _os_log_send_and_compose_impl(v141, &v185, &v186, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_187:
    re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v85);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v163, v174);
    __break(1u);
    goto LABEL_188;
  }

LABEL_109:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 56), *(a1 + 1984), *(a3 + 264));
  if (*(a3 + 264))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v186);
      v87 = *(a1 + 1960);
      v66 = v87 - 1;
      if (!v87)
      {
        break;
      }

      *(*(a1 + 1976) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 48);
      if (v38 <= v63)
      {
        goto LABEL_192;
      }

      *(*(v36 - 40) + 8 * v63) = v66;
      v88 = *(a3 + 264);
      if (v88 <= v63)
      {
        goto LABEL_196;
      }

      *(*(a3 + 256) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 264))
      {
        goto LABEL_115;
      }
    }

LABEL_188:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v142 = MEMORY[0x1E69E9C10];
    v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v143)
    {
      v144 = 3;
    }

    else
    {
      v144 = 2;
    }

    v217 = 789;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = 0;
    _os_log_send_and_compose_impl(v144, &v185, &v186, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_192:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v145 = MEMORY[0x1E69E9C10];
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v63;
    v220 = 2048;
    v221 = v38;
    _os_log_send_and_compose_impl(v147, &v185, &v186, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_196:
    re::internal::assertLog(6, v86, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v88);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v164, v175);
    __break(1u);
    goto LABEL_197;
  }

LABEL_115:
  result = re::FixedArray<re::EvaluationSRT>::init<>((v36 - 32), *v184, *(a3 + 280));
  if (*(a3 + 280))
  {
    v90 = 0;
    v66 = 0;
    while (1)
    {
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v186);
      v91 = *(a1 + 1960) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v91) + 8) = v62;
      v61 = *(v36 - 24);
      if (v61 <= v66)
      {
        break;
      }

      *(*(v36 - 16) + v90) = v91;
      v93 = *(a3 + 280);
      if (v93 <= v66)
      {
        goto LABEL_201;
      }

      *(*(a3 + 272) + v90) = v91;
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1864), &v186);
      v94 = *(a1 + 1880) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(a1 + 1664, v94) + 8) = v62;
      v61 = *(v36 - 24);
      if (v61 <= v66)
      {
        goto LABEL_202;
      }

      *(*(v36 - 16) + v90 + 8) = v94;
      v96 = *(a3 + 280);
      if (v96 <= v66)
      {
        goto LABEL_206;
      }

      *(*(a3 + 272) + v90 + 8) = v94;
      LODWORD(v186) = 76;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v186);
      v97 = *(a1 + 1960) - 1;
      result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v97);
      *(result + 8) = v62;
      v61 = *(v36 - 24);
      if (v61 <= v66)
      {
        goto LABEL_207;
      }

      *(*(v36 - 16) + v90 + 16) = v97;
      v99 = *(a3 + 280);
      if (v99 <= v66)
      {
        goto LABEL_211;
      }

      *(*(a3 + 272) + v90 + 16) = v97;
      ++v66;
      v90 += 24;
      if (v66 >= *(a3 + 280))
      {
        return result;
      }
    }

LABEL_197:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v149)
    {
      v150 = 3;
    }

    else
    {
      v150 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = v61;
    _os_log_send_and_compose_impl(v150, &v185, &v186, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_201:
    re::internal::assertLog(6, v92, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v66, v93);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v165, v176);
    __break(1u);
LABEL_202:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v151 = MEMORY[0x1E69E9C10];
    v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v152)
    {
      v153 = 3;
    }

    else
    {
      v153 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = v61;
    _os_log_send_and_compose_impl(v153, &v185, &v186, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_206:
    re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v66, v96);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v166, v177);
    __break(1u);
LABEL_207:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v154 = MEMORY[0x1E69E9C10];
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v214 = 136315906;
    v215 = "operator[]";
    v216 = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    v217 = 468;
    v218 = 2048;
    v219 = v66;
    v220 = 2048;
    v221 = v61;
    _os_log_send_and_compose_impl(v156, &v185, &v186, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_211:
    re::internal::assertLog(6, v98, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v66, v99);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v167, v178);
    __break(1u);
    goto LABEL_212;
  }

  return result;
}