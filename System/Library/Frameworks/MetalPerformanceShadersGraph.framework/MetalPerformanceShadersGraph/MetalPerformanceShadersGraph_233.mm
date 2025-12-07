void anonymous namespace::LayerNormPattern::matchAndRewrite(_anonymous_namespace_::LayerNormPattern *this, const MIL::IROperation *a2, mlir::Float32Type **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  v89[0] = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "axes");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "beta");
  v86 = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "gamma");
  v85 = 0;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v89[0]);
  if (!OptionalArgValue)
  {
    v7 = mlir::Float32Type::get(a3[23], v6);
    Constant = 1;
    v8 = mlir::RankedTensorType::get(&Constant, 1, v7, 0);
    Constant = mlir::mps::getConstantAttr<float>(v8, 0.0);
    OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &Constant) - 16;
    if (!mlir::Type::isF32(&ElementTypeOrSelf))
    {
      v9 = mlir::getElementTypeOrSelf(v89[0]);
      Constant = mlir::TypeAttr::get(v9);
      OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &OptionalArgValue, &Constant) - 16;
    }
  }

  if (!v86)
  {
    v10 = mlir::Float32Type::get(a3[23], v6);
    Constant = 1;
    v11 = mlir::RankedTensorType::get(&Constant, 1, v10, 0);
    Constant = mlir::mps::getConstantAttr<float>(v11, 1.0);
    v86 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &Constant) - 16;
    if (!mlir::Type::isF32(&ElementTypeOrSelf))
    {
      v12 = mlir::getElementTypeOrSelf(v89[0]);
      Constant = mlir::TypeAttr::get(v12);
      v86 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v86, &Constant) - 16;
    }
  }

  v70 = LocationForOp;
  v13 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](&Constant, v13);
  HIBYTE(v81) = 7;
  strcpy(&__s2, "epsilon");
  v14 = v83[0];
  if (v83[0])
  {
    v15 = v83;
    do
    {
      v16 = v15;
      v17 = (v14 + 32);
      v18 = *(v14 + 55);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v14 + 40);
      }

      if (v19 >= 0)
      {
        v20 = (v14 + 32);
      }

      else
      {
        v20 = *(v14 + 32);
      }

      if (v18 >= 7)
      {
        v21 = 7;
      }

      else
      {
        v21 = v18;
      }

      v22 = v18 < 7;
      v23 = memcmp(v20, &__s2, v21);
      v24 = v23 < 0;
      if (!v23)
      {
        v24 = v22;
      }

      if (v24)
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v15 = v16;
      }

      else
      {
        v15 = v14;
      }

      v14 = *(v14 + v25);
    }

    while (v14);
    if (v15 != v83)
    {
      if (v24)
      {
        v26 = (v16 + 4);
      }

      else
      {
        v26 = v17;
      }

      v27 = *(v15 + 55);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = v15[5];
      }

      if (v28 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = *v26;
      }

      if (v27 >= 7)
      {
        v30 = 7;
      }

      else
      {
        v30 = v27;
      }

      v31 = v27 > 7;
      v32 = memcmp(&__s2, v29, v30);
      v33 = v32 < 0;
      if (!v32)
      {
        v33 = v31;
      }

      if (!v33)
      {
        if (v15[8] - v15[7] == 16)
        {
          HIBYTE(v81) = 7;
          strcpy(&__s2, "epsilon");
          ParameterValue = MIL::IROperation::GetParameterValue();
          v35 = (*(*ParameterValue + 40))(ParameterValue);
          if (SHIBYTE(v81) < 0)
          {
            v36 = v35;
            operator delete(__s2);
            v35 = v36;
          }

          if (v35)
          {
            v37 = (*(*v35 + 32))(v35);
            v38 = (*(*v37 + 88))(v37);
            if (v38 == 4)
            {
              HIBYTE(v81) = 7;
              strcpy(&__s2, "epsilon");
              MIL::IROperation::GetParameterValue();
              LOWORD(__p) = MIL::IRValue::GetScalar<MIL::Fp16>();
              MIL::Fp16::GetFloat(&__p);
              F32FloatAttr = mlir::Builder::getF32FloatAttr(a3 + 23, v43, v42);
            }

            else
            {
              if (v38 != 5)
              {
                operator new();
              }

              HIBYTE(v81) = 7;
              strcpy(&__s2, "epsilon");
              MIL::IROperation::GetParameterValue();
              MIL::IRValue::GetScalar<float>();
              F32FloatAttr = mlir::Builder::getF32FloatAttr(a3 + 23, v40, v39);
            }

            v85 = F32FloatAttr;
            if (SHIBYTE(v81) < 0)
            {
              operator delete(__s2);
            }

            if ((*(*a2 + 192))(a2) == 1)
            {
              HIBYTE(v81) = 1;
              LOWORD(__s2) = 120;
              ParameterType = MIL::IROperation::GetParameterType();
              if (SHIBYTE(v81) < 0)
              {
                v45 = ParameterType;
                operator delete(__s2);
                ParameterType = v45;
              }

              v46 = MIL::IRValueType::AsTensorType(ParameterType);
              v79 = MIL::IRTensorValueType::Rank(v46);
              getMLIRShape(&__s2, v46);
              if (v79)
              {
                if (!(v79 >> 62))
                {
                  operator new();
                }

                std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
              }

              v78 = 4;
              strcpy(&__p, "axes");
              v47 = MIL::IROperation::GetParameterValue();
              if (v78 < 0)
              {
                v48 = v47;
                operator delete(__p);
                v47 = v48;
              }

              (*(*v47 + 40))(v47);
              Data = MIL::IRTensorValue::GetDataView<int>();
              if (v50)
              {
                v51 = v79;
                v52 = __s2;
                do
                {
                  v53 = *Data++;
                  *(4 * ((v51 & (v53 >> 31)) + v53)) = v52[(v51 & (v53 >> 31)) + v53];
                  --v50;
                }

                while (v50);
              }

              IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
              v55 = mlir::RankedTensorType::get(&v79, 1, IntegerType, 0);
              v56 = v55;
              if (v55)
              {
                v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
              }

              else
              {
                v57 = 0;
              }

              v58 = v70;
              __p = mlir::DenseElementsAttr::getFromRawBuffer(v56, v57, 0, 0);
              v76 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v70, &__p);
              v74 = OptionalArgValue;
              v78 = 5;
              strcpy(&__p, "gamma");
              v59 = MIL::IROperation::TryGetParameterValue();
              if (v78 < 0)
              {
                v60 = v59;
                operator delete(__p);
                v59 = v60;
              }

              if (v59)
              {
                v61 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v70, &v86, &v76);
              }

              else
              {
                if (v56)
                {
                  v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v56 + 8);
                }

                else
                {
                  v62 = 0;
                }

                if (v79)
                {
                  if (!(v79 >> 62))
                  {
                    operator new();
                  }

                  std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
                }

                v63 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v62, 0, 0);
                v58 = v70;
                v73 = v63;
                __p = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v70, &v73);
                v61 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v70, &v86, &__p);
              }

              v75 = v61 - 16;
              v78 = 4;
              strcpy(&__p, "beta");
              v64 = MIL::IROperation::TryGetParameterValue();
              if (v78 < 0)
              {
                v65 = v64;
                operator delete(__p);
                v64 = v65;
              }

              if (v64)
              {
                v66 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v58, &OptionalArgValue, &v76);
              }

              else
              {
                if (v56)
                {
                  v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v56 + 8);
                }

                else
                {
                  v67 = 0;
                }

                if (v79)
                {
                  if (!(v79 >> 62))
                  {
                    operator new();
                  }

                  std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
                }

                v68 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v67, 0, 0);
                v58 = v70;
                v73 = v68;
                __p = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v70, &v73);
                v66 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v70, &OptionalArgValue, &__p);
              }

              v74 = v66 - 16;
              v72 = 1;
              __p = mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(a3 + 23, v58, v89, &ArgValue, &v72);
              v71 = 1;
              v73 = mlir::OpBuilder::create<mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,BOOL>(a3 + 23, v58, v89, &ArgValue, &v71);
              v69 = mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value &,mlir::mps::ReductionMeanOp,mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,mlir::FloatAttr &>((a3 + 23), v58, v89, &__p, &v73, &v75, &v74, &v85);
              (*(*a2 + 200))(&__p, a2);
              MILToMLIRRewriter::setValue(a3, __p, (v69 - 16));
            }

            operator new();
          }

          operator new();
        }

        operator new();
      }
    }
  }

  operator new();
}

void sub_1E0680AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a29, a30);
    _Unwind_Resume(a1);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a29, a30);
  _Unwind_Resume(a1);
}

char *mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value &,mlir::mps::ReductionMeanOp,mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,mlir::FloatAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "mps.normalization";
    v25[3] = 17;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::mps::NormalizationOp::build(a1, v28, *a3, *a4 - 16, *a5 - 16, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v20;
}

void sub_1E0680D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0680D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

char *mlir::OpBuilder::create<mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.reduction_variance";
    v19[3] = 22;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::ReductionVarianceOp::build(a1, v22, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v14;
}

void sub_1E0680EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0680F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::LinearPattern::~LinearPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::LinearPattern::matchAndRewrite(_anonymous_namespace_::LinearPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "weight");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "bias");
  v14 = OptionalArgValue;
  HIBYTE(v13) = 1;
  LOWORD(__p) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  v9 = MIL::IRTensorValueType::Rank(v8);
  if (v9 == 1)
  {
    operator new();
  }

  if ((*(*a2 + 192))(a2) == 1)
  {
    LOBYTE(__p) = 0;
    LOBYTE(v17) = 1;
    v11 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v15, &__p, &v17) - 16;
    if (OptionalArgValue)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v11);
      __p = mlir::TypeAttr::get(ElementTypeOrSelf);
      v14 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v14, &__p) - 16;
      v11 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v11, &v14) - 16;
    }

    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void anonymous namespace::LocalResponseNormPattern::~LocalResponseNormPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::LocalResponseNormPattern::matchAndRewrite(_anonymous_namespace_::LocalResponseNormPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "size");
  MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  MILToMLIRRewriter::getArgValue(a3, a2, "k");
  LOWORD(__p) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  v7 = MIL::IRValueType::AsTensorType(ParameterType);
  if (MIL::IRTensorValueType::Rank(v7) <= 3)
  {
    operator new();
  }

  v17 = 4;
  strcpy(&__p, "size");
  MIL::IROperation::TryGetParameterValue();
  v8 = MIL::IRValue::GetScalar<int>();
  if (v17 < 0)
  {
    v9 = v8;
    operator delete(__p);
    v8 = v9;
  }

  v10 = v8 & 1;
  if (v8 < 0)
  {
    v10 = -v10;
  }

  __p = (v8 - v10 + 1);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  v12 = mlir::RankedTensorType::get(&__p, 1, ElementTypeOrSelf, 0);
  MPSDataType = getMPSDataType(v12);
  v14 = getConstantDataForScalar(MPSDataType, 1.0);
  createConstantOp((a3 + 23), LocationForOp, v14, v12, 1);

  operator new();
}

