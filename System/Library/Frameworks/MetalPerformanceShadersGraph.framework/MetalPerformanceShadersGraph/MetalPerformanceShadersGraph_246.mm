void GPU::GPURegionCallOpHandler::GPURegionCallOpHandler(GPU::GPURegionCallOpHandler *this, GPU::BaseOpHandler *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = 0;
  *this = &unk_1F5B50680;
  *(this + 6) = this + 64;
  *(this + 5) = 0;
  *(this + 12) = this + 112;
  *(this + 7) = 0x400000000;
  *(this + 13) = 0x400000000;
  *(this + 16) = this + 144;
  *(this + 17) = 0x400000000;
  *(this + 22) = 0;
  *(this + 184) = 0;
  *(this + 47) = 1;
  *(this + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 200));
  *(this + 27) = this + 232;
  *(this + 26) = 0;
  *(this + 28) = 0x400000000;
  v3 = *(this + 2);
  v15 = *(this + 3);
  Callee = mlir::placement::RegionCall::getCallee(&v15);
  v6 = v5;
  v7 = *(v3 + 64);
  Context = mlir::Attribute::getContext((v7 + 6));
  v17 = 261;
  __src[0] = Callee;
  __src[1] = v6;
  v9 = mlir::StringAttr::get(Context, __src);
  v10 = mlir::SymbolTable::lookupSymbolIn(v7, v9);
  if (v10 && *(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    *(this + 5) = v10;
  }

  else
  {
    *(this + 5) = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v18 = v20;
  v19 = 0x100000000;
  v11 = *(this + 5);
  if (v11)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*(this + 5));
    v13 = v19;
    if (v19 >= HIDWORD(v19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v19 + 1, 16);
      v13 = v19;
    }
  }

  else
  {
    InterfaceFor = 0;
    v13 = 0;
  }

  v14 = &v18[2 * v13];
  *v14 = v11;
  v14[1] = InterfaceFor;
  LODWORD(v19) = v19 + 1;
  operator new();
}

void sub_1E07E68F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *a13, void *a14, void *a15, void **a16, void *a17, void *a18, void **a19, uint64_t a20, uint64_t a21, void *a22)
{
  v27 = *(v25 - 144);
  if (v27 != a18)
  {
    free(v27);
  }

  llvm::SmallVector<GPU::GPURegionCallOpHandler::ScheduleStep,4u>::~SmallVector(v24);
  llvm::sys::RWMutexImpl::~RWMutexImpl((v22 + 200));
  v28 = *(v22 + 192);
  *(v22 + 192) = 0;
  if (v28)
  {
    (*(*v28 + 16))(v28);
    v29 = *(v22 + 176);
    *(v22 + 176) = 0;
    if (!v29)
    {
LABEL_5:
      v30 = *v23;
      if (*v23 == a14)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v29 = *(v22 + 176);
    *(v22 + 176) = 0;
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  (*(*v29 + 64))(v29);
  v30 = *v23;
  if (*v23 == a14)
  {
LABEL_6:
    v31 = *a16;
    if (*a16 == a17)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  free(v30);
  v31 = *a16;
  if (*a16 == a17)
  {
LABEL_7:
    v32 = *a19;
    if (*a19 == a15)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_13:
  free(v31);
  v32 = *a19;
  if (*a19 == a15)
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  free(v32);
  goto LABEL_9;
}

void GPU::GPURegionCallOpHandler::~GPURegionCallOpHandler(GPU::GPURegionCallOpHandler *this)
{
  *this = &unk_1F5B50680;
  v2 = *(this + 27);
  v3 = *(this + 56);
  if (v3)
  {
    v4 = &v2[88 * v3 - 88];
    v5 = -88 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 11;
      v5 += 88;
    }

    while (v5);
    v2 = *(this + 27);
  }

  if (v2 != this + 232)
  {
    free(v2);
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 25);
  v6 = *(this + 24);
  *(this + 24) = 0;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(this + 22);
  *(this + 22) = 0;
  if (v7)
  {
    (*(*v7 + 64))(v7);
  }

  v8 = *(this + 16);
  if (v8 != this + 144)
  {
    free(v8);
  }

  v9 = *(this + 12);
  if (v9 != this + 112)
  {
    free(v9);
  }

  v10 = *(this + 6);
  if (v10 != this + 64)
  {
    free(v10);
  }
}

{
  GPU::GPURegionCallOpHandler::~GPURegionCallOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::GPURegionCallOpHandler::encodeOp(GPU::GPURegionCallOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v4 = *(this + 2);
  v5 = *(this + 6);
  v6 = *(this + 14);
  v7 = *(this + 12);
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
  if (v6)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69744E8];
    do
    {
      v10 = (*(*v4 + 48))(v4, *(v5 + 8 * v8), 0);
      [v20 addObject:v10];

      v11 = [v20 objectAtIndexedSubscript:v8];
      v12 = [v11 mpsndarray];

      if (*(v12 + *v9) == 1)
      {
        [v12 setReadCount:{*(v7 + 4 * v8) + objc_msgSend(v12, "readCount") - 1}];
      }

      ++v8;
    }

    while (v6 != v8);
  }

  v13 = *(this + 2);
  v14 = *(this + 16);
  v15 = *(this + 34);
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v15];
  if (v15)
  {
    do
    {
      while (1)
      {
        v17 = (*(*v13 + 48))(v13, *v14, 0);
        if (!v17)
        {
          break;
        }

        [v16 addObject:v17];

        ++v14;
        if (!--v15)
        {
          goto LABEL_11;
        }
      }

      v18 = [MEMORY[0x1E695DFB0] null];
      [v16 addObject:v18];

      ++v14;
      --v15;
    }

    while (v15);
  }

LABEL_11:
  v19 = GPU::GPURegionCallOpHandler::evaluate(this, a2, v20, v16);
}

id GPU::GPURegionCallOpHandler::evaluate(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v157[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v139 = a2;
  v9 = *(a2 + 72);
  v136 = v7;
  if (v9)
  {
    [v9 endEncoding];
    v10 = *(a2 + 72);
    *(a2 + 72) = 0;
  }

  if (*(a1 + 184) != 1 || (*(a2 + 24) & 1) == 0)
  {
    v16 = GPURegionRuntime::evaluateOps(*(a1 + 176), a2, v7, v8);
    goto LABEL_160;
  }

  v11 = *(a1 + 188);
  if (atomic_load_explicit(&qword_1EE17DDE8, memory_order_acquire) != -1)
  {
    v154 = &v151;
    v145 = &v154;
  }

  v12 = _MergedGlobals_67;
  if (!_MergedGlobals_67)
  {
    if ([v139[2] maximumNumberOfEncodingThreads])
    {
      v17 = [v139[2] maximumNumberOfEncodingThreads];
      v12 = v17;
      v13 = v17 - 1;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      v140 = v18;
      v15 = *(a1 + 192);
      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v19 = (v11 - (v11 != 0)) >> 1;
      if (v11)
      {
        ++v19;
      }

      if (v19 >= 4)
      {
        v19 = 4;
      }

      if (v19 <= 2)
      {
        v12 = 2;
      }

      else
      {
        v12 = v19;
      }

      v13 = v12 - 1;
      v140 = v12;
      v15 = *(a1 + 192);
      if (v15)
      {
        goto LABEL_12;
      }
    }

LABEL_29:
    operator new();
  }

  v13 = _MergedGlobals_67 - 1;
  if (_MergedGlobals_67 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = _MergedGlobals_67;
  }

  v140 = v14;
  v15 = *(a1 + 192);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_12:
  if (*(v15 + 300) != v140)
  {
    goto LABEL_29;
  }

  v20 = qos_class_self();
  v135 = _os_activity_create(&dword_1DF9BF000, "GPURegionCallOpHandler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  llvm::StdThreadPool::raiseQOSIfNeeded(*(a1 + 192), v20);
  llvm::StdThreadPool::setActivity(*(a1 + 192), v135, 0);
  GPURegionRuntime::setupFeedsAndTargets(*(a1 + 176), v139, v7, v8, &__p);
  v21 = __p;
  if (__p)
  {
    v22 = v144;
    v23 = __p;
    if (v144 != __p)
    {
      do
      {

        v24 = *(v22 - 2);
        v22 -= 2;
      }

      while (v22 != v21);
      v23 = __p;
    }

    v144 = v21;
    operator delete(v23);
  }

  context = objc_autoreleasePoolPush();
  v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:v140];
  [v25 addObject:v139[1]];
  if (v12 >= 2)
  {
    do
    {
      v26 = MEMORY[0x1E6974450];
      v27 = [v139[1] commandQueue];
      v28 = [v26 commandBufferFromCommandQueue:v27];
      [v25 addObject:v28];

      --v13;
    }

    while (v13);
  }

  v29 = *(a1 + 224);
  if (v29)
  {
    v30 = *(a1 + 216);
    v137 = &v30[11 * v29];
    while (1)
    {
      v154 = v156;
      v155 = 0x400000000;
      v31 = v30;
      v32 = *(v30 + 2);
      v138 = v31;
      if (&v154 != v31 && v32 != 0)
      {
        break;
      }

LABEL_49:
      v36 = v138;
      v156[64] = *(v138 + 80);
      (**v139)(v139);
      v37 = v155;
      if (v155 != 1)
      {
        v151 = v153;
        v152 = 0x400000000;
        v148 = v150;
        v149 = 0x400000000;
        v145 = v147;
        v146 = 0x600000000;
        if (v155 < 5)
        {
          goto LABEL_72;
        }

        v157[0] = 0;
        v38 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v151, v153, v155, 8, v157);
        v39 = v151;
        v40 = v152;
        if (v152)
        {
          v41 = (v152 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v42 = 8 * v152;
          if (v41 < 5)
          {
            v43 = v38;
            v44 = v151;
            goto LABEL_64;
          }

          if (v38 < v151 + v42)
          {
            v43 = v38;
            v44 = v151;
            if (v151 < &v38[v42])
            {
              goto LABEL_64;
            }
          }

          v52 = v41 + 1;
          v53 = 8 * (v52 & 0x3FFFFFFFFFFFFFFCLL);
          v43 = &v38[v53];
          v44 = v151 + v53;
          v54 = (v151 + 16);
          v55 = v38 + 16;
          v56 = v52 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v57 = *v54;
            *(v55 - 1) = *(v54 - 1);
            *v55 = v57;
            *(v54 - 1) = 0uLL;
            *v54 = 0uLL;
            v54 += 2;
            v55 += 2;
            v56 -= 4;
          }

          while (v56);
          if (v52 != (v52 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_64:
            v58 = &v39[8 * v40];
            do
            {
              *v43 = *v44;
              v43 += 8;
              *v44 = 0;
              v44 += 8;
            }

            while (v44 != v58);
          }

          v59 = -v42;
          v60 = &v39[v42 - 8];
          do
          {
            v60 = MEMORY[0x1E12E5A60](v60) - 8;
            v59 += 8;
          }

          while (v59);
          v39 = v151;
        }

        v61 = v157[0];
        if (v39 != v153)
        {
          free(v39);
        }

        v151 = v38;
        HIDWORD(v152) = v61;
        if (HIDWORD(v149) >= v37)
        {
LABEL_72:
          if (HIDWORD(v146) < v37)
          {
            goto LABEL_73;
          }

          goto LABEL_87;
        }

        v157[0] = 0;
        v45 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v148, v150, v37, 8, v157);
        v46 = v148;
        v47 = v149;
        if (v149)
        {
          v48 = (v149 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v49 = 8 * v149;
          if (v48 < 5)
          {
            v50 = v45;
            v51 = v148;
            goto LABEL_79;
          }

          if (v45 < v148 + v49)
          {
            v50 = v45;
            v51 = v148;
            if (v148 < &v45[v49])
            {
              goto LABEL_79;
            }
          }

          v62 = v48 + 1;
          v63 = 8 * (v62 & 0x3FFFFFFFFFFFFFFCLL);
          v50 = &v45[v63];
          v51 = v148 + v63;
          v64 = (v148 + 16);
          v65 = v45 + 16;
          v66 = v62 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v67 = *v64;
            *(v65 - 1) = *(v64 - 1);
            *v65 = v67;
            *(v64 - 1) = 0uLL;
            *v64 = 0uLL;
            v64 += 2;
            v65 += 2;
            v66 -= 4;
          }

          while (v66);
          if (v62 != (v62 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_79:
            v68 = &v46[8 * v47];
            do
            {
              *v50 = *v51;
              v50 += 8;
              *v51 = 0;
              v51 += 8;
            }

            while (v51 != v68);
          }

          v69 = -v49;
          v70 = &v46[v49 - 8];
          do
          {
            std::shared_future<void>::~shared_future(v70);
            v70 = (v71 - 8);
            v69 += 8;
          }

          while (v69);
          v46 = v148;
        }

        v72 = v157[0];
        if (v46 != v150)
        {
          free(v46);
        }

        v148 = v45;
        HIDWORD(v149) = v72;
        if (HIDWORD(v146) < v37)
        {
LABEL_73:
LABEL_88:
          std::promise<void>::promise(&v142);
          v73 = v151;
          if (v152 < HIDWORD(v152))
          {
LABEL_89:
            v74 = &v142;
            goto LABEL_90;
          }

          if (v151 > &v142 || v151 + 8 * v152 <= &v142)
          {
            v157[0] = 0;
            v73 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v151, v153, v152 + 1, 8, v157);
            v81 = v151;
            v82 = v152;
            if (v152)
            {
              v83 = (v152 - 1) & 0x1FFFFFFFFFFFFFFFLL;
              v84 = 8 * v152;
              if (v83 < 5)
              {
                v85 = v73;
                v86 = v151;
                goto LABEL_108;
              }

              if (v73 < v151 + v84)
              {
                v85 = v73;
                v86 = v151;
                if (v151 < &v73[v84])
                {
                  goto LABEL_108;
                }
              }

              v93 = v83 + 1;
              v94 = 8 * (v93 & 0x3FFFFFFFFFFFFFFCLL);
              v85 = &v73[v94];
              v86 = v151 + v94;
              v95 = (v151 + 16);
              v96 = v73 + 16;
              v97 = v93 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v98 = *v95;
                *(v96 - 1) = *(v95 - 1);
                *v96 = v98;
                *(v95 - 1) = 0uLL;
                *v95 = 0uLL;
                v95 += 2;
                v96 += 2;
                v97 -= 4;
              }

              while (v97);
              if (v93 != (v93 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_108:
                v99 = &v81[8 * v82];
                do
                {
                  *v85 = *v86;
                  v85 += 8;
                  *v86 = 0;
                  v86 += 8;
                }

                while (v86 != v99);
              }

              v100 = -v84;
              v101 = &v81[v84 - 8];
              do
              {
                v101 = MEMORY[0x1E12E5A60](v101) - 8;
                v100 += 8;
              }

              while (v100);
              v81 = v151;
            }

            v102 = v157[0];
            if (v81 != v153)
            {
              free(v81);
            }

            v151 = v73;
            HIDWORD(v152) = v102;
            goto LABEL_89;
          }

          llvm::SmallVectorTemplateBase<std::promise<void>,false>::grow(&v151, v152 + 1);
          v114 = (&v142 - v73);
          v73 = v151;
          v74 = &v114[v151];
LABEL_90:
          v75 = v152;
          *&v73[8 * v152] = v74->__state_;
          v74->__state_ = 0;
          LODWORD(v152) = v75 + 1;
          MEMORY[0x1E12E5A60](&v142);
          std::promise<void>::get_future(v151 + v152 - 1);
          state = v141.__state_;
          v141.__state_ = 0;
          v142.__state_ = state;
          v77 = v148;
          if (v149 < HIDWORD(v149))
          {
LABEL_91:
            v78 = &v142;
            goto LABEL_92;
          }

          if (v148 <= &v142 && v148 + 8 * v149 > &v142)
          {
            llvm::SmallVectorTemplateBase<std::shared_future<void>,false>::grow(&v148, v149 + 1);
            v115 = (&v142 - v77);
            v77 = v148;
            v78 = &v115[v148];
LABEL_92:
            v79 = v149;
            *&v77[8 * v149] = v78->__state_;
            v78->__state_ = 0;
            LODWORD(v149) = v79 + 1;
            std::shared_future<void>::~shared_future(&v142);
            std::future<void>::~future(&v141);
            [v25 objectAtIndexedSubscript:0 % v140];
            objc_claimAutoreleasedReturnValue();
            v142.__state_ = 0;
            v80 = v139[11];
            operator new();
          }

          v157[0] = 0;
          v77 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v148, v150, v149 + 1, 8, v157);
          v87 = v148;
          v88 = v149;
          if (v149)
          {
            v89 = (v149 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            v90 = 8 * v149;
            if (v89 < 5)
            {
              v91 = v77;
              v92 = v148;
              goto LABEL_121;
            }

            if (v77 < v148 + v90)
            {
              v91 = v77;
              v92 = v148;
              if (v148 < &v77[v90])
              {
                goto LABEL_121;
              }
            }

            v103 = v89 + 1;
            v104 = 8 * (v103 & 0x3FFFFFFFFFFFFFFCLL);
            v91 = &v77[v104];
            v92 = v148 + v104;
            v105 = (v148 + 16);
            v106 = v77 + 16;
            v107 = v103 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v108 = *v105;
              *(v106 - 1) = *(v105 - 1);
              *v106 = v108;
              *(v105 - 1) = 0uLL;
              *v105 = 0uLL;
              v105 += 2;
              v106 += 2;
              v107 -= 4;
            }

            while (v107);
            if (v103 != (v103 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_121:
              v109 = &v87[8 * v88];
              do
              {
                *v91 = *v92;
                v91 += 8;
                *v92 = 0;
                v92 += 8;
              }

              while (v92 != v109);
            }

            v110 = -v90;
            v111 = &v87[v90 - 8];
            do
            {
              std::shared_future<void>::~shared_future(v111);
              v111 = (v112 - 8);
              v110 += 8;
            }

            while (v110);
            v87 = v148;
          }

          v113 = v157[0];
          if (v87 != v150)
          {
            free(v87);
          }

          v148 = v77;
          HIDWORD(v149) = v113;
          goto LABEL_91;
        }

LABEL_87:
        if (v37)
        {
          goto LABEL_88;
        }

        std::__assoc_sub_state::wait(*(v148 + v149 - 1));
        v116 = v145;
        if (v146)
        {
          v117 = 8 * v146;
          v118 = v145 - 8;
          do
          {
            v119 = *&v118[v117];
            *&v118[v117] = 0;
            if (v119)
            {
              v119->__state_ = &unk_1F5B50780;
              std::shared_future<void>::~shared_future(v119 + 13);
              GPU::EncodeDescriptor::~EncodeDescriptor(v119);
              MEMORY[0x1E12E5B90]();
            }

            v117 -= 8;
          }

          while (v117);
          v116 = v145;
          v36 = v138;
          if (v145 != v147)
          {
LABEL_137:
            free(v116);
          }
        }

        else
        {
          v36 = v138;
          if (v145 != v147)
          {
            goto LABEL_137;
          }
        }

        v120 = v148;
        if (v149)
        {
          v121 = -8 * v149;
          v122 = (v148 + 8 * v149 - 8);
          do
          {
            std::shared_future<void>::~shared_future(v122);
            v122 = (v123 - 8);
            v121 += 8;
          }

          while (v121);
          v120 = v148;
          v36 = v138;
        }

        if (v120 != v150)
        {
          free(v120);
        }

        v124 = v151;
        if (v152)
        {
          v125 = -8 * v152;
          v126 = v151 + 8 * v152 - 8;
          do
          {
            v126 = (MEMORY[0x1E12E5A60](v126) - 8);
            v125 += 8;
          }

          while (v125);
          v124 = v151;
          v36 = v138;
        }

        if (v124 != v153)
        {
          free(v124);
        }

        goto LABEL_150;
      }

      (*(*v154[1] + 16))(v154[1], v139);
LABEL_150:
      if (v154 != v156)
      {
        free(v154);
      }

      v30 = v36 + 11;
      if (v30 == v137)
      {
        goto LABEL_154;
      }
    }

    v34 = v156;
    v35 = v32;
    if (v32 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v154, v156, v32, 16);
      v35 = *(v138 + 2);
      if (!v35)
      {
LABEL_48:
        LODWORD(v155) = v32;
        goto LABEL_49;
      }

      v34 = v154;
    }

    memcpy(v34, *v138, 16 * v35);
    goto LABEL_48;
  }

LABEL_154:
  llvm::StdThreadPool::clearActivity(*(a1 + 192));
  GPURegionRuntime::encodeOp(*(a1 + 176), *(*(*(a1 + 176) + 592) + 16), v139);
  v127 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 136)];
  v128 = *(a1 + 176);
  v129 = *(v128[74] + 16);
  if ((*(v129 + 46) & 0x80) != 0)
  {
    v130 = *(v129 + 68);
    if (v130)
    {
      v131 = (*(v129 + 72) + 24);
      do
      {
        v132 = (*(**(a1 + 176) + 48))(*(a1 + 176), *v131, 0);
        [v127 addObject:v132];

        v131 += 4;
        --v130;
      }

      while (v130);
      v128 = *(a1 + 176);
    }
  }

  (*(*v128 + 88))(v128);
  v16 = v127;

  objc_autoreleasePoolPop(context);
