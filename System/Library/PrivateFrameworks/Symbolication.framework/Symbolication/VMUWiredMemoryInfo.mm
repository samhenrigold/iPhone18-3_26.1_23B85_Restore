@interface VMUWiredMemoryInfo
- (BOOL)sample;
- (VMUWiredMemoryInfo)init;
- (VMUWiredMemoryInfo)initWithZoneNames:(mach_zone_name *)names nameCount:(unsigned int)count zoneInfo:(mach_zone_info_data *)info zoneInfoCount:(unsigned int)infoCount wiredInfo:(mach_memory_info *)wiredInfo wiredInfoCount:(unsigned int)wiredInfoCount;
- (id)counterInfo;
- (id)getCounterNameForSite:(unint64_t)site;
- (id)getTagNameForSite:(unint64_t)site;
- (id)vmRegionInfo;
- (id)zoneInfo;
- (void)dealloc;
- (void)resetMachInfo;
- (void)sample;
@end

@implementation VMUWiredMemoryInfo

- (id)zoneInfo
{
  v23[9] = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->zone_names_count];
  if (self->zone_names_count)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v22[0] = @"name";
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{&self->zone_names[v4], v16}];
      v23[0] = v21;
      v22[1] = @"count";
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->zone_info[v3].mzi_count];
      v23[1] = v20;
      v22[2] = @"max_size";
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->zone_info[v3].mzi_max_size];
      v23[2] = v19;
      v22[3] = @"elem_size";
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->zone_info[v3].mzi_elem_size];
      v23[3] = v18;
      v22[4] = @"alloc_size";
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->zone_info[v3].mzi_alloc_size];
      v23[4] = v17;
      v22[5] = @"sum_size";
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->zone_info[v3].mzi_sum_size];
      v23[5] = v6;
      v22[6] = @"exhaustible";
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->zone_info[v3].mzi_exhaustible];
      v23[6] = v7;
      v22[7] = @"collectable";
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->zone_info[v3].mzi_collectable];
      v23[7] = v8;
      v22[8] = @"size";
      v9 = &self->zone_info[v3];
      mzi_cur_size = v9->mzi_cur_size;
      if (!mzi_cur_size)
      {
        mzi_cur_size = v9->mzi_elem_size * v9->mzi_count;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mzi_cur_size];
      v23[8] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:9];

      [v16 addObject:v12];
      ++v5;
      ++v4;
      ++v3;
    }

    while (v5 < self->zone_names_count);
  }

  v13 = v16;
  v14 = [v16 copy];

  return v14;
}

- (id)vmRegionInfo
{
  v36[11] = *MEMORY[0x1E69E9840];
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->wired_info_count];
  v3 = OSKextCopyLoadedKextInfo();
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __34__VMUWiredMemoryInfo_vmRegionInfo__block_invoke;
  v33[3] = &unk_1E82792D0;
  v25 = v3;
  v26 = v4;
  v34 = v26;
  [v3 enumerateKeysAndObjectsUsingBlock:v33];
  CSSymbolicatorCreateWithMachKernel();
  if (self->wired_info_count)
  {
    v5 = 0;
    v6 = 96;
    while (1)
    {
      wired_info = self->wired_info;
      v8 = *(wired_info + v6 - 96);
      v9 = *(wired_info + v6 - 88);
      if (v8 == 3 && (v9 > 0xA || ((1 << v9) & 0x412) == 0))
      {
        goto LABEL_18;
      }

      if ((v8 & 0x400) != 0)
      {
        break;
      }

      if (v8 > 1u)
      {
        if (v8 == 2)
        {
          if (CSIsNull())
          {
            goto LABEL_18;
          }

          CSSymbolicatorGetSymbolWithAddressAtTime();
          if (CSIsNull())
          {
            goto LABEL_18;
          }

          Name = CSSymbolGetName();
          if (!Name)
          {
            goto LABEL_18;
          }

          v14 = Name;
          v13 = MEMORY[0x1E696AEC0];
          goto LABEL_15;
        }

        if (v8 != 3)
        {
          goto LABEL_18;
        }

        v15 = [(VMUWiredMemoryInfo *)self getCounterNameForSite:v9];
      }

      else
      {
        if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_18;
          }

          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
          v12 = [v26 objectForKeyedSubscript:v11];

          if (!v12)
          {
            goto LABEL_18;
          }

LABEL_17:
          v35[0] = @"flags";
          v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v6 - 96)];
          v36[0] = v32;
          v35[1] = @"site";
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v6 - 88)];
          v36[1] = v31;
          v35[2] = @"size";
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v6 - 80)];
          v36[2] = v30;
          v35[3] = @"free";
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v6 - 72)];
          v36[3] = v29;
          v35[4] = @"largest";
          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v6 - 64)];
          v36[4] = v28;
          v35[5] = @"collectable_bytes";
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v6 - 56)];
          v36[5] = v16;
          v35[6] = @"mapped";
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v6 - 48)];
          v36[6] = v17;
          v35[7] = @"peak";
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v6 - 40)];
          v36[7] = v18;
          v35[8] = @"tag";
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(self->wired_info + v6 - 32)];
          v36[8] = v19;
          v35[9] = @"zone";
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(self->wired_info + v6 - 30)];
          v35[10] = @"name";
          v36[9] = v20;
          v36[10] = v12;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:11];

          [v27 addObject:v21];
          goto LABEL_18;
        }

        v15 = [(VMUWiredMemoryInfo *)self getTagNameForSite:v9];
      }