void sub_1E0682334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  mlir::OperationState::~OperationState(&__p);
  operator delete(v50);
  llvm::APFloat::~APFloat(&a41);
  operator delete(a15);
  _Unwind_Resume(a1);
}

void sub_1E06825EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  llvm::APFloat::~APFloat(va);
  operator delete(v40);
  _Unwind_Resume(a1);
}

char *mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.square";
    v15[3] = 10;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0682738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::MatMulPattern::~MatMulPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::MatMulPattern::matchAndRewrite(_anonymous_namespace_::MatMulPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v32 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v22 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ParameterType = MIL::IROperation::GetParameterType();
    v7 = MIL::IRValueType::AsTensorType(ParameterType);
    v8 = MIL::IRTensorValueType::Rank(v7);
    v9 = MIL::IROperation::GetParameterType();
    v10 = MIL::IRValueType::AsTensorType(v9);
    v11 = MIL::IRTensorValueType::Rank(v10);
    strcpy(__p, "transpose_x");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    v31 = 11;
    strcpy(__p, "transpose_y");
    v13 = MIL::IROperation::TryGetParameterValue();
    v14 = 0;
    if (ParameterValue && v8 != 1)
    {
      v14 = MIL::IRValue::GetScalar<BOOL>();
    }

    v15 = 0;
    if (v13 && v11 != 1)
    {
      v15 = MIL::IRValue::GetScalar<BOOL>();
    }

    if (v8 == 1)
    {
      operator new();
    }

    if (v11 == 1)
    {
      operator new();
    }

    v24 = LocationForOp;
    Context = mlir::Attribute::getContext(&v24);
    v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, Context);
    if (v18)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v17);
      mlir::mps::MatMulOp::build(a3 + 23, __p, ArgValue, v22, v14, v15);
      v19 = mlir::OpBuilder::create((a3 + 23), __p);
      v20 = *(*(v19 + 6) + 16);
      mlir::OperationState::~OperationState(__p);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      v27[0] = (v21 - 16);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v28 = 1283;
    v27[2] = "mps.matmul";
    v27[3] = 10;
    v26 = 259;
    llvm::operator+(v27, &v25, v29);
    llvm::report_fatal_error(v29, 1);
  }

  operator new();
}

void anonymous namespace::PReLUPattern::~PReLUPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::PReLUPattern::matchAndRewrite(_anonymous_namespace_::PReLUPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v12 = *MEMORY[0x1E69E9840];
  MILToMLIRRewriter::getLocationForOp(a3, a2);
  v9[4] = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v9[3] = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v5 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v9, v5);
  v11 = 1;
  LOWORD(__p) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  if (v11 < 0)
  {
    v7 = ParameterType;
    operator delete(__p);
    ParameterType = v7;
  }

  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  MIL::IRTensorValueType::Rank(v8);
  operator new();
}

void sub_1E0683854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _Unwind_Exception *exception_object, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    operator delete(v40);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceArgMinPattern::~ReduceArgMinPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::ReducePatternBase::matchAndRewrite(_anonymous_namespace_::ReducePatternBase *this, const MIL::IROperation *a2, mlir::Float32Type **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  v23 = LocationForOp;
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  if (*(this + 33) == 1)
  {
    isF16 = mlir::Type::isF16(&ElementTypeOrSelf);
    if (isF16)
    {
      v9 = mlir::Float32Type::get(a3[23], v7);
      __p[0] = mlir::TypeAttr::get(v9);
      ArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &ArgValue, __p) - 16;
    }

    if (mlir::Type::isInteger(&ElementTypeOrSelf, 8) || mlir::Type::isInteger(&ElementTypeOrSelf, 16))
    {
      isSignedInteger = mlir::Type::isSignedInteger(&ElementTypeOrSelf);
      IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, isSignedInteger);
      __p[0] = mlir::TypeAttr::get(IntegerType);
      ArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &ArgValue, __p) - 16;
      isF16 = 1;
    }
  }

  else
  {
    isF16 = 0;
  }

  if (*(this + 32))
  {
    v12 = "axis";
  }

  else
  {
    v12 = "axes";
  }

  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, v12);
  v20 = 9;
  strcpy(__p, "keep_dims");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v20 < 0)
  {
    v16 = ParameterValue;
    operator delete(__p[0]);
    if (v16)
    {
      goto LABEL_13;
    }
  }

  else if (ParameterValue)
  {
LABEL_13:
    v15 = MIL::IRValue::GetScalar<BOOL>();
    goto LABEL_16;
  }

  v15 = 1;
LABEL_16:
  v18 = (*(*this + 24))(this, a3 + 23, ArgValue, OptionalArgValue, v15, &v23);
  if ((*(*a2 + 192))(a2) == 1)
  {
    if (isF16 && (*(this + 32) & 1) == 0)
    {
      v17 = v23;
      __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
      v18 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, v17, &v18, __p) - 16;
    }

    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0683E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionArgMinOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_argmin";
    v21[3] = 20;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionArgMinOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 6) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void sub_1E0683F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0683FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceArgMaxPattern::~ReduceArgMaxPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionArgMaxOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_argmax";
    v21[3] = 20;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionArgMaxOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 6) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void sub_1E06841FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0684210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceL1NormPattern::~ReduceL1NormPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::ReduceL1NormPattern::lower(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v10 = mlir::OpBuilder::create<mlir::mps::AbsoluteOp,mlir::Value &>(a2, *a6, &v19);
  v11 = *a6;
  v20 = *a6;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.reduction_sum";
    v23[3] = 17;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, v11, v13);
  mlir::mps::ReductionSumOp::build(a2, v26, (v10 - 16), a4, a5);
  v15 = mlir::OpBuilder::create(a2, v26);
  v16 = *(*(v15 + 6) + 16);
  v17 = v15 - 16;
  mlir::OperationState::~OperationState(v26);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
  {
    return v17;
  }

  else
  {
    return -16;
  }
}

void sub_1E068447C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0684490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceL2NormPattern::~ReduceL2NormPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::ReduceL2NormPattern::lower(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v19 = a4;
  v20 = a3;
  v18 = a5;
  v17 = mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>(a2, *a6, &v20);
  v8 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::mps::SquareOp &,mlir::Value &,BOOL &>(a2, *a6, &v17, &v19, &v18);
  v9 = *a6;
  v21 = *a6;
  Context = mlir::Attribute::getContext(&v21);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v25 = 1283;
    v24[2] = "mps.square_root";
    v24[3] = 15;
    v23 = 259;
    llvm::operator+(v24, &v22, v26);
    llvm::report_fatal_error(v26, 1);
  }

  mlir::OperationState::OperationState(v27, v9, v11);
  mlir::mps::ACosOp::build(a2, v27, (v8 - 16));
  v13 = mlir::OpBuilder::create(a2, v27);
  v14 = *(*(v13 + 6) + 16);
  v15 = v13 - 16;
  mlir::OperationState::~OperationState(v27);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id)
  {
    return v15;
  }

  else
  {
    return -16;
  }
}

void sub_1E0684704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0684718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

char *mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::mps::SquareOp &,mlir::Value &,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, void *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.reduction_sum";
    v19[3] = 17;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::ReductionSumOp::build(a1, v22, *a3 - 16, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v14;
}

void sub_1E068487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0684890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceLogSumExpPattern::~ReduceLogSumExpPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionLogSumExpOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionLogSumExpOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_logsumexp";
    v21[3] = 23;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionLogSumExpOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 6) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionLogSumExpOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void sub_1E0684AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0684AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceLogSumPattern::~ReduceLogSumPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::ReduceLogSumPattern::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  v17 = a5;
  v8 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,BOOL &>(a2, *a6, &v19, &v18, &v17);
  v9 = *a6;
  v20 = *a6;
  Context = mlir::Attribute::getContext(&v20);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.logarithm";
    v23[3] = 13;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, v9, v11);
  mlir::mps::ACosOp::build(a2, v26, (v8 - 16));
  v13 = mlir::OpBuilder::create(a2, v26);
  v14 = *(*(v13 + 6) + 16);
  v15 = v13 - 16;
  mlir::OperationState::~OperationState(v26);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id)
  {
    return v15;
  }

  else
  {
    return -16;
  }
}

void sub_1E0684D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0684D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceMaxPattern::~ReduceMaxPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionMaxOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_max";
    v21[3] = 17;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionMaxOp::build(a2, v24, a3, a4, a5, 0);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 6) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void sub_1E0684FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0684FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceMeanPattern::~ReduceMeanPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionMeanOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_mean";
    v21[3] = 18;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionMeanOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 6) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void sub_1E068522C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0685240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceMinPattern::~ReduceMinPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionMinOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_min";
    v21[3] = 17;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionMinOp::build(a2, v24, a3, a4, a5, 0);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 6) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void sub_1E0685498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06854AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceProdPattern::~ReduceProdPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionProdOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_prod";
    v21[3] = 18;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionProdOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 6) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void sub_1E0685700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0685714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceSumPattern::~ReduceSumPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionSumOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6)
{
  v9 = a3;
  v8 = a4;
  v7 = a5;
  return mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,BOOL &>(a2, *a6, &v9, &v8, &v7) - 16;
}

void anonymous namespace::ReduceSumSquarePattern::~ReduceSumSquarePattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

char *anonymous namespace::ReduceSumSquarePattern::lower(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6)
{
  v11 = a4;
  v12 = a3;
  v10 = a5;
  v9 = mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>(a2, *a6, &v12);
  return mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::mps::SquareOp &,mlir::Value &,BOOL &>(a2, *a6, &v9, &v11, &v10) - 16;
}

