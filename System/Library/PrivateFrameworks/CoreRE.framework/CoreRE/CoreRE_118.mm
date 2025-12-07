uint64_t re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 816 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 816 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 816 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 816 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v52, 0, 36);
          *&v52[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::init(v52, v9, v8);
          v11 = *v52;
          *v52 = *a1;
          *a1 = v11;
          v12 = *&v52[16];
          *&v52[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v52[24];
          *&v52[24] = *(a1 + 24);
          v13 = *&v52[32];
          *(a1 + 24) = v14;
          ++*&v52[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v52[16] + v16) & 0x80000000) != 0)
              {
                v18 = *&v52[16] + v16;
                v19 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(*&v52[16] + v16 + 800) % *(a1 + 24), *(*&v52[16] + v16 + 800));
                *(v19 + 8) = *(v18 + 8);
                v20 = *(v18 + 16);
                v21 = *(v18 + 48);
                *(v19 + 32) = *(v18 + 32);
                *(v19 + 48) = v21;
                *(v19 + 16) = v20;
                v22 = *(v18 + 64);
                *(v19 + 64) = *(v19 + 64) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v19 + 64) = *(v18 + 64) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v19 + 72) = *(v18 + 72);
                *(v18 + 64) = 0;
                *(v18 + 72) = &str_67;
                v24 = *(v18 + 112);
                v23 = *(v18 + 128);
                v25 = *(v18 + 96);
                *(v19 + 80) = *(v18 + 80);
                *(v19 + 96) = v25;
                *(v19 + 112) = v24;
                *(v19 + 128) = v23;
                *(v19 + 152) = 0u;
                *(v19 + 144) = 0;
                *(v19 + 152) = *(v18 + 152);
                *(v18 + 152) = 0;
                v26 = *(v19 + 144);
                *(v19 + 144) = 0;
                *(v19 + 144) = *(v18 + 144);
                *(v18 + 144) = v26;
                v27 = *(v19 + 160);
                *(v19 + 160) = *(v18 + 160);
                *(v18 + 160) = v27;
                *(v19 + 168) = 0u;
                *(v19 + 184) = 0;
                *(v19 + 176) = *(v18 + 176);
                *(v18 + 176) = 0;
                v28 = *(v19 + 168);
                *(v19 + 168) = 0;
                *(v19 + 168) = *(v18 + 168);
                *(v18 + 168) = v28;
                v29 = *(v19 + 184);
                *(v19 + 184) = *(v18 + 184);
                *(v18 + 184) = v29;
                *(v19 + 224) = 0;
                *(v19 + 192) = 0;
                *(v19 + 200) = 0u;
                *(v19 + 216) = 0;
                v30 = *(v18 + 200);
                *(v19 + 192) = *(v18 + 192);
                *(v19 + 200) = v30;
                *(v18 + 192) = 0;
                *(v18 + 200) = 0;
                v31 = *(v19 + 208);
                *(v19 + 208) = *(v18 + 208);
                *(v18 + 208) = v31;
                v32 = *(v19 + 224);
                *(v19 + 224) = *(v18 + 224);
                *(v18 + 224) = v32;
                ++*(v18 + 216);
                ++*(v19 + 216);
                *(v19 + 232) = *(v18 + 232);
                *(v18 + 232) = 0;
                v33 = *(v18 + 240);
                v34 = *(v18 + 256);
                v35 = *(v18 + 288);
                *(v19 + 272) = *(v18 + 272);
                *(v19 + 288) = v35;
                *(v19 + 240) = v33;
                *(v19 + 256) = v34;
                memcpy((v19 + 304), (v18 + 304), 0x128uLL);
                *(v19 + 608) = 0;
                *(v19 + 616) = 0u;
                *(v19 + 616) = *(v18 + 616);
                *(v18 + 616) = 0;
                v36 = *(v19 + 608);
                *(v19 + 608) = 0;
                *(v19 + 608) = *(v18 + 608);
                *(v18 + 608) = v36;
                v37 = *(v19 + 624);
                *(v19 + 624) = *(v18 + 624);
                *(v18 + 624) = v37;
                *(v19 + 632) = 0u;
                *(v19 + 648) = 0;
                *(v19 + 640) = *(v18 + 640);
                *(v18 + 640) = 0;
                v38 = *(v19 + 632);
                *(v19 + 632) = 0;
                *(v19 + 632) = *(v18 + 632);
                *(v18 + 632) = v38;
                v39 = *(v19 + 648);
                *(v19 + 648) = *(v18 + 648);
                *(v18 + 648) = v39;
                *(v19 + 656) = *(v18 + 656);
                v40 = *(v18 + 672);
                v41 = *(v18 + 688);
                v42 = *(v18 + 720);
                *(v19 + 704) = *(v18 + 704);
                *(v19 + 720) = v42;
                *(v19 + 672) = v40;
                *(v19 + 688) = v41;
                v43 = *(v18 + 736);
                v44 = *(v18 + 752);
                v45 = *(v18 + 768);
                *(v19 + 784) = *(v18 + 784);
                *(v19 + 752) = v44;
                *(v19 + 768) = v45;
                *(v19 + 736) = v43;
                v15 = *&v52[32];
              }

              ++v17;
              v16 += 816;
            }

            while (v17 < v15);
          }

          re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v52);
        }
      }

      else
      {
        if (v8)
        {
          v48 = 2 * v7;
        }

        else
        {
          v48 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v46 = *(a1 + 16);
    v47 = *(v46 + 816 * v5);
  }

  else
  {
    v46 = *(a1 + 16);
    v47 = *(v46 + 816 * v5);
    *(a1 + 36) = v47 & 0x7FFFFFFF;
  }

  v49 = v46 + 816 * v5;
  *v49 = v47 | 0x80000000;
  v50 = *(a1 + 8);
  *v49 = *(v50 + 4 * a2) | 0x80000000;
  *(v50 + 4 * a2) = v5;
  *(v49 + 800) = a3;
  ++*(a1 + 28);
  return v46 + 816 * v5;
}

void re::MXIContext::ReprojectionContext::~ReprojectionContext(re::MXIContext::ReprojectionContext *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::MaterialParameterBlock *re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>@<X0>(re *a1@<X0>, re::MaterialParameterBlock **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 1008, 8);
  result = re::MaterialParameterBlock::MaterialParameterBlock(v5, *a1);
  *a2 = result;
  return result;
}

uint64_t re::ecs2::BlurGenerationSystem::update(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 224);
  if (!v3 || (*(v3 + 432) & 0x10) != 0)
  {
    v4 = *(*(result + 232) + 112);
    if (v4 && re::RenderFrameBox::get((v4 + 328), 0xFFFFFFFFFFFFFFFuLL))
    {
      v5 = *(v2 + 232);
      v6 = *(v5 + 112);
      if (v6)
      {
        v7 = re::RenderFrameBox::get((v6 + 328), 0xFFFFFFFFFFFFFFFuLL);
        v5 = *(v2 + 232);
      }

      else
      {
        v7 = 0;
      }

      v12 = 0;
      v9[1] = 0;
      v10 = 0;
      v9[0] = 0;
      v11 = 0;
      re::TextureManager::dequeueBlurGeneration(v8, *(v5 + 56));
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v9, v8);
      re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v8);
      if (v10)
      {
        (*(**(v7 + 320) + 208))(*(v7 + 320), v9);
      }

      return re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v9);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager->renderFrame()", "update", 19);
      result = _os_crash("assertion failure: (m_renderManager->renderFrame()) ");
      __break(1u);
    }
  }

  return result;
}

void *re::ecs2::allocInfo_BlurGenerationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_249, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_249))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8208, "BlurGenerationSystem");
    __cxa_guard_release(&_MergedGlobals_249);
  }

  return &unk_1EE1A8208;
}

void re::ecs2::initInfo_BlurGenerationSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xCD17DA683639A01CLL;
  v8[1] = "BlurGenerationSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_BlurGenerationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlurGenerationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlurGenerationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::BlurGenerationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::BlurGenerationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlurGenerationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlurGenerationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::BlurGenerationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF0498;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::BlurGenerationSystem>(uint64_t a1)
{
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF0498;
  return result;
}

void re::ecs2::BlurGenerationSystem::~BlurGenerationSystem(re::ecs2::BlurGenerationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_HierarchicalTintComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A82A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A82A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A82B8, "HierarchicalTintComponent");
    __cxa_guard_release(&qword_1EE1A82A0);
  }

  return &unk_1EE1A82B8;
}

void re::ecs2::initInfo_HierarchicalTintComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x8CA32477D16ED632;
  v20[1] = "HierarchicalTintComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&_MergedGlobals_250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_250))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A82A8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "tintAmount";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A82B0 = v18;
    __cxa_guard_release(&_MergedGlobals_250);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A82A8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HierarchicalTintComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HierarchicalTintComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HierarchicalTintComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HierarchicalTintComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225HierarchicalTintComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::HierarchicalTintComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDECA8;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::HierarchicalTintComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDECA8;
  *(v1 + 28) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs225HierarchicalTintComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::AnimationUpdateSystem::willAddSystemToECSService(re::ecs2::AnimationUpdateSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::ecs2::AnimationSceneService>(v2);
  *(this + 28) = v3;
  v4 = *(*v3 + 48);

  return v4();
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::AnimationSceneService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::AnimationSceneService>(BOOL)::info = re::ecs2::introspect_AnimationSceneService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::AnimationSceneService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

uint64_t re::ecs2::AnimationUpdateSystem::willRemoveSystemFromECSService(re::ecs2::AnimationUpdateSystem *this)
{
  result = (*(**(this + 28) + 56))(*(this + 28), this);
  *(this + 28) = 0;
  return result;
}

uint64_t re::ecs2::AnimationUpdateSystem::willAddSceneToECSService(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t re::ecs2::AnimationUpdateSystem::willRemoveSceneFromECSService(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t re::ecs2::AnimationUpdateSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    v3 = result;
    if (*(result + 224))
    {
      v4 = *(a3 + 200);
      if (v4)
      {
        v5 = *&a2;
        v6 = *(a3 + 216);
        v7 = 8 * v4;
        do
        {
          v8 = *v6++;
          result = (*(**(v3 + 224) + 24))(*(v3 + 224), v8, v5);
          v7 -= 8;
        }

        while (v7);
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_AnimationUpdateSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_251, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_251))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8350, "AnimationUpdateSystem");
    __cxa_guard_release(&_MergedGlobals_251);
  }

  return &unk_1EE1A8350;
}

void re::ecs2::initInfo_AnimationUpdateSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x793BDA254CA56BB8;
  v8[1] = "AnimationUpdateSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AnimationUpdateSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnimationUpdateSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnimationUpdateSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AnimationUpdateSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AnimationUpdateSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnimationUpdateSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnimationUpdateSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::ecs2::AnimationUpdateSystem::~AnimationUpdateSystem(re::ecs2::AnimationUpdateSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::AnimationUpdateSystem *re::ecs2::AnimationUpdateSystem::AnimationUpdateSystem(re::ecs2::AnimationUpdateSystem *this)
{
  v2 = re::ecs2::System::System(this, 0);
  *v2 = &unk_1F5CF0528;
  v2[28] = 0;
  LOWORD(v4) = 257;
  HIDWORD(v4) = 1023969417;
  v5 = 0;
  re::ecs2::System::setDefaultTaskOptions(v2, &v4);
  return this;
}

void *re::ecs2::allocInfo_MaterialParametersSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_252, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_252))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A83E8, "MaterialParametersSystem");
    __cxa_guard_release(&_MergedGlobals_252);
  }

  return &unk_1EE1A83E8;
}

void re::ecs2::initInfo_MaterialParametersSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x54BED6764F265040;
  v8[1] = "MaterialParametersSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MaterialParametersSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialParametersSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialParametersSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MaterialParametersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MaterialParametersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialParametersSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialParametersSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::MaterialParametersSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CF05B8;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::MaterialParametersSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CF05B8;
  return result;
}

_anonymous_namespace_ *re::ecs2::MaterialParametersSystem::willAddSceneToECSService(re::ecs2::MaterialParametersSystem *this, re::ecs2::Scene *a2)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::MaterialParametersService>(v2);
  if (result)
  {
    v4 = *(*result + 64);

    return v4();
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::MaterialParametersSystem::willRemoveSceneFromECSService(re::ecs2::MaterialParametersSystem *this, re::ecs2::Scene *a2)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::MaterialParametersService>(v2);
  if (result)
  {
    v4 = *(*result + 72);

    return v4();
  }

  return result;
}

void re::ecs2::MaterialParametersSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(**(a1 + 40) + 32))(*(a1 + 40), a2);
  v5 = re::ServiceLocator::serviceOrNull<re::MaterialParametersService>(v4);
  v6 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v4);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(a3 + 200);
    if (v8)
    {
      v9 = v6;
      v10 = *(a3 + 216);
      v31 = &v10[v8];
      do
      {
        v11 = *v10;
        v12 = re::ecs2::SceneComponentTable::get((*v10 + 200), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v12)
        {
          v13 = *(v12 + 384);
          if (v13)
          {
            v14 = *(v12 + 400);
            v15 = 8 * v13;
            do
            {
              v16 = *v14;
              v17 = *(*v14 + 88);
              if (v17 && (v18 = atomic_load((v17 + 896)), v18 == 2))
              {
                v19 = *(*(v16 + 16) + 312);
                v20 = *(v16 + 76);
                v21 = *(v16 + 77);
                v22 = *(v16 + 72);
                re::AssetHandle::AssetHandle(v34, (v16 + 48));
                re::AssetHandle::AssetHandle(v33, (v16 + 80));
                (*(*v5 + 48))(v5, v9, v19, v20, v21, v16 + 28, v34, v33, v22);
                re::AssetHandle::~AssetHandle(v33);
                re::AssetHandle::~AssetHandle(v34);
              }

              else
              {
                re::AssetHandle::loadAsync((v16 + 80));
              }

              ++v14;
              v15 -= 8;
            }

            while (v15);
          }
        }

        v23 = re::ecs2::SceneComponentTable::get((v11 + 200), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v23)
        {
          v24 = *(v23 + 384);
          if (v24)
          {
            v25 = *(v23 + 400);
            v26 = 8 * v24;
            do
            {
              v27 = *v25;
              v28 = *(*v25 + 536);
              if (v28 && (v29 = atomic_load((v28 + 896)), v29 == 2))
              {
                v30 = *(*(v27 + 16) + 312);
                re::AssetHandle::AssetHandle(v32, (v27 + 528));
                (*(*v5 + 40))(v5, v9, v30, v27 + 32, v32);
                re::AssetHandle::~AssetHandle(v32);
              }

              else
              {
                re::AssetHandle::loadAsync((v27 + 528));
              }

              ++v25;
              v26 -= 8;
            }

            while (v26);
          }
        }

        ++v10;
      }

      while (v10 != v31);
    }
  }
}

void re::ecs2::MaterialParametersSystem::~MaterialParametersSystem(re::ecs2::MaterialParametersSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ImagePresentationComponentHelper::impl::~impl(id *this)
{
  re::ecs2::ImagePresentationComponentHelper::impl::removeStatusAndSpatialComponents(this);
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = WeakRetained[3];
    if (v4 && (*(v4 + 304) & 0x80) == 0)
    {
      re::ecs2::ImagePresentationComponentHelper::impl::unsubscribeAllEventListeners(WeakRetained, WeakRetained[3]);
      re::ecs2::ImagePresentationComponentHelper::impl::removeImageEntityHierarchy(this, v4);
    }
  }

  media::Spatial3DImageAnimationEngine::~Spatial3DImageAnimationEngine((this + 1569));
  media::MediaScreenAnimationEngine::~MediaScreenAnimationEngine((this + 12));
  objc_destroyWeak(this + 11);
  this[11] = 0;
  objc_destroyWeak(this + 9);
  this[9] = 0;
  objc_destroyWeak(this + 8);
  this[8] = 0;
  objc_destroyWeak(this + 7);
  this[7] = 0;
  objc_destroyWeak(this + 3);
  this[3] = 0;
  objc_destroyWeak(this + 2);
  this[2] = 0;
}

