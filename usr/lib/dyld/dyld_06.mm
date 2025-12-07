void dyld4::RuntimeState::removeLoaders(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *a2;
    v5 = 8 * v2;
    do
    {
      v6 = *v4;
      v7 = *(*v4 + 2);
      if ((v7 & 0x42) == 0)
      {
        if (v7)
        {
          dyld4::Loader::unmap(*v4, result, 0);
        }

        else if ((*(v6 + 42) & 0x20) == 0)
        {
          dyld4::Loader::unmap(*v4, result, 0);
          *v6 = 2053923954;
          lsl::Allocator::free(result[2], v6);
        }
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }
}

size_t ___ZN5dyld412RuntimeState12notifyDtraceERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEE_block_invoke(void *a1, unsigned int a2)
{
  v3 = a1[5];
  v4 = a1[6] + 80 * *a1[6];
  v6 = a1[7];
  v5 = a1[8];
  v7 = v6 + a2;
  *(v4 + 72) = v7;
  *(v4 + 80) = v7;
  v8 = dyld4::Loader::leafName(v5, v3);
  result = strlcpy((v4 + 8), v8, 0x40uLL);
  ++*a1[6];
  if ((*(a1[8] + 4) & 0x20) == 0)
  {
    *(*(a1[4] + 8) + 24) = 1;
  }

  return result;
}

void dyld4::RuntimeState::notifyDebuggerUnload(const dyld4::RuntimeState *a1, uint64_t *a2)
{
  memset(v21, 0, sizeof(v21));
  v4 = __stackAllocatorInternal(v21, 272);
  __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11, v20[0]);
  v13 = v20 - ((v12 + 23) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  if (!v14)
  {
    ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
  }

  v15 = 0;
  v16 = *a2;
  v17 = 8 * v14;
  do
  {
    Address = dyld4::Loader::loadAddress(*(v16 + 8 * v15), a1);
    if (v14 == v15)
    {
      ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
    }

    v19 = v15 + 1;
    *&v13[8 * v15++] = Address;
    v17 -= 8;
  }

  while (v17);
  v20[0] = v13;
  v20[1] = v19;
  dyld4::ExternallyViewableState::removeImages(*(a1 + 77), *(a1 + 2), v4, v20);
  if (*(*(a1 + 1) + 220))
  {
    dyld4::ExternallyViewableState::removeRosettaImages(*(a1 + 77), v20);
  }

  lsl::Allocator::~Allocator(v4);
}

uint64_t ___ZN5dyld412RuntimeState12notifyUnloadERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 96);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 95);
    v5 = &v4[v2];
    do
    {
      v26[0] = *v4;
      v6 = *(v3 + 40);
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *v6;
        v9 = 8 * v7;
        do
        {
          v10 = *v8;
          Address = dyld4::Loader::loadAddress(*v8, v1);
          LODWORD(v19[0]) = 520552476;
          v19[1] = Address;
          v19[2] = 0;
          v19[3] = (v26[0] != 0);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          dyld3::ScopedTimer::startTimer(v19, v11, v12, v13, v14, v15, v16, v17);
          if (*(*(v1 + 1) + 325) == 1)
          {
            dyld4::RuntimeState::log(v1, "remove notifier %p called with mh=%p\n", v26[0], Address);
          }

          if ((*(v10 + 2) & 2) != 0)
          {
            dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>::operator()<dyld3::MachOLoaded const*&,unsigned long const&>(v26, &Address, (*(v1 + 1) + 392));
          }

          else
          {
            Slide = dyld3::MachOLoaded::getSlide(Address);
            dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>::operator()<dyld3::MachOLoaded const*&,long>(v26, &Address, &Slide);
          }

          result = dyld3::ScopedTimer::endTimer(v19);
          ++v8;
          v9 -= 8;
        }

        while (v9);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t dyld4::ReadOnlyCallback<void (*)(char const*,mach_header const*)>::operator()<char const*,dyld3::MachOLoaded const*>(lsl::MemoryManager *a1, void *a2, void *a3)
{
  v13 = lsl::MemoryManager::memoryManager(a1);
  result = *(v13 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v6, v7, v8, v9, v10, v11, v12, v29);
    if (result)
    {
      v21 = *(v13 + 6);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 0x40000000;
      v31[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPKcPK11mach_headerEEclIJS5_PKN5dyld311MachOLoadedEEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESN__block_invoke;
      v31[3] = &__block_descriptor_tmp_197;
      v31[4] = a1;
      v31[5] = a2;
      v31[6] = a3;
      return lsl::ProtectedStack::withNestedRegularStack(v21, v31, v15, v16, v17, v18, v19, v20, v30);
    }
  }

  if (*(v13 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v25 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v25 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v26 = MEMORY[0xFFFFFC0D8];
          if (v26 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v27 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v27 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v28 = MEMORY[0xFFFFFC0D0];
                  if (v28 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v22 = *a1;
  v23 = *a2;
  v24 = *a3;

  return v22(v23, v24);
}

const dyld4::RuntimeState *___ZN5dyld412RuntimeState12notifyUnloadERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEE_block_invoke_2(const dyld4::RuntimeState *result)
{
  v1 = *(result + 5);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(result + 4);
    v4 = *v1;
    v5 = *v1 + 8 * v2;
    do
    {
      v6 = *v4;
      v7 = *(v3 + 6);
      if (v7)
      {
        v8 = *(v3 + 5);
        v9 = 8 * v7;
        v10 = v8;
        while (v6 != *v10)
        {
          ++v10;
          ++v8;
          v9 -= 8;
          if (!v9)
          {
            goto LABEL_9;
          }
        }

        lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::erase(v3 + 32, v10);
      }

LABEL_9:
      result = dyld4::RuntimeState::removeDynamicDependencies(v3, v6);
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

const dyld4::RuntimeState *dyld4::RuntimeState::removeDynamicDependencies(const dyld4::RuntimeState *this, const dyld4::Loader *a2)
{
  v3 = this;
  v4 = *(this + 115);
  v5 = *(this + 116);
  v6 = v4 + 16 * v5;
  v7 = v4;
  if (v5)
  {
    v8 = 16 * v5;
    v7 = *(this + 115);
    while (*v7 != a2 && *(v7 + 8) != a2)
    {
      v7 += 16;
      v8 -= 16;
      if (!v8)
      {
        v7 = v4 + 16 * v5;
        goto LABEL_20;
      }
    }
  }

  v10 = v7 + 16;
  if (v7 != v6 && v10 != v6)
  {
    do
    {
      if (*v10 != a2 && *(v10 + 8) != a2)
      {
        *v7 = *v10;
        v7 += 16;
      }

      v10 += 16;
    }

    while (v10 != v6);
    v4 = *(this + 115);
    v5 = *(this + 116);
  }

LABEL_20:
  v13 = v4 + 16 * v5;
  if (v7 != v13)
  {
    *(this + 116) = v5 - ((v13 - v7) >> 4);
  }

  if (*(this + 52))
  {
    v14 = dyld4::Loader::analyzer(a2, this);
    if ((dyld3::MachOFile::hasWeakDefs(v14) & 1) != 0 || (this = dyld3::MachOFile::usesWeakDefs(v14), this))
    {
      this = dyld3::MachOFile::mappedSize(v14);
      v15 = *(v3 + 52);
      v16 = *(v15 + 72);
      if (v16)
      {
        v17 = this + v14;
        v18 = (*(v15 + 56) + 8);
        v19 = 24 * v16;
        do
        {
          if (*v18 == a2)
          {
            *v18 = 0;
          }

          v20 = *(v18 - 1);
          if (v20 >= v14 && v20 < v17)
          {
            this = lsl::Allocator::strdup(*(v3 + 2), v20);
            *(v18 - 1) = this;
          }

          v18 += 3;
          v19 -= 24;
        }

        while (v19);
      }
    }
  }

  return this;
}

unint64_t dyld4::RuntimeState::setDyldPatchedObjCClasses(unint64_t this)
{
  if (*(this + 1114) == 1)
  {
    v1 = (this + 160);
    this = (***(this + 160))(*(this + 160));
    if (this >= 3)
    {

      return dyld4::LibSystemHelpersWrapper::setDyldPatchedObjCClasses(v1);
    }
  }

  return this;
}

uint64_t dyld4::ReadOnlyCallback<void (*)(mach_header const*,void *,mach_header const*,void const*)>::operator()<mach_header const* const&,void *,mach_header const* const&,void const*>(lsl::MemoryManager *a1, void *a2, void *a3, void *a4, void *a5)
{
  v17 = lsl::MemoryManager::memoryManager(a1);
  result = *(v17 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v10, v11, v12, v13, v14, v15, v16, v35);
    if (result)
    {
      v25 = *(v17 + 6);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 0x40000000;
      v37[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerPvS6_PKvEEclIJRKS6_S7_SF_S9_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke;
      v37[3] = &__block_descriptor_tmp_199;
      v37[4] = a1;
      v37[5] = a2;
      v37[6] = a3;
      v37[7] = a4;
      v37[8] = a5;
      return lsl::ProtectedStack::withNestedRegularStack(v25, v37, v19, v20, v21, v22, v23, v24, v36);
    }
  }

  if (*(v17 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v31 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v31 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v32 = MEMORY[0xFFFFFC0D8];
          if (v32 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4, *a5);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v33 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v33 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v34 = MEMORY[0xFFFFFC0D0];
                  if (v34 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v26 = *a1;
  v27 = *a2;
  v28 = *a3;
  v29 = *a4;
  v30 = *a5;

  return v26(v27, v28, v29, v30);
}

uint64_t dyld4::RuntimeState::addNotifyLoadImage(void *a1, uint64_t a2, uint64_t a3)
{
  result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve((a1 + 98), a1[100] + 1);
  v7 = a1[99];
  v8 = a1[100];
  a1[100] = v8 + 1;
  *(v7 + 8 * v8) = a3;
  if (a2)
  {
    if ((*(a2 + 4) & 0x20) == 0)
    {
      result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve((a1 + 132), a1[134] + 1);
      v9 = a1[133];
      v10 = a1[134];
      a1[134] = v10 + 1;
      *(v9 + 8 * v10) = a2;
    }
  }

  return result;
}

uint64_t dyld4::RuntimeState::saveAppPrebuiltLoaderSet(dyld4::RuntimeState *this, const dyld4::PrebuiltLoaderSet *a2)
{
  v15 = &v17;
  v16 = xmmword_8C8F0;
  if (dyld4::RuntimeState::buildBootToken(this, &v15))
  {
    if (*(this + 121))
    {
      Diagnostics::Diagnostics(v14);
      Only = dyld4::SyscallDelegate::mapFileReadOnly(*(this + 1), v14, *(this + 121), 0, 0, 0, 0, 0);
      if (!Only)
      {
LABEL_9:
        Diagnostics::Diagnostics(v13);
        v8 = dyld4::SyscallDelegate::saveFileWithAttribute(*(this + 1), v13, *(this + 121), a2, *(a2 + 2), "com.apple.dyld", &v15);
        if (v8)
        {
          if (*(*(this + 1) + 327))
          {
            dyld4::RuntimeState::log(this, "wrote PrebuiltLoaderSet to file '%s'\n");
          }
        }

        else if (*(*(this + 1) + 327))
        {
          Diagnostics::errorMessage(v13);
          dyld4::RuntimeState::log(this, "tried but failed (%s) to write PrebuiltLoaderSet to file '%s'\n");
        }

        Diagnostics::~Diagnostics(v13);
        goto LABEL_20;
      }

      v5 = Only;
      v6 = Only[2];
      if (v6 != *(a2 + 2) || _platform_memcmp(Only, a2, Only[2]))
      {
        dyld4::SyscallDelegate::unmapFile(*(this + 1), v5, v6);
LABEL_7:
        dyld4::SyscallDelegate::unlink(*(this + 1), *(this + 121));
        if (*(*(this + 1) + 327) == 1)
        {
          dyld4::RuntimeState::log(this, "deleting existing out of date PrebuiltLoaderSet file '%s'\n", *(this + 121));
        }

        goto LABEL_9;
      }

      HasBootToken = dyld4::RuntimeState::fileAlreadyHasBootToken(this, v7, &v15);
      v11 = *(this + 1);
      if (HasBootToken)
      {
        if (*(v11 + 327))
        {
          dyld4::RuntimeState::log(this, "PrebuiltLoaderSet already saved as file '%s'\n", *(this + 121));
          v11 = *(this + 1);
        }

        dyld4::SyscallDelegate::unmapFile(v11, v5, v5[2]);
      }

      else
      {
        if (*(v11 + 327))
        {
          dyld4::RuntimeState::log(this, "updating boot attribute on existing PrebuiltLoaderSet file '%s'\n", *(this + 121));
          v11 = *(this + 1);
        }

        v12 = dyld4::SyscallDelegate::setFileAttribute(v11, *(this + 121), "com.apple.dyld", &v15);
        dyld4::SyscallDelegate::unmapFile(*(this + 1), v5, v5[2]);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v8 = 1;
LABEL_20:
      Diagnostics::~Diagnostics(v14);
      return v8;
    }

    if (*(*(this + 1) + 327) == 1)
    {
      dyld4::RuntimeState::log(this, "no path to save PrebuiltLoaderSet file\n");
    }
  }

  else if (*(*(this + 1) + 327) == 1)
  {
    dyld4::RuntimeState::log(this, "could not save PrebuiltLoaderSet because main executable is not codesigned\n");
  }

  return 0;
}

uint64_t dyld4::LibSystemHelpersWrapper::setDyldPatchedObjCClasses(dyld4::LibSystemHelpersWrapper *this)
{
  v9 = lsl::MemoryManager::memoryManager(this);
  result = *(v9 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v2, v3, v4, v5, v6, v7, v8, v23);
    if (result)
    {
      v17 = *(v9 + 6);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 0x40000000;
      v25[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper25setDyldPatchedObjCClassesEvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke;
      v25[3] = &__block_descriptor_tmp_168;
      v25[4] = this;
      return lsl::ProtectedStack::withNestedRegularStack(v17, v25, v11, v12, v13, v14, v15, v16, v24);
    }
  }

  if (*(v9 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v19 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v19 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v20 = MEMORY[0xFFFFFC0D8];
          if (v20 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*(**this + 144))();
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v21 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v21 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v22 = MEMORY[0xFFFFFC0D0];
                  if (v22 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v18 = *(**this + 144);

  return v18();
}

dyld4::DyldCacheDataConstScopedWriter *dyld4::DyldCacheDataConstScopedWriter::DyldCacheDataConstScopedWriter(dyld4::DyldCacheDataConstScopedWriter *this, dyld4::RuntimeState *a2)
{
  *this = a2;
  *(this + 8) = 0;
  dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(this);
  return this;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvPKcEEclIJRKS5_SF_RS9_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                v5 = result;
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return v5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvEEclIJRKS5_SD_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESL__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                v5 = result;
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return v5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvPPKcmPS5_PyEEclIJRKS5_SI_SA_mSB_SC_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESQ__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56), **(v2 + 64), **(v2 + 72), **(v2 + 80));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                v5 = result;
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return v5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvPPKcmEEclIJRKS5_SG_SA_mEEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56), **(v2 + 64));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                v5 = result;
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return v5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFiPvPKvS6_P7dl_infoEEclIJRKS4_SE_RS6_RS8_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56), **(v2 + 64));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                v5 = result;
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return v5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvS7_PbP20dyld_unwind_sectionsEEclIJRKS5_SG_RS7_RS8_RSA_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESR__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56), **(v2 + 64), **(v2 + 72));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                v5 = result;
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return v5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t dyld4::RuntimeState::rebindMissingFlatLazySymbols(std::span<dyld4::Loader const*,18446744073709551615ul> const&)::$_0::operator()(dyld4::Loader ****a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 8);
  v14[0] = 0;
  v14[1] = v3;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = (&dword_0 + 2);
  v16 = 0;
  v15 = 0;
  v4 = (*a1)[1];
  if (!v4)
  {
    return 0;
  }

  v7 = **a1;
  v8 = 8 * v4;
  while (1)
  {
    v9 = *v7;
    if ((dyld4::Loader::hiddenFromFlat(*v7, 0) & 1) == 0)
    {
      if (dyld4::Loader::hasExportedSymbol(v9, a1[1], v2, *(a2 + 8), 1, 1u, v14, 0))
      {
        break;
      }
    }

    ++v7;
    v8 -= 8;
    if (!v8)
    {
      return 0;
    }
  }

  v11 = dyld4::Loader::resolvedAddress(v2, v14);
  if (*(v2[1] + 322) == 1)
  {
    v12 = *(a2 + 16);
    v13 = dyld4::Loader::leafName(v9, v2);
    dyld4::RuntimeState::log(v2, "fixup: *0x%012lX = 0x%012lX <%s>\n", v12, v11, v13);
  }

  **(a2 + 16) = v11;
  dyld4::RuntimeState::addDynamicReference(v2, *a2, v14[0]);
  return 1;
}

dyld4::AccountingBitmap *dyld4::AccountingBitmap::AccountingBitmap(dyld4::AccountingBitmap *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = a2;
  v3 = ((a2 + 7) >> 3) + 7;
  v4 = lsl::MemoryManager::defaultAllocator(this);
  v5 = lsl::Allocator::malloc(v4, v3 & 0x3FFFFFFFFFFFFFF8);
  bzero(v5, v3 & 0x3FFFFFFFFFFFFFF8);
  *this = v5;
  return this;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper21__cxa_finalize_rangesEPK13__cxa_range_tjEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESA__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (*(***(v2 + 32) + 80))(**(v2 + 32), **(v2 + 40), **(v2 + 48));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper23pthread_key_create_freeEPmEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES8__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (*(***(v2 + 32) + 48))(**(v2 + 32), **(v2 + 40));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                v5 = result;
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return v5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper25setDyldPatchedObjCClassesEvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (*(***(v2 + 32) + 144))(**(v2 + 32));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPcEEclIJRS4_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESG__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t dyld4::RuntimeState::setUpLogging(void)::$_0::operator()(uint64_t *a1)
{
  v1 = *a1;
  result = *(*a1 + 8);
  if ((*(result + 340) & 1) != 0 || *(result + 341) == 1)
  {
    *(v1 + 1104) = *(result + 336);
    *(v1 + 1108) = 256;
    return result;
  }

  if (*(result + 216) == 1)
  {
    result = dyld4::SyscallDelegate::open(result, "/dev/console", &loc_20000 + 1, 0);
LABEL_9:
    v3 = 0;
    *(v1 + 1104) = result;
LABEL_10:
    *(v1 + 1108) = v3;
    *(v1 + 1109) = 1;
    goto LABEL_11;
  }

  result = dyld4::SyscallDelegate::fstat(result, *(result + 336), &v4);
  if ((result & 0x80000000) == 0)
  {
    result = *(*(v1 + 8) + 336);
    goto LABEL_9;
  }

  if (*(v1 + 1114) == 1)
  {
    result = dyld4::LibSystemHelpersWrapper::isLaunchdOwned((v1 + 160));
    if (result)
    {
      v3 = 1;
      goto LABEL_10;
    }
  }

LABEL_11:
  if (*(v1 + 1108) != 1)
  {
    return result;
  }

  result = dyld4::SyscallDelegate::socket(*(v1 + 8), 1, 2, 0);
  *(v1 + 1104) = result;
  if (result == -1)
  {
LABEL_20:
    *(v1 + 1108) = 0;
    return result;
  }

  dyld4::SyscallDelegate::fcntl(*(v1 + 8), result, 2, &dword_0 + 1);
  strcpy(&v5[1], "/var/run/syslog");
  HIBYTE(v5[0]) = 1;
  v6 = 0;
  memset(&v5[9], 0, 80);
  result = dyld4::SyscallDelegate::connect(*(v1 + 8), *(v1 + 1104), v5, 0x6Au);
  if (result == -1)
  {
    result = dyld4::SyscallDelegate::close(*(v1 + 8), *(v1 + 1104));
    *(v1 + 1104) = -1;
    goto LABEL_20;
  }

  if (*(v1 + 1104) == -1)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dyld4::LibSystemHelpersWrapper::isLaunchdOwned(dyld4::LibSystemHelpersWrapper *this)
{
  v9 = lsl::MemoryManager::memoryManager(this);
  result = *(v9 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v2, v3, v4, v5, v6, v7, v8, v24);
    if (result)
    {
      v17 = *(v9 + 6);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 0x40000000;
      v26[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper14isLaunchdOwnedEvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke;
      v26[3] = &__block_descriptor_tmp_179;
      v26[4] = this;
      v18 = lsl::ProtectedStack::withNestedRegularStack(v17, v26, v11, v12, v13, v14, v15, v16, v25);
      return v18 & 1;
    }
  }

  if (*(v9 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v20 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v20 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v21 = MEMORY[0xFFFFFC0D8];
          if (v21 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*(**this + 88))();
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v22 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v22 & 0xFE) == 2)
                {
                  v18 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v23 = MEMORY[0xFFFFFC0D0];
                  if (v23 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v18 & 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v19 = *(**this + 88);

  return v19();
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper14isLaunchdOwnedEvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (*(***(v2 + 32) + 88))(**(v2 + 32));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                v5 = result;
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return v5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIU13block_pointerFvvEEEvT_EUlvE_EEvS7__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    (*(**v2 + 96))(*v2, v2 + 2, 0);
    (*(**(a1 + 40) + 16))();
    v3 = *(**v2 + 104);
  }

  else
  {
    v3 = *(**(a1 + 40) + 16);
  }

  return v3();
}

void *dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 32 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, 32 * address[2]);
  v9 = address[4] >> 5;
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

void *dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 16 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, 16 * address[2]);
  v9 = address[4] >> 4;
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

void dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0>(dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0)::{lambda(void)#1}::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = **a1;
  if (v10)
  {
    v11 = (*(*v10 + 96))(v10, v9 + 2, 0);
    v12 = a1[1];
    v13 = lsl::MemoryManager::memoryManager(v11);
    if (lsl::ProtectedStack::onStackInAnyFrameInThisThread(v13[6]))
    {
      dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0>(dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0)::{lambda(void)#1}::operator()();
    }

    v14 = v13[6];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 0x40000000;
    v22[2] = ___ZN3lsl13MemoryManager18withProtectedStackIZZN5dyld412RuntimeLocks37withLoadersWriteLockAndProtectedStackIZNS2_12RuntimeState13decDlRefCountEPKNS2_6LoaderEE3__0EEvT_ENKUlvE_clEvEUlvE_EEvSA__block_invoke;
    v22[3] = &__block_descriptor_tmp_186;
    v22[4] = v12;
    lsl::ProtectedStack::withProtectedStack(v14, v22);
    lsl::ProtectedStack::reset(v13[6]);
    (*(**v9 + 104))(*v9, v9 + 2);
  }

  else
  {
    v15 = a1[1];
    v16 = *v15;
    v17 = *(*v15 + 1040);
    if (v17)
    {
      v18 = *v15[1];
      v19 = (*(v16 + 1032) + 8);
      v20 = 16 * v17 - 16;
      while (*(v19 - 1) != v18)
      {
        v19 += 2;
        v20 -= 16;
        if (v20 == -16)
        {
          return;
        }
      }

      if ((*v19)-- == 1)
      {
        if (v20)
        {
          memmove(v19 - 1, v19 + 1, v20);
          v17 = *(v16 + 1040);
        }

        *(v16 + 1040) = v17 - 1;
        if (!atomic_fetch_add_explicit((v16 + 1088), 1u, memory_order_relaxed))
        {
          do
          {
            dyld4::RuntimeState::garbageCollectInner(v16, a2, v20, a4, a5, a6, a7, a8);
          }

          while (atomic_fetch_add_explicit((v16 + 1088), 0xFFFFFFFF, memory_order_relaxed) > 1);
        }
      }
    }
  }
}

void ___ZN3lsl13MemoryManager18withProtectedStackIZZN5dyld412RuntimeLocks37withLoadersWriteLockAndProtectedStackIZNS2_12RuntimeState13decDlRefCountEPKNS2_6LoaderEE3__0EEvT_ENKUlvE_clEvEUlvE_EEvSA__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *v8;
  v10 = *(*v8 + 1040);
  if (v10)
  {
    v11 = *v8[1];
    v12 = (*(v9 + 1032) + 8);
    v13 = 16 * v10 - 16;
    while (*(v12 - 1) != v11)
    {
      v12 += 2;
      v13 -= 16;
      if (v13 == -16)
      {
        return;
      }
    }

    if ((*v12)-- == 1)
    {
      if (v13)
      {
        memmove(v12 - 1, v12 + 1, v13);
        v10 = *(v9 + 1040);
      }

      *(v9 + 1040) = v10 - 1;
      if (!atomic_fetch_add_explicit((v9 + 1088), 1u, memory_order_relaxed))
      {
        do
        {
          dyld4::RuntimeState::garbageCollectInner(v9, a2, v13, a4, a5, a6, a7, a8);
        }

        while (atomic_fetch_add_explicit((v9 + 1088), 0xFFFFFFFF, memory_order_relaxed) > 1);
      }
    }
  }
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerlEEclIJRPKN5dyld311MachOLoadedERKmEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerlEEclIJRPKN5dyld311MachOLoadedElEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvjPPK11mach_headerPPKcEEclIJRKjS7_SA_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESN__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvjPK29_dyld_objc_notify_mapped_infoU13block_pointerFvjEEEclIJRjPS4_RS8_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPKcPK11mach_headerEEclIJS5_PKN5dyld311MachOLoadedEEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESN__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIZNS2_12RuntimeState12notifyUnloadERKNSt3__14spanIPKNS2_6LoaderELm18446744073709551615EEEE3__1EEvT_EUlvE_EEvSF__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *v2;
  if (*v2)
  {
    (*(*result + 96))(result, v2 + 2, 0);
    v4 = **(a1 + 40);
    v5 = v4[1];
    if (v5)
    {
      v6 = *v4;
      v7 = 8 * v5;
      do
      {
        if (*v6)
        {
          v8 = (*(*v6 + 4) & 1) == 0;
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          v9 = *(*v6 + 104);
          if (v9)
          {
            v10 = (v9 + 2);
            v11 = dyld4::ReadOnlyCallback<char * (*)(void *,void const*)>::operator()<void * const&,void * const&>((v9[2] + 16), v9 + 3, v9);
            if (v11)
            {
              v21 = v11;
              if (*v10)
              {
                v12 = *v10;
              }

              else
              {
                v12 = 0;
              }

              dyld4::ReadOnlyCallback<void (*)(char *)>::operator()<char *&>(v12, &v21);
            }
          }
        }

        v6 += 8;
        v7 -= 8;
      }

      while (v7);
    }

    return (*(**v2 + 104))(*v2, v2 + 2);
  }

  else
  {
    v13 = **(a1 + 40);
    v14 = v13[1];
    if (v14)
    {
      v15 = *v13;
      v16 = 8 * v14;
      do
      {
        if (*v15)
        {
          v17 = (*(*v15 + 4) & 1) == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v18 = *(*v15 + 104);
          if (v18)
          {
            v19 = (v18 + 2);
            result = dyld4::ReadOnlyCallback<char * (*)(void *,void const*)>::operator()<void * const&,void * const&>((v18[2] + 16), v18 + 3, v18);
            if (result)
            {
              v21 = result;
              if (*v19)
              {
                v20 = *v19;
              }

              else
              {
                v20 = 0;
              }

              result = dyld4::ReadOnlyCallback<void (*)(char *)>::operator()<char *&>(v20, &v21);
            }
          }
        }

        v15 += 8;
        v16 -= 8;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerPvS6_PKvEEclIJRKS6_S7_SF_S9_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56), **(v2 + 64));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeState16setObjCNotifiersENS2_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS4_IPFvS9_PvS9_PKvEEENS4_IPFvPK29_dyld_objc_notify_mapped_infoEEENS4_IPFvjSL_U13block_pointerFvjEEEEE3__0EEvT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[89] = **(a1 + 40);
  v1[87] = **(a1 + 48);
  v1[88] = **(a1 + 56);
  v1[86] = **(a1 + 64);
  v2 = v1[14];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZZN5dyld412RuntimeState16setObjCNotifiersENS_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS1_IPFvS6_PvS6_PKvEEENS1_IPFvPK29_dyld_objc_notify_mapped_infoEEENS1_IPFvjSI_U13block_pointerFvjEEEEENK3__0clEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_207;
  v4[4] = v1;
  return dyld4::RuntimeLocks::withLoadersReadLock(v2, v4);
}

__n128 __Block_byref_object_copy__201(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvjPK29_dyld_objc_notify_mapped_infoU13block_pointerFvjEEEclIJRjRS6_RS8_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager26withReadOnlyMemoryInternalIZN5dyld412RuntimeState14notifyObjCInitEPKNS2_6LoaderEE3__0EEvT__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          v4 = *(v2 + 32);
          v7 = *(v2 + 40);
          result = dyld4::ReadOnlyCallback<void (*)(_dyld_objc_notify_mapped_info const*)>::operator()<_dyld_objc_notify_mapped_info*>((v4 + 704), &v7);
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v5 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v5 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK29_dyld_objc_notify_mapped_infoEEclIJPS4_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESI__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

const char *getForeignFullIdentity(const char *a1)
{
  v1 = a1;
  v2 = &a1[_platform_strlen(a1)];
  v3 = _platform_strlen(v2 + 1);
  if (v3)
  {
    v4 = &v2[v3 + 1];
    v5 = v2;
    do
    {
      v6 = v4;
      v7 = *(v5 + 1);
      v8 = v7 - 82;
      v9 = v7 == 78;
      v10 = v5 + 2;
      if (v9)
      {
        v11 = v6;
      }

      else
      {
        v10 = v1;
        v11 = v2;
      }

      if (v8 < 2)
      {
        v2 = v6;
      }

      else
      {
        v1 = v10;
        v2 = v11;
      }

      v12 = _platform_strlen(v6 + 1);
      v4 = &v6[v12 + 1];
      v5 = v6;
    }

    while (v12);
  }

  return v1;
}

BOOL dyld4::PrebuiltSwift::findProtocolConformances(dyld4::PrebuiltSwift *this, Diagnostics *a2, dyld4::PrebuiltObjC *a3, dyld4::RuntimeState *a4)
{
  if (!*(a3 + 2))
  {
    Diagnostics::error(a2, "Skipped optimizing Swift protocols due to missing objc class optimisations from the on-disk binary");
    return 0;
  }

  v6 = *(a4 + 1);
  v20 = v6[55];
  if (!v20)
  {
    Diagnostics::error(a2, "Skipped optimizing Swift protocols due to missing objc class optimisations");
    return 0;
  }

  if (v6[52])
  {
    v7 = v6[53] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    Diagnostics::error(a2, "Skipped optimizing Swift protocols due to missing objc header infos");
    return 0;
  }

  v9 = *(a4 + 6);
  if (v9)
  {
    v10 = *(a4 + 5);
    v19 = v6[50];
    v11 = 8 * v9;
    v12 = v10;
    do
    {
      if ((*(*v12 + 2) & 1) == 0)
      {
        v13 = *v12;
        v14 = dyld4::Loader::mf(*v12, a4);
        Address = mach_o::Header::preferredLoadAddress(v14);
        v16 = dyld4::Loader::analyzer(v13, a4);
        v17 = dyld3::MachOFile::pointerSize(v16);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 0x40000000;
        v34[2] = ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke;
        v34[3] = &__block_descriptor_tmp_2;
        v35 = v17;
        v34[4] = Address;
        v34[5] = v16;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 0x40000000;
        v32[2] = ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke_2;
        v32[3] = &__block_descriptor_tmp_5_1;
        v32[4] = Address;
        v32[5] = v13;
        v33 = v17;
        v32[6] = v16;
        v32[7] = a4;
        v26 = 0;
        v27 = &v26;
        v28 = 0x4802000000;
        v29 = __Block_byref_object_copy__1;
        v30 = __Block_byref_object_dispose__1;
        v18 = dyld4::Loader::analyzer(v13, a4);
        metadata_visitor::Visitor::Visitor(&v31, v18);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 0x40000000;
        v23[2] = ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke_6;
        v23[3] = &unk_A1438;
        v23[8] = v14;
        v23[9] = a2;
        v23[6] = &v26;
        v23[7] = this;
        v23[4] = v34;
        v23[5] = v32;
        v23[10] = Address;
        v23[11] = v13;
        v23[12] = a4;
        v23[13] = a3;
        v23[14] = v20;
        v23[15] = v19;
        v24 = 1;
        *&v25[3] = *(v36 + 3);
        *v25 = v36[0];
        metadata_visitor::SwiftVisitor::forEachProtocolConformance((v27 + 5), v23);
        _Block_object_dispose(&v26, 8);
      }

      ++v12;
      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  return !Diagnostics::hasError(a2);
}

BOOL ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    return 0;
  }

  v4 = metadata_visitor::ResolvedValue::vmAddress((a2 + 8));
  if ((v5 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v6 = *(a1 + 40);
  v7 = v4 - *(a1 + 32);
  if (*(a1 + 48) == 8)
  {
    v8 = *(v6 + v7);
  }

  else
  {
    v8 = *(v6 + v7);
  }

  return v8 == 0;
}

uint64_t ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke_2@<X0>(metadata_visitor::ResolvedValue *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v5 = *this;
  result = metadata_visitor::ResolvedValue::vmAddress((this + 8));
  if (v5 == 1)
  {
    if (v7)
    {
      v8 = (result - *(a2 + 32));
      *a3 = *(a2 + 40);
LABEL_4:
      *(a3 + 8) = v8;
      *(a3 + 16) = 1;
      return result;
    }

LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = result - *(a2 + 32);
  v10 = *(a2 + 48);
  if (*(a2 + 64) == 8)
  {
    v11 = *(v10 + v9);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *(v10 + v9);
    if (!*(v10 + v9))
    {
      goto LABEL_14;
    }
  }

  v12 = *(a2 + 56);
  v13 = *(v12 + 6);
  if (v13)
  {
    v14 = *(v12 + 5);
    v15 = 8 * v13;
    v16 = v14;
    while (1)
    {
      v17 = *v16;
      v20 = 0;
      v21 = 0;
      v19 = 0;
      v18 = v17;
      result = dyld4::Loader::contains(v17, v12, v11, &v21, &v20, &v19);
      if (result)
      {
        break;
      }

      ++v16;
      ++v14;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    result = dyld4::Loader::loadAddress(v18, v12);
    v8 = &v11[-result];
    *a3 = v18;
    goto LABEL_4;
  }

LABEL_14:
  *a3 = 0;
  *(a3 + 16) = 0;
  return result;
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke_6(uint64_t a1, metadata_visitor::SwiftConformance *a2, _BYTE *a3)
{
  v6 = *(a1 + 56);
  if (metadata_visitor::SwiftConformance::isNull(a2) && (dyld3::MachOFile::enforceFormat(*(a1 + 64), 14) & 1) == 0)
  {
    v11 = *(a1 + 72);
    metadata_visitor::SwiftConformance::getLocation(a2);
    Diagnostics::error(v11, "Skipped optimizing Swift protocols due to null conformance at 0x%llx");
    goto LABEL_17;
  }

  metadata_visitor::SwiftConformance::getProtocolPointer(a2, (*(*(a1 + 48) + 8) + 40), v63);
  if ((*(*(a1 + 32) + 16))())
  {
    return;
  }

  metadata_visitor::SwiftConformance::getTypeRef(v62, a2, (*(*(a1 + 48) + 8) + 40));
  metadata_visitor::SwiftConformance::getProtocolConformanceFlags(v61, a2, (*(*(a1 + 48) + 8) + 40));
  metadata_visitor::SwiftConformance::SwiftTypeRefPointer::getTargetPointer(v60, v62, (*(*(a1 + 48) + 8) + 40));
  if ((*(*(a1 + 32) + 16))())
  {
    return;
  }

  LOBYTE(v58.var0) = 0;
  v59 = 0;
  (*(*(a1 + 40) + 16))(&v44);
  v59 = v45;
  v58 = v44;
  if ((v45 & 1) == 0)
  {
    Diagnostics::error(*(a1 + 72), "Skipped optimizing Swift protocols, could not find image for type conformance pointer");
    goto LABEL_17;
  }

  LOBYTE(v56.var0) = 0;
  LOBYTE(v57) = 0;
  (*(*(a1 + 40) + 16))(&v44);
  LOBYTE(v57) = v45;
  v56 = v44;
  if ((v45 & 1) == 0)
  {
    Diagnostics::error(*(a1 + 72), "Skipped optimizing Swift protocols, could not find image for type protocol pointer");
    goto LABEL_17;
  }

  VMAddress = objc_visitor::Protocol::getVMAddress(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_39;
  }

  v9 = VMAddress - *(a1 + 80);
  v10 = metadata_visitor::SwiftConformance::SwiftProtocolConformanceFlags::typeReferenceKind(v61);
  if (v10 < 2)
  {
    LOBYTE(v54.var0) = 0;
    v55 = 0;
    if (v58.var0 == *(a1 + 88))
    {
      v44.var0 = *(a1 + 80);
      LOBYTE(v44.var1) = 1;
      v49.var0 = v58.var1;
      LOBYTE(v49.var1) = 1;
      v22 = operator+(&v44, &v49);
      metadata_visitor::Visitor::getValueFor(*(*(a1 + 48) + 8) + 40, v22, v23, &v44);
      v49 = v44;
      *&v50 = v45;
      if (metadata_visitor::SwiftConformance::TypeContextDescriptor::isForeignMetadata(&v49))
      {
        hasImportInfo = metadata_visitor::SwiftConformance::TypeContextDescriptor::hasImportInfo(&v49);
        v17 = *(*(a1 + 48) + 8);
        v18 = &v49;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = dyld4::Loader::analyzer(v58.var0, *(a1 + 96));
      metadata_visitor::Visitor::Visitor(&v44, v12);
      v13 = dyld4::Loader::mf(v58.var0, *(a1 + 96));
      v53.var0 = mach_o::Header::preferredLoadAddress(v13);
      LOBYTE(v53.var1) = 1;
      v49.var0 = v58.var1;
      LOBYTE(v49.var1) = 1;
      v14 = operator+(&v53, &v49);
      metadata_visitor::Visitor::getValueFor(&v44, v14, v15, &v49);
      v51 = v49;
      v52 = v50;
      if (metadata_visitor::SwiftConformance::TypeContextDescriptor::isForeignMetadata(&v51))
      {
        hasImportInfo = metadata_visitor::SwiftConformance::TypeContextDescriptor::hasImportInfo(&v51);
        v17 = *(*(a1 + 48) + 8);
        v18 = &v51;
LABEL_27:
        metadata_visitor::SwiftConformance::TypeContextDescriptor::getName(&v54, v18, (v17 + 40));
        v55 = 1;
        v24 = lsl::Allocator::Pool::allocator(&v54);
        v25 = metadata_visitor::ResolvedValue::vmAddress(&v54);
        v27 = v26;
        v28 = _platform_strlen(v24);
        if (hasImportInfo)
        {
          ForeignFullIdentity = getForeignFullIdentity(v24);
          if ((v27 & 1) == 0)
          {
            goto LABEL_39;
          }

          v31 = v30;
          v25 = &ForeignFullIdentity[v25 - v24];
          v27 = 1;
          v24 = ForeignFullIdentity;
        }

        else
        {
          v31 = v28;
        }

        if (!(v31 >> 16))
        {
          v32 = *(a1 + 88);
          v51.var0 = v32;
          if ((v27 & 1) == 0)
          {
            goto LABEL_39;
          }

          v33 = dyld4::Loader::mf(v32, *(a1 + 96));
          v51.var1 = v25 - mach_o::Header::preferredLoadAddress(v33);
          v49.var0 = v24;
          dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v49.var1, &v51);
          *&v50 = v31;
          if ((v57 & 1) == 0)
          {
            goto LABEL_39;
          }

          dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v50 + 1, &v56);
          v53.var0 = *(a1 + 88);
          v53.var1 = v9;
          dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v48, &v53);
          v47 = 0;
          v44 = v49;
          v45 = v50;
          v46 = v48;
          dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::insert(v6 + 208, &v44, &v47);
          goto LABEL_35;
        }

        Diagnostics::error(*(a1 + 72), "Protocol conformance exceeded name length of 16-bits");
LABEL_17:
        *a3 = 1;
        return;
      }
    }

LABEL_35:
    if ((v59 & 1) == 0)
    {
      goto LABEL_39;
    }

    dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v49, &v58);
    if ((v57 & 1) == 0)
    {
      goto LABEL_39;
    }

    dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v49.var1, &v56);
    v51.var0 = *(a1 + 88);
    v51.var1 = v9;
    dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v53, &v51);
    LOBYTE(v48) = 0;
    v44 = v49;
    *&v45 = v53.var0;
    dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::insert(v6, &v44, &v48);
    return;
  }

  if (v10 == 2)
  {
    ClassName = metadata_visitor::SwiftConformance::SwiftTypeRefPointer::getClassName(v62, (*(*(a1 + 48) + 8) + 40));
    v54.var0 = *(a1 + 88);
    v54.var1 = v9;
    dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v51, &v54);
    v44.var0 = 0;
    v44.var1 = &v44;
    *&v45 = 0x2000000000;
    BYTE8(v45) = 0;
    v49.var0 = ClassName;
    v49.var1 = _platform_strlen(ClassName);
    v20 = *(a1 + 104);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 0x40000000;
    v40[2] = ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke_2_11;
    v40[3] = &unk_A13E8;
    v40[4] = &v44;
    v40[5] = v6;
    v41 = v56;
    v42 = v57;
    var0 = v51.var0;
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>((v20 + 17), v20 + 19, v20 + 24, v20[29], &v49.var0, v40);
    v21 = *(a1 + 112);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 0x40000000;
    v34[2] = ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke_3;
    v34[3] = &unk_A1410;
    v35 = *(a1 + 120);
    v36 = *(a1 + 96);
    v34[4] = &v44;
    v34[5] = v6;
    v37 = v56;
    v38 = v57;
    v39 = v51.var0;
    objc::ObjectHashTable::forEachObject(v21, ClassName, v34);
    if ((*(v44.var1 + 24) & 1) == 0)
    {
      Diagnostics::error(*(a1 + 72), "Skipped optimizing Swift protocols, could not find image for ObjCClassName pointer at all");
      *a3 = 1;
    }

    _Block_object_dispose(&v44, 8);
  }

  else if (v10 == 3)
  {
    if (v59)
    {
      dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v54, &v58);
      if (v57)
      {
        dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v54.var1, &v56);
        v49.var0 = *(a1 + 88);
        v49.var1 = v9;
        dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v51, &v49);
        LOBYTE(v53.var0) = 0;
        v44 = v54;
        *&v45 = v51.var0;
        dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::insert(v6 + 104, &v44, &v53);
        return;
      }
    }

LABEL_39:
    std::__throw_bad_optional_access[abi:nn200100]();
  }
}

uint64_t operator+(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0 || (*(a2 + 8) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  return *a2 + *a1;
}

uint64_t dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::insert(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 8);
  if (v6 == *a1)
  {
    v7 = 2 * *(a1 + 32);
    *a1 = 2 * v6;
    size = 0;
    memset(v31, 0, sizeof(v31));
    if (v7)
    {
      dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v31, v7);
      do
      {
        v34 = -1;
        dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v31, &v34);
        --v7;
      }

      while (v7);
    }

    if (*(a1 + 72))
    {
      v8 = 0;
      do
      {
        if ((*(dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v8) + 40) & 6) == 0)
        {
          v9 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v8);
          v10 = dyld4::HashForeignConformanceKey::hash(v9, *(a1 + 96));
          v11 = (*&v31[1] - 1) & v10;
          if (*dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v31, v11) != -1)
          {
            v12 = 1;
            do
            {
              v11 = (*&v31[1] - 1) & (v11 + v12++);
            }

            while (*dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v31, v11) != -1);
          }

          *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v31, v11) = v8;
        }

        ++v8;
      }

      while (v8 != *(a1 + 72));
    }

    if ((a1 + 16) == v31)
    {
      *&v31[1] = 0;
      if (*(&v31[1] + 1))
      {
        vm_deallocate(mach_task_self_, *(&v31[1] + 1), size);
      }
    }

    else
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        vm_deallocate(mach_task_self_, v13, *(a1 + 48));
      }

      *(a1 + 16) = *&v31[0];
      *(a1 + 24) = *(v31 + 8);
      v14 = size;
      *(a1 + 40) = *(&v31[1] + 1);
      *(a1 + 48) = v14;
    }
  }

  v15 = (*(a1 + 32) - 1) & dyld4::HashForeignConformanceKey::hash(a2, *(a1 + 96));
  v16 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15);
  if (v16 == -1)
  {
LABEL_23:
    v17 = (a1 + 56);
    v20 = *(a1 + 72);
    *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15) = v20;
    ++*(a1 + 8);
    v21 = *(a2 + 16);
    v31[0] = *a2;
    v31[1] = v21;
    size = *(a2 + 32);
    v33 = 0;
    dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::push_back((a1 + 56), v31);
    *a3 = 0;
    v22 = *(a1 + 72);
    if (!v22)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }
  }

  else
  {
    v17 = (a1 + 56);
    v18 = 1;
    while (1)
    {
      v19 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v16);
      if (dyld4::EqualForeignConformanceKey::equal(v19, a2, *(a1 + 96)))
      {
        break;
      }

      v15 = (*(a1 + 32) - 1) & (v15 + v18++);
      v16 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15);
      if (v16 == -1)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      v23 = *(dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v16) + 40);
      v24 = (a1 + 56);
      if ((v23 & 3) == 0)
      {
        break;
      }

      v16 = *(dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[](v24, v16) + 40) >> 3;
    }

    v25 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[](v24, v16);
    v26 = *(v25 + 40);
    if ((v26 & 7) != 0)
    {
      if ((v26 & 4) == 0)
      {
        dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::insert();
      }

      v27 = v26 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v25 + 40) = v27;
      v28 = v27 & 3 | (8 * *(a1 + 72));
    }

    else
    {
      *(v25 + 40) = v26 | 1;
      v28 = (8 * *(a1 + 72)) | 1;
    }

    *(v25 + 40) = v28;
    v29 = *(a2 + 16);
    v31[0] = *a2;
    v31[1] = v29;
    size = *(a2 + 32);
    v33 = 4;
    dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::push_back((a1 + 56), v31);
    *a3 = 1;
    v22 = *(a1 + 72);
    if (!v22)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }
  }

  return *v17 + 48 * v22 - 48;
}