void anonymous namespace::ReshapePattern::~ReshapePattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::ReshapePattern::matchAndRewrite(_anonymous_namespace_::ReshapePattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  v19 = 0;
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  HIBYTE(v18) = 5;
  strcpy(&__p, "shape");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    HIBYTE(v18) = 1;
    LOWORD(__p) = 120;
    ParameterType = MIL::IROperation::GetParameterType();
    v8 = MIL::IRValueType::AsTensorType(ParameterType);
    v9 = (*(*v8 + 96))(v8);
    v10 = v9[1];
    if (v10 != *v9)
    {
      if (((v10 - *v9) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v11 = MIL::IRValue::AsTensor(ParameterValue);
    MEMORY[0x1E12E5220](&__p, v11);
    v12 = MIL::IRValue::AsTensor(ParameterValue);
    MEMORY[0x1E12E5230](v16, v12);
    v13 = MIL::IRValue::AsTensor(ParameterValue);
    MEMORY[0x1E12E5210](v15, v13);
    if (__p == 1)
    {
      if (*(&v18 + 1))
      {
        operator new();
      }
    }

    else if (LOBYTE(v16[0]) == 1)
    {
      if (v16[2])
      {
        operator new();
      }
    }

    else if (LOBYTE(v15[0]) == 1 && v15[2])
    {
      operator new();
    }
  }

  if (!v19)
  {
    v19 = MILToMLIRRewriter::getArgValue(a3, a2, "shape");
    __p = mlir::getElementTypeOrSelf(v19);
    if (!mlir::Type::isSignedInteger(&__p, 32))
    {
      IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
      __p = mlir::TypeAttr::get(IntegerType);
      v19 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v19, &__p) - 16;
    }
  }

  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &ArgValue, &v19);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068650C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    operator delete(v34);
  }

  operator delete(v33);
  if (!a13)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void anonymous namespace::SpaceToBatchPattern::~SpaceToBatchPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::SpaceToBatchPattern::matchAndRewrite(_anonymous_namespace_::SpaceToBatchPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v92[1] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v88 = MILToMLIRRewriter::getArgValue(a3, a2, "block_shape");
  v5 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](&v86, v5);
  HIBYTE(v91[0]) = 8;
  strcpy(&__s2, "paddings");
  v6 = v87[0];
  if (!v87[0])
  {
    goto LABEL_35;
  }

  v7 = v87;
  do
  {
    v8 = v7;
    v9 = (v6 + 32);
    v10 = *(v6 + 55);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v6 + 40);
    }

    if (v11 >= 0)
    {
      v12 = (v6 + 32);
    }

    else
    {
      v12 = *(v6 + 32);
    }

    if (v10 >= 8)
    {
      v13 = 8;
    }

    else
    {
      v13 = v10;
    }

    v14 = v10 < 8;
    v15 = memcmp(v12, &__s2, v13);
    v16 = v15 < 0;
    if (!v15)
    {
      v16 = v14;
    }

    if (v16)
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v7 = v8;
    }

    else
    {
      v7 = v6;
    }

    v6 = *(v6 + v17);
  }

  while (v6);
  if (v7 == v87)
  {
    goto LABEL_35;
  }

  if (v16)
  {
    v18 = (v8 + 4);
  }

  else
  {
    v18 = v9;
  }

  v19 = *(v7 + 55);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = v7[5];
  }

  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = *v18;
  }

  if (v19 >= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v19;
  }

  v23 = v19 > 8;
  v24 = memcmp(&__s2, v21, v22);
  v25 = v24 < 0;
  if (!v24)
  {
    v25 = v23;
  }

  if (v25)
  {
LABEL_35:
    operator new();
  }

  if (v7[8] - v7[7] != 16)
  {
    operator new();
  }

  HIBYTE(v91[0]) = 8;
  strcpy(&__s2, "paddings");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v91[0]) < 0)
  {
    v27 = ParameterValue;
    operator delete(__s2);
    ParameterValue = v27;
  }

  (*(*ParameterValue + 40))(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v30 = v29;
  HIBYTE(v91[0]) = 11;
  strcpy(&__s2, "block_shape");
  v31 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v91[0]) < 0)
  {
    v32 = v31;
    operator delete(__s2);
    v31 = v32;
  }

  (*(*v31 + 40))(v31);
  MIL::IRTensorValue::GetDataView<int>();
  v34 = v33;
  HIBYTE(v91[0]) = 1;
  LOWORD(__s2) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  v36 = MIL::IRValueType::AsTensorType(ParameterType);
  v37 = MIL::IRTensorValueType::Rank(v36);
  if (SHIBYTE(v91[0]) < 0)
  {
    operator delete(__s2);
    v38 = (2 * v34);
    if (v30 == v38)
    {
LABEL_43:
      v91[2] = v92;
      v92[0] = v34;
      v91[3] = 0x100000001;
      *&__s2 = *(ArgValue + 1) & 0xFFFFFFFFFFFFFFF8;
      Context = mlir::Attribute::getContext(&__s2);
      v40 = mlir::IntegerType::get(Context, 0x20u, 1u);
      v41 = mlir::RankedTensorType::get(v92, 1, v40, 0);
      v42 = v41;
      if (v41)
      {
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v84 = v42;
        v85 = v43;
        if (v34 << 32)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v84 = 0;
        v85 = 0;
        if (v34 << 32)
        {
LABEL_45:
          if (!(v34 >> 62))
          {
            operator new();
          }

          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }
      }

      if (v34)
      {
        if (v34 <= 7uLL)
        {
          v44 = 0;
LABEL_57:
          v53 = v34 - v44;
          v54 = (4 * v44);
          v55 = v44 - v34;
          do
          {
            *v54++ = v55++;
            --v53;
          }

          while (v53);
          goto LABEL_59;
        }

        v44 = v34 - (v34 & 7);
        v45 = vdupq_n_s64(v34);
        v46 = xmmword_1E096E650;
        v47 = xmmword_1E09700F0;
        v48 = 16;
        v49.i64[0] = 0x400000004;
        v49.i64[1] = 0x400000004;
        v50 = vdupq_n_s64(8uLL);
        v51 = v44;
        do
        {
          v52 = vuzp1q_s32(vsubq_s64(v47, v45), vsubq_s64(v46, v45));
          *(v48 - 16) = v52;
          *v48 = vaddq_s32(v52, v49);
          v46 = vaddq_s64(v46, v50);
          v47 = vaddq_s64(v47, v50);
          v48 += 32;
          v51 -= 8;
        }

        while (v51);
        if ((v34 & 7) != 0)
        {
          goto LABEL_57;
        }
      }

LABEL_59:
      *&__s2 = *(ArgValue + 1) & 0xFFFFFFFFFFFFFFF8;
      v56 = mlir::Attribute::getContext(&__s2);
      v57 = mlir::IntegerType::get(v56, 0x20u, 1u);
      v58 = mlir::RankedTensorType::get(0, 0, v57, 0);
      v91[0] = v37;
      v91[1] = 2;
      *&__s2 = v91;
      *(&__s2 + 1) = 0x200000002;
      v81.__begin_ = (*(ArgValue + 1) & 0xFFFFFFFFFFFFFFF8);
      v59 = mlir::Attribute::getContext(&v81);
      v60 = mlir::IntegerType::get(v59, 0x20u, 1u);
      v61 = mlir::RankedTensorType::get(v91, 2, v60, 0);
      v62 = v61;
      if (v61)
      {
        v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
        v82 = v62;
        v83 = v63;
        memset(&v81, 0, sizeof(v81));
        __x[0] = 0;
        if (!v37)
        {
LABEL_64:
          if (v34 >= 1)
          {
            v64 = 0;
            v65 = 0;
            v66 = 2 * (v37 - v34);
            if (v37 <= 0)
            {
              v66 = 0;
            }

            begin = v81.__begin_;
            v68 = &v81.__begin_[v66];
            do
            {
              while (1)
              {
                v69 = *(Data + 4 * v64);
                if (v69 <= 0)
                {
                  break;
                }

                v68[v64] = v69;
                v65 = 1;
                if (v38 - 1 == v64++)
                {
                  goto LABEL_75;
                }
              }

              ++v64;
            }

            while (v38 != v64);
            if (v65)
            {
LABEL_75:
              v80 = mlir::DenseElementsAttr::getFromRawBuffer(v82, v83, begin, v81.__end_ - begin);
              v79 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &v82, &v80) - 16;
              ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
              *__x = 1;
              v72 = mlir::RankedTensorType::get(__x, 1, ElementTypeOrSelf, 0);
              *__x = mlir::mps::getConstantAttr<int>(v72, 0);
              v78 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __x);
              __x[0] = 0;
              ArgValue = mlir::OpBuilder::create<mlir::mps::PadOp,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::PaddingMode>(a3 + 23, LocationForOp, &ArgValue, &v79, &v78, __x) - 16;
            }
          }

          v80 = mlir::DenseElementsAttr::getFromRawBuffer(v84, v85, 0, 0);
          v79 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &v84, &v80) - 16;
          if (v58)
          {
            v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
          }

          else
          {
            v73 = 0;
          }

          v77 = 0;
          *__x = mlir::DenseElementsAttr::getFromRawBuffer(v58, v73, &v77, 4);
          v78 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __x) - 16;
          LOBYTE(__x[0]) = 0;
          v74 = mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v79, &v78, &v88, __x);
          if ((*(*a2 + 192))(a2) == 1)
          {
            (*(*a2 + 200))(__x, a2);
            MILToMLIRRewriter::setValue(a3, *__x, (v74 - 16));
          }

          operator new();
        }
      }

      else
      {
        v82 = 0;
        v83 = 0;
        memset(&v81, 0, sizeof(v81));
        __x[0] = 0;
        if (!v37)
        {
          goto LABEL_64;
        }
      }

      std::vector<int>::__append(&v81, 2 * v37, __x);
      goto LABEL_64;
    }
  }

  else
  {
    v38 = (2 * v34);
    if (v30 == v38)
    {
      goto LABEL_43;
    }
  }

  operator new();
}

void sub_1E06870D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31)
{
  if (__p)
  {
    operator delete(__p);
    v34 = *(v33 - 152);
    if (v34 != a11)
    {
LABEL_8:
      free(v34);
      if (v32)
      {
LABEL_9:
        operator delete(v32);
        v35 = *(v33 - 120);
        if (v35 != v31)
        {
LABEL_10:
          free(v35);
          std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a30, a31);
          _Unwind_Resume(a1);
        }

LABEL_11:
        std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a30, a31);
        _Unwind_Resume(a1);
      }

LABEL_4:
      v35 = *(v33 - 120);
      if (v35 != v31)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v34 = *(v33 - 152);
    if (v34 != a11)
    {
      goto LABEL_8;
    }
  }

  if (v32)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

char *mlir::OpBuilder::create<mlir::mps::PadOp,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::PaddingMode>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, unsigned int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.pad";
    v21[3] = 7;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::PadOp::build(a1, v24, *a3, *a4, *a5 - 16, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v16;
}

void sub_1E06873C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06873DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = *__x;
      v12 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &end[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (end + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      end = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *end++ = v11;
        }

        while (end != v10);
      }

      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = v6 + __n;
    if ((v6 + __n) >> 62)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = 4 * v6;
    v19 = (4 * v6 + 4 * __n);
    v20 = *__x;
    v21 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    begin = this->__begin_;
    v28 = this->__end_ - this->__begin_;
    v29 = (v18 - v28);
    memcpy((v18 - v28), this->__begin_, v28);
    this->__begin_ = v29;
    this->__end_ = v19;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void anonymous namespace::SqueezePattern::~SqueezePattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::SqueezePattern::matchAndRewrite(_anonymous_namespace_::SqueezePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "axes");
  v11 = OptionalArgValue;
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    if (OptionalArgValue)
    {
      mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v11);
    }

    else
    {
      v12 = LocationForOp;
      Context = mlir::Attribute::getContext(&v12);
      v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
      if ((v9 & 1) == 0)
      {
        v16 = 1283;
        v15[2] = "mps.squeeze";
        v15[3] = 11;
        v14 = 259;
        llvm::operator+(v15, &v13, v17);
        llvm::report_fatal_error(v17, 1);
      }

      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::SqueezeOp::build((a3 + 23), __p, &ArgValue, 1uLL, 0, 0);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
    }

    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06879C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06879DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter0::~GeneratedRewriter0(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter0::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter0 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v16 = ArgValue;
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v17 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v14 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v15, __p);
    v8 = mlir::OpBuilder::create<mlir::mps::LeakyReluOp,mlir::Value &,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v16, &v14);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v17, __p);
    v18 = LocationForOp;
    Context = mlir::Attribute::getContext(&v18);
    v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, Context);
    if (v13)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v12);
      mlir::mps::ATan2Op::build(a3 + 23, __p, (v8 - 16), (v10 - 16));
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v22 = 1283;
    v21[2] = "mps.minimum";
    v21[3] = 11;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  operator new();
}