LABEL_160:

  return v16;
}

void sub_1E07E8380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, std::future<void> a28, std::future<void> a29, std::shared_future<void> a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  std::shared_future<void>::~shared_future(&a30);

  llvm::SmallVector<std::shared_future<void>,4u>::~SmallVector(&a42);
  llvm::SmallVector<std::promise<void>,4u>::~SmallVector(va);
  v49 = *(v47 - 232);
  if (v49 != a14)
  {
    free(v49);
  }

  _Unwind_Resume(a1);
}

void GPU::anonymous namespace::storeResults(void *a1, uint64_t a2, uint64_t a3, GPU::EncodeDescriptor *a4, void *a5, void *a6, void *a7, char a8)
{
  v13 = a5;
  v41 = a6;
  v14 = a7;
  v45 = v14;
  v38 = a3;
  if (a3)
  {
    v15 = 0;
    while (1)
    {
      v16 = *(a2 + 8 * v15);
      v17 = [v41 objectAtIndexedSubscript:v15];
      if ((*(**(a1[74] + 32) + 24))(*(a1[74] + 32), v16))
      {
        goto LABEL_21;
      }

      v18 = (v16[1] & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v46 = 0uLL;
        goto LABEL_21;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      *&v46 = v18;
      *(&v46 + 1) = v19;
      if (v18)
      {
        if (mlir::CallOpInterface::getArgOperands(&v46))
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v46);
          if (!v21)
          {
            goto LABEL_21;
          }

          v22 = 8 * v21;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_21;
            }
          }
        }

        v23 = (v16[1] & 0xFFFFFFFFFFFFFFF8);
        if (v23)
        {
          v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
          if (v24)
          {
            v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        v44[0] = v23;
        v44[1] = v24;
        v25 = [v17 shape];
        MPSShapeToVector<unsigned long long>(v25, &__p);

        *&v46 = __p;
        *(&v46 + 1) = (v43 - __p) >> 3;
        v47 = 1;
        isSplat = mlir::ElementsAttr::isSplat(v44);
        v49 = mlir::ShapedType::cloneWith(v44, &v46, isSplat);
        v50 = v16;
        v48 = *(mlir::Value::getParentRegion(&v50) + 2);
        *&v46 = &v48;
        v27 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>(a1 + 36, &v48, &std::piecewise_construct, &v46);
        *&v46 = v50;
        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v27 + 3, &v46, &v46, &v49);
        if (__p)
        {
          v43 = __p;
          operator delete(__p);
        }
      }

LABEL_21:
      v28 = [v13 objectAtIndexedSubscript:v15];
      v29 = [MEMORY[0x1E695DFB0] null];
      v30 = v29;
      if (v28 != v29)
      {
        v31 = [v13 objectAtIndexedSubscript:v15];

        if ((a8 & 1) == 0)
        {
          goto LABEL_28;
        }

        if (v31)
        {
          v32 = [v31 mpsndarray];
          v33 = v32[*MEMORY[0x1E69744E8]];

          if (v33 != 1)
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        BaseRuntime::unsetTensorDataFromDataMap(a1, v16);
        v34 = (*(*a1 + 80))(a1, v16, 0, 1, 0, 1);

        v31 = v34;
        goto LABEL_28;
      }

      v31 = 0;
      if (a8)
      {
        goto LABEL_27;
      }

LABEL_28:
      v35 = GPU::EncodeDescriptor::getcomputeEncoder(a4);
      v36 = *(a4 + 1);
      v37 = [v17 mpsndarray];
      GPURegionRuntime::copyNDArrayToTarget(a1, v35, v36, &v45, v37, v31, v16, 0);

      if (++v15 == v38)
      {
        v14 = v45;
        break;
      }
    }
  }
}

std::shared_future<void> **std::unique_ptr<GPU::anonymous namespace::BlockingEncodeDescriptor>::~unique_ptr[abi:ne200100](std::shared_future<void> **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v1->__state_ = &unk_1F5B50780;
    v2 = result;
    std::shared_future<void>::~shared_future(v1 + 13);
    GPU::EncodeDescriptor::~EncodeDescriptor(v1);
    MEMORY[0x1E12E5B90]();
    return v2;
  }

  return result;
}

void GPU::anonymous namespace::encodeRegion(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, GPU::EncodeDescriptor *a6, std::promise<void> *a7, std::promise<void> *a8)
{
  v12 = a1;
  v31 = a5;
  v32 = a3;
  v30 = a6;
  v13 = objc_autoreleasePoolPush();
  v29[0] = &v32;
  v29[1] = &v30;
  v29[2] = &v31;
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a5 + 56)];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v31 + 136)];
  llvm::sys::RWMutexImpl::lock((a4 + 200));
  v16 = v31;
  v17 = *(v31 + 56);
  v27 = a8;
  v28 = v13;
  if (v17)
  {
    v18 = *(v31 + 48);
    v19 = 8 * v17;
    do
      v20 = {;
      [v14 addObject:v20];

      ++v18;
      v19 -= 8;
    }

    while (v19);
    v16 = v31;
  }

  v21 = *(v16 + 136);
  if (v21)
  {
    v22 = *(v16 + 128);
    v23 = 8 * v21;
    do
    {
      while (1)
        v24 = {;
        if (!v24)
        {
          break;
        }

        [v15 addObject:v24];

        ++v22;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_10;
        }
      }

      v25 = [MEMORY[0x1E695DFB0] null];
      [v15 addObject:v25];

      ++v22;
      v23 -= 8;
    }

    while (v23);
  }

LABEL_10:
  llvm::sys::RWMutexImpl::unlock_shared((a4 + 200));
  std::promise<void>::set_value(a7);
  v26 = GPU::GPURegionCallOpHandler::evaluate(v31, v30, v14, v15);
  llvm::sys::RWMutexImpl::lock((a4 + 200));
  llvm::sys::RWMutexImpl::unlock_shared((a4 + 200));
  (**v30)(v30);
  std::promise<void>::set_value(v27);

  objc_autoreleasePoolPop(v28);
}

void sub_1E07E8C34(_Unwind_Exception *a1)
{
  llvm::sys::RWMutexImpl::unlock_shared((v3 + 200));

  _Unwind_Resume(a1);
}

void sub_1E07E8CB4(_Unwind_Exception *a1)
{
  llvm::sys::RWMutexImpl::unlock_shared((v3 + 200));

  _Unwind_Resume(a1);
}

char ***llvm::SmallVector<std::unique_ptr<GPU::anonymous namespace::BlockingEncodeDescriptor>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = v2 - 1;
    do
    {
      v6 = v5[v4];
      v5[v4] = 0;
      if (v6)
      {
        v6->__state_ = &unk_1F5B50780;
        std::shared_future<void>::~shared_future(v6 + 13);
        GPU::EncodeDescriptor::~EncodeDescriptor(v6);
        MEMORY[0x1E12E5B90]();
      }

      --v4;
    }

    while (v4 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t GPU::GPURegionCallOpHandler::propagateResultIsGraphOutput(GPU::GPURegionCallOpHandler *this, unsigned int a2)
{
  v2 = *(this + 22);
  v10 = *(*(*(*(v2 + 592) + 16) + 72) + 32 * a2 + 24);
  result = mlir::Value::getDefiningOp(&v10);
  v9 = result;
  if (result)
  {
    v4 = *(result + 36);
    if (v4)
    {
      v5 = result - 16;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = 0;
      while (1)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v6);
        if (NextResultAtOffset == v10)
        {
          break;
        }

        if (v4 == ++v6)
        {
          v6 = v4;
          break;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((v2 + 248), &v9);
    if (!v8)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    return (*(*v8[3] + 56))(v8[3], v6);
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<GPU::anonymous namespace::getThreadPoolSize(GPU::EncodeDescriptor *,unsigned int)::{lambda(void)#1} &&>>()
{
  v0 = getenv("MPSGRAPH_MAX_NUM_ENCODING_THREADS");
  if (v0)
  {
    v1 = atoi(v0);
    _MergedGlobals_67 = v1;
    NSLog(&cfstr_MpsgraphMaxNum_0.isa, v1);
  }
}

__n128 std::__function::__func<std::__bind<void (&)(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *),BOOL &,unsigned long long &,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *&,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *>,std::allocator<std::__bind<void (&)(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *),BOOL &,unsigned long long &,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *&,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B506C8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (&)(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *),BOOL &,unsigned long long &,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *&,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *>,std::allocator<std::__bind<void (&)(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *),BOOL &,unsigned long long &,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *&,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "NSt3__16__bindIRFvbyP16GPURegionRuntimePN3GPU22GPURegionCallOpHandlerES5_PNS3_12_GLOBAL__N_124BlockingEncodeDescriptorEPNS_7promiseIvEESB_EJRbRyS2_S5_RS5_S8_SB_SB_EEE")
  {
    return a1 + 8;
  }

  if (((v2 & "NSt3__16__bindIRFvbyP16GPURegionRuntimePN3GPU22GPURegionCallOpHandlerES5_PNS3_12_GLOBAL__N_124BlockingEncodeDescriptorEPNS_7promiseIvEESB_EJRbRyS2_S5_RS5_S8_SB_SB_EEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__16__bindIRFvbyP16GPURegionRuntimePN3GPU22GPURegionCallOpHandlerES5_PNS3_12_GLOBAL__N_124BlockingEncodeDescriptorEPNS_7promiseIvEESB_EJRbRyS2_S5_RS5_S8_SB_SB_EEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16__bindIRFvbyP16GPURegionRuntimePN3GPU22GPURegionCallOpHandlerES5_PNS3_12_GLOBAL__N_124BlockingEncodeDescriptorEPNS_7promiseIvEESB_EJRbRyS2_S5_RS5_S8_SB_SB_EEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

MPSGraphTensorData *GPU::anonymous namespace::encodeRegion(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *)::$_0::operator()(uint64_t **a1, uint64_t *a2, int a3, int a4)
{
  v8 = (*(***a1 + 48))(**a1, a2, 0);
  v9 = v8;
  v10 = v8;
  if (a3)
  {
    if (v8)
    {
      v11 = [v8 mpsndarray];
      v12 = v11[*MEMORY[0x1E69744E8]];

      v10 = v9;
      if (v12 != 1)
      {
        goto LABEL_16;
      }

      BaseRuntime::unsetTensorDataFromDataMap(**a1, a2);
    }

    v10 = (*(***a1 + 80))(**a1, a2, 0, 1, 0, 1);

    if (v9)
    {
      v13 = a4 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = **a1;
      v15 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[1]);
      v16 = *(*a1[1] + 8);
      v17 = *a1[2];
      v18 = [v9 mpsndarray];
      GPURegionRuntime::copyNDArrayToTarget(v14, v15, v16, (v17 + 32), v18, v10, a2, 0);
    }

    if (a4)
    {
      if (v9 && v9 != v10)
      {
        v20 = [v10 mpsndarray];
        v21 = objc_alloc(MEMORY[0x1E6974488]);
        v22 = [v20 buffer];
        v23 = [v20 offset];
        v24 = [v20 descriptor];
        v25 = [v21 initWithBuffer:v22 offset:v23 descriptor:v24];

        v26 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v25];
        v10 = v26;
      }
    }
  }

LABEL_16:

  return v10;
}

char ***llvm::SmallVector<GPU::GPURegionCallOpHandler::ScheduleStep,4u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[11 * v3 - 11];
    v5 = -88 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 11;
      v5 += 88;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void GPURegionRuntime::GPURegionRuntime(uint64_t a1, void *a2, void *a3, void *a4, void *a5, Operation *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, int a11, uint64_t a12)
{
  v16 = a2;
  a3;
  v17 = a4;
  a5;
  BaseRuntime::BaseRuntime(a1);
}

void sub_1E07E9800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::unique_ptr<GPU::MemrefBufferizer>::~unique_ptr[abi:ne200100](v11);
  std::unordered_set<mlir::Operation *>::~unordered_set[abi:ne200100](v10 + 608);
  llvm::DenseMap<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>::~DenseMap(a10);
}

void sub_1E07E9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v15 = *(v11 + 424);
  if (v15 != a11)
  {
    free(v15);
  }

  v16 = *(v11 + 408);
  *(v11 + 408) = 0;
  if (v16)
  {
    std::default_delete<GPU::RuntimeExecutionReport>::operator()[abi:ne200100](v14, v16);
  }

  std::unordered_map<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>::~unordered_map[abi:ne200100](v11 + 368);
  std::unordered_map<mlir::Operation *,std::unordered_map<void *,mlir::ElementsAttr>>::~unordered_map[abi:ne200100](v13);
  std::unordered_map<mlir::Operation *,std::unordered_map<void *,mlir::ElementsAttr>>::~unordered_map[abi:ne200100](v11 + 288);
  std::unordered_map<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>::~unordered_map[abi:ne200100](v12);
  BaseRuntime::~BaseRuntime(v11);
  JUMPOUT(0x1E07E98D8);
}

void BaseRuntime::BaseRuntime(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v62 = *MEMORY[0x1E69E9840];
  v12 = v11;
  v13 = v7;
  v14 = v5;
  *v10 = &unk_1F5B50340;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 1065353216;
  *(v10 + 48) = v12;
  objc_initWeak((v10 + 56), v9);
  *(v10 + 64) = v3;
  objc_initWeak((v10 + 72), v13);
  v15 = v14;
  *(v10 + 144) = 850045863;
  *(v10 + 80) = v15;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 1065353216;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 216) = 1;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = *(v10 + 128);
  *(v10 + 128) = v16;

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = *(v10 + 136);
  *(v10 + 136) = v18;

  v20[23] = 12;
  strcpy(v20, "mps.absolute");
  v21 = 1;
  v22[23] = 19;
  strcpy(v22, "mps.absolute_square");
  v23 = 2;
  v24[23] = 8;
  strcpy(v24, "mps.acos");
  v25 = 3;
  v26[23] = 9;
  strcpy(v26, "mps.acosh");
  v28[23] = 7;
  v27 = 4;
  strcpy(v28, "mps.add");
  v29 = 5;
  v30[23] = 12;
  strcpy(v30, "memref.alloc");
  v32[23] = 7;
  v31 = 6;
  strcpy(v32, "mps.and");
  v33 = 7;
  v34[23] = 8;
  strcpy(v34, "mps.asin");
  v35 = 8;
  strcpy(v37, "\t\t");
  strcpy(v36, "mps.asinh");
  *&v37[3] = 0;
  v38[23] = 8;
  strcpy(v38, "mps.atan");
  v39 = 10;
  v40[23] = 9;
  strcpy(v40, "mps.atan2");
  v41 = 11;
  v42[23] = 9;
  strcpy(v42, "mps.atanh");
  v43 = 12;
  v44[23] = 19;
  strcpy(v44, "mps.assign_variable");
  v45 = 13;
  v46[23] = 13;
  strcpy(v46, "mps.band_part");
  v47 = 14;
  v48[23] = 18;
  strcpy(v48, "mps.batch_to_space");
  v49 = 15;
  v50[23] = 12;
  strcpy(v50, "mps.bias_add");
  v51 = 16;
  v52[23] = 15;
  strcpy(v52, "mps.bitwise_and");
  v53 = 17;
  v54[23] = 22;
  strcpy(v54, "mps.bitwise_left_shift");
  v55 = 18;
  v56[23] = 15;
  strcpy(v56, "mps.bitwise_not");
  v57 = 19;
  v58[23] = 14;
  strcpy(v58, "mps.bitwise_or");
  v59 = 20;
  v60[23] = 20;
  strcpy(v60, "mps.bitwise_popcount");
  v61 = 21;
  operator new();
}

void sub_1E07EC9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, id *a15)
{
  v18 = (v16 + 3383);
  v19 = -7488;
  v20 = (v16 + 3383);
  while (1)
  {
    v21 = *v20;
    v20 -= 32;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 32;
    if (!v19)
    {

      std::mutex::~mutex(v15);
      std::unordered_map<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>::~unordered_map[abi:ne200100](a10);

      objc_destroyWeak(a15 + 9);
      objc_destroyWeak(a15 + 7);

      std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](a14);
      _Unwind_Resume(a1);
    }
  }
}

const char *___ZN16GPURegionRuntimeC2EP14MPSGraphDeviceP8MPSGraphP18MPSGraphExecutableP12NSDictionaryIP8NSStringS5_EN4mlir8ModuleOpEPN3GPU9ANEHelperEN4llvm8ArrayRefINSB_19FunctionOpInterfaceEEEjPS__block_invoke()
{
  result = getenv("MPSGRAPH_INTERMEDIATES_ARE_TEMPORARY");
  if (result)
  {
    result = atol(result);
    if (!result)
    {
      GPURegionRuntime::GPURegionRuntime(MPSGraphDevice *,MPSGraph *,MPSGraphExecutable *,NSDictionary<NSString *,MPSGraphExecutable *> *,mlir::ModuleOp,GPU::ANEHelper *,llvm::ArrayRef<mlir::FunctionOpInterface>,unsigned int,GPURegionRuntime*)::_intermediatesAreTemporaryEV = 0;
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__assign_unique<std::pair<std::string const,MPSMLIROps> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_19;
  }

  bzero(*a1, 8 * v6);
  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2 == a3)
  {
    v8 = v7;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v7)
    {
      do
      {
        std::string::operator=((v7 + 16), a2);
        *(v7 + 40) = *(a2 + 24);
        v8 = *v7;
        std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__node_insert_unique(a1, v7);
        a2 += 32;
        if (v8)
        {
          v9 = a2 == a3;
        }

        else
        {
          v9 = 1;
        }

        v7 = v8;
      }

      while (!v9);
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_19;
    }
  }

  do
  {
    v10 = *v8;
    if (*(v8 + 39) < 0)
    {
      operator delete(v8[2]);
    }

    operator delete(v8);
    v8 = v10;
  }

  while (v10);
LABEL_19:
  while (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MPSMLIROps> const&>(a1, a2, a2);
    a2 += 32;
  }
}

void sub_1E07ECC98(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v17, v7, v8);
  *(a2 + 8) = v9;
  result = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__node_insert_unique_prepare[abi:ne200100](a1, v9, v4);
  if (!result)
  {
    v11 = a1[1];
    v12 = *(a2 + 8);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *a2 = *v15;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_15;
      }

      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }

        v15 = (v14 + 8 * v16);
      }

      else
      {
        v15 = (v14 + 8 * (v16 & (*&v11 - 1)));
      }
    }

    *v15 = a2;