uint64_t dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::insert(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 8);
  if (v6 == *a1)
  {
    v7 = 2 * *(a1 + 32);
    *a1 = 2 * v6;
    size = 0;
    memset(v30, 0, sizeof(v30));
    if (v7)
    {
      dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v30, v7);
      do
      {
        v29 = -1;
        dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v30, &v29);
        --v7;
      }

      while (v7);
    }

    if (*(a1 + 72))
    {
      v8 = 0;
      do
      {
        if ((*(dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v8) + 24) & 6) == 0)
        {
          v9 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v8);
          v10 = dyld4::HashTypeConformanceKey::hash(v9);
          v11 = (v30[2] - 1) & v10;
          if (*dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v30, v11) != -1)
          {
            v12 = 1;
            do
            {
              v11 = (v30[2] - 1) & (v11 + v12++);
            }

            while (*dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v30, v11) != -1);
          }

          *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v30, v11) = v8;
        }

        ++v8;
      }

      while (v8 != *(a1 + 72));
    }

    if ((a1 + 16) == v30)
    {
      v30[2] = 0;
      if (v30[3])
      {
        vm_deallocate(mach_task_self_, v30[3], size);
      }
    }

    else
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        vm_deallocate(mach_task_self_, v13, *(a1 + 48));
      }

      *(a1 + 16) = v30[0];
      *(a1 + 24) = *&v30[1];
      v14 = size;
      *(a1 + 40) = v30[3];
      *(a1 + 48) = v14;
    }
  }

  v15 = (*(a1 + 32) - 1) & dyld4::HashTypeConformanceKey::hash(a2);
  v16 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15);
  if (v16 == -1)
  {
LABEL_23:
    v17 = (a1 + 56);
    v20 = *(a1 + 72);
    *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15) = v20;
    ++*(a1 + 8);
    *v30 = *a2;
    v30[2] = *(a2 + 16);
    v30[3] = 0;
    dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::push_back((a1 + 56), v30);
    *a3 = 0;
    v21 = *(a1 + 72);
    if (!v21)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }
  }

  else
  {
    v17 = (a1 + 56);
    v18 = 1;
    while (1)
    {
      v19 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v16);
      if (dyld4::EqualTypeConformanceKey::equal(v19, a2))
      {
        break;
      }

      v15 = (*(a1 + 32) - 1) & (v15 + v18++);
      v16 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15);
      if (v16 == -1)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      v22 = *(dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v16) + 24);
      v23 = (a1 + 56);
      if ((v22 & 3) == 0)
      {
        break;
      }

      v16 = *(dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[](v23, v16) + 24) >> 3;
    }

    v24 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[](v23, v16);
    v25 = *(v24 + 24);
    if ((v25 & 7) != 0)
    {
      if ((v25 & 4) == 0)
      {
        dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::insert();
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v24 + 24) = v26;
      v27 = v26 & 3 | (8 * *(a1 + 72));
    }

    else
    {
      *(v24 + 24) = v25 | 1;
      v27 = (8 * *(a1 + 72)) | 1;
    }

    *(v24 + 24) = v27;
    *v30 = *a2;
    v30[2] = *(a2 + 16);
    v30[3] = 4;
    dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::push_back((a1 + 56), v30);
    *a3 = 1;
    v21 = *(a1 + 72);
    if (!v21)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }
  }

  return *v17 + 32 * v21 - 32;
}

uint64_t ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke_2_11(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(result + 40);
    v6 = 8 * v2;
    do
    {
      v7 = *v4;
      *(*(*(v3 + 32) + 8) + 24) = 1;
      dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v11, v7 + 1);
      if ((*(v3 + 64) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v11 + 1, (v3 + 48));
      v10 = 0;
      v8 = v11;
      v9 = *(v3 + 72);
      result = dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::insert(v5 + 104, &v8, &v10);
      ++v4;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t ___ZN5dyld413PrebuiltSwift24findProtocolConformancesER11DiagnosticsRNS_12PrebuiltObjCERNS_12RuntimeStateE_block_invoke_3(uint64_t result, uint64_t a2)
{
  if ((*(result + 56) & 1) == 0)
  {
    goto LABEL_13;
  }

  v2 = result;
  v3 = *(result + 64);
  v4 = *(v3 + 6);
  if (!v4)
  {
    return result;
  }

  v5 = *(result + 40);
  v6 = *(result + 48) + a2;
  v7 = *(v3 + 5);
  v8 = 8 * v4;
  v9 = v7;
  while (1)
  {
    v10 = *v9;
    v11 = dyld4::Loader::mf(*v9, v3);
    Address = mach_o::Header::preferredLoadAddress(v11);
    result = dyld3::MachOFile::mappedSize(v11);
    if (v6 >= Address && result + Address > v6)
    {
      break;
    }

    ++v9;
    ++v7;
    v8 -= 8;
    if (!v8)
    {
      return result;
    }
  }

  v18.var0 = v10;
  v18.var1 = v6 - Address;
  *(*(*(v2 + 32) + 8) + 24) = 1;
  dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v17, &v18);
  if ((*(v2 + 88) & 1) == 0)
  {
LABEL_13:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v17 + 1, (v2 + 72));
  v16 = 0;
  v14 = v17;
  v15 = *(v2 + 96);
  return dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::insert(v5 + 104, &v14, &v16);
}

BOOL dyld4::PrebuiltSwift::make(dyld4::PrebuiltSwift *this, Diagnostics *a2, dyld4::PrebuiltObjC *a3, dyld4::RuntimeState *a4)
{
  result = dyld4::PrebuiltSwift::findProtocolConformances(this, a2, a3, a4);
  if (result)
  {
    *(this + 312) = 1;
  }

  return result;
}

__n128 dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::push_back(vm_address_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4 + 1;
  if (v4 + 1 > a1[1])
  {
    dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::growTo(a1, v5);
    v4 = a1[2];
    v5 = v4 + 1;
  }

  v6 = *a1;
  a1[2] = v5;
  v7 = v6 + 48 * v4;
  result = *a2;
  v9 = *(a2 + 32);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 32) = v9;
  *v7 = result;
  return result;
}

void dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const void **a5, uint64_t a6)
{
  v36 = a6;
  v37 = a3;
  if (a3[2])
  {
    v8 = prebuilt_objc::hashStringKey(a5);
    v9 = a2[2];
    v10 = (v9 - 1) & v8;
    if (v9 <= v10)
    {
LABEL_9:
      dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
    }

    v11 = *a2;
    v12 = v37[2];
    v13 = *v37;
    v14 = 1;
    v17 = a5;
    v16 = *a5;
    v15 = v17[1];
    while (1)
    {
      v18 = *(v11 + 8 * v10);
      if (v18 == -1)
      {
        break;
      }

      if (v12 <= v18)
      {
        dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
      }

      v19 = v13 + 56 * v18;
      if (*(v19 + 8) == v15 && !_platform_memcmp(*v19, v16, v15))
      {
        v20 = *(v19 + 48);
        if ((v20 & 7) != 0)
        {
          if (v12 <= v20 >> 3)
          {
LABEL_15:
            dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
          }

          v21 = v20 >> 3;
          v22 = 2;
          while (1)
          {
            v23 = *(v13 + 56 * v21 + 48);
            if ((v23 & 3) == 0)
            {
              break;
            }

            v21 = v23 >> 3;
            ++v22;
            if (v12 <= v23 >> 3)
            {
              goto LABEL_15;
            }
          }

          __chkstk_darwin();
          v26 = (&v35 - v25);
          if (v24 >= 0x200)
          {
            v27 = 512;
          }

          else
          {
            v27 = v24;
          }

          bzero(&v35 - v25, v27);
          *v26 = v19 + 16;
          v28 = v37[2];
          v29 = *(v19 + 48);
          if (v28 <= v29 >> 3)
          {
LABEL_23:
            dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
          }

          v30 = v29 >> 3;
          v31 = *v37;
          v32 = 2;
          while (1)
          {
            v33 = v31 + 56 * v30;
            v34 = *(v33 + 48);
            v26[v32 - 1] = v33 + 16;
            if ((v34 & 3) == 0)
            {
              break;
            }

            v30 = v34 >> 3;
            ++v32;
            if (v28 <= v34 >> 3)
            {
              goto LABEL_23;
            }
          }

          v38 = v26;
          v39.i64[0] = v32;
          v39.i64[1] = v32;
          (*(v36 + 16))(v36, &v38);
        }

        else
        {
          v40 = v19 + 16;
          v38 = &v40;
          v39 = vdupq_n_s64(1uLL);
          (*(v36 + 16))(v36, &v38);
        }

        return;
      }

      v10 = (v9 - 1) & (v10 + v14++);
      if (v9 <= v10)
      {
        goto LABEL_9;
      }
    }
  }
}

BOOL *dyld4::Loader::InitialOptions::InitialOptions(BOOL *this, const dyld4::Loader *a2)
{
  *this = (*(a2 + 4) & 2) != 0;
  this[1] = (*(a2 + 4) & 4) != 0;
  this[2] = (*(a2 + 4) & 8) != 0;
  this[3] = (*(a2 + 4) & 0x10) != 0;
  this[4] = (*(a2 + 4) & 0x20) != 0;
  this[5] = (*(a2 + 4) & 0x40) != 0;
  this[6] = (*(a2 + 2) & 0x80) != 0;
  this[7] = *(a2 + 5) & 1;
  this[8] = (*(a2 + 2) & 0x400) != 0;
  this[9] = (*(a2 + 2) & 0x800) != 0;
  this[10] = (*(a2 + 2) & 0x1000) != 0;
  this[11] = (*(a2 + 2) & 0x2000) != 0;
  this[12] = (*(a2 + 2) & 0x4000) != 0;
  return this;
}

void dyld4::Loader::unmap(dyld4::Loader *this, dyld4::RuntimeState *a2, char a3)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::unmap();
  }

  if (*(this + 2))
  {

    dyld4::PrebuiltLoader::unmap(this, a2);
  }

  else
  {

    dyld4::JustInTimeLoader::unmap(this, a2, a3);
  }
}

uint64_t dyld4::Loader::hasBeenFixedUp(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::hasBeenFixedUp();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::hasBeenFixedUp(this, a2);
  }

  else
  {

    return dyld4::JustInTimeLoader::hasBeenFixedUp(this, a2);
  }
}

dyld4::Loader *dyld4::Loader::leafName(dyld4::Loader *this, const char *a2)
{
  v3 = strrchr(this, 47);
  if (v3)
  {
    return (v3 + 1);
  }

  else
  {
    return this;
  }
}

char *dyld4::Loader::leafName(dyld4::Loader *this, const dyld4::RuntimeState *a2)
{
  v2 = dyld4::Loader::path(this, a2);
  v3 = strrchr(v2, 47);
  if (v3)
  {
    return v3 + 1;
  }

  else
  {
    return v2;
  }
}

uint64_t dyld4::Loader::appendHexByte(uint64_t this, void *a2, char **a3)
{
  v3 = (*a2)++;
  v4 = (this >> 4) | 0x30;
  if (this >= 0xA0)
  {
    LOBYTE(v4) = (this >> 4) + 55;
  }

  *v3 = v4;
  v5 = (*a2)++;
  if ((this & 0xFu) >= 0xA)
  {
    v6 = (this & 0xF) + 55;
  }

  else
  {
    v6 = this & 0xF | 0x30;
  }

  *v5 = v6;
  return this;
}

unsigned __int8 *dyld4::Loader::getUuidStr(unsigned __int8 *this, char *a2, char *a3)
{
  if ((*(this + 2) & 0x400) != 0)
  {
    return dyld4::Loader::uuidToStr(this + 8, a2, a3);
  }

  *a2 = 0x64697575206F6ELL;
  return this;
}

void dyld4::Loader::logLoad(dyld4::Loader *this, dyld4::RuntimeState *a2, char *a3)
{
  if ((*(this + 2) & 0x400) != 0)
  {
    dyld4::Loader::uuidToStr(this + 8, v5, a3);
  }

  else
  {
    strcpy(v5, "no uuid");
  }

  dyld4::RuntimeState::log(a2, "<%s> %s\n", v5, a3);
}

uint64_t ___ZN5dyld46Loader9getLoaderER11DiagnosticsRNS_12RuntimeStateEPKcRKNS0_11LoadOptionsE_block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

char *dyld4::Loader::expandAndNormalizeAtExecutablePath(dyld4::Loader *this, const char *__s1, char *a3, char *a4)
{
  if (_platform_strncmp(__s1, "@executable_path", 0x10uLL))
  {
    return 0;
  }

  v10 = *(__s1 + 16);
  v9 = __s1 + 16;
  v8 = v10;
  if (v10 != 47 && v8 != 0)
  {
    return 0;
  }

  strlcpy(a3, this, 0x400uLL);
  result = strrchr(a3, 47);
  if (result)
  {
    if (*v9 == 47)
    {
      while (v9[1] == 46 && v9[2] == 46)
      {
        v12 = result - 1;
        do
        {
          v13 = v12;
          if (v12 <= a3)
          {
            break;
          }

          --v12;
        }

        while (*v13 != 47);
        if (v13 == a3)
        {
          break;
        }

        v14 = *(v9 + 3);
        v9 += 3;
        result = v13;
        if (v14 != 47)
        {
          goto LABEL_21;
        }
      }

      v13 = result;
    }

    else
    {
      v13 = result + 1;
    }

LABEL_21:
    strlcpy(v13, v9, a3 - v13 + 1024);
    return (&dword_0 + 1);
  }

  return result;
}

char *___ZN5dyld46Loader24forEachResolvedAtPathVarERNS_12RuntimeStateEPKcRKNS0_11LoadOptionsENS_13ProcessConfig13PathOverrides4TypeERbU13block_pointerFvS4_SA_SB_E_block_invoke(uint64_t a1, char *__s1, _BYTE *a3)
{
  v6 = *(a1 + 40);
  if (*(*(v6 + 1) + 328) == 1)
  {
    v7 = dyld4::Loader::path(*(*(a1 + 48) + 8), v6);
    dyld4::RuntimeState::log(v6, "  LC_RPATH '%s' from '%s'\n", __s1, v7);
    v6 = *(a1 + 40);
  }

  if ((dyld4::Loader::expandAtLoaderPath(v6, __s1, *(a1 + 56), *(*(a1 + 48) + 8), 1, *(a1 + 64)) & 1) != 0 || (result = dyld4::Loader::expandAtExecutablePath(*(a1 + 40), __s1, v8, 0, *(a1 + 64)), result))
  {
    dyld4::Utils::concatenatePaths(*(a1 + 64), *(a1 + 72), &stru_3C8.reloff);
    result = (*(*(a1 + 32) + 16))();
    goto LABEL_6;
  }

  if (*__s1 != 47 || (strlcpy(*(a1 + 64), __s1, 0x400uLL), dyld4::Utils::concatenatePaths(*(a1 + 64), *(a1 + 72), &stru_3C8.reloff), result = (*(*(a1 + 32) + 16))(), (*a3 & 1) == 0) && ((v10 = *(*(*(a1 + 40) + 8) + 720)) == 0 || (strlcpy(*(a1 + 64), v10, 0x400uLL), strlcat(*(a1 + 64), __s1, 0x400uLL), dyld4::Utils::concatenatePaths(*(a1 + 64), *(a1 + 72), &stru_3C8.reloff), result = (*(*(a1 + 32) + 16))(), (*a3 & 1) == 0)))
  {
LABEL_6:
    if (*a3 != 1)
    {
      return result;
    }
  }

  **(a1 + 80) = 1;
  return result;
}

double __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__2(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

uint64_t (***___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3))(mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E *__hidden this)
{
  v6 = *(a1 + 112);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_92;
  v7 = *(a1 + 472);
  v9[4] = *(a1 + 464);
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = v7;
  memmove(v10, (a1 + 32), 0x1B0uLL);
  v10[27] = *(a1 + 480);
  return mach_o::ChainedFixups::forEachFixupChainStartLocation(v6, a2, a3, v9);
}

uint64_t ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_2(void *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v10 = a4;
  v13 = a1[4];
  v14 = a1[5] + 56 * a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_3;
  v17[3] = &__block_descriptor_tmp_90_0;
  v17[4] = a1[7];
  memmove(v18, a1 + 8, 0x1B0uLL);
  v15 = a1[63];
  v18[54] = a1[62];
  v18[55] = a7;
  v18[56] = v15;
  return mach_o::ChainedFixups::PointerFormat::forEachFixupLocationInChain(a6, a2, v13, v14, 0, 0, v10, v9, v17);
}

void ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  if (*(a2 + 22) == 1)
  {
    v6 = *(a1 + 472);
    v7 = *(a2 + 24);
    v8 = v6[2];
    if (v8 <= v7)
    {
      Diagnostics::error(*(a1 + 32), "out of range bind ordinal %d (max %llu)", *(a2 + 24), v8);
      v11 = 0;
      goto LABEL_8;
    }

    v9 = *(*v6 + 8 * v7);
    v10 = *(a2 + 28);
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(a2 + 24);
  }

  v11 = v10 + v9;
  if (*(a2 + 16) == 1)
  {
    v11 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(v11, *a2, ((*(a2 + 18) >> 2) & 1), *(a2 + 20), *(a2 + 18) & 3);
  }

LABEL_8:
  if (Diagnostics::hasError(*(a1 + 32)))
  {
    **(a1 + 480) = 1;
    *a3 = 1;
  }

  else
  {
    v12 = *(a1 + 488);
    if (*(*(v12 + 1) + 322) == 1)
    {
      dyld4::RuntimeState::log(v12, "fixup: *0x%010lX = 0x%016lX\n", v5, v11);
    }

    *v5 = v11;
  }
}

uint64_t ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_4(void *a1, unsigned int *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(v6 + 16);
  v10 = *v6;
  v11 = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_5;
  v9[3] = &__block_descriptor_tmp_96_0;
  v9[4] = a1[8];
  return dyld3::MachOLoaded::fixupAllChainedFixups(v4, v3, a2, v5, &v10, v9);
}

void ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_5(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (*(*(v5 + 1) + 322))
  {
    dyld4::RuntimeState::log(v5, "fixup: *0x%010lX = 0x%016lX\n", a2, a3);
  }

  *a2 = a3;
}

uint64_t ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_6(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 40) & 0x10) != 0)
  {
    *(*(*(result + 32) + 8) + 24) += vm_page_size + *(a2 + 24);
  }

  return result;
}

void ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_7(void *a1, uint64_t a2)
{
  v2 = (a1[4] + a2);
  v3 = a1[5] + *v2;
  v4 = a1[6];
  if (*(*(v4 + 1) + 322) == 1)
  {
    dyld4::RuntimeState::log(v4, "fixup: *0x%010lX = 0x%016lX <rebase>\n", v2, v3);
  }

  *v2 = v3;
}

void ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 48);
  if (v3[2] <= a3)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) + a2);
  v8 = *(*v3 + 8 * a3);
  if (v8 == dyld4::missing_symbol_abort)
  {
    v9 = *(a1 + 56);
    v10 = v9[2];
    if (v10)
    {
      v11 = (*v9 + 8);
      v12 = 16 * v10;
      while (*v11 != a3)
      {
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      dyld4::RuntimeState::addMissingFlatLazySymbol(*(a1 + 64), v6, *(v11 - 1), v7);
    }

LABEL_9:
    v8 = 0;
  }

  v13 = *(a1 + 64);
  if (*(*(v13 + 1) + 322) == 1)
  {
    v14 = dyld4::Loader::path(v6, v13);
    v15 = strrchr(v14, 47);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = v14;
    }

    dyld4::RuntimeState::log(v13, "fixup: *0x%010lX = 0x%016lX <%s/bind#%u>\n", v7, v8, v16, a3);
  }

  *v7 = v8;
}

void ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_9(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1[6];
  if (v3[2] <= a3)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v6 = a1[4];
  v7 = (a1[5] + a2);
  v8 = *(*v3 + 8 * a3);
  v9 = a1[7];
  if (v8 == -1)
  {
    if (*(*(v9 + 1) + 322))
    {
      v13 = dyld4::Loader::path(v6, v9);
      v14 = strrchr(v13, 47);
      if (v14)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v13;
      }

      dyld4::RuntimeState::log(v9, "fixup: *0x%010lX (skipping missing weak bind) <%s/weak-bind#%u>\n", v7, v15, a3);
    }
  }

  else
  {
    if (*(*(v9 + 1) + 322))
    {
      v10 = dyld4::Loader::path(v6, v9);
      v11 = strrchr(v10, 47);
      if (v11)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = v10;
      }

      dyld4::RuntimeState::log(v9, "fixup: *0x%010lX = 0x%016lX <%s/weak-bind#%u>\n", v7, v8, v12, a3);
    }

    *v7 = v8;
  }
}

void ___ZNK5dyld46Loader26applyFunctionVariantFixupsER11DiagnosticsRKNS_12RuntimeStateE_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = dyld4::Loader::selectFromFunctionVariants(*(a1 + 32), *(a1 + 40), *(a1 + 48), "<internal>", (a2 >> 36)) + *(a1 + 56);
  v6 = mach_o::Header::segmentVmAddr(*(a1 + 56), BYTE4(a2) & 0xF) + a2;
  v7 = *(a1 + 64);
  v8 = (v6 + v7);
  if ((v4 & 0x1000) != 0)
  {
    v5 = signPointer(v5, v6 + v7, (v4 & 0x2000) != 0, HIWORD(a2), v4 >> 14);
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 1);
  if ((*(v10 + 322) & 1) != 0 || *(v10 + 329) == 1)
  {
    dyld4::RuntimeState::log(v9, "fixup: *0x%012lX = 0x%012lX <function-variant-table#%u>\n", v8, v5, (a2 >> 36));
  }

  *v8 = v5;
}

uint64_t dyld4::Loader::selectFromFunctionVariants(dyld4::Loader *this, Diagnostics *a2, const dyld4::RuntimeState *a3, const char *a4, unsigned int a5)
{
  v8 = dyld4::Loader::mf(this, a3);
  mach_o::Image::Image(v11, v8);
  v9 = v12;
  if (v12)
  {
    if (mach_o::FunctionVariants::count(v12) > a5)
    {
      return dyld4::ProcessConfig::Process::selectFromFunctionVariants((*(a3 + 1) + 16), v9, a5);
    }

    Diagnostics::error(a2, "function variant index %u too large for '%s'");
  }

  else
  {
    Diagnostics::error(a2, "function variant table missing for '%s'");
  }

  return 0;
}

void ___ZNK5dyld46Loader25findAndRunAllInitializersERNS_12RuntimeStateE_block_invoke_2(void *a1, unsigned int a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = &v3[a2];
  dyld4::LibSystemHelpersWrapper::__cxa_atexit((a1[6] + 160), v5, 0, v3);
  v6 = a1[6];
  if (*(*(v6 + 1) + 323) == 1)
  {
    v7 = dyld4::Loader::path(v4, v6);
    dyld4::RuntimeState::log(v6, "registering old style destructor %p for %s\n", v5, v7);
  }
}

uint64_t dyld4::LibSystemHelpersWrapper::__cxa_atexit(dyld4::LibSystemHelpersWrapper *this, void (*a2)(void *), void *a3, void *a4)
{
  v32 = a3;
  v33 = a2;
  v31 = a4;
  v15 = lsl::MemoryManager::memoryManager(this);
  result = *(v15 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v8, v9, v10, v11, v12, v13, v14, v29);
    if (result)
    {
      v23 = *(v15 + 6);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 0x40000000;
      v34[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper12__cxa_atexitEPFvPvES4_S4_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESA__block_invoke;
      v34[3] = &__block_descriptor_tmp_212;
      v34[4] = this;
      v34[5] = &v33;
      v34[6] = &v32;
      v34[7] = &v31;
      return lsl::ProtectedStack::withNestedRegularStack(v23, v34, v17, v18, v19, v20, v21, v22, v30);
    }
  }

  if (*(v15 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v25 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v25 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v26 = MEMORY[0xFFFFFC0D8];
          if (v26 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*(**this + 72))(*this, a2, a3, a4);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v27 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v27 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v28 = MEMORY[0xFFFFFC0D0];
                  if (v28 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v24 = *(**this + 72);

  return v24();
}

void ___ZNK5dyld46Loader17forEachBindTargetER11DiagnosticsRNS_12RuntimeStateEU13block_pointerFvjjRKNS0_14ResolvedSymbolEEbU13block_pointerFvS7_RbESC__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 48) + 8) + 24) != *a2)
  {
    ___ZNK5dyld46Loader17forEachBindTargetER11DiagnosticsRNS_12RuntimeStateEU13block_pointerFvjjRKNS0_14ResolvedSymbolEEbU13block_pointerFvS7_RbESC__block_invoke_3_cold_1();
  }

  v4 = *(a1 + 56);
  Diagnostics::Diagnostics(v8);
  dyld4::Loader::resolveSymbol(v4, *(a1 + 64), v8, *(a2 + 4), *(a2 + 8), *(a2 + 24), *(a2 + 25), *(a1 + 32), &v5);
  if (Diagnostics::hasError(v8))
  {
    *&v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 += *(a2 + 16);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  ++*(*(*(a1 + 48) + 8) + 24);
  Diagnostics::~Diagnostics(v8);
}

unint64_t dyld4::Loader::functionVariantTableVMOffset(dyld4::Loader *this, const dyld4::RuntimeState *a2)
{
  v4 = 0;
  v2 = dyld4::Loader::mf(this, a2);
  if (mach_o::Header::hasFunctionsVariantTable(v2, &v4))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void dyld4::Loader::logSegmentsFromSharedCache(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  v4 = dyld4::Loader::path(this, a2);
  dyld4::RuntimeState::log(a2, "Using mapping in dyld cache for %s\n", v4);
  v5 = *(*(a2 + 1) + 392);
  Address = dyld4::Loader::loadAddress(this, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5dyld46Loader26logSegmentsFromSharedCacheERNS_12RuntimeStateE_block_invoke;
  v7[3] = &__block_descriptor_tmp_131_0;
  v7[4] = a2;
  v7[5] = v5;
  mach_o::Header::forEachSegment(Address, v7);
}

void ___ZNK5dyld46Loader26logSegmentsFromSharedCacheERNS_12RuntimeStateE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = 120;
  if ((*(a2 + 47) & 4) == 0)
  {
    v2 = 46;
  }

  v3 = 119;
  if ((*(a2 + 47) & 2) == 0)
  {
    v3 = 46;
  }

  v4 = 114;
  if ((*(a2 + 47) & 1) == 0)
  {
    v4 = 46;
  }

  dyld4::RuntimeState::log(*(a1 + 32), "%14.*s (%c%c%c) 0x%012llX->0x%012llX \n", *(a2 + 8), *a2, v4, v3, v2, *(a1 + 40) + *(a2 + 16), *(a1 + 40) + *(a2 + 16) + *(a2 + 24));
}

void dyld4::Loader::addWeakDefsToMap(dyld4::RuntimeState *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *a2;
    v5 = 8 * v2;
    do
    {
      v6 = *v4;
      Address = dyld4::Loader::loadAddress(*v4, a1);
      if ((*(Address + 25) & 0x80) != 0)
      {
        v8 = Address;
        if ((dyld4::Loader::hiddenFromFlat(v6, 0) & 1) == 0)
        {
          Diagnostics::Diagnostics(v11);
          v9 = mach_o::Header::preferredLoadAddress(v8);
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 0x40000000;
          v10[2] = ___ZN5dyld46Loader16addWeakDefsToMapERNS_12RuntimeStateERKNSt3__14spanIPKS0_Lm18446744073709551615EEE_block_invoke;
          v10[3] = &__block_descriptor_tmp_133;
          v10[4] = a1;
          v10[5] = v6;
          v10[6] = v9;
          dyld3::MachOLoaded::forEachGlobalSymbol(v8, v11, v10);
          Diagnostics::~Diagnostics(v11);
        }
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }
}

void *___ZN5dyld46Loader16addWeakDefsToMapERNS_12RuntimeStateERKNSt3__14spanIPKS0_Lm18446744073709551615EEE_block_invoke(void *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a2;
  if (a6 < 0)
  {
    v7 = result;
    v8 = dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::find<char const*>(*(result[4] + 416), (*(result[4] + 416) + 16), (*(result[4] + 416) + 56), 0, &v11);
    result = *(v7[4] + 416);
    if (v8 == (result[7] + 24 * result[9]))
    {
      v9 = v7[5];
      v10 = (a3 - v7[6]) & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v12[1] = 0;
      v12[2] = 0;
      v12[0] = v11;
      result = dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::insert(result, v12);
      result[1] = v9;
      result[2] = v10;
    }
  }

  return result;
}

__n128 __Block_byref_object_copy__134(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK5dyld46Loader13resolveSymbolER11DiagnosticsRNS_12RuntimeStateEiPKcbbU13block_pointerFvjjRKNS0_14ResolvedSymbolEEb_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v4 = *(result + 48);
  v3 = *(result + 56);
  v12[0] = v3 + 32;
  v12[1] = v3 + 64;
  while (1)
  {
    v5 = v12[v2];
    v6 = *(v5 + 16);
    if (v6)
    {
      break;
    }

LABEL_11:
    if (++v2 == 2)
    {
      return result;
    }
  }

  v7 = *(v5 + 8);
  v8 = 8 * v6;
  v9 = v7;
  while (1)
  {
    v10 = *v9;
    result = dyld4::Loader::hiddenFromFlat(*v9, 0);
    if (!result || v4 == v10)
    {
      result = dyld4::Loader::hasExportedSymbol(v10, *(v1 + 64), *(v1 + 56), *(v1 + 72), 1, 1u, (*(*(v1 + 32) + 8) + 40), 0);
      if (result)
      {
        break;
      }
    }

    ++v9;
    ++v7;
    v8 -= 8;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  *(*(*(v1 + 40) + 8) + 24) = 1;
  return result;
}

void ___ZNK5dyld46Loader13resolveSymbolER11DiagnosticsRNS_12RuntimeStateEiPKcbbU13block_pointerFvjjRKNS0_14ResolvedSymbolEEb_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 88) == 1)
  {
    dyld4::RuntimeState::log(*(a1 + 64), "looking for weak-def symbol '%s':\n", *(a1 + 72));
  }

  v3 = *(a1 + 64);
  v4 = *(v3 + 408) + 1;
  *(v3 + 408) = v4;
  if (v4 >= 0x1389 && !*(v3 + 416))
  {
    v5 = lsl::Allocator::malloc(*(v3 + 16), 0x60uLL);
    *(*(a1 + 64) + 416) = dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::Map(v5);
    v3 = *(a1 + 64);
  }

  v6 = *(v3 + 416);
  if (v6 && (v7 = dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::find<char const*>(v6, (v6 + 16), (v6 + 56), 0, (a1 + 72)), v7 != (*(*(*(a1 + 64) + 416) + 56) + 24 * *(*(*(a1 + 64) + 416) + 72))) && (v8 = v7[1]) != 0)
  {
    *(*(*(a1 + 40) + 8) + 40) = v8;
    v9 = *(a1 + 72);
    *(*(*(a1 + 40) + 8) + 48) = v9;
    *(*(*(a1 + 40) + 8) + 56) = v7[2] & 0x3FFFFFFFFFFFFFFFLL;
    *(*(*(a1 + 40) + 8) + 64) = 0;
    *(*(*(a1 + 40) + 8) + 72) = 1;
    *(*(*(a1 + 40) + 8) + 76) = (v7[2] & 0x4000000000000000) != 0;
    *(*(*(a1 + 40) + 8) + 77) = v7[2] < 0;
    *(*(*(a1 + 40) + 8) + 78) = 0;
    *(*(*(a1 + 40) + 8) + 79) = 0;
    if (*(a1 + 88) == 1)
    {
      v10 = *(a1 + 64);
      v11 = dyld4::Loader::path(*(*(*(a1 + 40) + 8) + 40), v10);
      dyld4::RuntimeState::log(v10, "  found %s in map, using impl from %s\n", v9, v11);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    __chkstk_darwin();
    v61 = v59 - ((v12 + 23) & 0xFFFFFFFFFFFFFFF0);
    v62 = v2;
    v13 = *(a1 + 64);
    v14 = *(v13 + 6);
    v59[1] = v15;
    v60 = v14;
    if ((*(v2 + 4) & 2) != 0)
    {
      hasOpcodeFixups = 0;
    }

    else
    {
      v16 = dyld4::Loader::mf(v2, v13);
      hasOpcodeFixups = dyld3::MachOFile::hasOpcodeFixups(v16);
      v13 = *(a1 + 64);
    }

    v18 = 0;
    v19 = 0;
    v65[0] = v13 + 32;
    v65[1] = v13 + 64;
    while (1)
    {
      v20 = v65[v18];
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = *(v20 + 8);
        v23 = 8 * v21;
        v24 = v22;
        do
        {
          v25 = *v24;
          if ((*(*v24 + 2) & 0x800) != 0)
          {
            v26 = *v24;
            *&v64[26] = 0;
            *&v64[20] = 0;
            v64[24] = 0;
            if ((dyld4::Loader::hiddenFromFlat(v25, 0) & 1) == 0 && dyld4::Loader::hasExportedSymbol(v26, *(a1 + 80), *(a1 + 64), *(a1 + 72), 1, 1u, v63, 0) && (!hasOpcodeFixups || (v64[21] & 1) != 0 || (*(v26 + 2) & 2) == 0))
            {
              if ((*(*v63 + 4) & 2) != 0 && (dyld4::Loader::hasBeenFixedUp(v26, *(a1 + 64)) & 1) == 0)
              {
                if (v19 >= v60)
                {
                  ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
                }

                v27 = *v64;
                v28 = &v61[16 * v19++];
                *v28 = *v63;
                *(v28 + 1) = v27;
              }

              v29 = *(*(a1 + 48) + 8);
              if ((*(v29 + 24) & 1) == 0)
              {
                *(v29 + 24) = 1;
                v30 = *(*(a1 + 40) + 8);
                v31 = *&v64[12];
                v32 = *v64;
                *(v30 + 40) = *v63;
                *(v30 + 56) = v32;
                *(v30 + 68) = v31;
                if (*(a1 + 88) == 1)
                {
                  v34 = *(a1 + 64);
                  v33 = *(a1 + 72);
                  v35 = dyld4::Loader::path(*v63, v34);
                  dyld4::RuntimeState::log(v34, "  using '%s' in %s\n", v33, v35);
                }
              }

              if ((v64[21] & 1) == 0)
              {
                v36 = *(*(a1 + 40) + 8);
                if (*(v36 + 77) == 1)
                {
                  v37 = *&v64[12];
                  v38 = *v64;
                  *(v36 + 40) = *v63;
                  *(v36 + 56) = v38;
                  *(v36 + 68) = v37;
                  if (*(a1 + 88) == 1)
                  {
                    v40 = *(a1 + 64);
                    v39 = *(a1 + 72);
                    v41 = dyld4::Loader::path(*v63, v40);
                    dyld4::RuntimeState::log(v40, "  using non-weak '%s' in %s\n", v39, v41);
                  }
                }
              }
            }
          }

          ++v24;
          ++v22;
          v23 -= 8;
        }

        while (v23);
      }

      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && dyld4::Loader::hiddenFromFlat(v62, 0))
      {
        if (*(a1 + 88) == 1)
        {
          v43 = *(a1 + 64);
          v42 = *(a1 + 72);
          v44 = dyld4::Loader::path(v62, v43);
          v45 = strrchr(v44, 47);
          if (v45)
          {
            v46 = v45 + 1;
          }

          else
          {
            v46 = v44;
          }

          dyld4::RuntimeState::log(v43, "  did not find unhidden '%s', trying self (%s)\n", v42, v46);
        }

        *&v64[26] = 0;
        *&v64[20] = 0;
        v64[24] = 0;
        if (dyld4::Loader::hasExportedSymbol(v62, *(a1 + 80), *(a1 + 64), *(a1 + 72), 1, 1u, v63, 0))
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          v47 = *(*(a1 + 40) + 8);
          v48 = *&v64[12];
          v49 = *v64;
          *(v47 + 40) = *v63;
          *(v47 + 56) = v49;
          *(v47 + 68) = v48;
        }
      }

      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        break;
      }

      if (++v18 == 2)
      {
        return;
      }
    }

    if (v19 && (*(*(*(*(a1 + 40) + 8) + 40) + 4) & 2) == 0 && *(a1 + 32))
    {
      v50 = 0;
      v51 = v61 + 8;
      v52 = 16 * v19;
      do
      {
        v53 = dyld4::Loader::mf(*(v51 - 1), *(a1 + 64));
        v63[0] = 0;
        if (dyld4::ProcessConfig::DyldCache::findMachHeaderImageIndex((*(*(a1 + 64) + 8) + 368), v53, v63))
        {
          Address = mach_o::Header::preferredLoadAddress(v53);
          v55 = *(a1 + 64);
          v56 = *v51 + Address - *(*(v55 + 1) + 400);
          if (v56 != v50)
          {
            if (*(a1 + 88) == 1)
            {
              v57 = *(a1 + 72);
              v58 = dyld4::Loader::path(*(v51 - 1), *(a1 + 64));
              dyld4::RuntimeState::log(v55, "  found use of '%s' in cache, need to override: %s\n", v57, v58);
            }

            (*(*(a1 + 32) + 16))();
            v50 = v56;
          }
        }

        v51 += 2;
        v52 -= 16;
      }

      while (v52);
    }
  }
}

