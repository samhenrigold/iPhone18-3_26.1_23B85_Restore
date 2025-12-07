@interface ATSSymbolsMapCapture
- (ATSSymbolsMapCapture)initWithLogger:(id)logger;
- (void)addChunksToFile:(ktrace_file *)file;
- (void)encodeLiveKernelMap:(ktrace_file *)map;
- (void)encodeSharedCachesUsingCS:(ktrace_file *)s;
- (void)encodeSharedCachesUsingDyldIntrospection:(ktrace_file *)introspection;
@end

@implementation ATSSymbolsMapCapture

- (ATSSymbolsMapCapture)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v9.receiver = self;
  v9.super_class = ATSSymbolsMapCapture;
  v6 = [(ATSSymbolsMapCapture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, logger);
  }

  return v7;
}

- (void)encodeLiveKernelMap:(ktrace_file *)map
{
  CSSymbolicatorCreateWithMachKernel();
  if ((CSIsNull() & 1) == 0)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x9012000000;
    v37 = sub_19E0;
    v38 = sub_19EC;
    v39 = "";
    v40 = 0;
    v41 = 0;
    v42 = xmmword_AE20;
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    v46 = 1;
    v47 = 256;
    v48 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x4812000000;
    v28 = sub_19F4;
    v29 = sub_1A18;
    v30 = "";
    v32 = 0;
    v33 = 0;
    __p = 0;
    CSSymbolicatorForeachSymbolOwnerAtTime();
    CSSymbolicatorGetAOutSymbolOwner();
    if ((CSIsNull() & 1) != 0 || (CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes()) == 0)
    {
      v6 = 0;
    }

    else
    {
      memset(out, 0, 37);
      uuid_unparse(CFUUIDBytes, out);
      v5 = strlen(out);
      v6 = sub_5684(v35 + 6, out, v5);
    }

    CSRelease();
    v7 = v26[7] - v26[6];
    if (v7)
    {
      v8 = v26[6];
    }

    else
    {
      v8 = &flatbuffers::data<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>,std::allocator<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>>>(std::vector<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>> const&)::t;
    }

    v9 = sub_1F30(v35 + 12, v8, v7 >> 2);
    v10 = sub_5684(v35 + 6, "kernel_task", 0xBuLL);
    v11 = v35;
    sub_39B0((v35 + 6));
    *(v11 + 118) = 1;
    v12 = *(v11 + 20);
    v13 = *(v11 + 24);
    v14 = *(v11 + 22);
    sub_39E0((v11 + 6), 6, 0, -1);
    sub_39E0((v11 + 6), 8, 0, -1);
    sub_3D2C(v11 + 12, 4, v10);
    sub_3D2C(v11 + 12, 10, v6);
    v15 = sub_3EC0((v11 + 6), v12 - v13 + v14);
    v16 = v35;
    sub_39B0((v35 + 6));
    *(v16 + 118) = 1;
    v17 = *(v16 + 20);
    v18 = *(v16 + 24);
    LODWORD(v11) = *(v16 + 22);
    sub_3D2C(v16 + 12, 10, 0);
    sub_3D2C(v16 + 12, 8, v9);
    sub_3D2C(v16 + 12, 6, v15);
    sub_5594((v16 + 6), 4, 1, 0);
    *out = sub_3EC0((v16 + 6), v17 - v18 + v11);
    v19 = sub_1F30(v35 + 12, out, 1);
    v20 = v35;
    sub_39B0((v35 + 6));
    *(v20 + 118) = 1;
    LODWORD(v11) = *(v20 + 20);
    v21 = *(v20 + 24);
    LODWORD(v16) = *(v20 + 22);
    sub_3D2C(v20 + 12, 6, 0);
    sub_3D2C(v20 + 12, 4, v19);
    v22 = sub_3EC0((v20 + 6), v11 - v21 + v16);
    sub_5CE8((v35 + 6), v22, "SYMB", 0);
    sub_1FB4((v35 + 6));
    if (!ktrace_file_append_chunk())
    {
      v23 = __error();
      v24 = [NSString stringWithFormat:@"Failed to append kernel map chunk. Error: %s", strerror(*v23), _NSConcreteStackBlock, 3221225472, sub_1A30, &unk_104E0, &v34, &v25];
      [(KTProviderLogger *)self->_logger failWithReason:v24];
    }

    _Block_object_dispose(&v25, 8);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v34, 8);
    sub_3288(&v40);
  }
}