LABEL_15:
    ++a1[3];
    return a2;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_42;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    if (v4 <= a2)
    {
      v7 = a2 % v4;
    }

    else
    {
      v7 = a2;
    }

    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v7 = (v4 - 1) & a2;
    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = a3[1];
    }

    if (v10 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v6.u32[0] < 2uLL)
    {
      while (1)
      {
        v13 = v9[1];
        if (v13 == a2)
        {
          v14 = *(v9 + 39);
          v15 = v14;
          if (v14 < 0)
          {
            v14 = v9[3];
          }

          if (v14 == v11)
          {
            v16 = v15 >= 0 ? (v9 + 2) : v9[2];
            if (!memcmp(v16, v12, v11))
            {
              return v9;
            }
          }
        }

        else if ((v13 & (v4 - 1)) != v7)
        {
          goto LABEL_42;
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_42;
        }
      }
    }

    do
    {
      v17 = v9[1];
      if (v17 == a2)
      {
        v18 = *(v9 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v9[3];
        }

        if (v18 == v11)
        {
          v20 = v19 >= 0 ? (v9 + 2) : v9[2];
          if (!memcmp(v20, v12, v11))
          {
            return v9;
          }
        }
      }

      else
      {
        if (v17 >= v4)
        {
          v17 %= v4;
        }

        if (v17 != v7)
        {
          break;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

LABEL_42:
  v21 = (*(a1 + 24) + 1);
  v22 = *(a1 + 32);
  if (v4 && (v22 * v4) >= v21)
  {
    return 0;
  }

  v23 = 1;
  if (v4 >= 3)
  {
    v23 = (v4 & (v4 - 1)) != 0;
  }

  v24 = v23 | (2 * v4);
  v25 = vcvtps_u32_f32(v21 / v22);
  if (v24 <= v25)
  {
    prime = v25;
  }

  else
  {
    prime = v24;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v4 = *(a1 + 8);
  }

  if (prime <= v4)
  {
    if (prime >= v4)
    {
      return 0;
    }

    v27 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v4 < 3 || (v28 = vcnt_s8(v4), v28.i16[0] = vaddlv_u8(v28), v28.u32[0] > 1uLL))
    {
      v30 = prime;
      v31 = std::__next_prime(v27);
      if (v30 <= v31)
      {
        prime = v31;
      }

      else
      {
        prime = v30;
      }

      if (prime >= v4)
      {
        return 0;
      }
    }

    else
    {
      v29 = 1 << -__clz(v27 - 1);
      if (v27 >= 2)
      {
        v27 = v29;
      }

      if (prime <= v27)
      {
        prime = v27;
      }

      if (prime >= v4)
      {
        return 0;
      }
    }
  }

  std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::__do_rehash<true>(a1, prime);
  return 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MPSMLIROps> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_1E07ED510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E07ED524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;

          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

GPU::MemrefBufferizer **std::unique_ptr<GPU::MemrefBufferizer>::~unique_ptr[abi:ne200100](GPU::MemrefBufferizer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    GPU::MemrefBufferizer::~MemrefBufferizer(v2);
  }

  return a1;
}

void llvm::DenseMap<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 24 * v2;
    v5 = (v3 + 16);
    do
    {
      if ((*(v5 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
          GPURegionRuntime::MPSRuntimeEntryInfo::~MPSRuntimeEntryInfo(v6);
          MEMORY[0x1E12E5B90]();
        }
      }

      v5 += 3;
      v4 -= 24;
    }

    while (v4);
    v3 = *a1;
    v7 = 24 * *(a1 + 16);
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

void GPURegionRuntime::MPSRuntimeEntryInfo::~MPSRuntimeEntryInfo(GPURegionRuntime::MPSRuntimeEntryInfo *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    v3 = *(v2 + 192);
    if (v3 != (v2 + 208))
    {
      free(v3);
    }

    v4 = *(v2 + 128);
    if (v4 != (v2 + 144))
    {
      free(v4);
    }

    v5 = *(v2 + 64);
    if (v5 != (v2 + 80))
    {
      free(v5);
    }

    if (*v2 != v2 + 16)
    {
      free(*v2);
    }

    MEMORY[0x1E12E5B90](v2, 0x10A0C404A37C4BFLL);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    llvm::deallocate_buffer(*(v7 + 208), (16 * *(v7 + 224)));
  }
}

uint64_t std::unordered_map<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::unordered_map<mlir::Operation *,std::unordered_map<void *,mlir::ElementsAttr>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::unordered_map<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::GPURegionCallOpHandler::GPURegionCallOpHandler(GPU::BaseOpHandler *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  ParentOp = *(a2 + 16);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 40))
  {
    v6 = *(v4 + 176);
    if (*(*(v6 + 592) + 16) != a2)
    {
      v16 = a2;
      v7 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((v6 + 248), &v16);
      if (!v7)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v8 = *(v7[3] + 120);
      if (!*(a2 + 47) || (v21.var0 = "mpsx.parallelGPURegion", v21.var1 = 22, InherentAttr = mlir::Operation::getInherentAttr(a2, v21), (v10 & 1) == 0))
      {
        v22.var0 = "mpsx.parallelGPURegion";
        v22.var1 = 22;
        InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v22);
      }

      if (InherentAttr)
      {
        v11 = *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
        v12 = *(v4 + 224);
        if (v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = 0;
        v12 = *(v4 + 224);
        if (v12)
        {
LABEL_11:
          if (*a1[1] == 1 && v11)
          {
LABEL_18:
            v13 = *(v4 + 216) + 88 * *(v4 + 224);
            v14 = *(v13 - 80);
            if (v14 >= *(v13 - 76))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v13 - 88, (v13 - 72), v14 + 1, 16);
              LODWORD(v14) = *(v13 - 80);
            }

            v15 = (*(v13 - 88) + 16 * v14);
            *v15 = a2;
            v15[1] = v8;
            ++*(v13 - 80);
            *a1[1] = v11;
            return;
          }

          GPU::GPURegionCallOpHandler::ScheduleStep::finalize((*(v4 + 216) + 88 * v12 - 88));
          v16 = v18;
          v17 = 0x400000000;
          v19 = 1;
          llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::push_back(v4 + 216, &v16);
LABEL_16:
          if (v16 != v18)
          {
            free(v16);
          }

          goto LABEL_18;
        }
      }

      v16 = v18;
      v17 = 0x400000000;
      v19 = 1;
      llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::push_back(v4 + 216, &v16);
      goto LABEL_16;
    }
  }
}

void sub_1E07EDC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 == v9)
  {
    _Unwind_Resume(exception_object);
  }

  free(a9);
  _Unwind_Resume(exception_object);
}

void llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::push_back(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v5 = *result;
  if (v4 >= *(result + 12))
  {
    if (v5 <= a2 && v5 + 88 * v4 > a2)
    {
      v8 = a2 - v5;
      llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::grow(result, v4 + 1);
      v5 = *result;
      v2 = *result + v8;
    }

    else
    {
      llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::grow(result, v4 + 1);
      v5 = *result;
    }
  }

  v6 = v5 + 88 * *(result + 8);
  *v6 = v6 + 16;
  *(v6 + 8) = 0x400000000;
  if (*(v2 + 8))
  {
    llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v6, v2);
  }

  *(v6 + 80) = *(v2 + 80);
  ++*(result + 8);
}

void sub_1E07EDD38(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 88, &v14);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 0;
    v8 = 88 * v6;
    do
    {
      v9 = &v4[v7];
      *v9 = &v4[v7 + 16];
      *(v9 + 8) = 0x400000000;
      if (*&v5[v7 + 8])
      {
        v9 = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v9, &v5[v7]);
      }

      *(v9 + 80) = v5[v7 + 80];
      v7 += 88;
    }

    while (v8 != v7);
    v10 = *(a1 + 8);
    v5 = *a1;
    if (v10)
    {
      v11 = &v5[88 * v10 - 88];
      v12 = -88 * v10;
      do
      {
        if (v11 + 2 != *v11)
        {
          free(*v11);
        }

        v11 -= 11;
        v12 += 88;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v13 = v14;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v13;
}

void sub_1E07EDE84(void *a1)
{
  v4 = (v1 + v2);
  v5 = *(v1 + v2);
  if (v1 + v2 + 16 != v5)
  {
    free(v5);
  }

  __cxa_begin_catch(a1);
  if (v2)
  {
    do
    {
      v8 = *v1;
      v7 = v1 + 2;
      v6 = v8;
      if (v8 != v7)
      {
        free(v6);
      }

      v1 = (v7 + 9);
    }

    while (v4 != v1);
  }

  __cxa_rethrow();
}

uint64_t llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 16 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 16 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 16);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 16 * v8), *a2 + 16 * v8, 16 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t llvm::SmallVector<std::promise<void>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = -v4;
    v6 = v2 + v4 - 8;
    do
    {
      v6 = MEMORY[0x1E12E5A60](v6) - 8;
      v5 += 8;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

char ***llvm::SmallVector<std::shared_future<void>,4u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = -(v4 * 8);
    v6 = &v2[v4 - 1];
    do
    {
      std::shared_future<void>::~shared_future(v6);
      v6 = (v7 - 8);
      v5 += 8;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::promise<void>,false>::grow(uint64_t a1, unint64_t a2)
{
  v22 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v22);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v9 = 8 * v7;
    if (v8 >= 0xB)
    {
      v11 = v4 >= &v5[v9] || v5 >= &v4[v9];
      v10 = v4;
      if (v11)
      {
        v12 = v8 + 1;
        v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
        v10 = &v4[v13];
        v6 = &v5[v13];
        v14 = (v5 + 16);
        v15 = v4 + 16;
        v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          *(v14 - 1) = 0uLL;
          *v14 = 0uLL;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v10 = v4;
    }

    v18 = &v5[8 * v7];
    do
    {
      *v10 = *v6;
      v10 += 8;
      *v6 = 0;
      v6 += 8;
    }

    while (v6 != v18);
LABEL_14:
    v19 = -v9;
    v20 = &v5[v9 - 8];
    do
    {
      v20 = MEMORY[0x1E12E5A60](v20) - 8;
      v19 += 8;
    }

    while (v19);
    v6 = *a1;
  }

  v21 = v22;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v21;
}

void llvm::SmallVectorTemplateBase<std::shared_future<void>,false>::grow(uint64_t a1, unint64_t a2)
{
  v23 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v23);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v9 = 8 * v7;
    if (v8 >= 0xB)
    {
      v11 = v4 >= &v5[v9] || v5 >= &v4[v9];
      v10 = v4;
      if (v11)
      {
        v12 = v8 + 1;
        v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
        v10 = &v4[v13];
        v6 = &v5[v13];
        v14 = (v5 + 16);
        v15 = v4 + 16;
        v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          *(v14 - 1) = 0uLL;
          *v14 = 0uLL;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v10 = v4;
    }

    v18 = &v5[8 * v7];
    do
    {
      *v10 = *v6;
      v10 += 8;
      *v6 = 0;
      v6 += 8;
    }

    while (v6 != v18);
LABEL_14:
    v19 = -v9;
    v20 = &v5[v9 - 8];
    do
    {
      std::shared_future<void>::~shared_future(v20);
      v20 = (v21 - 8);
      v19 += 8;
    }

    while (v19);
    v6 = *a1;
  }

  v22 = v23;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v22;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<GPU::anonymous namespace::BlockingEncodeDescriptor>,false>::grow(uint64_t a1, unint64_t a2)
{
  v24 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v24);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      v22->__state_ = &unk_1F5B50780;
      std::shared_future<void>::~shared_future(v22 + 13);
      GPU::EncodeDescriptor::~EncodeDescriptor(v22);
      MEMORY[0x1E12E5B90]();
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_19:
  v23 = v24;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v23;
}

void *GPU::anonymous namespace::BlockingEncodeDescriptor::commitAndContinue(GPU::_anonymous_namespace_::BlockingEncodeDescriptor *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    std::__assoc_sub_state::wait(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    [v3 endEncoding];
    v4 = *(this + 9);
    *(this + 9) = 0;
  }

  result = [*(this + 1) commitAndContinue];
  *(this + 24) = 1;
  return result;
}

void GPU::anonymous namespace::BlockingEncodeDescriptor::checkCommitAndContinueUpdate(GPU::_anonymous_namespace_::BlockingEncodeDescriptor *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
    return;
  }

  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  m = (v1 + 24);
  v12.__m_ = (v1 + 24);
  v12.__owns_ = 1;
  std::mutex::lock((v1 + 24));
  v5 = *(v1 + 136);
  if ((v5 & 8) != 0)
  {
    v6 = 2;
    goto LABEL_27;
  }

  if ((v5 & 4) != 0)
  {
    v6 = 0;
    goto LABEL_27;
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v3.__d_.__rep_)
  {
    if (std::chrono::steady_clock::now().__d_.__rep_ >= v3.__d_.__rep_)
    {
      goto LABEL_9;
    }

    v9.__d_.__rep_ = v3.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v9.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v10.__d_.__rep_)
      {
        v11 = 0;
        goto LABEL_22;
      }

      if (v10.__d_.__rep_ < 1)
      {
        if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = v9.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_7;
        }
      }

      else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_22:
          v7.__d_.__rep_ = v11 + v9.__d_.__rep_;
          goto LABEL_7;
        }

LABEL_6:
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
        std::condition_variable::__do_timed_wait((v1 + 88), &v12, v7);
        std::chrono::steady_clock::now();
        goto LABEL_8;
      }

      v11 = 1000 * v10.__d_.__rep_;
      if (1000 * v10.__d_.__rep_ <= (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_22;
      }

      goto LABEL_6;
    }

LABEL_8:
    std::chrono::steady_clock::now();
LABEL_9:
    v8 = *(v1 + 136);
    if ((v8 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  v8 = *(v1 + 136);
LABEL_25:
  v6 = ((v8 >> 2) & 1) == 0;
  if (v12.__owns_)
  {
    m = v12.__m_;
LABEL_27:
    std::mutex::unlock(m);
  }

  if (!v6)
  {
    *(this + 24) = 1;
  }
}

void sub_1E07EF3E4()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E07EF3B4);
}

void sub_1E07EF3F4()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E07EF3B8);
}

void sub_1E07EF404()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E07EF3BCLL);
}

void GPU::anePreCompileBinary(void *a1@<X0>, mlir::Operation ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78[1] = *MEMORY[0x1E69E9840];
  v50 = a1;
  v48 = a3;
  if (a3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v46 = 0;
  }

  else
  {
    v46 = @"hwx";
  }

  v69 = **a2;
  Callee = mlir::placement::RegionCall::getCallee(&v69);
  v9 = MEMORY[0x1E696AEC0];
  if (Callee)
  {
    v10 = v7;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v55) = v7;
    if (v7)
    {
      memmove(__dst, Callee, v7);
    }

    *(__dst + v10) = 0;
    v11 = __dst;
    if (v55 < 0)
    {
      v11 = __dst[0];
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v11 = __dst;
    v55 = 0;
  }

  v51 = [v9 stringWithFormat:@"%s", v11];
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__dst[0]);
  }

  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bc.mlir", v51];
  v13 = v69;
  while (1)
  {
    v14 = *(v13 + 2);
    if (!v14)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v14);
    v13 = ParentOp;
    if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_24;
    }
  }

  v13 = 0;
LABEL_24:
  v16 = GPU::getANEArchFromModule(v13, v12);
  v17 = GPU::getANECCompilationOptions(v13, v79);
  v18 = GPU::getANECCompilationOptionsFromEV(v17);
  v19 = [(GPU *)v17 objectForKey:v16];
  if (!v19 || (v20 = [v18 count] == 0, v19, v20))
  {
    v27 = 0x1E696A000;
    if (![v18 count])
    {
      goto LABEL_31;
    }

    v77 = v16;
    v78[0] = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    [(GPU *)v17 addEntriesFromDictionary:v21];
  }

  else
  {
    v21 = [(GPU *)v17 objectForKeyedSubscript:v16];
    v22 = [(GPU *)v17 objectForKeyedSubscript:v16];
    objc_opt_class();
    objc_opt_isKindOfClass();

    v23 = [(GPU *)v17 objectForKeyedSubscript:v16];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v21];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = ___ZN3GPU19anePreCompileBinaryEP18MPSGraphExecutableRN4llvm15SmallVectorImplIN4mlir9placement10RegionCallEEE22BinaryResourceFileType_block_invoke;
    v67[3] = &unk_1E86D4BF0;
    v26 = v25;
    v68 = v26;
    [v18 enumerateKeysAndObjectsUsingBlock:v67];
    [(GPU *)v17 setObject:v26 forKeyedSubscript:v16];
  }

  v27 = 0x1E696A000uLL;
LABEL_31:
  if (GPU::emitFilesToCompile(v16, 1, *a2, *(a2 + 2), v50))
  {
    v28 = [*(v27 + 3776) stringWithFormat:@"%@/", v50[115]];
    v29 = *(v50 + 835);
    v47 = [*(v27 + 3776) stringWithFormat:@"%@.%@", v51, v46];
    v45 = [v28 stringByAppendingPathComponent:?];
    v42 = v29;
    v75[0] = @"InputNetworks";
    v72[0] = @"NetworkSourceFileName";
    v72[1] = @"NetworkSourcePath";
    v73[0] = v49;
    v73[1] = v28;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
    v74 = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
    v76[0] = v31;
    v76[1] = v47;
    v75[1] = @"OutputFileName";
    v75[2] = @"OutputFilePath";
    v76[2] = v28;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"compiler_options_%@.plist", v51];
    v32 = [v28 stringByAppendingPathComponent:?];
    if (([(GPU *)v17 writeToFile:v32 atomically:1]& 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v70 = @"OptionsFilePath";
    v71 = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v34 = [v33 mutableCopy];

    if (!v48)
    {
      [v34 setObject:v16 forKeyedSubscript:@"TargetArchitecture"];
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__1;
      v65 = __Block_byref_object_dispose__1;
      v66 = 0;
      v56 = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = ___ZN3GPU19anePreCompileBinaryEP18MPSGraphExecutableRN4llvm15SmallVectorImplIN4mlir9placement10RegionCallEEE22BinaryResourceFileType_block_invoke_151;
      v59 = &unk_1E86D4C18;
      v60 = &v61;
      v35 = ANECCompile();
      if (v35 || v42)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ANECCompile() failed: status=%d, statusdict=%@", v35, v62[5]];
        NSLog(&cfstr_Error_2.isa, v41);
        NSLog(&cfstr_AneCompilation_0.isa);
        *a4 = 0;
        *(a4 + 16) = 0;

        _Block_object_dispose(&v61, 8);
        goto LABEL_46;
      }

      Context = mlir::Attribute::getContext((v13 + 24));
      mlir::PassManager::PassManager(__dst, Context, "any", 3uLL, 1);
      mlir::mpsx::createMakeANERegionsExternalPass(&v52);
      v37 = v52;
      v52 = 0;
      v53 = v37;
      mlir::OpPassManager::addPass(__dst, &v53);
      v38 = v53;
      v53 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      v39 = v52;
      v52 = 0;
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }

      v40.var0.var0 = v13;
      if (!mlir::PassManager::run(__dst, v40))
      {
        *a4 = 0;
        *(a4 + 16) = 0;
        mlir::PassManager::~PassManager(__dst);
        _Block_object_dispose(&v61, 8);

        goto LABEL_46;
      }

      mlir::PassManager::~PassManager(__dst);
      _Block_object_dispose(&v61, 8);
    }

    *a4 = v45;
    *(a4 + 8) = v48;
    *(a4 + 16) = 1;
LABEL_46:

    goto LABEL_47;
  }

  *a4 = 0;
  *(a4 + 16) = 0;
LABEL_47:
}

void sub_1E07EFCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  mlir::PassManager::~PassManager(&__p);
  _Block_object_dispose(&a39, 8);

  _Unwind_Resume(a1);
}

id GPU::getANEArchFromModule(GPU *this, ModuleOp a2)
{
  if (!*(this + 47) || (v18.var0 = "mps.aneArch", v18.var1 = 11, InherentAttr = mlir::Operation::getInherentAttr(this, v18), (v4 & 1) == 0))
  {
    v19.var0 = "mps.aneArch";
    v19.var1 = 11;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v19);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v16 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v5 = MEMORY[0x1E696AEC0];
    AttrData = mlir::OpaqueAttr::getAttrData(&v16);
    if (AttrData)
    {
      goto LABEL_9;
    }

LABEL_19:
    __p = 0;
    v14 = 0;
    p_p = &__p;
    v15 = 0;
    goto LABEL_20;
  }

  v16 = InherentAttr;
  v5 = MEMORY[0x1E696AEC0];
  AttrData = mlir::OpaqueAttr::getAttrData(&v16);
  if (!AttrData)
  {
    goto LABEL_19;
  }

LABEL_9:
  v8 = v7;
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v7;
  if (v7)
  {
    memmove(&__p, AttrData, v7);
  }

  *(&__p + v8) = 0;
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