uint64_t dyld4::Loader::tooNewErrorAddendum(dyld4::Loader *this, Diagnostics *a2, dyld4::RuntimeState *a3)
{
  mach_o::Header::platformAndVersions(&v13, &dword_0);
  v6 = dyld4::Loader::mf(this, a3);
  mach_o::Header::platformAndVersions(v12, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = ___ZNK5dyld46Loader19tooNewErrorAddendumER11DiagnosticsRNS_12RuntimeStateE_block_invoke;
  v8[3] = &__block_descriptor_tmp_153_0;
  v8[4] = v13;
  v9 = v14;
  v10 = v15;
  v11 = a2;
  return mach_o::PlatformAndVersions::unzip(v12, v8);
}

uint64_t ___ZNK5dyld46Loader19tooNewErrorAddendumER11DiagnosticsRNS_12RuntimeStateE_block_invoke(uint64_t this, uint64_t a2)
{
  if (*a2 == *(this + 32) && *(a2 + 8) == *(this + 40))
  {
    v2 = (a2 + 16);
    if (*(a2 + 16) > *(this + 48))
    {
      v3 = *(this + 64);
      v4 = mach_o::Platform::name((this + 32));
      v6 = mach_o::Version32::toString(v2, v7, v5);
      return Diagnostics::error(v3, " (built for %s %s which is newer than running OS)", v4, v6);
    }
  }

  return this;
}

__n128 __copy_helper_block_8_32c34_ZTSN6mach_o19PlatformAndVersionsE(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a1[2].n128_u32[2] = a2[2].n128_u32[2];
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZNK5dyld46Loader17hasExportedSymbolER11DiagnosticsRNS_12RuntimeStateEPKcNS0_18ExportedSymbolModeENS0_12ResolverModeEPNS0_14ResolvedSymbolEPN5dyld35ArrayIPKS0_EE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = mach_o::SymbolTable::SymbolTable(&v12, a2);
  v5 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK5dyld46Loader17hasExportedSymbolER11DiagnosticsRNS_12RuntimeStateEPKcNS0_18ExportedSymbolModeENS0_12ResolverModeEPNS0_14ResolvedSymbolEPN5dyld35ArrayIPKS0_EE_block_invoke_2;
  v8[3] = &unk_A1878;
  v9 = *(a1 + 56);
  v6 = *(a1 + 80);
  v10 = *(a1 + 72);
  v11 = v6;
  v8[4] = *(a1 + 32);
  v8[5] = v3;
  return mach_o::SymbolTable::forEachGlobalSymbol(v4, v5, v8);
}

dyld4::RuntimeState *___ZNK5dyld46Loader17hasExportedSymbolER11DiagnosticsRNS_12RuntimeStateEPKcNS0_18ExportedSymbolModeENS0_12ResolverModeEPNS0_14ResolvedSymbolEPN5dyld35ArrayIPKS0_EE_block_invoke_2(dyld4::RuntimeState *result, char *__s1, uint64_t a3, int a4, uint64_t a5, char a6, _BYTE *a7)
{
  if ((~a4 & 0xF) == 0)
  {
    v10 = result;
    v11 = *(result + 5);
    result = _platform_strcmp(__s1, *(result + 6));
    if (!result)
    {
      v12 = *(v10 + 8);
      **(v10 + 7) = v11;
      *(*(v10 + 7) + 8) = *(v10 + 6);
      Address = mach_o::Header::preferredLoadAddress(v12);
      v14 = *(v10 + 7);
      *(v14 + 16) = a3 - Address;
      *(v14 + 32) = 1;
      *(v14 + 36) = 0;
      *(v14 + 37) = a6 < 0;
      *(v14 + 38) = 0;
      v15 = dyld4::Loader::resolvedAddress(*(v10 + 9), v14);
      *(*(v10 + 7) + 24) = v15;
      result = dyld4::Loader::interpose(*(v10 + 9), v15, 0, v16);
      *(*(v10 + 7) + 24) = result;
      *a7 = 1;
      *(*(*(v10 + 4) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t dyld4::Loader::overriddenCacheHeader(dyld4::Loader *this, dyld4::RuntimeState *a2, const mach_o::Header *a3)
{
  v4 = *(*(this + 1) + 368);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = ___ZN5dyld46Loader21overriddenCacheHeaderERNS_12RuntimeStateEPKN6mach_o6HeaderE_block_invoke;
  v14[3] = &unk_A18C8;
  v14[5] = &v15;
  v14[6] = a2;
  v14[4] = &v19;
  DyldSharedCache::forEachDylib(v4, v14);
  if (*(v16 + 24) == 1 && (v5 = *(this + 6)) != 0)
  {
    v6 = *(this + 5);
    v7 = 8 * v5;
    v8 = v6;
    while (1)
    {
      v9 = *v8;
      if ((*(*v8 + 4) & 2) == 0)
      {
        v13 = 0;
        v12 = 0;
        if (dyld4::Loader::overridesDylibInCache(v9, &v12, &v13))
        {
          if (*(v20 + 6) == v13)
          {
            break;
          }
        }
      }

      ++v8;
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v10 = 1;
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

void *___ZN5dyld46Loader21overriddenCacheHeaderERNS_12RuntimeStateEPKN6mach_o6HeaderE_block_invoke(void *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (result[6] == a2)
  {
    *(*(result[4] + 8) + 24) = a4;
    *(*(result[5] + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

void dyld4::Loader::applyInterposingToDyldCache(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  v2 = *(*(this + 1) + 368);
  if (v2 && *(this + 24))
  {
    dyld4::DyldCacheDataConstScopedWriter::DyldCacheDataConstScopedWriter(v20, this);
    dyld4::RuntimeState::setVMAccountingSuspending(this, 1);
    v4 = dyld4::RuntimeState::patchedDataConstPageCount(this);
    v5 = *(this + 24);
    if (v5)
    {
      v6 = *(this + 23);
      v7 = 16 * v5;
      do
      {
        v19 = 0;
        v8 = *(v6 + 8) - v2;
        if (DyldSharedCache::addressInText(v2, v8, &v19))
        {
          v17 = 0;
          v18 = 0;
          IndexedImageEntry = DyldSharedCache::getIndexedImageEntry(v2, v19, &v18, &v17);
          if (IndexedImageEntry)
          {
            v10 = IndexedImageEntry;
            v11 = DyldSharedCache::unslidLoadAddress(v2) + v8;
            Address = mach_o::Header::preferredLoadAddress(v10);
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 0x40000000;
            v14[2] = ___ZN5dyld46Loader27applyInterposingToDyldCacheERNS_12RuntimeStateE_block_invoke;
            v14[3] = &__block_descriptor_tmp_173;
            v14[4] = v6;
            v14[5] = v2;
            v15 = v11 - Address;
            v16 = v19;
            v14[6] = this;
            DyldSharedCache::forEachPatchableExport(v2, v19, v14);
          }
        }

        v6 += 16;
        v7 -= 16;
      }

      while (v7);
    }

    v13 = dyld4::RuntimeState::patchedDataConstPageCount(this);
    dyld4::RuntimeState::increaseJetsamLimit(this, ((v13 - v4) * vm_page_size));
    dyld4::RuntimeState::setVMAccountingSuspending(this, 0);
    dyld4::DyldCacheDataConstLazyScopedWriter::~DyldCacheDataConstLazyScopedWriter(v20);
  }
}

int **___ZN5dyld46Loader27applyInterposingToDyldCacheERNS_12RuntimeStateE_block_invoke(int **result, uint64_t a2, uint64_t a3)
{
  if (*(result + 14) == a2)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = a2;
    v6 = result[5];
    v7 = *result[4];
    v8 = *(result + 15);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZN5dyld46Loader27applyInterposingToDyldCacheERNS_12RuntimeStateE_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_171;
    v9[4] = v6;
    v9[5] = v7;
    v9[6] = result[6];
    v9[7] = a3;
    return DyldSharedCache::forEachPatchableUseOfExport(v6, v8, v5, v9);
  }

  return result;
}

void ___ZN5dyld46Loader27applyInterposingToDyldCacheERNS_12RuntimeStateE_block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = (v6 + a2);
  v8 = *(a1 + 40) + a4;
  if ((a3 & 0x1000000) != 0)
  {
    v10 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(v8, v6 + a2, ((a3 >> 27) & 1), a3, (a3 >> 25) & 3);
    *v7 = v10;
    dyld4::RuntimeState::recordInDataConstBitmap(*(a1 + 48), v7);
    v12 = *(a1 + 48);
    if (*(*(v12 + 1) + 326) == 1)
    {
      v13 = mach_o::ChainedFixupPointerOnDisk::Arm64e::keyName(((a3 >> 25) & 3), v11);
      dyld4::RuntimeState::log(v12, "interpose: *%p = %p (JOP: diversity 0x%04X, addr-div=%d, key=%s)\n", v7, v10, a3, (a3 >> 27) & 1, v13);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    if (*(*(v9 + 1) + 326) == 1)
    {
      dyld4::RuntimeState::log(v9, "interpose: *%p = 0x%0llX (dyld cache patch) to %s\n", v7, v8, *(a1 + 56));
      v9 = *(a1 + 48);
    }

    *v7 = v8;

    dyld4::RuntimeState::recordInDataConstBitmap(v9, v7);
  }
}

void dyld4::Loader::applyCachePatchesToOverride(uint64_t a1, const dyld4::RuntimeState *a2, dyld4::Loader *this, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(a2 + 1) + 368);
  Address = dyld4::Loader::loadAddress(this, a2);
  v14 = *(this + 3) & 0x7FFF;
  if (DyldSharedCache::shouldPatchClientOfImage(v12, a4, v14))
  {
    if (DyldSharedCache::patchInfoVersion(v12) - 2 >= 3)
    {
      dyld4::Loader::applyCachePatchesToOverride();
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = a5;
    v15 = dyld4::RuntimeState::patchedDataConstPageCount(a2);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = ___ZNK5dyld46Loader27applyCachePatchesToOverrideERNS_12RuntimeStateEPKS0_tPKNS0_10DylibPatchERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke;
    v17[3] = &unk_A1980;
    v17[6] = a1;
    v17[7] = a2;
    v19 = a4;
    v18 = v14;
    v17[8] = v12;
    v17[9] = a6;
    v17[4] = &v20;
    v17[5] = &v24;
    v17[10] = Address;
    v17[11] = this;
    DyldSharedCache::forEachPatchableExport(v12, a4, v17);
    if (*v21[3] != -1)
    {
      dyld4::Loader::applyCachePatchesToOverride();
    }

    v16 = dyld4::RuntimeState::patchedDataConstPageCount(a2);
    dyld4::RuntimeState::increaseJetsamLimit(a2, ((v16 - v15) * vm_page_size));
    if (*(v25 + 24) == 1)
    {
      dyld4::RuntimeState::setVMAccountingSuspending(a2, 0);
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }
}

void ___ZNK5dyld46Loader27applyCachePatchesToOverrideERNS_12RuntimeStateEPKS0_tPKNS0_10DylibPatchERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a2;
  v7 = 195903495;
  v8 = *(result + 48);
  v9 = *(*(result + 32) + 8);
  v10 = *(v9 + 24);
  v11 = *v10;
  *(v9 + 24) = v10 + 1;
  if (a4 == 8)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (a4 == 1)
  {
    if (v11)
    {
      if (v11 == 2)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (v11)
  {
LABEL_10:
    v7 = *v10 + dyld4::Loader::loadAddress(v8, *(result + 56));
  }

  v12 = *(result + 100);
  v13 = *(result + 96);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = ___ZNK5dyld46Loader27applyCachePatchesToOverrideERNS_12RuntimeStateEPKS0_tPKNS0_10DylibPatchERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke_2;
  v17[3] = &unk_A1958;
  v17[4] = *(result + 40);
  v17[5] = v8;
  v15 = *(result + 56);
  v14 = *(result + 64);
  v16 = *(result + 80);
  v17[6] = *(result + 72);
  v17[7] = v15;
  v17[8] = v16;
  v17[9] = v7;
  v18 = v12;
  v17[10] = v14;
  v17[11] = a3;
  v17[12] = *(result + 88);
  v17[13] = v10;
  DyldSharedCache::forEachPatchableUseOfExportInImage(v14, v12, v5, v13, v17);
}

void ___ZNK5dyld46Loader27applyCachePatchesToOverrideERNS_12RuntimeStateEPKS0_tPKNS0_10DylibPatchERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke_2(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned __int8 a5)
{
  v10 = *(a1 + 40);
  dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(*(a1 + 48));
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    dyld4::RuntimeState::setVMAccountingSuspending(*(a1 + 56), 1);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v11 = *(a1 + 72);
  if ((a5 & (v11 == 195903495)) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 + a4;
  }

  v13 = *(a1 + 56);
  v14 = v13[24];
  if (v14)
  {
    v15 = (v13[23] + 8);
    v16 = 16 * v14;
    do
    {
      if (*v15 == v12)
      {
        v12 = *(v15 - 1);
      }

      v15 += 2;
      v16 -= 16;
    }

    while (v16);
  }

  v17 = (*(a1 + 64) + a2);
  if ((a5 & 1) == 0 && v11 == 195903495 && *(v13[1] + 331) == 1)
  {
    IndexedImagePath = DyldSharedCache::getIndexedImagePath(*(a1 + 80), *(a1 + 112));
    v19 = *(a1 + 56);
    v20 = *(a1 + 88);
    v21 = dyld4::Loader::path(*(a1 + 96), v19);
    dyld4::RuntimeState::log(v19, "symbol '%s' missing from root that overrides %s. Use of that symbol in %s is being set to 0xBAD4007.\n", v20, IndexedImagePath, v21);
  }

  if ((a3 & 0x1000000) != 0 && v12)
  {
    v22 = ((a3 >> 25) & 3);
    v23 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(v12, v17, ((a3 >> 27) & 1), a3, (a3 >> 25) & 3);
    if (*v17 != v23)
    {
      v24 = v23;
      *v17 = v23;
      dyld4::RuntimeState::recordInDataConstBitmap(*(a1 + 56), v17);
      v25 = *(a1 + 56);
      if (*(*(v25 + 1) + 322) == 1)
      {
        v26 = dyld4::Loader::path(*(a1 + 96), *(a1 + 56));
        strrchr(v26, 47);
        v27 = dyld4::Loader::path(v10, *(a1 + 56));
        strrchr(v27, 47);
        mach_o::ChainedFixupPointerOnDisk::Arm64e::keyName(v22, v28);
        dyld4::RuntimeState::log(v25, "cache fixup: *0x%010lX = 0x%016lX (*%s+0x%010lX = %s+0x%010lX) (JOP: diversity=0x%04X, addr-div=%d, key=%s)\n", v17, v24);
      }
    }
  }

  else if (*v17 != v12)
  {
    *v17 = v12;
    dyld4::RuntimeState::recordInDataConstBitmap(*(a1 + 56), v17);
    v29 = *(a1 + 56);
    if (*(*(v29 + 1) + 322) == 1)
    {
      v30 = dyld4::Loader::path(*(a1 + 96), *(a1 + 56));
      strrchr(v30, 47);
      v31 = dyld4::Loader::path(v10, *(a1 + 56));
      strrchr(v31, 47);
      dyld4::RuntimeState::log(v29, "cache fixup: *0x%010lX = 0x%016lX (*%s+0x%010lX = %s+0x%016lX)\n");
    }
  }
}

void dyld4::Loader::applyCachePatchesTo(dyld4::Loader *this, dyld4::RuntimeState *a2, const dyld4::Loader *a3, dyld4::DyldCacheDataConstLazyScopedWriter *a4)
{
  LOWORD(v12) = 0;
  v11 = 0;
  if (dyld4::Loader::overridesDylibInCache(this, &v11, &v12))
  {
    if (v11)
    {
      dyld4::Loader::applyCachePatchesToOverride(this, a2, a3, v12, v11, a4);
    }

    if ((*(this + 2) & 1) == 0 && *(*(a2 + 1) + 221) == 1)
    {
      CatalystMacTwinPatches = dyld4::JustInTimeLoader::getCatalystMacTwinPatches(this);
      if (CatalystMacTwinPatches)
      {
        v9 = CatalystMacTwinPatches;
        v10 = dyld4::Loader::indexOfUnzipperedTwin(a2, v12);
        if (v10 != 0xFFFF)
        {
          dyld4::Loader::applyCachePatchesToOverride(this, a2, a3, v10, v9, a4);
        }
      }
    }
  }
}

uint64_t dyld4::Loader::indexOfUnzipperedTwin(dyld4::Loader *this, const dyld4::RuntimeState *a2)
{
  v2 = *(this + 1);
  if (*(v2 + 221) != 1)
  {
    return -1;
  }

  v4 = *(this + 119);
  if (!v4)
  {
    IndexedImagePath = dyld4::ProcessConfig::DyldCache::getIndexedImagePath((v2 + 368), a2);
    if (!_platform_strncmp(IndexedImagePath, "/System/iOSSupport/", 0x13uLL))
    {
      v9 = 0;
      if (dyld4::ProcessConfig::DyldCache::indexOfPath((*(this + 1) + 368), IndexedImagePath + 18, &v9))
      {
        return v9;
      }
    }

    return -1;
  }

  if (*(v4 + 12) <= a2)
  {
    dyld4::RuntimeState::findPrebuiltLoader();
  }

  v5 = (v4 + *(v4 + *(v4 + 16) + 4 * a2));
  if ((v5[2] & 1) == 0 || (v5[22] & 4) == 0)
  {
    return -1;
  }

  return v5[30];
}

int **___ZNK5dyld46Loader17applyCachePatchesERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke(int **result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a2;
  v6 = result;
  v7 = 195903495;
  v8 = result[6];
  v9 = *(result[4] + 1);
  v10 = *(v9 + 24);
  v11 = *v10;
  *(v9 + 24) = v10 + 1;
  if (a4 == 8)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if (a4 == 1)
  {
    if (v11)
    {
      if (v11 == 2)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if (v11)
  {
LABEL_10:
    v7 = *v10 + dyld4::Loader::loadAddress(v8, result[7]);
  }

  v12 = *(v6 + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = ___ZNK5dyld46Loader17applyCachePatchesERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke_2;
  v16[3] = &unk_A19A8;
  v13 = v6[8];
  v14 = v6[9];
  v16[4] = v6[5];
  v16[5] = v8;
  v15 = v6[7];
  v16[6] = v14;
  v16[7] = v15;
  v16[8] = v13;
  v16[9] = v7;
  v17 = v12;
  v16[10] = a3;
  v16[11] = v10;
  return DyldSharedCache::forEachPatchableGOTUseOfExport(v13, v12, v5, v16);
}

void ___ZNK5dyld46Loader17applyCachePatchesERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned __int8 a5)
{
  v10 = *(a1 + 40);
  dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(*(a1 + 48));
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    dyld4::RuntimeState::setVMAccountingSuspending(*(a1 + 56), 1);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = (v11 + a2);
  if ((a5 & (v12 == 195903495)) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12 + a4;
  }

  if ((a5 & 1) == 0 && v12 == 195903495 && *(*(*(a1 + 56) + 8) + 332) == 1)
  {
    IndexedImagePath = DyldSharedCache::getIndexedImagePath(v11, *(a1 + 96));
    dyld4::RuntimeState::log(*(a1 + 56), "symbol '%s' missing from root that overrides %s. The shared GOT use of that symbol is being set to 0xBAD4007.\n", *(a1 + 80), IndexedImagePath);
  }

  if ((a3 & 0x1000000) != 0 && v14)
  {
    v16 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(v14, v13, ((a3 >> 27) & 1), a3, (a3 >> 25) & 3);
    if (*v13 != v16)
    {
      v17 = v16;
      *v13 = v16;
      dyld4::RuntimeState::recordInDataConstBitmap(*(a1 + 56), v13);
      v18 = *(a1 + 56);
      if (*(*(v18 + 1) + 322) == 1)
      {
        v19 = dyld4::Loader::path(v10, *(a1 + 56));
        strrchr(v19, 47);
        mach_o::ChainedFixupPointerOnDisk::Arm64e::keyName(((a3 >> 25) & 3), v20);
        dyld4::RuntimeState::log(v18, "cache GOT fixup: *0x%010lX = 0x%016lX (*cache+0x%010lX = %s+0x%016lX) (JOP: diversity=0x%04X, addr-div=%d, key=%s)\n", v13, v17);
      }
    }
  }

  else if (*v13 != v14)
  {
    *v13 = v14;
    dyld4::RuntimeState::recordInDataConstBitmap(*(a1 + 56), v13);
    v21 = *(a1 + 56);
    if (*(*(v21 + 1) + 322) == 1)
    {
      v22 = dyld4::Loader::path(v10, *(a1 + 56));
      strrchr(v22, 47);
      dyld4::RuntimeState::log(v21, "cache GOT fixup: *0x%010lX = 0x%016lX (*cache+0x%010lX = %s+0x%016lX)\n");
    }
  }
}

uint64_t ___ZN5dyld46Loader26getOnDiskBinarySliceOffsetERNS_12RuntimeStateEPKN5dyld39MachOFileEPKc_block_invoke_2(uint64_t a1, int a2, int a3, char *__s2, uint64_t a5, _BYTE *a6)
{
  result = _platform_memcmp(*(a1 + 40), __s2, 0x40uLL);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = &__s2[-*(a1 + 48)];
    *a6 = 1;
  }

  return result;
}

void dyld4::Loader::recursivelyLogChainToLinksWith(dyld4::Loader *a1, dyld4::RuntimeState *a2, const char *a3, dyld4::Loader *a4, uint64_t *a5, void *a6, dyld4::Loader ***a7)
{
  if (a1 == a4)
  {

    dyld4::RuntimeState::printLinkageChain(a2, a5, a3);
  }

  else
  {
    v14 = a7[2];
    if (v14)
    {
      v15 = *a7;
      v16 = 8 * v14;
      while (*v15 != a1)
      {
        ++v15;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v22[0] = a1;
      dyld3::Array<dyld4::Loader const*>::push_back(a7, v22);
      v18 = dyld4::Loader::dependentCount(a1, v17);
      if (v18)
      {
        v19 = v18;
        for (i = 0; i != v19; ++i)
        {
          v24 = 0;
          v21 = dyld4::Loader::dependent(a1, a2, i, &v24);
          if (v21)
          {
            v22[0] = 0;
            v22[1] = v21;
            v23 = v24;
            *a6 = v22;
            dyld4::Loader::recursivelyLogChainToLinksWith(v21, a2, a3, a4, a5, v22, a7);
            *a6 = 0;
          }
        }
      }
    }
  }
}

void dyld4::Loader::logChainToLinksWith(dyld4::Loader *this, dyld4::RuntimeState *a2, const char *a3)
{
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = 8 * v6;
    v9 = v7;
    while (1)
    {
      v10 = *(a2 + 1);
      v12 = *(v10 + 344);
      v11 = *(v10 + 352);
      v13 = *v9;
      v14 = dyld4::Loader::path(*v9, a2);
      v15 = strrchr(v14, 47);
      if (v15)
      {
        v14 = v15 + 1;
      }

      if (v11 == _platform_strlen(v14) && !_platform_memcmp(v12, v14, v11))
      {
        break;
      }

      ++v9;
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    if (v13)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  v16 = *(a2 + 10);
  if (v16)
  {
    v17 = *(a2 + 9);
    v18 = 8 * v16;
    v19 = v17;
    while (1)
    {
      v20 = *(a2 + 1);
      v22 = *(v20 + 344);
      v21 = *(v20 + 352);
      v13 = *v19;
      v23 = dyld4::Loader::path(*v19, a2);
      v24 = strrchr(v23, 47);
      if (v24)
      {
        v23 = v24 + 1;
      }

      if (v21 == _platform_strlen(v23) && !_platform_memcmp(v22, v23, v21))
      {
        break;
      }

      ++v19;
      ++v17;
      v18 -= 8;
      if (!v18)
      {
        return;
      }
    }

    if (v13)
    {
LABEL_19:
      __chkstk_darwin();
      v25 = (*(a2 + 10) + *(a2 + 6));
      v30[0] = (&v28[-1] - v26);
      v30[1] = v25;
      v30[2] = 0;
      v28[0] = 0;
      v28[1] = this;
      v29 = mach_o::LinkedDylibAttributes::regular;
      dyld4::Loader::recursivelyLogChainToLinksWith(this, a2, a3, v13, v28, v28, v30);
    }
  }
}

uint64_t dyld4::fixupPage64(uint64_t this, _DWORD *a2, const mwl_info_hdr *a3, const dyld_chained_starts_in_segment *a4, int a5)
{
  v5 = *(&a3->mwli_chains_size + a4 + 1);
  if (v5 != 0xFFFF)
  {
    v6 = a2 + a2[2];
    v7 = (this + v5);
    v8 = this + *(a2 + 2);
    v9 = 6;
    if (a5)
    {
      v9 = 8;
    }

    v10 = *&a2[v9];
    do
    {
      if (v7 >= v8)
      {
        return fprintf(__stderrp, "fixup chain entry (%p) off end of page starting at %p\n");
      }

      v11 = *v7;
      if (*v7 < 0)
      {
        if ((v11 & 0xFFFFFF) >= a2[3])
        {
          return fprintf(__stderrp, "out of range bind ordinal %u (max %u)");
        }

        v12 = *&v6[8 * (v11 & 0xFFFFFF)] + BYTE3(v11);
      }

      else
      {
        v12 = (v11 & 0xFFFFFFFFFLL) + v10 + (v11 >> 36 << 56);
      }

      v13 = (v11 >> 51) & 0xFFF;
      *v7 = v12;
      v7 = (v7 + 4 * v13);
    }

    while (v13);
  }

  return this;
}

unsigned int *dyld4::fixupChain32(unsigned int *this, unsigned int *a2, const mwl_info_hdr *a3, const dyld_chained_starts_in_segment *a4, unsigned int *a5, unsigned int *a6)
{
  while (1)
  {
    if (this >= a5)
    {
      return fprintf(__stderrp, "fixup chain entry (%p) off end of page ending at %p\n", a3, a4);
    }

    v6 = *this;
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v7 = v6 & 0x3FFFFFF;
    mwli_chains_offset = a3->mwli_chains_offset;
    if ((v6 & 0x3FFFFFF) <= mwli_chains_offset)
    {
      v10 = a2[6];
      goto LABEL_8;
    }

    v9 = v7 - ((mwli_chains_offset + 0x4000000) >> 1);
LABEL_9:
    v11 = (v6 >> 26) & 0x1F;
    *this = v9;
    this += v11;
    if (!v11)
    {
      return this;
    }
  }

  if ((v6 & 0xFFFFF) < a2[3])
  {
    v10 = (v6 >> 20) & 0x3F;
    v7 = *(&a4->size + (v6 & 0xFFFFF));
LABEL_8:
    v9 = v7 + v10;
    goto LABEL_9;
  }

  return fprintf(__stderrp, "out of range bind ordinal %u (max %u)", a3, a4);
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper12__cxa_atexitEPFvPvES4_S4_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESA__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (*(***(v2 + 32) + 72))(**(v2 + 32), **(v2 + 40), **(v2 + 48), **(v2 + 56));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

void *dyld3::OverflowSafeArray<dyld4::PageInLinkingRange,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 56 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, 56 * address[2]);
  v9 = address[4] / 0x38;
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

uint64_t ___ZN3lsl13MemoryManager26withReadOnlyMemoryInternalIZZNK5dyld46Loader25findAndRunAllInitializersERNS2_12RuntimeStateEEUb_E3__0EEvT__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          v5 = *(v2 + 32);
          v4 = *(v2 + 40);
          result = (*v5)(*(*(v4 + 8) + 168), *(*(v4 + 8) + 176), *(*(v4 + 8) + 184), *(*(v4 + 8) + 192), v4 + 120);
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v6 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v6 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v7 = MEMORY[0xFFFFFC0D0];
                if (v7 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

const char **dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::find<char const*>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, char **a5)
{
  if (!a3[2])
  {
    return *a3;
  }

  v8 = *a5;
  v9 = _platform_strlen(*a5);
  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v23, v8, v9);
  v11 = a2[2];
  v12 = v11 - 1;
  v13 = v10 & (v11 - 1);
  if (v11 <= v13)
  {
LABEL_8:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v14 = *a2;
  v15 = a3[2];
  v16 = *a3;
  v17 = 1;
  v18 = *a5;
  while (1)
  {
    v19 = *(v14 + 4 * v13);
    if (v19 == -1)
    {
      return (v16 + 24 * v15);
    }

    if (v15 <= v19)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    v20 = (v16 + 24 * v19);
    if (!_platform_strcmp(*v20, v18))
    {
      return v20;
    }

    v21 = v13 + v17++;
    v13 = v21 & v12;
    if (v11 <= (v21 & v12))
    {
      goto LABEL_8;
    }
  }
}

vm_address_t dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::insert(uint64_t a1, char **a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v5 = 2 * *(a1 + 32);
    *a1 = 2 * v4;
    size = 0;
    memset(v24, 0, sizeof(v24));
    if (v5)
    {
      dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(v24, v5);
      do
      {
        v23 = -1;
        dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v24, &v23);
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 72))
    {
      v6 = 0;
      do
      {
        v7 = *dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v6);
        v8 = _platform_strlen(v7);
        v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v23, v7, v8);
        v10 = (v24[2] - 1) & v9;
        if (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) != -1)
        {
          v11 = 1;
          do
          {
            v10 = (v24[2] - 1) & (v10 + v11++);
          }

          while (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) != -1);
        }

        *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) = v6++;
      }

      while (v6 != *(a1 + 72));
    }

    if ((a1 + 16) == v24)
    {
      v24[2] = 0;
      if (v24[3])
      {
        vm_deallocate(mach_task_self_, v24[3], size);
      }
    }

    else
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        vm_deallocate(mach_task_self_, v12, *(a1 + 48));
      }

      *(a1 + 16) = v24[0];
      *(a1 + 24) = *&v24[1];
      v13 = size;
      *(a1 + 40) = v24[3];
      *(a1 + 48) = v13;
    }
  }

  v14 = *a2;
  v15 = _platform_strlen(*a2);
  v16 = (*(a1 + 32) - 1) & std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v24, v14, v15);
  v17 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16);
  if (v17 == -1)
  {
LABEL_21:
    v20 = *(a1 + 72);
    *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16) = v20;
    ++*(a1 + 8);
    dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::push_back((a1 + 56), a2);
    v21 = *(a1 + 72);
    if (!v21)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }

    return *(a1 + 56) + 24 * v21 - 24;
  }

  else
  {
    v18 = 1;
    while (1)
    {
      v19 = dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v17);
      if (!_platform_strcmp(*v19, *a2))
      {
        return dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v17);
      }

      v16 = (*(a1 + 32) - 1) & (v16 + v18++);
      v17 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16);
      if (v17 == -1)
      {
        goto LABEL_21;
      }
    }
  }
}

vm_address_t dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::operator[](vm_address_t *address, vm_address_t a2)
{
  v4 = address[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && address[1] < v5)
    {
      dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::growTo(address, a2 + 1);
    }

    address[2] = v5;
  }

  return *address + 24 * a2;
}