char *mlir::OpBuilder::create<mlir::mps::LeakyReluOp,mlir::Value &,mlir::mps::CastOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LeakyReluOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.leaky_relu";
    v17[3] = 14;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LeakyReluOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void sub_1E0688050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0688064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter1::~GeneratedRewriter1(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter1::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter1 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v12 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v12, __p);
    v13 = LocationForOp;
    Context = mlir::Attribute::getContext(&v13);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EluOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::ATan2Op::build(a3 + 23, __p, ArgValue, (v8 - 16));
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v17 = 1283;
    v16[2] = "mps.elu";
    v16[3] = 7;
    v15 = 259;
    llvm::operator+(v16, &v14, v18);
    llvm::report_fatal_error(v18, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter2::~GeneratedRewriter2(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter2::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter2 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ErfOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0688808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ErfOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ErfOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.erf";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ErfOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0688978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068898C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter3::~GeneratedRewriter3(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter3::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter3 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v11 = ArgValue;
  v10 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v10, &__p);
    mlir::OpBuilder::create<mlir::mps::LeakyReluOp,mlir::Value &,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v11, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0688CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter4::~GeneratedRewriter4(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter4::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter4 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v16 = ArgValue;
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v17 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v14 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v15, __p);
    v8 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v16, &v14);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v17, __p);
    v18 = LocationForOp;
    Context = mlir::Attribute::getContext(&v18);
    v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
    if (v13)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v12);
      mlir::mps::ATan2Op::build(a3 + 23, __p, (v8 - 16), (v10 - 16));
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v22 = 1283;
    v21[2] = "mps.add";
    v21[3] = 7;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  operator new();
}

char *mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::CastOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.multiply";
    v17[3] = 12;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void sub_1E0689350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0689364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter5::~GeneratedRewriter5(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter5::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter5 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0689684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.relu";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E06897F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0689808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter6::~GeneratedRewriter6(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter6::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter6 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v10 = LocationForOp;
    Context = mlir::Attribute::getContext(&v10);
    v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Relu6Op,void>::id, Context);
    if (v9)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::ACosOp::build((a3 + 23), __p, ArgValue);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v14 = 1283;
    v13[2] = "mps.relu6";
    v13[3] = 9;
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  operator new();
}

void sub_1E0689C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0689C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0689C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E0689C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter7::~GeneratedRewriter7(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter7::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter7 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v17 = ArgValue;
  v16 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v18 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v15 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v18, __p);
    v14 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v17, &v15);
    v8 = mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::mps::MultiplyOp &>((a3 + 23), LocationForOp, &v14);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v16, __p);
    v19 = LocationForOp;
    Context = mlir::Attribute::getContext(&v19);
    v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
    if (v13)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v12);
      mlir::mps::ATan2Op::build(a3 + 23, __p, (v8 - 16), (v10 - 16));
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v23 = 1283;
    v22[2] = "mps.multiply";
    v22[3] = 12;
    v21 = 259;
    llvm::operator+(v22, &v20, v24);
    llvm::report_fatal_error(v24, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter8::~GeneratedRewriter8(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter8::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter8 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068A468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.sigmoid";
    v15[3] = 11;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E068A5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068A5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter9::~GeneratedRewriter9(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter9::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter9 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v14 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v14, __p);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v15, __p);
    v16 = LocationForOp;
    Context = mlir::Attribute::getContext(&v16);
    v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SigmoidHardOp,void>::id, Context);
    if (v13)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v12);
      mlir::mps::ClampOp::build((a3 + 23), __p, ArgValue, (v8 - 16), (v10 - 16));
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v20 = 1283;
    v19[2] = "mps.sigmoid_hard";
    v19[3] = 16;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter10::~GeneratedRewriter10(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter10::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter10 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v10 = LocationForOp;
    Context = mlir::Attribute::getContext(&v10);
    v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id, Context);
    if (v9)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::ACosOp::build((a3 + 23), __p, ArgValue);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v14 = 1283;
    v13[2] = "mps.swish";
    v13[3] = 9;
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  operator new();
}

void sub_1E068AEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068AEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068AEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E068AEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter11::~GeneratedRewriter11(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter11::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter11 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v11 = LocationForOp;
    Context = mlir::Attribute::getContext(&v11);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id, Context);
    if (v10)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v9);
      mlir::mps::SoftmaxOp::build((a3 + 23), __p, ArgValue, v7);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v15 = 1283;
    v14[2] = "mps.softmax";
    v14[3] = 11;
    v13 = 259;
    llvm::operator+(v14, &v12, v16);
    llvm::report_fatal_error(v16, 1);
  }

  operator new();
}

void sub_1E068B31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068B330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068B344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E068B360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter12::~GeneratedRewriter12(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter12::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter12 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SoftplusOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068B688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter13::~GeneratedRewriter13(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter13::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter13 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v19 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v20 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v19, __p);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v20, __p);
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v11);
    v13 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v14 = mlir::RankedTensorType::get(0, 0, v13, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v14, 1);
    v15 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
    v21 = LocationForOp;
    Context = mlir::Attribute::getContext(&v21);
    v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftplusParametricOp,void>::id, Context);
    if (v18)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v17);
      mlir::mps::LPNormOp::build((a3 + 23), __p, ArgValue, (v8 - 16), (v10 - 16), (v15 - 16));
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v25 = 1283;
    v24[2] = "mps.softplus_parametric";
    v24[3] = 23;
    v23 = 259;
    llvm::operator+(v24, &v22, v26);
    llvm::report_fatal_error(v26, 1);
  }

  operator new();
}

void sub_1E068BB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068BBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068BBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E068BBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  operator delete(v28);
  std::vector<std::string>::~vector[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter14::~GeneratedRewriter14(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter14::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter14 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v10 = LocationForOp;
    Context = mlir::Attribute::getContext(&v10);
    v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftsignOp,void>::id, Context);
    if (v9)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::ACosOp::build((a3 + 23), __p, ArgValue);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v14 = 1283;
    v13[2] = "mps.softsign";
    v13[3] = 12;
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  operator new();
}