void re::ecs2::ImagePresentationComponentHelper::impl::removeStatusAndSpatialComponents(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = *(WeakRetained + 3);
    if (v3 && (*(v3 + 304) & 0x80) == 0)
    {
      re::ecs2::EntityComponentCollection::remove((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      re::ecs2::EntityComponentCollection::remove((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      re::ecs2::EntityComponentCollection::remove((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    }
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::unsubscribeAllEventListeners(re::ecs2::ImagePresentationComponentHelper::impl *this, re::ecs2::Entity *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 39);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Unsubscribing all event listeners. [entityID: %llu]", &v5, 0xCu);
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::removeImageEntityHierarchy(id *this, re::ecs2::Entity *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 39);
    v15 = 134217984;
    v16 = v5;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Tearing down the image entity hierarchy. [entityID: %llu]", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(this + 7);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = (WeakRetained - 8);
    re::ecs2::Entity::setSelfEnabled((WeakRetained - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v8);
    objc_destroyWeak(this + 7);
    this[7] = 0;
  }

  v9 = objc_loadWeakRetained(this + 8);
  if (v9)
  {
    v10 = v9;
    v11 = (v9 - 8);
    re::ecs2::Entity::setSelfEnabled((v9 - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v11);
    objc_destroyWeak(this + 8);
    this[8] = 0;
  }

  v12 = objc_loadWeakRetained(this + 9);
  if (v12)
  {
    v13 = v12;
    v14 = (v12 - 8);
    re::ecs2::Entity::setSelfEnabled((v12 - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v14);
    objc_destroyWeak(this + 9);
    this[9] = 0;
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::update(re::MediaDefaults *a1, void *a2, re::ecs2 **a3, float a4)
{
  v735 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v16 = re::MediaDefaults::logEnabled(a1);
    if (!v16)
    {
      return;
    }

    v17 = *re::imagePresentationLogObjects(v16);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v18 = "[ImagePresentationComponentHelper] Skipping update due to imagePresentationEntity is not found.";
    v19 = v17;
    v20 = 2;
LABEL_18:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    return;
  }

  v5 = a2;
  v693 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v693)
  {
    v21 = re::MediaDefaults::logEnabled(0);
    if (!v21)
    {
      return;
    }

    v22 = *re::imagePresentationLogObjects(v21);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v23 = v5[39];
    *buf = 134217984;
    *&buf[4] = v23;
    v18 = "[ImagePresentationComponentHelper] Skipping update due to image presentation component is not found on %llu.";
    v19 = v22;
    v20 = 12;
    goto LABEL_18;
  }

  v699 = a1;
  re::ecs2::EntityComponentCollection::getOrAdd((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::EntityComponentCollection::getOrAdd((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::EntityComponentCollection::getOrAdd((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v8 = re::ecs2::EntityComponentCollection::get((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v694 = v8;
  v700 = v5;
  v692 = a3;
  if ((*(v5 + 305) & 8) != 0 || (*(v5 + 387) & 1) != 0 || (v11 = v5[43]) == 0)
  {
LABEL_23:
    if (!*a3 || !a3[2])
    {
      v92 = *re::imagePresentationLogObjects(v8);
      v66 = v699;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v93 = v5[39];
        *buf = 134217984;
        *&buf[4] = v93;
        _os_log_error_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_ERROR, "[ImagePresentationComponentHelper::impl] Cannot find dependencies. Skip buildImageEntityHierarchy on entity %llu.", buf, 0xCu);
      }

      goto LABEL_98;
    }

    v25 = *re::imagePresentationLogObjects(v8);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::impl] Build image entity hierarchy.", buf, 2u);
    }

    v27 = *a3;
    v28 = a3[2];
    v29 = re::ecs2::EntityFactory::instance(v26);
    v30 = re::ecs2::EntityFactory::make(&v712, v29, 4uLL);
    v31 = v712.i64[0];
    if (!v712.i64[0])
    {
LABEL_54:
      v59 = *(a3[2] + 17);
      v60 = *a3;
      v61 = re::ecs2::EntityFactory::instance(v30);
      v62 = re::ecs2::EntityFactory::make(v709, v61, 4uLL);
      v63 = re::ecs2::EntityFactory::instance(v62);
      v64 = re::ecs2::EntityFactory::make(v708, v63, 4uLL);
      v65 = v709[0];
      v66 = v699;
      if (v709[0])
      {
        v67 = v708[0];
        if (!v708[0])
        {
LABEL_97:

LABEL_98:
          v115 = re::ecs2::EntityComponentCollection::get((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v115)
          {
            if (*(v115 + 25) == 2)
            {
              v116 = 0x3F80000000000000;
            }

            else
            {
              v116 = 1065353216;
            }

            *(v66 + 1569) = v116;
          }

          else
          {
            v639 = *re::imagePresentationLogObjects(0);
            if (os_log_type_enabled(v639, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = 2899;
              _os_log_error_impl(&dword_1E1C61000, v639, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, statusComponent is nullptr", buf, 8u);
            }
          }

          goto LABEL_103;
        }

        v68 = *re::imagePresentationLogObjects(v64);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = v5[39];
          *buf = 134217984;
          *&buf[4] = v69;
          _os_log_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_DEFAULT, "MXI: Created the MXI entity and now configuring it. [entityID: %llu]", buf, 0xCu);
        }

        *buf = 0xCD040ED7D618C260;
        *&buf[8] = "__InternalIPC-MXI__";
        re::StringID::operator=(v65 + 36, buf);
        *(v65 + 76) |= 0x1400u;
        re::ecs2::Entity::setSelfEnabled(v65, 0);
        *buf = 0x15C850817C18C722;
        *&buf[8] = "__InternalIPC-MXI-Collider__";
        re::StringID::operator=(v67 + 36, buf);
        *(v67 + 76) |= 0x1400u;
        re::ecs2::Entity::setSelfEnabled(v67, 0);
        re::ecs2::EntityComponentCollection::remove((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v70 = re::ecs2::EntityComponentCollection::get((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v71 = *re::imagePresentationLogObjects(v70);
        v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
        if (v72)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "MXI: ImagePresentationComponentHelper addComponentsToMXIEntity", buf, 2u);
        }

        if (v60)
        {
          v73 = *(v65 + 32);
          if (!v73)
          {
            v73 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          *buf = xmmword_1E3047670;
          *&buf[16] = xmmword_1E3047680;
          *v725 = xmmword_1E30476A0;
          *&v725[16] = xmmword_1E30474D0;
          *v719 = 0u;
          *location = xmmword_1E30474D0;
          *v714 = 0u;
          re::decomposeScaleRotationTranslation<float>(buf, v719, location, v714);
          v74 = *&v719[8];
          v75 = *location;
          v76 = *&location[8];
          v77 = v714[0];
          v78 = v714[1];
          v73[4] = *v719;
          v73[5] = v74;
          v73[6] = v75;
          v73[7] = v76;
          v73[8] = v77;
          v73[9] = v78;
          re::ecs2::Component::markDirty(v73);
          v79 = re::ecs2::EntityComponentCollection::getOrAdd((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v79[428] = 1;
          v79[440] = 1;
          v79[420] = 1;
          re::ecs2::ImagePresentationComponentHelper::impl::updateMXIComponentResources(v70, v79, v59, v60, v80);
          v82 = *re::imagePresentationLogObjects(v81);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            v83 = v79[80];
            *buf = 67109120;
            *&buf[4] = v83;
            _os_log_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_DEFAULT, "MXI: rendering using two pass: %d", buf, 8u);
          }

          v84 = *(v65 + 21);
          if (!v84)
          {
            v84 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          re::ecs2::Component::willSet(v84);
          *(v84 + 28) = 1065353216;
          re::ecs2::Component::didSet(v84);
          re::ecs2::NetworkComponent::markComponentDirty(v84, v85, v86, v87, v88);
          re::ecs2::Component::markDirty(v84);
          v89 = *(v699 + 20);
          v90 = *(v65 + 4);
          if (v90)
          {
            if ((*(v90 + 304) & 0x80) != 0)
            {
              v91 = 0;
            }

            else
            {
              v91 = *(v65 + 4);
            }
          }

          else
          {
            v91 = 0;
          }

          v719[0] = 1;
          re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(buf, v699, v91, v70, v719);
          if (buf[0])
          {
            v94 = *&v725[28];
          }

          else
          {
            v94 = 0.0;
          }

          re::AssetManager::assetHandle(v60, "engine:emptyMaterial.rematerial", v714);
          BYTE4(v722) = 0;
          *&location[8] = 0;
          *&location[14] = 0;
          *v723 = 1065353216;
          *&v723[8] = xmmword_1E3063230;
          __asm { FMOV            V0.2S, #1.0 }

          *location = _D0;
          LODWORD(v722) = re::ecs2::ImagePresentationComponentHelper::impl::getPlaneDepthInMeters(v65, v99);
          *&location[12] = v94;
          re::ecs2::createPlane(v65, location);
          v100 = *(v65 + 24);
          if (!v100)
          {
            v100 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
          }

          re::DynamicArray<re::AssetHandle>::add((v100 + 7), v714);
          re::ecs2::Component::markDirty(v100);
          re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(v65, 0);
          v102 = *re::imagePresentationLogObjects(v101);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            *v719 = 0;
            _os_log_impl(&dword_1E1C61000, v102, OS_LOG_TYPE_DEFAULT, "MXI: ImagePresentationComponentHelper adding uiSortingComponent and colliderComponent to mxiColliderEntity", v719, 2u);
          }

          v103 = re::ecs2::EntityComponentCollection::getOrAdd((v67 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          __asm { FMOV            V0.4S, #1.0 }

          *(&_Q0 + 2) = 10.0 / v89;
          *v719 = _Q0;
          re::ecs2::UISortingComponent::setExtents(v103, v719);
          v66 = v699;
          if (*(v103 + 80) != -1)
          {
            *(v103 + 80) = -1;
          }

          re::ecs2::Component::markDirty(v103);
          v105 = re::ecs2::EntityComponentCollection::add((v67 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v106.n128_u32[0] = 1.0;
          re::ecs2::buildCollisionShapeAssetHandle(v60, v106, 1.0, 10.0 / v89);
          re::AssetHandle::operator=((v105 + 4), v713);
          re::ecs2::Component::markDirty(v105);
          v107 = *(v67 + 32);
          if (!v107)
          {
            v107 = re::ecs2::EntityComponentCollection::add((v67 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          *v719 = xmmword_1E3047670;
          *&v719[16] = xmmword_1E3047680;
          *&v719[32] = xmmword_1E30476A0;
          *&v719[48] = xmmword_1E30474D0;
          v712 = 0u;
          *v711 = xmmword_1E30474D0;
          *v710[0].f32 = 0u;
          re::decomposeScaleRotationTranslation<float>(v719, &v712, v711, v710);
          v108 = v712.i64[1];
          v109 = *v711;
          v110 = v710[0];
          v111 = v710[1];
          *(v107 + 32) = v712.i64[0];
          *(v107 + 40) = v108;
          *(v107 + 48) = v109;
          *(v107 + 64) = v110;
          *(v107 + 72) = v111;
          re::ecs2::Component::markDirty(v107);
          v112 = re::ecs2::EntityComponentCollection::getOrAdd((v67 + 48), re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          *(v112 + 25) = 16843009;
          re::ecs2::Component::markDirty(v112);
          re::ecs2::Component::markDirty(v79);
          re::AssetHandle::~AssetHandle(v713);
          re::AssetHandle::~AssetHandle(v714);
          v65 = v709[0];
        }

        else
        {
          v654 = *re::imagePresentationLogObjects(v72);
          if (os_log_type_enabled(v654, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = 2733;
            _os_log_error_impl(&dword_1E1C61000, v654, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, assetManager is nullptr", buf, 8u);
          }

          v66 = v699;
        }

        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v65 + 40, v708);
        v5 = v700;
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((v700 + 320), v709);
        if (v709[0])
        {
          v113 = v709[0] + 8;
        }

        else
        {
          v113 = 0;
        }

        objc_storeWeak(v66 + 8, v113);
        if (v708[0])
        {
          v114 = v708[0] + 8;
        }

        else
        {
          v114 = 0;
        }

        objc_storeWeak(v66 + 9, v114);
      }

      if (v708[0])
      {
      }

      v65 = v709[0];
      if (!v709[0])
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }

    v32 = *re::imagePresentationLogObjects(v30);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v5[39];
      *buf = 134217984;
      *&buf[4] = v33;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Created the screen entity and now configuring it. [entityID: %llu]", buf, 0xCu);
    }

    *buf = 0xEB3B4F6DA23A16B4;
    *&buf[8] = "__InternalIPC-Screen__";
    re::StringID::operator=((v31 + 288), buf);
    *(v31 + 304) |= 0x1400u;
    re::ecs2::Entity::setSelfEnabled(v31, 0);
    re::ecs2::EntityComponentCollection::remove((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v34 = re::ecs2::EntityComponentCollection::get((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v27)
    {
      if (v28)
      {
        re::ecs2::ImagePresentationComponentHelper::impl::getDesiredScreenEntityConfiguration(buf, v699, v34[2]);
        v35 = 0uLL;
        memset(v719, 0, 48);
        *&v719[20] = *&buf[20];
        *v719 = *&buf[16];
        *&v719[40] = *&buf[24];
        v36 = *buf;
        HIDWORD(v36) = 0;
        *&v719[48] = v36;
        v37 = *(v31 + 256);
        if (!v37)
        {
          v38 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v35 = 0uLL;
          v37 = v38;
        }

        *location = v35;
        *v714 = xmmword_1E30474D0;
        *v713 = v35;
        re::decomposeScaleRotationTranslation<float>(v719, location, v714, v713);
        v39 = *&location[8];
        v40 = v714[0];
        v41 = v714[1];
        v42 = v713[0];
        v43 = v713[1];
        v37[4] = *location;
        v37[5] = v39;
        v37[6] = v40;
        v37[7] = v41;
        v37[8] = v42;
        v37[9] = v43;
        v44 = *(v31 + 232);
        if (!v44)
        {
          v44 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v44[25] = 0;
        v44[35] = 1;
        if ((v44[30] & 1) == 0)
        {
          v44[30] = 1;
        }

        v44[31] = 1;
        re::AssetHandle::AssetHandle(location, (v28 + 144));
        re::AssetHandle::loadAsync(location);
        v45.i64[0] = *v725;
        v685 = v45;
        v695 = *&v725[24];
        re::ecs2::createPlane(v31, v725);
        v46 = *(v31 + 192);
        if (!v46)
        {
          v46 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
        }

        re::DynamicArray<re::AssetHandle>::add((v46 + 7), location);
        re::ecs2::Component::markDirty(v46);
        v47 = re::ecs2::EntityComponentCollection::get((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v48 = v699;
        if (v47)
        {
          *(v47 + 108) = 1;
          re::ecs2::Component::markDirty(v47);
        }

        v49 = re::ecs2::EntityComponentCollection::getOrAdd((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v50 = v685;
        v50.f32[2] = v695;
        *v714 = v50;
        re::ecs2::UISortingComponent::setExtents(v49, v714);
        if (*(v49 + 84) != 2)
        {
          *(v49 + 84) = 2;
        }

        if (*(v49 + 80) != -1)
        {
          *(v49 + 80) = -1;
        }

        re::ecs2::Component::markDirty(v49);
        v51 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::buildCollisionShapeAssetHandle(v27, v685, v685.f32[1], v695);
        re::AssetHandle::operator=((v51 + 4), v714);
        re::ecs2::Component::markDirty(v51);
        v52 = re::ecs2::EntityComponentCollection::getOrAdd((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        *(v52 + 25) = 16843009;
        re::ecs2::Component::markDirty(v52);
        v53 = *(v31 + 168);
        if (!v53)
        {
          v53 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        re::ecs2::Component::willSet(v53);
        *(v53 + 28) = 1065353216;
        re::ecs2::Component::didSet(v53);
        re::ecs2::NetworkComponent::markComponentDirty(v53, v54, v55, v56, v57);
        re::ecs2::Component::markDirty(v53);
        re::AssetHandle::~AssetHandle(v714);
        re::AssetHandle::~AssetHandle(location);
        goto LABEL_49;
      }

      v651 = *re::imagePresentationLogObjects(v34);
      v48 = v699;
      if (!os_log_type_enabled(v651, OS_LOG_TYPE_ERROR))
      {
LABEL_49:
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v5 + 40, v712.i64);
        if (v712.i64[0])
        {
          v58 = (v712.i64[0] + 8);
        }

        else
        {
          v58 = 0;
        }

        objc_initWeak(buf, v58);
        re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(v48 + 7, buf);
        objc_destroyWeak(buf);
        if (v712.i64[0])
        {
        }

        goto LABEL_54;
      }

      *buf = 67109120;
      *&buf[4] = 1707;
      v652 = "ImagePresentationComponentHelper line: %d, imagePresentationManager is nullptr";
    }

    else
    {
      v651 = *re::imagePresentationLogObjects(v34);
      v48 = v699;
      if (!os_log_type_enabled(v651, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 67109120;
      *&buf[4] = 1706;
      v652 = "ImagePresentationComponentHelper line: %d, assetManager is nullptr";
    }

    _os_log_error_impl(&dword_1E1C61000, v651, OS_LOG_TYPE_ERROR, v652, buf, 8u);
    goto LABEL_49;
  }

  v12 = v5[45];
  v13 = 8 * v11;
  v14 = 8 * v11;
  v15 = v12;
  while (1)
  {
    if ((*(*v15 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
    {
      v8 = *(*v15 + 296);
      if (v8 == "__InternalIPC-Screen__")
      {
        break;
      }

      v8 = strcmp(v8, "__InternalIPC-Screen__");
      if (!v8)
      {
        break;
      }
    }

    v15 += 8;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  while (1)
  {
    if ((*(*v12 + 288) ^ 0xCD040ED7D618C260) <= 1)
    {
      v24 = *(*v12 + 296);
      if (v24 == "__InternalIPC-MXI__")
      {
        break;
      }

      v8 = strcmp(v24, "__InternalIPC-MXI__");
      if (!v8)
      {
        break;
      }
    }

    v12 += 8;
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

LABEL_103:
  v696 = v699 + 12544;
  v684 = (v699 + 12552);
  media::Spatial3DImageAnimationEngine::update(v699 + 12552, a4, v9, v10);
  media::MediaScreenAnimationEngine::update(v699 + 96, a4, v117, v118);
  v119 = v694;
  v686 = *(v694 + 25);
  v120 = re::ecs2::EntityComponentCollection::get((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v121 = re::ecs2::EntityComponentCollection::get((v5 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v122 = v5;
  v123 = v121;
  v124 = *(v120 + 25);
  v125 = *(v121 + 132);
  v126 = *(v120 + 26);
  v127 = *(v121 + 133);
  v128 = re::ecs2::EntityComponentCollection::get((v122 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v131 = v128;
  v132 = *(v128 + 134);
  *&buf[16] = 0;
  *&buf[8] = 0;
  *buf = &buf[8];
  if (v132 == 2)
  {
    *v719 = 256;
    v133 = &v719[2];
  }

  else if (v132 == 1)
  {
    v719[0] = 0;
    v133 = &v719[1];
  }

  else
  {
    if (v132)
    {
      if ((*(v128 + 345) & 1) == 0)
      {
LABEL_135:
        v142 = &buf[8];
LABEL_136:
        if (v142 == &buf[8])
        {
          v125 = 0;
        }

        else
        {
          v125 = v124;
        }

        goto LABEL_139;
      }

      goto LABEL_119;
    }

    *v719 = 256;
    v719[2] = 2;
    v133 = &v719[3];
  }

  std::__tree<re::ecs2::ImageViewingMode>::__assign_unique<re::ecs2::ImageViewingMode const*>(buf, v719, v133);
  v134 = *&buf[8];
  if ((*(v131 + 345) & 1) == 0)
  {
    goto LABEL_120;
  }

  if (!*&buf[8])
  {
LABEL_119:
    operator new();
  }

  v135 = *&buf[8];
  while (1)
  {
    while (1)
    {
      v136 = v135;
      v137 = *(v135 + 25);
      if (v137 < 3)
      {
        break;
      }

      v135 = *v136;
      if (!*v136)
      {
        goto LABEL_119;
      }
    }

    if (v137 == 2)
    {
      break;
    }

    v135 = v136[1];
    if (!v135)
    {
      goto LABEL_119;
    }
  }

LABEL_120:
  if (!*&buf[8])
  {
    goto LABEL_135;
  }

  v138 = &buf[8];
  v139 = *&buf[8];
  do
  {
    v140 = v139[25];
    _CF = v140 >= v125;
    v141 = v140 < v125;
    if (_CF)
    {
      v138 = v139;
    }

    v139 = *&v139[8 * v141];
  }

  while (v139);
  if (v138 == &buf[8] || v125 < v138[25])
  {
    v142 = &buf[8];
    do
    {
      v143 = v134[25];
      _CF = v143 >= v124;
      v144 = v143 < v124;
      if (_CF)
      {
        v142 = v134;
      }

      v134 = *&v134[8 * v144];
    }

    while (v134);
    if (v142 != &buf[8] && v124 >= v142[25])
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

LABEL_139:
  if (v125 == v124)
  {
    LOBYTE(v145) = 0;
    v146 = v700;
    goto LABEL_235;
  }

  _ZF = v127 == 2 || v126 == 2;
  v145 = _ZF;
  v148 = 1.0;
  if (v120)
  {
    v149 = *(v120 + 44);
    if (v149 > 0.0)
    {
      LODWORD(v129) = *(v120 + 40);
      v148 = *&v129 / v149;
    }
  }

  if (v123 && (re::ecs2::ImagePresentationComponentHelper::impl::getScreenImageDimensionInViewingMode(v123, v125), LODWORD(v129) = HIDWORD(v128), v150 = *&v128 / *(&v128 + 1), (*&v128 / *(&v128 + 1)) != v148))
  {
    v130.n128_u32[0] = 925353388;
    *&v129 = ((fabsf(v148) + fabsf(v150)) + 1.0) * 0.00001;
    v151 = vabds_f32(v148, v150) >= *&v129;
  }

  else
  {
    v151 = 0;
  }

  v146 = v700;
  if (v125 != 2 && v124 != 2 || ((*(v120 + 29) | v145 | v151) & 1) != 0)
  {
    re::ecs2::ImagePresentationComponentHelper::impl::completeViewingModeTransition(v699, v700, v120, v125);
    goto LABEL_235;
  }

  if ((*v696 & 1) == 0)
  {
    v152 = *(v700 + 344);
    if (v152)
    {
      v153 = *(v700 + 360);
      v154 = 8 * v152;
      v155 = 8 * v152;
      v156 = v153;
      while (1)
      {
        v157 = *v156;
        if ((*(*v156 + 36) ^ 0xEB3B4F6DA23A16B4) <= 1)
        {
          v128 = *(v157 + 37);
          if (v128 == "__InternalIPC-Screen__")
          {
            break;
          }

          v128 = strcmp(v128, "__InternalIPC-Screen__");
          if (!v128)
          {
            break;
          }
        }

        ++v156;
        v155 -= 8;
        if (!v155)
        {
          v157 = 0;
          break;
        }
      }

      v119 = v694;
      while (1)
      {
        v158 = *v153;
        if ((*(*v153 + 36) ^ 0xCD040ED7D618C260) <= 1)
        {
          v128 = *(v158 + 37);
          if (v128 == "__InternalIPC-MXI__")
          {
            break;
          }

          v128 = strcmp(v128, "__InternalIPC-MXI__");
          if (!v128)
          {
            break;
          }
        }

        ++v153;
        v154 -= 8;
        if (!v154)
        {
          v158 = 0;
          break;
        }
      }

      v146 = v700;
    }

    else
    {
      v157 = 0;
      v158 = 0;
    }

    v159 = *(v158 + 43);
    if (v159)
    {
      v160 = *(v158 + 45);
      v161 = 8 * v159;
      while (1)
      {
        v162 = *v160;
        if ((*(*v160 + 36) ^ 0x15C850817C18C722uLL) <= 1)
        {
          v128 = *(v162 + 37);
          if (v128 == "__InternalIPC-MXI-Collider__")
          {
            break;
          }

          v128 = strcmp(v128, "__InternalIPC-MXI-Collider__");
          if (!v128)
          {
            break;
          }
        }

        ++v160;
        v161 -= 8;
        if (!v161)
        {
          v162 = 0;
          break;
        }
      }

      v119 = v694;
      v146 = v700;
    }

    else
    {
      v162 = 0;
    }

    if (v157)
    {
      if (v158)
      {
        if (v162)
        {
          *v696 = 1;
          *(v699 + 12545) = v124;
          *(v699 + 12546) = v125;
          if (v125 == 2)
          {
            media::Spatial3DImageAnimationEngine::addScreenEntityTransitionToMXIEntityAnimation(v684);
            re::ecs2::Entity::setSelfEnabled(v158, 1);
          }

          else
          {
            if (v124 != 2)
            {
LABEL_191:
              v163 = media::Spatial3DImageAnimationEngine::update(v684, 0.0, v129, v130);
              if (v120)
              {
                if ((*(v120 + 27) & 1) == 0)
                {
                  *(v120 + 27) = 1;
                  v163 = *(*(v120 + 16) + 216);
                  if (v163)
                  {
                    re::ecs2::NetworkComponent::markDirty(v163, v120);
                  }
                }
              }

              else
              {
                v659 = *re::imagePresentationLogObjects(v163);
                v163 = os_log_type_enabled(v659, OS_LOG_TYPE_ERROR);
                if (v163)
                {
                  *v719 = 67109120;
                  *&v719[4] = 645;
                  _os_log_error_impl(&dword_1E1C61000, v659, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, statusComponent is nullptr", v719, 8u);
                }
              }

              v164 = *re::imagePresentationLogObjects(v163);
              v128 = os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT);
              if (v128)
              {
                v165 = v146[39];
                *v719 = 16777984;
                v719[4] = v124;
                *&v719[5] = 256;
                v719[7] = v125;
                *&v719[8] = 2048;
                *&v719[10] = v165;
                _os_log_impl(&dword_1E1C61000, v164, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::startViewingModeTransition] current viewing mode: %d --> target viewing mode: %d. [entityID: %llu]", v719, 0x12u);
              }

              goto LABEL_197;
            }

            media::Spatial3DImageAnimationEngine::addMXIEntityTransitionToScreenEntityAnimation(v684);
            v162 = v157;
          }

          re::ecs2::Entity::setSelfEnabled(v162, 1);
          goto LABEL_191;
        }

        v657 = *re::imagePresentationLogObjects(v128);
        v128 = os_log_type_enabled(v657, OS_LOG_TYPE_ERROR);
        if (!v128)
        {
          goto LABEL_197;
        }

        *v719 = 67109120;
        *&v719[4] = 623;
        v658 = "ImagePresentationComponentHelper line: %d, mxiColliderEntity is nullptr";
      }

      else
      {
        v657 = *re::imagePresentationLogObjects(v128);
        v128 = os_log_type_enabled(v657, OS_LOG_TYPE_ERROR);
        if (!v128)
        {
          goto LABEL_197;
        }

        *v719 = 67109120;
        *&v719[4] = 622;
        v658 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
      }
    }

    else
    {
      v657 = *re::imagePresentationLogObjects(v128);
      v128 = os_log_type_enabled(v657, OS_LOG_TYPE_ERROR);
      if (!v128)
      {
        goto LABEL_197;
      }

      *v719 = 67109120;
      *&v719[4] = 621;
      v658 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
    }

    _os_log_error_impl(&dword_1E1C61000, v657, OS_LOG_TYPE_ERROR, v658, v719, 8u);
  }

LABEL_197:
  v166 = v146[43];
  if (v166)
  {
    v167 = v146[45];
    v168 = 8 * v166;
    v169 = 8 * v166;
    v170 = v167;
    while (1)
    {
      v171 = *v170;
      if ((*(*v170 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
      {
        v128 = *(v171 + 296);
        if (v128 == "__InternalIPC-Screen__")
        {
          break;
        }

        v128 = strcmp(v128, "__InternalIPC-Screen__");
        if (!v128)
        {
          break;
        }
      }

      ++v170;
      v169 -= 8;
      if (!v169)
      {
        v171 = 0;
        break;
      }
    }

    v119 = v694;
    while (1)
    {
      v172 = *v167;
      if ((*(*v167 + 288) ^ 0xCD040ED7D618C260) <= 1)
      {
        v128 = v172[37];
        if (v128 == "__InternalIPC-MXI__")
        {
          break;
        }

        v128 = strcmp(v128, "__InternalIPC-MXI__");
        if (!v128)
        {
          break;
        }
      }

      ++v167;
      v168 -= 8;
      if (!v168)
      {
        v172 = 0;
        break;
      }
    }

    v146 = v700;
  }

  else
  {
    v171 = 0;
    v172 = 0;
  }

  v173 = v172[43];
  if (v173)
  {
    v174 = v172[45];
    v175 = 8 * v173;
    while (1)
    {
      if ((*(*v174 + 288) ^ 0x15C850817C18C722uLL) <= 1)
      {
        v128 = *(*v174 + 296);
        if (v128 == "__InternalIPC-MXI-Collider__")
        {
          break;
        }

        v128 = strcmp(v128, "__InternalIPC-MXI-Collider__");
        if (!v128)
        {
          break;
        }
      }

      v174 += 8;
      v175 -= 8;
      if (!v175)
      {
        v176 = 1;
        goto LABEL_221;
      }
    }

    v176 = 0;
LABEL_221:
    v119 = v694;
  }

  else
  {
    v176 = 1;
  }

  if (!v171)
  {
    v655 = *re::imagePresentationLogObjects(v128);
    v128 = os_log_type_enabled(v655, OS_LOG_TYPE_ERROR);
    v177 = v699;
    if (!v128)
    {
      goto LABEL_227;
    }

    *v719 = 67109120;
    *&v719[4] = 659;
    v656 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
LABEL_941:
    _os_log_error_impl(&dword_1E1C61000, v655, OS_LOG_TYPE_ERROR, v656, v719, 8u);
    goto LABEL_227;
  }

  if (!v172)
  {
    v655 = *re::imagePresentationLogObjects(v128);
    v128 = os_log_type_enabled(v655, OS_LOG_TYPE_ERROR);
    v177 = v699;
    if (!v128)
    {
      goto LABEL_227;
    }

    *v719 = 67109120;
    *&v719[4] = 660;
    v656 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
    goto LABEL_941;
  }

  v177 = v699;
  if (v176)
  {
    v655 = *re::imagePresentationLogObjects(v128);
    v128 = os_log_type_enabled(v655, OS_LOG_TYPE_ERROR);
    if (!v128)
    {
      goto LABEL_227;
    }

    *v719 = 67109120;
    *&v719[4] = 661;
    v656 = "ImagePresentationComponentHelper line: %d, mxiColliderEntity is nullptr";
    goto LABEL_941;
  }

  v128 = re::ecs2::EntityComponentCollection::get((v172 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v128)
  {
    *(v128 + 316) = *(v699 + 3140);
    v128 = re::ecs2::Component::markDirty(v128);
  }

LABEL_227:
  v178 = v177 + 12600;
  v179 = 24;
  while (1)
  {
    v180 = *(v684 + v179);
    if (v180)
    {
      break;
    }

LABEL_232:
    v179 += 4112;
    v178 += 4112;
    if (v179 == 24696)
    {
      re::ecs2::ImagePresentationComponentHelper::impl::completeViewingModeTransition(v177, v146, v120, v125);
      goto LABEL_234;
    }
  }

  v181 = 16 * v180;
  v182 = v178;
  while (1)
  {
    v183 = *v182;
    v182 += 16;
    if (!v183)
    {
      break;
    }

    v181 -= 16;
    if (!v181)
    {
      goto LABEL_232;
    }
  }

LABEL_234:
  LOBYTE(v145) = 0;
LABEL_235:
  v184 = v699 + 12544;
  if ((*v696 & 1) == 0)
  {
    v185 = v146[43];
    if (v185)
    {
      v186 = v146[45];
      v187 = 8 * v185;
      v188 = 8 * v185;
      v189 = v186;
      while (1)
      {
        v190 = *v189;
        if ((*(*v189 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
        {
          v128 = *(v190 + 296);
          if (v128 == "__InternalIPC-Screen__")
          {
            break;
          }

          v128 = strcmp(v128, "__InternalIPC-Screen__");
          if (!v128)
          {
            break;
          }
        }

        ++v189;
        v188 -= 8;
        if (!v188)
        {
          goto LABEL_242;
        }
      }

      v119 = v694;
      while (1)
      {
        v239 = *v186;
        if ((*(*v186 + 288) ^ 0xCD040ED7D618C260) <= 1)
        {
          v128 = *(v239 + 296);
          if (v128 == "__InternalIPC-MXI__")
          {
            break;
          }

          v128 = strcmp(v128, "__InternalIPC-MXI__");
          if (!v128)
          {
            break;
          }
        }

        ++v186;
        v187 -= 8;
        if (!v187)
        {
          v191 = *re::imagePresentationLogObjects(v128);
          if (!os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_243;
          }

          *v719 = 67109120;
          *&v719[4] = 1909;
          v240 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
          goto LABEL_624;
        }
      }

      v245 = *(v239 + 344);
      if (v245)
      {
        v246 = *(v239 + 360);
        v247 = 8 * v245;
        while (1)
        {
          v248 = *v246;
          if ((*(*v246 + 288) ^ 0x15C850817C18C722uLL) <= 1)
          {
            v249 = *(v248 + 296);
            if (v249 == "__InternalIPC-MXI-Collider__")
            {
              break;
            }

            v128 = strcmp(v249, "__InternalIPC-MXI-Collider__");
            if (!v128)
            {
              break;
            }
          }

          ++v246;
          v247 -= 8;
          if (!v247)
          {
            goto LABEL_328;
          }
        }

        v470 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v470)
        {
          v471 = v470;
          v472 = re::MediaDefaults::logEnabled(v470);
          if (v472)
          {
            v472 = re::MediaDefaults::logLevel(v472);
            v473 = v472 > 1;
          }

          else
          {
            v473 = 0;
          }

          v593 = *(v471 + 25);
          if (v593 >= 2)
          {
            v184 = v699 + 12544;
            if (v593 == 2)
            {
              if ((*(v190 + 304) & 8) != 0 || (*(v239 + 304) & 8) == 0 || (*(v248 + 304) & 8) == 0)
              {
                re::ecs2::Entity::setSelfEnabled(v190, 0);
                re::ecs2::Entity::setSelfEnabled(v239, 1);
                re::ecs2::Entity::setSelfEnabled(v248, 1);
                if (v473)
                {
                  v595 = *re::imagePresentationLogObjects(v598);
                  if (os_log_type_enabled(v595, OS_LOG_TYPE_DEBUG))
                  {
                    v599 = v146[39];
                    *v719 = 16777728;
                    *&v719[4] = 2;
                    v719[6] = 8;
                    *&v719[7] = v599;
                    v597 = "Change image entity hierarchy state to mxiEntity for viewing mode %hhu. [entityID: %llu]";
                    goto LABEL_827;
                  }
                }
              }
            }

            else if (v473)
            {
              v595 = *re::imagePresentationLogObjects(v472);
              if (os_log_type_enabled(v595, OS_LOG_TYPE_DEBUG))
              {
                v615 = v146[39];
                *v719 = 16777728;
                v719[4] = v593;
                *&v719[5] = 2048;
                *&v719[7] = v615;
                v597 = "Unknown viewing mode %hhu. Skipping image entity hierarchy state update. [entityID: %llu]";
                goto LABEL_827;
              }
            }
          }

          else
          {
            v184 = v699 + 12544;
            if ((*(v190 + 304) & 8) == 0 || (*(v239 + 304) & 8) != 0 || (*(v248 + 304) & 8) != 0)
            {
              re::ecs2::Entity::setSelfEnabled(v190, 1);
              re::ecs2::Entity::setSelfEnabled(v239, 0);
              re::ecs2::Entity::setSelfEnabled(v248, 0);
              if (v473)
              {
                v595 = *re::imagePresentationLogObjects(v594);
                if (os_log_type_enabled(v595, OS_LOG_TYPE_DEBUG))
                {
                  v596 = v146[39];
                  *v719 = 16777728;
                  v719[4] = v593;
                  *&v719[5] = 2048;
                  *&v719[7] = v596;
                  v597 = "Change image entity hierarchy state to screenEntity for viewing mode %hhu. [entityID: %llu]";
LABEL_827:
                  _os_log_debug_impl(&dword_1E1C61000, v595, OS_LOG_TYPE_DEBUG, v597, v719, 0xFu);
                }
              }
            }
          }
        }

        else
        {
          v191 = *re::imagePresentationLogObjects(0);
          v184 = v699 + 12544;
          if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
          {
            *v719 = 67109120;
            *&v719[4] = 1914;
            v240 = "ImagePresentationComponentHelper line: %d, statusComponent is nullptr";
            goto LABEL_624;
          }
        }
      }

      else
      {
LABEL_328:
        v191 = *re::imagePresentationLogObjects(v128);
        v184 = v699 + 12544;
        if (!os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_243;
        }

        *v719 = 67109120;
        *&v719[4] = 1911;
        v240 = "ImagePresentationComponentHelper line: %d, mxiColliderEntity is nullptr";
LABEL_624:
        _os_log_error_impl(&dword_1E1C61000, v191, OS_LOG_TYPE_ERROR, v240, v719, 8u);
      }
    }

    else
    {
LABEL_242:
      v191 = *re::imagePresentationLogObjects(v128);
      v119 = v694;
      if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
      {
        *v719 = 67109120;
        *&v719[4] = 1906;
        v240 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
        goto LABEL_624;
      }
    }
  }

LABEL_243:
  v192 = (v699 + 37248);
  std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(*&buf[8]);
  if (v119)
  {
    v194 = re::ecs2::EntityComponentCollection::get((*&v693[2] + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v195 = *(v119 + 25);
    if (v194)
    {
      v196 = v195 == 1;
    }

    else
    {
      v196 = 0;
    }

    if (!v196)
    {
LABEL_255:
      re::ecs2::ImagePresentationComponentHelper::impl::getScreenImageDimensionInViewingMode(v693, v195);
      v199 = vmvn_s8(vceq_f32(*(v119 + 40), v198));
      if ((vpmax_u32(v199, v199).u32[0] & 0x80000000) != 0)
      {
        *(v119 + 40) = v198;
        v200 = *(*(v119 + 16) + 216);
        if (v200)
        {
          re::ecs2::NetworkComponent::markDirty(v200, v119);
        }
      }

      goto LABEL_258;
    }

    if ((*(v194 + 232) & 1) != 0 || *v184 != 1 || v184[2] != 2)
    {
      v195 = 1;
      goto LABEL_255;
    }

    v197 = *re::imagePresentationLogObjects(v194);
    if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E1C61000, v197, OS_LOG_TYPE_DEBUG, "Skip screen image dimension update when transitioning from a loading SpatialStereo to Spatial3D.", buf, 2u);
    }
  }

  else
  {
    v632 = *re::imagePresentationLogObjects(v193);
    if (os_log_type_enabled(v632, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 761;
      _os_log_error_impl(&dword_1E1C61000, v632, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, statusComponent is nullptr", buf, 8u);
    }
  }

LABEL_258:
  v201 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v201)
  {
    v633 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v633, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_356;
    }

    *buf = 67109120;
    *&buf[4] = 812;
    v634 = "ImagePresentationComponentHelper line: %d, imagePresentationStatusComponent is nullptr";
    goto LABEL_929;
  }

  v202 = v201;
  if (!re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
  {
    v633 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v633, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_356;
    }

    *buf = 67109120;
    *&buf[4] = 815;
    v634 = "ImagePresentationComponentHelper line: %d, imagePresentationComponent is nullptr";
    goto LABEL_929;
  }

  v203 = *(v202 + 25);
  if (v203 != 2 && (*v184 != 1 || v184[2] != 2))
  {
    if (v203 != 1)
    {
      if (*(v202 + 25) || !*(v202 + 26))
      {
        goto LABEL_356;
      }

      *(v202 + 26) = 0;
LABEL_306:
      v237 = *(*(v202 + 16) + 216);
      if (!v237)
      {
        goto LABEL_356;
      }

      v238 = v202;
      goto LABEL_308;
    }

    v223 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v223)
    {
      v224 = *(v223 + 133);
      v225 = *(v223 + 132);
      v226 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v226)
      {
        v202 = v226;
        if (*(v226 + 25) == 1)
        {
          if (v225 == 1)
          {
            v119 = v694;
            if (*(v226 + 48) == 1)
            {
              v227 = (v699 + 160);
              v228 = 10320;
              do
              {
                v229 = *v227;
                if (*v227)
                {
                  v230 = 1;
                }

                else
                {
                  v230 = v228 == 0;
                }

                v228 -= 2064;
                v227 += 258;
              }

              while (!v230);
              if (!v229)
              {
                v226 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                if (v226)
                {
                  v607 = v226;
                  if (*(v226 + 48) == 1)
                  {
                    v608 = *(v226 + 88);
                    if (v608 == 1)
                    {
                      v609 = 2;
                    }

                    else
                    {
                      v609 = 1;
                    }

                    if (*(v226 + 26) != v609)
                    {
                      *(v226 + 26) = v609;
                      v610 = *(*(v226 + 16) + 216);
                      if (v610)
                      {
                        re::ecs2::NetworkComponent::markDirty(v610, v607);
                      }
                    }

                    re::ecs2::SpatialMediaComponentHelper::impl::completeImmersiveTransition(v146, v608);
                    v612 = *re::imagePresentationLogObjects(v611);
                    v226 = os_log_type_enabled(v612, OS_LOG_TYPE_DEFAULT);
                    if (v226)
                    {
                      v613 = v146[39];
                      *buf = 16777728;
                      buf[4] = v609;
                      *&buf[5] = 2048;
                      *&buf[7] = v613;
                      _os_log_impl(&dword_1E1C61000, v612, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::completeAnimatingSpatialImmersiveTransition] target ImageImmersiveViewingMode %u [id=%llu]", buf, 0xFu);
                    }
                  }

                  if (*(v607 + 48) == 1)
                  {
                    *(v607 + 48) = 0;
                  }

                  if (*(v607 + 28))
                  {
                    *(v607 + 28) = 0;
                    v226 = *(*(v607 + 16) + 216);
                    if (v226)
                    {
                      re::ecs2::NetworkComponent::markDirty(v226, v607);
                    }
                  }
                }

                else
                {
                  v670 = *re::imagePresentationLogObjects(0);
                  v226 = os_log_type_enabled(v670, OS_LOG_TYPE_ERROR);
                  if (v226)
                  {
                    *buf = 67109120;
                    *&buf[4] = 2364;
                    _os_log_error_impl(&dword_1E1C61000, v670, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, ipsc is nullptr", buf, 8u);
                  }
                }
              }

              v231 = re::MediaDefaults::logEnabled(v226);
              if (!v231)
              {
                goto LABEL_356;
              }

              v232 = *re::imagePresentationLogObjects(v231);
              if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
              {
                goto LABEL_356;
              }

              v233 = v146[39];
              *buf = 134217984;
              *&buf[4] = v233;
              v234 = "Skipping handleImmersiveModeChangeForSpatialImages as an animated immersive transition is underway [id=%llu]";
              goto LABEL_354;
            }

            v477 = *(v226 + 26);
            if (!*(v226 + 26) && v224 == 1)
            {
              *(v226 + 26) = 1;
              v478 = *(*(v226 + 16) + 216);
              if (v478)
              {
                re::ecs2::NetworkComponent::markDirty(v478, v202);
              }

              v479 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v479 && *(v479 + 25))
              {
                *(v479 + 25) = 0;
                re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v479);
              }

              v480 = re::MediaDefaults::logEnabled(v479);
              if (!v480)
              {
                goto LABEL_356;
              }

              v232 = *re::imagePresentationLogObjects(v480);
              if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
              {
                goto LABEL_356;
              }

              v481 = v146[39];
              *buf = 134217984;
              *&buf[4] = v481;
              v234 = "Setting current ImmersiveViewingMode to portal as this is the first frame presenting spatial content [id=%llu]";
              goto LABEL_354;
            }

            if (v477 == v224)
            {
              v604 = re::MediaDefaults::logEnabled(v226);
              if (v604)
              {
                v605 = *re::imagePresentationLogObjects(v604);
                if (os_log_type_enabled(v605, OS_LOG_TYPE_INFO))
                {
                  v606 = v146[39];
                  *buf = 16777984;
                  buf[4] = v224;
                  *&buf[5] = 256;
                  buf[7] = v224;
                  *&buf[8] = 2048;
                  *&buf[10] = v606;
                  v234 = "Skipping handleImmersiveModeChangeForSpatialImages as the desired immersive viewing mode %d is the current immersive viewing mode %d [id=%llu]";
                  v266 = v605;
                  v267 = 18;
                  goto LABEL_355;
                }
              }

              goto LABEL_356;
            }

            v616 = (v145 | *(v226 + 29)) ^ 1;
            v617 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v617)
            {
              v616 &= *(v617 + 92);
            }

            else
            {
              v671 = *re::imagePresentationLogObjects(0);
              v617 = os_log_type_enabled(v671, OS_LOG_TYPE_ERROR);
              if (v617)
              {
                *buf = 67109120;
                *&buf[4] = 2290;
                _os_log_error_impl(&dword_1E1C61000, v671, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, spatialMediaComponent is nullptr", buf, 8u);
              }

              v119 = v694;
              v184 = v699 + 12544;
              v146 = v700;
            }

            v618 = *re::imagePresentationLogObjects(v617);
            if (os_log_type_enabled(v618, OS_LOG_TYPE_INFO))
            {
              v619 = v146[39];
              *buf = 16778240;
              buf[4] = v477;
              *&buf[5] = 256;
              buf[7] = v224;
              *&buf[8] = 1024;
              *&buf[10] = v616 & 1;
              *&buf[14] = 2048;
              *&buf[16] = v619;
              _os_log_impl(&dword_1E1C61000, v618, OS_LOG_TYPE_INFO, "Triggering spatial immersive transition, current mode %d, desired mode %d, shouldAnimateTransition %d [id=%llu]", buf, 0x18u);
            }

            if (v224 == 2)
            {
              if (v616)
              {
                v620 = v699;
                v621 = v146;
                v622 = 2;
LABEL_843:
                re::ecs2::ImagePresentationComponentHelper::impl::startAnimatingSpatialImmersiveTransition(v620, v621, v622);
                goto LABEL_356;
              }

              if (*(v202 + 26) == 2)
              {
                goto LABEL_356;
              }

              v623 = 2;
            }

            else
            {
              if (v224 != 1)
              {
                goto LABEL_356;
              }

              if (v616)
              {
                v620 = v699;
                v621 = v146;
                v622 = 1;
                goto LABEL_843;
              }

              if (*(v202 + 26) == 1)
              {
                goto LABEL_356;
              }

              v623 = 1;
            }

            *(v202 + 26) = v623;
            goto LABEL_306;
          }

          v256 = re::MediaDefaults::logEnabled(v226);
          v119 = v694;
          if (!v256)
          {
            goto LABEL_356;
          }

          v232 = *re::imagePresentationLogObjects(v256);
          if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
          {
            goto LABEL_356;
          }

          v257 = v146[39];
          *buf = 134217984;
          *&buf[4] = v257;
          v234 = "Skipping handleImmersiveModeChangeForSpatialImages as the desired viewing mode is not spatial stereo [id=%llu]";
        }

        else
        {
          v243 = re::MediaDefaults::logEnabled(v226);
          v119 = v694;
          if (!v243)
          {
            goto LABEL_356;
          }

          v232 = *re::imagePresentationLogObjects(v243);
          if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
          {
            goto LABEL_356;
          }

          v244 = v146[39];
          *buf = 134217984;
          *&buf[4] = v244;
          v234 = "Skipping handleImmersiveModeChangeForSpatialImages as not currently displaying the image in spatial [id=%llu]";
        }

LABEL_354:
        v266 = v232;
        v267 = 12;
LABEL_355:
        _os_log_impl(&dword_1E1C61000, v266, OS_LOG_TYPE_INFO, v234, buf, v267);
        goto LABEL_356;
      }

      v633 = *re::imagePresentationLogObjects(0);
      v119 = v694;
      if (!os_log_type_enabled(v633, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_356;
      }

      *buf = 67109120;
      *&buf[4] = 2234;
      v634 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
    }

    else
    {
      v633 = *re::imagePresentationLogObjects(0);
      v119 = v694;
      if (!os_log_type_enabled(v633, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_356;
      }

      *buf = 67109120;
      *&buf[4] = 2229;
      v634 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
    }

LABEL_929:
    _os_log_error_impl(&dword_1E1C61000, v633, OS_LOG_TYPE_ERROR, v634, buf, 8u);
    goto LABEL_356;
  }

  v204 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v204)
  {
    v633 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v633, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_356;
    }

    *buf = 67109120;
    *&buf[4] = 1471;
    v634 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
    goto LABEL_929;
  }

  v205 = *(v204 + 133);
  v206 = *(v204 + 132);
  v207 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v207)
  {
    v633 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v633, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_356;
    }

    *buf = 67109120;
    *&buf[4] = 1476;
    v634 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
    goto LABEL_929;
  }

  v208 = v207;
  if (*(v207 + 25) != 2)
  {
    v235 = re::MediaDefaults::logEnabled(v207);
    if (!v235)
    {
      goto LABEL_356;
    }

    v232 = *re::imagePresentationLogObjects(v235);
    if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v236 = v146[39];
    *buf = 134217984;
    *&buf[4] = v236;
    v234 = "Skipping handleImmersiveModeChangeForMXI as not currently displaying the image in spatial3D. [entityID: %llu]";
    goto LABEL_354;
  }

  if (v206 != 2)
  {
    v241 = re::MediaDefaults::logEnabled(v207);
    if (!v241)
    {
      goto LABEL_356;
    }

    v232 = *re::imagePresentationLogObjects(v241);
    if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v242 = v146[39];
    *buf = 134217984;
    *&buf[4] = v242;
    v234 = "Skipping handleImmersiveModeChangeForMXI as the desired viewing mode is not spatial3D [entityID: %llu]";
    goto LABEL_354;
  }

  if (!v205)
  {
    v250 = re::MediaDefaults::logEnabled(v207);
    if (!v250)
    {
      goto LABEL_356;
    }

    v232 = *re::imagePresentationLogObjects(v250);
    if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v251 = v146[39];
    *buf = 134217984;
    *&buf[4] = v251;
    v234 = "Skipping handleImmersiveModeChangeForMXI, since None isn't a proper immersive viewing mode for MXI. [entityID: %llu]";
    goto LABEL_354;
  }

  if (v192->i8[0] == 1)
  {
    v209 = 24;
    v210 = 12600;
    while (1)
    {
      v211 = *(v684 + v209);
      if (v211)
      {
        break;
      }

LABEL_272:
      v209 += 4112;
      v210 += 4112;
      if (v209 == 24696)
      {
        v214 = v699 + 37248;
        v215 = v146[43];
        if (v215)
        {
          v216 = v146[45];
          v217 = 8 * v215;
          while (1)
          {
            v218 = *v216;
            if ((*(*v216 + 288) ^ 0xCD040ED7D618C260) <= 1)
            {
              v219 = v218[37];
              if (v219 == "__InternalIPC-MXI__")
              {
                break;
              }

              v207 = strcmp(v219, "__InternalIPC-MXI__");
              if (!v207)
              {
                break;
              }
            }

            v216 += 8;
            v217 -= 8;
            if (!v217)
            {
              goto LABEL_279;
            }
          }

          v221 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v221)
          {
            v624 = v221;
            v192 = (v699 + 37248);
            if (*v214 == 1)
            {
              v625 = *(v699 + 37264);
              if (*(v221 + 26) != v625)
              {
                *(v221 + 26) = v625;
                v626 = *(*(v221 + 16) + 216);
                if (v626)
                {
                  re::ecs2::NetworkComponent::markDirty(v626, v624);
                }
              }

              re::ecs2::ImagePresentationComponentHelper::impl::updateMXITreatmentConfig(v699, v218, v146, v625);
              if (v625 == 2)
              {
                re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(v218, 0);
                v627 = re::ecs2::EntityComponentCollection::get((v218 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                *(v627 + 114) = 1065353216;
              }

              v628 = *re::imagePresentationLogObjects(v627);
              v221 = os_log_type_enabled(v628, OS_LOG_TYPE_DEFAULT);
              if (v221)
              {
                v629 = v146[39];
                *buf = 16777728;
                buf[4] = v625;
                *&buf[5] = 2048;
                *&buf[7] = v629;
                _os_log_impl(&dword_1E1C61000, v628, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::completeAnimatingMXIImmersiveTransition] target ImageImmersiveViewingMode %u [entityID: %llu]", buf, 0xFu);
              }

              if (*v214)
              {
                *v214 = 0;
              }
            }

            if (*(v624 + 28))
            {
              *(v624 + 28) = 0;
              v221 = *(*(v624 + 16) + 216);
              if (v221)
              {
                re::ecs2::NetworkComponent::markDirty(v221, v624);
              }
            }

            goto LABEL_351;
          }

          v220 = *re::imagePresentationLogObjects(0);
          v221 = os_log_type_enabled(v220, OS_LOG_TYPE_ERROR);
          v192 = (v699 + 37248);
          if (!v221)
          {
            goto LABEL_351;
          }

          *buf = 67109120;
          *&buf[4] = 1254;
          v222 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
        }

        else
        {
LABEL_279:
          v220 = *re::imagePresentationLogObjects(v207);
          v221 = os_log_type_enabled(v220, OS_LOG_TYPE_ERROR);
          v192 = (v699 + 37248);
          if (!v221)
          {
            goto LABEL_351;
          }

          *buf = 67109120;
          *&buf[4] = 1251;
          v222 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
        }

        _os_log_error_impl(&dword_1E1C61000, v220, OS_LOG_TYPE_ERROR, v222, buf, 8u);
        goto LABEL_351;
      }
    }

    v212 = 16 * v211;
    v213 = v210;
    while (*(v699 + v213) != 2)
    {
      v213 += 16;
      v212 -= 16;
      if (!v212)
      {
        goto LABEL_272;
      }
    }

    v258 = *(v699 + 37264);
    v259 = v146[43];
    if (v259)
    {
      v260 = v146[45];
      v261 = 8 * v259;
      while (1)
      {
        v262 = *v260;
        if ((*(*v260 + 288) ^ 0xCD040ED7D618C260) <= 1)
        {
          v263 = *(v262 + 296);
          if (v263 == "__InternalIPC-MXI__" || !strcmp(v263, "__InternalIPC-MXI__"))
          {
            break;
          }
        }

        ++v260;
        v261 -= 8;
        if (!v261)
        {
          goto LABEL_349;
        }
      }
    }

    else
    {
LABEL_349:
      v262 = 0;
    }

    re::ecs2::ImagePresentationComponentHelper::impl::updateMXITreatmentConfig(v699, v262, v146, v258);
    v192 = (v699 + 37248);
LABEL_351:
    v264 = re::MediaDefaults::logEnabled(v221);
    if (!v264)
    {
      goto LABEL_356;
    }

    v232 = *re::imagePresentationLogObjects(v264);
    if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v265 = v146[39];
    *buf = 134217984;
    *&buf[4] = v265;
    v234 = "Skipping handleImmersiveModeChangeForMXI as an animated immersive transition is underway. [entityID: %llu]";
    goto LABEL_354;
  }

  v252 = *(v207 + 26);
  if (!*(v207 + 26) && v205 == 1)
  {
    *(v207 + 26) = 1;
    v253 = *(*(v207 + 16) + 216);
    if (v253)
    {
      re::ecs2::NetworkComponent::markDirty(v253, v208);
    }

    v254 = re::MediaDefaults::logEnabled(v253);
    if (!v254)
    {
      goto LABEL_356;
    }

    v232 = *re::imagePresentationLogObjects(v254);
    if (!os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v255 = v146[39];
    *buf = 134217984;
    *&buf[4] = v255;
    v234 = "Setting current ImmersiveViewingMode to portal as this is the first frame presenting MXI content. [entityID: %llu]";
    goto LABEL_354;
  }

  if (v252 != v205)
  {
    v600 = (v145 | *(v207 + 29)) ^ 1;
    v601 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v601)
    {
      v600 &= *(v601 + 92);
    }

    v602 = *re::imagePresentationLogObjects(v601);
    if (os_log_type_enabled(v602, OS_LOG_TYPE_INFO))
    {
      v603 = v146[39];
      *buf = 16778240;
      buf[4] = v252;
      *&buf[5] = 256;
      buf[7] = v205;
      *&buf[8] = 1024;
      *&buf[10] = v600 & 1;
      *&buf[14] = 2048;
      *&buf[16] = v603;
      _os_log_impl(&dword_1E1C61000, v602, OS_LOG_TYPE_INFO, "Triggering MXI immersive transition, current mode %d, desired mode %d, shouldAnimateTransition %d. [entityID: %llu]", buf, 0x18u);
    }

    if (v600)
    {
      re::ecs2::ImagePresentationComponentHelper::impl::startAnimatingMXIImmersiveTransition(v699, v146, v205);
      goto LABEL_356;
    }

    if (*(v208 + 26) == v205)
    {
      goto LABEL_356;
    }

    *(v208 + 26) = v205;
    v237 = *(*(v208 + 16) + 216);
    if (!v237)
    {
      goto LABEL_356;
    }

    v238 = v208;
LABEL_308:
    re::ecs2::NetworkComponent::markDirty(v237, v238);
    goto LABEL_356;
  }

  v474 = re::MediaDefaults::logEnabled(v207);
  if (v474)
  {
    v475 = *re::imagePresentationLogObjects(v474);
    if (os_log_type_enabled(v475, OS_LOG_TYPE_INFO))
    {
      v476 = v146[39];
      *buf = 16777728;
      buf[4] = v205;
      *&buf[5] = 2048;
      *&buf[7] = v476;
      v234 = "Skipping handleImmersiveModeChangeForMXI as the desired immersive viewing mode is the current immersive viewing mode (%d) . [entityID: %llu]";
      v266 = v475;
      v267 = 15;
      goto LABEL_355;
    }
  }

LABEL_356:
  v268 = re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if ((*(v268 + 345) & 1) == 0)
  {
    v269 = v268;
    if (*(re::ecs2::EntityComponentCollection::get((v146 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 25) != 2 && (*v184 != 1 || v184[2] != 2) && re::ecs2::ImagePresentationComponentHelper::impl::hasMXIResources(v146, v270))
    {
      v271 = *(v269 + 160);
      if (v271)
      {

        *(v269 + 160) = 0;
      }

      *(v269 + 168) = 0;
      v272 = *(v269 + 184);
      if (v272)
      {

        *(v269 + 184) = 0;
      }

      *(v269 + 192) = 0;
      re::DynamicArray<re::AssetHandle>::clear((v269 + 208));
      v273 = *(v269 + 248);
      if (v273)
      {

        *(v269 + 248) = 0;
      }

      *(v269 + 256) = 0;
      v274 = *(v269 + 272);
      if (v274)
      {

        *(v269 + 272) = 0;
      }

      *(v269 + 280) = 0;
      *(v269 + 296) = 0;
      *(v269 + 304) = 0;
      *(v269 + 312) = 0x80000000040;
      *(v269 + 320) = 2048;
      *(v269 + 324) = 1;
      *(v269 + 345) = 0;
    }
  }

  if (v686 != 2 && *(v119 + 25) != 2 && (*v184 != 1 || v184[2] != 2))
  {
    goto LABEL_465;
  }

  for (i = *(v700 + 360); ; i += 8)
  {
    v276 = *i;
    if ((*(*i + 288) ^ 0xCD040ED7D618C260) <= 1)
    {
      v277 = v276[37];
      if (v277 == "__InternalIPC-MXI__")
      {
        break;
      }

      v277 = strcmp(v277, "__InternalIPC-MXI__");
      if (!v277)
      {
        break;
      }
    }
  }

  v278 = v276[43];
  if (!v278)
  {
LABEL_384:
    v283 = *re::imagePresentationLogObjects(v277);
    v184 = v699 + 12544;
    if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 2817;
      v284 = "ImagePresentationComponentHelper line: %d, mxiColliderEntity is nullptr";
      goto LABEL_386;
    }

    goto LABEL_465;
  }

  v279 = v192;
  v280 = v276[45];
  v281 = 8 * v278;
  do
  {
    v282 = *v280;
    if ((*(*v280 + 288) ^ 0x15C850817C18C722uLL) <= 1)
    {
      v277 = v282[37];
      if (v277 == "__InternalIPC-MXI-Collider__" || (v277 = strcmp(v277, "__InternalIPC-MXI-Collider__"), !v277))
      {
        if (!v276)
        {
          goto LABEL_886;
        }

        if (!v119)
        {
          v283 = *re::imagePresentationLogObjects(v277);
          v184 = v699 + 12544;
          if (!os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 67109120;
          *&buf[4] = 2820;
          v284 = "ImagePresentationComponentHelper line: %d, statusComponent is nullptr";
          goto LABEL_386;
        }

        v285 = *(v692[2] + 17);
        v286 = *v692;
        v287 = re::ecs2::EntityComponentCollection::get((v276 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!v287)
        {
          v283 = *re::imagePresentationLogObjects(0);
          v184 = v699 + 12544;
          if (!os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 67109120;
          *&buf[4] = 2823;
          v284 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
          goto LABEL_386;
        }

        v289 = v287;
        *(v287 + 108) = v693[41].i32[0];
        re::ecs2::ImagePresentationComponentHelper::impl::updateMXIComponentResources(v693, v287, v285, v286, v288);
        v290 = re::ecs2::EntityComponentCollection::get((v700 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v292 = v290;
        v293.n128_u64[0] = *(v289 + 132);
        v294 = *(v699 + 1);
        if (v293.n128_f32[0] != *v699 && vabds_f32(v293.n128_f32[0], *v699) >= (((fabsf(v293.n128_f32[0]) + fabsf(*v699)) + 1.0) * 0.00001) || v293.n128_f32[1] != v294 && vabds_f32(v293.n128_f32[1], v294) >= (((fabsf(v293.n128_f32[1]) + fabsf(v294)) + 1.0) * 0.00001))
        {
          v682 = 10.0 / *(v699 + 20);
          v687 = v293;
          re::ecs2::buildCollisionShapeAssetHandle(v286, v293, v293.n128_f32[1], v682);
          v295 = re::ecs2::EntityComponentCollection::get((v282 + 6), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          re::AssetHandle::operator=((v295 + 4), buf);
          re::ecs2::Component::markDirty(v295);
          v296 = re::ecs2::EntityComponentCollection::get((v282 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v297 = v687;
          v297.f32[2] = v682;
          *v719 = v297;
          re::ecs2::UISortingComponent::setExtents(v296, v719);
          if (v292)
          {
            v298 = *(v292 + 20);
            if (*(v296 + 80) != v298)
            {
              *(v296 + 80) = v298;
            }

            v299 = *(v292 + 21);
          }

          else
          {
            if (*(v296 + 80) != -1)
            {
              *(v296 + 80) = -1;
            }

            v299 = 2;
          }

          if (*(v296 + 84) != v299)
          {
            *(v296 + 84) = v299;
          }

          re::ecs2::Component::markDirty(v296);
          *v699 = v687.i64[0];
          re::AssetHandle::~AssetHandle(buf);
        }

        v300 = *(v289 + 35);
        v301 = *(v699 + 2) - v300;
        if (v301 < 0.0)
        {
          v301 = -v301;
        }

        if (v301 > 0.001)
        {
          v302 = v282[32];
          re::ecs2::TransformComponent::setLocalPosition(v302, 0, COERCE_UNSIGNED_INT(-v300), 0);
          v290 = re::ecs2::Component::markDirty(v302);
          *(v699 + 2) = *(v289 + 35);
        }

        if (*(v119 + 28) == 1 && v279->i8[0] == 1)
        {
          v303 = v279[2].i8[0];
          v304 = *(v699 + 2330);
          v305 = *(v699 + 2331);
          v306 = v279[11].f32[0];
          v307 = *(v699 + 2334);
          v308 = *(v699 + 2335);
          v309 = v279[19].f32[0];
          v293.n128_u32[0] = *(v699 + 3143);
          *v291.i32 = 1.0 - v293.n128_f32[0];
          v688 = vmlaq_n_f32(vmulq_n_f32(*(v699 + 2336), v293.n128_f32[0]), *(v699 + 2332), 1.0 - v293.n128_f32[0]);
          *v725 = v688;
          *buf = vmlaq_n_f32(vmulq_n_f32(v307, v293.n128_f32[0]), v304, 1.0 - v293.n128_f32[0]);
          *&buf[16] = vmlaq_n_f32(vmulq_n_f32(v308, v293.n128_f32[0]), v305, 1.0 - v293.n128_f32[0]);
          *&v725[16] = vmla_f32(vmul_f32(v279[18], *&vdupq_lane_s32(v293.n128_u64[0], 0)), *&vdupq_lane_s32(v291, 0), v279[10]);
          v310 = 1.0;
          v311 = v700;
          v312 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
          if (v293.n128_f32[0] < 1.0)
          {
            v310 = 1.0 - exp2f(v293.n128_f32[0] * -10.0);
          }

          *&v725[24] = (v309 * v310) + (v306 * (1.0 - v310));
          re::ecs2::ImagePresentationComponentHelper::impl::applyLowLevelMXILayoutDescriptionToMXIEntity(v276, buf);
          v314 = re::MediaDefaults::logEnabled(v313);
          if (v314)
          {
            v315 = *re::imagePresentationLogObjects(v314);
            v314 = os_log_type_enabled(v315, OS_LOG_TYPE_DEBUG);
            if (v314)
            {
              v316 = v315;
              v317 = v276[4];
              if ((*(v317 + 304) & 0x80) != 0)
              {
                v317 = 0;
              }

              v318 = *(v317 + 312);
              *v719 = 16778752;
              v719[4] = v303;
              *&v719[5] = 2048;
              *&v719[7] = v688.f32[0];
              *&v719[15] = 2048;
              *&v719[17] = v688.f32[1];
              *&v719[25] = 2048;
              *&v719[27] = v688.f32[2];
              *&v719[35] = 2048;
              *&v719[37] = v688.f32[3];
              *&v719[45] = 2048;
              *&v719[47] = v318;
              _os_log_debug_impl(&dword_1E1C61000, v316, OS_LOG_TYPE_DEBUG, "[ImagePresentationComponentHelper::updateAnimatingMXIImmersiveTransition] target ImageImmersiveViewingMode %d, proxyWidth: %f, proxyHeight: %f, proxyDistance: %f, proxyCornerRadius: %f [entityID: %llu]", v719, 0x37u);
            }
          }

          goto LABEL_430;
        }

        if ((*(v276[4] + 304) & 0x80) != 0)
        {
          v319 = 0;
        }

        else
        {
          v319 = v276[4];
        }

        v320 = *(v119 + 26);
        LOBYTE(v714[0]) = *(v119 + 26);
        v321 = v319[43];
        v312 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (v321)
        {
          v322 = v319[45];
          v323 = 8 * v321;
          while (1)
          {
            v324 = *v322;
            if ((*(*v322 + 288) ^ 0xCD040ED7D618C260) <= 1)
            {
              v325 = v324[37];
              if (v325 == "__InternalIPC-MXI__")
              {
                break;
              }

              v290 = strcmp(v325, "__InternalIPC-MXI__");
              if (!v290)
              {
                break;
              }
            }

            v322 += 8;
            v323 -= 8;
            if (!v323)
            {
              goto LABEL_429;
            }
          }

          if (re::ecs2::EntityComponentCollection::get((v324 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
          {
            v338 = re::ecs2::EntityComponentCollection::get((v319 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            v339 = v699;
            if (v338)
            {
              v340 = v338;
              v341 = re::MediaDefaults::logEnabled(v338);
              if (v341 && (v660 = re::MediaDefaults::logLevel(v341), v660 > 1))
              {
                v661 = qword_1EE1A8520;
                v662 = re::MediaDefaults::logSubsampleRate(v660);
                ++qword_1EE1A8520;
                v339 = v699;
                if (!(v661 % v662))
                {
                  hasMXIResources = re::ecs2::ImagePresentationComponentHelper::impl::hasMXIResources(v319, v663);
                  if (hasMXIResources)
                  {
                    v665 = *re::imagePresentationLogObjects(hasMXIResources);
                    if (os_log_type_enabled(v665, OS_LOG_TYPE_DEFAULT))
                    {
                      v666 = v340[75];
                      v667 = v340[74];
                      *buf = 134218240;
                      *&buf[4] = v666;
                      *&buf[12] = 2048;
                      *&buf[14] = v667;
                      _os_log_impl(&dword_1E1C61000, v665, OS_LOG_TYPE_DEFAULT, "[MXI] Has MXI Active Resources: VFoV & AR: %f %f", buf, 0x16u);
                    }
                  }

                  v339 = v699;
                  re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(buf, v699, v319, v340, v714);
                  v311 = v700;
                  v312 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
                  if ((buf[0] & 1) == 0)
                  {
                    v669 = *re::imagePresentationLogObjects(v668);
                    v314 = os_log_type_enabled(v669, OS_LOG_TYPE_DEFAULT);
                    if (v314)
                    {
                      *v719 = 16777472;
                      v719[4] = v320;
                      _os_log_impl(&dword_1E1C61000, v669, OS_LOG_TYPE_DEFAULT, "[MXI] failed to get layout description for immersive viewing mode %d, skipping update", v719, 5u);
                    }

                    goto LABEL_430;
                  }

LABEL_445:
                  re::ecs2::ImagePresentationComponentHelper::impl::applyLowLevelMXILayoutDescriptionToMXIEntity(v324, &buf[16]);
                  re::ecs2::ImagePresentationComponentHelper::impl::updateMXITreatmentConfig(v339, v324, v319, v320);
                  v342 = re::ecs2::EntityComponentCollection::get((v319 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                  if (*(v342 + 26) != v320)
                  {
                    v343 = v342;
                    *(v342 + 26) = v320;
                    v344 = *(*(v342 + 16) + 216);
                    if (v344)
                    {
                      re::ecs2::NetworkComponent::markDirty(v344, v343);
                    }
                  }

                  re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(v324, (v320 != 2));
LABEL_430:
                  v327 = *(v311 + 256);
                  if (v327)
                  {
                    v328 = re::ecs2::EntityComponentCollection::get((v311 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                    v119 = v694;
                    if (v328)
                    {
                      v329 = v328;
                      v330 = re::ecs2::EntityComponentCollection::get((v311 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                      if (v330)
                      {
                        v331 = v276[32];
                        if (v331)
                        {
                          v332 = v330;
                          v333 = re::ecs2::EntityComponentCollection::get((v276 + 6), v312[83]);
                          if (v333)
                          {
                            v334 = v333;
                            v335 = v327[9];
                            __asm { FMOV            V2.4S, #1.0 }

                            _Q2.f32[2] = v335 / v327[10];
                            v184 = v699 + 12544;
                            v689 = _Q2;
                            if (*(v329 + 148))
                            {
                              *(v333 + 152) = 0;
                              v311 = v700;
                            }

                            else
                            {
                              v683 = v335 / v327[8];
                              *(v333 + 132) = *(v333 + 136) / v683;
                              v337 = re::MediaDefaults::resizeMeshInVertexShaderEnabled(v333) && (*(v332 + 28) & 1) == 0 && *(v332 + 26) != 2;
                              v311 = v700;
                              v345 = v689;
                              v345.f32[0] = v683;
                              v689 = v345;
                              *(v334 + 152) = v337;
                            }

                            re::ecs2::Component::markDirty(v334);
                            v346 = *(v699 + 12545);
                            if (v346 == 2)
                            {
                              v347 = *(v699 + 12546) != 1;
                            }

                            else
                            {
                              if (v346 != 1 || *(v699 + 12546) != 2)
                              {
                                goto LABEL_459;
                              }

                              v347 = 0;
                            }

                            if (*v696 == 1 && !v347)
                            {
                              v348 = 3141062592;
LABEL_460:
                              re::ecs2::TransformComponent::setLocalPosition(v331, 0, v348, 0);
                              re::ecs2::TransformComponent::setLocalScale(v331, v689.i64[0], v689.i64[1], 0);
                              re::ecs2::Component::markDirty(v331);
LABEL_461:
                              v349 = re::ecs2::EntityComponentCollection::get((v311 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                              if (v349)
                              {
                                v350 = (v349 + 8);
                              }

                              else
                              {
                                v350 = 0;
                              }

                              objc_initWeak(location, v350);
                              re::ArcWeakPtr<re::ecs2::UISortingComponent>::operator=(v289 + 98, location);
                              objc_destroyWeak(location);
                              goto LABEL_465;
                            }

LABEL_459:
                            v348 = 0;
                            goto LABEL_460;
                          }

                          v649 = *re::imagePresentationLogObjects(0);
                          v311 = v700;
                          v184 = v699 + 12544;
                          if (!os_log_type_enabled(v649, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_461;
                          }

                          *buf = 67109120;
                          *&buf[4] = 1634;
                          v650 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
                        }

                        else
                        {
                          v649 = *re::imagePresentationLogObjects(v330);
                          v311 = v700;
                          v184 = v699 + 12544;
                          if (!os_log_type_enabled(v649, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_461;
                          }

                          *buf = 67109120;
                          *&buf[4] = 1632;
                          v650 = "ImagePresentationComponentHelper line: %d, mxiTransform is nullptr";
                        }
                      }

                      else
                      {
                        v649 = *re::imagePresentationLogObjects(0);
                        v311 = v700;
                        v184 = v699 + 12544;
                        if (!os_log_type_enabled(v649, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_461;
                        }

                        *buf = 67109120;
                        *&buf[4] = 1630;
                        v650 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
                      }
                    }

                    else
                    {
                      v649 = *re::imagePresentationLogObjects(0);
                      v184 = v699 + 12544;
                      if (!os_log_type_enabled(v649, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_461;
                      }

                      *buf = 67109120;
                      *&buf[4] = 1628;
                      v650 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
                    }
                  }

                  else
                  {
                    v649 = *re::imagePresentationLogObjects(v314);
                    v119 = v694;
                    v184 = v699 + 12544;
                    if (!os_log_type_enabled(v649, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_461;
                    }

                    *buf = 67109120;
                    *&buf[4] = 1626;
                    v650 = "ImagePresentationComponentHelper line: %d, ipcTransform is nullptr";
                  }

                  _os_log_error_impl(&dword_1E1C61000, v649, OS_LOG_TYPE_ERROR, v650, buf, 8u);
                  goto LABEL_461;
                }
              }

              else
              {
                ++qword_1EE1A8520;
              }

              re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(buf, v339, v319, v340, v714);
              v311 = v700;
              if ((buf[0] & 1) == 0)
              {
                goto LABEL_430;
              }

              goto LABEL_445;
            }

            v326 = *re::imagePresentationLogObjects(0);
            v314 = os_log_type_enabled(v326, OS_LOG_TYPE_ERROR);
            v311 = v700;
            if (!v314)
            {
              goto LABEL_430;
            }

            *buf = 67109120;
            *&buf[4] = 1111;
            v614 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
          }

          else
          {
            v326 = *re::imagePresentationLogObjects(0);
            v314 = os_log_type_enabled(v326, OS_LOG_TYPE_ERROR);
            v311 = v700;
            if (!v314)
            {
              goto LABEL_430;
            }

            *buf = 67109120;
            *&buf[4] = 1108;
            v614 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
          }
        }

        else
        {
LABEL_429:
          v326 = *re::imagePresentationLogObjects(v290);
          v314 = os_log_type_enabled(v326, OS_LOG_TYPE_ERROR);
          v311 = v700;
          if (!v314)
          {
            goto LABEL_430;
          }

          *buf = 67109120;
          *&buf[4] = 1106;
          v614 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
        }

        _os_log_error_impl(&dword_1E1C61000, v326, OS_LOG_TYPE_ERROR, v614, buf, 8u);
        goto LABEL_430;
      }
    }

    v280 += 8;
    v281 -= 8;
  }

  while (v281);
  if (v276)
  {
    goto LABEL_384;
  }

LABEL_886:
  v283 = *re::imagePresentationLogObjects(v277);
  v184 = v699 + 12544;
  if (!os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_465;
  }

  *buf = 67109120;
  *&buf[4] = 2816;
  v284 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
LABEL_386:
  _os_log_error_impl(&dword_1E1C61000, v283, OS_LOG_TYPE_ERROR, v284, buf, 8u);
LABEL_465:
  v351 = v692;
  v352 = *v692;
  v353 = re::ecs2::EntityComponentCollection::get((v700 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v353)
  {
    v359 = *re::imagePresentationLogObjects(0);
    v360 = os_log_type_enabled(v359, OS_LOG_TYPE_ERROR);
    v361 = v700;
    v362 = v693;
    if (!v360)
    {
      goto LABEL_473;
    }

    *buf = 67109120;
    *&buf[4] = 1966;
    v460 = "ImagePresentationComponentHelper line: %d, imagePresentationComponent is nullptr";
LABEL_596:
    _os_log_error_impl(&dword_1E1C61000, v359, OS_LOG_TYPE_ERROR, v460, buf, 8u);
    goto LABEL_473;
  }

  v354 = *(v700 + 344);
  if (!v354)
  {
LABEL_472:
    v359 = *re::imagePresentationLogObjects(v353);
    v360 = os_log_type_enabled(v359, OS_LOG_TYPE_ERROR);
    v361 = v700;
    v184 = v699 + 12544;
    v362 = v693;
    if (!v360)
    {
      goto LABEL_473;
    }

    *buf = 67109120;
    *&buf[4] = 1969;
    v460 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
    goto LABEL_596;
  }

  v355 = *(v700 + 360);
  v356 = 8 * v354;
  while (1)
  {
    v357 = *v355;
    if ((*(*v355 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
    {
      v358 = v357[37];
      if (v358 == "__InternalIPC-Screen__")
      {
        break;
      }

      v353 = strcmp(v358, "__InternalIPC-Screen__");
      if (!v353)
      {
        break;
      }
    }

    v355 += 8;
    v356 -= 8;
    if (!v356)
    {
      goto LABEL_472;
    }
  }

  re::ecs2::ImagePresentationComponentHelper::impl::getDesiredScreenEntityConfiguration(buf, v699, v700);
  v371 = *(v700 + 344);
  if (v371)
  {
    v372 = *(v700 + 360);
    v373 = 8 * v371;
    while (1)
    {
      v374 = *v372;
      if ((*(*v372 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
      {
        v375 = *(v374 + 296);
        if (v375 == "__InternalIPC-Screen__")
        {
          break;
        }

        v370 = strcmp(v375, "__InternalIPC-Screen__");
        if (!v370)
        {
          break;
        }
      }

      ++v372;
      v373 -= 8;
      if (!v373)
      {
        goto LABEL_490;
      }
    }

    v400 = re::ecs2::EntityComponentCollection::get((v374 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v400)
    {
      v377 = *(v400 + 120);
      v376 = *(v400 + 128);
      v378 = *(v400 + 144);
      goto LABEL_517;
    }

    v376 = 0uLL;
    v377 = 0.0;
    if ((atomic_exchange(byte_1EE1A847C, 1u) & 1) == 0)
    {
      v397 = *re::imagePresentationLogObjects(0);
      if (os_log_type_enabled(v397, OS_LOG_TYPE_DEFAULT))
      {
        v461 = *(v700 + 312);
        *v719 = 134217984;
        *&v719[4] = v461;
        v399 = "[getCurrentScreenEntityConfiguration] screen entity has no UILayerGeometryComponent [id=%llu]";
LABEL_513:
        _os_log_impl(&dword_1E1C61000, v397, OS_LOG_TYPE_DEFAULT, v399, v719, 0xCu);
      }

      goto LABEL_514;
    }

LABEL_491:
    v378 = 0;
  }

  else
  {
LABEL_490:
    v376 = 0uLL;
    v377 = 0.0;
    if (atomic_exchange(&unk_1EE1A847B, 1u))
    {
      goto LABEL_491;
    }

    v397 = *re::imagePresentationLogObjects(v370);
    if (os_log_type_enabled(v397, OS_LOG_TYPE_DEFAULT))
    {
      v398 = *(v700 + 312);
      *v719 = 134217984;
      *&v719[4] = v398;
      v399 = "[getCurrentScreenGeometryConfiguration] entity has no screen entity [id=%llu]";
      goto LABEL_513;
    }

LABEL_514:
    v378 = 0;
    v376 = 0uLL;
  }

LABEL_517:
  v690 = *&v725[24];
  if ((vminv_u16(vmovn_s32(vceqq_f32(*v725, vzip2q_s32(vzip1q_s32(v376, vextq_s8(v376, v376, 0xCuLL)), v376)))) & 1) == 0)
  {
    goto LABEL_533;
  }

  v401 = *&v725[16] != 0.0 || *&v725[24] != v377;
  v402 = !v401 && *&v726 == 1.0;
  if (!v402 || v725[20] != 0)
  {
    goto LABEL_533;
  }

  if (v378 != v725[21])
  {
    goto LABEL_533;
  }

  if (v725[28])
  {
    goto LABEL_533;
  }

  v404 = vceqz_f32(*(&v726 + 8));
  if ((vpmin_u32(v404, v404).u32[0] & 0x80000000) == 0)
  {
    goto LABEL_533;
  }

  __asm { FMOV            V1.2S, #1.0 }

  v406 = vceq_f32(v727, _D1);
  if ((vpmin_u32(v406, v406).u32[0] & 0x80000000) == 0)
  {
LABEL_533:
    *v719 = *v725;
    *&v719[16] = *&v725[16];
    *&v719[32] = v726;
    *&v719[48] = v727;
    re::ecs2::createPlane(v357, v719);
    v407 = v357[24];
    if (v407)
    {
      re::ecs2::Component::markDirty(v407);
      v408 = re::ecs2::EntityComponentCollection::get((v357 + 6), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v408)
      {
        v410 = v408;
        v409.n128_u32[0] = *v719;
        re::ecs2::buildCollisionShapeAssetHandle(v352, v409, *&v719[4], *&v719[24]);
        re::AssetHandle::operator=((v410 + 4), location);
        re::ecs2::Component::markDirty(v410);
        re::AssetHandle::~AssetHandle(location);
      }

      else
      {
        v411 = *re::imagePresentationLogObjects(0);
        if (os_log_type_enabled(v411, OS_LOG_TYPE_ERROR))
        {
          *location = 0;
          _os_log_error_impl(&dword_1E1C61000, v411, OS_LOG_TYPE_ERROR, "[ImagePresentationComponentHelper] Can't update colliderComponent as it is nil for screenEntity.", location, 2u);
        }
      }

      v412 = re::ecs2::EntityComponentCollection::get((v357 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v412)
      {
        v413 = v412;
        v414 = *v719;
        DWORD2(v414) = *&v719[24];
        *location = v414;
        re::ecs2::UISortingComponent::setExtents(v412, location);
        v415 = re::ecs2::Component::markDirty(v413);
      }

      else
      {
        v416 = *re::imagePresentationLogObjects(0);
        v415 = os_log_type_enabled(v416, OS_LOG_TYPE_ERROR);
        if (v415)
        {
          *location = 0;
          _os_log_error_impl(&dword_1E1C61000, v416, OS_LOG_TYPE_ERROR, "[ImagePresentationComponentHelper] Can't update uiSortingComponent as it is nil for screenEntity.", location, 2u);
        }
      }

      v417 = re::MediaDefaults::logEnabled(v415);
      if (v417)
      {
        v641 = *re::imagePresentationLogObjects(v417);
        if (os_log_type_enabled(v641, OS_LOG_TYPE_DEFAULT))
        {
          v642 = *v719;
          v643 = *&v719[4];
          v644 = *&v719[24];
          v645 = *&v719[12];
          v646 = v641;
          v647 = v357[4];
          if ((*(v647 + 304) & 0x80) != 0)
          {
            v647 = 0;
          }

          v648 = *(v647 + 312);
          *location = 134219008;
          *&location[4] = v642;
          *&location[12] = 2048;
          *&location[14] = v643;
          v721 = 2048;
          v722 = v644;
          *v723 = 2048;
          *&v723[2] = v645;
          *&v723[10] = 2048;
          *&v723[12] = v648;
          _os_log_impl(&dword_1E1C61000, v646, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper] Re-generated the screen entity mesh. Updated width: %f, height: %f, bevelFrontDepthInMeters: %f, corner radius: %f. [entityID = %llu].", location, 0x34u);
        }
      }
    }

    else
    {
      v640 = *re::imagePresentationLogObjects(0);
      if (os_log_type_enabled(v640, OS_LOG_TYPE_ERROR))
      {
        *location = 67109120;
        *&location[4] = 2917;
        _os_log_error_impl(&dword_1E1C61000, v640, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, meshComponent is nullptr", location, 8u);
      }
    }
  }

  v418 = v357[32];
  if (v418)
  {
    v419 = vmvnq_s8(vceqq_f32(v418[4], *buf));
    v419.i32[3] = v419.i32[2];
    v420 = vmaxvq_u32(v419);
    if ((v420 & 0x80000000) != 0)
    {
      re::ecs2::TransformComponent::setLocalPosition(v357[32], *buf, *&buf[8], 0);
    }

    v421 = vmvnq_s8(vceqq_f32(v418[2], *&buf[16]));
    v421.i32[3] = v421.i32[2];
    if ((vmaxvq_u32(v421) & 0x80000000) != 0)
    {
      re::ecs2::TransformComponent::setLocalScale(v418, *&buf[16], *&buf[24], 0);
      goto LABEL_550;
    }

    if ((v420 & 0x80000000) != 0)
    {
LABEL_550:
      re::ecs2::Component::markDirty(v418);
    }
  }

  v422 = v357[21];
  if (v422)
  {
    v423 = v728;
    if (*(v422 + 28) != *&v728)
    {
      re::ecs2::Component::willSet(v357[21]);
      *(v422 + 28) = v423;
      re::ecs2::Component::didSet(v422);
      re::ecs2::NetworkComponent::markComponentDirty(v422, v424, v425, v426, v427);
      re::ecs2::Component::markDirty(v422);
    }
  }

  v428 = *v725;
  v428.i32[2] = v690;
  v691 = v428;
  *v719 = v428;
  v429 = re::ecs2::EntityComponentCollection::get((v700 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v429)
  {
    v431 = *(v429 + 80);
    v430 = *(v429 + 84);
    v432 = re::ecs2::EntityComponentCollection::get((v700 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v432)
    {
      if (*(v432 + 25) == 2 || *v696 == 1 && *(v699 + 12546) == 2)
      {
        ++v430;
      }
    }

    else
    {
      v653 = *re::imagePresentationLogObjects(0);
      if (os_log_type_enabled(v653, OS_LOG_TYPE_ERROR))
      {
        *location = 67109120;
        *&location[4] = 2041;
        _os_log_error_impl(&dword_1E1C61000, v653, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, imagePresentationStatusComponent is nullptr", location, 8u);
      }

      v351 = v692;
    }
  }

  else
  {
    v431 = -1;
    v430 = 2;
  }

  v433 = re::ecs2::EntityComponentCollection::getOrAdd((v357 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v434 = v433;
  v435 = *(v433 + 48);
  v436 = *(v433 + 64);
  v437 = vcgtq_f32(v435, v436);
  v437.i32[3] = v437.i32[2];
  if ((vmaxvq_u32(v437) & 0x80000000) != 0)
  {
    v439 = *(v433 + 32);
  }

  else
  {
    v438 = vsubq_f32(v436, v435);
    v438.i32[3] = 0;
    v439 = vmaxnmq_f32(v438, 0);
  }

  v440 = vmvnq_s8(vceqq_f32(v691, v439));
  v440.i32[3] = v440.i32[2];
  if ((vmaxvq_u32(v440) & 0x80000000) != 0 || *(v433 + 80) != v431 || *(v433 + 84) != v430)
  {
    re::ecs2::UISortingComponent::setExtents(v433, v719);
    if (*(v434 + 80) != v431)
    {
      *(v434 + 80) = v431;
    }

    if (*(v434 + 84) != v430)
    {
      *(v434 + 84) = v430;
    }

    re::ecs2::Component::markDirty(v434);
  }

  v361 = v700;
  v441 = re::ecs2::EntityComponentCollection::get((v700 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v441)
  {
    v448 = *re::imagePresentationLogObjects(0);
    v119 = v694;
    v184 = v699 + 12544;
    if (!os_log_type_enabled(v448, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_592;
    }

    *v719 = 67109120;
    *&v719[4] = 1876;
    v449 = "ImagePresentationComponentHelper line: %d, imagePresentationComponent is nullptr";
LABEL_581:
    _os_log_error_impl(&dword_1E1C61000, v448, OS_LOG_TYPE_ERROR, v449, v719, 8u);
    goto LABEL_592;
  }

  v442 = *(v700 + 344);
  if (!v442)
  {
LABEL_579:
    v448 = *re::imagePresentationLogObjects(v441);
    v119 = v694;
    v184 = v699 + 12544;
    if (!os_log_type_enabled(v448, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_592;
    }

    *v719 = 67109120;
    *&v719[4] = 1878;
    v449 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
    goto LABEL_581;
  }

  v443 = v441;
  v444 = *(v700 + 360);
  v445 = 8 * v442;
  while (1)
  {
    v446 = *v444;
    if ((*(*v444 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
    {
      v447 = v446[37];
      if (v447 == "__InternalIPC-Screen__")
      {
        break;
      }

      v441 = strcmp(v447, "__InternalIPC-Screen__");
      if (!v441)
      {
        break;
      }
    }

    v444 += 8;
    v445 -= 8;
    if (!v445)
    {
      goto LABEL_579;
    }
  }

  v450 = *(v443 + 134);
  re::AssetHandle::AssetHandle(v719, (v443 + 40));
  v451 = v719[8];
  if (*&v719[8])
  {
    v452 = atomic_load((*&v719[8] + 896));
    v451 = v452 == 2;
  }

  v119 = v694;
  v184 = v699 + 12544;
  v453 = (v450 != 0) | v451;
  v454 = v446[29];
  if (!v454)
  {
    v454 = re::ecs2::EntityComponentCollection::add((v446 + 6), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v455 = (v453 ^ 1) & 1;
  if (*(v454 + 25) != v455)
  {
    *(v454 + 25) = v455;
    v456 = re::ecs2::Component::markDirty(v454);
    v457 = re::MediaDefaults::logEnabled(v456);
    if (v457)
    {
      v458 = re::MediaDefaults::logLevel(v457);
      if (v458 >= 2)
      {
        v459 = *re::imagePresentationLogObjects(v458);
        if (os_log_type_enabled(v459, OS_LOG_TYPE_ERROR))
        {
          v631 = *(v700 + 312);
          *location = 67109376;
          *&location[4] = v453 & 1;
          *&location[8] = 2048;
          *&location[10] = v631;
          _os_log_error_impl(&dword_1E1C61000, v459, OS_LOG_TYPE_ERROR, "updateScreenEntityMeshVisibility to %d [entityID: %llu]", location, 0x12u);
        }
      }
    }
  }

  re::AssetHandle::~AssetHandle(v719);
LABEL_592:
  v360 = re::ecs2::EntityComponentCollection::get((v357 + 6), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v362 = v693;
  if (v360 && *(v360 + 108) != BYTE4(v728))
  {
    *(v360 + 108) = BYTE4(v728);
    v360 = re::ecs2::Component::markDirty(v360);
  }

LABEL_473:
  if (!v119)
  {
    v635 = *re::imagePresentationLogObjects(v360);
    if (os_log_type_enabled(v635, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 2495;
      _os_log_error_impl(&dword_1E1C61000, v635, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, statusComponent is nullptr", buf, 8u);
    }

    goto LABEL_634;
  }

  if (v362[43].i8[0] != 1 || *(v119 + 25))
  {
    *buf = *(v119 + 96);
    re::AssetHandle::AssetHandle(&buf[16], (v119 + 112));
    goto LABEL_477;
  }

  v393 = *&v351[2][34]._os_unfair_lock_opaque;
  v394 = *v351;
  v395 = v693[16].u8[4];
  *buf = *(v119 + 96);
  v396 = re::AssetHandle::AssetHandle(&buf[16], (v119 + 112));
  _ZF = v395 == 2;
  v362 = v693;
  if (_ZF)
  {
    if (*(v119 + 96))
    {
      if (buf[0] == 2)
      {
        *&buf[12] = *&buf[12] + a4;
        goto LABEL_631;
      }

      if (buf[0] != 1)
      {
LABEL_631:
        re::ecs2::ImagePresentationStatusComponent::setAlchemistAnimationParams(v119, buf);
LABEL_632:
        re::ecs2::Component::markDirty(v119);
        goto LABEL_633;
      }
    }

    else
    {
      v462 = *re::imagePresentationLogObjects(v396);
      if (os_log_type_enabled(v462, OS_LOG_TYPE_DEFAULT))
      {
        v463 = v361[39];
        *v719 = 134217984;
        *&v719[4] = v463;
        _os_log_impl(&dword_1E1C61000, v462, OS_LOG_TYPE_DEFAULT, "[Alchemist Animation] Starting to prepare for generation animation. [entityID: %llu]", v719, 0xCu);
      }

      buf[0] = 1;
    }

    v464 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v693[8]);
    if (v464)
    {
      AlchemistAnimationLoadingTexture = re::ImagePresentationTextureProcessor::generateAlchemistAnimationLoadingTexture(v393, v464);
      if (AlchemistAnimationLoadingTexture)
      {
        v466 = AlchemistAnimationLoadingTexture;
        v467 = re::TextureAsset::assetType(AlchemistAnimationLoadingTexture);
        (*(*&v394->_os_unfair_lock_opaque + 424))(v719, v394, v466, v467, 0, 0, 0);
        v468 = *&buf[16];
        *&buf[16] = *v719;
        *v719 = v468;
        v469 = *v725;
        *v725 = *&v719[16];
        *&v719[16] = v469;
        re::AssetHandle::~AssetHandle(v719);
      }

      else
      {
        v482 = *re::imagePresentationLogObjects(0);
        v464 = os_log_type_enabled(v482, OS_LOG_TYPE_ERROR);
        if (v464)
        {
          v630 = v361[39];
          *v719 = 134217984;
          *&v719[4] = v630;
          _os_log_error_impl(&dword_1E1C61000, v482, OS_LOG_TYPE_ERROR, "[Alchemist Animation] Preparing the loading texture for Alchemist generation animation but got a null texture asset. [entityID: %llu]", v719, 0xCu);
        }
      }
    }

    if (*&buf[24])
    {
      *&buf[4] = 0x3F19999A3F800000;
      buf[0] = 2;
      *&buf[12] = 0;
      v483 = *re::imagePresentationLogObjects(v464);
      if (os_log_type_enabled(v483, OS_LOG_TYPE_DEFAULT))
      {
        v484 = v361[39];
        *v719 = 134217984;
        *&v719[4] = v484;
        _os_log_impl(&dword_1E1C61000, v483, OS_LOG_TYPE_DEFAULT, "[Alchemist Animation] Generation animation started. [entityID: %llu]", v719, 0xCu);
      }
    }

    goto LABEL_631;
  }

LABEL_477:
  switch(buf[0])
  {
    case 3:
      *&buf[4] = *(v184 + 20);
      v384 = (v184 + 56);
      v385 = 24;
      while (1)
      {
        v386 = *(v684 + v385);
        if (v386)
        {
          break;
        }

LABEL_502:
        v385 += 4112;
        v384 += 4112;
        if (v385 == 24696)
        {
          re::ecs2::ImagePresentationStatusComponent::resetAlchemistAnimationParams(v119);
          v391 = *re::imagePresentationLogObjects(v390);
          if (os_log_type_enabled(v391, OS_LOG_TYPE_DEFAULT))
          {
            v392 = v361[39];
            *v719 = 134217984;
            *&v719[4] = v392;
            _os_log_impl(&dword_1E1C61000, v391, OS_LOG_TYPE_DEFAULT, "[Alchemist Animation] Generation animation ended. [entityID: %llu]", v719, 0xCu);
          }

          goto LABEL_632;
        }
      }

      v387 = 16 * v386;
      v388 = v384;
      while (1)
      {
        v389 = *v388;
        v388 += 16;
        if (v389 == 1)
        {
          goto LABEL_631;
        }

        v387 -= 16;
        if (!v387)
        {
          goto LABEL_502;
        }
      }

    case 2:
      media::Spatial3DImageAnimationEngine::addAlchemistGenerationEffectFadeOutAnimation(v684);
      buf[0] = 3;
      re::ecs2::ImagePresentationStatusComponent::setAlchemistAnimationParams(v119, buf);
      v379 = re::ecs2::Component::markDirty(v119);
      v364 = *re::imagePresentationLogObjects(v379);
      if (os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
      {
        v380 = "False";
        if (v362[43].i8[0])
        {
          v380 = "True";
        }

        v381 = *(v119 + 25);
        v382 = v362[16].i8[4];
        v383 = v361[39];
        *v719 = 136315906;
        *&v719[4] = v380;
        *&v719[12] = 256;
        v719[14] = v381;
        *&v719[15] = 256;
        v719[17] = v382;
        *&v719[18] = 2048;
        *&v719[20] = v383;
        v369 = "[Alchemist Animation] Ending the current generation animation as it is not needed. isSpatial3DImageGenerating = %s, currentViewingMode = %d, desiredViewingMode = %d. [entityID: %llu]";
LABEL_496:
        _os_log_impl(&dword_1E1C61000, v364, OS_LOG_TYPE_DEFAULT, v369, v719, 0x1Cu);
      }

      break;
    case 1:
      re::ecs2::ImagePresentationStatusComponent::resetAlchemistAnimationParams(v119);
      v364 = *re::imagePresentationLogObjects(v363);
      if (os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
      {
        v365 = "False";
        if (v362[43].i8[0])
        {
          v365 = "True";
        }

        v366 = *(v119 + 25);
        v367 = v362[16].i8[4];
        v368 = v361[39];
        *v719 = 136315906;
        *&v719[4] = v365;
        *&v719[12] = 256;
        v719[14] = v366;
        *&v719[15] = 256;
        v719[17] = v367;
        *&v719[18] = 2048;
        *&v719[20] = v368;
        v369 = "[Alchemist Animation] Abort the generation animation preparation as it is not needed. isSpatial3DImageGenerating = %s, currentViewingMode = %d, desiredViewingMode = %d. [entityID: %llu]";
        goto LABEL_496;
      }

      break;
  }

LABEL_633:
  re::AssetHandle::~AssetHandle(&buf[16]);
LABEL_634:
  v486 = *v351;
  v485 = v351[1];
  v487 = re::ecs2::EntityComponentCollection::get((v361 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v488 = re::ecs2::EntityComponentCollection::get((v361 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v489 = v361[43];
  if (!v489)
  {
    goto LABEL_731;
  }

  v490 = v488;
  v491 = v361[45];
  v492 = 8 * v489;
  while (1)
  {
    v493 = *v491;
    if ((*(*v491 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
    {
      v494 = v493[37];
      if (v494 == "__InternalIPC-Screen__" || !strcmp(v494, "__InternalIPC-Screen__"))
      {
        break;
      }
    }

    v491 += 8;
    v492 -= 8;
    if (!v492)
    {
      goto LABEL_731;
    }
  }

  if (!v487)
  {
    goto LABEL_731;
  }

  v495 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*&v485[6]._os_unfair_lock_opaque, v493[39]);
  v496 = v495;
  v497 = *(v490 + 25);
  if (v497 != 2)
  {
    goto LABEL_645;
  }

  if ((*v696 & 1) == 0)
  {
    *location = 2;
    *buf = 0x5B80F73BCFAA1E05;
    re::MaterialParameterBlock::setConstant(v495, buf, 4uLL, location, 3, v719);
    v718 = 0;
    *v719 = 0;
    v716 = 0;
    v717 = 0;
    goto LABEL_655;
  }

  v497 = *(v699 + 12546);
LABEL_645:
  *location = v497;
  *buf = 0x5B80F73BCFAA1E05;
  re::MaterialParameterBlock::setConstant(v495, buf, 4uLL, location, 3, v719);
  v718 = 0;
  *v719 = 0;
  v498 = *(v487 + 134);
  v716 = 0;
  v717 = 0;
  if (v497 == 1)
  {
    if (v498 != 2)
    {
      goto LABEL_655;
    }

    v499 = 104;
    v500 = 128;
LABEL_651:
    v501 = *(v487 + v500);
    v502 = re::AssetHandle::operator=(&v716, (v487 + v499));
    if (v717)
    {
      v503 = atomic_load((v717 + 896));
      if (v503 == 2)
      {
        v504 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v716);
        v715 = 0x13DF8790D55F72F9;
        re::MaterialParameterBlock::setTextureHandle(v496, &v715, (v504 + 8), buf);
        *buf = 0;
        v715 = 0;
LABEL_674:
        LODWORD(v713[0]) = v501;
        v714[0] = 0x14E4212AA32F5D0;
        re::MaterialParameterBlock::setConstant(v496, v714, 4uLL, v713, 3, location);
        *location = 0;
        goto LABEL_675;
      }

      v506 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v716);
      v507 = *re::imagePresentationLogObjects(v506);
      v508 = os_log_type_enabled(v507, OS_LOG_TYPE_ERROR);
      if (v506)
      {
        if (!v508)
        {
          goto LABEL_674;
        }

        *buf = 0;
        v509 = "[updateImagePresentationMaterialParameters] Texture asset is missing or cannot be loaded for entity";
      }

      else
      {
        if (!v508)
        {
          goto LABEL_674;
        }

        *buf = 0;
        v509 = "[updateImagePresentationMaterialParameters] cannot find asset";
      }
    }

    else
    {
      v507 = *re::imagePresentationLogObjects(v502);
      if (!os_log_type_enabled(v507, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_674;
      }

      *buf = 0;
      v509 = "[updateImagePresentationMaterialParameters] texture is null";
    }

    _os_log_error_impl(&dword_1E1C61000, v507, OS_LOG_TYPE_ERROR, v509, buf, 2u);
    goto LABEL_674;
  }

  if (!v497 && (v498 - 1) < 2)
  {
    v499 = 64;
    v500 = 96;
    goto LABEL_651;
  }

LABEL_655:
  re::BuiltinTextureAssetProvider::makeDescriptor(buf, "fallback.blackArray");
  os_unfair_lock_lock(v486 + 32);
  re::AssetManager::assetHandle_assetTablesLocked(v713, v486, buf);
  os_unfair_lock_unlock(v486 + 32);
  re::AssetHandle::loadNow(v713[1], 0);
  v505 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v713);
  v715 = 0x13DF8790D55F72F9;
  re::MaterialParameterBlock::setTextureHandle(v496, &v715, (v505 + 8), location);
  *location = 0;
  v715 = 0;
  LODWORD(v711[0]) = 1;
  v712.i64[0] = 0x14E4212AA32F5D0;
  re::MaterialParameterBlock::setConstant(v496, &v712, 4uLL, v711, 3, v714);
  v714[0] = 0;
  re::AssetHandle::~AssetHandle(v713);
  if (v731)
  {
    if (BYTE8(v731))
    {
      (*(*v731 + 40))();
    }

    v731 = 0u;
    v732 = 0u;
  }

  if (*(&v726 + 1))
  {
    if (v730)
    {
      (*(**(&v726 + 1) + 40))();
    }

    v730 = 0;
    v727 = 0;
    v728 = 0;
    *(&v726 + 1) = 0;
    ++v729;
  }

  if (*v725)
  {
    if (v726)
    {
      (*(**v725 + 40))();
    }

    *&v726 = 0;
    memset(v725, 0, 24);
    ++*&v725[24];
  }

  if (*buf && (buf[8] & 1) != 0)
  {
    (*(**buf + 40))();
  }

LABEL_675:
  LODWORD(v711[0]) = *(v487 + 88);
  v712.i64[0] = 0x4E6879392755F0CFLL;
  re::MaterialParameterBlock::setConstant(v496, &v712, 4uLL, v711, 3, v713);
  v713[0] = 0;
  if (*(v487 + 148))
  {
    v511 = 0;
  }

  else
  {
    v511 = re::MediaDefaults::resizeMeshInVertexShaderEnabled(v510);
  }

  v710[0].i8[0] = v511;
  v711[0] = 0x6AA3FABF8F80C062;
  re::MaterialParameterBlock::setConstant(v496, v711, 1uLL, v710, 2, &v712);
  v712.i64[0] = 0;
  v512 = v361[32];
  v513 = 0x3F8000003F800000;
  if (v512)
  {
    v514 = v493[32];
    if (v514)
    {
      v513 = vmul_f32(v512[4], v514[4]);
    }
  }

  v710[0] = v513;
  v709[0] = 0x5B6C6E13F16AE237;
  re::MaterialParameterBlock::setConstant(v496, v709, 8uLL, v710, 32, v711);
  v711[0] = 0;
  LODWORD(v708[0]) = *(v490 + 100);
  v709[0] = 0x53282180F550D95CLL;
  re::MaterialParameterBlock::setConstant(v496, v709, 4uLL, v708, 1, v710);
  v710[0] = 0;
  LODWORD(v707[0]) = *(v490 + 104);
  v708[0] = 0x7D19F8F3DB42F496;
  re::MaterialParameterBlock::setConstant(v496, v708, 4uLL, v707, 1, v709);
  v709[0] = 0;
  LODWORD(v704[0]) = *(v490 + 108);
  v707[0] = 0x43E79139A1B20FA2;
  re::MaterialParameterBlock::setConstant(v496, v707, 4uLL, v704, 1, v708);
  v708[0] = 0;
  re::Defaults::intValue(v707, "ipc.mxi.enableOverrides", v515);
  if (LOBYTE(v707[0]) == 1 && HIDWORD(v707[0]))
  {
    re::Defaults::floatValue(v707, "ipc.mxi.generation.sweepUpDuration", v516);
    v517 = *(v707 + 1);
    if (!LOBYTE(v707[0]))
    {
      v517 = 1.8;
    }

    v705 = LODWORD(v517);
  }

  else
  {
    v705 = 1072064102;
  }

  v704[0] = 0x19D1FA9B0724A31;
  re::MaterialParameterBlock::setConstant(v496, v704, 4uLL, &v705, 1, v707);
  v707[0] = 0;
  re::AssetHandle::AssetHandle(&v705, (v490 + 112));
  if (v706)
  {
    v518 = atomic_load((v706 + 896));
    if (v518 == 2)
    {
      v519 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v705);
      v703 = 0x1C043ACF1C3447F1;
      re::MaterialParameterBlock::setTextureHandle(v496, &v703, (v519 + 8), v704);
      v703 = 0;
      v704[0] = 0;
    }
  }

  if (*(v490 + 26) == 2)
  {
    v520 = 1;
  }

  else
  {
    v520 = *(v490 + 28);
  }

  if (*(v490 + 136) != (v520 & 1))
  {
    if ((atomic_load_explicit(&qword_1EE1A8488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8488))
    {
      qword_1EE1A8480 = re::hashString("Opaque", v672);
      __cxa_guard_release(&qword_1EE1A8488);
    }

    if ((atomic_load_explicit(&qword_1EE1A8498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8498))
    {
      qword_1EE1A8490 = re::hashString("FadeDepthPrepass", v673);
      __cxa_guard_release(&qword_1EE1A8498);
    }

    if ((atomic_load_explicit(&qword_1EE1A84A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84A8))
    {
      qword_1EE1A84A0 = re::hashString("Transparent", v674);
      __cxa_guard_release(&qword_1EE1A84A8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84B8))
    {
      qword_1EE1A84B0 = re::hashString("FadeOpaque", v675);
      __cxa_guard_release(&qword_1EE1A84B8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84C8))
    {
      qword_1EE1A84C0 = re::hashString("ImageColorPresentation", v676);
      __cxa_guard_release(&qword_1EE1A84C8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84D8))
    {
      qword_1EE1A84D0 = re::hashString("", v677);
      __cxa_guard_release(&qword_1EE1A84D8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84E8))
    {
      qword_1EE1A84E0 = re::hashString("ImageColorPresentationOpaque", v678);
      __cxa_guard_release(&qword_1EE1A84E8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84F8))
    {
      qword_1EE1A84F0 = re::hashString("ImagePresentationDepthOnly", v679);
      __cxa_guard_release(&qword_1EE1A84F8);
    }

    if ((atomic_load_explicit(&qword_1EE1A8508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8508))
    {
      qword_1EE1A8500 = re::hashString("ImageColorPresentationFadeOpaque", v680);
      __cxa_guard_release(&qword_1EE1A8508);
    }

    if ((atomic_load_explicit(&qword_1EE1A8518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8518))
    {
      qword_1EE1A8510 = re::hashString("ImageColorPresentationFadeOpaque_BackCompat", v681);
      __cxa_guard_release(&qword_1EE1A8518);
    }

    v521 = qword_1EE1A8480;
    if (v520)
    {
      v522 = qword_1EE1A84D0;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v496, v521, v522, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v523 = qword_1EE1A84A0;
      v524 = qword_1EE1A84C0;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v496, v523, v524, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v525 = qword_1EE1A8490;
      v526 = qword_1EE1A84D0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v496, v525, v526, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v527 = qword_1EE1A84B0;
      v528 = qword_1EE1A84D0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v496, v527, v528, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v529 = qword_1EE1A84A0;
      v530 = qword_1EE1A84C0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      v531 = re::MaterialParameterBlock::addPassTechniqueMapping(v496, v529, v530, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      *(v490 + 136) = 1;
      v532 = *re::imagePresentationLogObjects(v531);
      v361 = v700;
      if (os_log_type_enabled(v532, OS_LOG_TYPE_DEFAULT))
      {
        v533 = *(*(v490 + 16) + 312);
        *v733 = 134217984;
        v734 = v533;
        v534 = "[ImagePresentationComponentHelper->toggleOpaquePassForImagePresentationMaterial] disabling opaque pass on entity %llu.";
        goto LABEL_729;
      }
    }

    else
    {
      v535 = qword_1EE1A84E0;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v496, v521, v535, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v536 = qword_1EE1A84A0;
      v537 = qword_1EE1A84D0;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v496, v536, v537, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v538 = qword_1EE1A8490;
      v539 = qword_1EE1A84F0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v496, v538, v539, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v540 = qword_1EE1A84B0;
      v541 = qword_1EE1A8500;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v496, v540, v541, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v542 = qword_1EE1A84A0;
      v543 = qword_1EE1A8510;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      v544 = re::MaterialParameterBlock::addPassTechniqueMapping(v496, v542, v543, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      *(v490 + 136) = 0;
      v532 = *re::imagePresentationLogObjects(v544);
      v361 = v700;
      if (os_log_type_enabled(v532, OS_LOG_TYPE_DEFAULT))
      {
        v545 = *(*(v490 + 16) + 312);
        *v733 = 134217984;
        v734 = v545;
        v534 = "[ImagePresentationComponentHelper->toggleOpaquePassForImagePresentationMaterial] enabling opaque pass on entity %llu.";
LABEL_729:
        _os_log_impl(&dword_1E1C61000, v532, OS_LOG_TYPE_DEFAULT, v534, v733, 0xCu);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v705);
  re::AssetHandle::~AssetHandle(&v716);
LABEL_731:
  v546 = re::ecs2::EntityComponentCollection::get((v361 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v546)
  {
    v636 = *re::imagePresentationLogObjects(0);
    v549 = v699;
    v550 = v699 + 12544;
    if (!os_log_type_enabled(v636, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_761;
    }

    *buf = 67109120;
    *&buf[4] = 1831;
    v637 = "ImagePresentationComponentHelper line: %d, smsc is nullptr";
    goto LABEL_883;
  }

  v547 = v546;
  v548 = re::ecs2::EntityComponentCollection::get((v361 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v549 = v699;
  if (v548)
  {
    re::AssetHandle::AssetHandle(buf, (v548 + 40));
    v550 = v699 + 12544;
    if (*&buf[8])
    {
      v551 = atomic_load((*&buf[8] + 896));
      if (v551 == 2)
      {
        re::AssetHandle::AssetHandle(location, buf);
        re::ecs2::SpatialMediaStatusComponent::setSpatialMediaLoadingTexture(v547, location);
        re::AssetHandle::~AssetHandle(location);
      }

      else
      {
        v552 = atomic_load((*&buf[8] + 896));
        if (v552 != 1)
        {
          re::AssetHandle::loadAsync(buf);
        }
      }
    }

    re::AssetHandle::~AssetHandle(buf);
  }

  else
  {
    v638 = *re::imagePresentationLogObjects(0);
    v550 = v699 + 12544;
    if (os_log_type_enabled(v638, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 1834;
      _os_log_error_impl(&dword_1E1C61000, v638, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, imagePresentationComponent is nullptr", buf, 8u);
    }
  }

  v553 = re::ecs2::EntityComponentCollection::get((v361 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v553)
  {
    v636 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v636, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_761;
    }

    *buf = 67109120;
    *&buf[4] = 1849;
    v637 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
    goto LABEL_883;
  }

  if (*(v553 + 48) == 1 && *(v553 + 28) == 1)
  {
    v555 = *(v553 + 88);
    v556 = *(v553 + 72);
    *v719 = *(v553 + 56);
    *&v719[16] = v556;
    *&v719[33] = *(v553 + 89);
    *&v719[36] = *(v553 + 92);
    v557 = *(v699 + 37);
    LODWORD(v556) = *(v699 + 38);
    v719[32] = v555;
    re::ecs2::SpatialMediaComponentHelper::impl::getPortalParamsInImmersiveTransition(v361, v719, buf, v557, *&v556);
    re::ecs2::SpatialMediaComponentHelper::impl::updateInImmersiveTransition(v361, buf);
    if (v555)
    {
      if (v555 != 1 || *(v547 + 25) == 2)
      {
        goto LABEL_761;
      }
    }

    else if (*(v547 + 25) == 3)
    {
      goto LABEL_761;
    }

    re::ecs2::SpatialMediaComponentHelper::impl::startImmersiveTransition(v361, v555);
    goto LABEL_761;
  }

  v558 = *(v553 + 26);
  if (v558 != 1)
  {
    if (v558 != 2 || *(v547 + 25) == 1)
    {
      goto LABEL_761;
    }

    v559 = re::ecs2::EntityComponentCollection::get((v361 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v559)
    {
      v560 = v559;
      v561 = re::ecs2::EntityComponentCollection::get((v361 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v561)
      {
        v562 = v561[11];
        v563 = 1.0;
        if (v562 > 0.0)
        {
          v563 = v561[10] / v562;
        }

        v564 = vdiv_f32(vmul_f32(vmul_f32(re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(v561, *(v560 + 144), v563), 0x3F0000003F000000), vdup_n_s32(0x40490FDBu)), vdup_n_s32(0x43340000u));
        v697 = v564.f32[0];
        v701 = tanf(v564.f32[1]);
        v565.f32[0] = tanf(v697);
        v565.f32[1] = v701;
        v566 = vmul_f32(vadd_f32(v565, v565), vdup_n_s32(0x3FC66666u));
        v567 = *&v566;
        __asm { FMOV            V0.2S, #4.25 }

        v702 = *(&v566 + 1);
        v569 = vmul_f32(v566, _D0);
        v698 = *(&v569 + 1);
        v570 = *&v569;
        re::ecs2::SpatialMediaComponentHelper::impl::updateToImmersiveMode(v361, v566, v569);
        re::ecs2::SpatialMediaComponentHelper::impl::completeImmersiveTransition(v361, 1);
        v572 = *re::imagePresentationLogObjects(v571);
        if (os_log_type_enabled(v572, OS_LOG_TYPE_DEFAULT))
        {
          v573 = v361[39];
          *buf = 134219008;
          *&buf[4] = v567;
          *&buf[12] = 2048;
          *&buf[14] = v702;
          *&buf[22] = 2048;
          *&buf[24] = v570;
          *v725 = 2048;
          *&v725[2] = v698;
          *&v725[10] = 2048;
          *&v725[12] = v573;
          v574 = "[updateSpatialMediaComponentToImmersiveMode] immersiveMediaSize (%.3f, %.3f), immersiveScreenSize (%.3f, %.3f) [id=%llu]";
          v575 = v572;
          v576 = 52;
LABEL_758:
          _os_log_impl(&dword_1E1C61000, v575, OS_LOG_TYPE_DEFAULT, v574, buf, v576);
          goto LABEL_761;
        }

        goto LABEL_761;
      }

      v636 = *re::imagePresentationLogObjects(0);
      if (!os_log_type_enabled(v636, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_761;
      }

      *buf = 67109120;
      *&buf[4] = 2388;
      v637 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
    }

    else
    {
      v636 = *re::imagePresentationLogObjects(0);
      if (!os_log_type_enabled(v636, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_761;
      }

      *buf = 67109120;
      *&buf[4] = 2385;
      v637 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
    }

LABEL_883:
    _os_log_error_impl(&dword_1E1C61000, v636, OS_LOG_TYPE_ERROR, v637, buf, 8u);
    goto LABEL_761;
  }

  if (*(v547 + 25))
  {
    re::ecs2::SpatialMediaComponentHelper::impl::updateToPortalMode(v361, v554);
    re::ecs2::SpatialMediaComponentHelper::impl::completeImmersiveTransition(v361, 0);
    v578 = *re::imagePresentationLogObjects(v577);
    if (os_log_type_enabled(v578, OS_LOG_TYPE_DEFAULT))
    {
      v579 = v361[39];
      *buf = 134217984;
      *&buf[4] = v579;
      v574 = "[updateSpatialMediaComponentToPortalMode] [id=%llu]";
      v575 = v578;
      v576 = 12;
      goto LABEL_758;
    }
  }

LABEL_761:
  v580 = re::ecs2::EntityComponentCollection::get((v361 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v580)
  {
    v587 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v587, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_780;
    }

    *buf = 67109120;
    *&buf[4] = 786;
    v588 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
LABEL_771:
    _os_log_error_impl(&dword_1E1C61000, v587, OS_LOG_TYPE_ERROR, v588, buf, 8u);
    goto LABEL_780;
  }

  v581 = v580;
  if (*(v580 + 25) != 2 && (*v550 != 1 || v550[2] != 2))
  {
    re::ecs2::ImagePresentationComponentHelper::impl::getDesiredScreenEntityConfiguration(buf, v549, v361);
    v589 = vmul_f32(*&buf[16], *v725);
LABEL_777:
    v591 = vmvn_s8(vceq_f32(v581[4], v589));
    if ((vpmax_u32(v591, v591).u32[0] & 0x80000000) != 0)
    {
      v581[4] = v589;
      v592 = *(*&v581[2] + 216);
      if (v592)
      {
        re::ecs2::NetworkComponent::markDirty(v592, v581);
      }
    }

    goto LABEL_780;
  }

  v582 = v361[43];
  if (!v582)
  {
LABEL_769:
    v587 = *re::imagePresentationLogObjects(v580);
    if (!os_log_type_enabled(v587, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_780;
    }

    *buf = 67109120;
    *&buf[4] = 792;
    v588 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
    goto LABEL_771;
  }

  v583 = v361[45];
  v584 = 8 * v582;
  while (1)
  {
    v585 = *v583;
    if ((*(*v583 + 288) ^ 0xCD040ED7D618C260) <= 1)
    {
      v586 = *(v585 + 296);
      if (v586 == "__InternalIPC-MXI__")
      {
        break;
      }

      v580 = strcmp(v586, "__InternalIPC-MXI__");
      if (!v580)
      {
        break;
      }
    }

    ++v583;
    v584 -= 8;
    if (!v584)
    {
      goto LABEL_769;
    }
  }

  v590 = re::ecs2::EntityComponentCollection::get((v585 + 48), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v590)
  {
    v589 = *(v590 + 132);
    goto LABEL_777;
  }

  v587 = *re::imagePresentationLogObjects(0);
  if (os_log_type_enabled(v587, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 794;
    v588 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
    goto LABEL_771;
  }

LABEL_780:
  *(v694 + 29) = 0;
}

void re::ecs2::ImagePresentationComponentHelper::impl::completeViewingModeTransition(re::ecs2::NetworkComponent *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  *(a1 + 12544) = 0;
  if (*(a3 + 25) != a4)
  {
    *(a3 + 25) = a4;
    a1 = *(*(a3 + 16) + 216);
    if (a1)
    {
      re::ecs2::NetworkComponent::markDirty(a1, a3);
    }
  }

  if (*(a3 + 27))
  {
    *(a3 + 27) = 0;
    a1 = *(*(a3 + 16) + 216);
    if (a1)
    {
      re::ecs2::NetworkComponent::markDirty(a1, a3);
    }
  }

  v7 = *re::imagePresentationLogObjects(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a2 + 312);
    v9 = 16777728;
    v10 = v4;
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::completeViewingModeTransition] target viewing mode: %d [entityID: %llu]", &v9, 0xFu);
  }
}

int8x8_t re::ecs2::ImagePresentationComponentHelper::impl::getScreenImageDimensionInViewingMode(int8x8_t *a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  if (!a1[16].i8[6])
  {
    return a1[4];
  }

  v3 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (a2 > 2)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v4 = qword_1E308C4F0[a2];
  a1 = re::AssetHandle::operator=(&v12, (a1 + qword_1E308C4D8[a2]));
  v5 = (*(v2->i32 + v4) - 5) < 4;
  if (!v13 || (a1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v12)) == 0)
  {
LABEL_9:
    v8 = *re::imagePresentationLogObjects(a1);
    v6 = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*&v2[2] + 312);
      *buf = 16777728;
      v16 = v3;
      v17 = 2048;
      v18 = v11;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[getScreenImageDimensionInViewingMode] Mono or stereo texture is null in viewing mode %d; using zero image dimension. [entityID: %llu]", buf, 0xFu);
    }

    goto LABEL_11;
  }

  v6 = vcvt_f32_s32(*(re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v12) + 248));
LABEL_11:
  re::AssetHandle::~AssetHandle(&v12);
  v9 = vrev64_s32(v6);
  if (v5)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  return vbsl_s8(vdup_n_s32(v10), v9, v6);
}

void re::ecs2::ImagePresentationComponentHelper::impl::getDesiredScreenEntityConfiguration(re::ecs2::ImagePresentationComponentHelper::impl *this, const re::ecs2::Entity *a2, double *a3)
{
  v115 = *MEMORY[0x1E69E9840];
  *(this + 14) = 0;
  *(this + 60) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 46) = 0;
  *(this + 16) = 1065353216;
  *(this + 72) = xmmword_1E3063230;
  v6 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v6)
  {
    if (atomic_exchange(&_MergedGlobals_253, 1u))
    {
      return;
    }

    v16 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = a3[39];
    *buf = 3.852e-34;
    v108 = v17;
    v18 = "[getDesiredScreenEntityConfiguration] entity has no IPC [id=%llu]";
LABEL_11:
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    return;
  }

  v7 = v6;
  v8 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v8)
  {
    if (atomic_exchange(&unk_1EE1A8479, 1u))
    {
      return;
    }

    v16 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = a3[39];
    *buf = 3.852e-34;
    v108 = v19;
    v18 = "[getDesiredScreenEntityConfiguration] entity has no IPSC [id=%llu]";
    goto LABEL_11;
  }

  v10 = v8;
  v11 = *(a3 + 32);
  __asm { FMOV            V1.4S, #1.0 }

  v98 = _Q1;
  if (v11)
  {
    v100 = v11[2];
  }

  else
  {
    v100 = _Q1;
    if ((atomic_exchange(&unk_1EE1A847A, 1u) & 1) == 0)
    {
      v20 = *re::imagePresentationLogObjects(v8);
      v8 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      _Q1 = v98;
      v100 = v98;
      if (v8)
      {
        v21 = a3[39];
        *buf = 3.852e-34;
        v108 = v21;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "[getDesiredScreenEntityConfiguration] screen entity local scale should invert IPC entity local scale, but there is no TransformComponent on the IPC entity [id=%llu]", buf, 0xCu);
        _Q1 = v98;
        v100 = v98;
      }
    }
  }

  *(this + 1) = _Q1;
  if (((*(v7 + 148) & 1) != 0 || (v22 = re::MediaDefaults::resizeMeshInVertexShaderEnabled(v8), _Q1 = v98, v22)) && (*(v10 + 48) & 1) == 0 && (isPresentingInSpatialImmersive = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingInSpatialImmersive(a3, v9), _Q1 = v98, !isPresentingInSpatialImmersive))
  {
    v25 = -0.004;
  }

  else
  {
    v24 = vdivq_f32(_Q1, v100);
    *(this + 1) = v24;
    v25 = vmuls_lane_f32(-0.004, v24, 2);
  }

  v26 = *(v10 + 48);
  if (v26 == 1)
  {
    v104 = *(v10 + 56);
    v105 = *(v10 + 72);
    v106 = *(v10 + 11);
  }

  v27 = *(v7 + 152) / *(a2 + 20);
  v28 = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingInSpatialImmersive(a3, v9);
  if (v28)
  {
    v30 = *(v10 + 11);
    v31 = 1.0;
    v32 = 1.0;
    if (v30 > 0.0)
    {
      v32 = *(v10 + 10) / v30;
    }

    v33 = vdiv_f32(vmul_f32(vmul_f32(re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(v28, *(v7 + 144), v32), 0x3F0000003F000000), vdup_n_s32(0x40490FDBu)), vdup_n_s32(0x43340000u));
    v99 = v33.f32[0];
    v101 = tanf(v33.f32[1]);
    v34.f32[0] = tanf(v99);
    v34.f32[1] = v101;
    __asm { FMOV            V1.2S, #4.25 }

    v36 = vmul_f32(vmul_f32(vadd_f32(v34, v34), vdup_n_s32(0x3FC66666u)), _D1);
    MagnificationExtent = re::ecs2::SpatialMediaComponentHelper::impl::getMagnificationExtent(a3, v37);
    if (MagnificationExtent < 1.0)
    {
      v31 = 0.8;
      if (MagnificationExtent > 0.8)
      {
        v40 = vabds_f32(1.0, MagnificationExtent) / 0.2;
        v31 = ((v40 * -0.2) * v40) + 1.0;
      }
    }

    v41 = v36.f32[0] * v31;
    v42 = v36.f32[1] * v31;
    *(this + 92) = 0;
    v43 = re::MediaDefaults::logEnabled(v38);
    if (v43)
    {
      v45 = *re::imagePresentationLogObjects(v43);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(a3 + 39);
        *buf = 3.8522e-34;
        v108 = v41;
        v109 = 2048;
        v110 = v42;
        v111 = 2048;
        v112[0] = v46;
        v47 = "[getDesiredScreenEntityConfiguration] spatial immersive mode, width %.3f, height %.3f [id=%llu]";
        v48 = buf;
LABEL_35:
        v54 = v45;
        v55 = 32;
LABEL_59:
        _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, v47, v48, v55);
      }
    }
  }

  else
  {
    if (!v26)
    {
      v56 = *(v7 + 148);
      isPresentingSpatialImage = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(a3, v29);
      if (v56)
      {
        v59 = 1.0;
        v60 = 1.0;
        if (isPresentingSpatialImage)
        {
          re::ecs2::SpatialMediaComponentHelper::impl::getScreenEntityScaleFactorByMagnificationExtentInPortal(a3, v58);
        }

        v61 = *(v10 + 11);
        if (v61 > 0.0)
        {
          v59 = *(v10 + 10) / v61;
        }

        v62 = *(v7 + 28);
        v41 = v60 * (v59 * v62);
        v42 = v60 * v62;
        v63 = v100.f32[1];
        if (v100.f32[0] >= v100.f32[1])
        {
          v63 = v100.f32[0];
        }

        v27 = v27 / v63;
        *(this + 92) = 1;
        v64 = re::MediaDefaults::logEnabled(isPresentingSpatialImage);
        if (!v64)
        {
          goto LABEL_60;
        }

        v65 = *re::imagePresentationLogObjects(v64);
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v66 = *(v10 + 25);
        v67 = *(v10 + 26);
        v68 = *(a3 + 39);
        *buf = 3.8524e-34;
        v108 = v41;
        v109 = 2048;
        v110 = v42;
        v111 = 256;
        LOWORD(v112[0]) = v66;
        BYTE2(v112[0]) = 1;
        BYTE3(v112[0]) = v67;
        WORD2(v112[0]) = 2048;
        *(v112 + 6) = v68;
        v47 = "[getDesiredScreenEntityConfiguration] regular mode, width %.3f, height %.3f, viewing mode %d, immersive viewing mode %d [id=%llu]";
      }

      else
      {
        v69 = 1.0;
        if (isPresentingSpatialImage)
        {
          re::ecs2::SpatialMediaComponentHelper::impl::getScreenEntityScaleFactorByMagnificationExtentInPortal(a3, v58);
          v69 = v70;
        }

        v71 = re::MediaDefaults::resizeMeshInVertexShaderEnabled(isPresentingSpatialImage);
        v72 = vmuls_lane_f32(v69, *v100.f32, 1);
        if (v71)
        {
          v42 = 1.0;
        }

        else
        {
          v42 = v72;
        }

        if (v71)
        {
          v41 = 1.0;
        }

        else
        {
          v41 = v69 * v100.f32[0];
        }

        *(this + 92) = 1;
        v73 = re::MediaDefaults::logEnabled(v71);
        if (!v73)
        {
          goto LABEL_60;
        }

        v65 = *re::imagePresentationLogObjects(v73);
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v74 = *(v10 + 25);
        v75 = *(v10 + 26);
        v76 = *(a3 + 39);
        *buf = 3.8524e-34;
        v108 = v41;
        v109 = 2048;
        v110 = v42;
        v111 = 256;
        LOWORD(v112[0]) = v74;
        BYTE2(v112[0]) = 1;
        BYTE3(v112[0]) = v75;
        WORD2(v112[0]) = 2048;
        *(v112 + 6) = v76;
        v47 = "[getDesiredScreenEntityConfiguration] not locking aspect ratio, width %.3f, height %.3f, viewing mode %d, immersive viewing mode %d [id=%llu]";
      }

      v48 = buf;
      v54 = v65;
      v55 = 38;
      goto LABEL_59;
    }

    v49 = *(a2 + 37);
    v50 = *(a2 + 38);
    *v113 = v104;
    *&v113[16] = v105;
    v114 = v106;
    re::ecs2::SpatialMediaComponentHelper::impl::getPortalParamsInImmersiveTransition(a3, v113, buf, v49, v50);
    v41 = *buf;
    v42 = *&v108;
    *(this + 92) = 1;
    v52 = re::MediaDefaults::logEnabled(v51);
    if (v52)
    {
      v45 = *re::imagePresentationLogObjects(v52);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(a3 + 39);
        *v113 = 134218496;
        *&v113[4] = v41;
        *&v113[12] = 2048;
        *&v113[14] = v42;
        *&v113[22] = 2048;
        *&v113[24] = v53;
        v47 = "[getDesiredScreenEntityConfiguration] in spatial immersive transition, width %.3f, height %.3f [id=%llu]";
        v48 = v113;
        goto LABEL_35;
      }
    }
  }

LABEL_60:
  PlaneDepthInMeters = re::ecs2::ImagePresentationComponentHelper::impl::getPlaneDepthInMeters(a3, v44);
  *(this + 8) = v41;
  *(this + 9) = v42;
  *(this + 10) = 0;
  *(this + 11) = v27;
  *(this + 6) = 0;
  *(this + 14) = PlaneDepthInMeters;
  *(this + 60) = 0;
  *(this + 61) = v102;
  *(this + 63) = v103;
  *(this + 16) = 1065353216;
  *(this + 72) = xmmword_1E3063230;
  v79 = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(a3, v78);
  v80 = 0.0;
  if (!v79)
  {
    goto LABEL_71;
  }

  v81 = *(a3 + 32);
  if (v81)
  {
    v82 = *(v81 + 40);
  }

  else
  {
    v82 = 1.0;
  }

  v83 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v83 && *(v83 + 48) == 1)
  {
    v85 = *(v83 + 72);
    *v113 = *(v83 + 56);
    *&v113[16] = v85;
    v114 = *(v83 + 88);
    re::ecs2::SpatialMediaComponentHelper::impl::getPortalParamsInImmersiveTransition(a3, v113, buf, *(a2 + 37), *(a2 + 38));
    v86 = -*(&v108 + 1);
LABEL_69:
    v25 = v86 / v82;
LABEL_70:
    v80 = v25;
    goto LABEL_71;
  }

  if (re::ecs2::ImagePresentationComponentHelper::impl::isPresentingInSpatialImmersive(a3, v84))
  {
    v86 = -0.75;
    goto LABEL_69;
  }

  v97 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v97)
  {
    v80 = 0.0;
    if ((*(v97 + 52) & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v80 = 0.0;
  }

LABEL_71:
  *&v87 = 0;
  *(&v87 + 1) = LODWORD(v80);
  *this = v87;
  if (*(a2 + 12544) != 1)
  {
    goto LABEL_80;
  }

  v88 = (a2 + 12576);
  v89 = 20560;
  do
  {
    v90 = *v88;
    if (*v88)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = v89 == 0;
    }

    v89 -= 4112;
    v88 += 514;
  }

  while (!_ZF);
  if (v90)
  {
    v92 = *(a2 + 3138);
  }

  else
  {
LABEL_80:
    v92 = 1.0;
    if (v26)
    {
      v93 = (a2 + 160);
      v94 = 10320;
      do
      {
        v95 = *v93;
        if (*v93)
        {
          v96 = 1;
        }

        else
        {
          v96 = v94 == 0;
        }

        v94 -= 2064;
        v93 += 258;
      }

      while (!v96);
      if (v95)
      {
        v92 = *(a2 + 39);
      }
    }
  }

  *(this + 22) = v92;
}

void re::ecs2::ImagePresentationComponentHelper::impl::removeImagePresentationMaterialParameters(re::ecs2::ImagePresentationComponentHelper::impl *this, re::ecs2::Entity *a2, re::MaterialManager **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v6 = *(a2 + 43);
    if (v6)
    {
      v7 = v5;
      v8 = *(a2 + 45);
      v9 = 8 * v6;
      while (1)
      {
        v10 = *v8;
        if ((*(*v8 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
        {
          v11 = *(v10 + 296);
          if (v11 == "__InternalIPC-Screen__" || !strcmp(v11, "__InternalIPC-Screen__"))
          {
            break;
          }
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return;
        }
      }

      if (v7)
      {
        SystemMaterialParameterBlock = re::MaterialManager::getSystemMaterialParameterBlock(a3[3], *(v10 + 312));
        if (SystemMaterialParameterBlock)
        {
          v14 = SystemMaterialParameterBlock;
          *buf = 0x5B80F73BCFAA1E05;
          re::MaterialParameterBlock::removeConstant(SystemMaterialParameterBlock, buf, 4);
          *buf = 0x14E4212AA32F5D0;
          re::MaterialParameterBlock::removeConstant(v14, buf, 4);
          v16 = 0x13DF8790D55F72F9;
          re::MaterialParameterBlock::removeTexture(v14, &v16);
        }
      }
    }
  }

  else
  {
    v12 = *re::imagePresentationLogObjects(this);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a2 + 39);
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[ImagePresentationComponentHelper::impl] Cannot find dependencies. Skip removeImagePresentationMaterialParameters on entity %llu.", buf, 0xCu);
    }
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, unsigned __int8 *a5)
{
  if (!a3 || !a4)
  {
    *a1 = 0;
    return;
  }

  re::Defaults::intValue(&v47, "ipc.mxi.enableOverrides", a2);
  if (DWORD1(v47))
  {
    v13 = v47;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a3 + 256);
  if (v14)
  {
    _Q0 = *(v14 + 32);
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  v20 = *(&_Q0 + 1);
  if (*&_Q0 >= *(&_Q0 + 1))
  {
    v21 = *&_Q0;
  }

  else
  {
    v21 = *(&_Q0 + 1);
  }

  v22 = a4[38] / *(a2 + 80);
  re::Defaults::intValue(&v47, "ipc.mxi.enableOverrides", v12);
  if (v47 != 1)
  {
    goto LABEL_19;
  }

  if (!DWORD1(v47))
  {
    goto LABEL_19;
  }

  re::Defaults::intValue(&v47, "ipc.mxi.immersiveScalingMode", v23);
  if (v47 != 1)
  {
    goto LABEL_19;
  }

  v24 = 1.5;
  if (SDWORD1(v47) > 2)
  {
    if (DWORD1(v47) == 3)
    {
      v40 = a4[74];
      v5 = 180.0;
      v6 = 3.3703e12;
      v41 = (a4[75] * 180.0) / 3.14159265;
      v42 = tanf(((v41 * 0.5) * 3.1416) / 180.0);
      v43 = atanf(v40 * v42);
      v45 = (COERCE_FLOAT(re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(v44, ((v43 * 180.0) * 0.31831) + ((v43 * 180.0) * 0.31831), v40) >> 32) / 180.0) * 3.14159265;
      v25 = v45 * 0.5;
    }

    else
    {
      if (DWORD1(v47) != 4)
      {
        goto LABEL_21;
      }

      re::Defaults::floatValue(&v47, "ipc.mxi.immersiveFOV", v23);
      v39 = (*(&v47 + 1) / 180.0) * 3.14159265;
      v25 = v39 * 0.5;
      if (!v47)
      {
        v25 = 0.69813;
      }
    }

    goto LABEL_60;
  }

  if (DWORD1(v47) == 1)
  {
LABEL_19:
    v26 = 0.795;
LABEL_20:
    v24 = v26 / v20;
    goto LABEL_21;
  }

  if (DWORD1(v47) == 2)
  {
    v25 = a4[75] * 0.5;
LABEL_60:
    v46 = tanf(v25);
    v26 = v46 + v46;
    goto LABEL_20;
  }

LABEL_21:
  v27 = 0.0;
  v47 = 0u;
  v48 = 0u;
  v28 = *a5;
  v29 = v22 / v21;
  if (v28 >= 2)
  {
    if (v28 == 2)
    {
      v6 = 4.25;
      v21 = v24 * 4.25;
      v22 = (v24 * 4.25) * a4[74];
      if (v13)
      {
        re::Defaults::floatValue(&v49, "ipc.mxi.immersive.proxyWidth", v23);
        if (v49)
        {
          v22 = *(&v49 + 1);
        }

        re::Defaults::floatValue(&v49, "ipc.mxi.immersive.proxyHeight", v34);
        if (v49)
        {
          v21 = *(&v49 + 1);
        }

        re::Defaults::floatValue(&v49, "ipc.mxi.immersive.proxyDistance", v35);
        if (v49)
        {
          v20 = *(&v49 + 1);
        }

        else
        {
          v20 = 0.0;
        }

        re::Defaults::floatValue(&v49, "ipc.mxi.immersive.sceneTargetVerticalFoVVisibleRegion", v36);
        if (v49)
        {
          v6 = *(&v49 + 1);
        }

        else
        {
          v6 = 4.25;
        }

        re::Defaults::floatValue(&v49, "ipc.mxi.immersive.nearPlaneSizeScalar", v37);
        v27 = *(&v49 + 1);
        v5 = 1.0;
        if (!v49)
        {
          v27 = 1.0;
        }
      }

      else
      {
        v20 = 0.0;
        v5 = 1.0;
        v27 = 1.0;
      }
    }
  }

  else
  {
    v21 = a4[7];
    v22 = v21 * a4[74];
    if (v13)
    {
      re::Defaults::floatValue(&v49, "ipc.mxi.portal.proxyWidth", v23);
      if (v49)
      {
        v22 = *(&v49 + 1);
      }

      re::Defaults::floatValue(&v49, "ipc.mxi.portal.proxyHeight", v30);
      if (v49)
      {
        v21 = *(&v49 + 1);
      }

      re::Defaults::floatValue(&v49, "ipc.mxi.portal.proxyDistance", v31);
      v5 = 0.0;
      if (v49)
      {
        v20 = *(&v49 + 1);
      }

      else
      {
        v20 = 0.0;
      }

      re::Defaults::floatValue(&v49, "ipc.mxi.portal.sceneTargetVerticalFoVVisibleRegion", v32);
      if (v49)
      {
        v6 = *(&v49 + 1);
      }

      else
      {
        v6 = 0.88398;
      }

      re::Defaults::floatValue(&v49, "ipc.mxi.portal.nearPlaneSizeScalar", v33);
      v27 = *(&v49 + 1);
      if (!v49)
      {
        v27 = 1.0;
      }
    }

    else
    {
      v27 = 1.0;
      v5 = 0.0;
      v6 = 0.88398;
      v20 = 0.0;
    }
  }

  *a1 = 1;
  v38 = v48;
  *(a1 + 16) = v47;
  *(a1 + 32) = v38;
  *(a1 + 48) = v22;
  *(a1 + 52) = v21;
  *(a1 + 56) = v20;
  *(a1 + 60) = v29;
  *(a1 + 64) = v6;
  *(a1 + 68) = v27;
  *(a1 + 72) = v5;
}

void re::ecs2::ImagePresentationComponentHelper::impl::applyLowLevelMXILayoutDescriptionToMXIEntity(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1557;
    v12 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 8u);
    return;
  }

  if (!a1[32])
  {
    v11 = *re::imagePresentationLogObjects(a1);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1559;
    v12 = "ImagePresentationComponentHelper line: %d, mxiTransformComponent is nullptr";
    goto LABEL_20;
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v4)
  {
    v11 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1561;
    v12 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
    goto LABEL_20;
  }

  v5 = v4;
  v6 = re::ecs2::EntityComponentCollection::get((a1 + 6), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v6)
  {
    v11 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1563;
    v12 = "ImagePresentationComponentHelper line: %d, uiLayerGeometryComponent is nullptr";
    goto LABEL_20;
  }

  v7 = v6;
  *(v5 + 132) = *(a2 + 32);
  *(v5 + 448) = *(a2 + 48);
  *(v5 + 460) = *(a2 + 52);
  *(v5 + 376) = *(a2 + 56);
  re::ecs2::Component::markDirty(v5);
  LODWORD(v9) = *(a2 + 32);
  LODWORD(v10) = *(a2 + 36);
  if (v7[12] == *&v9)
  {
    LODWORD(v8) = *(a2 + 44);
    if (v7[13] == *&v10 && v7[14] == *&v8)
    {
      return;
    }
  }

  else
  {
    LODWORD(v8) = *(a2 + 44);
  }

  v7[12] = *&v9;
  v7[13] = *&v10;
  v7[14] = *&v8;
  re::ecs2::UILayerGeometryComponent::buildGeomMesh(v7, v9, v10, v8);

  re::ecs2::Component::markDirty(v7);
}

void re::ecs2::ImagePresentationComponentHelper::impl::updateMXITreatmentConfig(re *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v11 = *re::imagePresentationLogObjects(a1);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1592;
    v12 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
    goto LABEL_14;
  }

  v7 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v7)
  {
    v11 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1594;
    v12 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
LABEL_14:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 8u);
    return;
  }

  v8 = v7;
  *(v7 + 320) = a4 == 2;
  v9 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v10 = 0;
  if (v9)
  {
    *(v8 + 316) = *(v9 + 56);
    if (a4 == 2)
    {
      v10 = *(v9 + 88);
    }
  }

  *(v8 + 456) = *(a1 + 3143);
  *(v8 + 368) = v10;
  *(v8 + 404) = 1;

  re::ecs2::Component::markDirty(v8);
}

void re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(re::ecs2::ImagePresentationComponentHelper::impl *this, re::ecs2::Entity *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v4 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 1280;
    v5 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
    goto LABEL_12;
  }

  v2 = a2;
  v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v3)
  {
    v4 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 1282;
    v5 = "ImagePresentationComponentHelper line: %d, uiLayerGeometryComponent is nullptr";
LABEL_12:
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 8u);
    return;
  }

  if (*(v3 + 108) != v2)
  {
    *(v3 + 108) = v2;

    re::ecs2::Component::markDirty(v3);
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::startAnimatingMXIImmersiveTransition(uint64_t a1, void *a2, int a3)
{
  v103 = *MEMORY[0x1E69E9840];
  media::Spatial3DImageAnimationEngine::addMXIImmersiveTransitionAnimation((a1 + 12552), a3 == 2);
  media::Spatial3DImageAnimationEngine::update(a1 + 12552, 0.0, v6, v7);
  v8 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v8)
  {
    v45 = *re::imagePresentationLogObjects(0);
    v58 = 0.0;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *v61 = 67109120;
      *v62 = 1151;
      _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, ipc is nullptr", v61, 8u);
    }

    goto LABEL_9;
  }

  v9 = v8;
  v91[0] = 1;
  re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(v61, a1, a2, v8, v91);
  buf[0] = 2;
  re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(v91, a1, a2, v9, buf);
  if (v61[0] != 1 || v91[0] != 1)
  {
    v35 = *re::imagePresentationLogObjects(v10);
    v58 = 0.0;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Unexpected nil layout description", buf, 2u);
    }

LABEL_9:
    v56 = 0.0;
    v57 = 0.0;
    v55 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    goto LABEL_10;
  }

  v11 = *&v63[1];
  v12 = *&v63[9];
  v13 = *&v63[13];
  v14 = *&v63[17];
  v15 = *&v63[21];
  v16 = *&v63[29];
  v17 = *&v63[33];
  *buf = *&v63[49];
  *&buf[8] = *&v63[57];
  v19 = v92;
  v18 = v93;
  v20 = v94;
  v21 = v95;
  v23 = v96;
  v22 = v97;
  v24 = v98;
  v25 = v99;
  v26 = v100;
  *&v59 = v101;
  DWORD2(v59) = v102;
  if ((*(a1 + 37248) & 1) == 0)
  {
    *(a1 + 37248) = 1;
  }

  *(a1 + 37264) = a3;
  *(a1 + 37280) = v11;
  *(a1 + 37288) = v12;
  *(a1 + 37292) = v13;
  *(a1 + 37296) = v14;
  *(a1 + 37300) = v15;
  v47 = *&v17;
  v48 = *(&v17 + 1);
  *(a1 + 37308) = v16;
  *(a1 + 37312) = v17;
  v49 = *(&v17 + 2);
  v50 = *(&v17 + 3);
  v27 = *&v11;
  v28 = *(&v11 + 1);
  *(a1 + 37328) = *buf;
  v29 = v12;
  *(a1 + 37344) = v19;
  v30 = v14;
  *(a1 + 37348) = v18;
  v57 = *(&v15 + 1);
  v58 = *&v15;
  *(a1 + 37352) = v20;
  v51 = *&v26;
  v52 = *(&v26 + 1);
  *(a1 + 37392) = v59;
  *(a1 + 37376) = v26;
  *(a1 + 37356) = v21;
  v53 = *(&v26 + 2);
  v54 = *(&v26 + 3);
  *(a1 + 37360) = v23;
  v55 = v18;
  v56 = v19;
  *(a1 + 37364) = v22;
  v31 = v20;
  v32 = v23;
  *(a1 + 37368) = v24;
  v33 = v22;
  v34 = v24;
  *(a1 + 37372) = v25;
LABEL_10:
  if (a3 == 1)
  {
    v36 = a2[43];
    if (v36)
    {
      v37 = a2[45];
      v38 = 8 * v36;
      while (1)
      {
        v39 = *v37;
        if ((*(*v37 + 36) ^ 0xCD040ED7D618C260) <= 1)
        {
          v40 = *(v39 + 37);
          if (v40 == "__InternalIPC-MXI__" || !strcmp(v40, "__InternalIPC-MXI__"))
          {
            break;
          }
        }

        ++v37;
        v38 -= 8;
        if (!v38)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v39 = 0;
    }

    re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(v39, 1);
  }

  v41 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v41)
  {
    v42 = v41;
    if ((*(v41 + 28) & 1) == 0)
    {
      *(v41 + 28) = 1;
      v41 = *(*(v41 + 16) + 216);
      if (v41)
      {
        re::ecs2::NetworkComponent::markDirty(v41, v42);
      }
    }
  }

  else
  {
    v46 = *re::imagePresentationLogObjects(0);
    v41 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      *v61 = 67109120;
      *v62 = 1170;
      _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, ipsc is nullptr", v61, 8u);
    }
  }

  v43 = *re::imagePresentationLogObjects(v41);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = a2[39];
    *v61 = 16782848;
    v62[0] = a3;
    *&v62[1] = 2048;
    *&v62[3] = v47;
    *v63 = 2048;
    *&v63[2] = v48;
    *&v63[10] = 2048;
    *&v63[12] = v49;
    *&v63[20] = 2048;
    *&v63[22] = v50;
    *&v63[30] = 2048;
    *&v63[32] = v27;
    *&v63[40] = 2048;
    *&v63[42] = v28;
    *&v63[50] = 2048;
    *&v63[52] = v29;
    *&v63[60] = 2048;
    v64 = v30;
    v65 = 2048;
    v66 = v58;
    v67 = 2048;
    v68 = v57;
    v69 = 2048;
    v70 = v51;
    v71 = 2048;
    v72 = v52;
    v73 = 2048;
    v74 = v53;
    v75 = 2048;
    v76 = v54;
    v77 = 2048;
    v78 = v56;
    v79 = 2048;
    v80 = v55;
    v81 = 2048;
    v82 = v31;
    v83 = 2048;
    v84 = v32;
    v85 = 2048;
    v86 = v33;
    v87 = 2048;
    v88 = v34;
    v89 = 2048;
    v90 = v44;
    _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::startAnimatingMXIImmersiveTransition] target ImageImmersiveViewingMode %d, portalProxyWidth: %f, portalProxyHeight: %f, portalProxyDistance: %f, portalProxyCornerRadius: %f, portalLocalScale: (%f, %f, %f), portalLocalPosition: (%f, %f, %f),immersiveProxyWidth: %f, immersiveProxyHeight: %f, immersiveProxyDistance: %f, immersiveProxyCornerRadius: %f, immersiveLocalScale: (%f, %f, %f), immersiveLocalPosition: (%f, %f, %f) [entityID: %llu]", v61, 0xD7u);
  }
}

uint64_t re::ecs2::ImagePresentationComponentHelper::impl::isPresentingInSpatialImmersive(re::ecs2::ImagePresentationComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  if (re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(this, a2) && (v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType), *(v3 + 26) == 2))
  {
    v4 = *(v3 + 28) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(re::ecs2::ImagePresentationComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    v7 = *(v4 + 27) == 1 && *(v3 + 132) == 1;
    return *(v4 + 25) == 1 || v7;
  }
}

float re::ecs2::ImagePresentationComponentHelper::impl::getPlaneDepthInMeters(re::ecs2::ImagePresentationComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v2 = 0.0;
  if (this)
  {
    v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v4)
    {
      v6 = v4;
      if (re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(this, v5) && *(v6 + 52) != 1)
      {
        return 0.00236;
      }
    }
  }

  return v2;
}

void re::ecs2::ImagePresentationComponentHelper::impl::startAnimatingSpatialImmersiveTransition(uint64_t a1, void *a2, int a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v7)
  {
    v3 = *(v7 + 100);
    v9 = fabsf(v3) > 0.00000011921;
  }

  else
  {
    v9 = 0;
  }

  ImmersiveTransitionRequiresReducedMotion = re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveTransitionRequiresReducedMotion(a2, v8);
  if (a3 == 2)
  {
    v35 = v9;
    if (v9)
    {
      v36 = v3;
    }

    v12 = (a1 + 96);
    v13 = &v35;
    v14 = 1;
  }

  else
  {
    v33 = v9;
    if (v9)
    {
      v34 = v3;
    }

    v12 = (a1 + 96);
    v13 = &v33;
    v14 = 0;
  }

  media::MediaScreenAnimationEngine::addSpatialMediaImmersiveTransitionAnimation(v12, v14, ImmersiveTransitionRequiresReducedMotion, v13, v11);
  media::MediaScreenAnimationEngine::update(a1 + 96, 0.0, v15, v16);
  v17 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v17)
  {
    v28 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *v38 = 2333;
    v29 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
    goto LABEL_28;
  }

  v18 = v17;
  v19 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v19)
  {
    v28 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *v38 = 2335;
    v29 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, v29, buf, 8u);
    return;
  }

  v20 = v19;
  v21 = *(v19 + 44);
  v22 = 1.0;
  if (v21 > 0.0)
  {
    v22 = *(v19 + 40) / v21;
  }

  re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveTransitionConfiguration(a2, a3 == 2, &v30, *(v18 + 144), v22);
  if (*(v20 + 48))
  {
    v24 = v31;
    *(v20 + 56) = v30;
    *(v20 + 72) = v24;
    *(v20 + 88) = v32;
  }

  else
  {
    *(v20 + 48) = 1;
    v25 = v31;
    *(v20 + 56) = v30;
    *(v20 + 72) = v25;
    *(v20 + 88) = v32;
  }

  if ((*(v20 + 28) & 1) == 0)
  {
    *(v20 + 28) = 1;
    v23 = *(*(v20 + 16) + 216);
    if (v23)
    {
      re::ecs2::NetworkComponent::markDirty(v23, v20);
    }
  }

  v26 = *re::imagePresentationLogObjects(v23);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = a2[39];
    *buf = 16779776;
    v38[0] = a3;
    *&v38[1] = 2048;
    *&v38[3] = *&v30;
    v39 = 2048;
    v40 = *(&v30 + 1);
    v41 = 2048;
    v42 = *(&v30 + 2);
    v43 = 2048;
    v44 = *(&v30 + 3);
    v45 = 2048;
    v46 = *&v31;
    v47 = 2048;
    v48 = *(&v31 + 1);
    v49 = 2048;
    v50 = *(&v31 + 2);
    v51 = 2048;
    v52 = *(&v31 + 3);
    v53 = 2048;
    v54 = v27;
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::startAnimatingSpatialImmersiveTransition] target ImageImmersiveViewingMode %d, portalScreenSize (%.2f, %.2f), portalMediaSize (%.2f, %.2f), immersiveScreenSize (%.2f, %.2f), immersiveMediaSize (%.2f, %.2f) [id=%llu]", buf, 0x5Fu);
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::updateMXIComponentResources(re::ecs2::ImagePresentationComponentHelper::impl *this, re::ecs2::ImagePresentationComponent *a2, id *a3, re::ImagePresentationTextureProcessor *a4, re::AssetManager *a5)
{
  v9 = a2 + 564;
  v10 = *(a2 + 5);
  v11 = *(this + 32);
  re::AssetHandle::AssetHandle(v27, (this + 160));
  re::AssetHandle::operator=(a2 + 608, v27);
  re::AssetHandle::~AssetHandle(v27);
  re::AssetHandle::AssetHandle(v26, (this + 184));
  re::AssetHandle::operator=(a2 + 704, v26);
  re::AssetHandle::~AssetHandle(v26);
  re::DynamicArray<re::AssetHandle>::operator=((a2 + 728), (this + 208));
  re::AssetHandle::operator=(a2 + 32, this + 31);
  *(a2 + 80) = 1;
  v12 = *(this + 80);
  v13 = *(this + 324);
  *(a2 + 560) = 0;
  *&v14 = vrev64q_s32(*(this + 296)).u64[0];
  *(&v14 + 1) = *(this + 38);
  *v9 = v14;
  *(v9 + 2) = *(this + 39);
  *(a2 + 147) = v12;
  *(a2 + 592) = v13;
  if (v10 == v11 || (v15 = *(a2 + 88), v16 = *(a2 + 89), v17 = *(a2 + 90), (v18 = re::AssetHandle::loadedAsset<re::TextureAsset>((this + 248))) == 0))
  {
LABEL_12:
    re::ecs2::Component::markDirty(a2);
    return;
  }

  if (a3)
  {
    MXIGlowrayBackingTexture = re::ImagePresentationTextureProcessor::generateMXIGlowrayBackingTexture(a3, v18, (v15 + v16) * 0.5, v17);
    v20 = *re::imagePresentationLogObjects(MXIGlowrayBackingTexture);
    if (MXIGlowrayBackingTexture)
    {
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "[MXI] setting glowray texture", buf, 2u);
      }

      v22 = re::TextureAsset::assetType(v21);
      (*(*a4 + 424))(buf, a4, MXIGlowrayBackingTexture, v22, 0, 0, 0);
      re::AssetHandle::AssetHandle(v24, buf);
      re::AssetHandle::operator=(this + 272, v24);
      re::AssetHandle::~AssetHandle(v24);
      re::AssetHandle::operator=(a2 + 56, this + 34);
      *(a2 + 404) = 1;
      re::AssetHandle::~AssetHandle(buf);
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "[MXI] Glowray bake texture. Error encountered.", buf, 2u);
    }

    goto LABEL_12;
  }

  v23 = *re::imagePresentationLogObjects(v18);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "[MXI] Glowray bake test. Error encountered (nil textureProcessor)", buf, 2u);
  }
}

re::ecs2::ImagePresentationComponentHelper *re::ecs2::ImagePresentationComponentHelper::ImagePresentationComponentHelper(re::ecs2::ImagePresentationComponentHelper *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 37408, 16);
  bzero(v3, 0x9220uLL);
  re::ecs2::ImagePresentationComponentHelper::impl::impl(v3);
  *this = v3;
  return this;
}

void re::ecs2::ImagePresentationComponentHelper::~ImagePresentationComponentHelper(id **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = re::globalAllocators(this)[2];
    re::ecs2::ImagePresentationComponentHelper::impl::~impl(v1);
    (*(*v2 + 40))(v2, v1);
  }
}

re::ecs2::ImagePresentationComponentHelper::impl *re::ecs2::ImagePresentationComponentHelper::impl::impl(re::ecs2::ImagePresentationComponentHelper::impl *this)
{
  v2 = this + 12544;
  *this = 0;
  *(this + 2) = 0;
  objc_initWeak(this + 2, 0);
  objc_initWeak(this + 3, 0);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0x40000000;
  objc_initWeak(this + 7, 0);
  objc_initWeak(this + 8, 0);
  objc_initWeak(this + 9, 0);
  *(this + 10) = vdup_n_s32(0x44AA0000u);
  inited = objc_initWeak(this + 11, 0);
  *(this + 15) = re::globalAllocators(inited)[2];
  *(this + 16) = 0;
  *(this + 136) = xmmword_1E308AA90;
  *(this + 19) = 0x3F80000000000000;
  v4 = -12384;
  do
  {
    v5 = this + v4;
    *(v5 + 1568) = 0;
    *(v5 + 3138) = 0;
    v4 += 2064;
  }

  while (v4);
  *v2 = 0;
  v2[2] = 0;
  *(this + 1569) = 0;
  *(this + 1571) = 0;
  v6 = (this + 12584);
  v7 = 24672;
  *(this + 1570) = 0;
  do
  {
    *(v6 - 1) = 0;
    *v6 = 0;
    v6 += 1028;
    v7 -= 4112;
  }

  while (v7);
  *(this + 37248) = 0;
  return this;
}

void std::__tree<re::ecs2::ImageViewingMode>::__assign_unique<re::ecs2::ImageViewingMode const*>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (*(a1 + 16))
  {
    v6 = *a1;
    v8 = (a1 + 8);
    v7 = *(a1 + 8);
    *a1 = a1 + 8;
    *(v7 + 16) = 0;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    if (!v9)
    {
LABEL_25:
      v19 = 0;
LABEL_26:
      std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(v19);
      goto LABEL_27;
    }

    v10 = std::__tree<re::ecs2::ImageViewingMode>::_DetachedTreeCache::__detach_next(v9);
    v11 = v10;
    if (a2 != a3)
    {
      while (1)
      {
        v12 = *a2;
        v13 = *v8;
        v14 = (a1 + 8);
        v15 = (a1 + 8);
        if (*v8)
        {
          while (1)
          {
            while (1)
            {
              v15 = v13;
              v16 = *(v13 + 25);
              if (v16 <= v12)
              {
                break;
              }

              v13 = *v15;
              v14 = v15;
              if (!*v15)
              {
                goto LABEL_14;
              }
            }

            if (v16 >= v12)
            {
              break;
            }

            v13 = v15[1];
            if (!v13)
            {
              v14 = v15 + 1;
              goto LABEL_14;
            }
          }

          v17 = v11;
        }

        else
        {
LABEL_14:
          *(v9 + 25) = v12;
          std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::__insert_node_at(a1, v15, v14, v9);
          if (!v11)
          {
            ++a2;
            goto LABEL_25;
          }

          v17 = std::__tree<re::ecs2::ImageViewingMode>::_DetachedTreeCache::__detach_next(v11);
          v9 = v11;
          v11 = v17;
        }

        if (++a2 == a3)
        {
          goto LABEL_20;
        }
      }
    }

    v17 = v10;
LABEL_20:
    std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(v9);
    if (v17)
    {
      for (i = v17[2]; i; i = i[2])
      {
        v17 = i;
      }

      v19 = v17;
      goto LABEL_26;
    }
  }

LABEL_27:
  if (a2 != a3)
  {
    v20 = (a1 + 8);
    do
    {
      v21 = *v20;
      if (!*v20)
      {
LABEL_36:
        operator new();
      }

      v22 = *a2;
      while (1)
      {
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 25);
          if (v24 <= v22)
          {
            break;
          }

          v21 = *v23;
          if (!*v23)
          {
            goto LABEL_36;
          }
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = v23[1];
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      ++a2;
    }

    while (a2 != a3);
  }
}

void *std::__tree<re::ecs2::ImageViewingMode>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_MXISystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_254, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_254))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8530, "MXISystem");
    __cxa_guard_release(&_MergedGlobals_254);
  }

  return &unk_1EE1A8530;
}

void re::ecs2::initInfo_MXISystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x7BFBF04A279ALL;
  v8[1] = "MXISystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MXISystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MXISystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MXISystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MXISystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MXISystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MXISystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MXISystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::ecs2::MXISystem *re::ecs2::MXISystem::MXISystem(re::ecs2::MXISystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CF0648;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  v3 = *re::mxiLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[MXISystem] MXISystem init", v5, 2u);
  }

  return this;
}

void re::ecs2::MXISystem::~MXISystem(re::ecs2::MXISystem *this)
{
  v2 = *re::mxiLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEBUG, "[MXISystem] MXISystem dealloc", v3, 2u);
  }

  re::ecs2::System::~System(this);
}

{
  re::ecs2::MXISystem::~MXISystem(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::MXISystem::willAddSystemToECSService(re::ecs2::MXISystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 37) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 38) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 39) = re::ServiceLocator::serviceOrNull<re::TransformService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::MXIService>(v5);
  if (result)
  {
    *(this + 40) = result;
  }

  return result;
}

double re::ecs2::MXISystem::willRemoveSystemFromECSService(re::ecs2::MXISystem *this)
{
  *(this + 40) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 38) = 0;
  return result;
}

re::MXIManager *re::ecs2::MXISystem::willAddSceneToECSService(re::MXIManager *this, re::EventBus **a2)
{
  if (a2)
  {
    this = *(this + 40);
    if (this)
    {
      return re::MXIManager::registerScene(this, a2);
    }
  }

  return this;
}

re::MXIManager *re::ecs2::MXISystem::willRemoveSceneFromECSService(re::MXIManager *this, re::ecs2::Entity **a2)
{
  if (a2)
  {
    this = *(this + 40);
    if (this)
    {
      return re::MXIManager::unregisterScene(this, a2);
    }
  }

  return this;
}

void re::ecs2::MXISystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (*(a1 + 320))
  {
    v4 = *(a1 + 296);
    if (!v4 || (*(v4 + 432) & 0x10) != 0)
    {
      v5 = *(a3 + 200);
      if (v5)
      {
        v6 = *(a3 + 216);
        v7 = &v6[v5];
        v8 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        v44 = v7;
        do
        {
          v9 = *v6;
          v10 = re::ecs2::SceneComponentTable::get((*v6 + 200), v8[83]);
          if (v10 && *(v10 + 384))
          {
            v11 = *(*(a1 + 304) + 112);
            if (v11)
            {
              v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
            }

            else
            {
              v12 = 0;
            }

            re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v47, v9, 0, v12);
            v13 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[83]);
            if (v13)
            {
              v14 = *(v13 + 48);
              if (v14)
              {
                v15 = *(v13 + 50);
                for (i = 8 * v14; i; i -= 8)
                {
                  v17 = *v15;
                  v18 = (*v15)[1].i64[0];
                  if (v18 && (*(v18 + 304) & 1) != 0)
                  {
                    v13 = re::MXIManager::update(*(a1 + 320), v9, (*v15)[1].i64[0], *v15);
                    if (v13 && *(a1 + 304))
                    {
                      MXIContextForEntity = re::MXIManager::getMXIContextForEntity(*(a1 + 320), *(v18 + 312), buf);
                      v20 = (*(**(a1 + 256) + 24))(*(a1 + 256), MXIContextForEntity);
                      (*(*v20 + 8))(v60);
                      if (v60[0])
                      {
                        v21 = *&v60[8];
                      }

                      else
                      {
                        v21 = 0;
                      }

                      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v60, v9, v21, v12);
                      v22 = re::StringID::operator=(&v54, v60);
                      if (v60[0])
                      {
                        if (v60[0])
                        {
                        }
                      }

                      *v60 = v47 >> 1;
                      v23 = **(re::RenderFrameData::stream((v12 + 33), v60) + 48);
                      (*(v23 + 1256))();
                      if (v59)
                      {

                        v59 = 0;
                      }

                      re::DynamicArray<re::AssetHandle>::deinit(&v58);
                      re::AssetHandle::~AssetHandle(&v57);
                      re::AssetHandle::~AssetHandle(&v56);
                      if (v54)
                      {
                        if (v54)
                        {
                        }
                      }
                    }

                    if (v17[5].i8[0] != 1 || (v17[7].i8[9] & 1) == 0)
                    {
                      v45[1] = &unk_1F5CF06D8;
                      LOBYTE(v46) = v17[37].i8[8];
                      HIBYTE(v46) = (v17[5].u8[2] | 2) == 3;
                      v45[0] = v47 >> 1;
                      v24 = re::RenderFrameData::stream((v12 + 33), v45);
                      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v24, &v50, buf);
                      if (*&buf[12] == 0x7FFFFFFF)
                      {
                        v25 = *(*(v24 + 48) + 8);
                        v26 = (*(*v25 + 32))(v25, 56, 8);
                        *v26 = 0;
                        *(v26 + 8) = 0;
                        *(v26 + 16) = 1;
                        *(v26 + 32) = 0;
                        *(v26 + 40) = 0;
                        *(v26 + 24) = 0;
                        *(v26 + 48) = 0;
                        v27 = re::BucketArray<re::MXIColorConversionState,4ul>::init(v26, v25, 1uLL);
                        v28 = re::globalAllocators(v27)[2];
                        *v60 = &unk_1F5CF0748;
                        *&v60[8] = v25;
                        *&v62[4] = v28;
                        *&v62[12] = v60;
                        *buf = std::__any_imp::_SmallHandler<re::BucketArray<re::MXIColorConversionState,4ul> *>::__handle[abi:nn200100];
                        *&buf[8] = v26;
                        *(&v54 + 1) = v28;
                        *&v55 = 0;
                        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v53, v60);
                        v29 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v24, &v50, buf);
                        if (v55)
                        {
                          v48 = buf;
                          (*(*v55 + 16))(v55, &v48);
                        }

                        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v53);
                        if (*buf)
                        {
                          (*buf)(0, buf, 0, 0, 0);
                        }

                        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v60);
                      }

                      else
                      {
                        v29 = (*(v24 + 16) + 96 * *&buf[12] + 16);
                      }

                      v48 = &unk_1F5CF06D8;
                      v49 = v46;
                      v32 = *(v31 + 40);
                      v33 = *(v31 + 8);
                      if (v32 + 1 > 4 * v33)
                      {
                        re::BucketArray<re::MXIColorConversionState,4ul>::setBucketsCapacity(v31, (v32 + 4) >> 2);
                        v33 = *(v31 + 8);
                      }

                      if (v33 <= v32 >> 2)
                      {
                        v50 = 0;
                        v54 = 0u;
                        v55 = 0u;
                        v52 = 0u;
                        v53 = 0u;
                        *buf = 0u;
                        v39 = MEMORY[0x1E69E9C10];
                        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v60 = 136315906;
                        *&v60[4] = "operator[]";
                        *&v60[12] = 1024;
                        if (v40)
                        {
                          v41 = 3;
                        }

                        else
                        {
                          v41 = 2;
                        }

                        *&v60[14] = 858;
                        v61 = 2048;
                        *v62 = v32 >> 2;
                        *&v62[8] = 2048;
                        *&v62[10] = v33;
                        _os_log_send_and_compose_impl(v41, &v50, buf, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v60, 38, v42, v43);
                        _os_crash_msg();
                        __break(1u);
LABEL_60:
                        re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                        _os_crash("assertion failure: (m_size > 0) Array is empty");
                        __break(1u);
                      }

                      if (*(v31 + 16))
                      {
                        v34 = v31 + 24;
                      }

                      else
                      {
                        v34 = *(v31 + 32);
                      }

                      v35 = *(v34 + 8 * (v32 >> 2));
                      ++*(v31 + 40);
                      ++*(v31 + 48);
                      v36 = v35 + 16 * (v32 & 3);
                      *v36 = &unk_1F5CF06D8;
                      *(v36 + 8) = v49;
                      v37 = *(v31 + 40);
                      if (!v37)
                      {
                        goto LABEL_60;
                      }

                      v13 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](v31, v37 - 1);
                    }
                  }

                  ++v15;
                }
              }
            }

            if (v47)
            {
              if (v47)
              {
              }
            }

            v7 = v44;
            v8 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
          }

          ++v6;
        }

        while (v6 != v7);
      }
    }
  }

  else
  {
    v38 = *re::mxiLogObjects(a1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "[MXISystem] MXISystem cannot move forward without MXIManager.", buf, 2u);
    }
  }
}

_anonymous_namespace_ *re::BucketArray<re::MXIColorConversionState,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MXIColorConversionState,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MXIColorConversionState,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 64, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::MXIColorConversionState,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MXIColorConversionState,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MXIColorConversionState,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::MXIColorConversionState,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MXIColorConversionState>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        re::BucketArray<RESubscriptionHandle,4ul>::operator[](v4, i);
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v7 = *(*v2 + 40);

    return v7(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MXIColorConversionState>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0748;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MXIColorConversionState>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0748;
  a2[1] = v2;
  return a2;
}

void *re::ecs2::allocInfo_ShadowScopeService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_255, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_255))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A85C8, "ShadowScopeService");
    __cxa_guard_release(&_MergedGlobals_255);
  }

  return &unk_1EE1A85C8;
}

void re::ecs2::initInfo_ShadowScopeService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xD7F413952501E642;
  v8[1] = "ShadowScopeService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_ShadowScopeService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::ecs2::DebugRenderingSystem::willAddSystemToECSService(re::ecs2::DebugRenderingSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::service<re::AssetService>(v2);
  loadMatDefAsset((this + 392), "engine:debugPoint.rematerialdefinition", v3);
  loadMatDefAsset((this + 416), "engine:debugLine.rematerialdefinition", v3);
  loadMatDefAsset((this + 440), "engine:debugPointNoZ.rematerialdefinition", v3);

  loadMatDefAsset((this + 464), "engine:debugLineNoZ.rematerialdefinition", v3);
}

void re::ecs2::DebugRenderingSystem::update(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1[5] + 32))(a1[5], a2);
  v6 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v5);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 10);
    if (v8)
    {
      if (*(v8 + 8) == 1 && (*(v8 + 32) || *(v8 + 72) || *(v8 + 112) || *(v8 + 152)))
      {
        v9 = *(v6 + 14);
        if (v9)
        {
          v10 = re::RenderFrameBox::get((v9 + 328), 0xFFFFFFFFFFFFFFFuLL);
        }

        else
        {
          v10 = 0;
        }

        v11 = (*(*a1[5] + 32))(a1[5]);
        v12 = re::ServiceLocator::service<re::AssetService>(v11);
        tryMakeMaterialAsset((a1 + 37), (a1 + 49), v7, v12);
        tryMakeMaterialAsset((a1 + 40), (a1 + 52), v7, v12);
        tryMakeMaterialAsset((a1 + 43), (a1 + 55), v7, v12);
        tryMakeMaterialAsset((a1 + 46), (a1 + 58), v7, v12);
        v27 = *(v10 + 392);
        v13 = *(a3 + 200);
        if (v13)
        {
          v14 = *(a3 + 216);
          v15 = 8 * v13;
          do
          {
            v16 = *v14;
            v23[1] = 0;
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v23[0] = v27;
            re::DynamicArray<re::MeshScene>::setCapacity(v23, 0);
            ++v25;
            v20 = a1;
            v21 = &v27;
            v22 = v23;
            re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_0::operator()(&v20, (a1 + 40), v8 + 16);
            re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_0::operator()(&v20, (a1 + 46), v8 + 56);
            v20 = a1;
            v21 = &v27;
            v22 = v23;
            re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_1::operator()(&v20, (a1 + 37), v8 + 96);
            re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_1::operator()(&v20, (a1 + 43), v8 + 136);
            if (v24)
            {
              re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v20, v16, 0, v10);
              v19 = v20 >> 1;
              v17 = **(re::RenderFrameData::stream((v10 + 264), &v19) + 48);
              v18 = (*(v17 + 504))();
              if (v20)
              {
                if (v20)
                {
                }
              }
            }

            re::DynamicArray<re::MeshScene>::deinit(v23);
            ++v14;
            v15 -= 8;
          }

          while (v15);
        }

        *(v8 + 32) = 0;
        ++*(v8 + 40);
        *(v8 + 72) = 0;
        ++*(v8 + 80);
        *(v8 + 112) = 0;
        ++*(v8 + 120);
        *(v8 + 152) = 0;
        ++*(v8 + 160);
      }
    }
  }
}

void *re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_0::operator()(void *result, re::MaterialAsset *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16))
  {
    v3 = *(a2 + 1);
    if (v3)
    {
      v4 = result;
      v5 = *result;
      v6 = atomic_load((v3 + 896));
      if (v6 == 2)
      {
        result = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(a2);
        v8 = result[222];
        if (v8)
        {
          re::PrimitiveRenderingContext::PrimitiveRenderingContext(v21, 8uLL, *(v5 + 232));
          v39 = 0;
          v9 = *(a3 + 16);
          if (v9)
          {
            v10 = *(a3 + 32);
            v11 = v10 + (v9 << 6);
            do
            {
              v12 = re::PrimitiveRenderingContext::addLine(v21, v10, (v10 + 16));
              v13 = *(v10 + 32);
              v13.n128_u32[3] = 1.0;
              v19[0] = v13;
              re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v12, v19, &v23, &v25, v22, v27, v40);
              v19[0].n128_f32[0] = *(v10 + 48) * 0.0025;
              re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v12, v19, &v24, v26, v22, v27, v40);
              v10 += 64;
            }

            while (v10 != v11);
          }

          re::PrimitiveRenderingContext::buildMeshSceneOfLines(v21, *v4[1], v8, v19);
          v14 = v4[2];
          if (*v14)
          {
            re::DynamicArray<re::MeshScene>::add(v14, v19);
          }

          v15 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v20);
          if (v34)
          {
            if (v38)
            {
              (*(*v34 + 40))(v15);
            }

            v38 = 0;
            v35 = 0;
            v36 = 0;
            v34 = 0;
            ++v37;
          }

          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(&v33);
          if (v28)
          {
            if (v32)
            {
              (*(*v28 + 40))();
            }

            v32 = 0;
            v29 = 0;
            v30 = 0;
            v28 = 0;
            ++v31;
          }

          for (i = 122; i != 102; i -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v21[i]);
          }

          for (j = 102; j != 82; j -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v21[j]);
          }

          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v21[j]);
            j -= 5;
          }

          while (j != 62);
          for (k = 30; k != -5; k -= 5)
          {
            result = re::DynamicArray<unsigned long>::deinit(&v21[k]);
          }
        }
      }
    }
  }

  return result;
}

void *re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_1::operator()(void *result, re::MaterialAsset *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16))
  {
    v3 = *(a2 + 1);
    if (v3)
    {
      v4 = result;
      v5 = *result;
      v6 = atomic_load((v3 + 896));
      if (v6 == 2)
      {
        result = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(a2);
        v8 = result[222];
        if (v8)
        {
          re::PrimitiveRenderingContext::PrimitiveRenderingContext(v21, 8uLL, *(v5 + 232));
          v39 = 0;
          v9 = *(a3 + 16);
          if (v9)
          {
            v10 = *(a3 + 32);
            v11 = v10 + 48 * v9;
            do
            {
              v12 = re::PrimitiveRenderingContext::addPoint(v21, v10);
              v13 = *(v10 + 16);
              v13.n128_u32[3] = 1.0;
              v19[0] = v13;
              re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(1, v12, v19, &v23, &v25, v22, v27, v40);
              v19[0].n128_f32[0] = *(v10 + 32) * 0.00125;
              re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(2, v12, v19, &v24, v26, v22, v27, v40);
              v10 += 48;
            }

            while (v10 != v11);
          }

          re::PrimitiveRenderingContext::buildMeshSceneOfPoints(v21, *v4[1], v8, v19);
          v14 = v4[2];
          if (*v14)
          {
            re::DynamicArray<re::MeshScene>::add(v14, v19);
          }

          v15 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v20);
          if (v34)
          {
            if (v38)
            {
              (*(*v34 + 40))(v15);
            }

            v38 = 0;
            v35 = 0;
            v36 = 0;
            v34 = 0;
            ++v37;
          }

          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(&v33);
          if (v28)
          {
            if (v32)
            {
              (*(*v28 + 40))();
            }

            v32 = 0;
            v29 = 0;
            v30 = 0;
            v28 = 0;
            ++v31;
          }

          for (i = 122; i != 102; i -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v21[i]);
          }

          for (j = 102; j != 82; j -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v21[j]);
          }

          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v21[j]);
            j -= 5;
          }

          while (j != 62);
          for (k = 30; k != -5; k -= 5)
          {
            result = re::DynamicArray<unsigned long>::deinit(&v21[k]);
          }
        }
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_DebugRenderingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_256, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_256))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8660, "DebugRenderingSystem");
    __cxa_guard_release(&_MergedGlobals_256);
  }

  return &unk_1EE1A8660;
}

void re::ecs2::initInfo_DebugRenderingSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x8EC1A4A1877F6250;
  v8[1] = "DebugRenderingSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1E800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_DebugRenderingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DebugRenderingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DebugRenderingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DebugRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DebugRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DebugRenderingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DebugRenderingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::DebugRenderingSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 480) = 0;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF07A0;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::DebugRenderingSystem>(uint64_t a1)
{
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF07A0;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 0u;
  return result;
}

void re::ecs2::DebugRenderingSystem::~DebugRenderingSystem(re::ecs2::DebugRenderingSystem *this)
{
  *this = &unk_1F5CF07A0;
  re::AssetHandle::~AssetHandle((this + 464));
  re::AssetHandle::~AssetHandle((this + 440));
  re::AssetHandle::~AssetHandle((this + 416));
  re::AssetHandle::~AssetHandle((this + 392));
  re::AssetHandle::~AssetHandle((this + 368));
  re::AssetHandle::~AssetHandle((this + 344));
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CF07A0;
  re::AssetHandle::~AssetHandle((this + 464));
  re::AssetHandle::~AssetHandle((this + 440));
  re::AssetHandle::~AssetHandle((this + 416));
  re::AssetHandle::~AssetHandle((this + 392));
  re::AssetHandle::~AssetHandle((this + 368));
  re::AssetHandle::~AssetHandle((this + 344));
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::imagePresentationLogObjects(re *this)
{
  {
    re::imagePresentationLogObjects(void)::logObjects = os_log_create("com.apple.re", "ImagePresentation");
  }

  return &re::imagePresentationLogObjects(void)::logObjects;
}

uint64_t re::ecs2::CameraViewDescriptorsHelper::setCameraViewsRenderGraphFileProviders(re::ecs2::CameraViewDescriptorsHelper *this, re::ecs2::Entity *a2)
{
  v2 = a2;
  v114 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v5 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v5)
  {
    v6 = v5;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v49 = 0;
    if (*(v5 + 5))
    {
      v7 = *(v5 + 7);
      v46 = *(v5 + 5);
      re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(&v46, v7);
      ++v49;
      v8 = *(v6 + 7);
      if (v8 >= v48)
      {
        re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(&v46, *(v6 + 7));
        std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *>(*(v6 + 9), *(v6 + 9) + 80 * v48, v50);
        if (v48 != v8)
        {
          v11 = *(v6 + 9);
          v12 = v50;
          v13 = 80 * v48;
          v14 = 80 * v8;
          do
          {
            v15 = v12 + v13;
            re::AssetHandle::AssetHandle((v12 + v13), (v11 + v13));
            v5 = re::DynamicString::DynamicString((v12 + v13 + 24), (v11 + v13 + 24));
            v16 = *(v11 + v13 + 56);
            *(v15 + 72) = *(v11 + v13 + 72);
            *(v15 + 56) = v16;
            v14 -= 80;
            v11 += 80;
            v12 += 80;
          }

          while (v13 != v14);
        }
      }

      else
      {
        std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *>(*(v6 + 9), *(v6 + 9) + 80 * v8, v50);
        if (v8 != v48)
        {
          v9 = v50 + 80 * v8;
          v10 = 80 * v48 - 80 * v8;
          do
          {
            re::DynamicString::deinit((v9 + 24));
            re::AssetHandle::~AssetHandle(v9);
            v9 += 80;
            v10 -= 80;
          }

          while (v10);
        }
      }

      v48 = v8;
    }
  }

  else
  {
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v49 = 0;
  }

  if (v4[27])
  {
    v45 = 0;
    v17 = 0;
    *&v52 = v4;
    *&v53 = 0;
    goto LABEL_26;
  }

  v18 = v4[32];
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v2;
  }

  if (v19)
  {
    LOBYTE(v56) = 0;
    v57 = xmmword_1E30474D0;
    v70 = xmmword_1E308C680;
    v54 = 0u;
    v55 = 0u;
    *&v58 = 0x70000FF00000000;
    DWORD2(v58) = -1;
    v59 = 0;
    v60 = 0u;
    v61 = 0;
    v68 = 0;
    v69 = 0;
    v62 = 0u;
    v63 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0;
    v67 = 0;
    v71 = unk_1E308C690;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v20 = re::globalAllocators(v5);
    v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *(v21 + 4) = 0u;
    *(v21 + 5) = 0u;
    *(v21 + 6) = 0u;
    *(v21 + 7) = 0u;
    *(v21 + 8) = 0u;
    *(v21 + 9) = 0u;
    *(v21 + 10) = 0u;
    *(v21 + 11) = 0u;
    *(v21 + 12) = 0u;
    *(v21 + 13) = 0u;
    *(v21 + 14) = 0u;
    *(v21 + 15) = 0u;
    *(v21 + 16) = 0u;
    v76 = v21;
    v77 = -1;
    v78 = 1;
    v79 = 0;
    v80 = re::globalAllocators(v21)[2];
    v81 = 0;
    memset(v113, 0, 48);
    re::Pose<float>::Pose(v112, 0, 0, v113);
    v82 = *v112;
    v83 = *&v112[16];
    memset(v113, 0, 48);
    re::Pose<float>::Pose(&v52, 0, 0, v113);
    v84 = v52;
    v85 = v53;
    v86 = 0;
    v87 = xmmword_1E308B7C0;
    v88 = 0xBDCCCCCD3DCCCCCDLL;
    v89 = 0;
    v90 = xmmword_1E30476A0;
    v91 = 1;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v96 = 0;
    v97 = 0;
    v98 = xmmword_1E308B7C0;
    v99 = 0xBDCCCCCD3DCCCCCDLL;
    v100 = 0;
    v101 = xmmword_1E30476A0;
    v102 = 1;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v110 = 0;
    v109 = 0;
    v108 = 0;
    v107 = 0u;
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((v4 + 30), &v54);
    re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v54);
    v22 = v4[27];
    *&v52 = v4;
    *&v53 = 0;
    if (v22)
    {
      v17 = 0;
      v45 = 1;
      goto LABEL_26;
    }

    if (!v4[32])
    {
      goto LABEL_24;
    }

LABEL_22:
    v45 = v19;
    v17 = 1;
    goto LABEL_26;
  }

  *&v52 = v4;
  *&v53 = 0;
  if (v18)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (!v4[37])
  {
    v26 = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v45 = v19;
  v17 = 2;
LABEL_26:
  v23 = 0;
  v24 = 0;
  v25 = 0;
  DWORD2(v52) = v17;
  LODWORD(v26) = 1;
  do
  {
    v27 = (v23 + 0x20000);
    if (v17 == 1)
    {
      v23 = (v23 + 0x10000);
    }

    if (v17 == 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = v23;
    }

    ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v4, v28);
    v30 = ViewDescriptor;
    if (*(ViewDescriptor + 200))
    {
      v31 = v25;
      v32 = v4[12];
      if (v32 <= v25)
      {
        v51 = 0;
        memset(v113, 0, sizeof(v113));
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        *&v112[12] = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *&v112[14] = 789;
        *&v112[18] = 2048;
        *&v112[20] = v25;
        *&v112[28] = 2048;
        *&v112[30] = v32;
        _os_log_send_and_compose_impl(v41, &v51, v113, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v46, v47);
        _os_crash_msg();
        __break(1u);
LABEL_53:
        *v112 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v113[0].i32[0] = 136315906;
        *(v113[0].i64 + 4) = "operator[]";
        v113[0].i16[6] = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        *(&v113[0].i32[3] + 2) = 789;
        v113[1].i16[1] = 2048;
        *(v113[1].i64 + 4) = v31;
        v113[1].i16[6] = 2048;
        *(&v113[1].i64[1] + 6) = v32;
        _os_log_send_and_compose_impl(v44, v112, &v54, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113[0].i8, 38, v46, v47);
        _os_crash_msg();
        __break(1u);
      }

      v33 = 0;
      ++v25;
      v34 = v4[14] + 3120 * v31;
      do
      {
        v35 = re::CameraView::CameraView((&v54 + v33), (v34 + v33));
        v33 += 1552;
      }

      while (v33 != 3104);
      v111[488] = *(v34 + 3104);
      re::DynamicArray<re::RenderGraphFileProvider>::operator=(v111, &v95);
      do
      {
        re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v54 + v33 - 368);
        re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v54 + v33 - 928);
        re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v54 + v33 - 976);
        re::DynamicString::deinit((&v54 + v33 - 1552));
        v33 -= 1552;
      }

      while (v33);
    }

    else
    {
      v31 = v24;
      v32 = v4[7];
      if (v32 <= v24)
      {
        goto LABEL_53;
      }

      ++v24;
      v37 = v4[9] + 1552 * v31;
    }

    v26 = v26 & v36;
    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v52);
    v17 = DWORD2(v52);
    v23 = v53;
  }

  while (v52 != v4 || DWORD2(v52) != 3 || v53);
  if (v45)
  {
LABEL_45:
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((v4 + 30));
  }

LABEL_46:
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(&v46);
  return v26;
}

uint64_t anonymous namespace::setRenderGraphFileProviders(uint64_t a1, re::RenderGraphAsset *a2, uint64_t a3, re::Allocator *a4)
{
  re::DynamicArray<re::RenderGraphFileProvider>::clear(a1 + 576);
  re::DynamicArray<re::RenderGraphFileProvider>::setCapacity((a1 + 576), *(a3 + 16) + 1);
  if (*(a2 + 1))
  {
    v8 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>(a2);
    if (v8)
    {
      v9 = v8 + 8;
      re::DynamicString::DynamicString(&v24, "Camera", a4);
      v23 = v9;
      v26 = 0;
      re::DynamicArray<re::RenderGraphFileProvider>::add((a1 + 576), &v23);
      if (v24)
      {
        if (v25)
        {
          (*(*v24 + 40))();
        }
      }
    }
  }

  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *(a3 + 32);
    v13 = 80 * v10;
    v14 = 1;
    do
    {
      v15 = (v12 + v11);
      if ((*(v12 + v11 + 72) & 1) == 0)
      {
        v16 = *(v15 + 1);
        if (v16 && (v17 = atomic_load((v16 + 896)), v17 == 2))
        {
          ++*(*(v15 + 1) + 276);
          v18 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>(v15);
          v19 = v12 + v11;
          if (*(v12 + v11 + 32))
          {
            v20 = *(v19 + 40);
          }

          else
          {
            v20 = (v19 + 33);
          }

          v21 = v18 + 8;
          v23 = 0;
          re::DynamicString::DynamicString(&v24, v20, a4);
          v23 = v21;
          v26 = *(v12 + v11 + 56);
          re::DynamicArray<re::RenderGraphFileProvider>::add((a1 + 576), &v23);
          if (v24 && (v25 & 1) != 0)
          {
            (*(*v24 + 40))();
          }
        }

        else
        {
          re::AssetHandle::loadAsync(v15);
          v14 = 0;
        }
      }

      v11 += 80;
    }

    while (v13 != v11);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t re::ecs2::CameraViewDescriptorsHelper::buildCameraViews<re::ecs2::PerspectiveCameraComponent>(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, re::Allocator *a5, uint64_t a6, unint64_t a7)
{
  v7 = a6;
  v8 = a2;
  v96 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v7 = a2[2];
  }

  if (a2[27])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = (v8[29] + 960 * v9);
      v12 = v11[1];
      if (v12)
      {
        v13 = atomic_load((v12 + 896));
        if (v13 != 2)
        {
          re::AssetHandle::loadAsync((v8[29] + 960 * v9));
          v10 = 0;
        }
      }

      if (v11[116])
      {
        v14 = 0;
        while (2)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = v11[116];
            if (v17 <= v14)
            {
              v82[0] = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              v8 = MEMORY[0x1E69E9C10];
              *v93 = 136315906;
              *&v93[4] = "operator[]";
              *&v93[12] = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v22 = 3;
              }

              else
              {
                v22 = 2;
              }

              *&v93[14] = 797;
              *&v93[18] = 2048;
              *&v93[20] = v14;
              v94 = 2048;
              *v95 = v17;
              _os_log_send_and_compose_impl(v22, v82, &v88, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v65, v66);
              _os_crash_msg();
              __break(1u);
              goto LABEL_23;
            }

            v18 = v16;
            v19 = v11[118] + 136 * v14 + 24 * v15;
            v20 = *(v19 + 40);
            if (v20)
            {
              v21 = atomic_load((v20 + 896));
              if (v21 != 2)
              {
                re::AssetHandle::loadAsync((v19 + 32));
                v10 = 0;
              }
            }

            v16 = 0;
            v15 = 1;
          }

          while ((v18 & 1) != 0);
          if (v11[116] > ++v14)
          {
            continue;
          }

          break;
        }
      }

      ++v9;
    }

    while (v8[27] > v9);
  }

  else
  {
LABEL_23:
    v10 = 1;
  }

  if (v8[37])
  {
    v23 = 0;
    do
    {
      v24 = (v8[39] + 1008 * v23);
      v25 = v24[1];
      if (v25)
      {
        v26 = atomic_load((v25 + 896));
        if (v26 != 2)
        {
          re::AssetHandle::loadAsync((v8[39] + 1008 * v23));
          v10 = 0;
        }
      }

      if (v24[116])
      {
        v27 = 0;
        while (2)
        {
          v28 = 0;
          v29 = 1;
          do
          {
            v30 = v24[116];
            if (v30 <= v27)
            {
              v82[0] = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              v38 = MEMORY[0x1E69E9C10];
              v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v93 = 136315906;
              *&v93[4] = "operator[]";
              *&v93[12] = 1024;
              if (v39)
              {
                v40 = 3;
              }

              else
              {
                v40 = 2;
              }

              *&v93[14] = 797;
              *&v93[18] = 2048;
              *&v93[20] = v27;
              v94 = 2048;
              *v95 = v30;
              _os_log_send_and_compose_impl(v40, v82, &v88, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v65, v66);
              _os_crash_msg();
              __break(1u);
              return 1;
            }

            v31 = v29;
            v32 = v24[118] + 136 * v27 + 24 * v28;
            v33 = *(v32 + 40);
            if (v33)
            {
              v34 = atomic_load((v33 + 896));
              if (v34 != 2)
              {
                re::AssetHandle::loadAsync((v32 + 32));
                v10 = 0;
              }
            }

            v29 = 0;
            v28 = 1;
          }

          while ((v31 & 1) != 0);
          if (v24[116] > ++v27)
          {
            continue;
          }

          break;
        }
      }

      ++v23;
    }

    while (v8[37] > v23);
  }

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  *&v95[2] = 0;
  memset(v93, 0, sizeof(v93));
  v35 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v86 = 0;
  v87 = 0;
  re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(v8, &v87, &v86);
  v85 = 0;
  v82[1] = 0;
  v83 = 0;
  v84 = 0;
  v82[0] = a5;
  re::DynamicArray<re::CameraView>::setCapacity(v82, v87);
  ++v84;
  v81 = 0;
  v78[1] = 0;
  v79 = 0;
  v80 = 0;
  v78[0] = a5;
  re::DynamicArray<re::CameraMultiView>::setCapacity(v78, v86);
  ++v80;
  v77 = 0;
  v75[1] = 0;
  v75[2] = 0;
  v76 = 0;
  v75[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v75, v87);
  ++v76;
  v74 = 0;
  v72[1] = 0;
  v72[2] = 0;
  v73 = 0;
  v72[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v72, v86);
  v36 = 0;
  ++v73;
  if (v35)
  {
    v37 = (v35 + 40);
  }

  else
  {
    v37 = v93;
  }

  *&v88 = v8;
  *&v89 = 0;
  if (!v8[27])
  {
    if (v8[32])
    {
      v36 = 1;
    }

    else
    {
      if (!v8[37])
      {
        v43 = 1;
LABEL_70:
        if ((a3 & 1) == 0)
        {
          re::ecs2::CameraViewDescriptor::CameraViewDescriptor(&v88);
          re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((v8 + 30), &v88);
          if (*(a4 + 44) == 1)
          {
            v50 = v85 + 1552 * v83;
            v51 = *(a1 + 112);
            if (v51)
            {
              v52 = re::DrawingManager::layerAspect(v51, 0, v49);
            }

            else
            {
              v52 = 1.0;
            }

            re::Projection::setAspect((v50 - 1488), *(a4 + 40) != 0, v52);
          }

          re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((v8 + 30));
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v88);
        }

        goto LABEL_82;
      }

      v36 = 2;
    }
  }

  v42 = 0;
  DWORD2(v88) = v36;
  v43 = 1;
  do
  {
    v44 = v42 + 0x20000;
    if (v36 == 1)
    {
      v42 += 0x10000;
    }

    if (v36 == 2)
    {
      v45 = v44;
    }

    else
    {
      v45 = v42;
    }

    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v88);
    v36 = DWORD2(v88);
    v42 = v89;
  }

  while (v88 != v8 || DWORD2(v88) != 3 || v89 != 0);
  v48 = v8[27];
  if (v48 == 1)
  {
    if (!v8[32] && !*(v8[29] + 928))
    {
      ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, 0);
      v55 = v83 ? v85 + 1552 * v83 - 1552 : v81 + 3120 * v79 - 3120;
      if (*(a4 + 44) == 1)
      {
        LODWORD(v54) = *(ViewDescriptor + 212);
        v61 = *(ViewDescriptor + 216);
        v62 = *(a1 + 112);
        v63 = *&v54 / v61;
        if (v62)
        {
          v64 = re::DrawingManager::layerAspect(v62, 0, v54);
        }

        else
        {
          v64 = 1.0;
        }

        re::Projection::setAspect((v55 + 64), *(a4 + 40) != 0, v63 * v64);
      }
    }

    goto LABEL_82;
  }

  if (!v48 && !v8[32])
  {
    goto LABEL_70;
  }

LABEL_82:
  if (v8[37])
  {
    v56 = 0;
    v57 = 960;
    do
    {
      v58 = v8[39];
      v59 = re::RenderFrameBox::get((*(a1 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
      re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((v59 + 4056), v58 + v57);
      ++v56;
      v57 += 1008;
    }

    while (v8[37] > v56);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 5), v82);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 10), v78);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 15), v75);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 20), v72);
  if (v43)
  {
    v41 = 0;
  }

  else
  {
    v41 = 2;
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v72);
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v75);
  re::DynamicArray<re::CameraMultiView>::deinit(v78);
  re::DynamicArray<re::CameraView>::deinit(v82);
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(v93);
  return v41;
}

uint64_t anonymous namespace::buildOneCameraView<re::ecs2::PerspectiveCameraComponent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, re::Allocator *a10, re::ecs2::Entity *a11, unint64_t a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v115 = v14;
  v118 = v15;
  v17 = v16;
  v19 = v18;
  v20 = v13;
  v126 = v21;
  v122 = v22;
  v23 = a11;
  v210 = *MEMORY[0x1E69E9840];
  v128 = v12;
  if (!a11)
  {
    v23 = *(v13 + 2);
  }

  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v13, v12);
  v24 = *(ViewDescriptor + 200);
  re::CameraView::CameraView(&v135, a10);
  re::CameraView::CameraView(v129, a10);
  re::CameraView::CameraView(&v132, a10);
  v134 = 2;
  v138 = 0;
  v137 = 0;
  v140 = 0x3F80000000000000;
  v139 = 0;
  v26 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  v27 = re::s_debugSettingsManager;
  if (!re::s_debugSettingsManager)
  {
    v30 = 0;
    goto LABEL_33;
  }

  *&v195 = 0x357E83F318327498;
  *(&v195 + 1) = "overrides:msaasamplecount";
  *v192 = 0;
  v28 = re::DebugSettingsManager::getWithErrorCode<int>(re::s_debugSettingsManager, &v195, v192);
  if (v28)
  {
    v29 = v195;
    if (v195)
    {
      v29 = v195;
      if (v195)
      {
      }
    }

    v30 = 0;
    v119 = v29;
  }

  else
  {
    v119 = *v192;
    v31 = *v192;
    if (v195)
    {
      if (v195)
      {
      }
    }

    v32 = [*(v122 + 26) supportsTextureSampleCount:v31];
    if (v32)
    {
      v30 = 1;
    }

    else
    {
      v33 = *re::graphicsLogObjects(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v195) = 67109120;
        DWORD1(v195) = v119;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "This GPU does not support MSAA sample count of: '%d'", &v195, 8u);
      }

      v30 = 0;
    }
  }

  *&v195 = 0x38BDA0FDF1630EF8;
  *(&v195 + 1) = "overrides:enablemsaa";
  v192[0] = 0;
  v34 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v27, &v195, v192);
  if (!v34)
  {
    v35 = v192[0];
    if (v195)
    {
      if (v195)
      {
      }
    }

    if (v35)
    {
      if (v119 == 1)
      {
        v36 = v30;
      }

      else
      {
        v36 = 0;
      }

      if (v36 != 1)
      {
        goto LABEL_34;
      }

      v37 = *re::graphicsLogObjects(v34);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v195) = 0;
        _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "MSAA is enabled but will have no effect as sample count is overridden to '1'", &v195, 2u);
      }
    }

    v30 = 1;
    LODWORD(v26) = 1;
LABEL_33:
    v119 = v26;
    goto LABEL_34;
  }

  if (v195)
  {
    if (v195)
    {
    }
  }

LABEL_34:
  v38 = v192;
  if (v24)
  {
    v39 = *(v17 + 2);
    if (*(v20 + 22) <= v39 || !re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v20 + 24) + 960 * v39)))
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v118, ViewDescriptor);
      if (!v30)
      {
LABEL_45:
        v43 = ViewDescriptor;
        re::DynamicArray<re::RenderGraphFileProvider>::operator=(v133, v130);
        goto LABEL_55;
      }

LABEL_44:
      v131 = v119;
      v133[34] = v119;
      goto LABEL_45;
    }

    v116 = v19;
    v38 = *(v20 + 12);
    if (v38 <= v39)
    {
      goto LABEL_162;
    }

    v40 = *(v20 + 14) + 3120 * v39;
    v41 = v129;
    v42 = 2;
    v27 = v40;
    do
    {
      re::CameraView::operator=(v41, v27);
      v27 += 194;
      v41 += 1552;
      --v42;
    }

    while (v42);
    v134 = *(v40 + 3104);
    v38 = *(v20 + 22);
    if (v38 > v39)
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v118, (*(v20 + 24) + 960 * v39));
      v19 = v116;
      v38 = v192;
      if (!v30)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_166:
    v127[0] = 0;
    v199 = 0u;
    v198 = 0u;
    v197 = 0u;
    v196 = 0u;
    v195 = 0u;
    v103 = MEMORY[0x1E69E9C10];
    v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v192 = 136315906;
    *&v192[4] = "operator[]";
    *&v192[12] = 1024;
    if (v104)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }

    *&v192[14] = 789;
    *&v192[18] = 2048;
    *&v192[20] = v39;
    v193 = 2048;
    v194 = v38;
    _os_log_send_and_compose_impl(v105, v127, &v195, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v112, v113);
    _os_crash_msg();
    __break(1u);
    goto LABEL_170;
  }

  v38 = *(v19 + 2);
  if (*(v20 + 17) > v38 && re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v20 + 19) + 960 * v38)))
  {
    v27 = *(v20 + 7);
    if (v27 <= v38)
    {
LABEL_170:
      v127[0] = 0;
      v199 = 0u;
      v198 = 0u;
      v197 = 0u;
      v196 = 0u;
      v195 = 0u;
      v106 = MEMORY[0x1E69E9C10];
      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v107)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      *&v192[14] = 789;
      *&v192[18] = 2048;
      *&v192[20] = v38;
      v193 = 2048;
      v194 = v27;
      _os_log_send_and_compose_impl(v108, v127, &v195, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v112, v113);
      _os_crash_msg();
      __break(1u);
LABEL_174:
      v127[0] = 0;
      v199 = 0u;
      v198 = 0u;
      v197 = 0u;
      v196 = 0u;
      v195 = 0u;
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *&v192[14] = 789;
      *&v192[18] = 2048;
      *&v192[20] = v38;
      v193 = 2048;
      v194 = v27;
      _os_log_send_and_compose_impl(v111, v127, &v195, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v112, v113);
      _os_crash_msg();
      __break(1u);
    }

    re::CameraView::operator=(&v135, *(v20 + 9) + 1552 * v38);
    v27 = *(v20 + 17);
    if (v27 <= v38)
    {
      goto LABEL_174;
    }

    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v115, (*(v20 + 19) + 960 * v38));
  }

  else
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v115, ViewDescriptor);
  }

  v38 = v192;
  if (v30)
  {
    v172[22] = v119;
  }

  v43 = ViewDescriptor;
LABEL_55:
  *v192 = v122;
  *&v192[8] = 0;
  *&v192[16] = &v128;
  if (!*(v43 + 200))
  {
    re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v195, v20, v128, v23, a10, 0);
    re::DynamicString::operator=(&v135, &v195);
    if (v195 && (BYTE8(v195) & 1) != 0)
    {
      (*(*v195 + 40))();
    }

    re::ecs2::PerspectiveCameraComponent::calculateProjection(v126, &v195, 1.0);
    v176 = v197;
    v177 = v198;
    v178 = v199;
    v175 = v196;
    v174 = v195;
    if (v179)
    {
      v71 = ViewDescriptor;
      if ((v200 & 1) == 0)
      {
        v179 = 0;
        goto LABEL_102;
      }
    }

    else
    {
      v71 = ViewDescriptor;
      if ((v200 & 1) == 0)
      {
        goto LABEL_102;
      }

      v179 = 1;
    }

    v180 = v201;
    v181 = v202;
    v182 = v203;
    v183 = v204;
LABEL_102:
    if (v184)
    {
      if ((v205 & 1) == 0)
      {
        v184 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      if ((v205 & 1) == 0)
      {
        goto LABEL_108;
      }

      v184 = 1;
    }

    v185 = v206;
    v186 = v207;
    v187 = v208;
    v188 = v209;
LABEL_108:
    v189 = *(v71 + 204);
    re::ecs2::PerspectiveCameraComponent::calculateProjection(v126, &v195, 1.0);
    v143 = v197;
    v144 = v198;
    v145 = v199;
    v142 = v196;
    v141 = v195;
    if (v146)
    {
      if (v200)
      {
        v147 = v201;
        v148 = v202;
        v149 = v203;
        v150 = v204;
        v72 = 1;
      }

      else
      {
        v72 = 0;
        v146 = 0;
      }
    }

    else if (v200)
    {
      v72 = 1;
      v146 = 1;
      v147 = v201;
      v148 = v202;
      v149 = v203;
      v150 = v204;
    }

    else
    {
      v72 = 0;
    }

    if (v151)
    {
      if (v205)
      {
        v152 = v206;
        v153 = v207;
        v154 = v208;
        v155 = v209;
        v73 = 1;
      }

      else
      {
        v73 = 0;
        v151 = 0;
      }
    }

    else if (v205)
    {
      v73 = 1;
      v151 = 1;
      v152 = v206;
      v153 = v207;
      v154 = v208;
      v155 = v209;
    }

    else
    {
      v73 = 0;
    }

    v190 = xmmword_1E3063230;
    v158 = v143;
    v159 = v144;
    v160 = v145;
    v157 = v142;
    v156 = v141;
    if (v161)
    {
      if ((v72 & 1) == 0)
      {
        v161 = 0;
        goto LABEL_128;
      }
    }

    else
    {
      if ((v72 & 1) == 0)
      {
        goto LABEL_128;
      }

      v161 = 1;
    }

    v162 = v147;
    v163 = v148;
    v164 = v149;
    v165 = v150;
LABEL_128:
    if (v166)
    {
      if ((v73 & 1) == 0)
      {
        v166 = 0;
LABEL_134:
        v173 = v128;
        re::DynamicArray<re::CameraView>::add(v19, &v135);
        v75 = ViewDescriptor;
        if (!*(ViewDescriptor + 116))
        {
          goto LABEL_155;
        }

        v39 = 0;
        v76 = 0;
        v77 = *(v19 + 4) + 1552 * *(v19 + 2);
        v124 = (v77 - 1552);
        v78 = (v77 - 384);
        v79 = (v77 - 1488);
        v80 = (v77 - 1216);
        v121 = (v77 - 851);
        v27 = &selRef_childNodes;
        while (1)
        {
          v81 = *(v75 + 53);
          v82 = *(v75 + 54);
          v83 = *(v75 + 118);
          v84 = v83 + v39;
          if (*(v83 + v39 + 40))
          {
            v85 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v84 + 32));
            if (*(v85 + 120))
            {
LABEL_161:
              std::__throw_bad_variant_access[abi:nn200100]();
LABEL_162:
              v127[0] = 0;
              v199 = 0u;
              v198 = 0u;
              v197 = 0u;
              v196 = 0u;
              v195 = 0u;
              v100 = MEMORY[0x1E69E9C10];
              v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v192 = 136315906;
              *&v192[4] = "operator[]";
              *&v192[12] = 1024;
              if (v101)
              {
                v102 = 3;
              }

              else
              {
                v102 = 2;
              }

              *&v192[14] = 789;
              *&v192[18] = 2048;
              *&v192[20] = v39;
              v193 = 2048;
              v194 = v38;
              _os_log_send_and_compose_impl(v102, v127, &v195, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v112, v113);
              _os_crash_msg();
              __break(1u);
              goto LABEL_166;
            }

            v86 = *(v85 + 112);
            v87 = [v86 width];
            *&v74 = [v86 height];
            v88 = v87 / *&v74;
            if (v86)
            {
            }
          }

          else
          {
            v89 = *(v84 + 80);
            if (v89 == -1)
            {
              v91 = v83 + v39;
              v92 = *(v83 + v39 + 88);
              if (v92)
              {
                v93 = [v92 width];
                v94 = *(v91 + 88);
                goto LABEL_147;
              }

              v95 = *(v91 + 104);
              if (v95)
              {
                v93 = [v95 width];
                v94 = *(v91 + 104);
LABEL_147:
                v96 = [v94 height];
                re::ecs2::PerspectiveCameraComponent::localEyePose(v126, *v78, &v195);
                v38 = a12;
                if (a12 && !*(a12 + 24))
                {
                  re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v195, *v78, v124);
                  *v121 = *(a12 + 28);
                }

                *&v74 = v93;
                v88 = v93 / v96;
                goto LABEL_152;
              }

LABEL_151:
              v88 = 1.0;
              goto LABEL_152;
            }

            v90 = *(v122 + 14);
            if (!v90)
            {
              goto LABEL_151;
            }

            *&v74 = re::DrawingManager::layerAspect(v90, v89, v74);
            v88 = *&v74;
          }

LABEL_152:
          if (*(v126 + 44) == 1)
          {
            v97 = (v81 / v82) * v88;
            re::Projection::setAspect(v79, *(v126 + 40) != 0, v97);
            *&v74 = re::Projection::setAspect(v80, *(v126 + 40) != 0, v97);
          }

          ++v76;
          v75 = ViewDescriptor;
          v39 += 136;
          if (*(ViewDescriptor + 116) <= v76)
          {
            goto LABEL_155;
          }
        }
      }
    }

    else
    {
      if ((v73 & 1) == 0)
      {
        goto LABEL_134;
      }

      v166 = 1;
    }

    v167 = v152;
    v168 = v153;
    v169 = v154;
    v170 = v155;
    goto LABEL_134;
  }

  re::DynamicArray<re::CameraMultiView>::add(v17, v129);
  v27 = (*(v17 + 4) + 3120 * *(v17 + 2));
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v195, v20, v128, v23, a10, 0);
  v114 = (v27 - 390);
  re::DynamicString::operator=((v27 - 390), &v195);
  if (v195 && (BYTE8(v195) & 1) != 0)
  {
    (*(*v195 + 40))();
  }

  v113 = ViewDescriptor + 204;
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(&v195, v20, v128, v23, a10, 1);
  re::DynamicString::operator=((v27 - 196), &v195);
  if (v195 && (BYTE8(v195) & 1) != 0)
  {
    (*(*v195 + 40))();
  }

  v44 = ViewDescriptor;
  v45 = 0;
  v46 = *(ViewDescriptor + 116);
  v47 = 1;
  do
  {
    v48 = v47;
    if (!v46)
    {
      goto LABEL_91;
    }

    v117 = v47;
    v38 = 0;
    v49 = 8 * v45;
    v50 = v114 + 1552 * v45;
    v51 = 4 * v45 + 80;
    v123 = (24 * v45);
    v39 = 32;
    v52 = &v113[16 * v45];
    do
    {
      v53 = *(v52 + 2);
      v54 = *(v52 + 3);
      v55 = *(v44 + 118);
      re::AssetHandle::AssetHandle(v127, (v123 + v55 + v39));
      if (*(v27 - 16) == 1)
      {
        re::AssetHandle::operator=(v127, (v55 + v39));
      }

      v57 = v53 / v54;
      if (v127[1])
      {
        v58 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v127);
        if (*(v58 + 120))
        {
          goto LABEL_161;
        }

        v59 = *(v58 + 112);
        v60 = [v59 width];
        v61 = v60 / [v59 height];
        v62 = [v59 arrayLength];
        if (v59)
        {
        }

LABEL_83:
        if (*(v27 - 16) == 1 && v62 >= 2)
        {
          *(v27 - 15) = 1;
          v57 = *(v52 + 2) / *(v52 + 3);
          if (([*(v122 + 26) supportsTexture2DMultisampleArray] & 1) == 0)
          {
            *(v50 + 712) = 1;
          }
        }

        goto LABEL_87;
      }

      v63 = *(v55 + v51);
      if (v63 == -1)
      {
        v65 = v55 + v49;
        v66 = *(v65 + 88);
        if (v66)
        {
          v120 = [v66 width];
          v67 = [*(v65 + 88) height];
          v68 = *(v65 + 88);
        }

        else
        {
          v69 = *(v65 + 104);
          if (!v69)
          {
            goto LABEL_89;
          }

          v120 = [v69 width];
          v67 = [*(v65 + 104) height];
          v68 = *(v65 + 104);
        }

        v62 = [v68 arrayLength];
        re::ecs2::PerspectiveCameraComponent::localEyePose(v126, *(v50 + 1168), &v195);
        if (a12 && !*(a12 + 24))
        {
          re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v195, *(v50 + 1168), v50);
          *(v50 + 701) = *(a12 + 28);
        }

        v61 = v120 / v67;
        goto LABEL_83;
      }

      v64 = *(v122 + 14);
      if (v64)
      {
        v61 = re::DrawingManager::layerAspect(v64, v63, v56);
      }

      else
      {
        v61 = 1.0;
      }

LABEL_87:
      if (*(v126 + 44) == 1)
      {
        v70 = v61 * v57;
        re::Projection::setAspect((v50 + 64), *(v126 + 40) != 0, v70);
        re::Projection::setAspect((v50 + 336), *(v126 + 40) != 0, v70);
      }

LABEL_89:
      re::AssetHandle::~AssetHandle(v127);
      ++v38;
      v44 = ViewDescriptor;
      v46 = *(ViewDescriptor + 116);
      v49 += 136;
      v51 += 136;
      v39 += 136;
    }

    while (v46 > v38);
    v48 = v117;
LABEL_91:
    v47 = 0;
    v45 = 1;
  }

  while ((v48 & 1) != 0);
LABEL_155:
  v98 = 3104;
  do
  {
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v129[v98 - 368]);
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v129[v98 - 928]);
    re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v129[v98 - 976]);
    re::DynamicString::deinit(&v129[v98 - 1552]);
    v98 -= 1552;
  }

  while (v98);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v191);
  re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v172);
  re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v171);
  if (v135 && (v136 & 1) != 0)
  {
    (*(*v135 + 40))();
  }

  return HIDWORD(v112);
}