vm_address_t dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](vm_address_t *address, vm_address_t a2)
{
  v4 = address[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && address[1] < v5)
    {
      dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(address, a2 + 1);
    }

    address[2] = v5;
  }

  return *address + 4 * a2;
}

__n128 dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::push_back(vm_address_t *address, __n128 *a2)
{
  v4 = address[2];
  v5 = v4 + 1;
  if (v4 + 1 > address[1])
  {
    dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::growTo(address, v5);
    v4 = address[2];
    v5 = v4 + 1;
  }

  v6 = *address;
  address[2] = v5;
  v7 = (v6 + 24 * v4);
  result = *a2;
  v7[1].n128_u64[0] = a2[1].n128_u64[0];
  *v7 = result;
  return result;
}

lsl::Allocator::Pool *dyld4::JustInTimeLoader::makePatchTable(dyld3::MachOFile **this, dyld4::RuntimeState *a2, uint64_t a3)
{
  v3 = *(a2 + 1);
  if (!*(v3 + 496))
  {
    dyld4::JustInTimeLoader::makePatchTable();
  }

  v4 = a3;
  v7 = PatchTable::patchableExportCount((v3 + 496), a3);
  if (!v7)
  {
    return 0;
  }

  v8 = lsl::Allocator::malloc(*(a2 + 2), 8 * (v7 + 1));
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v9 = this[4];
  IndexedImageEntry = DyldSharedCache::getIndexedImageEntry(*(*(a2 + 1) + 368), v4);
  v32 = 0;
  v33 = &v32;
  v34 = 0x8802000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::Map(v37);
  IndexedImagePath = DyldSharedCache::getIndexedImagePath(*(*(a2 + 1) + 368), v4);
  if (IndexedImagePath)
  {
    v12 = IndexedImagePath;
    if (!strstr(IndexedImagePath, "libdispatch.dylib") && !strstr(v12, "libxpc.dylib"))
    {
      if (_platform_strcmp(v12, "/usr/lib/libodmodule.dylib"))
      {
        if (_platform_strcmp(v12, "/usr/lib/log/liblog_odtypes.dylib"))
        {
          v15 = this[4];
          v29 = v33;
          if (dyld3::MachOFile::hasChainedFixups(v15))
          {
            v63 = 0;
            v64 = &v63;
            v65 = 0x3802000000;
            v66 = __Block_byref_object_copy__93;
            v67 = __Block_byref_object_dispose__94;
            Diagnostics::Diagnostics(v68);
            v53 = 0;
            v54 = &v53;
            v55 = 0x5002000000;
            v56 = __Block_byref_object_copy__25;
            v57 = __Block_byref_object_dispose__26;
            v58 = &v69;
            v59 = 32;
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v52[0] = _NSConcreteStackBlock;
            v52[1] = 0x40000000;
            v52[2] = ___ZN5dyld4L19getObjCPatchClassesEPKN5dyld313MachOAnalyzerERNS0_3MapIPKvbNS_11HashPointerENS_12EqualPointerEEE_block_invoke;
            v52[3] = &unk_A1CB8;
            v52[5] = &v53;
            v52[6] = v15;
            v52[4] = &v63;
            dyld3::MachOAnalyzer::forEachBindTarget(v15, (v64 + 5), 0, v52, &__block_literal_global_0);
            if (!Diagnostics::hasError((v64 + 5)))
            {
              v50 = 0;
              v51 = 0;
              if (mach_o::Header::findObjCDataSection(v15, "__objc_classlist", 16, &v51, &v50))
              {
                v16 = dyld3::MachOFile::pointerSize(v15);
                if (v50 % v16)
                {
                  Diagnostics::error((v64 + 5), "Invalid objc class section size");
                }

                else
                {
                  v24 = v50;
                  v25 = v16;
                  v30 = v50 / v16;
                  v28 = dyld3::MachOAnalyzer::chainedPointerFormat(v15);
                  v17 = (v15 + v51);
                  if (v25 == 8)
                  {
                    if (v24 >= v25)
                    {
                      do
                      {
                        v49 = 0;
                        v48 = 0;
                        if (mach_o::ChainedFixupPointerOnDisk::isBind(v17, v28, &v49, &v48))
                        {
                          if (*(v54 + 56) > v49)
                          {
                            v18 = dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((v54 + 40), v49);
                            v19 = *v18;
                            if (*v18)
                            {
                              v47.n128_u64[0] = *v18;
                              v47.n128_u8[8] = 1;
                              v26 = v19;
                              dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::insert((v29 + 5), &v47);
                              v49 = 0;
                              v48 = 0;
                              if (mach_o::ChainedFixupPointerOnDisk::isBind(v26, v28, &v49, &v48))
                              {
                                if (*(v54 + 56) > v49)
                                {
                                  v20 = dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((v54 + 40), v49);
                                  if (*v20)
                                  {
                                    v47.n128_u64[0] = *v20;
                                    v47.n128_u8[8] = 1;
                                    dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::insert((v29 + 5), &v47);
                                  }
                                }
                              }
                            }
                          }
                        }

                        v17 = (v17 + 8);
                        --v30;
                      }

                      while (v30);
                    }
                  }

                  else if (v24 >= v25)
                  {
                    do
                    {
                      v49 = 0;
                      v48 = 0;
                      if (mach_o::ChainedFixupPointerOnDisk::isBind(v17, v28, &v49, &v48))
                      {
                        if (*(v54 + 56) > v49)
                        {
                          v21 = dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((v54 + 40), v49);
                          v22 = *v21;
                          if (*v21)
                          {
                            v47.n128_u64[0] = *v21;
                            v47.n128_u8[8] = 1;
                            v27 = v22;
                            dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::insert((v29 + 5), &v47);
                            v49 = 0;
                            v48 = 0;
                            if (mach_o::ChainedFixupPointerOnDisk::isBind(v27, v28, &v49, &v48))
                            {
                              if (*(v54 + 56) > v49)
                              {
                                v23 = dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((v54 + 40), v49);
                                if (*v23)
                                {
                                  v47.n128_u64[0] = *v23;
                                  v47.n128_u8[8] = 1;
                                  dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::insert((v29 + 5), &v47);
                                }
                              }
                            }
                          }
                        }
                      }

                      v17 = (v17 + 4);
                      --v30;
                    }

                    while (v30);
                  }
                }
              }
            }

            _Block_object_dispose(&v53, 8);
            v60 = 0;
            if (v61)
            {
              vm_deallocate(mach_task_self_, v61, v62);
            }

            _Block_object_dispose(&v63, 8);
            Diagnostics::~Diagnostics(v68);
          }
        }
      }
    }
  }

  v69 = 0;
  v70 = &v69;
  v71 = 0x8802000000;
  v72 = __Block_byref_object_copy__3;
  v73 = __Block_byref_object_dispose__3;
  dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::Map(v74);
  v13 = this[4];
  v53 = _NSConcreteStackBlock;
  v54 = 0x40000000;
  v55 = ___ZN5dyld4L19getSingletonPatchesEPKN6mach_o6HeaderERN5dyld33MapIPKvbNS_11HashPointerENS_12EqualPointerEEE_block_invoke;
  v56 = &__block_descriptor_tmp_106;
  v57 = v13;
  v58 = v70 + 5;
  mach_o::Header::forEachSingletonPatch(v13, &v53);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 0x40000000;
  v31[2] = ___ZNK5dyld416JustInTimeLoader14makePatchTableERNS_12RuntimeStateEj_block_invoke;
  v31[3] = &unk_A1AD0;
  v31[8] = a2;
  v31[9] = IndexedImageEntry;
  v31[4] = &v69;
  v31[5] = &v32;
  v31[6] = &v43;
  v31[7] = this;
  v31[10] = v8;
  v31[11] = v9;
  PatchTable::forEachPatchableExport((v3 + 496), v4, v31);
  *(v8 + *(v44 + 6)) = -1;
  _Block_object_dispose(&v69, 8);
  v77 = 0;
  if (address)
  {
    vm_deallocate(mach_task_self_, address, size);
  }

  v74[4] = 0;
  if (v75)
  {
    vm_deallocate(mach_task_self_, v75, v76);
  }

  _Block_object_dispose(&v32, 8);
  v40 = 0;
  if (v41)
  {
    vm_deallocate(mach_task_self_, v41, v42);
  }

  v37[4] = 0;
  if (v38)
  {
    vm_deallocate(mach_task_self_, v38, v39);
  }

  _Block_object_dispose(&v43, 8);
  return v8;
}

double __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v3;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v4;
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  return result;
}

uint64_t __Block_byref_object_dispose__3(uint64_t result)
{
  v1 = result;
  *(result + 112) = 0;
  v2 = *(result + 120);
  if (v2)
  {
    result = vm_deallocate(mach_task_self_, v2, *(result + 128));
  }

  v1[9] = 0;
  v3 = v1[10];
  if (v3)
  {
    v4 = mach_task_self_;
    v5 = v1[11];

    return vm_deallocate(v4, v3, v5);
  }

  return result;
}

void ___ZNK5dyld416JustInTimeLoader14makePatchTableERNS_12RuntimeStateEj_block_invoke(uint64_t a1, unsigned int a2, const unsigned __int8 *a3, int a4)
{
  v8 = *(a1 + 56);
  Diagnostics::Diagnostics(v36);
  v35 = 0;
  v33 = 0;
  v34 = 0;
  hasExportedSymbol = dyld4::Loader::hasExportedSymbol(v8, v36, *(a1 + 64), a3, 0, 1u, v32, 0);
  v10 = 0;
  if (hasExportedSymbol)
  {
    Address = dyld4::Loader::loadAddress(v32[0], *(a1 + 64));
    v12 = Address + v32[2];
    v13 = *(a1 + 64);
    if (*(*(v13 + 1) + 329) == 1 && v34 == 1)
    {
      v14 = dyld4::Loader::leafName(v8, *(a1 + 64));
      dyld4::RuntimeState::log(v13, "dyld cache uses of '%s/%s' will be patched to use %p\n", v14, a3, v12);
    }

    if (a4 == 8)
    {
      v21 = *(*(a1 + 40) + 8);
      v37 = v12;
      if (dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::find<unsigned char *>(v21 + 40, (v21 + 56), (v21 + 96), 0, &v37) != *(*(*(a1 + 40) + 8) + 96) + 16 * *(*(*(a1 + 40) + 8) + 112))
      {
        v22 = *(a1 + 72);
        if (!dyld3::MachOAnalyzer::isSwiftClass(Address, v12))
        {
          v23 = (v22 + a2);
          if (!dyld3::MachOAnalyzer::isSwiftClass(v22, v23))
          {
            v24 = *(a1 + 64);
            lsl::Vector<dyld4::InterposeTupleAll>::reserve(v24 + 272, *(v24 + 288) + 1);
            v25 = *(v24 + 280);
            v26 = *(v24 + 288);
            *(v24 + 288) = v26 + 1;
            v27 = (v25 + 16 * v26);
            *v27 = v23;
            v27[1] = v12;
            v28 = *(a1 + 64);
            lsl::Vector<dyld4::ObjCClassReplacement>::reserve(v28 + 304, *(v28 + 320) + 1);
            v29 = *(v28 + 312);
            v30 = *(v28 + 320);
            *(v28 + 320) = v30 + 1;
            v31 = (v29 + 32 * v30);
            *v31 = v22;
            v31[1] = v23;
            v31[2] = Address;
            v31[3] = v12;
            v10 = 1;
            goto LABEL_13;
          }
        }
      }
    }

    else if (a4 == 1)
    {
      v15 = *(*(a1 + 32) + 8);
      v37 = v12;
      if (dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::find<unsigned char *>(v15 + 40, (v15 + 56), (v15 + 96), 0, &v37) != *(*(*(a1 + 32) + 8) + 96) + 16 * *(*(*(a1 + 32) + 8) + 112))
      {
        v16 = *(a1 + 64);
        v17 = *(a1 + 72) + a2;
        lsl::Vector<dyld4::InterposeTupleAll>::reserve(v16 + 336, *(v16 + 352) + 1);
        v18 = *(v16 + 344);
        v19 = *(v16 + 352);
        *(v16 + 352) = v19 + 1;
        v20 = (v18 + 16 * v19);
        *v20 = v17;
        v20[1] = v12;
        v10 = 2;
        goto LABEL_13;
      }
    }

    v10 = &v12[-*(a1 + 88)];
  }

LABEL_13:
  *(*(a1 + 80) + 8 * (*(*(*(a1 + 48) + 8) + 24))++) = v10;
  Diagnostics::~Diagnostics(v36);
}

int **___ZN5dyld416JustInTimeLoader28handleStrongWeakDefOverridesERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(v4 + 8) + 368);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZN5dyld416JustInTimeLoader17cacheWeakDefFixupERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEjjRKNS_6Loader14ResolvedSymbolE_block_invoke;
  v8[3] = &__block_descriptor_tmp_23;
  v8[4] = v6;
  v8[5] = v4;
  v8[6] = a4;
  v8[7] = v5;
  return DyldSharedCache::forEachPatchableUseOfExport(v6, a2, a3, v8);
}

void ___ZN5dyld416JustInTimeLoader28handleStrongWeakDefOverridesERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke_2(uint64_t a1, char *a2)
{
  Diagnostics::Diagnostics(v5);
  dyld4::Loader::resolveSymbol(*(a1 + 40), *(a1 + 48), v5, -3, a2, 1, 0, *(a1 + 32), v4);
  Diagnostics::~Diagnostics(v5);
}

void ___ZN5dyld416JustInTimeLoader17cacheWeakDefFixupERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEjjRKNS_6Loader14ResolvedSymbolE_block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = (*(a1 + 32) + a2);
  v7 = dyld4::Loader::resolvedAddress(*(a1 + 40), *(a1 + 48)) + a4;
  if ((a3 & 0x1000000) != 0)
  {
    v7 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(v7, v6, ((a3 >> 27) & 1), a3, (a3 >> 25) & 3);
  }

  if (*v6 != v7)
  {
    dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(*(a1 + 56));
    v8 = *(a1 + 40);
    if (*(*(v8 + 1) + 322) == 1)
    {
      dyld4::RuntimeState::log(v8, "cache patch: %p = 0x%0lX\n", v6, v7);
    }

    *v6 = v7;
  }
}

int **___ZNK5dyld416JustInTimeLoader11applyFixupsER11DiagnosticsRNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEbPN3lsl6VectorINSt3__14pairIPKNS_6LoaderEPKcEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(v4 + 8) + 368);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZN5dyld416JustInTimeLoader17cacheWeakDefFixupERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEjjRKNS_6Loader14ResolvedSymbolE_block_invoke;
  v8[3] = &__block_descriptor_tmp_23;
  v8[4] = v6;
  v8[5] = v4;
  v8[6] = a4;
  v8[7] = v5;
  return DyldSharedCache::forEachPatchableUseOfExport(v6, a2, a3, v8);
}