void sub_1E068BFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068BFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068C008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E068C024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter15::~GeneratedRewriter15(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter15::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter15 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v25 = ArgValue;
  v24 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v24, __p);
    v26 = LocationForOp;
    Context = mlir::Attribute::getContext(&v26);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::EqualToOp::build((a3 + 23), __p, ArgValue, (v8 - 16));
      v12 = mlir::OpBuilder::create((a3 + 23), __p);
      v13 = *(*(v12 + 6) + 16);
      mlir::OperationState::~OperationState(__p);
      v14 = mlir::getElementTypeOrSelf(ArgValue);
      v15 = mlir::TypeAttr::get(v14);
      v26 = LocationForOp;
      v16 = mlir::Attribute::getContext(&v26);
      v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, v16);
      if (v18)
      {
        if (v13 == &mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id)
        {
          v19 = v12;
        }

        else
        {
          v19 = 0;
        }

        mlir::OperationState::OperationState(__p, LocationForOp, v17);
        mlir::mps::CastOp::build(a3 + 23, __p, (v19 - 16), v15);
        v20 = mlir::OpBuilder::create((a3 + 23), __p);
        v21 = *(*(v20 + 6) + 16);
        mlir::OperationState::~OperationState(__p);
        if (v21 == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::CastOp &,mlir::Value &>(a3 + 23, LocationForOp, &v23, &v25);
        (*(*a2 + 200))(__p, a2);
        operator new();
      }

      v32 = 1283;
      v30 = "mps.cast";
      v31 = 8;
      v28 = 259;
      llvm::operator+(v29, v27, v33);
      llvm::report_fatal_error(v33, 1);
    }

    v32 = 1283;
    v30 = "mps.greater_equal";
    v31 = 17;
    v28 = 259;
    llvm::operator+(v29, v27, v33);
    llvm::report_fatal_error(v33, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter16::~GeneratedRewriter16(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter16::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter16 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068C910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter17::~GeneratedRewriter17(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter17::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter17 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068CC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter18::~GeneratedRewriter18(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter18::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter18 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068CFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter19::~GeneratedRewriter19(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter19::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter19 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068D33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter20::~GeneratedRewriter20(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter20::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter20 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068D6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter21::~GeneratedRewriter21(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter21::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter21 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068DA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter22::~GeneratedRewriter22(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter22::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter22 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::MaximumOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068DD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter23::~GeneratedRewriter23(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter23::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter23 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068E0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter24::~GeneratedRewriter24(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter24::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter24 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068E430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter25::~GeneratedRewriter25(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter25::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter25 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068E794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter26::~GeneratedRewriter26(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter26::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter26 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::GreaterThanOrEqualToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068EAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter27::~GeneratedRewriter27(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter27::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter27 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068EE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter28::~GeneratedRewriter28(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter28::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter28 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::LessThanOrEqualToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068F1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::LessThanOrEqualToOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOrEqualToOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.less_equal";
    v17[3] = 14;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::EqualToOp::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LessThanOrEqualToOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void sub_1E068F338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068F34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter29::~GeneratedRewriter29(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter29::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter29 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v13 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v6 = mlir::OpBuilder::create<mlir::mps::AndOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v13);
    v7 = mlir::IntegerType::get(a3[23], 1u, 0);
    v8 = mlir::TypeAttr::get(v7);
    v14 = LocationForOp;
    Context = mlir::Attribute::getContext(&v14);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::CastOp::build(a3 + 23, __p, (v6 - 16), v8);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v18 = 1283;
    v17[2] = "mps.cast";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  operator new();
}

char *mlir::OpBuilder::create<mlir::mps::AndOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AndOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.and";
    v17[3] = 7;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AndOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void sub_1E068F928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter30::~GeneratedRewriter30(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter30::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter30 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::NonZeroOp,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068FC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::NonZeroOp,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.non_zero";
    v15[3] = 12;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::NonZeroOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E068FDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E068FDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter31::~GeneratedRewriter31(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter31::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter31 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069011C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter32::~GeneratedRewriter32(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter32::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter32 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v13 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v6 = mlir::OpBuilder::create<mlir::mps::OrOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v13);
    v7 = mlir::IntegerType::get(a3[23], 1u, 0);
    v8 = mlir::TypeAttr::get(v7);
    v14 = LocationForOp;
    Context = mlir::Attribute::getContext(&v14);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::CastOp::build(a3 + 23, __p, (v6 - 16), v8);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v18 = 1283;
    v17[2] = "mps.cast";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  operator new();
}

char *mlir::OpBuilder::create<mlir::mps::OrOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::OrOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.or";
    v17[3] = 6;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::OrOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void sub_1E0690720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0690734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter33::~GeneratedRewriter33(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter33::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter33 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v13 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v6 = mlir::OpBuilder::create<mlir::mps::XorOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v13);
    v7 = mlir::IntegerType::get(a3[23], 1u, 0);
    v8 = mlir::TypeAttr::get(v7);
    v14 = LocationForOp;
    Context = mlir::Attribute::getContext(&v14);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::CastOp::build(a3 + 23, __p, (v6 - 16), v8);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v18 = 1283;
    v17[2] = "mps.cast";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  operator new();
}

char *mlir::OpBuilder::create<mlir::mps::XorOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::XorOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.xor";
    v17[3] = 7;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::XorOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void sub_1E0690D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0690D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter34::~GeneratedRewriter34(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter34::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter34 *this, const MIL::IROperation *a2, mlir::Float32Type **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v11 = LocationForOp;
    Context = mlir::Attribute::getContext(&v11);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorDivideOp,void>::id, Context);
    if (v10)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v9);
      mlir::mps::ATan2Op::build(a3 + 23, __p, ArgValue, v7);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v15 = 1283;
    v14[2] = "mps.floor_divide";
    v14[3] = 16;
    v13 = 259;
    llvm::operator+(v14, &v12, v16);
    llvm::report_fatal_error(v16, 1);
  }

  operator new();
}

void sub_1E0691140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0691154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0691168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E0691184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter35::~GeneratedRewriter35(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter35::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter35 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::AbsoluteOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06914AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter36::~GeneratedRewriter36(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter36::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter36 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ACosOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06917F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ACosOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ACosOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.acos";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ACosOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0691964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0691978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter37::~GeneratedRewriter37(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter37::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter37 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ACoshOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0691C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ACoshOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ACoshOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.acosh";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ACoshOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0691E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0691E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter38::~GeneratedRewriter38(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter38::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter38 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ASinOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069213C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ASinOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ASinOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.asin";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ASinOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E06922AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06922C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter39::~GeneratedRewriter39(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter39::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter39 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ASinhOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06925E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ASinhOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ASinhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.asinh";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ASinhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0692750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0692764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter40::~GeneratedRewriter40(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter40::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter40 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ATanOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0692A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ATanOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATanOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.atan";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ATanOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0692BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0692C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter41::~GeneratedRewriter41(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter41::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter41 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ATanhOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0692F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ATanhOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATanhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.atanh";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ATanhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0693098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06930AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter42::~GeneratedRewriter42(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter42::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter42 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::CeilOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06933CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter43::~GeneratedRewriter43(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter43::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter43 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::CosOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0693714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::CosOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CosOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.cos";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CosOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0693884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0693898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter44::~GeneratedRewriter44(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter44::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter44 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::CoshOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0693BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::CoshOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CoshOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.cosh";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CoshOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0693D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0693D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter45::~GeneratedRewriter45(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter45::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter45 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v9 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ClampOp,mlir::Value &,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v7, &v9);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0694094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter46::~GeneratedRewriter46(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter46::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter46 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06943DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter47::~GeneratedRewriter47(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter47::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter47 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ExponentBase2Op,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0694724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::ExponentBase2Op,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentBase2Op,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.exponent_base_2";
    v15[3] = 19;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExponentBase2Op,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0694894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06948A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter48::~GeneratedRewriter48(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter48::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter48 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0694BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.floor";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0694D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0694D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter49::~GeneratedRewriter49(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter49::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter49 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::NotOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069506C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::NotOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.not";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E06951DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06951F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter50::~GeneratedRewriter50(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter50::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter50 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::RoundOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0695510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter51::~GeneratedRewriter51(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter51::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter51 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SignOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0695858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::SignOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SignOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.sign";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SignOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E06959C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06959DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter52::~GeneratedRewriter52(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter52::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter52 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SinOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0695CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::SinOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SinOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.sin";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SinOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0695E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0695E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter53::~GeneratedRewriter53(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter53::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter53 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SinhOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06961A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::SinhOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SinhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.sinh";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SinhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0696310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0696324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter54::~GeneratedRewriter54(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter54::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter54 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0696644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.square_root";
    v15[3] = 15;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E06967B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06967C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter55::~GeneratedRewriter55(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter55::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter55 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0696AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter56::~GeneratedRewriter56(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter56::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter56 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::TanOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0696E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::TanOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TanOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.tan";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TanOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0696FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0696FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter57::~GeneratedRewriter57(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter57::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter57 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06972D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.tanh";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void sub_1E0697444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0697458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter58::~GeneratedRewriter58(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter58::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter58 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v10 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v6 = mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v10);
    v12 = LocationForOp;
    Context = mlir::Attribute::getContext(&v12);
    v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
    if (v9)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::SelectOp::build((a3 + 23), __p, (v6 - 16), v10, ArgValue);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v16 = 1283;
    v15[2] = "mps.select";
    v15[3] = 10;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter59::~GeneratedRewriter59(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter59::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter59 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "cond");
  v6 = MILToMLIRRewriter::getArgValue(a3, a2, "a");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "b");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v8 = mlir::IntegerType::get(a3[23], 1u, 0);
    __p[0] = mlir::TypeAttr::get(v8);
    v9 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &ArgValue, __p);
    v14 = LocationForOp;
    Context = mlir::Attribute::getContext(&v14);
    v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
    if (v12)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v11);
      mlir::mps::SelectOp::build((a3 + 23), __p, (v9 - 16), v6, v7);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v18 = 1283;
    v17[2] = "mps.select";
    v17[3] = 10;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter60::~GeneratedRewriter60(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter60::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter60 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06980A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter61::~GeneratedRewriter61(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter61::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter61 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  MILToMLIRRewriter::getLocationForOp(a3, a2);
  MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  MILToMLIRRewriter::getArgValue(a3, a2, "one_hot_vector_size");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  MILToMLIRRewriter::getArgValue(a3, a2, "on_value");
  MILToMLIRRewriter::getArgValue(a3, a2, "off_value");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::Builder::getUnknownLoc(a3 + 23, v5);
    operator new();
  }

  operator new();
}

void sub_1E0698788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E069879C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06987B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06987C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E06987D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  mlir::OperationState::~OperationState(&a29);
  operator delete(v29);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter62::~GeneratedRewriter62(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter62::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter62 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0698B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter63::~GeneratedRewriter63(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter63::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter63 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "reps");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::TileOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0698EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::TileOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.tile";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::TileOp::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void sub_1E0699018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E069902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter64::~GeneratedRewriter64(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter64::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter64 *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "data");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "updates");
  MILToMLIRRewriter::getArgValue(a3, a2, "mode");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  v26 = 3;
  LODWORD(v25[0]) = 6579297;
  v29 = 3;
  v27 = 0;
  LODWORD(v28[0]) = 6452595;
  v32 = 3;
  v30 = 1;
  LODWORD(v31[0]) = 7107949;
  v35 = 3;
  v33 = 2;
  LODWORD(v34[0]) = 7760228;
  v38 = 3;
  v36 = 3;
  LODWORD(v37[0]) = 7235949;
  v39 = 4;
  v41 = 3;
  strcpy(v40, "max");
  v44 = 6;
  v42 = 5;
  strcpy(v43, "update");
  v45 = 6;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v25, v25);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v28, v28);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v31, v31);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v34, v34);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v37, v37);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v40, v40);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v43, v43);
  v14 = 4;
  strcpy(v13, "mode");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  __p[0] = v15;
  v9 = *(std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v17, v15, __p) + 14);
  v19 = LocationForOp;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v23 = 1283;
    v22[2] = "mps.scatter_nd";
    v22[3] = 14;
    v21 = 259;
    llvm::operator+(v22, &v20, v24);
    llvm::report_fatal_error(v24, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v11);
  mlir::mps::ScatterNDOp::build(a3 + 23, __p, ArgValue, v8, v7, 0, v9);
  mlir::OpBuilder::create((a3 + 184), __p);
  mlir::OperationState::~OperationState(__p);
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v13[0]);
LABEL_5:
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v18[0]);
  (*(*a2 + 200))(__p, a2);
  operator new();
}

void sub_1E0699668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mlir::OperationState::~OperationState(&a65);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
LABEL_3:
    std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(a22);
    _Unwind_Resume(a1);
  }

  operator delete(a9);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(a22);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(uint64_t *result, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = result;
  v7 = result + 1;
  if (result + 1 == a2)
  {
    goto LABEL_20;
  }

  v8 = *(a2 + 55);
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  if (v9 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v8 >= 0)
  {
    v12 = *(a2 + 55);
  }

  else
  {
    v12 = *(a2 + 40);
  }

  if (v8 >= 0)
  {
    v13 = (a2 + 32);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  result = memcmp(v11, v13, v14);
  v15 = v10 < v12;
  if (result)
  {
    v15 = result < 0;
  }

  if (v15)
  {
LABEL_20:
    v16 = *a2;
    if (*v6 == a2)
    {
      v18 = a2;
    }

    else
    {
      if (v16)
      {
        v17 = *a2;
        do
        {
          v18 = v17;
          v17 = *(v17 + 8);
        }

        while (v17);
      }

      else
      {
        v23 = a2;
        do
        {
          v18 = *(v23 + 16);
          v24 = *v18 == v23;
          v23 = v18;
        }

        while (v24);
      }

      v25 = *(a3 + 23);
      v26 = *(v18 + 55);
      if (v26 >= 0)
      {
        v27 = *(v18 + 55);
      }

      else
      {
        v27 = *(v18 + 40);
      }

      if (v26 >= 0)
      {
        v28 = (v18 + 32);
      }

      else
      {
        v28 = *(v18 + 32);
      }

      if (v25 >= 0)
      {
        v29 = *(a3 + 23);
      }

      else
      {
        v29 = a3[1];
      }

      if (v25 >= 0)
      {
        v30 = a3;
      }

      else
      {
        v30 = *a3;
      }

      if (v29 >= v27)
      {
        v31 = v27;
      }

      else
      {
        v31 = v29;
      }

      result = memcmp(v28, v30, v31);
      v32 = v27 < v29;
      if (result)
      {
        v32 = result < 0;
      }

      if (!v32)
      {
        v34 = *v7;
        if (!*v7)
        {
          goto LABEL_93;
        }

        while (1)
        {
          while (1)
          {
            v35 = v34;
            v38 = v34[4];
            v36 = v34 + 4;
            v37 = v38;
            v39 = *(v36 + 23);
            if (v39 >= 0)
            {
              v40 = *(v36 + 23);
            }

            else
            {
              v40 = v36[1];
            }

            if (v39 >= 0)
            {
              v41 = v36;
            }

            else
            {
              v41 = v37;
            }

            if (v40 >= v29)
            {
              v42 = v29;
            }

            else
            {
              v42 = v40;
            }

            v43 = memcmp(v30, v41, v42);
            v44 = v29 < v40;
            if (v43)
            {
              v44 = v43 < 0;
            }

            if (!v44)
            {
              break;
            }

            v34 = *v35;
            if (!*v35)
            {
              goto LABEL_93;
            }
          }

          result = memcmp(v41, v30, v42);
          v45 = v40 < v29;
          if (result)
          {
            v45 = result < 0;
          }

          if (!v45)
          {
            return result;
          }

          v34 = v35[1];
          if (!v34)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v16)
    {
      v33 = (v18 + 8);
    }

    else
    {
      v33 = a2;
    }

    if (!*v33)
    {
      goto LABEL_93;
    }
  }

  else
  {
    result = memcmp(v13, v11, v14);
    v19 = v12 < v10;
    if (result)
    {
      v19 = result < 0;
    }

    if (v19)
    {
      v20 = *(a2 + 8);
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
          v22 = v21;
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v46 = v22;
          v22 = v22[2];
        }

        while (*v22 != v46);
      }

      if (v22 == v7)
      {
        goto LABEL_93;
      }

      v49 = v22[4];
      v47 = v22 + 4;
      v48 = v49;
      v50 = *(v47 + 23);
      if (v50 >= 0)
      {
        v51 = *(v47 + 23);
      }

      else
      {
        v51 = v47[1];
      }

      if (v50 >= 0)
      {
        v52 = v47;
      }

      else
      {
        v52 = v48;
      }

      if (v51 >= v10)
      {
        v53 = v10;
      }

      else
      {
        v53 = v51;
      }

      v54 = memcmp(v11, v52, v53);
      v55 = v10 < v51;
      if (v54)
      {
        v55 = v54 < 0;
      }

      if (v55 || (v56 = *v7) == 0)
      {
LABEL_93:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v57 = v56;
          v60 = v56[4];
          v58 = v56 + 4;
          v59 = v60;
          v61 = *(v58 + 23);
          if (v61 >= 0)
          {
            v62 = *(v58 + 23);
          }

          else
          {
            v62 = v58[1];
          }

          if (v61 >= 0)
          {
            v63 = v58;
          }

          else
          {
            v63 = v59;
          }

          if (v62 >= v10)
          {
            v64 = v10;
          }

          else
          {
            v64 = v62;
          }

          v65 = memcmp(v11, v63, v64);
          v66 = v10 < v62;
          if (v65)
          {
            v66 = v65 < 0;
          }

          if (!v66)
          {
            break;
          }

          v56 = *v57;
          if (!*v57)
          {
            goto LABEL_93;
          }
        }

        result = memcmp(v63, v11, v64);
        v67 = v62 < v10;
        if (result)
        {
          v67 = result < 0;
        }

        if (!v67)
        {
          break;
        }

        v56 = v57[1];
        if (!v56)
        {
          goto LABEL_93;
        }
      }
    }
  }

  return result;
}

void sub_1E0699B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,mlir::mps::ScatterMode>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,mlir::mps::ScatterMode>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__tree_node<std::__value_type<std::string,mlir::mps::ScatterMode>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,mlir::mps::ScatterMode>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_25;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

void anonymous namespace::GeneratedRewriter65::~GeneratedRewriter65(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter65::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter65 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "data");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "updates");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  MILToMLIRRewriter::getArgValue(a3, a2, "mode");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v9);
  v11 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
  v26 = 4;
  strcpy(v25, "axis");
  MIL::IROperation::TryGetParameterValue();
  v12 = MIL::IRValue::GetScalar<int>();
  v13 = mlir::RankedTensorType::get(0, 0, v11, 0);
  __p[0] = mlir::mps::getConstantAttr<int>(v13, v12);
  v14 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
  v34 = 3;
  LODWORD(v33[0]) = 6579297;
  v37 = 3;
  v35 = 0;
  LODWORD(v36[0]) = 6452595;
  v40 = 3;
  v38 = 1;
  LODWORD(v39[0]) = 7107949;
  v43 = 3;
  v41 = 2;
  LODWORD(v42[0]) = 7760228;
  v46 = 3;
  v44 = 3;
  LODWORD(v45[0]) = 7235949;
  v47 = 4;
  v49 = 3;
  strcpy(v48, "max");
  v52 = 6;
  v50 = 5;
  strcpy(v51, "update");
  v53 = 6;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v33, v33);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v36, v36);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v39, v39);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v42, v42);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v45, v45);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v48, v48);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v51, v51);
  v20 = 4;
  strcpy(v19, "mode");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  __p[0] = v21;
  v15 = *(std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, v21, __p) + 14);
  v27 = LocationForOp;
  Context = mlir::Attribute::getContext(&v27);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "mps.scatter";
    v30[3] = 11;
    v29 = 259;
    llvm::operator+(v30, &v28, v32);
    llvm::report_fatal_error(v32, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v17);
  mlir::mps::ScatterOp::build(a3 + 23, __p, ArgValue, v8, v7, (v14 - 16), v15);
  mlir::OpBuilder::create((a3 + 23), __p);
  mlir::OperationState::~OperationState(__p);
  if (v22 < 0)
  {
    operator delete(v21[0]);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_5:
      std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v24[0]);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(v25[0]);