LABEL_20:
  v10 = [v5 stringWithUTF8String:{p_p, __p, v14, v15, v16}];
  if (SHIBYTE(v15) < 0)
  {
    v11 = v10;
    operator delete(__p);
    v10 = v11;
  }

  return v10;
}

void sub_1E07F0090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id GPU::getANECCompilationOptions(GPU *this, ModuleOp a2)
{
  v3 = objc_opt_new();
  if (!*(this + 47) || (v26.var0 = "mps.aneCompilerSpatialSplitting", v26.var1 = 31, InherentAttr = mlir::Operation::getInherentAttr(this, v26), (v5 & 1) == 0))
  {
    v27.var0 = "mps.aneCompilerSpatialSplitting";
    v27.var1 = 31;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v27);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v6 = InherentAttr;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v24 = v6;
  UInt = mlir::IntegerAttr::getUInt(&v24);
  if (UInt)
  {
    v8 = @"Auto";
    if (UInt == 3)
    {
      v8 = @"GenericDAG";
    }

    if (UInt == 2)
    {
      v9 = @"Memory";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"SpatialSplitMode"];
  }

  if (!*(this + 47) || (v28.var0 = "mps_spi.device_compilation_options", v28.var1 = 34, v10 = mlir::Operation::getInherentAttr(this, v28), (v11 & 1) == 0))
  {
    v29.var0 = "mps_spi.device_compilation_options";
    v29.var1 = 34;
    v10 = mlir::DictionaryAttr::get((this + 56), v29);
  }

  if (v10)
  {
    v12 = *(*v10 + 136);
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
    v14 = v12 == &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id ? v10 : 0;
    v24 = v14;
    if (v13)
    {
      v15 = MEMORY[0x1E696AEC0];
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v24);
      v16 = [v15 stringWithUTF8String:mlir::OpaqueAttr::getAttrData(&RHS)];
      v17 = MEMORY[0x1E696ACB0];
      v18 = [v16 dataUsingEncoding:4];
      v22 = 0;
      v19 = [v17 JSONObjectWithData:v18 options:0 error:&v22];
      v20 = v22;

      if (!v19 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      [v3 addEntriesFromDictionary:v19];
    }
  }

  return v3;
}

void sub_1E07F02C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id GPU::getANECCompilationOptionsFromEV(GPU *this)
{
  if (qword_1EE17DE18 != -1)
  {
    dispatch_once(&qword_1EE17DE18, &__block_literal_global_281);
  }

  v1 = objc_opt_new();
  v2 = v1;
  if (byte_1EE17DDF6 == 1)
  {
    [v1 setObject:MEMORY[0x1E695E118] forKey:@"OptimizeKernelCoalescing"];
  }

  if (byte_1EE17DDF7 == 1)
  {
    [v2 setObject:MEMORY[0x1E695E118] forKey:@"EnableAggressiveNETransposeFusion"];
  }

  if (byte_1EE17DDF8 == 1)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:qword_1EE17DE20];
    [v2 setObject:v3 forKey:@"BSSLimit"];
  }

  return v2;
}

BOOL GPU::emitFilesToCompile(void *a1, int a2, mlir::Operation **a3, uint64_t a4, void *a5)
{
  v61[2] = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a5;
  v60 = *a3;
  Context = mlir::Attribute::getContext((v60 + 24));
  v11 = [*(v9 + 115) UTF8String];
  v12 = strlen(v11);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  if (v12)
  {
    memmove(&__dst, v11, v12);
  }

  __dst.__r_.__value_.__s.__data_[v13] = 0;
  v14 = std::string::append(&__dst, "/");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (a2)
    {
LABEL_9:
      memset(&__dst, 0, sizeof(__dst));
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      Callee = mlir::placement::RegionCall::getCallee(&v60);
      if (Callee)
      {
        v18 = v16;
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v16 >= 0x17)
        {
          operator new();
        }

        *(&v50.__r_.__value_.__s + 23) = v16;
        if (v16)
        {
          memmove(&v50, Callee, v16);
        }

        v50.__r_.__value_.__s.__data_[v18] = 0;
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v58;
      }

      else
      {
        v23 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      v25 = std::string::insert(&v50, 0, v23, size);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v51, ".bc.mlir");
      v28 = v27->__r_.__value_.__r.__words[0];
      v61[0] = v27->__r_.__value_.__l.__size_;
      *(v61 + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
      v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst.__r_.__value_.__r.__words[0] = v28;
      __dst.__r_.__value_.__l.__size_ = v61[0];
      *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v61 + 7);
      *(&__dst.__r_.__value_.__s + 23) = v29;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_39:
          if (*(v9 + 854) != 1)
          {
            goto LABEL_52;
          }

          goto LABEL_43;
        }
      }

      else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      operator delete(v50.__r_.__value_.__l.__data_);
      if (*(v9 + 854) != 1)
      {
LABEL_52:
        mlir::mpsx::createWriteANERegionsPass(&__dst, &v51);
        v36 = v51.__r_.__value_.__r.__words[0];
        v51.__r_.__value_.__r.__words[0] = 0;
        v49 = v36;
        mlir::OpPassManager::addPass(v59, &v49);
        v37 = v49;
        v49 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }

        v38 = v51.__r_.__value_.__r.__words[0];
        v51.__r_.__value_.__r.__words[0] = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        v22 = __dst.__r_.__value_.__r.__words[0];
        goto LABEL_58;
      }

LABEL_43:
      v30 = [MEMORY[0x1E696AC08] defaultManager];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_dst];
      v33 = [v30 fileExistsAtPath:v32];

      if (v33)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &__dst;
        }

        else
        {
          v34 = __dst.__r_.__value_.__r.__words[0];
        }

        v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v34];
        [v30 removeItemAtPath:v35 error:0];
      }

      goto LABEL_52;
    }
  }

  else if (a2)
  {
    goto LABEL_9;
  }

  ANECFamily = getANECFamily(v8);
  v20 = *(v9 + 843);
  v21 = *(v9 + 854);
  v48 = 0;
  LOBYTE(v47) = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v46 = v58;
  }

  v45 = 0;
  LOBYTE(__p) = 0;
  mlir::anec::populateWritePlistPass(v59, &v47, &v46, &__p, v21, ANECFamily, v20);
  if (v45 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if (v48 < 0)
      {
        goto LABEL_25;
      }

      goto LABEL_59;
    }
  }

  else if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if (v48 < 0)
  {
LABEL_25:
    v22 = v47;
LABEL_58:
    operator delete(v22);
  }

LABEL_59:
  v39.var0.var0 = v60;
  while (1)
  {
    v40 = *(v39.var0.var0 + 2);
    if (!v40)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v40);
    v39.var0.var0 = ParentOp;
    if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_65;
    }
  }

  v39.var0.var0 = 0;
LABEL_65:
  v42 = mlir::PassManager::run(v59, v39);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  mlir::PassManager::~PassManager(v59);

  return v42;
}

void sub_1E07F0A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 185) < 0)
  {
    operator delete(*(v50 - 208));
  }

  mlir::PassManager::~PassManager((v50 - 176));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN3GPU19anePreCompileBinaryEP18MPSGraphExecutableRN4llvm15SmallVectorImplIN4mlir9placement10RegionCallEEE22BinaryResourceFileType_block_invoke_151(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = a3;
  }
}

uint64_t GPU::ANEHelper::ANEHelper(uint64_t a1, void *x1_0, GPU *a3)
{
  v5 = x1_0;
  objc_initWeak(a1, v5);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/", v5[115]];
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;

  v8 = GPU::getANEArchFromModule(a3, v39);
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  *(a1 + 87) = 0;
  if (qword_1EE17DE10 != -1)
  {
    dispatch_once(&qword_1EE17DE10, &__block_literal_global_6);
  }

  *(a1 + 82) = byte_1EE17DDF1;
  *(a1 + 83) = byte_1EE17DDF4;
  if (byte_1EE17DDF2 == 1)
  {
    *(a1 + 84) = byte_1EE17DDF2;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1);
    *(a1 + 84) = WeakRetained[847];
  }

  v11 = byte_1EE17DDF3;
  *(a1 + 85) = byte_1EE17DDF3;
  if (byte_1EE17DDF5 != 1)
  {
    v14 = objc_loadWeakRetained(a1);
    *(a1 + 86) = v14[848];

    if ((*(a1 + 85) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v12 = [MEMORY[0x1E698CD98] aneRealTimeTaskQoS];
    goto LABEL_11;
  }

  *(a1 + 86) = byte_1EE17DDF5;
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  v12 = [MEMORY[0x1E698CD98] aneUserInteractiveTaskQoS];
LABEL_11:
  *(a1 + 32) = v12;
  v15 = GPU::getANECCompilationOptions(*(a1 + 8), v13);
  v16 = *(a1 + 72);
  *(a1 + 72) = v15;

  *(a1 + 80) = 0;
  v17 = *(a1 + 8);
  if (!*(v17 + 47) || (v40.var0 = "mps.aneEnableFWToFWSignal", v40.var1 = 25, InherentAttr = mlir::Operation::getInherentAttr(*(a1 + 8), v40), (v19 & 1) == 0))
  {
    v41.var0 = "mps.aneEnableFWToFWSignal";
    v41.var1 = 25;
    InherentAttr = mlir::DictionaryAttr::get((v17 + 56), v41);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v20 = InherentAttr;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v38 = v20;
  *(a1 + 80) = mlir::IntegerAttr::getInt(&v38) != 0;
  *(a1 + 81) = 0;
  v21 = *(a1 + 8);
  if (!*(v21 + 47) || (v42.var0 = "mps.aneEnableLateLatch", v42.var1 = 22, v22 = mlir::Operation::getInherentAttr(*(a1 + 8), v42), (v23 & 1) == 0))
  {
    v43.var0 = "mps.aneEnableLateLatch";
    v43.var1 = 22;
    v22 = mlir::DictionaryAttr::get((v21 + 56), v43);
  }

  if (v22)
  {
    if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v38 = v24;
  *(a1 + 81) = mlir::IntegerAttr::getInt(&v38) != 0;
  v25 = v5[40];
  v26 = *(v5 + 82);
  if (!v26)
  {
    v27 = v5[40];
    v32 = &v25[v26];
    if (v25 == v32)
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  v27 = v5[40];
  if (*v25)
  {
    v28 = *v25 == -8;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    do
    {
      v30 = v27[1];
      ++v27;
      v29 = v30;
      if (v30)
      {
        v31 = v29 == -8;
      }

      else
      {
        v31 = 1;
      }
    }

    while (v31);
  }

  v32 = &v25[v26];
  if (v27 != v32)
  {
LABEL_40:
    v33 = *v27;
    do
    {
      v34.var0.var0 = *(*(a1 + 8) + 24);
      LazyCopyFile::load(*(v33 + 8), v34);
      do
      {
        v35 = v27[1];
        ++v27;
        v33 = v35;
        if (v35)
        {
          v36 = v33 == -8;
        }

        else
        {
          v36 = 1;
        }
      }

      while (v36);
    }

    while (v27 != v32);
  }

LABEL_47:

  return a1;
}

void sub_1E07F0F3C()
{
  v4 = *(v0 + 40);
  *(v0 + 40) = 0;
  if (v4)
  {
    std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](v2, v4);
  }

  objc_destroyWeak(v0);
  _Unwind_Resume(v3);
}

void ___ZN3GPU9ANEHelperC2EP18MPSGraphExecutableN4mlir8ModuleOpE_block_invoke()
{
  if (getenv("MPSGRAPH_DISABLE_ANE_INTERMEDIATE_BUFFER"))
  {
    NSLog(&cfstr_MpsgraphDisabl_4.isa);
    byte_1EE17DDF1 = 1;
  }

  if (getenv("MPSGRAPH_DISABLE_ANE_CACHING"))
  {
    NSLog(&cfstr_MpsgraphDisabl_6.isa);
    byte_1EE17DDF2 = 1;
  }

  if (getenv("MPSGRAPH_ENABLE_ANE_REAL_TIME_QOS"))
  {
    NSLog(&cfstr_MpsgraphEnable_4.isa);
    byte_1EE17DDF3 = 1;
  }

  if (getenv("MPS_GRAPH_FORCE_ANE_FALLBACK"))
  {
    NSLog(&cfstr_MpsGraphForceA_0.isa);
    byte_1EE17DDF4 = 1;
  }

  if (getenv("MPS_GRAPH_DISABLE_ANE_FALLBACK"))
  {
    NSLog(&cfstr_MpsGraphDisabl_0.isa);
    byte_1EE17DDF5 = 1;
  }

  std::mutex::lock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  _MergedGlobals_68 = 0;
  qword_1EE17DE00 = -1;
  qword_1EE17DE08 = 0;

  std::mutex::unlock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
}

void GPU::ANEHelper::get(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (*(a2 + 2))
  {
    ParentOp = **a2;
    while (1)
    {
      v7 = *(ParentOp + 16);
      if (!v7)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v7);
      if (!ParentOp)
      {
        break;
      }

      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        v8 = ParentOp;
        Callee = mlir::placement::RegionCall::getCallee(*a2);
        v11 = v10;
        Context = mlir::Attribute::getContext((v8 + 6));
        v15 = 261;
        v14[0] = Callee;
        v14[1] = v11;
        v13 = mlir::StringAttr::get(Context, v14);
        mlir::SymbolTable::lookupSymbolIn(v8, v13);
        operator new();
      }
    }
  }

  *a3 = 0;
}

void sub_1E07F1474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, GPU::ANEHelper *a10, uint64_t a11, uint64_t a12)
{
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](&a12, v14);
  }

  std::unique_ptr<GPU::ANEHelper>::~unique_ptr[abi:ne200100](&a10);

  _Unwind_Resume(a1);
}

GPU::ANEHelper **std::unique_ptr<GPU::ANEHelper>::~unique_ptr[abi:ne200100](GPU::ANEHelper **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    GPU::ANEHelper::~ANEHelper(v2);
  }

  return a1;
}

void GPU::ANEHelper::getFromPreCompiled(void *a1@<X0>, mlir::Operation ***a2@<X1>, uint64_t *a4@<X8>)
{
  v6 = a1;
  if (*(a2 + 2))
  {
    v7 = **a2;
    while (1)
    {
      v8 = *(v7 + 16);
      if (!v8)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v8);
      v7 = ParentOp;
      if (!ParentOp)
      {
        break;
      }

      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        operator new();
      }
    }
  }

  *a4 = 0;
}

void sub_1E07F1968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, GPU::ANEHelper *a23)
{
  std::unique_ptr<GPU::ANEHelper>::~unique_ptr[abi:ne200100](&a23);

  _Unwind_Resume(a1);
}