double __Block_byref_object_copy__25(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__26(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

double __Block_byref_object_copy__27(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__28(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

vm_address_t *___ZNK5dyld416JustInTimeLoader11applyFixupsER11DiagnosticsRNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEbPN3lsl6VectorINSt3__14pairIPKNS_6LoaderEPKcEEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (*(a2 + 32) == 1 && *a2 == 0)
  {
    v13 = *(a1 + 56);
    if (*(*(v13 + 1) + 322) == 1)
    {
      v14 = dyld4::Loader::leafName(*(a1 + 48), *(a1 + 56));
      dyld4::RuntimeState::log(v13, "<%s/bind#%llu> -> missing-weak-bind (%s)\n", v14, *(*(*(a1 + 32) + 8) + 56), *(a2 + 8));
    }

    v15 = *(*(a1 + 32) + 8);
    v20.n128_u64[0] = -1;
    return dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back((v15 + 40), &v20);
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = dyld4::Loader::resolvedAddress(v6, a2);
    v9 = dyld4::Loader::interpose(v6, v7, v4, v8);
    v21 = v9;
    v10 = *(a1 + 56);
    if (*(*(v10 + 1) + 322) == 1)
    {
      v11 = v9;
      if (*a2)
      {
        v12 = dyld4::Loader::leafName(*a2, *(a1 + 56));
        v10 = *(a1 + 56);
      }

      else
      {
        v12 = "<none>";
      }

      v17 = dyld4::Loader::leafName(v4, v10);
      dyld4::RuntimeState::log(v10, "<%s/bind#%llu> -> %p (%s/%s)\n", v17, *(*(*(a1 + 32) + 8) + 56), v11, v12, *(a2 + 8));
    }

    if (*(a2 + 38) == 1)
    {
      v18 = *(a1 + 32);
      v19 = *(*(a1 + 40) + 8);
      v20.n128_u64[0] = *(a2 + 8);
      v20.n128_u32[2] = *(*(v18 + 8) + 56);
      dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back((v19 + 40), &v20);
    }

    return dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back((*(*(a1 + 32) + 8) + 40), &v21);
  }
}

void dyld4::JustInTimeLoader::unmap(dyld4::JustInTimeLoader *this, dyld4::SyscallDelegate **a2, char a3)
{
  v3 = *(this + 2);
  if ((v3 & 2) == 0 && !*(this + 13))
  {
    if ((v3 & 0x20) != 0 && (a3 & 1) == 0)
    {
      v6 = *(this + 20) ? this + *(this + 20) : 0;
      dyld4::RuntimeState::log(a2, "trying to unmap %s\n", v6);
      if ((*(this + 2) & 0x20) != 0)
      {
        dyld4::JustInTimeLoader::unmap();
      }
    }

    v7 = dyld3::MachOFile::mappedSize(*(this + 4));
    v8 = *(this + 4);
    dyld4::SyscallDelegate::unmapFile(a2[1], v8, v7);
    if (*(a2[1] + 321) == 1)
    {
      if (*(this + 20))
      {
        v9 = this + *(this + 20);
      }

      else
      {
        v9 = 0;
      }

      dyld4::RuntimeState::log(a2, "unmapped 0x%012lX->0x%012lX for %s\n", v8, &v8[v7], v9);
    }
  }
}

void dyld4::JustInTimeLoader::getFileValidationInfo(dyld4::JustInTimeLoader *this@<X0>, uint64_t a2@<X8>)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x6002000000;
  v14 = __Block_byref_object_copy__70;
  v15 = __Block_byref_object_dispose__71;
  bzero(&v16, 0x38uLL);
  if (*(this + 80) == 1)
  {
    v4 = v12;
    *(v12 + 92) = 1;
    v5 = *(this + 7);
    v4[5] = *(this + 6);
    v6 = *(this + 9);
    v4[7] = v5;
    v4[8] = v6;
  }

  if ((*(this + 2) & 2) != 0)
  {
    v8 = v12;
  }

  else
  {
    v7 = *(this + 4);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = ___ZNK5dyld416JustInTimeLoader21getFileValidationInfoERNS_12RuntimeStateE_block_invoke;
    v10[3] = &unk_A1C40;
    v10[4] = &v11;
    dyld3::MachOAnalyzer::forEachCDHash(v7, v10);
    v8 = v12;
    v12[6] = *(this + 8);
  }

  v9 = *(v8 + 7);
  *a2 = *(v8 + 5);
  *(a2 + 16) = v9;
  *(a2 + 32) = *(v8 + 9);
  *(a2 + 48) = v8[11];
  _Block_object_dispose(&v11, 8);
}

__n128 __Block_byref_object_copy__70(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 ___ZNK5dyld416JustInTimeLoader21getFileValidationInfoERNS_12RuntimeStateE_block_invoke(uint64_t a1, __n128 *a2)
{
  *(*(*(a1 + 32) + 8) + 93) = 1;
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  *(v2 + 88) = a2[1].n128_u32[0];
  *(v2 + 72) = result;
  return result;
}

__n128 __Block_byref_object_copy__74(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

dyld4::Loader *dyld4::JustInTimeLoader::makeJustInTimeLoaderDyldCache(Diagnostics *a1, dyld4::RuntimeState *a2, char *a3, int a4, int a5)
{
  v5 = a5;
  v25 = 0;
  v24 = 0;
  IndexedImageEntry = dyld4::ProcessConfig::DyldCache::getIndexedImageEntry((*(a2 + 1) + 368), a5, &v25, &v24);
  v10 = *(a2 + 1);
  v11 = *(v10 + 537);
  v21 = v24;
  v22 = v25;
  v23 = v11;
  *v19 = *(v10 + 112);
  v20 = *(v10 + 120);
  if (a3)
  {
    v12 = _platform_strlen(a3);
  }

  else
  {
    v12 = 0;
  }

  if (mach_o::Header::loadableIntoProcess(IndexedImageEntry, v19, a3, v12))
  {
    if (_platform_strncmp(a3, "/System/iOSSupport/", 0x13uLL))
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v19[0] = 0;
      v13 = dyld4::ProcessConfig::DyldCache::indexOfPath((*(a2 + 1) + 368), a3 + 18, v19);
      v14 = v19[0];
      if (!v13)
      {
        v14 = 0;
      }
    }

    v16 = dyld4::JustInTimeLoader::make(a2, IndexedImageEntry, a3, &v21, 0, 1, 0, v13, v14);
    v15 = v16;
    *(v16 + 3) = *(v16 + 3) & 0x8000 | v5 & 0x7FFF;
    v17 = *(a2 + 1);
    if (*(v17 + 321) == 1)
    {
      dyld4::Loader::logSegmentsFromSharedCache(v16, a2);
      v17 = *(a2 + 1);
    }

    if (*(v17 + 320) == 1)
    {
      dyld4::Loader::logLoad(v15, a2, a3);
    }
  }

  else
  {
    Diagnostics::error(a1, "wrong platform to load into process");
    return 0;
  }

  return v15;
}

lsl::Allocator::Pool *dyld4::JustInTimeLoader::makePseudoDylibLoader(Diagnostics *a1, uint64_t a2, char *__s, uint64_t a4, mach_o::Header **a5)
{
  v9 = *a5;
  memset(v15, 0, sizeof(v15));
  v10 = *(a2 + 8);
  v13 = *(v10 + 112);
  v14 = *(v10 + 120);
  if (__s)
  {
    v11 = _platform_strlen(__s);
  }

  else
  {
    v11 = 0;
  }

  if (mach_o::Header::loadableIntoProcess(v9, &v13, __s, v11))
  {
    result = dyld4::JustInTimeLoader::make(a2, v9, __s, v15, 0, 0, 0, 0, 0);
    *(result + 13) = a5;
  }

  else
  {
    Diagnostics::error(a1, "wrong platform to load into process");
    return 0;
  }

  return result;
}

vm_address_t *___ZN5dyld4L19getObjCPatchClassesEPKN5dyld313MachOAnalyzerERNS0_3MapIPKvbNS_11HashPointerENS_12EqualPointerEEE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  result = Diagnostics::hasError((*(a1[4] + 8) + 40));
  if (result)
  {
    *a3 = 1;
    return result;
  }

  if (*(a2 + 4))
  {
    v7 = *(a1[5] + 8);
    v14 = 0;
    v8 = (v7 + 40);
    v9 = &v14;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    hasExportedSymbol = dyld3::MachOLoaded::hasExportedSymbol(a1[6], *(a2 + 8), 0, &v14, &v13);
    v11 = *(a1[5] + 8);
    if (hasExportedSymbol)
    {
      return dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back((v11 + 40), &v14);
    }

    v12 = 0;
    v8 = (v11 + 40);
    v9 = &v12;
  }

  return dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v8, v9);
}

vm_address_t dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::insert(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v5 = 2 * *(a1 + 32);
    *a1 = 2 * v4;
    size = 0;
    memset(v19, 0, sizeof(v19));
    if (v5)
    {
      dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(v19, v5);
      do
      {
        v18 = -1;
        dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v19, &v18);
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 72))
    {
      v6 = 0;
      do
      {
        v7 = dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v6);
        v8 = (v19[2] - 1) & *v7;
        if (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v19, v8) != -1)
        {
          v9 = 1;
          do
          {
            v8 = (v19[2] - 1) & (v8 + v9++);
          }

          while (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v19, v8) != -1);
        }

        *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v19, v8) = v6++;
      }

      while (v6 != *(a1 + 72));
    }

    if ((a1 + 16) == v19)
    {
      v19[2] = 0;
      if (v19[3])
      {
        vm_deallocate(mach_task_self_, v19[3], size);
      }
    }

    else
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        vm_deallocate(mach_task_self_, v10, *(a1 + 48));
      }

      *(a1 + 16) = v19[0];
      *(a1 + 24) = *&v19[1];
      v11 = size;
      *(a1 + 40) = v19[3];
      *(a1 + 48) = v11;
    }
  }

  v12 = (*(a1 + 32) - 1) & a2->n128_u64[0];
  v13 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12);
  if (v13 == -1)
  {
LABEL_21:
    v15 = *(a1 + 72);
    *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12) = v15;
    ++*(a1 + 8);
    dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back((a1 + 56), a2);
    v16 = *(a1 + 72);
    if (!v16)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }

    return *(a1 + 56) + 16 * v16 - 16;
  }

  else
  {
    v14 = 1;
    while (*dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v13) != a2->n128_u64[0])
    {
      v12 = (*(a1 + 32) - 1) & (v12 + v14++);
      v13 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12);
      if (v13 == -1)
      {
        goto LABEL_21;
      }
    }

    return dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v13);
  }
}

vm_address_t dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[](vm_address_t *address, vm_address_t a2)
{
  v4 = address[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && address[1] < v5)
    {
      dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::growTo(address, a2 + 1);
    }

    address[2] = v5;
  }

  return *address + 16 * a2;
}

vm_address_t ___ZN5dyld4L19getSingletonPatchesEPKN6mach_o6HeaderERN5dyld33MapIPKvbNS_11HashPointerENS_12EqualPointerEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5.n128_u64[0] = v3 + a2;
  v5.n128_u8[8] = 1;
  return dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::insert(v2, &v5);
}

uint64_t dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::Map(uint64_t a1)
{
  *(a1 + 16) = 0u;
  v2 = (a1 + 16);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = xmmword_8BFE0;
  v3 = 32;
  dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo((a1 + 16), 0x20uLL);
  do
  {
    v5 = -1;
    dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v2, &v5);
    --v3;
  }

  while (v3);
  if (*(a1 + 64) <= 0x1FuLL)
  {
    dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::growTo((a1 + 56), 0x20uLL);
  }

  return a1;
}

uint64_t dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::find<unsigned char *>(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v5 = a3[2];
  if (!v5)
  {
    return *a3;
  }

  v6 = a2[2];
  v7 = (v6 - 1) & *a5;
  if (v6 <= v7)
  {
LABEL_8:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v8 = *a3;
  v9 = 1;
  while (1)
  {
    v10 = *(*a2 + 4 * v7);
    if (v10 == -1)
    {
      return v8 + 16 * v5;
    }

    if (v5 <= v10)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    if (*(v8 + 16 * v10) == *a5)
    {
      return v8 + 16 * v10;
    }

    v7 = (v7 + v9++) & (v6 - 1);
    if (v6 <= v7)
    {
      goto LABEL_8;
    }
  }
}

uint64_t lsl::Vector<dyld4::ObjCClassReplacement>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    return lsl::Vector<dyld4::ObjCClassReplacement>::reserveExact(result, v2);
  }

  return result;
}

uint64_t lsl::Vector<dyld4::ObjCClassReplacement>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 32 * a2);
    if ((result & 1) == 0)
    {
      result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 32 * a2);
      v4 = result;
      v5 = *(v3 + 16);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          v8 = (result + v6);
          v9 = (*(v3 + 8) + v6);
          v10 = v9[1];
          *v8 = *v9;
          v8[1] = v10;
          v5 = *(v3 + 16);
          v6 += 32;
        }
      }

      v11 = *(v3 + 8);
      if (v11)
      {
        result = lsl::Allocator::free(*v3, v11);
        v5 = *(v3 + 16);
      }

      if (v5 >= a2)
      {
        v5 = a2;
      }

      *(v3 + 8) = v4;
      *(v3 + 16) = v5;
    }

    *(v3 + 24) = a2;
  }

  return result;
}

unint64_t *dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(unint64_t *a1, Diagnostics *this, dyld4::RuntimeState *a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v7 = *(a4 + 16);
      v8 = __ROR8__(v7, 56) & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
      *a1 = v8;
      v9 = v8 >> 8;
      v10 = (v8 >> 8) & 0x3FFFFFFFFFFFFFLL;
      v11 = v9 | 0xC0000000000000;
      if ((v7 & 0x20000000000000) == 0)
      {
        v11 = v10;
      }

      if ((v11 | v7 & 0xFF00000000000000) != *(a4 + 16))
      {
        Diagnostics::error(this, "unencodeable absolute value (0x%llx) for symbol '%s'", *(a4 + 16), *(a4 + 8));
      }
    }

    return a1;
  }

  v12 = *a4;
  if (*a4)
  {
    v13 = v12[3];
    if (*(a4 + 40))
    {
      v14 = dyld4::Loader::functionVariantTableVMOffset(v12, a3);
      v15 = *a1 & 0x3FFFFFFFFFFF0000 | v13 | 0x8000000000000000;
      *a1 = v15;
      v16 = *(a4 + 42);
      *a1 = v15 & 0x800000000000FFFFLL | ((v14 & 0xFFFFFFFFFLL) << 26) | ((v16 & 0x3FF) << 16);
      if ((v16 & 0x3FF) != *(a4 + 42))
      {
        dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef();
      }

      if (v14 >> 36)
      {
        dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef();
      }

      return a1;
    }
  }

  else
  {
    if (*(a4 + 40))
    {
      dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef();
    }

    LODWORD(v13) = 0x7FFF;
  }

  v17 = *(a4 + 16);
  *a1 = (v13 | (HIBYTE(v17) << 16)) & 0xC000000000FFFFFFLL | ((v17 & 0x3FFFFFFFFFLL) << 24);
  v18 = v17 & 0x3FFFFFFFFFLL;
  if ((v17 & 0x2000000000) != 0)
  {
    v18 = v17 & 0x3FFFFFFFFFLL | 0xFFFFC000000000;
  }

  if ((v18 | v17 & 0xFF00000000000000) != *(a4 + 16))
  {
    dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef();
  }

  return a1;
}

unint64_t *dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(unint64_t *this, const BindTarget *a2)
{
  if (a2->var0)
  {
    v2 = *(a2->var0 + 3);
  }

  else
  {
    v2 = 0x7FFFLL;
  }

  var1 = a2->var1;
  *this = (v2 | (HIBYTE(var1) << 16)) & 0xC000000000FFFFFFLL | ((var1 & 0x3FFFFFFFFFLL) << 24);
  v4 = var1 & 0x3FFFFFFFFFLL;
  if ((var1 & 0x2000000000) != 0)
  {
    v4 = var1 & 0x3FFFFFFFFFLL | 0xFFFFC000000000;
  }

  if ((v4 | var1 & 0xFF00000000000000) != a2->var1)
  {
    dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef();
  }

  return this;
}

uint64_t dyld4::PrebuiltLoader::unmap(uint64_t this, dyld4::RuntimeState *a2)
{
  v2 = *(this + 6);
  v3 = 960;
  if (v2 < 0)
  {
    v3 = 984;
  }

  *(*(a2 + v3) + (v2 & 0x7FFF)) = 2;
  return this;
}

BOOL dyld4::PrebuiltLoader::hasBeenFixedUp(dyld4::PrebuiltLoader *this, dyld4::RuntimeState *a2)
{
  v2 = *(this + 3);
  v3 = 960;
  if (v2 < 0)
  {
    v3 = 984;
  }

  return *(*(a2 + v3) + (v2 & 0x7FFF)) > 5u;
}

double dyld4::PrebuiltLoader::PrebuiltLoader(dyld4::PrebuiltLoader *this, const dyld4::Loader *a2)
{
  dyld4::Loader::InitialOptions::InitialOptions(v4, a2);
  dyld4::Loader::Loader(this, v4, 1, 0, 0, 0);
  *&result = 1;
  *(this + 13) = 1;
  return result;
}

void ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0 && *(a5 + 36) == 1 && (*(a5 + 32) & 1) == 0)
  {
    v6 = (a1[5] + a4 - a1[4]);
    v7 = *v6 & 0xFFFFFFFFFFFFFFFCLL | 2;
    v8 = a1[6];
    if (*(*(v8 + 1) + 322) == 1)
    {
      dyld4::RuntimeState::log(v8, "fixup: *0x%012lX = 0x%012lX <mark swift stable>\n", v6, v7);
    }

    *v6 = v7;
  }
}

void ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OnlyDataField = dyld3::MachOAnalyzer::ObjCClassInfo::getReadOnlyDataField(a5, 2, *(a1 + 64));
  if (OnlyDataField)
  {
    v7 = OnlyDataField - **(a1 + 32);
    if ((dyld3::MachOAnalyzer::objcMethodListIsRelative(**(a1 + 40), v7) & 1) == 0)
    {
      v8 = *(a1 + 56);
      v9 = (**(a1 + 48) + v7);
      v10 = *v9 | 1;
      if (*(*(v8 + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(v8, "fixup: *0x%012lX = 0x%012lX <mark method list uniqued>\n", v9, v10);
      }

      *v9 = v10;
    }
  }
}

void ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = v5 - **(a1 + 32);
    if ((dyld3::MachOAnalyzer::objcMethodListIsRelative(**(a1 + 40), v6) & 1) == 0)
    {
      v7 = *(a1 + 56);
      v8 = (**(a1 + 48) + v6);
      v9 = *v8 | 1;
      if (*(*(v7 + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(v7, "fixup: *0x%012lX = 0x%012lX <mark method list uniqued>\n", v8, v9);
      }

      *v8 = v9;
    }
  }

  v10 = *(a3 + 24);
  if (v10)
  {
    v11 = v10 - **(a1 + 32);
    if ((dyld3::MachOAnalyzer::objcMethodListIsRelative(**(a1 + 40), v11) & 1) == 0)
    {
      v12 = *(a1 + 56);
      v13 = (**(a1 + 48) + v11);
      v14 = *v13 | 1;
      if (*(*(v12 + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(v12, "fixup: *0x%012lX = 0x%012lX <mark method list uniqued>\n", v13, v14);
      }

      *v13 = v14;
    }
  }
}

void dyld4::PrebuiltLoader::serialize(Diagnostics *a1, const dyld4::RuntimeState *a2, const dyld4::Loader *a3, __int16 a4, uint64_t a5, dyld4::PrebuiltObjC *a6, int a7, dyld4::BumpAllocator *this)
{
  v97 = a1;
  v14 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 0x1C0uLL);
  dyld4::PrebuiltLoader::PrebuiltLoader((*this + v14), a3);
  *(*this + v14 + 6) = a4;
  v15 = dyld4::JustInTimeLoader::mf(a3, a2);
  FixupsLoadCommandFileOffset = dyld3::MachOFile::getFixupsLoadCommandFileOffset(v15);
  v17 = *this;
  v18 = *this + v14;
  *(v18 + 38) = FixupsLoadCommandFileOffset;
  *(v18 + 32) = *(this + 4) - v17 - v14;
  v99 = a2;
  v19 = dyld4::JustInTimeLoader::path(a3, a2);
  v20 = _platform_strlen(v19);
  v21 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, v20 + 1);
  v22 = (*this + v21);
  __s2 = v19;
  memmove(v22, v19, v20 + 1);
  *(*this + v14 + 40) = 0;
  v23 = mach_o::Header::installName(v15);
  if (dyld3::MachOFile::isDylib(v15) && _platform_strcmp(v23, __s2))
  {
    v24 = *(this + 2) - *this;
    *(*this + v14 + 40) = v24 - v14;
    v25 = _platform_strlen(v23);
    dyld4::BumpAllocator::zeroFill(this, v25 + 1);
    memmove((*this + v24), v23, v25 + 1);
  }

  if ((*(a3 + 2) & 2) != 0)
  {
    if (dyld4::ProcessConfig::DyldCache::isOverridablePath((*(v99 + 1) + 368), __s2))
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  *(*this + v14 + 44) = *(*this + v14 + 44) & 0xFFFD | v26;
  v27 = dyld4::JustInTimeLoader::dependentCount(a3);
  v28 = *this;
  *(*this + v14 + 48) = v27;
  v29 = *(this + 2);
  v93 = a5;
  v94 = a6;
  if ((v29 - v28))
  {
    dyld4::BumpAllocator::zeroFill(this, 2 - ((v29 - v28) & 1));
    v29 = *(this + 2);
    v28 = *this;
  }

  v30 = v29 - v28;
  v31 = v30 - v14;
  *(v28 + v14 + 34) = v30 - v14;
  dyld4::BumpAllocator::zeroFill(this, 2 * v27);
  __chkstk_darwin();
  v33 = &v92 - ((v32 + 15) & 0x1FFFFFFF0);
  if ((v34 & 1) != 0 || (bzero(&v92 - ((v32 + 15) & 0x1FFFFFFF0), v32), v27))
  {
    v95 = v15;
    v35 = 0;
    v36 = 0;
    v96 = v14;
    v37 = v14 + v31;
    do
    {
      v38 = dyld4::JustInTimeLoader::dependent(a3, v99, v35, &v33[v35]);
      v39 = v33[v35];
      if (v38)
      {
        *(*this + v37 + 2 * v35) = *(v38 + 6);
      }

      else
      {
        if ((v39 & 1) == 0)
        {
          dyld4::PrebuiltLoader::serialize();
        }

        *(*this + v37 + 2 * v35) = 0x7FFF;
      }

      v36 |= v39 != mach_o::LinkedDylibAttributes::regular;
      ++v35;
    }

    while (v27 != v35);
    v40 = *this;
    v15 = v95;
    v14 = v96;
    v41 = *this + v96;
    *(v41 + 36) = 0;
    if (v36)
    {
      v42 = *(this + 2) - (v14 + v40);
      *(v41 + 36) = v42;
      dyld4::BumpAllocator::zeroFill(this, v27);
      memmove((*this + v14 + v42), v33, v27);
      v40 = *this;
    }
  }

  else
  {
    v40 = *this;
    *(*this + v14 + 36) = 0;
  }

  v43 = a3;
  dyld4::JustInTimeLoader::getExportsTrie(a3, (v40 + v14 + 64), (v40 + v14 + 72));
  v44 = v97;
  *(*this + v14 + 44) = *(*this + v14 + 44) & 0xFFFE | dyld3::MachOFile::hasInitializer(v15, v97);
  if (!Diagnostics::hasError(v44))
  {
    *(*this + v14 + 80) = 0;
    if ((*(a3 + 4) & 2) == 0)
    {
      LODWORD(v115[0]) = 0;
      LODWORD(v104) = 0;
      if (mach_o::Header::hasCodeSignature(v15, v115, &v104))
      {
        v45 = *this + v14;
        *(v45 + 80) = v115[0];
        *(v45 + 84) = v104;
      }

      if ((*(a3 + 2) & 2) == 0)
      {
        goto LABEL_28;
      }
    }

    if (*(*(v99 + 1) + 537) == 1)
    {
LABEL_28:
      if (((*(this + 4) - *this) & 7) != 0)
      {
        dyld4::BumpAllocator::zeroFill(this, 8 - ((*(this + 4) - *this) & 7));
      }

      v117 = 0;
      v116 = 0u;
      memset(v115, 0, sizeof(v115));
      dyld4::JustInTimeLoader::getFileValidationInfo(a3, v115);
      v46 = *(this + 2) - *this;
      *(*this + v14 + 42) = v46 - v14;
      if ((v46 - v14) >= 0x10000)
      {
        dyld4::PrebuiltLoader::serialize();
      }

      dyld4::BumpAllocator::zeroFill(this, 0x38uLL);
      v47 = *this + v46;
      v48 = v115[0];
      v49 = v115[1];
      v50 = v116;
      *(v47 + 48) = v117;
      *(v47 + 16) = v49;
      *(v47 + 32) = v50;
      *v47 = v48;
    }

    *(*this + v14 + 76) = dyld3::MachOFile::mappedSize(v15);
    v114[0] = _NSConcreteStackBlock;
    v114[1] = 0x40000000;
    v114[2] = ___ZN5dyld414PrebuiltLoader9serializeER11DiagnosticsRNS_12RuntimeStateERKNS_16JustInTimeLoaderENS_6Loader9LoaderRefEU13block_pointerFvjjRKNS8_14ResolvedSymbolEERNS_12PrebuiltObjCERKNS_13PrebuiltSwiftERNS_13BumpAllocatorE_block_invoke;
    v114[3] = &__block_descriptor_tmp_57;
    v114[4] = this;
    v114[5] = v14;
    v114[6] = this;
    v114[7] = v14;
    dyld4::JustInTimeLoader::withRegions(v15, v114);
    SectionLocations = dyld4::JustInTimeLoader::getSectionLocations(a3);
    memmove((*this + v14 + 104), SectionLocations, 0x158uLL);
    v52 = *(v99 + 1);
    v53 = *(v52 + 96);
    if (v53 != &mach_o::PlatformInfo_macOS::singleton || *(v52 + 104))
    {
      if (v53 != &mach_o::PlatformInfo_macCatalyst::singleton)
      {
        v55 = 0;
        v56 = 0;
        goto LABEL_45;
      }

      v54 = *(v52 + 104) == 0;
    }

    else
    {
      v54 = 1;
    }

    v55 = 0;
    if ((*(a3 + 2) & 2) != 0)
    {
      v56 = 0;
      if (v54)
      {
        *&v115[0] = &mach_o::PlatformInfo_macCatalyst::singleton;
        DWORD2(v115[0]) = 0;
        if (mach_o::Header::builtForPlatform(v15, v115, 0))
        {
          v56 = 4;
        }

        else
        {
          v56 = 0;
        }

        v55 = 1;
      }
    }

    else
    {
      v56 = 0;
    }

LABEL_45:
    *(*this + v14 + 44) = *(*this + v14 + 44) & 0xFFFB | v56;
    *(*this + v14 + 44) &= ~8u;
    v57 = *this + v14;
    *(v57 + 60) = 0xFFFF;
    if (v55)
    {
      if ((*(v57 + 44) & 4) != 0)
      {
        if (!_platform_strncmp(__s2, "/System/iOSSupport/", 0x13uLL))
        {
          v63 = *(v99 + 6);
          if (v63)
          {
            v64 = *(v99 + 5);
            v65 = 8 * v63;
            v66 = v64;
            while (1)
            {
              v67 = *v66;
              if (dyld4::Loader::matchesPath(*v66, v99, __s2 + 18))
              {
                break;
              }

              ++v66;
              ++v64;
              v65 -= 8;
              if (!v65)
              {
                goto LABEL_60;
              }
            }

            v68 = *this + v14;
            *(v68 + 60) = *(v67 + 3) & 0x7FFF;
            *(v68 + 44) |= 8u;
          }
        }
      }

      else
      {
        strcpy(v115, "/System/iOSSupport");
        strlcat(v115, __s2, 0x400uLL);
        v58 = *(v99 + 6);
        if (v58)
        {
          v59 = *(v99 + 5);
          v60 = 8 * v58;
          v61 = v59;
          while (1)
          {
            v62 = *v61;
            if (dyld4::Loader::matchesPath(*v61, v99, v115))
            {
              break;
            }

            ++v61;
            ++v59;
            v60 -= 8;
            if (!v60)
            {
              goto LABEL_60;
            }
          }

          *(*this + v14 + 60) = *(v62 + 3) & 0x7FFF;
        }
      }
    }

LABEL_60:
    v104 = 0;
    v105 = &v104;
    v106 = 0x5002000000;
    v107 = __Block_byref_object_copy__4;
    v108 = __Block_byref_object_dispose__4;
    v109 = v115;
    v110 = 16;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    if ((*(v43 + 4) & 2) == 0)
    {
      v69 = *(this + 2);
      v70 = *this;
      if (((v69 - *this) & 7) != 0)
      {
        dyld4::BumpAllocator::zeroFill(this, 8 - ((v69 - *this) & 7));
        v69 = *(this + 2);
        v70 = *this;
      }

      v71 = v69 - (v14 + v70);
      *(v70 + v14 + 50) = v71;
      if (v71 >= 0x10000)
      {
        dyld4::PrebuiltLoader::serialize();
      }

      *(v70 + v14 + 52) = 0;
      v103[0] = _NSConcreteStackBlock;
      v103[1] = 0x40000000;
      v103[2] = ___ZN5dyld414PrebuiltLoader9serializeER11DiagnosticsRNS_12RuntimeStateERKNS_16JustInTimeLoaderENS_6Loader9LoaderRefEU13block_pointerFvjjRKNS8_14ResolvedSymbolEERNS_12PrebuiltObjCERKNS_13PrebuiltSwiftERNS_13BumpAllocatorE_block_invoke_62;
      v103[3] = &__block_descriptor_tmp_66;
      v72 = v97;
      v103[4] = v97;
      v103[5] = v99;
      v103[6] = this;
      v103[7] = this;
      v103[8] = v14;
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 0x40000000;
      v102[2] = ___ZN5dyld414PrebuiltLoader9serializeER11DiagnosticsRNS_12RuntimeStateERKNS_16JustInTimeLoaderENS_6Loader9LoaderRefEU13block_pointerFvjjRKNS8_14ResolvedSymbolEERNS_12PrebuiltObjCERKNS_13PrebuiltSwiftERNS_13BumpAllocatorE_block_invoke_2;
      v102[3] = &unk_A1EC8;
      v102[5] = v97;
      v102[6] = v99;
      v102[4] = &v104;
      dyld4::Loader::forEachBindTarget(v43, v97, v99, v93, 1, v103, v102);
      if (Diagnostics::hasError(v72))
      {
        goto LABEL_84;
      }

      if (v105[7])
      {
        v73 = *(this + 2);
        v74 = *this;
        if (((v73 - *this) & 7) != 0)
        {
          dyld4::BumpAllocator::zeroFill(this, 8 - ((v73 - *this) & 7));
          v73 = *(this + 2);
          v74 = *this;
        }

        v75 = v74 + v14;
        *(v75 + 92) = v73 - (v14 + v74);
        *(v75 + 96) = v105[7];
        v76 = v105;
        v77 = v105[7];
        if (v77)
        {
          v78 = v43;
        }

        else
        {
          v79 = v105;
          if (!v105[6])
          {
            dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v105 + 5, 1uLL);
            v79 = v105;
            v73 = *(this + 2);
            v74 = *this;
          }

          v78 = v43;
          v76[7] = 1;
          v77 = v79[7];
        }

        v80 = v76[5];
        v81 = 8 * v77;
        v82 = v73 - v74;
        dyld4::BumpAllocator::zeroFill(this, 8 * v77);
        memmove((*this + v82), v80, v81);
        v43 = v78;
      }
    }

    v83 = dyld4::PrebuiltObjC::serializeFixups(v94, v43, this);
    v84 = v83 - v14;
    if (!v83)
    {
      v84 = 0;
    }

    v85 = *this + v14;
    *(v85 + 56) = v84;
    *(v85 + 8) = *(v43 + 8);
    v86 = *this + v14;
    *(v86 + 24) = *(v15 + 2);
    *(v86 + 88) = 0;
    v101 = 0;
    v100 = 0;
    if (dyld4::JustInTimeLoader::overridesDylibInCache(v43, &v101, &v100))
    {
      v87 = v101;
      if (v101)
      {
        v88 = *(this + 2) - *this;
        *(*this + v14 + 88) = v88 - v14;
        if (*v87 == -1)
        {
          v91 = 8;
        }

        else
        {
          v89 = 1;
          do
          {
            v90 = v87[v89++];
          }

          while (v90 != -1);
          v91 = (v89 * 8);
        }

        dyld4::BumpAllocator::zeroFill(this, v91);
        memmove((*this + v88), v87, v91);
      }
    }

LABEL_84:
    _Block_object_dispose(&v104, 8);
    v111 = 0;
    if (v112)
    {
      vm_deallocate(mach_task_self_, v112, v113);
    }
  }
}

uint64_t dyld4::BumpAllocator::zeroFill(dyld4::BumpAllocator *this, unint64_t a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  result = *this;
  if (v5 - v4 + result < a2)
  {
    v7 = 0x100000;
    if (v5 > 0x100000)
    {
      v7 = v5;
    }

    if (v7 < a2)
    {
      v7 = (a2 & 0xFFFFFFFFFFF00000) + 0x100000;
    }

    address = 0;
    v5 += v7;
    vm_allocate(mach_task_self_, &address, v5, 1006632961);
    result = address;
    if (!address)
    {
      dyld4::BumpAllocator::zeroFill();
    }

    v8 = *(this + 2);
    v9 = v8 - *this;
    if (*this)
    {
      memmove(address, *this, v8 - *this);
      vm_deallocate(mach_task_self_, *this, *(this + 1));
      result = address;
    }

    v4 = result + v9;
    *(this + 1) = v5;
    *(this + 2) = result + v9;
    *this = result;
  }

  v10 = v4 + a2;
  if (v10 > result + v5)
  {
    dyld4::BumpAllocator::zeroFill();
  }

  *(this + 2) = v10;
  return result;
}

void *dyld4::BumpAllocator::append(dyld4::BumpAllocator *this, const void *a2, unint64_t a3)
{
  v6 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, a3);
  v7 = (*this + v6);

  return memmove(v7, a2, a3);
}

