@interface VMUSwiftRuntimeInfo
- (VMUSwiftRuntimeInfo)initWithSwiftCore:(_CSTypeRef)core memoryReader:(id)reader task:(id)task;
@end

@implementation VMUSwiftRuntimeInfo

- (VMUSwiftRuntimeInfo)initWithSwiftCore:(_CSTypeRef)core memoryReader:(id)reader task:(id)task
{
  opaque_2 = core._opaque_2;
  opaque_1 = core._opaque_1;
  v58[1] = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  taskCopy = task;
  v55.receiver = self;
  v55.super_class = VMUSwiftRuntimeInfo;
  v11 = [(VMUSwiftRuntimeInfo *)&v55 init];
  if (!v11)
  {
    goto LABEL_12;
  }

  isExclaveCore = [taskCopy isExclaveCore];
  v13 = readerCopy;
  v14 = CSIsNull();
  v15 = v14;
  if ((isExclaveCore | v14))
  {

    if (v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    CSSymbolOwnerGetSymbolWithMangledName();
    if ((CSIsNull() & 1) != 0 || (Range = CSSymbolGetRange(), (v17 = (*(v13 + 2))(v13, Range, 2)) == 0) || !*v17)
    {

LABEL_12:
      v18 = 0;
      goto LABEL_13;
    }
  }

  if (!_copy_remote_mangled_symbol_value(v13, "_swift_debug_nativeWeakReferenceMarkerMask", opaque_1, opaque_2, 8uLL, v11 + 8))
  {
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x3010000000;
    v54[4] = 0;
    v54[5] = 0;
    v54[3] = &unk_1C6872315;
    CSSymbolOwnerForeachSection();
    if (CSIsNull())
    {
      v20 = *MEMORY[0x1E69E9848];
      CSSymbolOwnerGetPath();
      fprintf(v20, "NO __DATA_DIRTY,__objc_imageinfo section in %s\n");
LABEL_16:
      _Block_object_dispose(v54, 8);
      goto LABEL_12;
    }

    if ([taskCopy isExclave])
    {
      v21 = 7;
    }

    else
    {
      v22 = CSRegionGetRange();
      if (v22)
      {
        v23 = (*(v13 + 2))(v13, v22, 8);
        if (!v23)
        {
          v53 = *MEMORY[0x1E69E9848];
          CSSymbolOwnerGetPath();
          fprintf(v53, "Unable to read __DATA __objc_imageinfo from %s\n");
          goto LABEL_16;
        }

        v21 = *(v23 + 5);
      }

      else
      {
        v21 = 0;
      }
    }

    isExclaveCore2 = [taskCopy isExclaveCore];
    v25 = 0x8000000000000001;
    if (isExclaveCore2)
    {
      v25 = 0;
    }

    *(v11 + 1) = v25;
    *(v11 + 2) = isExclaveCore2 ^ 1u;
    isExclaveCore3 = [taskCopy isExclaveCore];
    v27 = -8;
    if (isExclaveCore3)
    {
      v27 = -1;
    }

    *(v11 + 3) = v27;
    if (v21 <= 4)
    {
      v28 = 0;
      v11[32] = 0;
      *(v11 + 40) = xmmword_1C68583E0;
      *(v11 + 7) = 0;
      v11[64] = 0;
      v34 = 65;
    }

    else
    {
      v28 = 1;
      v11[32] = 1;
      __asm { FMOV            V0.2D, #-2.0 }

      *(v11 + 40) = _Q0;
      *(v11 + 7) = 0x3FFFFFFFFFFFFFFFLL;
      *(v11 + 32) = 768;
      if (v21 < 7)
      {
LABEL_32:
        _Block_object_dispose(v54, 8);
        goto LABEL_33;
      }

      v34 = 96;
    }

    v11[v34] = v28;
    goto LABEL_32;
  }

  _copy_remote_mangled_symbol_value(v13, "_swift_debug_nativeWeakReferenceMarkerValue", opaque_1, opaque_2, 8uLL, v11 + 16);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_nativeWeakReferencePointerMask", opaque_1, opaque_2, 8uLL, v11 + 24);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_nativeWeakReferencePointerIsSideTable", opaque_1, opaque_2, 1uLL, v11 + 32);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_refcountIsSideTableMarkerMask", opaque_1, opaque_2, 8uLL, v11 + 40);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_refcountIsSideTableMarkerValue", opaque_1, opaque_2, 8uLL, v11 + 48);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_sideTablePointerMask", opaque_1, opaque_2, 8uLL, v11 + 56);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_sideTablePointerRightShift", opaque_1, opaque_2, 1uLL, v11 + 64);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_sideTablePointerLeftShift", opaque_1, opaque_2, 1uLL, v11 + 65);
  v11[96] = 1;
LABEL_33:
  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
    v37 = VMUSanitizePath(v36);

    v38 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:@"Swift weak reference storage" binaryPath:v37 type:16];
    [v38 setDefaultScanType:4];
    v39 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"_owner" type:@"^@" scan:4 offset:0 size:8];
    v40 = [v38 mutableCopy];
    v41 = *(v11 + 9);
    *(v11 + 9) = v40;

    v42 = *(v11 + 9);
    v58[0] = v39;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [v42 addFields:v43];

    v44 = [(VMUFieldInfo *)v39 mutableCopy];
    [v44 setScanType:0];
    v45 = [v38 mutableCopy];
    v46 = *(v11 + 10);
    *(v11 + 10) = v45;

    v47 = *(v11 + 10);
    v57 = v44;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v47 addFields:v48];

    v49 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:@"Swift unowned reference storage" binaryPath:v37 type:16];
    v50 = *(v11 + 11);
    *(v11 + 11) = v49;

    [*(v11 + 11) setDefaultScanType:4];
    v51 = *(v11 + 11);
    v56 = v39;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
    [v51 addFields:v52];
  }

  v18 = v11;
LABEL_13:

  return v18;
}

char *__59__VMUSwiftRuntimeInfo_initWithSwiftCore_memoryReader_task___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Name = CSRegionGetName();
  result = strstr(Name, " __objc_imageinfo");
  if (result)
  {
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;
  }

  return result;
}

@end