LABEL_6:
      (*(*a2 + 200))(__p, a2);
      operator new();
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v19[0]);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v24[0]);
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_10;
}

void sub_1E069A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mlir::OperationState::~OperationState(&a65);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter66::~GeneratedRewriter66(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter66::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter66 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "data");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "updates");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  MILToMLIRRewriter::getArgValue(a3, a2, "mode");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v9);
  v11 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
  v26 = 4;
  strcpy(v25, "axis");
  MIL::IROperation::TryGetParameterValue();
  v12 = MIL::IRValue::GetScalar<int>();
  v13 = mlir::RankedTensorType::get(0, 0, v11, 0);
  __p[0] = mlir::mps::getConstantAttr<int>(v13, v12);
  v14 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
  v34 = 3;
  LODWORD(v33[0]) = 6579297;
  v37 = 3;
  v35 = 0;
  LODWORD(v36[0]) = 6452595;
  v40 = 3;
  v38 = 1;
  LODWORD(v39[0]) = 7107949;
  v43 = 3;
  v41 = 2;
  LODWORD(v42[0]) = 7760228;
  v46 = 3;
  v44 = 3;
  LODWORD(v45[0]) = 7235949;
  v47 = 4;
  v49 = 3;
  strcpy(v48, "max");
  v52 = 6;
  v50 = 5;
  strcpy(v51, "update");
  v53 = 6;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v33, v33);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v36, v36);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v39, v39);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v42, v42);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v45, v45);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v48, v48);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v51, v51);
  v20 = 4;
  strcpy(v19, "mode");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  __p[0] = v21;
  v15 = *(std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, v21, __p) + 14);
  v27 = LocationForOp;
  Context = mlir::Attribute::getContext(&v27);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterAlongAxisOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "mps.scatter_along_axis";
    v30[3] = 22;
    v29 = 259;
    llvm::operator+(v30, &v28, v32);
    llvm::report_fatal_error(v32, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v17);
  mlir::mps::ScatterAlongAxisOp::build(a3 + 23, __p, ArgValue, v8, v7, (v14 - 16), v15);
  mlir::OpBuilder::create((a3 + 23), __p);
  mlir::OperationState::~OperationState(__p);
  if (v22 < 0)
  {
    operator delete(v21[0]);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_5:
      std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v24[0]);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(v25[0]);
LABEL_6:
      (*(*a2 + 200))(__p, a2);
      operator new();
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v19[0]);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v24[0]);
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_10;
}

void sub_1E069AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mlir::OperationState::~OperationState(&a65);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter67::~GeneratedRewriter67(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter67::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter67 *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  if ((*(*a2 + 192))(a2) == 1)
  {
    IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 0);
    v9 = mlir::IntegerAttr::get(IntegerType, 0);
    UnitAttr = mlir::Builder::getUnitAttr(a3 + 23, v10);
    v15 = LocationForOp;
    Context = mlir::Attribute::getContext(&v15);
    v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id, Context);
    if (v14)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v13);
      mlir::mps::GatherNDOp::build(a3 + 23, __p, ArgValue, v7, v9, UnitAttr);
      mlir::OpBuilder::create((a3 + 184), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v19 = 1283;
    v18[2] = "mps.gather_nd";
    v18[3] = 13;
    v17 = 259;
    llvm::operator+(v18, &v16, v20);
    llvm::report_fatal_error(v20, 1);
  }

  operator new();
}

void sub_1E069B104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E069B118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E069B12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E069B148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter68::~GeneratedRewriter68(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter68::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter68 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  v29[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v8);
    v10 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v22 = 4;
    strcpy(__p, "axis");
    MIL::IROperation::TryGetParameterValue();
    v11 = MIL::IRValue::GetScalar<int>();
    v12 = mlir::RankedTensorType::get(0, 0, v10, 0);
    v29[0] = mlir::mps::getConstantAttr<int>(v12, v11);
    v13 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, v29);
    IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 0);
    v15 = mlir::IntegerAttr::get(IntegerType, 0);
    UnitAttr = mlir::Builder::getUnitAttr(a3 + 23, v16);
    v23 = LocationForOp;
    Context = mlir::Attribute::getContext(&v23);
    v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id, Context);
    if (v20)
    {
      mlir::OperationState::OperationState(v29, LocationForOp, v19);
      mlir::mps::GatherOp::build(a3 + 23, v29, ArgValue, v7, (v13 - 16), v15, UnitAttr);
      mlir::OpBuilder::create((a3 + 23), v29);
      mlir::OperationState::~OperationState(v29);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*a2 + 200))(v29, a2);
      operator new();
    }

    v27 = 1283;
    v26[2] = "mps.gather";
    v26[3] = 10;
    v25 = 259;
    llvm::operator+(v26, &v24, v28);
    llvm::report_fatal_error(v28, 1);
  }

  operator new();
}

void sub_1E069B654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  mlir::OperationState::~OperationState(&a31);
  v37 = a1;
  if (a14 < 0)
  {
    operator delete(__p);
    v37 = a1;
  }

  _Unwind_Resume(v37);
}

void anonymous namespace::GeneratedRewriter69::~GeneratedRewriter69(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter69::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter69 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  v27[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v8);
    v10 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v20 = 4;
    strcpy(__p, "axis");
    MIL::IROperation::TryGetParameterValue();
    v11 = MIL::IRValue::GetScalar<int>();
    v12 = mlir::RankedTensorType::get(0, 0, v10, 0);
    v27[0] = mlir::mps::getConstantAttr<int>(v12, v11);
    v13 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, v27);
    UnitAttr = mlir::Builder::getUnitAttr(a3 + 23, v14);
    v21 = LocationForOp;
    Context = mlir::Attribute::getContext(&v21);
    v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherAlongAxisOp,void>::id, Context);
    if (v18)
    {
      mlir::OperationState::OperationState(v27, LocationForOp, v17);
      mlir::mps::GatherAlongAxisOp::build((a3 + 23), v27, ArgValue, v7, (v13 - 16), UnitAttr);
      mlir::OpBuilder::create((a3 + 23), v27);
      mlir::OperationState::~OperationState(v27);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*a2 + 200))(v27, a2);
      operator new();
    }

    v25 = 1283;
    v24[2] = "mps.gather_along_axis";
    v24[3] = 21;
    v23 = 259;
    llvm::operator+(v24, &v22, v26);
    llvm::report_fatal_error(v26, 1);
  }

  operator new();
}