LABEL_16:
      v12 = v15;
      if (v15)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v5;
      v6 += 176;
      if (v5 >= self->wired_info_count)
      {
        goto LABEL_28;
      }
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = wired_info + v6;
LABEL_15:
    v15 = [v13 stringWithUTF8String:v14];
    goto LABEL_16;
  }

LABEL_28:
  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }

  v23 = [v27 copy];

  return v23;
}

- (VMUWiredMemoryInfo)init
{
  v3.receiver = self;
  v3.super_class = VMUWiredMemoryInfo;
  result = [(VMUWiredMemoryInfo *)&v3 init];
  if (result)
  {
    result->zone_names = 0;
    result->zone_names_count = 0;
    result->zone_info = 0;
    result->zone_info_count = 0;
    result->wired_info = 0;
    result->wired_info_count = 0;
    result->ownsMachInfo = 1;
  }

  return result;
}

- (VMUWiredMemoryInfo)initWithZoneNames:(mach_zone_name *)names nameCount:(unsigned int)count zoneInfo:(mach_zone_info_data *)info zoneInfoCount:(unsigned int)infoCount wiredInfo:(mach_memory_info *)wiredInfo wiredInfoCount:(unsigned int)wiredInfoCount
{
  v15.receiver = self;
  v15.super_class = VMUWiredMemoryInfo;
  result = [(VMUWiredMemoryInfo *)&v15 init];
  if (result)
  {
    result->zone_names = names;
    result->zone_names_count = count;
    result->zone_info = info;
    result->zone_info_count = infoCount;
    result->wired_info = wiredInfo;
    result->wired_info_count = wiredInfoCount;
    result->ownsMachInfo = 0;
  }

  return result;
}

- (void)resetMachInfo
{
  if (self->ownsMachInfo)
  {
    v3 = MEMORY[0x1E69E9A60];
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], self->zone_names, 80 * self->zone_names_count);
    mach_vm_deallocate(*v3, self->zone_info, self->zone_info_count << 6);
    mach_vm_deallocate(*v3, self->wired_info, 176 * self->wired_info_count);
  }

  self->zone_names = 0;
  self->zone_names_count = 0;
  self->zone_info = 0;
  self->zone_info_count = 0;
  self->wired_info = 0;
  self->wired_info_count = 0;
  self->ownsMachInfo = 1;
}

- (void)dealloc
{
  [(VMUWiredMemoryInfo *)self resetMachInfo];
  v3.receiver = self;
  v3.super_class = VMUWiredMemoryInfo;
  [(VMUWiredMemoryInfo *)&v3 dealloc];
}