uint64_t GPU::ANEHelper::load(uint64_t a1, mlir::Operation **a2, uint64_t a3, uint64_t a4)
{
  v189[41] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v8 = WeakRetained[836];

  v136 = a1;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 81)];
  [*(a4 + 16) setObject:v9 forKeyedSubscript:*MEMORY[0x1E698CDF8]];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(v136 + 80)];
  [*(a4 + 16) setObject:v10 forKeyedSubscript:*MEMORY[0x1E698CDF0]];

  std::mutex::lock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  if (_MergedGlobals_68 == 1 && (*(v136 + 82) & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:qword_1EE17DE00];
    [*(a4 + 16) setObject:v11 forKeyedSubscript:*MEMORY[0x1E698CE38]];

    if ((*(v136 + 87) & 1) == 0)
    {
      ++qword_1EE17DE08;
      *(v136 + 87) = 1;
    }
  }

  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  v15 = *(v136 + 32);
  if (*(v136 + 85) == 1)
  {
    v158 = 0;
    v16 = &v158;
    v17 = [v12 loadRealTimeModel:v13 options:v14 qos:v15 error:&v158];
  }

  else
  {
    v157 = 0;
    v16 = &v157;
    v17 = [v12 loadModel:v13 options:v14 qos:v15 error:&v157];
  }

  v18 = v17;
  v19 = *v16;
  v133 = v18 ^ 1 | v8;
  v134 = v19;
  if ((v133 & 1) == 0)
  {
    if ((_MergedGlobals_68 & 1) == 0 && (*(v136 + 82) & 1) == 0 && [*a4 intermediateBufferHandle])
    {
      if (*(v136 + 87) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (qword_1EE17DE08 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      _MergedGlobals_68 = 1;
      qword_1EE17DE00 = [*a4 intermediateBufferHandle];
      if ((*(v136 + 87) & 1) == 0)
      {
        ++qword_1EE17DE08;
        *(v136 + 87) = 1;
      }
    }

    if ([*a4 intermediateBufferHandle])
    {
      [*a4 intermediateBufferHandle];
    }

    if ([*a4 intermediateBufferHandle])
    {
      v21 = qword_1EE17DE00;
      if (v21 != [*a4 intermediateBufferHandle])
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    if (!a3)
    {
LABEL_172:
      *(a4 + 29) = 1;
      goto LABEL_173;
    }

    v135 = &a2[a3];
    while (1)
    {
      v23 = *(v136 + 36);
      v164 = *a2;
      v22 = v164;
      v24 = *a4;
      v170 = v172;
      v171 = 0x400000000;
      v173 = v175;
      v174 = 0x400000000;
      v176 = 0;
      v177 = 0;
      __dst = v180;
      __len = xmmword_1E09700D0;
      v181 = 0;
      v182[0] = v183;
      v182[1] = 0x400000000;
      v184[0] = 0;
      v184[1] = 0;
      v183[4] = v184;
      v185[0] = v186;
      v185[1] = 0x400000000;
      v187[0] = 0;
      v187[1] = 0;
      v186[4] = v187;
      v168 = a4;
      v169 = 0;
      v139 = v24;
      v146 = [v24 modelAttributes];
      v137 = a2;
      v138 = v22;
      v25 = GPU::getProcedureIndex(v22, v24);
      v26 = v169;
      v169 = v25;

      v144 = [v146 objectForKeyedSubscript:@"NetworkStatusList"];
      v27 = [v146 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
      v145 = [v27 objectForKeyedSubscript:*MEMORY[0x1E698CED0]];

      if (v145)
      {
        [v145 count];
      }

      if (v144)
      {
        [v144 count];
      }

      v143 = [v145 objectAtIndexedSubscript:{objc_msgSend(v169, "unsignedIntValue")}];
      v28 = [v143 objectForKeyedSubscript:*MEMORY[0x1E698CE78]];
      v153 = v28;
      if (v28)
      {
        [v28 count];
      }

      v29 = [v146 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
      v150 = [v29 objectForKeyedSubscript:*MEMORY[0x1E698CE80]];

      if (v150)
      {
        [v150 count];
      }

      v30 = [v143 objectForKeyedSubscript:*MEMORY[0x1E698CEA0]];
      v148 = v30;
      if (v30)
      {
        [v30 count];
      }

      v31 = [v144 objectAtIndexedSubscript:{objc_msgSend(v169, "unsignedIntValue")}];
      v32 = v31;
      v142 = v31;
      if (v31)
      {
        [v31 count];
      }

      v33 = [v32 objectForKeyedSubscript:@"LiveInputList"];
      v141 = v33;
      if (v33)
      {
        [v33 count];
      }

      v155 = [v142 objectForKeyedSubscript:@"LiveStateList"];
      v154 = [v142 objectForKeyedSubscript:@"LiveInputParamList"];
      v34 = [v142 objectForKeyedSubscript:@"LiveOutputList"];
      v156 = v34;
      if (v34)
      {
        [v34 count];
      }

      v35 = [v146 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
      v147 = [v35 objectForKeyedSubscript:*MEMORY[0x1E698CE70]];

      v36 = [v146 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
      v151 = [v36 objectForKeyedSubscript:*MEMORY[0x1E698CE98]];

      if (v23)
      {
        Callee = mlir::placement::RegionCall::getCallee(&v164);
        v152 = v38;
        v39 = Callee;
      }

      else
      {
        v152 = 0;
        v39 = "";
      }

      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v39];
      v165 = 0;
      v166 = 0;
      v167 = 0x1000000000;
      if ((*(v164 + 46) & 0x80) == 0)
      {
        break;
      }

      v41 = *(v164 + 17);
      if (v41 <= HIDWORD(v171))
      {
        goto LABEL_49;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v172, v41, 8);
      v42 = MEMORY[0x1E695DF70];
      if ((*(v164 + 46) & 0x80) != 0)
      {
        v41 = *(v164 + 17);
      }

      else
      {
        v41 = 0;
      }

LABEL_50:
      obj = [v42 arrayWithCapacity:v41];
      v43 = 0;
      v44 = v164;
      if ((*(v164 + 46) & 0x80) != 0)
      {
LABEL_51:
        if (v43 == *(v44 + 17))
        {
          goto LABEL_76;
        }

        goto LABEL_52;
      }

      while (v43)
      {
LABEL_52:
        mlir::anec::getANECInputName(v39, v152, v43, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v49 = llvm::StringMapImpl::hash(p_p, size, v45, v46);
        v50 = llvm::StringMapImpl::LookupBucketFor(&v165, p_p, size, v49);
        v51 = v165;
        v52 = *(v165 + v50);
        if (v52 == -8)
        {
          LODWORD(v167) = v167 - 1;
LABEL_62:
          buffer = llvm::allocate_buffer(size + 17, 8uLL);
          v54 = buffer;
          v55 = (buffer + 2);
          if (size)
          {
            memcpy(buffer + 2, p_p, size);
          }

          v55[size] = 0;
          *v54 = size;
          v54[1] = 0;
          v51[v50] = v54;
          ++HIDWORD(v166);
          v56 = llvm::StringMapImpl::RehashTable(&v165, v50);
          for (i = (v165 + 8 * v56); ; ++i)
          {
            v52 = *i;
            if (*i && v52 != -8)
            {
              break;
            }
          }

          goto LABEL_70;
        }

        if (!v52)
        {
          goto LABEL_62;
        }

LABEL_70:
        *(v52 + 8) = v43;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v59 = [v153 objectAtIndexedSubscript:v43];
        [obj addObject:v59];

        v60 = [v153 objectAtIndexedSubscript:v43];
        v61 = [v150 objectAtIndexedSubscript:{objc_msgSend(v60, "intValue")}];

        v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@__arg", v40, v40];
        v63 = [v61 substringFromIndex:{objc_msgSend(v62, "length")}];
        v64 = [v63 intValue];
        v65 = v171;
        if (v171 >= HIDWORD(v171))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v172, v171 + 1, 8);
          v65 = v171;
        }

        *&v170[8 * v65] = v64;
        LODWORD(v171) = v171 + 1;

        ++v43;
        v44 = v164;
        if ((*(v164 + 46) & 0x80) != 0)
        {
          goto LABEL_51;
        }
      }

LABEL_76:
      v161 = 0;
      v162 = 0;
      v163 = 0x1000000000;
      if (*(v44 + 9))
      {
        v66 = 0;
        while (1)
        {
          mlir::anec::getANECOutputName(v39, v152, v66, &__p);
          v69 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v70 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          v71 = llvm::StringMapImpl::hash(v69, v70, v67, v68);
          v72 = llvm::StringMapImpl::LookupBucketFor(&v161, v69, v70, v71);
          v73 = v161;
          v74 = *(v161 + v72);
          if (v74 == -8)
          {
            break;
          }

          if (!v74)
          {
            goto LABEL_90;
          }

LABEL_87:
          *(v74 + 8) = v66;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (++v66 == *(v164 + 9))
          {
            goto LABEL_102;
          }
        }

        LODWORD(v163) = v163 - 1;
LABEL_90:
        v75 = llvm::allocate_buffer(v70 + 17, 8uLL);
        v76 = v75;
        v77 = (v75 + 2);
        if (v70)
        {
          memcpy(v75 + 2, v69, v70);
        }

        v77[v70] = 0;
        *v76 = v70;
        v76[1] = 0;
        v73[v72] = v76;
        ++HIDWORD(v162);
        v78 = llvm::StringMapImpl::RehashTable(&v161, v72);
        v79 = (v161 + 8 * v78);
        v74 = *v79;
        if (*v79)
        {
          v80 = v74 == -8;
        }

        else
        {
          v80 = 1;
        }

        if (v80)
        {
          do
          {
            v81 = v79[1];
            ++v79;
            v74 = v81;
            if (v81)
            {
              v82 = v74 == -8;
            }

            else
            {
              v82 = 1;
            }
          }

          while (v82);
        }

        goto LABEL_87;
      }

LABEL_102:
      for (j = 0; j < [v155 count]; ++j)
      {
        v84 = [v155 objectAtIndexedSubscript:j];
        v85 = [v84 objectForKeyedSubscript:@"Name"];
        v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@__arg", v40, v40];
        v87 = [v85 substringFromIndex:{objc_msgSend(v86, "length")}];
        __p.__r_.__value_.__r.__words[0] = [v87 intValue];
        llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::insertImpl<unsigned long long>(v160, v182, &__p);
      }

      for (k = 0; k < [v154 count]; ++k)
      {
        v89 = [v154 objectAtIndexedSubscript:k];
        v90 = [v89 objectForKeyedSubscript:@"Name"];
        v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@__arg", v40, v40];
        v92 = [v90 substringFromIndex:{objc_msgSend(v91, "length")}];
        __p.__r_.__value_.__r.__words[0] = [v92 intValue];
        llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::insertImpl<unsigned long long>(v159, v185, &__p);
      }

      objc_storeStrong(&v176, obj);
      if ((*(v164 + 46) & 0x80) != 0)
      {
        v94 = *(v164 + 17);
        __p.__r_.__value_.__r.__words[0] = v189;
        *&__p.__r_.__value_.__r.__words[1] = xmmword_1E09700D0;
        if (!v94)
        {
          v94 = 0;
          v97 = v171;
          if (v171)
          {
            goto LABEL_118;
          }

          goto LABEL_123;
        }

        if (v94 < 0x29)
        {
          v95 = 0;
          v96 = v94;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__p, v189, v94, 1);
          v95 = __p.__r_.__value_.__l.__size_;
          v96 = v94 - __p.__r_.__value_.__l.__size_;
          if (v94 == __p.__r_.__value_.__l.__size_)
          {
LABEL_117:
            __p.__r_.__value_.__l.__size_ = v94;
            v97 = v171;
            if (v171)
            {
              goto LABEL_118;
            }

            goto LABEL_123;
          }
        }

        bzero((__p.__r_.__value_.__r.__words[0] + v95), v96);
        goto LABEL_117;
      }

      v94 = 0;
      __p.__r_.__value_.__r.__words[0] = v189;
      *&__p.__r_.__value_.__r.__words[1] = xmmword_1E09700D0;
      v97 = v171;
      if (v171)
      {
LABEL_118:
        v98 = 0;
        v99 = v170;
        v100 = 8 * v97;
        do
        {
          if (v98 < [v147 count])
          {
            v101 = [v147 objectAtIndexedSubscript:v98];
            v102 = [v101 BOOLValue];
            *(__p.__r_.__value_.__r.__words[0] + *&v99[8 * v98]) = v102;
          }

          ++v98;
          v100 -= 8;
        }

        while (v100);
        v94 = __p.__r_.__value_.__l.__size_;
      }

LABEL_123:
      v103 = __len;
      if (__len >= v94)
      {
        if (v94)
        {
          memmove(__dst, __p.__r_.__value_.__l.__data_, v94);
        }
      }

      else
      {
        if (*(&__len + 1) >= v94)
        {
          if (__len)
          {
            memmove(__dst, __p.__r_.__value_.__l.__data_, __len);
          }
        }

        else
        {
          *&__len = 0;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v180, v94, 1);
          v103 = 0;
        }

        v93 = __p.__r_.__value_.__l.__size_ - v103;
        if (__p.__r_.__value_.__l.__size_ != v103)
        {
          memcpy(__dst + v103, (__p.__r_.__value_.__r.__words[0] + v103), v93);
        }
      }

      *&__len = v94;
      v104 = [v156 count];
      if (v104 > HIDWORD(v174))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v175, v104, 8);
      }

      v105 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v141, "count", v104)}];
      v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v156, "count")}];
      for (m = 0; m < [v156 count]; ++m)
      {
        v108 = [v156 objectAtIndexedSubscript:m];
        v109 = [v108 objectForKeyedSubscript:@"Name"];
        v110 = v109;
        v111 = [v109 UTF8String];
        v114 = v111;
        if (v111)
        {
          v115 = strlen(v111);
        }

        else
        {
          v115 = 0;
        }

        v116 = llvm::StringMapImpl::hash(v114, v115, v112, v113);
        Key = llvm::StringMapImpl::FindKey(&v161, v114, v115, v116);
        v118 = Key;
        if (Key == -1)
        {
          v118 = v162;
        }

        v119 = *(*(v161 + v118) + 8);
        v120 = v174;
        if (v174 >= HIDWORD(v174))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v175, v174 + 1, 8);
          v120 = v174;
        }

        *&v173[8 * v120] = v119;
        LODWORD(v174) = v174 + 1;
        v121 = [v148 objectAtIndexedSubscript:m];
        [v106 addObject:v121];

        if (m >= [v151 count])
        {
          [MEMORY[0x1E696AD98] numberWithBool:0];
        }

        else
        {
          [v151 objectAtIndexedSubscript:m];
        }
        v122 = ;
        [v105 addObject:v122];
      }

      v123 = v177;
      v177 = v106;
      v124 = v106;

      v125 = v181;
      v181 = v105;

      if (__p.__r_.__value_.__l.__data_ != v189)
      {
        free(__p.__r_.__value_.__l.__data_);
      }

      if (HIDWORD(v162) && v162)
      {
        v126 = 0;
        do
        {
          v127 = *(v161 + v126);
          if (v127 != -8 && v127 != 0)
          {
            llvm::deallocate_buffer(v127, (*v127 + 17));
          }

          v126 += 8;
        }

        while (8 * v162 != v126);
      }

      free(v161);

      if (HIDWORD(v166) && v166)
      {
        v129 = 0;
        do
        {
          v130 = *(v165 + v129);
          if (v130 != -8 && v130 != 0)
          {
            llvm::deallocate_buffer(v130, (*v130 + 17));
          }

          v129 += 8;
        }

        while (8 * v166 != v129);
      }

      free(v165);

      __p.__r_.__value_.__r.__words[0] = v138;
      GPU::ANEHelper::ProcedureInfo::ProcedureInfo(&__p.__r_.__value_.__r.__words[1], &v168);
      llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::try_emplace<GPU::ANEHelper::ProcedureInfo>(&v165, (a4 + 32), &__p, &__p.__r_.__value_.__r.__words[1]);
      GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(&__p.__r_.__value_.__r.__words[1]);
      GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(&v168);
      a2 = v137 + 1;
      if (v137 + 1 == v135)
      {
        goto LABEL_172;
      }
    }

    v41 = 0;
LABEL_49:
    v42 = MEMORY[0x1E695DF70];
    goto LABEL_50;
  }

  if (v19)
  {
    v20 = [v19 debugDescription];
    NSLog(&cfstr_Error_3.isa, v20);
  }

  NSLog(&cfstr_AneLoadFailed.isa);
LABEL_173:

  std::mutex::unlock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  return (v133 ^ 1) & 1;
}

void GPU::ANEHelper::~ANEHelper(GPU::ANEHelper *this)
{
  std::mutex::lock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  if (_MergedGlobals_68 == 1 && (*(this + 82) & 1) == 0 && *(this + 87) == 1)
  {
    if (!--qword_1EE17DE08)
    {
      _MergedGlobals_68 = 0;
      qword_1EE17DE00 = -1;
    }

    *(this + 87) = 0;
  }

  std::mutex::unlock(&GPU::ANEHelper::_intermediateBufferHandleMutex);
  if (*(this + 36) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      GPU::ANEHelper::unloadModel(v2);
    }
  }

  else if (*(this + 14))
  {
    v3 = *(this + 16);
    if (v3)
    {
      v4 = 16 * v3;
      v5 = *(this + 6);
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v5 += 2;
        v4 -= 16;
        if (!v4)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v5 = *(this + 6);
    }

    v12 = *(this + 6) + 16 * v3;
LABEL_26:
    if (v5 != v12)
    {
      v13 = v5[1];
      if (v13)
      {
        GPU::ANEHelper::unloadModel(v13);
      }

      while (1)
      {
        v5 += 2;
        if (v5 == v12)
        {
          break;
        }

        if ((*v5 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_26;
        }
      }
    }
  }

LABEL_15:

  v6 = *(this + 16);
  v7 = *(this + 6);
  if (v6)
  {
    v8 = 16 * v6;
    v9 = (v7 + 8);
    do
    {
      if ((*(v9 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](v9, v10);
        }
      }

      v9 += 2;
      v8 -= 16;
    }

    while (v8);
    v7 = *(this + 6);
    v11 = (16 * *(this + 16));
  }

  else
  {
    v11 = 0;
  }

  llvm::deallocate_buffer(v7, v11);
}

void GPU::ANEHelper::unloadModel(uint64_t *a1)
{
  if (*(a1 + 29) == 1)
  {
    v1 = *(a1 + 28);
    v3 = a1[1];
    v4 = *a1;
    v5 = a1[2];
    v6 = *(a1 + 6);
    if (v1 == 1)
    {
      v14 = 0;
      v7 = &v14;
      v8 = [v3 unloadRealTimeModel:v4 options:v5 qos:v6 error:&v14];
    }

    else
    {
      v13 = 0;
      v7 = &v13;
      v8 = [v3 unloadModel:v4 options:v5 qos:v6 error:&v13];
    }

    v9 = v8;
    v10 = *v7;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      if (v10)
      {
        v12 = [v10 debugDescription];
        NSLog(&cfstr_Error_3.isa, v12);
      }
    }
  }
}

mlir::Operation *GPU::ANEHelper::getBaseCompiledProduct(GPU::ANEHelper *this, mlir::Operation *a2)
{
  v17 = a2;
  if (*(this + 36) == 1)
  {
    return *(this + 5);
  }

  v5 = (this + 48);
  v4 = *(this + 6);
  v6 = *(this + 16);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = (v6 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v9 = (v4 + 16 * v8);
    v10 = *v9;
    if (*v9 == a2)
    {
      return v9[1];
    }

    v12 = 0;
    v13 = 1;
    while (v10 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == -8192;
      }

      if (v14)
      {
        v12 = v9;
      }

      v15 = v8 + v13++;
      v8 = v15 & v7;
      v9 = (v4 + 16 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        return v9[1];
      }
    }

    if (v12)
    {
      v9 = v12;
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = v9;
  v11 = *(this + 14);
  if (4 * v11 + 4 >= 3 * v6)
  {
    v16 = this;
    v6 *= 2;
    goto LABEL_26;
  }

  if (v6 + ~v11 - *(this + 15) <= v6 >> 3)
  {
    v16 = this;
LABEL_26:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::grow(this + 48, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v5, &v17, &v18);
    this = v16;
    v9 = v18;
    ++*(v16 + 14);
    if (*v9 == -4096)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(this + 14) = v11 + 1;
  if (*v9 != -4096)
  {
LABEL_10:
    --*(this + 15);
  }

LABEL_11:
  *v9 = v17;
  v9[1] = 0;
  return v9[1];
}

void GPU::ANEHelper::createCompiledProduct(uint64_t *a1, uint64_t a2, mlir::Operation **a3)
{
  v67[3] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v5 = @"bc.mlir";
  }

  else
  {
    v5 = @"plist";
  }

  v53 = v5;
  v61 = *a3;
  Callee = mlir::placement::RegionCall::getCallee(&v61);
  v8 = MEMORY[0x1E696AEC0];
  if (Callee)
  {
    v9 = v6;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v60) = v6;
    if (v6)
    {
      memmove(&__dst, Callee, v6);
    }

    *(&__dst + v9) = 0;
    p_dst = &__dst;
    if (v60 < 0)
    {
      p_dst = __dst;
    }
  }

  else
  {
    __dst = 0;
    v59 = 0;
    p_dst = &__dst;
    v60 = 0;
  }

  v56 = [v8 stringWithFormat:@"%s", p_dst];
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__dst);
  }

  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v56, v53];
  v54 = [*(a2 + 24) stringByAppendingPathComponent:?];
  if (*(a2 + 36) != 1)
  {
    v15 = v61;
    if (!*(v61 + 47) || (v70.var0 = "mps.regionSHA", v70.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(v61, v70), (v16 & 1) == 0))
    {
      v71.var0 = "mps.regionSHA";
      v71.var1 = 13;
      InherentAttr = mlir::DictionaryAttr::get((v15 + 56), v71);
    }

    if (InherentAttr)
    {
      goto LABEL_21;
    }

LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  v11 = *(a2 + 8);
  if (!*(v11 + 47) || (v68.var0 = "mps.aneRegionsSHA", v68.var1 = 17, InherentAttr = mlir::Operation::getInherentAttr(*(a2 + 8), v68), (v13 & 1) == 0))
  {
    v69.var0 = "mps.aneRegionsSHA";
    v69.var1 = 17;
    InherentAttr = mlir::DictionaryAttr::get((v11 + 56), v69);
  }

  if (!InherentAttr)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v14 = InherentAttr;
  }

  else
  {
    v14 = 0;
  }