void sub_1E069BB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  mlir::OperationState::~OperationState(&a31);
  v37 = a1;
  if (a14 < 0)
  {
    operator delete(__p);
    v37 = a1;
  }

  _Unwind_Resume(v37);
}

void anonymous namespace::GeneratedRewriter70::~GeneratedRewriter70(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter70::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter70 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "axes");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069BF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter71::~GeneratedRewriter71(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter71::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter71 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "shape");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "value");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &v8, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069C294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter72::~GeneratedRewriter72(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter72::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter72 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "ref_tensor");
  v6 = MILToMLIRRewriter::getArgValue(a3, a2, "value");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v7 = mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue);
    v12 = LocationForOp;
    Context = mlir::Attribute::getContext(&v12);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, Context);
    if (v10)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v9);
      mlir::mps::BroadcastToOp::build((a3 + 23), __p, v6, (v7 - 16));
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v16 = 1283;
    v15[2] = "mps.broadcast_to";
    v15[3] = 16;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter73::~GeneratedRewriter73(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter73::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter73 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "perm");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069CA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter74::~GeneratedRewriter74(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter74::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter74 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "block_size");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v6);
    v8 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v9 = mlir::RankedTensorType::get(0, 0, v8, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v9, -1);
    v25 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
    v11 = mlir::Builder::getUnknownLoc(a3 + 23, v10);
    v12 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v13 = mlir::RankedTensorType::get(0, 0, v12, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v13, -2);
    v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v11, __p);
    v15 = mlir::Builder::getUnknownLoc(a3 + 23, v14);
    v16 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v17 = mlir::RankedTensorType::get(0, 0, v16, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v17, -3);
    v20 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v15, __p);
    v23 = 10;
    strcpy(__p, "block_size");
    MIL::IROperation::TryGetParameterValue();
    v19 = MIL::IRValue::GetScalar<int>();
    v18 = 0;
    mlir::OpBuilder::create<mlir::mps::DepthToSpace2DOp,mlir::Value &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,int,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v25, &v21, &v20, &v19, &v18);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069CF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E069CF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *mlir::OpBuilder::create<mlir::mps::DepthToSpace2DOp,mlir::Value &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, unsigned int *a7, unsigned __int8 *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "mps.depth_to_space_2d";
    v25[3] = 21;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::mps::DepthToSpace2DOp::build(a1, v28, *a3, *a4 - 16, *a5 - 16, *a6 - 16, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v20;
}

void sub_1E069D108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E069D11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter75::~GeneratedRewriter75(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter75::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter75 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  v34[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "block_size");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v7);
    v9 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v10 = mlir::RankedTensorType::get(0, 0, v9, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v10, -1);
    v11 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, v34);
    v13 = mlir::Builder::getUnknownLoc(a3 + 23, v12);
    v14 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v15 = mlir::RankedTensorType::get(0, 0, v14, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v15, -2);
    v16 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v13, v34);
    v18 = mlir::Builder::getUnknownLoc(a3 + 23, v17);
    v19 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v20 = mlir::RankedTensorType::get(0, 0, v19, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v20, -3);
    v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v18, v34);
    v27 = 10;
    strcpy(__p, "block_size");
    MIL::IROperation::TryGetParameterValue();
    v22 = MIL::IRValue::GetScalar<int>();
    v28 = LocationForOp;
    Context = mlir::Attribute::getContext(&v28);
    v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToDepth2DOp,void>::id, Context);
    if (v25)
    {
      mlir::OperationState::OperationState(v34, LocationForOp, v24);
      mlir::mps::SpaceToDepth2DOp::build(a3 + 23, v34, ArgValue, (v11 - 16), (v16 - 16), (v21 - 16), v22, 0);
      mlir::OpBuilder::create((a3 + 23), v34);
      mlir::OperationState::~OperationState(v34);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*a2 + 200))(v34, a2);
      operator new();
    }

    v32 = 1283;
    v31[2] = "mps.space_to_depth_2d";
    v31[3] = 21;
    v30 = 259;
    llvm::operator+(v31, &v29, v33);
    llvm::report_fatal_error(v33, 1);
  }

  operator new();
}

void sub_1E069D684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  mlir::OperationState::~OperationState(&a31);
  v37 = a1;
  if (a14 < 0)
  {
    operator delete(__p);
    v37 = a1;
  }

  _Unwind_Resume(v37);
}

void anonymous namespace::GeneratedRewriter76::~GeneratedRewriter76(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter76::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter76 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "upscale_factor");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v6);
    v8 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v9 = mlir::RankedTensorType::get(0, 0, v8, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v9, -1);
    v25 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
    v11 = mlir::Builder::getUnknownLoc(a3 + 23, v10);
    v12 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v13 = mlir::RankedTensorType::get(0, 0, v12, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v13, -2);
    v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v11, __p);
    v15 = mlir::Builder::getUnknownLoc(a3 + 23, v14);
    v16 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v17 = mlir::RankedTensorType::get(0, 0, v16, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v17, -3);
    v20 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v15, __p);
    v23 = 14;
    strcpy(__p, "upscale_factor");
    MIL::IROperation::TryGetParameterValue();
    v19 = MIL::IRValue::GetScalar<int>();
    v18 = 1;
    mlir::OpBuilder::create<mlir::mps::DepthToSpace2DOp,mlir::Value &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,int,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v25, &v21, &v20, &v19, &v18);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E069DB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter77::~GeneratedRewriter77(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter77::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter77 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  v34[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "downscale_factor");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v7);
    v9 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v10 = mlir::RankedTensorType::get(0, 0, v9, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v10, -1);
    v11 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, v34);
    v13 = mlir::Builder::getUnknownLoc(a3 + 23, v12);
    v14 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v15 = mlir::RankedTensorType::get(0, 0, v14, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v15, -2);
    v16 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v13, v34);
    v18 = mlir::Builder::getUnknownLoc(a3 + 23, v17);
    v19 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
    v20 = mlir::RankedTensorType::get(0, 0, v19, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v20, -3);
    v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v18, v34);
    v27 = 16;
    strcpy(__p, "downscale_factor");
    MIL::IROperation::TryGetParameterValue();
    v22 = MIL::IRValue::GetScalar<unsigned int>();
    v28 = LocationForOp;
    Context = mlir::Attribute::getContext(&v28);
    v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToDepth2DOp,void>::id, Context);
    if (v25)
    {
      mlir::OperationState::OperationState(v34, LocationForOp, v24);
      mlir::mps::SpaceToDepth2DOp::build(a3 + 23, v34, ArgValue, (v11 - 16), (v16 - 16), (v21 - 16), v22, 1);
      mlir::OpBuilder::create((a3 + 23), v34);
      mlir::OperationState::~OperationState(v34);
      if (v27 < 0)
      {
        operator delete(*__p);
      }

      (*(*a2 + 200))(v34, a2);
      operator new();
    }

    v32 = 1283;
    v31[2] = "mps.space_to_depth_2d";
    v31[3] = 21;
    v30 = 259;
    llvm::operator+(v31, &v29, v33);
    llvm::report_fatal_error(v33, 1);
  }

  operator new();
}

void sub_1E069E134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  mlir::OperationState::~OperationState(&a31);
  v37 = a1;
  if (a14 < 0)
  {
    operator delete(__p);
    v37 = a1;
  }

  _Unwind_Resume(v37);
}

void anonymous namespace::GeneratedRewriter78::~GeneratedRewriter78(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter78::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter78 *this, const MIL::IROperation *a2, mlir::UnknownLoc **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "lower");
  MILToMLIRRewriter::getArgValue(a3, a2, "upper");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v7);
  v9 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
  v25 = 5;
  strcpy(v24, "lower");
  MIL::IROperation::TryGetParameterValue();
  v10 = MIL::IRValue::GetScalar<int>();
  v11 = mlir::RankedTensorType::get(0, 0, v9, 0);
  __p[0] = mlir::mps::getConstantAttr<int>(v11, v10);
  v12 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
  v14 = mlir::Builder::getUnknownLoc(a3 + 23, v13);
  v15 = mlir::IntegerType::get(a3[23], 0x20u, 1u);
  v23 = 5;
  strcpy(v22, "upper");
  MIL::IROperation::TryGetParameterValue();
  v16 = MIL::IRValue::GetScalar<int>();
  v17 = mlir::RankedTensorType::get(0, 0, v15, 0);
  __p[0] = mlir::mps::getConstantAttr<int>(v17, v16);
  v18 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v14, __p);
  v26 = LocationForOp;
  Context = mlir::Attribute::getContext(&v26);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BandPartOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "mps.band_part";
    v29[3] = 13;
    v28 = 259;
    llvm::operator+(v29, &v27, v31);
    llvm::report_fatal_error(v31, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v20);
  mlir::mps::BandPartOp::build((a3 + 23), __p, ArgValue, (v12 - 16), (v18 - 16));
  mlir::OpBuilder::create((a3 + 23), __p);
  mlir::OperationState::~OperationState(__p);
  if (v23 < 0)
  {
    operator delete(v22[0]);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v24[0]);
LABEL_5:
  (*(*a2 + 200))(__p, a2);
  operator new();
}