- (BOOL)sample
{
  selfCopy = self;
  p_zone_names = &self->zone_names;
  if (self->zone_names || self->zone_info || self->wired_info)
  {
    self = [(VMUWiredMemoryInfo *)self resetMachInfo];
  }

  v4 = MEMORY[0x1C695E740](self, a2);
  v5 = mach_memory_info(v4, p_zone_names, &selfCopy->zone_names_count, &selfCopy->zone_info, &selfCopy->zone_info_count, &selfCopy->wired_info, &selfCopy->wired_info_count);
  selfCopy->ownsMachInfo = 1;
  if (v5)
  {
    v6 = v5;
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      [(VMUWiredMemoryInfo *)v6 sample];
LABEL_12:
      LOBYTE(v7) = 0;
    }
  }

  else if (selfCopy->zone_names_count == selfCopy->zone_info_count)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    [(VMUWiredMemoryInfo *)selfCopy resetMachInfo];
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      [VMUWiredMemoryInfo sample];
      goto LABEL_12;
    }
  }

  return v7;
}

void __34__VMUWiredMemoryInfo_vmRegionInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"OSBundleLoadTag"];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)counterInfo
{
  v24[11] = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->wired_info_count];
  if (self->wired_info_count)
  {
    v3 = 0;
    v4 = 96;
    do
    {
      wired_info = self->wired_info;
      v6 = *(wired_info + v4 - 96);
      if (v6 == 3)
      {
        if ((v6 & 0x400) != 0)
        {
          [MEMORY[0x1E696AEC0] stringWithUTF8String:wired_info + v4];
        }

        else
        {
          [(VMUWiredMemoryInfo *)self getCounterNameForSite:*(wired_info + v4 - 88)];
        }
        v7 = ;
        if (v7)
        {
          v23[0] = @"flags";
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v4 - 96)];
          v24[0] = v22;
          v23[1] = @"site";
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v4 - 88)];
          v24[1] = v21;
          v23[2] = @"size";
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v4 - 80)];
          v24[2] = v20;
          v23[3] = @"free";
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v4 - 72)];
          v24[3] = v19;
          v23[4] = @"largest";
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v4 - 64)];
          v24[4] = v18;
          v23[5] = @"collectable_bytes";
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v4 - 56)];
          v24[5] = v8;
          v23[6] = @"mapped";
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v4 - 48)];
          v24[6] = v9;
          v23[7] = @"peak";
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(self->wired_info + v4 - 40)];
          v24[7] = v10;
          v23[8] = @"tag";
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(self->wired_info + v4 - 32)];
          v24[8] = v11;
          v23[9] = @"zone";
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(self->wired_info + v4 - 30)];
          v23[10] = @"name";
          v24[9] = v12;
          v24[10] = v7;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:11];

          [v17 addObject:v13];
        }
      }

      ++v3;
      v4 += 176;
    }

    while (v3 < self->wired_info_count);
  }

  v14 = v17;
  v15 = [v17 copy];

  return v15;
}

- (id)getTagNameForSite:(unint64_t)site
{
  if ([&unk_1F4638AB8 count] <= site)
  {
    if (site == 255)
    {
      site = @"VM_KERN_MEMORY_ANY";
    }

    else if (site == 256)
    {
      site = @"VM_KERN_MEMORY_COUNT";
    }

    else
    {
      site = [MEMORY[0x1E696AEC0] stringWithFormat:@"VM_KERN_MEMORY_%lld", site];
    }
  }

  else
  {
    site = [&unk_1F4638AD0 objectAtIndexedSubscript:site];
  }

  return site;
}

- (id)getCounterNameForSite:(unint64_t)site
{
  if ([&unk_1F4638AE8 count] <= site)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"VM_KERN_COUNT_%lld", site];
  }

  else
  {
    [&unk_1F4638B00 objectAtIndexedSubscript:site];
  }
  v4 = ;

  return v4;
}

- (void)sample
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = self;
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Insufficient permissions to call mach_memory_info: error code %d\n", v1, 8u);
}

@end