LABEL_29:
  __dst = v14;
  AttrData = mlir::OpaqueAttr::getAttrData(&__dst);
  v19 = MEMORY[0x1E696AEC0];
  if (AttrData)
  {
    v20 = v17;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v60) = v17;
    if (v17)
    {
      memmove(&__dst, AttrData, v17);
    }

    *(&__dst + v20) = 0;
    v21 = &__dst;
    if (v60 < 0)
    {
      v21 = __dst;
    }
  }

  else
  {
    __dst = 0;
    v59 = 0;
    v21 = &__dst;
    v60 = 0;
  }

  v22 = [v19 stringWithFormat:@"%s", v21];
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__dst);
  }

  WeakRetained = objc_loadWeakRetained(a2);
  v24 = WeakRetained[835];

  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"compiler_options_%@.plist", v56];
  v51 = [*(a2 + 24) stringByAppendingPathComponent:?];
  if (*(a2 + 85) == 1)
  {
    [MEMORY[0x1E698CD48] sharedPrivateConnection];
  }

  else
  {
    [MEMORY[0x1E698CD48] sharedConnection];
  }
  v25 = ;
  v66[0] = @"NetworkPlistPath";
  v66[1] = @"NetworkPlistName";
  v67[0] = v54;
  v67[1] = v56;
  v66[2] = @"TargetArchitecture";
  v67[2] = *(a2 + 16);
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:3];
  v55 = [v26 mutableCopy];

  v27 = GPU::getANECCompilationOptionsFromEV([v55 addEntriesFromDictionary:*(a2 + 72)]);
  [v55 addEntriesFromDictionary:v27];

  v64 = *(a2 + 16);
  v65 = v55;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  if (([v48 writeToFile:v51 atomically:1] & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v28 = *MEMORY[0x1E698CED8];
  v62[0] = *MEMORY[0x1E698CDE0];
  v62[1] = v28;
  v29 = *MEMORY[0x1E698CE48];
  v63[0] = v50;
  v63[1] = v29;
  v62[2] = *MEMORY[0x1E698CEE0];
  v63[2] = v52;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
  v31 = [v30 mutableCopy];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:(*(a2 + 84) & 1) == 0];
  [v31 setObject:v32 forKeyedSubscript:*MEMORY[0x1E698CE60]];

  v33 = [MEMORY[0x1E696AD98] numberWithBool:(*(a2 + 84) & 1) == 0];
  [v31 setObject:v33 forKeyedSubscript:*MEMORY[0x1E698CEF0]];

  v34 = MEMORY[0x1E698CD78];
  v35 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a2 + 24)];
  v36 = [v34 modelAtURLWithCacheURLIdentifier:v35 key:v56 cacheURLIdentifier:v22];

  if ((([v25 compiledModelExistsFor:v36] ^ 1 | v24) & 1) == 0 || (v37 = *(a2 + 32), v57 = 0, v38 = objc_msgSend(v25, "compileModel:options:qos:error:", v36, v31, v37, &v57), v39 = v57, v40 = v39, v38) && !v24)
  {
    v45 = [v36 getCacheURLIdentifier];
    [v45 isEqualToString:v22];

    v46 = [v36 getCacheURLIdentifier];
    v47 = [v46 isEqualToString:v22];

    if ((v47 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v25 compiledModelExistsFor:v36];
    if (([v25 compiledModelExistsFor:v36] & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    operator new();
  }

  if (v39)
  {
    v41 = objc_loadWeakRetained(a2);
    v42 = ([v41 options] & 2) == 0;

    if (!v42)
    {
      v43 = v54;
      printf("ANE plist filePath:\n%s\n", [v54 UTF8String]);
    }

    v44 = [v40 debugDescription];
    NSLog(&cfstr_Error_2.isa, v44);
  }

  NSLog(&cfstr_AneCompilation_0.isa);
  *a1 = 0;
}

void GPU::ANEHelper::applyAndLoadModel(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v109 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 36) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v89 = a1;
  v83 = [**(a1 + 40) getCacheURLIdentifier];
  if (!v83 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v104 = v106;
  v105 = 0x400000000;
  v6 = [MEMORY[0x1E695E0F8] mutableCopy];
  if (*(a2 + 2))
  {
    v7 = *(a2 + 4);
    if (v7)
    {
      v8 = 16 * v7;
      v9 = *a2;
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 16;
        v8 -= 16;
        if (!v8)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v9 = *a2;
    }

    v10 = *a2 + 16 * v7;
    if (v9 != v10)
    {
      v11 = *(a3 + 4);
      if (v11)
      {
        v77 = v10;
LABEL_13:
        v12 = *a3;
        v13 = HIDWORD(*v9);
        v14 = 0x9DDFEA08EB382D69 * ((8 * *v9 - 0xAE502812AA7333) ^ v13);
        v15 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14)))) & (v11 - 1);
        v16 = *(*a3 + 32 * v15);
        if (*v9 != v16)
        {
          v57 = 1;
          do
          {
            if (v16 == -4096)
            {
              goto LABEL_71;
            }

            v58 = v15 + v57++;
            v15 = v58 & (v11 - 1);
            v16 = *(v12 + 32 * v15);
          }

          while (*v9 != v16);
        }

        if (v15 == v11)
        {
          goto LABEL_71;
        }

        v17 = v12 + 32 * v15;
        if (!*(v17 + 16))
        {
          goto LABEL_71;
        }

        v18 = *(v17 + 8);
        v19 = *(v17 + 24);
        if (v19)
        {
          v20 = 32 * v19;
          v21 = v18;
          while ((*v21 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v21 += 4;
            v20 -= 32;
            if (!v20)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v21 = v18;
        }

        v79 = &v18[4 * v19];
        while (v21 != v79)
        {
          v99 = *v21;
          v86 = [MEMORY[0x1E695E0F0] mutableCopy];
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          obj = *(v9 + 8);
          v22 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
          if (v22)
          {
            v23 = *v96;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v96 != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v95 + 1) + 8 * i);
                v26 = v25;
                v27 = [v25 UTF8String];
                v30 = v27;
                if (v27)
                {
                  v31 = strlen(v27);
                }

                else
                {
                  v31 = 0;
                }

                v32 = llvm::StringMapImpl::hash(v30, v31, v28, v29);
                if (llvm::StringMapImpl::FindKey(v21 + 1, v30, v31, v32) != -1)
                {
                  v33 = MEMORY[0x1E698CDC0];
                  v34 = MEMORY[0x1E695DFF8];
                  v35 = [*(v9 + 8) objectForKeyedSubscript:v25];
                  v36 = [v34 fileURLWithPath:v35];
                  v37 = [v33 weightWithSymbolAndURL:v25 weightURL:v36];

                  [v86 addObject:v37];
                }
              }

              v22 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
            }

            while (v22);
          }

          if (![v86 count])
          {
            goto LABEL_60;
          }

          v38 = MEMORY[0x1E696AEC0];
          Callee = mlir::placement::RegionCall::getCallee(&v99);
          if (Callee)
          {
            v41 = v39;
            if (v39 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v39 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v108) = v39;
            if (v39)
            {
              memmove(__dst, Callee, v39);
            }

            *(__dst + v41) = 0;
            if (v108 >= 0)
            {
              v42 = __dst;
            }

            else
            {
              v42 = __dst[0];
            }
          }

          else
          {
            __dst[1] = 0;
            __dst[0] = 0;
            v42 = __dst;
            v108 = 0;
          }

          v43 = [v38 stringWithUTF8String:v42];
          if (SHIBYTE(v108) < 0)
          {
            operator delete(__dst[0]);
          }

          v44 = [MEMORY[0x1E698CD90] procedureDataWithSymbol:v43 weightArray:v86];
          v45 = *(v89 + 40);
          v46 = *(v45 + 32);
          v47 = *(v45 + 48);
          if (v47)
          {
            v48 = 0x9DDFEA08EB382D69 * ((8 * v99 - 0xAE502812AA7333) ^ HIDWORD(v99));
            v49 = 0x9DDFEA08EB382D69 * (HIDWORD(v99) ^ (v48 >> 47) ^ v48);
            v50 = (-348639895 * ((v49 >> 47) ^ v49)) & (v47 - 1);
            v51 = (v46 + 352 * v50);
            v52 = *v51;
            if (*v51 == v99)
            {
              goto LABEL_56;
            }

            v53 = 1;
            while (v52 != -4096)
            {
              v54 = v50 + v53++;
              v50 = v54 & (v47 - 1);
              v51 = (v46 + 352 * v50);
              v52 = *v51;
              if (*v51 == v99)
              {
                goto LABEL_56;
              }
            }
          }

          v51 = (v46 + 352 * v47);
LABEL_56:
          if (v51 == (v46 + 352 * v47) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          [v6 setObject:v44 forKeyedSubscript:v51[2]];
          v55 = v99;
          v56 = v105;
          if (v105 >= HIDWORD(v105))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 8);
            v56 = v105;
          }

          *(v104 + v56) = v55;
          LODWORD(v105) = v105 + 1;

LABEL_60:
          do
          {
            v21 += 4;
            if (v21 == v79)
            {
              goto LABEL_71;
            }
          }

          while ((*v21 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

LABEL_71:
        while (1)
        {
          v9 += 16;
          if (v9 == v77)
          {
            break;
          }

          while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v9 += 16;
            if (v9 == v77)
            {
              goto LABEL_78;
            }
          }

          if (v9 == v77)
          {
            break;
          }

          v11 = *(a3 + 4);
          if (v11)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

LABEL_78:
  if ([v6 count])
  {
    obja = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adapting ANE model."];
    v59 = [v6 allKeys];
    v78 = [v59 sortedArrayUsingSelector:sel_compare_];

    v60 = [MEMORY[0x1E695E0F0] mutableCopy];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v61 = v78;
    v62 = [v61 countByEnumeratingWithState:&v91 objects:v102 count:16];
    if (v62)
    {
      v63 = *v92;
      do
      {
        for (j = 0; j != v62; ++j)
        {
          if (*v92 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v65 = [v6 objectForKey:*(*(&v91 + 1) + 8 * j)];
          [v60 addObject:v65];
        }

        v62 = [v61 countByEnumeratingWithState:&v91 objects:v102 count:16];
      }

      while (v62);
    }

    v80 = [MEMORY[0x1E698CD80] withProcedureData:obja procedureArray:v60];
    v66 = *MEMORY[0x1E698CED8];
    v100[0] = *MEMORY[0x1E698CDD0];
    v100[1] = v66;
    v67 = *MEMORY[0x1E698CEB0];
    v101[0] = v83;
    v101[1] = v67;
    v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:2];
    v68 = [MEMORY[0x1E696AFB0] UUID];
    v82 = [v68 UUIDString];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v83, v82];
    objc_claimAutoreleasedReturnValue();
    v69 = [MEMORY[0x1E698CD78] modelWithCacheURLIdentifier:?];
    v70 = *(*(v89 + 40) + 8);
    v71 = *(v89 + 32);
    v90 = 0;
    v72 = [v70 loadModelNewInstance:v69 options:v87 modelInstParams:v80 qos:v71 error:&v90];
    v73 = v90;
    if ((v72 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      if (v73)
      {
        v72 = [v73 localizedDescription];
        v74 = v72;
        v75 = [v72 UTF8String];
      }

      else
      {
        v75 = "unknown error";
      }

      v76 = v75;
      MTLReportFailure();
      if (v73)
      {
      }
    }

    [v87 mutableCopy];
    operator new();
  }

  *a4 = 0;

  if (v104 != v106)
  {
    free(v104);
  }
}

void sub_1E07F4B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  if (STACK[0x3A0] != a17)
  {
    free(STACK[0x3A0]);
  }

  _Unwind_Resume(a1);
}

id GPU::getProcedureIndex(mlir::Operation *a1, void *a2)
{
  v17 = a1;
  v2 = a2;
  v3 = [v2 modelAttributes];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698CE58]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698CEC0]];

  v6 = MEMORY[0x1E696AEC0];
  Callee = mlir::placement::RegionCall::getCallee(&v17);
  if (Callee)
  {
    v9 = v7;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = v7;
    if (v7)
    {
      memmove(&__p, Callee, v7);
    }

    *(&__p + v9) = 0;
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }
  }

  else
  {
    __p = 0;
    v15 = 0;
    p_p = &__p;
    v16 = 0;
  }

  v11 = [v6 stringWithUTF8String:{p_p, __p, v15, v16, v17}];
  v12 = [v5 objectForKeyedSubscript:v11];

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (!v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v12;
}

uint64_t GPU::ANEHelper::aneStreamingSessionSignal(GPU::ANEHelper *this, MPSGraphAneSessionDescriptor *a2, uint64_t **a3, NSMutableDictionary *a4)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (*(this + 36))
  {
    v9 = [MEMORY[0x1E695E0F8] mutableCopy];
    v10 = [(MPSGraphAneSessionDescriptor *)v7 aneSessionSignal];
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v11 = MEMORY[0x1E698CE18];
        goto LABEL_17;
      }

      if (v10 == 4)
      {
        v11 = MEMORY[0x1E698CE20];
        goto LABEL_17;
      }
    }

    else
    {
      if (v10 == 1)
      {
        v13 = *MEMORY[0x1E698CE28];
        v43 = *MEMORY[0x1E698CE00];
        v14 = [(MPSGraphAneSessionDescriptor *)v7 energyEffecientWorkload];
        v15 = MEMORY[0x1E695E110];
        if (v14)
        {
          v15 = MEMORY[0x1E695E118];
        }

        v44[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
        goto LABEL_18;
      }

      if (v10 == 2)
      {
        v11 = MEMORY[0x1E698CE30];
LABEL_17:
        v13 = *v11;
        v16 = 0;
LABEL_18:
        v17 = *(*(this + 5) + 8);
        v18 = **a3;
        v42 = 0;
        v12 = [v17 sessionHintWithModel:v18 hint:v13 options:v16 report:v9 error:&v42];
        v19 = v42;
        v20 = v19;
        if (v19)
        {
          v21 = v12;
        }

        else
        {
          v21 = 1;
        }

        if ((v21 & 1) == 0)
        {
          v22 = [v19 debugDescription];
          NSLog(&cfstr_AneSessionHint_0.isa, v22);
        }

        if (v8)
        {
          if ([(NSMutableDictionary *)v8 count])
          {
            if (v13 == *MEMORY[0x1E698CE28])
            {
              v23 = MEMORY[0x1E698CE10];
              v24 = [v9 objectForKey:*MEMORY[0x1E698CE10]];
              v25 = v24 == 0;

              if (!v25)
              {
                v40 = [v9 objectForKeyedSubscript:*v23];
                v26 = [(NSMutableDictionary *)v8 objectForKey:*v23];
                v27 = v26;
                v28 = &unk_1F5B759C8;
                if (v26)
                {
                  v28 = v26;
                }

                v29 = v28;

                v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v40, "unsignedLongLongValue") + objc_msgSend(v29, "unsignedLongLongValue")}];
                [(NSMutableDictionary *)v8 setObject:v30 forKeyedSubscript:*MEMORY[0x1E698CE10]];
              }

              v31 = MEMORY[0x1E698CE08];
              v32 = [v9 objectForKey:*MEMORY[0x1E698CE08]];
              v33 = v32 == 0;

              if (!v33)
              {
                v41 = [v9 objectForKeyedSubscript:*v31];
                v34 = [(NSMutableDictionary *)v8 objectForKey:*v31];
                v35 = v34;
                v36 = &unk_1F5B759C8;
                if (v34)
                {
                  v36 = v34;
                }

                v37 = v36;

                v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v41, "unsignedLongLongValue") + objc_msgSend(v37, "unsignedLongLongValue")}];
                [(NSMutableDictionary *)v8 setObject:v38 forKeyedSubscript:*MEMORY[0x1E698CE08]];
              }
            }
          }

          else
          {
            [(NSMutableDictionary *)v8 addEntriesFromDictionary:v9];
          }
        }

LABEL_36:
        goto LABEL_37;
      }
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v12 = 0;
    goto LABEL_36;
  }

  NSLog(&cfstr_AneSessionHint.isa);
  v12 = 0;
LABEL_37:

  return v12;
}

void ___ZN3GPUL31getANECCompilationOptionsFromEVEv_block_invoke()
{
  if (getenv("MPS_GRAPH_ENABLE_ANE_OPT_KERNEL_COALESCING"))
  {
    NSLog(&cfstr_MpsGraphEnable_4.isa);
    byte_1EE17DDF6 = 1;
  }

  if (getenv("MPS_GRAPH_ENABLE_ANE_AGGRESSIVE_NET_TRANSPOSE_FUSION"))
  {
    NSLog(&cfstr_MpsGraphEnable_6.isa);
    byte_1EE17DDF7 = 1;
  }

  v0 = getenv("MPS_GRAPH_SET_ANE_BSS_LIMIT");
  if (v0)
  {
    qword_1EE17DE20 = atoll(v0);
    NSLog(&cfstr_MpsGraphSetAne_0.isa, qword_1EE17DE20);
    byte_1EE17DDF8 = 1;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::try_emplace<GPU::ANEHelper::ProcedureInfo>(uint64_t result, uint64_t *a2, unint64_t *a3, __int128 *a4)
{
  v5 = result;
  v6 = *(a2 + 4);
  if (!v6)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v7 = *a2;
  v8 = HIDWORD(*a3);
  v9 = 0x9DDFEA08EB382D69 * ((8 * *a3 - 0xAE502812AA7333) ^ v8);
  v10 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) & (v6 - 1);
  v11 = (*a2 + 352 * v10);
  v12 = *v11;
  if (*a3 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & (v6 - 1);
      v11 = (v7 + 352 * v10);
      v12 = *v11;
      if (*a3 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v21 = v11;
    v14 = *(a2 + 2);
    if (4 * v14 + 4 >= 3 * v6)
    {
      v6 *= 2;
    }

    else if (v6 + ~v14 - *(a2 + 3) > v6 >> 3)
    {
      *(a2 + 2) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a3;
        result = GPU::ANEHelper::ProcedureInfo::ProcedureInfo((v11 + 1), a4);
        v7 = *a2;
        v6 = *(a2 + 4);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(a2 + 3);
      goto LABEL_9;
    }

    v19 = a4;
    v20 = a3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::grow(a2, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::LookupBucketFor<mlir::placement::RegionCall>(*a2, *(a2 + 4), *v20, &v21);
    a3 = v20;
    a4 = v19;
    v11 = v21;
    ++*(a2 + 2);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *v5 = v11;
  *(v5 + 8) = v7 + 352 * v6;
  *(v5 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::LookupBucketFor<mlir::placement::RegionCall>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 352 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 352 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>,mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(352 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 352 * v10 - 352;
    if (v11 >= 0x160)
    {
      v16 = v11 / 0x160 + 1;
      v12 = &result[44 * (v16 & 0x1FFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[44] = -4096;
        v17 += 88;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v27 = 0x9DDFEA08EB382D69 * ((8 * *v20 - 0xAE502812AA7333) ^ HIDWORD(*v20));
              v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
              v29 = *(a1 + 16) - 1;
              v30 = v29 & (-348639895 * ((v28 >> 47) ^ v28));
              v25 = (*a1 + 352 * v30);
              v31 = *v25;
              if (v26 != *v25)
              {
                v32 = 0;
                v33 = 1;
                while (v31 != -4096)
                {
                  if (v32)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = v31 == -8192;
                  }

                  if (v34)
                  {
                    v32 = v25;
                  }

                  v35 = v30 + v33++;
                  v30 = v35 & v29;
                  v25 = (*a1 + 352 * v30);
                  v31 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v32)
                {
                  v25 = v32;
                }
              }

LABEL_26:
              *v25 = v26;
              GPU::ANEHelper::ProcedureInfo::ProcedureInfo((v25 + 1), (v20 + 8));
              ++*(a1 + 8);
              GPU::ANEHelper::ProcedureInfo::~ProcedureInfo((v20 + 8));
            }

            v20 = (v20 + 352);
          }

          while (v20 != (v4 + 352 * v3));
        }

        llvm::deallocate_buffer(v4, (352 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[44 * v10];
    do
    {
      *v12 = -4096;
      v12 += 44;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 352 * v13 - 352;
    if (v14 < 0x160)
    {
      v15 = result;
LABEL_21:
      v24 = &result[44 * v13];
      do
      {
        *v15 = -4096;
        v15 += 44;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x160 + 1;
    v15 = &result[44 * (v21 & 0x1FFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[44] = -4096;
      v22 += 88;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t GPU::ANEHelper::ProcedureInfo::ProcedureInfo(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a2 + 1) = 0;
  *a1 = v4;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x400000000;
  if (*(a2 + 6))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 16, a2 + 2);
  }

  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 0x400000000;
  if (*(a2 + 18))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 64, a2 + 8);
  }

  v5 = a2[7];
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a1 + 128) = a1 + 152;
  *(a1 + 112) = v5;
  *(a1 + 136) = xmmword_1E09700D0;
  v7 = a2 + 17;
  v6 = *(a2 + 17);
  if (v6 && a1 != a2)
  {
    v8 = *(a2 + 16);
    if (v8 == (a2 + 152))
    {
      v9 = *(a2 + 17);
      if (v6 < 0x29 || (*(a1 + 136) = 0, llvm::SmallVectorBase<unsigned long long>::grow_pod(a1 + 128, (a1 + 152), v6, 1), (v9 = *v7) != 0))
      {
        memcpy(*(a1 + 128), *(a2 + 16), v9);
      }

      *(a1 + 136) = v6;
    }

    else
    {
      *(a1 + 128) = v8;
      *(a1 + 136) = v6;
      *(a1 + 144) = *(a2 + 18);
      *(a2 + 16) = a2 + 152;
      *(a2 + 18) = 0;
    }

    *v7 = 0;
  }

  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 200) = a1 + 216;
  *(a1 + 192) = v10;
  *(a1 + 208) = 0x400000000;
  if (*(a2 + 52))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 200, a2 + 25);
  }

  v11 = a1 + 256;
  v12 = *(a2 + 32);
  *(a1 + 248) = *(a2 + 31);
  *(a1 + 256) = v12;
  v13 = *(a2 + 33);
  *(a1 + 264) = v13;
  if (!v13)
  {
    *(a1 + 248) = v11;
    *(a1 + 272) = a1 + 288;
    *(a1 + 280) = 0x400000000;
    if (!*(a2 + 70))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  *(v12 + 16) = v11;
  *(a2 + 31) = a2 + 16;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  *(a1 + 272) = a1 + 288;
  *(a1 + 280) = 0x400000000;
  if (*(a2 + 70))
  {
LABEL_20:
    llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 272, a2 + 34);
  }

LABEL_21:
  v14 = a1 + 328;
  v15 = *(a2 + 41);
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 328) = v15;
  v16 = *(a2 + 42);
  *(a1 + 336) = v16;
  if (v16)
  {
    *(v15 + 16) = v14;
    *(a2 + 40) = a2 + 328;
    *(a2 + 41) = 0;
    *(a2 + 42) = 0;
  }

  else
  {
    *(a1 + 320) = v14;
  }

  return a1;
}

void sub_1E07F5CD0(_Unwind_Exception *a1)
{
  if (*v4 != v3)
  {
    free(*v4);
  }

  v8 = *(v1 + 64);
  if (v8 == v6)
  {
    v9 = *v2;
    if (*v2 == v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    free(v8);
    v9 = *v2;
    if (*v2 == v5)
    {
LABEL_5:

      _Unwind_Resume(a1);
    }
  }

  free(v9);

  _Unwind_Resume(a1);
}

uint64_t llvm::StringMap<unsigned long long,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 17));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::insertImpl<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (*(a2 + 64))
  {
    v6 = *(a2 + 56);
    if (!v6)
    {
LABEL_14:
      operator new();
    }

    v7 = *a3;
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = v6[4];
        if (v7 >= v9)
        {
          break;
        }

        v6 = *v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v15 = 0;
    v16 = 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *a3;
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = 8 * v11;
    v14 = 8 * v11;
    v8 = *a2;
    while (*v8 != v12)
    {
      ++v8;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_23;
    }

LABEL_18:
    if (v11 > 3)
    {
      do
      {
        if (!*std::__tree<unsigned long long>::__find_equal<unsigned long long>((a2 + 48), (a2 + 56), &v22, &v21, v10))
        {
          operator new();
        }

        ++v10;
        v13 -= 8;
      }

      while (v13);
      *(a2 + 8) = 0;
      v18 = *(a2 + 56);
      if (!v18)
      {
LABEL_34:
        operator new();
      }

      v19 = *a3;
      while (1)
      {
        while (1)
        {
          v8 = v18;
          v20 = v18[4];
          if (v19 >= v20)
          {
            break;
          }

          v18 = *v8;
          if (!*v8)
          {
            goto LABEL_34;
          }
        }

        if (v20 >= v19)
        {
          break;
        }

        v18 = v8[1];
        if (!v18)
        {
          goto LABEL_34;
        }
      }

      v15 = 0;
    }

    else
    {
LABEL_19:
      if (v11 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v11 + 1, 8);
        v11 = *(a2 + 8);
        v10 = *a2;
      }

      v10[v11] = v12;
      v17 = *(a2 + 8) + 1;
      *(a2 + 8) = v17;
      v8 = (*a2 + 8 * v17 - 8);
      v15 = 1;
    }

    v16 = 1;
  }

LABEL_23:
  *(a1 + 8) = v15;
  *a1 = v8;
  *(a1 + 16) = v16;
}