- (void)encodeSharedCachesUsingDyldIntrospection:(ktrace_file *)introspection
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x9012000000;
  v29 = sub_19E0;
  v30 = sub_19EC;
  v31 = "";
  v32 = 0;
  v33 = 0;
  v34 = xmmword_AE20;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  v38 = 1;
  v39 = 256;
  v40 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4812000000;
  v20 = sub_2354;
  v21 = sub_2378;
  v22 = "";
  v24 = 0;
  v25 = 0;
  __p = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x5812000000;
  v14[3] = sub_2390;
  v14[4] = sub_239C;
  v14[5] = "";
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  dyld_for_each_installed_shared_cache();
  v4 = v18[6];
  v5 = v18[7];
  if (v4 != v5)
  {
    v6 = sub_1F30(v27 + 12, v4, (v5 - v4) >> 2);
    v7 = v27;
    sub_39B0((v27 + 6));
    *(v7 + 118) = 1;
    v8 = *(v7 + 20);
    v9 = *(v7 + 24);
    v10 = *(v7 + 22);
    sub_3D2C(v7 + 12, 6, 0);
    sub_3D2C(v7 + 12, 4, v6);
    v11 = sub_3EC0((v7 + 6), v8 - v9 + v10);
    sub_5CE8((v27 + 6), v11, "SYMB", 0);
    sub_1FB4((v27 + 6));
    if (!ktrace_file_append_chunk())
    {
      v12 = __error();
      v13 = [NSString stringWithFormat:@"Failed to append kernel map chunk. Error: %s", strerror(*v12), _NSConcreteStackBlock, 3221225472, sub_23A4, &unk_10508, v14, &v26, &v17];
      [(KTProviderLogger *)self->_logger failWithReason:v13];
    }
  }

  _Block_object_dispose(v14, 8);
  sub_7CDC(v15);
  _Block_object_dispose(&v17, 8);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v26, 8);
  sub_3288(&v32);
}

- (void)encodeSharedCachesUsingCS:(ktrace_file *)s
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x9012000000;
  v26 = sub_19E0;
  v27 = sub_19EC;
  v28 = "";
  v29 = 0;
  v30 = 0;
  v31 = xmmword_AE20;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v35 = 1;
  v36 = 256;
  v37 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = sub_2354;
  v18 = sub_2378;
  v19 = "";
  v21 = 0;
  v22 = 0;
  __p = 0;
  CSSymbolicatorForeachSharedCache();
  v4 = v15[6];
  v5 = v15[7];
  if (v4 != v5)
  {
    v6 = sub_1F30(v24 + 12, v4, (v5 - v4) >> 2);
    v7 = v24;
    sub_39B0((v24 + 6));
    *(v7 + 118) = 1;
    v8 = *(v7 + 20);
    v9 = *(v7 + 24);
    v10 = *(v7 + 22);
    sub_3D2C(v7 + 12, 6, 0);
    sub_3D2C(v7 + 12, 4, v6);
    v11 = sub_3EC0((v7 + 6), v8 - v9 + v10);
    sub_5CE8((v24 + 6), v11, "SYMB", 0);
    sub_1FB4((v24 + 6));
    if (!ktrace_file_append_chunk())
    {
      v12 = __error();
      v13 = [NSString stringWithFormat:@"Failed to append kernel map chunk. Error: %s", strerror(*v12), _NSConcreteStackBlock, 3221225472, sub_2B14, &unk_104E0, &v23, &v14];
      [(KTProviderLogger *)self->_logger failWithReason:v13];
    }
  }

  _Block_object_dispose(&v14, 8);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v23, 8);
  sub_3288(&v29);
}

- (void)addChunksToFile:(ktrace_file *)file
{
  [(ATSSymbolsMapCapture *)self encodeSharedCachesUsingDyldIntrospection:?];

  [(ATSSymbolsMapCapture *)self encodeLiveKernelMap:file];
}

@end