dyld4::BumpAllocator *dyld4::BumpAllocator::align(dyld4::BumpAllocator *this, unsigned int a2)
{
  v2 = (*(this + 2) - *this) % a2;
  if (v2)
  {
    return dyld4::BumpAllocator::zeroFill(this, a2 - v2);
  }

  return this;
}

void *___ZN5dyld414PrebuiltLoader9serializeER11DiagnosticsRNS_12RuntimeStateERKNS_16JustInTimeLoaderENS_6Loader9LoaderRefEU13block_pointerFvjjRKNS8_14ResolvedSymbolEERNS_12PrebuiltObjCERKNS_13PrebuiltSwiftERNS_13BumpAllocatorE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 2);
  v6 = *v4;
  if (((v5 - *v4) & 7) != 0)
  {
    dyld4::BumpAllocator::zeroFill(v4, 8 - ((v5 - *v4) & 7));
    v7 = *(a1 + 32);
    v5 = v7[2];
    v6 = *v7;
  }

  v8 = v5 - (*(a1 + 40) + v6);
  v9 = **(a1 + 48) + *(a1 + 56);
  *(v9 + 46) = v8;
  if (v8 >= 0x10000)
  {
    ___ZN5dyld414PrebuiltLoader9serializeER11DiagnosticsRNS_12RuntimeStateERKNS_16JustInTimeLoaderENS_6Loader9LoaderRefEU13block_pointerFvjjRKNS8_14ResolvedSymbolEERNS_12PrebuiltObjCERKNS_13PrebuiltSwiftERNS_13BumpAllocatorE_block_invoke_cold_1();
  }

  *(v9 + 44) = *(v9 + 44) & 0xF | (16 * *(a2 + 16));
  v10 = *(a2 + 16);
  if (!v10)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v11 = *(a1 + 32);
  v12 = *a2;
  v13 = 16 * v10;
  v14 = *(v11 + 2) - *v11;
  dyld4::BumpAllocator::zeroFill(v11, 16 * v10);
  v15 = (*v11 + v14);

  return memmove(v15, v12, v13);
}

double __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__4(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

uint64_t ___ZN5dyld414PrebuiltLoader9serializeER11DiagnosticsRNS_12RuntimeStateERKNS_16JustInTimeLoaderENS_6Loader9LoaderRefEU13block_pointerFvjjRKNS8_14ResolvedSymbolEERNS_12PrebuiltObjCERKNS_13PrebuiltSwiftERNS_13BumpAllocatorE_block_invoke_62(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v10, *(a1 + 32), *(a1 + 40), a2);
  result = Diagnostics::hasError(*(a1 + 32));
  if (result)
  {
    *a3 = 1;
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(v6 + 2) - *v6;
    result = dyld4::BumpAllocator::zeroFill(v6, 8uLL);
    *(*v6 + v7) = v10;
    v8 = **(a1 + 56) + *(a1 + 64);
    v9 = *(v8 + 52);
    *(v8 + 52) = v9 + 1;
    if (v9 == -1)
    {
      ___ZN5dyld414PrebuiltLoader9serializeER11DiagnosticsRNS_12RuntimeStateERKNS_16JustInTimeLoaderENS_6Loader9LoaderRefEU13block_pointerFvjjRKNS8_14ResolvedSymbolEERNS_12PrebuiltObjCERKNS_13PrebuiltSwiftERNS_13BumpAllocatorE_block_invoke_62_cold_1();
    }
  }

  return result;
}

vm_address_t *___ZN5dyld414PrebuiltLoader9serializeER11DiagnosticsRNS_12RuntimeStateERKNS_16JustInTimeLoaderENS_6Loader9LoaderRefEU13block_pointerFvjjRKNS8_14ResolvedSymbolEERNS_12PrebuiltObjCERKNS_13PrebuiltSwiftERNS_13BumpAllocatorE_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v6, *(a1 + 40), *(a1 + 48), a2);
  result = Diagnostics::hasError(*(a1 + 40));
  if (!result)
  {
    return dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back((*(*(a1 + 32) + 8) + 40), &v6);
  }

  *a3 = 1;
  return result;
}

vm_address_t *dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back(vm_address_t *address, void *a2)
{
  v3 = address;
  v4 = address[2];
  v5 = v4 + 1;
  if (v4 + 1 > address[1])
  {
    address = dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(address, v5);
    v4 = v3[2];
    v5 = v4 + 1;
  }

  v6 = *v3;
  v3[2] = v5;
  *(v6 + 8 * v4) = *a2;
  return address;
}

void dyld4::PrebuiltLoader::withLayout(dyld4::Loader *a1, Diagnostics *a2, dyld4::RuntimeState *a3, uint64_t a4)
{
  v6 = dyld4::Loader::analyzer(a1, a3);

  dyld3::MachOAnalyzer::withVMLayout(v6, a2, a4);
}

double __Block_byref_object_copy__75(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v3;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v4;
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  return result;
}

uint64_t __Block_byref_object_dispose__76(uint64_t result)
{
  v1 = result;
  *(result + 112) = 0;
  v2 = *(result + 120);
  if (v2)
  {
    result = vm_deallocate(mach_task_self_, v2, *(result + 128));
  }

  v1[9] = 0;
  v3 = v1[10];
  if (v3)
  {
    v4 = mach_task_self_;
    v5 = v1[11];

    return vm_deallocate(v4, v3, v5);
  }

  return result;
}

vm_address_t ___ZNK5dyld417PrebuiltLoaderSet23logDuplicateObjCClassesERNS_12RuntimeStateE_block_invoke(uint64_t a1, char *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = 0;
  result = dyld3::Map<char const*,BOOL,dyld3::HashCString,dyld3::EqualCString>::insert(v2 + 40, &v4);
  *(result + 8) = 1;
  return result;
}

void ___ZNK5dyld417PrebuiltLoaderSet23logDuplicateObjCClassesERNS_12RuntimeStateE_block_invoke_2(uint64_t a1, dyld4::PrebuiltLoader::BindTargetRef *this, uint64_t a3)
{
  if (*(a3 + 16) != 1)
  {
    v22 = dyld4::PrebuiltLoader::BindTargetRef::value(this, *(a1 + 40));
    if (dyld3::MapBase<char const*,BOOL,dyld3::HashCString,dyld3::EqualCString>::find<char const*>(*(*(a1 + 32) + 8) + 40, (*(*(a1 + 32) + 8) + 56), (*(*(a1 + 32) + 8) + 96), 0, &v22) == *(*(*(a1 + 32) + 8) + 96) + 16 * *(*(*(a1 + 32) + 8) + 112))
    {
      if (!*(a3 + 16))
      {
        dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
      }

      if (***a3 >> 62 == 1)
      {
        dyld4::PrebuiltLoader::BindTargetRef::value();
      }

      v21 = ***a3;
      v5 = dyld4::Loader::LoaderRef::loader(&v21, *(a1 + 40));
      v6 = *(a1 + 40);
      if ((v5[2] & 2) != 0 || (v7 = v5[3] & 0x7FFF, *(v6 + 48) <= v7))
      {
        if (v5[16])
        {
          v8 = v5 + v5[16];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = *(*(v6 + 47) + 8 * v7);
      }

      if (!*(a3 + 16))
      {
        dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
      }

      v9 = dyld4::PrebuiltLoader::BindTargetRef::value(**a3, v6);
      v10 = 8 * *(a3 + 16);
      v11 = v10 - 8;
      if (v10 != 8)
      {
        v12 = v9;
        v13 = (*a3 + 8);
        do
        {
          v14 = *v13;
          if (**v13 >> 62 == 1)
          {
            dyld4::PrebuiltLoader::BindTargetRef::value();
          }

          v20 = **v13;
          v15 = dyld4::Loader::LoaderRef::loader(&v20, *(a1 + 40));
          v16 = *(a1 + 40);
          if ((v15[2] & 2) != 0 || (v17 = v15[3] & 0x7FFF, *(v16 + 48) <= v17))
          {
            if (v15[16])
            {
              v18 = v15 + v15[16];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = *(*(v16 + 47) + 8 * v17);
          }

          v19 = dyld4::PrebuiltLoader::BindTargetRef::value(v14, v16);
          dyld4::RuntimeState::log(*(a1 + 40), "Class %s is implemented in both %s (%p) and %s (%p). One of the two will be used. Which one is undefined.\n", v22, v8, v12, v18, v19);
          ++v13;
          v11 -= 8;
        }

        while (v11);
      }
    }
  }
}

vm_address_t dyld4::PrebuiltLoaderSet::makeLaunchSet(dyld4::PrebuiltLoaderSet *this, Diagnostics *a2, dyld4::RuntimeState *a3, const dyld4::MissingPaths *a4)
{
  if (*(a2 + 24))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 36) == 0;
  }

  if (!v5 || *(a2 + 44) != 0)
  {
    Diagnostics::error(this, "cannot make PrebuiltLoaderSet for program that uses interposing", a3, a4);
    return 0;
  }

  if (dyld4::ProcessConfig::PathOverrides::dontUsePrebuiltForApp((*(a2 + 1) + 592)))
  {
    Diagnostics::error(this, "cannot make PrebuiltLoaderSet for program that uses DYLD_* env vars", v9, v10);
    return 0;
  }

  if (dyld4::RuntimeState::hasMissingFlatLazySymbols(a2))
  {
    Diagnostics::error(this, "cannot make PrebuiltLoaderSet for program that has missing flat lazy symbols", v11, v12);
    return 0;
  }

  __chkstk_darwin();
  v16 = v76 - ((v15 + 23) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *(a2 + 6);
  v117[0] = v21;
  v117[1] = a2 + 64;
  v22 = "cannot make PrebuiltLoader for dylib that is in dyld cache (%s)";
  while (1)
  {
    v23 = v117[v18];
    v24 = *(v23 + 16);
    if (v24)
    {
      break;
    }

LABEL_28:
    if (++v18 == 2)
    {
      dyld4::PrebuiltObjC::PrebuiltObjC(v117);
      dyld4::PrebuiltSwift::PrebuiltSwift(v96);
      Diagnostics::Diagnostics(v116);
      dyld4::PrebuiltObjC::make(v117, v116, a2);
      if (!Diagnostics::hasError(v116))
      {
        Diagnostics::Diagnostics(&v78);
        dyld4::PrebuiltSwift::make(v96, &v78, v117, a2);
        Diagnostics::~Diagnostics(&v78);
      }

      Diagnostics::~Diagnostics(v116);
      v88 = 0;
      v89 = &v88;
      v90 = 0x4002000000;
      v91 = __Block_byref_object_copy__87;
      v92 = __Block_byref_object_dispose__88;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      dyld4::BumpAllocator::zeroFill(&v93, 0x50uLL);
      v33 = v89[5];
      v32 = v89 + 5;
      *v33 = 0x2FA25B4373703464;
      *(v33 + 12) = v19;
      *(v33 + 16) = xmmword_8C9C0;
      *(v33 + 40) = 0u;
      *(v33 + 56) = 0u;
      *(v33 + 72) = 0;
      dyld4::BumpAllocator::zeroFill((v89 + 5), 4 * v19);
      v35 = *(*(a2 + 1) + 368);
      if (v35)
      {
        *(*v32 + 28) = *(v89 + 14) - *(v89 + 10);
        v116[0] = 0uLL;
        DyldSharedCache::getUUID(v35, v116);
        v36 = v89 + 5;
        v37 = v89[7] - v89[5];
        dyld4::BumpAllocator::zeroFill((v89 + 5), 0x10uLL);
        *(*v36 + v37) = v116[0];
      }

      v78 = 0;
      v79 = &v78;
      v80 = 0x5002000000;
      v81 = __Block_byref_object_copy__89_0;
      v82 = __Block_byref_object_dispose__90_0;
      v83 = v116;
      v84 = 16;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 0x40000000;
      v77[2] = ___ZN5dyld417PrebuiltLoaderSet13makeLaunchSetER11DiagnosticsRNS_12RuntimeStateERKNS_12MissingPathsE_block_invoke;
      v77[3] = &unk_A1F68;
      v77[5] = this;
      v77[6] = a2;
      v77[4] = &v78;
      if (v19)
      {
        v38 = 0;
        while (1)
        {
          *(*v32 + *(*v32 + 16) + 4 * v38) = *(v89 + 14) - *(v89 + 10);
          dyld4::PrebuiltLoader::serialize(this, a2, *&v16[8 * v38], v38 & 0x7FFF | 0x8000, v77, v117, v34, (v89 + 5));
          if (Diagnostics::hasError(this))
          {
            break;
          }

          if (v19 == ++v38)
          {
            goto LABEL_37;
          }
        }

        v13 = 0;
      }

      else
      {
LABEL_37:
        if (v119 == 1)
        {
          if (v117[14])
          {
            *(*v32 + 40) = dyld4::PrebuiltObjC::serializeSelectorMap(v117, (v89 + 5));
            v39 = *(v89 + 10);
            v40 = *(v89 + 14);
            v41 = (v40 - v39) & 7;
            if (((v40 - v39) & 7) != 0)
            {
              dyld4::BumpAllocator::zeroFill((v89 + 5), 8 - v41);
            }
          }

          if (v117[26])
          {
            *(*v32 + 44) = dyld4::PrebuiltObjC::serializeClassMap(v117, (v89 + 5));
            v42 = *(v89 + 10);
            v43 = *(v89 + 14);
            v44 = (v43 - v42) & 7;
            if (((v43 - v42) & 7) != 0)
            {
              dyld4::BumpAllocator::zeroFill((v89 + 5), 8 - v44);
            }
          }

          if (v117[39])
          {
            *(*v32 + 48) = dyld4::PrebuiltObjC::serializeProtocolMap(v117, (v89 + 5));
            v45 = *(v89 + 10);
            v46 = *(v89 + 14);
            v47 = (v46 - v45) & 7;
            if (((v46 - v45) & 7) != 0)
            {
              dyld4::BumpAllocator::zeroFill((v89 + 5), 8 - v47);
            }
          }

          if ((v121 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
          }

          v48 = *v32;
          *(*v32 + 56) = v120;
          if (v118 == 1)
          {
            *(v48 + 52) |= 1u;
          }
        }

        if (v115 == 1)
        {
          if (v99)
          {
            v49 = (v89 + 5);
            *(*v32 + 64) = *(v89 + 14) - *(v89 + 10);
            dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::serialize(v96, v49);
            v50 = *(v89 + 10);
            v51 = *(v89 + 14);
            v52 = (v51 - v50) & 7;
            if (((v51 - v50) & 7) != 0)
            {
              dyld4::BumpAllocator::zeroFill((v89 + 5), 8 - v52);
            }
          }

          if (v105)
          {
            v53 = (v89 + 5);
            *(*v32 + 68) = *(v89 + 14) - *(v89 + 10);
            dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::serialize(v102, v53);
            v54 = *(v89 + 10);
            v55 = *(v89 + 14);
            v56 = (v55 - v54) & 7;
            if (((v55 - v54) & 7) != 0)
            {
              dyld4::BumpAllocator::zeroFill((v89 + 5), 8 - v56);
            }
          }

          if (v112)
          {
            v57 = 0;
            v58 = v111;
            v59 = 48 * v112 - 48;
            v60 = vdupq_n_s64(v59 / 0x30);
            do
            {
              v61 = vmovn_s64(vcgeq_u64(v60, vorrq_s8(vdupq_n_s64(v57), xmmword_8C9A0)));
              if (v61.i8[0])
              {
                *v58 = 0;
              }

              if (v61.i8[4])
              {
                v58[6] = 0;
              }

              v57 += 2;
              v58 += 12;
            }

            while (((v59 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v57);
            v62 = (v89 + 5);
            *(*v32 + 72) = *(v89 + 14) - *(v89 + 10);
            dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::serialize(v108, v62);
            v63 = *(v89 + 10);
            v64 = *(v89 + 14);
            v65 = (v64 - v63) & 7;
            if (((v64 - v63) & 7) != 0)
            {
              dyld4::BumpAllocator::zeroFill((v89 + 5), 8 - v65);
            }
          }
        }

        v66 = v79;
        v67 = v79[7];
        v68 = v89;
        v69 = *v32;
        if (v67)
        {
          v69[6] = *(v89 + 14) - *(v89 + 10);
          v70 = v66[5];
          v71 = 16 * v67;
          do
          {
            v72 = v89 + 5;
            v73 = v89[7] - v89[5];
            dyld4::BumpAllocator::zeroFill((v89 + 5), 0x10uLL);
            v74 = *v70++;
            *(*v72 + v73) = v74;
            v69 = *v32;
            ++*(*v32 + 20);
            v71 -= 16;
          }

          while (v71);
          v68 = v89;
        }

        if (*(a3 + 2) != *a3)
        {
          v69[9] = *(v68 + 14) - *(v68 + 10);
          v76[0] = _NSConcreteStackBlock;
          v76[1] = 0x40000000;
          v76[2] = ___ZN5dyld417PrebuiltLoaderSet13makeLaunchSetER11DiagnosticsRNS_12RuntimeStateERKNS_12MissingPathsE_block_invoke_3;
          v76[3] = &unk_A1F90;
          v76[4] = &v88;
          v76[5] = v32;
          v76[6] = 0;
          dyld4::MissingPaths::forEachPath(a3, v76);
          v68 = v89;
          v69 = *v32;
        }

        v69[2] = *(v68 + 14) - *(v68 + 10);
        v13 = dyld4::BumpAllocator::finalize((v89 + 5));
      }

      _Block_object_dispose(&v78, 8);
      v85 = 0;
      if (v86)
      {
        vm_deallocate(mach_task_self_, v86, v87);
      }

      _Block_object_dispose(&v88, 8);
      if (v93)
      {
        vm_deallocate(mach_task_self_, v93, v94);
      }

      v112 = 0;
      if (v113)
      {
        vm_deallocate(mach_task_self_, v113, v114);
      }

      v108[4] = 0;
      if (v109)
      {
        vm_deallocate(mach_task_self_, v109, v110);
      }

      v105 = 0;
      if (v106)
      {
        vm_deallocate(mach_task_self_, v106, v107);
      }

      v102[4] = 0;
      if (v103)
      {
        vm_deallocate(mach_task_self_, v103, v104);
      }

      v99 = 0;
      if (v100)
      {
        vm_deallocate(mach_task_self_, v100, v101);
      }

      v96[4] = 0;
      if (v97)
      {
        vm_deallocate(mach_task_self_, v97, v98);
      }

      dyld4::PrebuiltObjC::~PrebuiltObjC(v117);
      return v13;
    }
  }

  v25 = *(v23 + 8);
  v26 = 8 * v24;
  v27 = v25;
  while (1)
  {
    v28 = *v27;
    v29 = *(*v27 + 4);
    if (*v27 && (v29 & 1) == 0)
    {
      break;
    }

LABEL_27:
    ++v27;
    ++v25;
    v26 -= 8;
    if (!v26)
    {
      goto LABEL_28;
    }
  }

  if ((v29 & 2) != 0)
  {
    goto LABEL_74;
  }

  if ((*(v28 + 42) & 0x40) == 0)
  {
    if (v19 >= v20)
    {
      ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
    }

    *&v16[8 * v19++] = v28;
    v31 = v17++ | 0x8000;
    *(v28 + 6) = v31;
    goto LABEL_27;
  }

  v22 = "cannot make PrebuiltLoader for dylib that overrides dylib in dyld cache (%s)";
LABEL_74:
  v75 = dyld4::JustInTimeLoader::path(v28, a2);
  Diagnostics::error(this, v22, v75);
  return 0;
}

__n128 __Block_byref_object_copy__87(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_dispose__88(uint64_t result)
{
  v2 = (result + 40);
  v1 = *(result + 40);
  if (v1)
  {
    result = vm_deallocate(mach_task_self_, v1, *(result + 48));
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
  }

  return result;
}

double __Block_byref_object_copy__89_0(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__90_0(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

double ___ZN5dyld417PrebuiltLoaderSet13makeLaunchSetER11DiagnosticsRNS_12RuntimeStateERKNS_12MissingPathsE_block_invoke(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6.n128_u64[0] = __PAIR64__(a3, a2);
  dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v6.n128_u64[1], *(a1 + 40), *(a1 + 48), a4);
  *&result = dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back((*(*(a1 + 32) + 8) + 40), &v6).n128_u64[0];
  return result;
}

void *dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::serialize(void *a1, dyld4::BumpAllocator *this)
{
  v4 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 8uLL);
  *(*this + v4) = *a1;
  v5 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 8uLL);
  *(*this + v5) = a1[1];
  v6 = a1[4];
  v7 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 8uLL);
  *(*this + v7) = v6;
  v8 = a1[2];
  v6 *= 8;
  v9 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, v6);
  memmove((*this + v9), v8, v6);
  v10 = a1[9];
  v11 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 8uLL);
  *(*this + v11) = v10;
  v12 = a1[7];
  v13 = 32 * v10;
  v14 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, v13);
  v15 = (*this + v14);

  return memmove(v15, v12, v13);
}

void *dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::serialize(void *a1, dyld4::BumpAllocator *this)
{
  v4 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 8uLL);
  *(*this + v4) = *a1;
  v5 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 8uLL);
  *(*this + v5) = a1[1];
  v6 = a1[4];
  v7 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 8uLL);
  *(*this + v7) = v6;
  v8 = a1[2];
  v6 *= 8;
  v9 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, v6);
  memmove((*this + v9), v8, v6);
  v10 = a1[9];
  v11 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, 8uLL);
  *(*this + v11) = v10;
  v12 = a1[7];
  v13 = 48 * v10;
  v14 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, v13);
  v15 = (*this + v14);

  return memmove(v15, v12, v13);
}

size_t dyld4::MissingPaths::forEachPath(size_t result, uint64_t a2)
{
  v2 = *result;
  if (*result < *(result + 16))
  {
    v4 = result;
    do
    {
      (*(a2 + 16))(a2, v2);
      result = _platform_strlen(v2);
      v2 += result + 1;
    }

    while (v2 < *(v4 + 16));
  }

  return result;
}

void *___ZN5dyld417PrebuiltLoaderSet13makeLaunchSetER11DiagnosticsRNS_12RuntimeStateERKNS_12MissingPathsE_block_invoke_3(uint64_t a1, char *__s)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = _platform_strlen(__s);
  v6 = *(v4 + 5);
  v4 = (v4 + 40);
  v7 = *(v4 + 2) - v6;
  dyld4::BumpAllocator::zeroFill(v4, v5 + 1);
  result = memmove((*v4 + v7), __s, v5 + 1);
  v9 = **(a1 + 40) + *(a1 + 48);
  ++*(v9 + 32);
  return result;
}

vm_address_t dyld4::BumpAllocator::finalize(dyld4::BumpAllocator *this)
{
  v2 = *(this + 1);
  v3 = *this;
  v4 = (~*this + *(this + 2) + vm_page_size) & -vm_page_size;
  if (v2 > v4)
  {
    vm_deallocate(mach_task_self_, v4 + v3, v2 - v4);
    *(this + 1) = v4;
    *(this + 2) = 0;
  }

  vm_protect(mach_task_self_, v3, v4, 0, 1);
  *this = 0;
  return v3;
}

void *dyld4::MissingPaths::addPath(dyld4::MissingPaths *this, const char *__s)
{
  v4 = _platform_strlen(__s);
  v5 = *(this + 2) - *this;
  dyld4::BumpAllocator::zeroFill(this, v4 + 1);
  v6 = (*this + v5);

  return memmove(v6, __s, v4 + 1);
}