void llvm::DenseMap<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,GPU::ANEHelper::ProcedureInfo>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 352 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(v5);
      }

      v5 = (v5 + 352);
      v4 -= 352;
    }

    while (v4);
    v3 = *a1;
    v6 = 352 * *(a1 + 16);
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

void llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
          std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](v5, v6);
        }
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = *a1;
    v7 = (16 * *(a1 + 16));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = &v7[2 * v10];
      v12 = v7 + 2;
      v13 = v10;
      do
      {
        *(v12 - 2) = -4096;
        *v12 = -4096;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[2 * v6];
    do
    {
      *v11 = -4096;
      v11 += 2;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + 16 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v22 = 0;
          v23 = 1;
          while (v19 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v19 == -8192;
            }

            if (v24)
            {
              v22 = v18;
            }

            v25 = v17 + v23++;
            v17 = v25 & v16;
            v18 = (*a1 + 16 * (v25 & v16));
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v22)
          {
            v18 = v22;
          }
        }

LABEL_15:
        v20 = v4[1];
        v4[1] = 0;
        *v18 = v15;
        v18[1] = v20;
        ++*(a1 + 8);
        v21 = v4[1];
        v4[1] = 0;
        if (v21)
        {
          std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100]((v4 + 1), v21);
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

void _GLOBAL__sub_I_MPSGraphANEUtils_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(MEMORY[0x1E69E5328], &GPU::ANEHelper::_intermediateBufferHandleMutex, &dword_1DF9BF000);

  objc_autoreleasePoolPop(v0);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E07F7448(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1E07F767C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void GPU::SampleGridOpHandler::_createNDArrayMultiaryKernel(GPU::SampleGridOpHandler *this)
{
  v15 = *(this + 3);
  v2 = objc_alloc(MEMORY[0x1E6974730]);
  v3 = [*(*(this + 2) + 48) metalDevice];
  v4 = [v2 initWithDevice:v3];

  [v4 setNormalizeCoordinates:mlir::mps::GRUOp::getResetAfter(&v15)];
  [v4 setRelativeCoordinates:mlir::mps::GRUOp::getTraining(&v15)];
  [v4 setAlignCorners:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v15)];
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v15);
  if (PaddingStyle >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v6 = 0;
  }

  else
  {
    v6 = *(&xmmword_1E097BCB0 + PaddingStyle);
  }

  [v4 setPaddingMode:{v6, v15}];
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v15);
  if (WeightsLayout >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    WeightsLayout = 0;
  }

  [v4 setSamplingMode:WeightsLayout];
  v18 = 0;
  v19 = 0;
  v8 = *(*(v15 + 72) + 88);
  v17 = &v18;
  v16[0] = v8;
  DefiningOp = mlir::Value::getDefiningOp(v16);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v17, DefiningOp))
  {
    v11 = 0;
    goto LABEL_21;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v16, v18, v19);
  if (!mlir::mps::CPUNDArray::isFloatType(v16))
  {
    if (mlir::mps::CPUNDArray::isIntegerType(v16))
    {
      SplatIntegerValue = mlir::mps::CPUNDArray::getSplatIntegerValue(v16);
      if (SplatIntegerValue)
      {
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:SplatIntegerValue];
        goto LABEL_20;
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  if (mlir::mps::CPUNDArray::getSplatFloatValue(v16) == 0.0)
  {
    goto LABEL_19;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithFloat:?];
LABEL_20:
  v11 = v10;
  mlir::mps::CPUNDArray::~CPUNDArray(v16);

LABEL_21:
  [v11 doubleValue];
  [v4 setConstantValue:?];

  Layout = mlir::mps::SampleGridOp::getLayout(&v15);
  if (Layout >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    Layout = 1;
  }

  [v4 setDataFormat:Layout];
  if ((mlir::mps::SampleGridOp::getNearestRoundingMode(&v15) & 0x100000000) != 0)
  {
    NearestRoundingMode = mlir::mps::SampleGridOp::getNearestRoundingMode(&v15);
    if (NearestRoundingMode < 6)
    {
      goto LABEL_28;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  NearestRoundingMode = 0;
LABEL_28:
  [v4 setNearestMode:NearestRoundingMode];
  objc_storeStrong(this + 1, v4);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void sub_1E07F7DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void sub_1E07F7DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void sub_1E07F7DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

GPU::SampleGridDataGradientOpHandler *GPU::SampleGridDataGradientOpHandler::SampleGridDataGradientOpHandler(GPU::SampleGridDataGradientOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B50850;
  v14 = *(v5 + 3);
  v6 = objc_alloc(MEMORY[0x1E6974730]);
  v7 = [*(*(this + 2) + 48) metalDevice];
  v8 = [v6 initWithDevice:v7];

  [v8 setNormalizeCoordinates:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v14)];
  [v8 setRelativeCoordinates:mlir::mps::CostVolumeOp::getNormalizeCoordinates(&v14)];
  Layout = mlir::mps::SampleGridOp::getLayout(&v14);
  if (Layout >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v10 = 0;
  }

  else
  {
    v10 = *(&xmmword_1E097BCB0 + Layout);
  }

  [v8 setPaddingMode:v10];
  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v14);
  if (PaddingStyle >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    PaddingStyle = 0;
  }

  [v8 setSamplingMode:PaddingStyle];
  v12 = *(this + 1);
  *(this + 1) = v8;

  return this;
}

void sub_1E07F7FCC(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::SampleGridDataGradientOpHandler::encodeNDArrayOp(GPU::SampleGridDataGradientOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(this + 3) + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v23 = v5;
  v24 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v9 = [v24 mpsndarray];
  v10 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v11 = [v10 mpsndarray];

  v12 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v13 = [v12 mpsndarray];

  if (!v9 || (v11 ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v15 = *(this + 1);
  v27[0] = v9;
  v27[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v17 = [v15 resultStateForSourceArrays:v16 sourceStates:0 destinationArray:v9];

  if (*(v9 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v9 setReadCount:{objc_msgSend(v9, "readCount") + 1}];
  }

  v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v19 = *(a2 + 1);
  v26[0] = v9;
  v26[1] = v13;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v25[0] = v9;
  v21 = [MEMORY[0x1E695DFB0] null];
  v25[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v15 encodeGradientsToCommandEncoder:v18 commandBuffer:v19 sourceArrays:v20 sourceGradient:v11 gradientState:v17 destinationGradients:v22 kernelDAGObject:0];
}

char *GPU::SampleGridDataGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::SampleGridDataGradientOpHandler::~SampleGridDataGradientOpHandler(GPU::SampleGridDataGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::SampleGridOpHandler,mlir::mps::SampleGridOp,MPSNDArrayGridSample,2ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v17 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::SampleGridOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v17 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 56), 0);
    v14 = [v13 mpsndarray];

    if (!v14 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v14];

    v10 = 0;
  }

  v15 = *(a1 + 8);
  v16 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v15 encodeToMPSCommandEncoder:v16 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

void GPU::SampleGridOpHandler::~SampleGridOpHandler(GPU::SampleGridOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::SampleGridOpHandler,mlir::mps::SampleGridOp,MPSNDArrayGridSample,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::TopKOpHandler::TopKOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B50938;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  v6 = objc_alloc(MEMORY[0x1E69748B8]);
  v7 = [*(this[2] + 6) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = this[1];
  this[1] = v8;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v10 = this[15];
  this[15] = 0;

  v11 = this[16];
  this[16] = 0;

  v12 = this[17];
  this[17] = 0;

  return this;
}

void sub_1E07F9AB0(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::TopKOpHandler::encodeOp(GPU::TopKOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v132 = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v125 = *(this + 3);
  v118 = a2;
  v112 = *(this + 1);
  [v112 setK:{RuntimeUtils::getAxis(*(this + 2), a2, *(*(v125 + 72) + 88), 0)}];
  v4 = (*(**(this + 2) + 48))(*(this + 2), *(*(v125 + 72) + 24), 0);
  v5 = [v4 mpsndarray];

  if (!v5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v113 = v5;
  Axis = RuntimeUtils::getAxis(*(this + 2), v118, *(*(v125 + 72) + 56), [v5 numberOfDimensions]);
  v7 = [v5 numberOfDimensions];
  if (Axis >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 3);
  v10 = *(v9 + 36);
  v11 = v9 - 16;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v114 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (v10)
  {
    v13 = 0;
    v115 = 3;
    do
    {
      while (1)
      {
        v14 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v13);
        if (!v14)
        {
          break;
        }

        v15 = 0;
        do
        {
          v14 = *v14;
          --v15;
        }

        while (v14);
        if (!v15)
        {
          break;
        }

        v16 = (*(**(this + 2) + 80))(*(this + 2));
        v17 = [v16 mpsndarray];
        [v114 addObject:v17];

        if (++v13 == v10)
        {
          goto LABEL_19;
        }
      }

      v18 = [MEMORY[0x1E695DFB0] null];
      [v114 addObject:v18];
      v115 &= ~(1 << v13);

      ++v13;
    }

    while (v13 != v10);
  }

  else
  {
    v115 = 3;
  }

LABEL_19:
  v117 = v8 + ~Axis;
  if ([v112 K] <= 0x10 && !mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v125))
  {
    if (!v117)
    {
      v111 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
      v99 = v118[1];
      v129 = v5;
      v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
      [v112 encodeToMPSCommandEncoder:v111 commandBuffer:v99 sourceArrays:v98 destinationArrays:v114 activeDestinationMask:v115];
      goto LABEL_81;
    }

    v111 = [v5 descriptor];
    [v111 transposeDimension:0 withDimension:v117];
    v64 = v118[1];
    v65 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v110 = [v113 safeArrayViewWithCommandBuffer:v64 computeEncoder:v65 descriptor:v111 aliasing:1];

    v119 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(*(this + 3) + 36)];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v66 = v114;
    v67 = [v66 countByEnumeratingWithState:&v121 objects:v131 count:16];
    if (v67)
    {
      v68 = *v122;
      v69 = MEMORY[0x1E69744E8];
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v122 != v68)
          {
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v121 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = [MEMORY[0x1E695DFB0] null];
            [v119 addObject:v72];
          }

          else
          {
            v72 = [v71 descriptor];
            [v72 transposeDimension:0 withDimension:v117];
            if (*(v71 + *v69) == 1)
            {
              [v71 setReadCount:{objc_msgSend(v71, "readCount") + 1}];
            }

            v73 = v118[1];
            v74 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
            v75 = [v71 safeArrayViewWithCommandBuffer:v73 computeEncoder:v74 descriptor:v72 aliasing:1];

            [v119 addObject:v75];
          }
        }

        v67 = [v66 countByEnumeratingWithState:&v121 objects:v131 count:16];
      }

      while (v67);
    }

    v30 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v76 = v118[1];
    v130 = v110;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
    [v112 encodeToMPSCommandEncoder:v30 commandBuffer:v76 sourceArrays:v33 destinationArrays:v119 activeDestinationMask:v115];
    v113 = v110;
LABEL_80:

    v98 = v119;
LABEL_81:

    goto LABEL_82;
  }

  if ((v115 & 2) != 0)
  {
    v42 = *(this + 17);
    if (!v42)
    {
      v43 = objc_alloc(MEMORY[0x1E6974698]);
      v44 = [*(*(this + 2) + 48) metalDevice];
      v45 = [v43 initWithDevice:v44];
      v46 = *(this + 17);
      *(this + 17) = v45;

      v42 = *(this + 17);
    }

    v111 = v42;
    [v111 setDescending:!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v125)];
    [v111 setAxis:v117];
    v119 = [v113 descriptor];
    v47 = [v114 objectAtIndexedSubscript:1];
    v30 = [v47 descriptor];

    [v30 dataType];
    if (([v30 dataType] & 0xFFF8) != 0x20 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v119 setDataType:536870944];
    v33 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v118[1] descriptor:v119];
    if (v115)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v113 setReadCount:{objc_msgSend(v113, "readCount") + 1}];
      }
    }

    v48 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v49 = v118[1];
    v128 = v113;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
    [v111 encodeToMPSCommandEncoder:v48 commandBuffer:v49 sourceArrays:v50 destinationArray:v33];

    v109 = [v33 descriptor];
    [v109 sliceDimension:v117 withSubrange:{0, objc_msgSend(v112, "K")}];
    v51 = v118[1];
    v52 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v108 = [v33 safeArrayViewWithCommandBuffer:v51 computeEncoder:v52 descriptor:v109 aliasing:0];

    if (v115)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v108 setReadCount:{objc_msgSend(v108, "readCount") + 1}];
      }
    }

    v53 = *(this + 2);
    v54 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v55 = v118[1];
    v56 = *(this + 2);
    if (*(v125 + 36))
    {
      v57 = v125 - 16;
    }

    else
    {
      v57 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, 1);
    v59 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
    v60 = (*(*v56 + 48))(v56, v59, 0);
    if (*(v125 + 36))
    {
      v61 = v125 - 16;
    }

    else
    {
      v61 = 0;
    }

    v62 = mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 1);
    v63 = mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 0);
    GPURegionRuntime::copyNDArrayToTarget(v53, v54, v55, this + 15, v108, v60, v63, 0);

    if (v115)
    {
      v77 = v113;
      v106 = v108;
      v78 = [v114 objectAtIndexedSubscript:0];
      if ((!v113 || !v106) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v105 = [v77 descriptor];
      v116 = [v106 descriptor];
      v104 = [v78 descriptor];
      v101 = [v104 numberOfDimensions];
      if (v117)
      {
        [v105 transposeDimension:0 withDimension:?];
        [v116 transposeDimension:0 withDimension:v117];
        [v104 transposeDimension:0 withDimension:v117];
        v79 = v118[1];
        v80 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
        v81 = [v77 safeArrayViewWithCommandBuffer:v79 computeEncoder:v80 descriptor:v105 aliasing:1];

        v77 = v81;
        if (*(v78 + *MEMORY[0x1E69744E8]) == 1)
        {
          [v78 setReadCount:{objc_msgSend(v78, "readCount") + 1}];
        }

        v82 = v118[1];
        v83 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
        v84 = [v78 safeArrayViewWithCommandBuffer:v82 computeEncoder:v83 descriptor:v104 aliasing:1];

        v78 = v84;
      }

      v107 = v77;
      v100 = [v116 getShape];
      v102 = RuntimeUtils::expandShape(v100, [v100 count], 1);
      v103 = *(*(this + 2) + 416);
      v120 = 0;
      if (*(v106 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v106 setReadCount:{objc_msgSend(v106, "readCount") + 1}];
      }

      v85 = v106;
      v39 = v85;
      v86 = v85;
      if (v117)
      {
        v86 = [v85 arrayViewWithDescriptor:v116];
      }

      v87 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
      v88 = GPU::doReshapeWithFallBack(v86, v102, v103, v87, v118[1], &v120, 1);

      v89 = *(this + 18);
      if (!v89)
      {
        v90 = objc_alloc(MEMORY[0x1E6974718]);
        v91 = [*(*(this + 2) + 48) metalDevice];
        v92 = [v90 initWithDevice:v91];
        v93 = *(this + 18);
        *(this + 18) = v92;

        v89 = *(this + 18);
      }

      [v89 setBatchDimensions:v101 - 1];
      v94 = *(this + 18);
      v95 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
      v96 = v118[1];
      v127[0] = v107;
      v127[1] = v88;
      v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
      [v94 encodeToMPSCommandEncoder:v95 commandBuffer:v96 sourceArrays:v97 destinationArray:v78];

      if (v117 && *(v78 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v78 setReadCount:{objc_msgSend(v78, "readCount") - 1}];
      }
    }

    else
    {
      v39 = v108;
    }

    goto LABEL_79;
  }

  if (v115)
  {
    v19 = *(this + 16);
    if (!v19)
    {
      v20 = objc_alloc(MEMORY[0x1E6974880]);
      v21 = [*(*(this + 2) + 48) metalDevice];
      v22 = [v20 initWithDevice:v21];
      v23 = *(this + 16);
      *(this + 16) = v22;

      v19 = *(this + 16);
    }

    v111 = v19;
    [v111 setDescending:!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v125)];
    [v111 setAxis:v117];
    v24 = MEMORY[0x1E69744A8];
    v25 = v118[1];
    v26 = [v113 descriptor];
    v119 = [v24 temporaryNDArrayWithCommandBuffer:v25 descriptor:v26];

    v27 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v28 = v118[1];
    v126 = v113;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v126 count:1];
    [v111 encodeToMPSCommandEncoder:v27 commandBuffer:v28 sourceArrays:v29 destinationArray:v119];

    v30 = [v119 descriptor];
    [v30 sliceDimension:v117 withSubrange:{0, objc_msgSend(v112, "K")}];
    v31 = v118[1];
    v32 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v33 = [v119 safeArrayViewWithCommandBuffer:v31 computeEncoder:v32 descriptor:v30 aliasing:0];

    v34 = *(this + 2);
    v109 = GPU::EncodeDescriptor::getcomputeEncoder(v118);
    v35 = v118[1];
    v36 = *(this + 2);
    if (*(v125 + 36))
    {
      v37 = v125 - 16;
    }

    else
    {
      v37 = 0;
    }

    v38 = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0);
    v39 = (*(*v36 + 48))(v36, v38, 0);
    if (*(v125 + 36))
    {
      v40 = v125 - 16;
    }

    else
    {
      v40 = 0;
    }

    v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
    GPURegionRuntime::copyNDArrayToTarget(v34, v109, v35, this + 15, v33, v39, v41, 0);
LABEL_79:

    goto LABEL_80;
  }

LABEL_82:
}

char *GPU::TopKOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

GPU::TopKGradientOpHandler *GPU::TopKGradientOpHandler::TopKGradientOpHandler(GPU::TopKGradientOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B50988;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  v6 = objc_alloc(MEMORY[0x1E69748B8]);
  v7 = [*(*(this + 2) + 48) metalDevice];
  v8 = [v6 initWithDevice:v7 K:0 computeGradient:1];
  v9 = *(this + 1);
  *(this + 1) = v8;

  v10 = *(this + 15);
  *(this + 15) = 0;

  v11 = *(this + 16);
  *(this + 16) = 0;

  v12 = *(this + 17);
  *(this + 17) = 0;

  return this;
}