void sub_1E069E70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  mlir::OperationState::~OperationState(&a38);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void MILToMLIRRewriter::~MILToMLIRRewriter(MILToMLIRRewriter *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    do
    {
      v10 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v10;
    }

    while (v10);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    do
    {
      v11 = *v4;
      if (*(v4 + 63) < 0)
      {
        operator delete(v4[5]);
        if (*(v4 + 39) < 0)
        {
LABEL_22:
          operator delete(v4[2]);
        }
      }

      else if (*(v4 + 39) < 0)
      {
        goto LABEL_22;
      }

      operator delete(v4);
      v4 = v11;
    }

    while (v11);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    do
    {
      v12 = *v6;
      v13 = *(v6 + 5);
      if (v13)
      {
        *(v6 + 6) = v13;
        operator delete(v13);
      }

      if (v6[39] < 0)
      {
        operator delete(*(v6 + 2));
      }

      operator delete(v6);
      v6 = v12;
    }

    while (v12);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    do
    {
      v14 = *v8;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v14;
    }

    while (v14);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

GPU::FusionOpHandler *GPU::FusionOpHandler::FusionOpHandler(GPU::FusionOpHandler *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4, int a5)
{
  v8 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v8 = &unk_1F5B466D0;
  *(v8 + 15) = a3;
  *(this + 32) = mlir::mpsx::FusionOp::getFusionType(v8 + 15);
  *(this + 17) = 0;
  v9 = (((*(this + 15) + 16 * ((*(*(this + 15) + 44) >> 23) & 1) + ((*(*(this + 15) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 15) + 40));
  *(this + 18) = v9;
  if ((*v9 == v9 || *(v9[1] + 8) != v9) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = *(*(this + 18) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  *(this + 19) = v11;
  if (a5)
  {
    v12 = *(this + 32);
    switch(v12)
    {
      case 3:
        operator new();
      case 2:
        operator new();
      case 1:
        operator new();
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  return this;
}

void sub_1E069FCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  GPU::FusionOpHandler::~FusionOpHandler(v20);
  MEMORY[0x1E12E5B90](v20, 0x10A1C40A54699C3);
  GPU::BaseOpHandler::~BaseOpHandler(v19);
  _Unwind_Resume(a1);
}

void GPU::FusionReturnOpHandler::encodeNDArrayOp(GPU::FusionReturnOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v26 = a3;
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength((this + 120), 0);
  v5 = ODSResultIndexAndLength;
  v6 = *(this + 15);
  v7 = *(v6 + 36);
  v8 = v6 - 16;
  if (v7)
  {
    NextResultAtOffset = v8;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  v10 = ODSResultIndexAndLength;
  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength((this + 128), 0);
  v12 = (HIDWORD(v5) + v5);
  v13 = *(this + 16);
  if ((*(v13 + 46) & 0x80) != 0)
  {
    v14 = *(v13 + 72);
    if (v12 == v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    if (v12 == v5)
    {
      goto LABEL_17;
    }
  }

  v15 = 0;
  v16 = v12 - v10;
  v17 = v14 + 32 * ODSOperandIndexAndLength;
  v18 = MEMORY[0x1E69744E8];
  do
  {
    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v15);
    v20 = (*(**(this + 2) + 48))(*(this + 2), *(v17 + 32 * v15 + 24), 0);
    v21 = [v20 mpsndarray];
    v22 = v21;
    if (*(v21 + *v18) == 1)
    {
      v23 = *v19;
      if (*v19)
      {
        v24 = 0;
        do
        {
          ++v24;
          v23 = *v23;
        }

        while (v23);
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      [v21 setReadCount:{objc_msgSend(v21, "readCount") + v25}];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), v19, v20);

    ++v15;
  }

  while (v15 != v16);
LABEL_17:
}

void GPU::FusionOpHandler::~FusionOpHandler(GPU::FusionOpHandler *this)
{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::QuantizedConv2DFusionOpHandler::encodeNDArrayOp(GPU::QuantizedConv2DFusionOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v55 = a3;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength((this + 120), 0);
  v6 = *(this + 15);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 72);
    v8 = *(this + 19);
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v54 = *(this + 19);
    v9 = *(v54 + 48);
    v10 = *(v54 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
  v12 = v7 + 32 * ODSOperandIndexAndLength;
  v13 = MEMORY[0x1E69744E8];
  do
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), *(v12 + 32 * v11 + 24), 0);
    v15 = [v14 mpsndarray];
    v16 = v15;
    if (*(v15 + *v13) == 1)
    {
      v17 = **v9;
      if (v17)
      {
        v18 = 0;
        do
        {
          ++v18;
          v17 = *v17;
        }

        while (v17);
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [v15 setReadCount:{objc_msgSend(v15, "readCount") + v19}];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), *v9, v14);

    ++v11;
    ++v9;
  }

  while (v9 != v10);
LABEL_12:
  if (*(this + 4))
  {
    v20 = [(NSArray *)v55 objectAtIndexedSubscript:0];
    v21 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v22 = *(this + 1);
    v23 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v24 = *(a2 + 1);
    v25 = [v20 mpsndarray];
    v26 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v22 encodeToMPSCommandEncoder:v23 commandBuffer:v24 sourceArrays:v21 resultState:0 destinationArray:v25 kernelDAGObject:v26];
  }

  else
  {
    v27 = *(*(this + 21) + 72);
    v28 = *(v27 + 24);
    v29 = *(v27 + 56);
    v30 = *(*(this + 22) + 72);
    v31 = *(v30 + 24);
    v32 = *(v30 + 56);
    v20 = [MEMORY[0x1E695DF70] array];
    v33 = (*(**(this + 2) + 48))(*(this + 2), v28, 0);
    v34 = [v33 mpsndarray];
    [v20 addObject:v34];

    v35 = (*(**(this + 2) + 48))(*(this + 2), v31, 0);
    v36 = [v35 mpsndarray];
    [v20 addObject:v36];

    v37 = (*(**(this + 2) + 48))(*(this + 2), v29, 0);
    v38 = [v37 mpsndarray];
    [v20 addObject:v38];

    v39 = (*(**(this + 2) + 48))(*(this + 2), v32, 0);
    v40 = [v39 mpsndarray];
    [v20 addObject:v40];

    ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength((this + 120), 0);
    v42 = ODSResultIndexAndLength;
    v43 = *(this + 15);
    v44 = *(v43 + 36);
    v45 = v43 - 16;
    if (v44)
    {
      NextResultAtOffset = v45;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v47 = (HIDWORD(v42) + v42);
    v48 = v47 - v42;
    if (v47 == v42)
    {
      v21 = 0;
    }

    else
    {
      v49 = 0;
      v50 = 0;
      do
      {
        v51 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v50);
        v21 = (*(**(this + 2) + 80))(*(this + 2), v51, *(a2 + 1), 0, 0, 1);

        ++v50;
        v49 = v21;
      }

      while (v48 != v50);
    }

    v52 = *(this + 1);
    v23 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v53 = *(a2 + 1);
    v25 = [v21 mpsndarray];
    [v52 encodeToMPSCommandEncoder:v23 commandBuffer:v53 sourceArrays:v20 resultState:0 destinationArray:v25 kernelDAGObject:0];
  }
}

void GPU::QuantizedMatMulFusionOpHandler::encodeNDArrayOp(GPU::QuantizedMatMulFusionOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v81 = a3;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength((this + 120), 0);
  v6 = *(this + 15);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 72);
    v8 = *(this + 19);
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v77 = *(this + 19);
    v9 = *(v77 + 48);
    v10 = *(v77 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
  v12 = v7 + 32 * ODSOperandIndexAndLength;
  v13 = MEMORY[0x1E69744E8];
  do
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), *(v12 + 32 * v11 + 24), 0);
    v15 = [v14 mpsndarray];
    v16 = v15;
    if (*(v15 + *v13) == 1)
    {
      v17 = **v9;
      if (v17)
      {
        v18 = 0;
        do
        {
          ++v18;
          v17 = *v17;
        }

        while (v17);
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [v15 setReadCount:{objc_msgSend(v15, "readCount") + v19}];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), *v9, v14);

    ++v11;
    ++v9;
  }

  while (v9 != v10);
LABEL_12:
  v20 = *(*(this + 21) + 72);
  v21 = *(v20 + 24);
  v82 = *(v20 + 56);
  v22 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v82 = *(*(*(this + 21) + 72) + 88);
  v23 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v82 = *(*(*(this + 21) + 72) + 120);
  v24 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v25 = *(*(this + 22) + 72);
  v26 = *(v25 + 24);
  v82 = *(v25 + 56);
  v80 = v24;
  v27 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v82 = *(*(*(this + 22) + 72) + 88);
  v28 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v82 = *(*(*(this + 22) + 72) + 120);
  DefiningOp = mlir::Value::getDefiningOp(&v82);
  if (*(this + 4))
  {
    v30 = [(NSArray *)v81 objectAtIndexedSubscript:0];
    v31 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v32 = [MEMORY[0x1E695DF70] array];
    v33 = [v31 objectAtIndexedSubscript:0];
    if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated((this + 160)))
    {
      v34 = [v33 descriptor];
      [v34 transposeDimension:0 withDimension:1];
      v35 = [v33 arrayViewWithDescriptor:v34];

      v33 = v35;
    }

    v36 = [v31 objectAtIndexedSubscript:1];
    if (mlir::mps::MatMulOp::getTransposeRhs((this + 160)))
    {
      v37 = [v36 descriptor];
      [v37 transposeDimension:0 withDimension:1];
      v38 = [v36 arrayViewWithDescriptor:v37];

      v36 = v38;
    }

    [v32 addObject:v33];
    [v32 addObject:v36];
    for (i = 2; i < [v31 count]; ++i)
    {
      v40 = [v31 objectAtIndexedSubscript:i];
      [v32 addObject:v40];
    }

    v41 = *(this + 1);
    v42 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v43 = *(a2 + 1);
    v44 = [v30 mpsndarray];
    v45 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v41 encodeToMPSCommandEncoder:v42 commandBuffer:v43 sourceArrays:v32 resultState:0 destinationArray:v44 kernelDAGObject:v45];
  }

  else
  {
    v78 = *(*(DefiningOp + 72) + 24);
    v79 = v28;
    v30 = [MEMORY[0x1E695DF70] array];
    v46 = (*(**(this + 2) + 48))(*(this + 2), v21, 0);
    v31 = [v46 mpsndarray];

    if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated((this + 160)))
    {
      v47 = [v31 descriptor];
      [v47 transposeDimension:0 withDimension:1];
      v48 = [v31 arrayViewWithDescriptor:v47];

      v31 = v48;
    }

    v49 = (*(**(this + 2) + 48))(*(this + 2), v26, 0);
    v32 = [v49 mpsndarray];

    if (mlir::mps::MatMulOp::getTransposeRhs((this + 160)))
    {
      v50 = [v32 descriptor];
      [v50 transposeDimension:0 withDimension:1];
      v51 = [v32 arrayViewWithDescriptor:v50];

      v32 = v51;
    }

    [v30 addObject:v31];
    [v30 addObject:v32];
    v52 = (*(**(this + 2) + 48))(*(this + 2), v22, 0);
    v53 = [v52 mpsndarray];
    [v30 addObject:v53];

    v54 = (*(**(this + 2) + 48))(*(this + 2), v23, 0);
    v55 = [v54 mpsndarray];
    [v30 addObject:v55];

    v56 = (*(**(this + 2) + 48))(*(this + 2), v80, 0);
    v57 = [v56 mpsndarray];
    [v30 addObject:v57];

    v58 = (*(**(this + 2) + 48))(*(this + 2), v27, 0);
    v59 = [v58 mpsndarray];
    [v30 addObject:v59];

    v60 = (*(**(this + 2) + 48))(*(this + 2), v79, 0);
    v61 = [v60 mpsndarray];
    [v30 addObject:v61];

    v62 = (*(**(this + 2) + 48))(*(this + 2), v78, 0);
    v63 = [v62 mpsndarray];
    [v30 addObject:v63];

    ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength((this + 120), 0);
    v65 = ODSResultIndexAndLength;
    v66 = *(this + 15);
    v67 = *(v66 + 36);
    v68 = v66 - 16;
    if (v67)
    {
      NextResultAtOffset = v68;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v70 = (HIDWORD(v65) + v65);
    v71 = v70 - v65;
    if (v70 == v65)
    {
      v33 = 0;
    }

    else
    {
      v72 = 0;
      v73 = 0;
      do
      {
        v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v73);
        v33 = (*(**(this + 2) + 80))(*(this + 2), v74, *(a2 + 1), 0, 0, 1);

        ++v73;
        v72 = v33;
      }

      while (v71 != v73);
    }

    v75 = *(this + 1);
    v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v76 = *(a2 + 1);
    v42 = [v33 mpsndarray];
    [v75 encodeToMPSCommandEncoder:v36 commandBuffer:v76 sourceArrays:v30 resultState:0 destinationArray:v42 kernelDAGObject:0];
  }
}