dyld4::PrebuiltObjC *dyld4::PrebuiltObjC::PrebuiltObjC(dyld4::PrebuiltObjC *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  dyld3::Map<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::Map(this + 40);
  dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::MultiMap(this + 136, 0);
  dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::MultiMap(this + 240, 0);
  dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::Map(this + 344);
  *(this + 220) = 0;
  *(this + 448) = 0;
  *(this + 456) = 0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 62) = 0;
  return this;
}

uint64_t dyld3::Map<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::Map(uint64_t a1)
{
  *(a1 + 16) = 0u;
  v2 = (a1 + 16);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = xmmword_8BFE0;
  v3 = 32;
  dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo((a1 + 16), 0x20uLL);
  do
  {
    v5 = -1;
    dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v2, &v5);
    --v3;
  }

  while (v3);
  if (*(a1 + 64) <= 0x1FuLL)
  {
    dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::growTo((a1 + 56), 0x20uLL);
  }

  return a1;
}

uint64_t dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::MultiMap(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = xmmword_8BFE0;
  v5 = 32;
  dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo((a1 + 16), 0x20uLL);
  do
  {
    v7 = -1;
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v4, &v7);
    --v5;
  }

  while (v5);
  if (*(a1 + 64) <= 0x1FuLL)
  {
    dyld3::OverflowSafeArray<dyld4::PageInLinkingRange,4294967295ull>::growTo((a1 + 56), 0x20uLL);
  }

  *(a1 + 96) = a2;
  return a1;
}

dyld4::PrebuiltSwift *dyld4::PrebuiltSwift::PrebuiltSwift(dyld4::PrebuiltSwift *this)
{
  v2 = dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::MultiMap(this, 0);
  dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::MultiMap(v2 + 104, 0);
  dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::MultiMap(this + 208, 0);
  *(this + 312) = 0;
  return this;
}

uint64_t dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::MultiMap(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = xmmword_8BFE0;
  v5 = 32;
  dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo((a1 + 16), 0x20uLL);
  do
  {
    v7 = -1;
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v4, &v7);
    --v5;
  }

  while (v5);
  if (*(a1 + 64) <= 0x1FuLL)
  {
    dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::growTo((a1 + 56), 0x20uLL);
  }

  *(a1 + 96) = a2;
  return a1;
}

uint64_t dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::MultiMap(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = xmmword_8BFE0;
  v5 = 32;
  dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo((a1 + 16), 0x20uLL);
  do
  {
    v7 = -1;
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v4, &v7);
    --v5;
  }

  while (v5);
  if (*(a1 + 64) <= 0x1FuLL)
  {
    dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::growTo((a1 + 56), 0x20uLL);
  }

  *(a1 + 96) = a2;
  return a1;
}

void dyld4::PrebuiltObjC::~PrebuiltObjC(dyld4::PrebuiltObjC *this)
{
  if (*(this + 60))
  {
    v2 = 0;
    v3 = 112;
    do
    {
      v4 = *(this + 58);
      v5 = (v4 + v3);
      *(v4 + v3 + 80) = 0;
      v6 = *(v4 + v3 + 88);
      if (v6)
      {
        vm_deallocate(mach_task_self_, v6, v5[12]);
      }

      v5[5] = 0;
      v7 = v5[6];
      if (v7)
      {
        vm_deallocate(mach_task_self_, v7, *(v4 + v3 + 56));
      }

      *(v4 + v3) = 0;
      v8 = *(v4 + v3 + 8);
      if (v8)
      {
        vm_deallocate(mach_task_self_, v8, *(v4 + v3 + 16));
      }

      ++v2;
      v3 += 216;
    }

    while (v2 != *(this + 60));
  }

  *(this + 60) = 0;
  v9 = *(this + 61);
  if (v9)
  {
    vm_deallocate(mach_task_self_, v9, *(this + 62));
  }

  *(this + 52) = 0;
  v10 = *(this + 53);
  if (v10)
  {
    vm_deallocate(mach_task_self_, v10, *(this + 54));
  }

  *(this + 47) = 0;
  v11 = *(this + 48);
  if (v11)
  {
    vm_deallocate(mach_task_self_, v11, *(this + 49));
  }

  *(this + 39) = 0;
  v12 = *(this + 40);
  if (v12)
  {
    vm_deallocate(mach_task_self_, v12, *(this + 41));
  }

  *(this + 34) = 0;
  v13 = *(this + 35);
  if (v13)
  {
    vm_deallocate(mach_task_self_, v13, *(this + 36));
  }

  *(this + 26) = 0;
  v14 = *(this + 27);
  if (v14)
  {
    vm_deallocate(mach_task_self_, v14, *(this + 28));
  }

  *(this + 21) = 0;
  v15 = *(this + 22);
  if (v15)
  {
    vm_deallocate(mach_task_self_, v15, *(this + 23));
  }

  *(this + 14) = 0;
  v16 = *(this + 15);
  if (v16)
  {
    vm_deallocate(mach_task_self_, v16, *(this + 16));
  }

  *(this + 9) = 0;
  v17 = *(this + 10);
  if (v17)
  {
    vm_deallocate(mach_task_self_, v17, *(this + 11));
  }

  if (*(this + 2))
  {
    v18 = 0;
    v19 = 0;
    do
    {
      dyld4::PrebuiltObjC::ObjCOptimizerImage::~ObjCOptimizerImage((*this + v18));
      ++v19;
      v18 += 632;
    }

    while (v19 != *(this + 2));
  }

  *(this + 2) = 0;
  v20 = *(this + 3);
  if (v20)
  {
    vm_deallocate(mach_task_self_, v20, *(this + 4));
  }
}

void dyld4::PrebuiltObjC::ObjCOptimizerImage::~ObjCOptimizerImage(dyld4::PrebuiltObjC::ObjCOptimizerImage *this)
{
  *(this + 64) = 0;
  v2 = *(this + 65);
  if (v2)
  {
    vm_deallocate(mach_task_self_, v2, *(this + 66));
  }

  *(this + 59) = 0;
  v3 = *(this + 60);
  if (v3)
  {
    vm_deallocate(mach_task_self_, v3, *(this + 61));
  }

  *(this + 54) = 0;
  v4 = *(this + 55);
  if (v4)
  {
    vm_deallocate(mach_task_self_, v4, *(this + 56));
  }

  *(this + 47) = 0;
  v5 = *(this + 48);
  if (v5)
  {
    vm_deallocate(mach_task_self_, v5, *(this + 49));
  }

  *(this + 42) = 0;
  v6 = *(this + 43);
  if (v6)
  {
    vm_deallocate(mach_task_self_, v6, *(this + 44));
  }

  *(this + 37) = 0;
  v7 = *(this + 38);
  if (v7)
  {
    vm_deallocate(mach_task_self_, v7, *(this + 39));
  }

  *(this + 30) = 0;
  v8 = *(this + 31);
  if (v8)
  {
    vm_deallocate(mach_task_self_, v8, *(this + 32));
  }

  *(this + 25) = 0;
  v9 = *(this + 26);
  if (v9)
  {
    vm_deallocate(mach_task_self_, v9, *(this + 27));
  }

  *(this + 18) = 0;
  v10 = *(this + 19);
  if (v10)
  {
    vm_deallocate(mach_task_self_, v10, *(this + 20));
  }

  *(this + 13) = 0;
  v11 = *(this + 14);
  if (v11)
  {
    vm_deallocate(mach_task_self_, v11, *(this + 15));
  }

  *(this + 8) = 0;
  v12 = *(this + 9);
  if (v12)
  {
    vm_deallocate(mach_task_self_, v12, *(this + 10));
  }

  Diagnostics::~Diagnostics((this + 32));
}

vm_address_t dyld3::Map<char const*,BOOL,dyld3::HashCString,dyld3::EqualCString>::insert(uint64_t a1, char **a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v5 = 2 * *(a1 + 32);
    *a1 = 2 * v4;
    size = 0;
    memset(v24, 0, sizeof(v24));
    if (v5)
    {
      dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(v24, v5);
      do
      {
        v23 = -1;
        dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v24, &v23);
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 72))
    {
      v6 = 0;
      do
      {
        v7 = *dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v6);
        v8 = _platform_strlen(v7);
        v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v23, v7, v8);
        v10 = (v24[2] - 1) & v9;
        if (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) != -1)
        {
          v11 = 1;
          do
          {
            v10 = (v24[2] - 1) & (v10 + v11++);
          }

          while (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) != -1);
        }

        *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) = v6++;
      }

      while (v6 != *(a1 + 72));
    }

    if ((a1 + 16) == v24)
    {
      v24[2] = 0;
      if (v24[3])
      {
        vm_deallocate(mach_task_self_, v24[3], size);
      }
    }

    else
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        vm_deallocate(mach_task_self_, v12, *(a1 + 48));
      }

      *(a1 + 16) = v24[0];
      *(a1 + 24) = *&v24[1];
      v13 = size;
      *(a1 + 40) = v24[3];
      *(a1 + 48) = v13;
    }
  }

  v14 = *a2;
  v15 = _platform_strlen(*a2);
  v16 = (*(a1 + 32) - 1) & std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v24, v14, v15);
  v17 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16);
  if (v17 == -1)
  {
LABEL_21:
    v20 = *(a1 + 72);
    *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16) = v20;
    ++*(a1 + 8);
    dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back((a1 + 56), a2);
    v21 = *(a1 + 72);
    if (!v21)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }

    return *(a1 + 56) + 16 * v21 - 16;
  }

  else
  {
    v18 = 1;
    while (1)
    {
      v19 = dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v17);
      if (!_platform_strcmp(*v19, *a2))
      {
        return dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v17);
      }

      v16 = (*(a1 + 32) - 1) & (v16 + v18++);
      v17 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16);
      if (v17 == -1)
      {
        goto LABEL_21;
      }
    }
  }
}

uint64_t dyld3::MapBase<char const*,BOOL,dyld3::HashCString,dyld3::EqualCString>::find<char const*>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, char **a5)
{
  if (!a3[2])
  {
    return *a3;
  }

  v8 = *a5;
  v9 = _platform_strlen(*a5);
  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v22, v8, v9);
  v11 = a2[2];
  v12 = v11 - 1;
  v13 = v10 & (v11 - 1);
  if (v11 <= v13)
  {
LABEL_8:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v14 = *a2;
  v15 = a3[2];
  v16 = *a3;
  v17 = 1;
  v18 = *a5;
  while (1)
  {
    v19 = *(v14 + 4 * v13);
    if (v19 == -1)
    {
      return v16 + 16 * v15;
    }

    if (v15 <= v19)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    if (!_platform_strcmp(*(v16 + 16 * v19), v18))
    {
      return v16 + 16 * v19;
    }

    v20 = v13 + v17++;
    v13 = v20 & v12;
    if (v11 <= (v20 & v12))
    {
      goto LABEL_8;
    }
  }
}

BOOL dyld4::SyscallDelegate::getCWD(dyld4::SyscallDelegate *this, char *a2)
{
  v3 = open(".", 0x100000, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  v5 = fcntl(v3, 50, a2);
  close(v4);
  return v5 != -1;
}

uint64_t dyld4::SyscallDelegate::dtraceRegisterUserProbes(dyld4::SyscallDelegate *this, dof_ioctl_data *a2)
{
  result = open("/dev/dtracehelper", 2);
  if (result != -1)
  {
    v4 = result;
    v5 = a2;
    ioctl(result, 0x80086804uLL, &v5);
    return close(v4);
  }

  return result;
}

uint64_t dyld4::SyscallDelegate::dtraceUnregisterUserProbe(dyld4::SyscallDelegate *this, uint64_t a2)
{
  result = open("/dev/dtracehelper", 2, 0);
  if (result != -1)
  {
    v4 = result;
    ioctl(result, 0x20006802uLL, a2);

    return close(v4);
  }

  return result;
}

uint64_t dyld4::SyscallDelegate::forEachInDirectory(int a1, char *a2, int a3, uint64_t a4)
{
  result = open(a2, 0x100000, 0);
  if (result != -1)
  {
    v8 = result;
    bzero(v15, 0x18uLL);
    v15[0] = 5;
    v16 = -2147483639;
    v9 = getattrlistbulk(v8, v15, v18, 0x200uLL, 0);
    if (v9 < 1)
    {
      return close(v8);
    }

    v10 = v9;
    while (1)
    {
      v11 = v18;
      do
      {
        v12 = v11 + 6;
        v13 = v11[6];
        if ((v11[1] & 8) == 0)
        {
          goto LABEL_15;
        }

        v14 = v11[8];
        if (v14 == 2)
        {
          if (!a3)
          {
            goto LABEL_15;
          }
        }

        else if (v14 != 1 || (a3 & 1) != 0)
        {
          goto LABEL_15;
        }

        v17[0] = 0;
        if (dyld4::Utils::concatenatePaths(v17, a2, &stru_3C8.reloff) > 0x3FF || dyld4::Utils::concatenatePaths(v17, "/", &stru_3C8.reloff) > 0x3FF || dyld4::Utils::concatenatePaths(v17, v12 + v13, &stru_3C8.reloff) > 0x3FF)
        {
          return close(v8);
        }

        (*(a4 + 16))(a4, v17, v12 + v13);
LABEL_15:
        v11 = (v11 + *v11);
        --v10;
      }

      while (v10);
      v10 = getattrlistbulk(v8, v15, v18, 0x200uLL, 0);
      if (v10 <= 0)
      {
        return close(v8);
      }
    }
  }

  return result;
}

uint64_t dyld4::SyscallDelegate::getDylibInfo(int a1, dyld3 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Diagnostics::Diagnostics(v24);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1174405120;
  v15[2] = ___ZNK5dyld415SyscallDelegate12getDylibInfoEPKcN6mach_o8PlatformERKNS3_19GradedArchitecturesERjPc_block_invoke;
  v15[3] = &unk_A1FB8;
  v12 = *a3;
  v15[5] = a4;
  v15[6] = v12;
  v16 = *(a3 + 2);
  v17 = a2;
  v18 = a5;
  v19 = a6;
  v15[4] = &v20;
  dyld4::SyscallDelegate::withReadOnlyMappedFile(a1, v24, a2, 0, v15);
  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  Diagnostics::~Diagnostics(v24);
  return v13;
}

uint64_t ___ZNK5dyld415SyscallDelegate12getDylibInfoEPKcN6mach_o8PlatformERKNS3_19GradedArchitecturesERjPc_block_invoke(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = mach_o::Universal::isUniversal(a2, a3);
  if (v8)
  {
    __source = 0;
    v16 = 0;
    v17 = 0;
    result = mach_o::Universal::bestSlice(v8, *(a1 + 40), v4, &__source);
    if ((result & 1) == 0)
    {
      return result;
    }

    v10 = v16;
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    result = mach_o::Header::isMachO(a2, a3);
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  result = dyld3::MachOFile::isDylib(v10);
  if (result)
  {
    __source = *(a1 + 48);
    LODWORD(v16) = *(a1 + 56);
    v11 = *(a1 + 64);
    if (v11)
    {
      v12 = _platform_strlen(*(a1 + 64));
    }

    else
    {
      v12 = 0;
    }

    result = mach_o::Header::loadableIntoProcess(v10, &__source, v11, v12);
    if (result)
    {
      __source = 0;
      v13 = 0x10000;
      v14 = 0x10000;
      result = mach_o::Header::getDylibInstallName(v10, &__source, &v14, &v13);
      if (result)
      {
        **(a1 + 72) = v13;
        result = strlcpy(*(a1 + 80), __source, 0x400uLL);
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

uint64_t __copy_helper_block_8_48c22_ZTSN6mach_o8PlatformE(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  return result;
}

BOOL dyld4::SyscallDelegate::mkdirs(dyld4::SyscallDelegate *this, const char *__s)
{
  _platform_strlen(__s);
  v3 = &v12[-((__chkstk_darwin() + 16) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = strcpy(v3, __s);
  v5 = strrchr(v4, 47);
  v7 = v5;
  if (v5)
  {
    v5[1] = 0;
    if (dyld3::stat(v3, v12, v6))
    {
      v8 = _platform_strchr(v3 + 1, 47);
      if (v8)
      {
        v9 = v8;
        do
        {
          *v9 = 0;
          mkdir(v3, 0x1EDu);
          *v9 = 47;
          v9 = _platform_strchr(v9 + 1, 47);
        }

        while (v9);
      }
    }
  }

  return v7 != 0;
}

BOOL dyld4::SyscallDelegate::sandboxBlockedStat(dyld4::SyscallDelegate *this, const char *a2)
{
  v2 = a2;
  v3 = getpid();
  return sandbox_check(v3, "file-read-metadata", 1073741825, v4, v5, v6, v7, v8, v2) > 0;
}

uint64_t ___ZNK5dyld415SyscallDelegate15mapFileReadOnlyER11DiagnosticsPKcPiPmPNS_6FileIDEPbPc_block_invoke(uint64_t result, int a2, int a3, dyld3::MachOAnalyzer *a4, unint64_t a5)
{
  if (a2 == 16777228 && (a3 & 0xFFFFFF) == 2)
  {
    v6 = result;
    result = dyld3::MachOAnalyzer::isOSBinary(a4, *(result + 48), a4 - *(result + 32));
    if (result)
    {
      **(v6 + 40) = 1;
    }
  }

  return result;
}

BOOL dyld4::SyscallDelegate::setFileAttribute(int a1, char *a2, const char *a3, uint64_t a4)
{
  if (chmod(a2, 0x180u))
  {
    return 0;
  }

  if (setxattr(a2, a3, *a4, *(a4 + 16), 0, 4))
  {
    v8 = setxattr(a2, a3, *a4, *(a4 + 16), 0, 0) == 0;
  }

  else
  {
    v8 = 1;
  }

  return !chmod(a2, 0x100u) && v8;
}

uint64_t dyld4::SyscallDelegate::saveFileWithAttribute(int a1, Diagnostics *a2, const std::__fs::filesystem::path *__source, const void *a4, size_t a5, const char *a6, uint64_t a7)
{
  strlcpy(__dst, __source, 0x400uLL);
  v13 = getpid();
  __sourcea[0] = 46;
  v14 = (v13 >> 28) + 55;
  if (v13 >> 29 < 5)
  {
    LOBYTE(v14) = (v13 >> 28) | 0x30;
  }

  __sourcea[1] = v14;
  v15 = HIBYTE(v13) & 0xF;
  if (v15 >= 0xA)
  {
    v16 = v15 + 55;
  }

  else
  {
    v16 = v15 | 0x30;
  }

  __sourcea[2] = v16;
  if (BYTE2(v13) >= 0xA0u)
  {
    v17 = ((v13 >> 20) & 0xF) + 55;
  }

  else
  {
    v17 = (v13 >> 20) & 0xF | 0x30;
  }

  __sourcea[3] = v17;
  if ((HIWORD(v13) & 0xF) >= 0xAu)
  {
    v18 = (BYTE2(v13) & 0xF) + 55;
  }

  else
  {
    v18 = BYTE2(v13) & 0xF | 0x30;
  }

  __sourcea[4] = v18;
  if (BYTE1(v13) >= 0xA0u)
  {
    v19 = (v13 >> 12) + 55;
  }

  else
  {
    v19 = (v13 >> 12) | 0x30;
  }

  __sourcea[5] = v19;
  v20 = (v13 >> 8) & 0xF;
  if (v20 >= 0xA)
  {
    v21 = v20 + 55;
  }

  else
  {
    v21 = v20 | 0x30;
  }

  __sourcea[6] = v21;
  if (v13 >= 0xA0u)
  {
    v22 = (v13 >> 4) + 55;
  }

  else
  {
    v22 = (v13 >> 4) | 0x30;
  }

  __sourcea[7] = v22;
  if ((v13 & 0xF) >= 0xA)
  {
    v23 = (v13 & 0xF) + 55;
  }

  else
  {
    v23 = v13 & 0xF | 0x30;
  }

  __sourcea[8] = v23;
  __sourcea[9] = 0;
  strlcat(__dst, __sourcea, 0x400uLL);
  v24 = open_dprotected_np(__dst, 513, 4, 0, 384);
  if (v24 == -1)
  {
    __error();
    Diagnostics::error(a2, "open/open_dprotected_np(%s) failed, errno=%d");
  }

  else
  {
    v25 = v24;
    if (ftruncate(v24, a5) == -1)
    {
      __error();
      Diagnostics::error(a2, "ftruncate(%lu) failed, errno=%d");
    }

    else if (write(v25, a4, a5) == a5)
    {
      if (fsetxattr(v25, a6, *a7, *(a7 + 16), 0, 0) == -1)
      {
        __error();
        Diagnostics::error(a2, "fsetxattr(%s) failed, errno=%d");
      }

      else if (fchmod(v25, 0x100u) == -1)
      {
        __error();
        Diagnostics::error(a2, "fchmod(S_IRUSR) failed, errno=%d");
      }

      else if (close(v25) == -1)
      {
        __error();
        Diagnostics::error(a2, "close() failed, errno=%d");
      }

      else
      {
        rename(__dst, __source, v26);
        if (v27 != -1)
        {
          return 1;
        }

        __error();
        Diagnostics::error(a2, "rename(%s, %s) failed, errno=%d");
      }
    }

    else
    {
      __error();
      Diagnostics::error(a2, "write() failed, errno=%d");
    }
  }

  return 0;
}

BOOL dyld4::SyscallDelegate::sandboxBlockedMmap(dyld4::SyscallDelegate *this, const char *a2)
{
  v2 = a2;
  v3 = getpid();
  return sandbox_check(v3, "file-map-executable", 1073741825, v4, v5, v6, v7, v8, v2) > 0;
}

uint64_t PatchTable::patchableExportCount(int **this, unsigned int a2)
{
  v2 = *this;
  v3 = **this;
  if ((v3 == 4 || v3 == 3 || v3 == 2) && *(v2 + 2) > a2)
  {
    return *(&v2[4 * a2 + 3] + *(v2 + 1) - this[1]);
  }

  else
  {
    return 0;
  }
}

BOOL PatchTableV2::imageHasClient(PatchTableV2 *this, unsigned int a2, int a3)
{
  v3 = *this;
  if (*(*this + 16) <= a2)
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = (v3 + *(v3 + 8) - v4 + 16 * a2);
  v6 = v5[1];
  if (!v6)
  {
    return 0;
  }

  v7 = (v3 + *(v3 + 40) - v4 + 12 * *v5);
  v8 = 12 * v6 - 12;
  do
  {
    v9 = *v7;
    v7 += 3;
    result = v9 == a3;
    v11 = v9 == a3 || v8 == 0;
    v8 -= 12;
  }

  while (!v11);
  return result;
}

_DWORD **PatchTable::forEachPatchableExport(_DWORD **result, unsigned int a2, uint64_t a3)
{
  if ((**result - 2) <= 2)
  {
    return PatchTableV2::forEachPatchableExport(result, a2, a3);
  }

  return result;
}

void *PatchTableV2::forEachPatchableExport(void *result, unsigned int a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16) > a2)
  {
    v4 = result[1];
    v5 = &v3[2 * a2] + v3[1] - v4;
    v6 = *(v5 + 12);
    if (v6)
    {
      v8 = v3[12];
      v9 = v3 + v3[11] - v4;
      v10 = v3 + v3[3] + 8 * *(v5 + 8) - v4 + 4;
      v11 = 8 * v6;
      v12 = v10;
      do
      {
        v14 = *v12;
        v12 += 2;
        v13 = v14;
        v15 = v14 & 0xFFFFFFF;
        if (v8 < v15)
        {
          abort();
        }

        result = (*(a3 + 16))(a3, *(v10 - 4), &v9[v15], v13 >> 28);
        v10 = v12;
        v11 -= 8;
      }

      while (v11);
    }
  }

  return result;
}

int **PatchTable::forEachPatchableUseOfExportInImage(int **result, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v5 = **result;
  if (v5 == 4)
  {
    return PatchTableV4::forEachPatchableUseOfExportInImage(result, a2, a3, a4, a5);
  }

  if (v5 == 3 || v5 == 2)
  {
    return PatchTableV2::forEachPatchableUseOfExportInImage(result, a2, a3, a4, a5);
  }

  return result;
}

char *PatchTableV2::forEachPatchableUseOfExportInImage(PatchTableV2 *a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(*a1 + 24);
  v10 = *(*a1 + 72);
  result = PatchTableV2::clientsExportsForImageAndClient(a1, a2, a4);
  if (v12)
  {
    v13 = (result + 4);
    v14 = 12 * v12;
    while (*(v7 + v9 - v8 + 8 * *(v13 - 1)) != a3)
    {
      v13 += 3;
      v14 -= 12;
      if (!v14)
      {
        return result;
      }
    }

    v15 = v13[1];
    if (v15)
    {
      v16 = (v10 + 8 * *v13 - v8 + v7 + 4);
      v17 = 8 * v15;
      do
      {
        dyld3::MachOFile::PointerMetaData::PointerMetaData(&v19);
        v18 = vandq_s8(vshlq_u32(vdupq_n_s32(*v16), xmmword_8C9D0), xmmword_8C9E0);
        *v18.i8 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
        v19 = v18.i32[0] | v19 & 0xF0000000 | v18.i32[1] | HIWORD(*v16);
        result = (*(a5 + 16))(a5, *(v16 - 1));
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
    }
  }

  return result;
}

char *PatchTableV4::forEachPatchableUseOfExportInImage(PatchTableV2 *a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(*a1 + 24);
  v10 = *(*a1 + 72);
  result = PatchTableV2::clientsExportsForImageAndClient(a1, a2, a4);
  if (v12)
  {
    v13 = (result + 4);
    v14 = 12 * v12;
    while (*(v7 + v9 - v8 + 8 * *(v13 - 1)) != a3)
    {
      v13 += 3;
      v14 -= 12;
      if (!v14)
      {
        return result;
      }
    }

    v15 = v13[1];
    if (v15)
    {
      v16 = (v7 + v10 - v8 + 8 * *v13);
      v17 = &v16[2 * v15];
      do
      {
        dyld3::MachOFile::PointerMetaData::PointerMetaData(&v21);
        dyld_cache_patchable_location_v4::getPMD(v16, &v21);
        v18 = *v16;
        v19 = v16[1];
        v16 += 2;
        if (v19)
        {
          v20 = (v19 >> 9) & 0x1F;
        }

        else
        {
          v20 = v19 >> 9;
        }

        result = (*(a5 + 16))(a5, v18, v21, v20, (v19 >> 8) & 1);
      }

      while (v16 != v17);
    }
  }

  return result;
}

int **PatchTable::forEachPatchableCacheUseOfExport(int **result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = **result;
  if (v6 == 4)
  {
    return PatchTableV4::forEachPatchableCacheUseOfExport(result, a2, a3, a4, a5, a6);
  }

  if (v6 == 3 || v6 == 2)
  {
    return PatchTableV2::forEachPatchableCacheUseOfExport(result, a2, a3, a4, a5, a6);
  }

  return result;
}