void sub_1E07FAE74(_Unwind_Exception *a1)
{
  v3 = v2;

  v5 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

GPU::TopKGradientOpHandler *GPU::TopKGradientOpHandler::postInitializeHook(GPU::TopKGradientOpHandler *this)
{
  if (*(this + 40) == 1 && !*(this + 4))
  {
    return GPU::TopKGradientOpHandler::_getKernelDAGObject(this);
  }

  return this;
}

id GPU::TopKGradientOpHandler::_getKernelDAGObject(GPU::TopKGradientOpHandler *this)
{
  if (!*(this + 18))
  {
    v4 = *(this + 3);
    v5 = *(v4 + 36);
    v6 = v4 - 16;
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
    StaticType = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
    getMPSDataType(StaticType);
    getBaseTensorShape((NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8), &__p);
    operator new();
  }

  if ((*(this + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(*(this + 18) + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v2 = *(*(this + 18) + 120);

  return v2;
}

void sub_1E07FB138(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1E12E5B90](v11, 0x10A1C40A031F3DELL, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::TopKGradientOpHandler::encodeOp(GPU::TopKGradientOpHandler *this, void **a2)
{
  v102[2] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v98 = *(this + 3);
  v4 = *(v98 + 72);
  v5 = *(v4 + 56);
  v6 = *(v4 + 24);
  if (*(v98 + 36))
  {
    v7 = v98 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v86 = [v9 mpsndarray];

  v10 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v96 = [v10 mpsndarray];

  v11 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v12 = [v11 mpsndarray];

  if (v86)
  {
    v13 = v96 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || v12 == 0;
  if (v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v91 = *(this + 1);
  [v91 setK:{RuntimeUtils::getAxis(*(this + 2), a2, *(*(v98 + 72) + 120), 0)}];
  Axis = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v98 + 72) + 88), [v96 numberOfDimensions]);
  v16 = [v96 numberOfDimensions];
  if (Axis >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 + ~Axis;
  if ([v91 K] > 0x10 || mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98))
  {
    v19 = *(this + 16);
    if (!v19)
    {
      v20 = objc_alloc(MEMORY[0x1E6974698]);
      v21 = [*(*(this + 2) + 48) metalDevice];
      v22 = [v20 initWithDevice:v21];
      v23 = *(this + 16);
      *(this + 16) = v22;

      v19 = *(this + 16);
    }

    v90 = v19;
    [v90 setDescending:!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98)];
    [v90 setAxis:v18];
    v82 = [v96 descriptor];
    [v82 setDataType:536870944];
    v92 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:a2[1] descriptor:v82];
    v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v25 = a2[1];
    v100 = v96;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [v90 encodeToMPSCommandEncoder:v24 commandBuffer:v25 sourceArrays:v26 destinationArray:v92];

    v89 = [v92 descriptor];
    [v89 sliceDimension:v18 withSubrange:{0, objc_msgSend(v91, "K")}];
    v27 = a2[1];
    v28 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v79 = [v92 safeArrayViewWithCommandBuffer:v27 computeEncoder:v28 descriptor:v89 aliasing:0];

    v29 = [v12 descriptor];
    for (i = 0; i < [v12 numberOfDimensions]; ++i)
    {
      [v29 setLengthOfDimension:1 atIndex:i];
    }

    if (!*(this + 15))
    {
      v31 = objc_alloc(MEMORY[0x1E6974740]);
      v32 = [*(*(this + 2) + 48) metalDevice];
      v33 = [v31 initWithDevice:v32];
      v34 = *(this + 15);
      *(this + 15) = v33;
    }

    v35 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:a2[1] descriptor:v29];
    v36 = *(this + 15);
    v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v38 = a2[1];
    v39 = GPU::TopKGradientOpHandler::_getKernelDAGObject(this);
    [v36 encodeToMPSCommandEncoder:v37 commandBuffer:v38 sourceArrays:MEMORY[0x1E695E0F0] resultState:0 destinationArray:v35 kernelDAGObject:v39];

    if (!*(this + 17))
    {
      v40 = objc_alloc(MEMORY[0x1E6974870]);
      v41 = [*(*(this + 2) + 48) metalDevice];
      v42 = [v40 initWithDevice:v41 operation:6];
      v43 = *(this + 17);
      *(this + 17) = v42;
    }

    v44 = v86;
    v93 = v12;
    v81 = v79;
    v45 = v35;
    v88 = v44;
    v85 = [v35 descriptor];
    v83 = [v44 descriptor];
    v87 = [v81 descriptor];
    v84 = [v93 descriptor];
    if (v18)
    {
      [v85 transposeDimension:0 withDimension:v18];
      [v83 transposeDimension:0 withDimension:v18];
      [v87 transposeDimension:0 withDimension:v18];
      [v84 transposeDimension:0 withDimension:v18];
      v46 = a2[1];
      v47 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v48 = [v35 safeArrayViewWithCommandBuffer:v46 computeEncoder:v47 descriptor:v85 aliasing:1];

      v45 = v48;
      v49 = a2[1];
      v50 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v94 = [v88 safeArrayViewWithCommandBuffer:v49 computeEncoder:v50 descriptor:v83 aliasing:1];

      if (*(v93 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v93 setReadCount:{objc_msgSend(v93, "readCount") + 1}];
      }

      v51 = a2[1];
      v52 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v53 = [v93 safeArrayViewWithCommandBuffer:v51 computeEncoder:v52 descriptor:v84 aliasing:1];

      v93 = v53;
    }

    else
    {
      v94 = v44;
    }

    v95 = v45;
    [v87 getShape];
    v78 = v54 = v18;
    v80 = RuntimeUtils::expandShape(v78, [v78 count], 1);
    v55 = v81;
    v56 = v55;
    v57 = v55;
    if (v54)
    {
      v57 = [v55 arrayViewWithDescriptor:v87];
    }

    v58 = *(*(this + 2) + 416);
    v97 = 0;
    v59 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v60 = GPU::doReshapeWithFallBack(v57, v80, v58, v59, a2[1], &v97, 1);

    [*(this + 17) setBatchDimensions:{objc_msgSend(v88, "numberOfDimensions") - 1}];
    v61 = *(this + 17);
    v62 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v63 = a2[1];
    v99[0] = v95;
    v99[1] = v94;
    v99[2] = v60;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:3];
    [v61 encodeToMPSCommandEncoder:v62 commandBuffer:v63 sourceArrays:v64 destinationArray:v93];
  }

  else
  {
    v90 = v12;
    if (v18)
    {
      v65 = [v96 descriptor];
      [v65 transposeDimension:0 withDimension:v18];
      v66 = [v86 descriptor];
      [v66 transposeDimension:0 withDimension:v18];
      v67 = a2[1];
      v68 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v69 = [v96 safeArrayViewWithCommandBuffer:v67 computeEncoder:v68 descriptor:v65 aliasing:1];

      v70 = a2[1];
      v71 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v72 = [v86 safeArrayViewWithCommandBuffer:v70 computeEncoder:v71 descriptor:v66 aliasing:1];

      v73 = [v90 descriptor];
      [v73 transposeDimension:0 withDimension:v18];
      if (*(v90 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v90 setReadCount:{objc_msgSend(v90, "readCount") + 1}];
      }

      v74 = a2[1];
      v75 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v76 = [v90 safeArrayViewWithCommandBuffer:v74 computeEncoder:v75 descriptor:v73 aliasing:1];

      v90 = v76;
    }

    else
    {
      v69 = v96;
      v72 = v86;
    }

    v82 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v77 = a2[1];
    v102[0] = v69;
    v102[1] = v72;
    v88 = v72;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    v101 = v90;
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    [v91 encodeToMPSCommandEncoder:v82 commandBuffer:v77 sourceArrays:v92 destinationArrays:?];
    v96 = v69;
  }
}

char *GPU::TopKGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 3)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 3u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::TopKOpHandler::~TopKOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TopKGradientOpHandler::~TopKGradientOpHandler(GPU::TopKGradientOpHandler *this)
{
  *this = &unk_1F5B50988;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B50988;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void mlir::AsmResourceBlob::~AsmResourceBlob(mlir::AsmResourceBlob *this)
{
  v2 = *(this + 6);
  if (v2 >= 8)
  {
    v3 = this + 24;
    v4 = *this;
    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = this + 24;
    if ((v2 & 2) == 0)
    {
      v7 = *v3;
    }

    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v7, v4, v5, v6);
    v8 = *(this + 6);
    if (v8 >= 8)
    {
      if ((v8 & 4) != 0)
      {
        if ((v8 & 2) == 0)
        {
          v3 = *v3;
        }

        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(*(this + 3), *(this + 4));
      }
    }
  }
}

{
  v2 = *(this + 6);
  if (v2 >= 8)
  {
    v3 = this + 24;
    v4 = *this;
    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = this + 24;
    if ((v2 & 2) == 0)
    {
      v7 = *v3;
    }

    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v7, v4, v5, v6);
    v8 = *(this + 6);
    if (v8 >= 8)
    {
      if ((v8 & 4) != 0)
      {
        if ((v8 & 2) == 0)
        {
          v3 = *v3;
        }

        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(*(this + 3), *(this + 4));
      }
    }
  }
}

llvm **llvm::unique_function<void ()(void *,unsigned long,unsigned long)>::~unique_function(llvm *a1)
{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(*v1, *(v1 + 1));
    }
  }

  return v1;
}

void getMLIRTypes(uint64_t **__return_ptr a1@<X8>, const MIL::IRValueType *a2@<X0>, mlir::MLIRContext *a3@<X1>)
{
  v6 = (*(*a2 + 24))(a2);
  if (v6)
  {
    getMLIRType(v6, a3);
    goto LABEL_3;
  }

  v7 = (*(*a2 + 40))(a2);
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v8 = (*(*v7 + 64))(v7);
    v9 = *v8;
    v10 = *(v8 + 8);
    while (v9 != v10)
    {
      getMLIRTypes(&__p, *v9, a3);
      std::vector<mlir::Type>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlir::Type*>,std::__wrap_iter<mlir::Type*>>(a1, a1[1], __p, v31, (v31 - __p) >> 3);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      ++v9;
    }

    return;
  }

  v11 = MIL::IRValueType::TryCastAsMemoryLayoutType(a2);
  if (v11)
  {
    v12 = v11;
    v13 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v11);
    if (v13)
    {
      v14 = v13;
      DataType = MIL::IRTensorBufferValueType::GetDataType(v13);
      v16 = MILElemTypeToMLIRElemType(DataType, a3);
      if (MIL::IRTensorBufferValueType::IsFixedRank(v14))
      {
        if (MIL::IRTensorBufferValueType::IsScalar(v14))
        {
          operator new();
        }

        Shape = MIL::IRTensorBufferValueType::GetShape(v14);
        getMLIRShape(Shape, &__p);
        if (v31 != __p)
        {
          if (v31 - __p >= 0)
          {
            operator new();
          }

          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        InterleaveFactors = MIL::IRTensorBufferValueType::GetInterleaveFactors(v14);
        v28 = InterleaveFactors[1];
        if (v28 != *InterleaveFactors)
        {
          if (((v28 - *InterleaveFactors) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }

        mlir::RankedTensorType::get(__p, (v31 - __p) >> 3, v16, 0);
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }
      }

      else
      {
        mlir::UnrankedTensorType::get(v16);
      }

      operator new();
    }

    if (MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(v12))
    {
      v18 = mlir::Float32Type::get(a3, v17);
      goto LABEL_30;
    }
  }

  v19 = MIL::IRValueType::TryCastAsStateType(a2);
  if (v19)
  {
    WrappedType = MIL::IRStateValueType::GetWrappedType(v19);
    v21 = (*(*WrappedType + 24))(WrappedType);
    if (!v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = (*(*v21 + 88))(v21);
    v23 = MILElemTypeToMLIRElemType(v22, a3);
    if ((*(*v21 + 104))(v21))
    {
      if (MIL::IRTensorValueType::IsScalar(v21))
      {
        v24 = 0;
        v25 = 0;
        __p = 0;
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v29 = (*(*v21 + 96))(v21);
        getMLIRShape(v29, &__p);
        v25 = __p;
        v24 = v31;
      }

      mlir::RankedTensorType::get(v25, (v24 - v25) >> 3, v23, 0);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

LABEL_3:
      operator new();
    }

    v18 = v23;
LABEL_30:
    mlir::UnrankedTensorType::get(v18);
    goto LABEL_3;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1E07FD6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, void *a14, uint64_t a15)
{
  operator delete(v15);
  if (__p)
  {
    operator delete(__p);
    if (a11)
    {
LABEL_7:
      operator delete(a11);
      v17 = a14;
      if (!a14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (a11)
  {
    goto LABEL_7;
  }

  v17 = a14;
  if (!a14)
  {
    goto LABEL_9;
  }

LABEL_8:
  operator delete(v17);
LABEL_9:
  _Unwind_Resume(a1);
}

uint64_t getMLIRType(const MIL::IRTensorValueType *a1, mlir::MLIRContext *a2)
{
  v4 = (*(*a1 + 88))(a1);
  result = MILElemTypeToMLIRElemType(v4, a2);
  if (result)
  {
    v6 = result;
    if ((*(*a1 + 104))(a1))
    {
      if (MIL::IRTensorValueType::IsScalar(a1))
      {
        v7 = 0;
        v8 = 0;
        __p = 0;
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v9 = (*(*a1 + 96))(a1);
        getMLIRShape(v9, &__p);
        v8 = __p;
        v7 = v12;
      }

      result = mlir::RankedTensorType::get(v8, (v7 - v8) >> 3, v6, 0);
      if (__p)
      {
        v12 = __p;
        v10 = result;
        operator delete(__p);
        return v10;
      }
    }

    else
    {

      return mlir::UnrankedTensorType::get(v6);
    }
  }

  return result;
}

void sub_1E07FD8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMLIRElemTypeFromMILValue(const MIL::IRValue *a1, mlir::MLIRContext *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = (*(*a1 + 32))(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(*v3 + 24))(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = (*(*v4 + 88))(v4);

  return MILElemTypeToMLIRElemType(v5, a2);
}

uint64_t MILElemTypeToMLIRElemType(int a1, mlir::Float32Type *this)
{
  switch(a1)
  {
    case 2:
      result = mlir::IntegerType::get(this, 1u, 0);
      break;
    case 3:
      result = mlir::IntegerType::get(this, 8u, 0);
      break;
    case 4:
      result = mlir::Float16Type::get(this, this);
      break;
    case 5:
      result = mlir::Float32Type::get(this, this);
      break;
    case 9:
      result = mlir::IntegerType::get(this, 8u, 1u);
      break;
    case 10:
      result = mlir::IntegerType::get(this, 0x10u, 1u);
      break;
    case 11:
      result = mlir::IntegerType::get(this, 0x20u, 1u);
      break;
    case 12:
      result = mlir::IntegerType::get(this, 0x40u, 1u);
      break;
    case 13:
      result = mlir::IntegerType::get(this, 4u, 1u);
      break;
    case 14:
      result = mlir::IntegerType::get(this, 8u, 2u);
      break;
    case 15:
      result = mlir::IntegerType::get(this, 0x10u, 2u);
      break;
    case 16:
      result = mlir::IntegerType::get(this, 0x20u, 2u);
      break;
    case 19:
      result = mlir::IntegerType::get(this, 2u, 2u);
      break;
    case 20:
      result = mlir::IntegerType::get(this, 4u, 2u);
      break;
    case 21:
      result = mlir::IntegerType::get(this, 1u, 2u);
      break;
    case 22:
      result = mlir::IntegerType::get(this, 3u, 2u);
      break;
    case 23:
      result = mlir::IntegerType::get(this, 6u, 2u);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void getMLIRShape(uint64_t *__return_ptr a1@<X8>, const MIL::IRTensorValueType *a2@<X0>)
{
  if (MIL::IRTensorValueType::IsScalar(a2))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v4 = (*(*a2 + 96))(a2);

    getMLIRShape(v4, a1);
  }
}

void getMLIRShape(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    if (((v4 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  while (v3 != v4)
  {
    v5 = (*(**v3 + 16))();
    if (v5)
    {
      v6 = (*(*v5 + 48))(v5);
    }

    else
    {
      v6 = 0x8000000000000000;
    }

    v7 = v6;
    std::vector<long long>::push_back[abi:ne200100](a2, &v7);
    v3 += 8;
  }
}

void sub_1E07FDC48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::ReshapeOpHandler *EmitterObjC::ReshapeOpHandler::ReshapeOpHandler(EmitterObjC::ReshapeOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A08;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if (*(v5 + 9))
  {
    v7 = v5 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(v5 + 9) + 56);
  v10 = MEMORY[0x1E696AEC0];
  v11 = v26;
  (*(*a2 + 4))(v26, a2, NextResultAtOffset);
  if (v27 < 0)
  {
    v11 = v26[0];
  }

  v25 = v6;
  __p.__r_.__value_.__r.__words[0] = &v25;
  v12 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v25, &std::piecewise_construct, &__p);
  v13 = v12 + 3;
  if (*(v12 + 47) < 0)
  {
    v13 = *v13;
  }

  v24 = v9;
  __p.__r_.__value_.__r.__words[0] = &v24;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v24, &std::piecewise_construct, &__p);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  v22 = 0;
  LOBYTE(v21) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v21, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v17 = [v10 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph reshapeTensor:%s\n         withShapeTensor:%s\n                    name:%s]\n    ", v11, v13, v15, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v21);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v26[0]);
    goto LABEL_19;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v22 < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v27 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v18 = [a2[27] stringByAppendingString:v17];
  v19 = a2[27];
  a2[27] = v18;

  return this;
}

void sub_1E07FDE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(a19);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if (a32 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if (a32 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ShapeOpHandler *EmitterObjC::ShapeOpHandler::ShapeOpHandler(EmitterObjC::ShapeOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A20;
  v5 = *(*(a3 + 9) + 24);
  if (*(a3 + 9))
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = MEMORY[0x1E696AEC0];
  v9 = v21;
  (*(*a2 + 4))(v21, a2, NextResultAtOffset);
  if (v22 < 0)
  {
    v9 = v21[0];
  }

  v20 = v5;
  __p.__r_.__value_.__r.__words[0] = &v20;
  v10 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v20, &std::piecewise_construct, &__p);
  v11 = v10 + 3;
  if (*(v10 + 47) < 0)
  {
    v11 = *v11;
  }

  v18 = 0;
  LOBYTE(v17) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v17, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v13 = [v8 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph shapeOfTensor:%s\n                    name:%s]\n    ", v9, v11, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    operator delete(v17);
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    operator delete(v21[0]);
    goto LABEL_14;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v18 < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v22 < 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v14 = [a2[27] stringByAppendingString:v13];
  v15 = a2[27];
  a2[27] = v14;

  return this;
}

void sub_1E07FE0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(a18);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if (a30 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if (a30 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ExpandDimsOpHandler *EmitterObjC::ExpandDimsOpHandler::ExpandDimsOpHandler(EmitterObjC::ExpandDimsOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A38;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if (*(v5 + 9))
  {
    v7 = v5 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(v5 + 9) + 56);
  v10 = MEMORY[0x1E696AEC0];
  v11 = v26;
  (*(*a2 + 4))(v26, a2, NextResultAtOffset);
  if (v27 < 0)
  {
    v11 = v26[0];
  }

  v25 = v6;
  __p.__r_.__value_.__r.__words[0] = &v25;
  v12 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v25, &std::piecewise_construct, &__p);
  v13 = v12 + 3;
  if (*(v12 + 47) < 0)
  {
    v13 = *v13;
  }

  v24 = v9;
  __p.__r_.__value_.__r.__words[0] = &v24;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v24, &std::piecewise_construct, &__p);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  v22 = 0;
  LOBYTE(v21) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v21, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v17 = [v10 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph expandDimsOfTensor:%s\n                   axesTensor:%s\n                         name:%s]\n    ", v11, v13, v15, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v21);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v26[0]);
    goto LABEL_19;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v22 < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v27 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v18 = [a2[27] stringByAppendingString:v17];
  v19 = a2[27];
  a2[27] = v18;

  return this;
}