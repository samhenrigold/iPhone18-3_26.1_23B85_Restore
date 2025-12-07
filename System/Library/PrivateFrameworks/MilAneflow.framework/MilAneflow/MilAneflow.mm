void MIL::ANEMachineIR::Interpreter::PeMulCpu::Run(ANEMachineIR::Validators *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v281 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 6)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 6)
  {
    goto LABEL_10;
  }

  if (*v6 != 1834968432 || *(v6 + 4) != 27765)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    v10 = std::string::basic_string[abi:ne200100]<0>(v279, "pe_mul");
    v11 = std::string::insert(v10, 0, "Expected ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v235.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v235.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v235, " op. Got ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v237.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v237.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = (*(*a1 + 56))(a1);
    v16 = *(v15 + 23);
    if (v16 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = *v15;
    }

    if (v16 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = *(v15 + 8);
    }

    v19 = std::string::append(&v237, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v19->__r_.__value_.__l + 2);
    *v9 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v237.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    if (v280 < 0)
    {
      v21 = v279[0];
LABEL_22:
      operator delete(v21);
      return;
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v237, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v237);
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v237, "y");
  v23 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v237);
  if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_28;
    }

LABEL_33:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for x");
    return;
  }

  operator delete(v237.__r_.__value_.__l.__data_);
  if (!InterpretedTensorValue)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (!v23)
  {
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for y");
    return;
  }

  v237.__r_.__value_.__s.__data_[0] = 0;
  v237.__r_.__value_.__s.__data_[4] = 0;
  v237.__r_.__value_.__s.__data_[8] = 0;
  v237.__r_.__value_.__s.__data_[12] = 0;
  v237.__r_.__value_.__s.__data_[16] = 0;
  v237.__r_.__value_.__s.__data_[18] = 0;
  LOBYTE(v238) = 0;
  v240 = 0;
  LOBYTE(v241) = 0;
  v243 = 0;
  v244 = 0;
  v245 = 0;
  v246 = 0;
  v247 = 0;
  LOBYTE(v248) = 0;
  v250 = 0;
  ANEMachineIR::Validators::ParsePeElementWiseBinaryParamValues(&v235, a1, &v237);
  if ((MIL::ValidationResult::IsGood(&v235) & 1) == 0)
  {
    *a3 = 3;
    MIL::MILResult::GetMessageWithLocation((a3 + 8), &v235);
    MEMORY[0x259CA8F00](&v235);
    goto LABEL_198;
  }

  MEMORY[0x259CA8F00](&v235);
  if (v240 == 1)
  {
    *a3 = 5;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unimplemented 'reduction': rdar://86732114");
    goto LABEL_198;
  }

  *&v235.__r_.__value_.__r.__words[1] = 0uLL;
  v236 = 0;
  MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v235, v279);
  if (!LODWORD(v235.__r_.__value_.__l.__data_))
  {
    v24 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
    v25 = (*(*v24 + 88))(v24);
    v26 = (*(*v23 + 32))(v23);
    v27 = (*(*v26 + 88))(v26);
    OutputType = MIL::IROperation::GetOutputType(a1);
    v29 = MIL::IRValueType::AsTensorType(OutputType);
    v30 = (*(*v29 + 88))(v29);
    v31 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
    ANEMachineIR::Utils::GetStaticTensorShape(v234, v31, v32);
    v33 = (*(*v23 + 32))(v23);
    ANEMachineIR::Utils::GetStaticTensorShape(v233, v33, v34);
    v35 = MIL::IROperation::GetOutputType(a1);
    v36 = MIL::IRValueType::AsTensorType(v35);
    ANEMachineIR::Utils::GetStaticTensorShape(v232, v36, v37);
    switch(v25)
    {
      case 4:
        switch(v27)
        {
          case 14:
            switch(v30)
            {
              case 14:
                v200 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                Data = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v202 = *&v237.__r_.__value_.__l.__data_;
                v203 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v274, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v274);
                (*(*a1 + 200))(&v228, a1);
                v204 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v205 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v205);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v204, &v251);
                v206 = v251;
                v251 = 0;
                if (v206)
                {
                  (*(*v206 + 1))(v206);
                }

                goto LABEL_188;
              case 9:
                v158 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v159 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v160 = *&v237.__r_.__value_.__l.__data_;
                v161 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v273, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v273);
                (*(*a1 + 200))(&v228, a1);
                v162 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v163 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v163);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v162, &v251);
                v164 = v251;
                v251 = 0;
                if (v164)
                {
                  (*(*v164 + 1))(v164);
                }

                goto LABEL_188;
              case 4:
                v88 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v89 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v90 = *&v237.__r_.__value_.__l.__data_;
                v91 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v275, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v275);
                (*(*a1 + 200))(&v228, a1);
                v92 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v93 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v93);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v92, &v251);
                v94 = v251;
                v251 = 0;
                if (v94)
                {
                  (*(*v94 + 1))(v94);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 9:
            switch(v30)
            {
              case 14:
                v151 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v152 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v153 = *&v237.__r_.__value_.__l.__data_;
                v154 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v271, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v271);
                (*(*a1 + 200))(&v228, a1);
                v155 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v156 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v156);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v155, &v251);
                v157 = v251;
                v251 = 0;
                if (v157)
                {
                  (*(*v157 + 1))(v157);
                }

                goto LABEL_188;
              case 9:
                v123 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v124 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v125 = *&v237.__r_.__value_.__l.__data_;
                v126 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v270, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v270);
                (*(*a1 + 200))(&v228, a1);
                v127 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v128 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v128);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v127, &v251);
                v129 = v251;
                v251 = 0;
                if (v129)
                {
                  (*(*v129 + 1))(v129);
                }

                goto LABEL_188;
              case 4:
                v74 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v75 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v76 = *&v237.__r_.__value_.__l.__data_;
                v77 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v272, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v272);
                (*(*a1 + 200))(&v228, a1);
                v78 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v79 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v79);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v78, &v251);
                v80 = v251;
                v251 = 0;
                if (v80)
                {
                  (*(*v80 + 1))(v80);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 4:
            switch(v30)
            {
              case 14:
                v207 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v208 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v209 = *&v237.__r_.__value_.__l.__data_;
                v210 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v277, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v277);
                (*(*a1 + 200))(&v228, a1);
                v211 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v212 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v212);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v211, &v251);
                v213 = v251;
                v251 = 0;
                if (v213)
                {
                  (*(*v213 + 1))(v213);
                }

                goto LABEL_188;
              case 9:
                v172 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v173 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v174 = *&v237.__r_.__value_.__l.__data_;
                v175 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v276, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v276);
                (*(*a1 + 200))(&v228, a1);
                v176 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v177 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v177);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v176, &v251);
                v178 = v251;
                v251 = 0;
                if (v178)
                {
                  (*(*v178 + 1))(v178);
                }

                goto LABEL_188;
              case 4:
                v52 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v53 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v54 = *&v237.__r_.__value_.__l.__data_;
                v55 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v278, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v278);
                (*(*a1 + 200))(&v228, a1);
                v56 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v57 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v57);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v56, &v251);
                v58 = v251;
                v251 = 0;
                if (v58)
                {
                  (*(*v58 + 1))(v58);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
        }

        break;
      case 9:
        switch(v27)
        {
          case 14:
            switch(v30)
            {
              case 14:
                v144 = MIL::IRTensorValue::GetDataView<signed char>();
                v145 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v146 = *&v237.__r_.__value_.__l.__data_;
                v147 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v256, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v256);
                (*(*a1 + 200))(&v228, a1);
                v148 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v149 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v149);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v148, &v251);
                v150 = v251;
                v251 = 0;
                if (v150)
                {
                  (*(*v150 + 1))(v150);
                }

                goto LABEL_188;
              case 9:
                v116 = MIL::IRTensorValue::GetDataView<signed char>();
                v117 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v118 = *&v237.__r_.__value_.__l.__data_;
                v119 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v255, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v255);
                (*(*a1 + 200))(&v228, a1);
                v120 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v121 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v121);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v120, &v251);
                v122 = v251;
                v251 = 0;
                if (v122)
                {
                  (*(*v122 + 1))(v122);
                }

                goto LABEL_188;
              case 4:
                v67 = MIL::IRTensorValue::GetDataView<signed char>();
                v68 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v69 = *&v237.__r_.__value_.__l.__data_;
                v70 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v257, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v257);
                (*(*a1 + 200))(&v228, a1);
                v71 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v72 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v72);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v71, &v251);
                v73 = v251;
                v251 = 0;
                if (v73)
                {
                  (*(*v73 + 1))(v73);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 9:
            switch(v30)
            {
              case 14:
                v109 = MIL::IRTensorValue::GetDataView<signed char>();
                v110 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v111 = *&v237.__r_.__value_.__l.__data_;
                v112 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v253, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v253);
                (*(*a1 + 200))(&v228, a1);
                v113 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v114 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v114);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v113, &v251);
                v115 = v251;
                v251 = 0;
                if (v115)
                {
                  (*(*v115 + 1))(v115);
                }

                goto LABEL_188;
              case 9:
                v102 = MIL::IRTensorValue::GetDataView<signed char>();
                v103 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v104 = *&v237.__r_.__value_.__l.__data_;
                v105 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v252, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v252);
                (*(*a1 + 200))(&v228, a1);
                v106 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v107 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v107);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v106, &v251);
                v108 = v251;
                v251 = 0;
                if (v108)
                {
                  (*(*v108 + 1))(v108);
                }

                goto LABEL_188;
              case 4:
                v60 = MIL::IRTensorValue::GetDataView<signed char>();
                v61 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v62 = *&v237.__r_.__value_.__l.__data_;
                v63 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v254, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v254);
                (*(*a1 + 200))(&v228, a1);
                v64 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v65 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v65);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v64, &v251);
                v66 = v251;
                v251 = 0;
                if (v66)
                {
                  (*(*v66 + 1))(v66);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 4:
            switch(v30)
            {
              case 14:
                v165 = MIL::IRTensorValue::GetDataView<signed char>();
                v166 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v167 = *&v237.__r_.__value_.__l.__data_;
                v168 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v259, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v259);
                (*(*a1 + 200))(&v228, a1);
                v169 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v170 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v170);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v169, &v251);
                v171 = v251;
                v251 = 0;
                if (v171)
                {
                  (*(*v171 + 1))(v171);
                }

                goto LABEL_188;
              case 9:
                v130 = MIL::IRTensorValue::GetDataView<signed char>();
                v131 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v132 = *&v237.__r_.__value_.__l.__data_;
                v133 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v258, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v258);
                (*(*a1 + 200))(&v228, a1);
                v134 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v135 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v135);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v134, &v251);
                v136 = v251;
                v251 = 0;
                if (v136)
                {
                  (*(*v136 + 1))(v136);
                }

                goto LABEL_188;
              case 4:
                v45 = MIL::IRTensorValue::GetDataView<signed char>();
                v46 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v47 = *&v237.__r_.__value_.__l.__data_;
                v48 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v260, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v260);
                (*(*a1 + 200))(&v228, a1);
                v49 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v50 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v50);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v49, &v251);
                v51 = v251;
                v251 = 0;
                if (v51)
                {
                  (*(*v51 + 1))(v51);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
        }

        break;
      case 14:
        switch(v27)
        {
          case 14:
            switch(v30)
            {
              case 14:
                v214 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v215 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v216 = *&v237.__r_.__value_.__l.__data_;
                v217 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v265, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v265);
                (*(*a1 + 200))(&v228, a1);
                v218 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v219 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v219);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v218, &v251);
                v220 = v251;
                v251 = 0;
                if (v220)
                {
                  (*(*v220 + 1))(v220);
                }

                goto LABEL_188;
              case 9:
                v186 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v187 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v188 = *&v237.__r_.__value_.__l.__data_;
                v189 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v264, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v264);
                (*(*a1 + 200))(&v228, a1);
                v190 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v191 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v191);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v190, &v251);
                v192 = v251;
                v251 = 0;
                if (v192)
                {
                  (*(*v192 + 1))(v192);
                }

                goto LABEL_188;
              case 4:
                v95 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v96 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v97 = *&v237.__r_.__value_.__l.__data_;
                v98 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v266, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v266);
                (*(*a1 + 200))(&v228, a1);
                v99 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v100 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v100);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v99, &v251);
                v101 = v251;
                v251 = 0;
                if (v101)
                {
                  (*(*v101 + 1))(v101);
                }

                goto LABEL_188;
            }

            break;
          case 9:
            switch(v30)
            {
              case 14:
                v179 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v180 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v181 = *&v237.__r_.__value_.__l.__data_;
                v182 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v262, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v262);
                (*(*a1 + 200))(&v228, a1);
                v183 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v184 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v184);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v183, &v251);
                v185 = v251;
                v251 = 0;
                if (v185)
                {
                  (*(*v185 + 1))(v185);
                }

                goto LABEL_188;
              case 9:
                v137 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v138 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v139 = *&v237.__r_.__value_.__l.__data_;
                v140 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v261, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v261);
                (*(*a1 + 200))(&v228, a1);
                v141 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v142 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v142);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v141, &v251);
                v143 = v251;
                v251 = 0;
                if (v143)
                {
                  (*(*v143 + 1))(v143);
                }

                goto LABEL_188;
              case 4:
                v81 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v82 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v83 = *&v237.__r_.__value_.__l.__data_;
                v84 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v263, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v263);
                (*(*a1 + 200))(&v228, a1);
                v85 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v86 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v86);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v85, &v251);
                v87 = v251;
                v251 = 0;
                if (v87)
                {
                  (*(*v87 + 1))(v87);
                }

                goto LABEL_188;
            }

            break;
          case 4:
            switch(v30)
            {
              case 14:
                v221 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v222 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v223 = *&v237.__r_.__value_.__l.__data_;
                v224 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v268, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v268);
                (*(*a1 + 200))(&v228, a1);
                v225 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v226 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v226);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v225, &v251);
                v227 = v251;
                v251 = 0;
                if (v227)
                {
                  (*(*v227 + 1))(v227);
                }

                goto LABEL_188;
              case 9:
                v193 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v194 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v195 = *&v237.__r_.__value_.__l.__data_;
                v196 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v267, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v267);
                (*(*a1 + 200))(&v228, a1);
                v197 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v198 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v198);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v197, &v251);
                v199 = v251;
                v251 = 0;
                if (v199)
                {
                  (*(*v199 + 1))(v199);
                }

                goto LABEL_188;
              case 4:
                v38 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v39 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v40 = *&v237.__r_.__value_.__l.__data_;
                v41 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v269, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v269);
                (*(*a1 + 200))(&v228, a1);
                v42 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v43 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v43);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v42, &v251);
                v44 = v251;
                v251 = 0;
                if (v44)
                {
                  (*(*v44 + 1))(v44);
                }

LABEL_188:
                v251 = &v228;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v251);
                *a3 = 0;
                std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                goto LABEL_190;
            }

            break;
          default:
            goto LABEL_72;
        }

LABEL_115:
        v59 = "Unimplemented output dtype";
        goto LABEL_116;
      default:
        v59 = "Unimplemented x dtype";
LABEL_116:
        *a3 = 3;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), v59);
LABEL_190:
        if (v232[0])
        {
          v232[1] = v232[0];
          operator delete(v232[0]);
        }

        if (v233[0])
        {
          v233[1] = v233[0];
          operator delete(v233[0]);
        }

        if (v234[0])
        {
          v234[1] = v234[0];
          operator delete(v234[0]);
        }

        goto LABEL_196;
    }

LABEL_72:
    v59 = "Unimplemented y dtype";
    goto LABEL_116;
  }

  *a3 = v235.__r_.__value_.__l.__data_;
  *(a3 + 8) = *&v235.__r_.__value_.__r.__words[1];
  *(a3 + 24) = v236;
  *&v235.__r_.__value_.__r.__words[1] = 0uLL;
  v236 = 0;
LABEL_196:
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v279);
  if (SHIBYTE(v236) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__size_);
  }

LABEL_198:
  if (v250 == 1 && v249 < 0)
  {
    operator delete(v248);
  }

  if (v243 == 1 && v241)
  {
    v242 = v241;
    operator delete(v241);
  }

  if (v240 == 1 && v239 < 0)
  {
    v21 = v238;
    goto LABEL_22;
  }
}

void sub_259901E80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v40 = __cxa_begin_catch(a1);
    *v36 = 4;
    v41 = (*(*v40 + 16))(v40);
    std::string::basic_string[abi:ne200100]<0>((v36 + 8), v41);
    __cxa_end_catch();
    JUMPOUT(0x259901D08);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v37 - 136);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  ANEMachineIR::Validators::PeElementWiseBinaryParamValues::~PeElementWiseBinaryParamValues(&a36);
  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v19 = a5[1];
    if (*a5 != v19)
    {
      v20 = a4[1];
      if (*a4 != v20 && v20 - *a4 != v19 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v21 = a6[1];
    if (*a6 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v24 = __p;
  v25 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = 65536.0;
  if (a10 <= 65536.0)
  {
    v29 = a10;
  }

  if (v29 >= -65536.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_83;
  }

  v31 = 0;
  v32 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v33 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v34 = *(v85 + 4);
  v64 = v32;
  do
  {
    if (v32)
    {
      v35 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v40 = v39;
                    if (a2)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    if (v40 <= 65536.0)
                    {
                      v44 = v40;
                    }

                    else
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = 0.0;
                    v49 = 0.0;
                    if ((v30 * v44) != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp((v30 * v44), __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v47 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v47 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    v58 = std::function<float ()(float)>::operator()(a8, v55);
                    v60 = MIL::Fp16::FromFloat(v58, v59);
                  }
                }
              }
            }
          }
        }

        ++v35;
        v32 = v64;
      }

      while (v35 != v64);
    }

    ++v31;
  }

  while (v31 != v62);
  v24 = __p;
  if (__p)
  {
LABEL_83:
    v84 = v24;
    operator delete(v24);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_259903E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  v17 = a2;
  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v86 - __p;
  if (v86 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v92 - v91;
  if (v92 == v91)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_90;
  }

  v81 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v67 = *(v91 + 2);
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v34 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v35 = *(v87 + 4);
  v66 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (v17)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v31 * v45) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v31 * v45), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = v17;
                    v57 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v48 * v49), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v57);
                    if (v60 == INFINITY)
                    {
                      LOBYTE(v61) = -1;
                    }

                    else if (v60 == -INFINITY)
                    {
                      LOBYTE(v61) = 0;
                    }

                    else
                    {
                      v62 = llroundf(v60);
                      if (v62 >= 255)
                      {
                        v62 = 255;
                      }

                      v61 = v62 & ~(v62 >> 31);
                    }

                    v17 = v56;
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v66;
      }

      while (v36 != v66);
    }

    ++v32;
  }

  while (v32 != v64);
  v25 = __p;
  if (__p)
  {
LABEL_90:
    v86 = v25;
    operator delete(v25);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_25990461C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_92;
  }

  v80 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v34 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  v65 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (a2)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v31 * v45) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v31 * v45), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v56);
                    if (v59 == INFINITY)
                    {
                      v60 = 127;
                    }

                    else if (v59 == -INFINITY)
                    {
                      v60 = 0x80;
                    }

                    else
                    {
                      v61 = llroundf(v59);
                      if (v61 >= 127)
                      {
                        v61 = 127;
                      }

                      if (v61 <= -128)
                      {
                        v60 = 0x80;
                      }

                      else
                      {
                        v60 = v61;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v65;
      }

      while (v36 != v65);
    }

    ++v32;
  }

  while (v32 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_92:
    v85 = v25;
    operator delete(v25);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_259904DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,unsigned char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v19 = a5[1];
    if (*a5 != v19)
    {
      v20 = a4[1];
      if (*a4 != v20 && v20 - *a4 != v19 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v21 = a6[1];
    if (*a6 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v24 = __p;
  v25 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = 65536.0;
  if (a10 <= 65536.0)
  {
    v29 = a10;
  }

  if (v29 >= -65536.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_78;
  }

  v31 = 0;
  v32 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v33 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v34 = *(v85 + 4);
  v64 = v32;
  do
  {
    if (v32)
    {
      v35 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v40 = v39;
                    if (a2)
                    {
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    if (v40 <= 65536.0)
                    {
                      v45 = v40;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v47 = v44;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    v48 = 0.0;
                    v49 = 0.0;
                    if ((v30 * v45) != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp((v30 * v45), __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v47 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v47 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    v58 = std::function<float ()(float)>::operator()(a8, v55);
                    v60 = MIL::Fp16::FromFloat(v58, v59);
                  }
                }
              }
            }
          }
        }

        ++v35;
        v32 = v64;
      }

      while (v35 != v64);
    }

    ++v31;
  }

  while (v31 != v62);
  v24 = __p;
  if (__p)
  {
LABEL_78:
    v84 = v24;
    operator delete(v24);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_2599054EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,unsigned char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_85;
  }

  v80 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v34 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  v65 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (a2)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v46 = v41;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 < -65536.0)
                    {
                      v46 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v45 <= 65536.0)
                    {
                      v48 = v45;
                    }

                    else
                    {
                      v48 = 65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v31 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v31 * v46), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v56);
                    if (v59 == INFINITY)
                    {
                      LOBYTE(v60) = -1;
                    }

                    else if (v59 == -INFINITY)
                    {
                      LOBYTE(v60) = 0;
                    }

                    else
                    {
                      v61 = llroundf(v59);
                      if (v61 >= 255)
                      {
                        v61 = 255;
                      }

                      v60 = v61 & ~(v61 >> 31);
                    }
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v65;
      }

      while (v36 != v65);
    }

    ++v32;
  }

  while (v32 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_85:
    v85 = v25;
    operator delete(v25);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_259905C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,unsigned char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_87;
  }

  v80 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v34 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  v65 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (a2)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v46 = v41;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 < -65536.0)
                    {
                      v46 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    if (v45 <= 65536.0)
                    {
                      v48 = v45;
                    }

                    else
                    {
                      v48 = 65536.0;
                    }

                    v49 = 0.0;
                    v50 = 0.0;
                    if ((v31 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp((v31 * v46), __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v47 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v48 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v48 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v56);
                    if (v59 == INFINITY)
                    {
                      v60 = 127;
                    }

                    else if (v59 == -INFINITY)
                    {
                      v60 = 0x80;
                    }

                    else
                    {
                      v61 = llroundf(v59);
                      if (v61 >= 127)
                      {
                        v61 = 127;
                      }

                      if (v61 <= -128)
                      {
                        v60 = 0x80;
                      }

                      else
                      {
                        v60 = v61;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v65;
      }

      while (v36 != v65);
    }

    ++v32;
  }

  while (v32 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_87:
    v85 = v25;
    operator delete(v25);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_259906430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,signed char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v19 = a5[1];
    if (*a5 != v19)
    {
      v20 = a4[1];
      if (*a4 != v20 && v20 - *a4 != v19 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v21 = a6[1];
    if (*a6 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v24 = __p;
  v25 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = 65536.0;
  if (a10 <= 65536.0)
  {
    v29 = a10;
  }

  if (v29 >= -65536.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_83;
  }

  v31 = a2;
  v32 = 0;
  v33 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v34 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v35 = *(v85 + 4);
  v64 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (v31)
                    {
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v44 = v41;
                    }

                    else
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = 0.0;
                    v49 = 0.0;
                    if ((v30 * v44) != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp((v30 * v44), __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v47 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v47 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    v58 = std::function<float ()(float)>::operator()(a8, v55);
                    v60 = MIL::Fp16::FromFloat(v58, v59);
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v64;
      }

      while (v36 != v64);
    }

    ++v32;
  }

  while (v32 != v62);
  v24 = __p;
  if (__p)
  {
LABEL_83:
    v84 = v24;
    operator delete(v24);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_259906B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,signed char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_90;
  }

  v79 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v34 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v35 = *(v85 + 4);
  v64 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (a2)
                    {
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v44 = v41;
                    }

                    else
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = 0.0;
                    v49 = 0.0;
                    if ((v31 * v44) != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp((v31 * v44), __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v47 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v47 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v55);
                    if (v58 == INFINITY)
                    {
                      LOBYTE(v59) = -1;
                    }

                    else if (v58 == -INFINITY)
                    {
                      LOBYTE(v59) = 0;
                    }

                    else
                    {
                      v60 = llroundf(v58);
                      if (v60 >= 255)
                      {
                        v60 = 255;
                      }

                      v59 = v60 & ~(v60 >> 31);
                    }
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v64;
      }

      while (v36 != v64);
    }

    ++v32;
  }

  while (v32 != v62);
  v25 = __p;
  if (__p)
  {
LABEL_90:
    v84 = v25;
    operator delete(v25);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_2599072FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,signed char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_92;
  }

  v79 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v34 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v35 = *(v85 + 4);
  v64 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    MIL::Fp16::GetFloat(__e);
                    v41 = v40;
                    if (a2)
                    {
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v44 = v41;
                    }

                    else
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = 0.0;
                    v49 = 0.0;
                    if ((v31 * v44) != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp((v31 * v44), __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v47 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v47 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v55);
                    if (v58 == INFINITY)
                    {
                      v59 = 127;
                    }

                    else if (v58 == -INFINITY)
                    {
                      v59 = 0x80;
                    }

                    else
                    {
                      v60 = llroundf(v58);
                      if (v60 >= 127)
                      {
                        v60 = 127;
                      }

                      if (v60 <= -128)
                      {
                        v59 = 0x80;
                      }

                      else
                      {
                        v59 = v60;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v64;
      }

      while (v36 != v64);
    }

    ++v32;
  }

  while (v32 != v62);
  v25 = __p;
  if (__p)
  {
LABEL_92:
    v84 = v25;
    operator delete(v25);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_259907AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,MIL::Fp16,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_80;
  }

  v32 = a2;
  v33 = 0;
  v34 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v35 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v36 = *(v85 + 4);
  v64 = v34;
  do
  {
    if (v34)
    {
      v37 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    if (v32)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = v31 * v44;
                    v11 = 0.0;
                    v49 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v48, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v11 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v47 * v11) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v47 * v11), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    v58 = std::function<float ()(float)>::operator()(a8, v55);
                    v60 = MIL::Fp16::FromFloat(v58, v59);
                  }
                }
              }
            }
          }
        }

        ++v37;
        v34 = v64;
      }

      while (v37 != v64);
    }

    ++v33;
  }

  while (v33 != v62);
  v25 = __p;
  if (__p)
  {
LABEL_80:
    v84 = v25;
    operator delete(v25);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_2599081CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,MIL::Fp16,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_87;
  }

  v79 = a9;
  v33 = 0;
  v34 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v35 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v36 = *(v85 + 4);
  v64 = v34;
  do
  {
    if (v34)
    {
      v37 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    if (a2)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = v32 * v44;
                    v11 = 0.0;
                    v49 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v48, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v11 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v47 * v11) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v47 * v11), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v55);
                    if (v58 == INFINITY)
                    {
                      LOBYTE(v59) = -1;
                    }

                    else if (v58 == -INFINITY)
                    {
                      LOBYTE(v59) = 0;
                    }

                    else
                    {
                      v60 = llroundf(v58);
                      if (v60 >= 255)
                      {
                        v60 = 255;
                      }

                      v59 = v60 & ~(v60 >> 31);
                    }
                  }
                }
              }
            }
          }
        }

        ++v37;
        v34 = v64;
      }

      while (v37 != v64);
    }

    ++v33;
  }

  while (v33 != v62);
  v26 = __p;
  if (__p)
  {
LABEL_87:
    v84 = v26;
    operator delete(v26);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_25990897C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,MIL::Fp16,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  v18 = a2;
  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_89;
  }

  v80 = a9;
  v33 = 0;
  v34 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v35 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v36 = *(v86 + 4);
  v65 = v34;
  do
  {
    if (v34)
    {
      v37 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    if (v18)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = v32 * v44;
                    v11 = 0.0;
                    v49 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v48, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v11 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = v18;
                    v56 = 0.0;
                    if ((v47 * v11) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v47 * v11), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v56);
                    if (v59 == INFINITY)
                    {
                      v60 = 127;
                    }

                    else if (v59 == -INFINITY)
                    {
                      v60 = 0x80;
                    }

                    else
                    {
                      v61 = llroundf(v59);
                      if (v61 >= 127)
                      {
                        v61 = 127;
                      }

                      if (v61 <= -128)
                      {
                        v60 = 0x80;
                      }

                      else
                      {
                        v60 = v61;
                      }
                    }

                    v18 = v55;
                  }
                }
              }
            }
          }
        }

        ++v37;
        v34 = v65;
      }

      while (v37 != v65);
    }

    ++v33;
  }

  while (v33 != v63);
  v26 = __p;
  if (__p)
  {
LABEL_89:
    v85 = v26;
    operator delete(v26);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_259909138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,unsigned char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_75;
  }

  v32 = a2;
  v33 = 0;
  v34 = *(__p + 1);
  v81 = *(__p + 4);
  v64 = *(v89 + 1);
  v66 = *(v89 + 2);
  v67 = *(__p + 2);
  v35 = *(v89 + 4);
  v68 = *(v89 + 3);
  v69 = *(__p + 3);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v61 = *v85;
  v62 = *v89;
  v72 = *(v85 + 1);
  v70 = *(v85 + 3);
  v71 = *(v85 + 2);
  v36 = *(v85 + 4);
  v65 = v34;
  do
  {
    if (v34)
    {
      v37 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    if (v32)
                    {
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v11 = v44;
                    }

                    else
                    {
                      v11 = 65536.0;
                    }

                    v47 = v31 * v45;
                    v48 = 0.0;
                    v49 = 0.0;
                    if (v47 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v47, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v46 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v11 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v11 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    v58 = std::function<float ()(float)>::operator()(a8, v55);
                    v60 = MIL::Fp16::FromFloat(v58, v59);
                  }
                }
              }
            }
          }
        }

        ++v37;
        v34 = v65;
      }

      while (v37 != v65);
    }

    ++v33;
  }

  while (v33 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_75:
    v84 = v25;
    operator delete(v25);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_259909830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,unsigned char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  v18 = a2;
  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_82;
  }

  v78 = a9;
  v33 = 0;
  v64 = *(__p + 1);
  v66 = *(__p + 2);
  v68 = *(__p + 3);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v34 = *(v89 + 4);
  v67 = *(v89 + 3);
  v76 = *(v87 + 1);
  v77 = *v87;
  v74 = *(v87 + 3);
  v75 = *(v87 + 2);
  v72 = *v85;
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v35 = *(v85 + 4);
  do
  {
    if (v64)
    {
      for (i = 0; i != v64; ++i)
      {
        if (v66)
        {
          for (j = 0; j != v66; ++j)
          {
            if (v68)
            {
              for (k = 0; k != v68; ++k)
              {
                if (v81)
                {
                  for (m = 0; m != v81; ++m)
                  {
                    if (v18)
                    {
                      v41 = v40;
                    }

                    else
                    {
                      v41 = 0.0;
                    }

                    if (a3)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v11 = v43;
                    }

                    else
                    {
                      v11 = 65536.0;
                    }

                    v46 = v32 * v44;
                    v47 = 0.0;
                    v48 = 0.0;
                    if (v46 != 0.0)
                    {
                      __e[0] = 0;
                      v49 = frexp(v46, __e);
                      v50 = ldexp(v49, 11);
                      v48 = ldexp(round(v50), __e[0] - 11);
                    }

                    v51 = (v45 * a11) + v48;
                    if (v51 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v51, __e);
                      v53 = ldexp(v52, 11);
                      v47 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = v18;
                    v55 = 0.0;
                    if ((v11 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v11 * v47), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v55);
                    if (v58 == INFINITY)
                    {
                      LOBYTE(v59) = -1;
                    }

                    else if (v58 == -INFINITY)
                    {
                      LOBYTE(v59) = 0;
                    }

                    else
                    {
                      v60 = llroundf(v58);
                      if (v60 >= 255)
                      {
                        v60 = 255;
                      }

                      v59 = v60 & ~(v60 >> 31);
                    }

                    v18 = v54;
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v33;
  }

  while (v33 != v62);
  v26 = __p;
  if (__p)
  {
LABEL_82:
    v84 = v26;
    operator delete(v26);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_259909FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,unsigned char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v83 - __p;
  if (v83 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = v85 - v84;
  if (v85 == v84)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v61 = *__p;
  if (!*__p)
  {
    goto LABEL_84;
  }

  v77 = a9;
  v33 = 0;
  v63 = *(__p + 1);
  v65 = *(__p + 2);
  v67 = *(__p + 3);
  v80 = *(__p + 4);
  v60 = *v88;
  v62 = *(v88 + 1);
  v64 = *(v88 + 2);
  v34 = *(v88 + 4);
  v66 = *(v88 + 3);
  v75 = *(v86 + 1);
  v76 = *v86;
  v73 = *(v86 + 3);
  v74 = *(v86 + 2);
  v71 = *v84;
  v72 = *(v86 + 4);
  v70 = *(v84 + 1);
  v68 = *(v84 + 3);
  v69 = *(v84 + 2);
  v35 = *(v84 + 4);
  do
  {
    if (v63)
    {
      for (i = 0; i != v63; ++i)
      {
        if (v65)
        {
          for (j = 0; j != v65; ++j)
          {
            if (v67)
            {
              for (k = 0; k != v67; ++k)
              {
                if (v80)
                {
                  for (m = 0; m != v80; ++m)
                  {
                    if (a2)
                    {
                      v41 = v40;
                    }

                    else
                    {
                      v41 = 0.0;
                    }

                    if (a3)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v11 = v43;
                    }

                    else
                    {
                      v11 = 65536.0;
                    }

                    v46 = v32 * v44;
                    v47 = 0.0;
                    v48 = 0.0;
                    if (v46 != 0.0)
                    {
                      __e[0] = 0;
                      v49 = frexp(v46, __e);
                      v50 = ldexp(v49, 11);
                      v48 = ldexp(round(v50), __e[0] - 11);
                    }

                    v51 = (v45 * a11) + v48;
                    if (v51 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v51, __e);
                      v53 = ldexp(v52, 11);
                      v47 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = 0.0;
                    if ((v11 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp((v11 * v47), __e);
                      v56 = ldexp(v55, 11);
                      v54 = ldexp(round(v56), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v54);
                    if (v57 == INFINITY)
                    {
                      v58 = 127;
                    }

                    else if (v57 == -INFINITY)
                    {
                      v58 = 0x80;
                    }

                    else
                    {
                      v59 = llroundf(v57);
                      if (v59 >= 127)
                      {
                        v59 = 127;
                      }

                      if (v59 <= -128)
                      {
                        v58 = 0x80;
                      }

                      else
                      {
                        v58 = v59;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v33;
  }

  while (v33 != v61);
  v26 = __p;
  if (__p)
  {
LABEL_84:
    v83 = v26;
    operator delete(v26);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_25990A74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,signed char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v83 - __p;
  if (v83 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v85 - v84;
  if (v85 == v84)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v61 = *__p;
  if (!*__p)
  {
    goto LABEL_80;
  }

  v32 = a2;
  v33 = 0;
  v34 = *(__p + 1);
  v80 = *(__p + 4);
  v60 = *v88;
  v62 = *(v88 + 1);
  v64 = *(v88 + 2);
  v65 = *(__p + 2);
  v66 = *(v88 + 3);
  v67 = *(__p + 3);
  v35 = *(v88 + 4);
  v76 = *v86;
  v75 = *(v86 + 1);
  v74 = *(v86 + 2);
  v73 = *(v86 + 3);
  v72 = *(v86 + 4);
  v70 = *(v84 + 1);
  v71 = *v84;
  v68 = *(v84 + 3);
  v69 = *(v84 + 2);
  v36 = *(v84 + 4);
  v63 = v34;
  do
  {
    if (v34)
    {
      v37 = 0;
      do
      {
        if (v65)
        {
          for (i = 0; i != v65; ++i)
          {
            if (v67)
            {
              for (j = 0; j != v67; ++j)
              {
                if (v80)
                {
                  for (k = 0; k != v80; ++k)
                  {
                    if (v32)
                    {
                    }

                    else
                    {
                      v41 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v42 = 1.0;
                    }

                    v43 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v44 = v41;
                    }

                    else
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = -65536.0;
                    }

                    if (v42 > 65536.0)
                    {
                      v42 = 65536.0;
                    }

                    if (v42 >= -65536.0)
                    {
                      v11 = v42;
                    }

                    else
                    {
                      v11 = -65536.0;
                    }

                    v46 = v31 * v43;
                    v47 = 0.0;
                    v48 = 0.0;
                    if (v46 != 0.0)
                    {
                      __e[0] = 0;
                      v49 = frexp(v46, __e);
                      v50 = ldexp(v49, 11);
                      v48 = ldexp(round(v50), __e[0] - 11);
                    }

                    v51 = (v45 * a11) + v48;
                    if (v51 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v51, __e);
                      v53 = ldexp(v52, 11);
                      v47 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = 0.0;
                    if ((v11 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp((v11 * v47), __e);
                      v56 = ldexp(v55, 11);
                      v54 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = std::function<float ()(float)>::operator()(a8, v54);
                    v59 = MIL::Fp16::FromFloat(v57, v58);
                  }
                }
              }
            }
          }
        }

        ++v37;
        v34 = v63;
      }

      while (v37 != v63);
    }

    ++v33;
  }

  while (v33 != v61);
  v25 = __p;
  if (__p)
  {
LABEL_80:
    v83 = v25;
    operator delete(v25);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_25990AE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,signed char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  v18 = a2;
  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v83 - __p;
  if (v83 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = v85 - v84;
  if (v85 == v84)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v61 = *__p;
  if (!*__p)
  {
    goto LABEL_87;
  }

  v77 = a9;
  v33 = 0;
  v63 = *(__p + 1);
  v65 = *(__p + 2);
  v67 = *(__p + 3);
  v80 = *(__p + 4);
  v60 = *v88;
  v62 = *(v88 + 1);
  v64 = *(v88 + 2);
  v34 = *(v88 + 4);
  v66 = *(v88 + 3);
  v75 = *(v86 + 1);
  v76 = *v86;
  v73 = *(v86 + 3);
  v74 = *(v86 + 2);
  v71 = *v84;
  v72 = *(v86 + 4);
  v70 = *(v84 + 1);
  v68 = *(v84 + 3);
  v69 = *(v84 + 2);
  v35 = *(v84 + 4);
  do
  {
    if (v63)
    {
      for (i = 0; i != v63; ++i)
      {
        if (v65)
        {
          for (j = 0; j != v65; ++j)
          {
            if (v67)
            {
              for (k = 0; k != v67; ++k)
              {
                if (v80)
                {
                  for (m = 0; m != v80; ++m)
                  {
                    if (v18)
                    {
                    }

                    else
                    {
                      v40 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v41 = 1.0;
                    }

                    v42 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v42 = 65536.0;
                    }

                    if (v40 <= 65536.0)
                    {
                      v43 = v40;
                    }

                    else
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = -65536.0;
                    }

                    if (v41 > 65536.0)
                    {
                      v41 = 65536.0;
                    }

                    if (v41 >= -65536.0)
                    {
                      v11 = v41;
                    }

                    else
                    {
                      v11 = -65536.0;
                    }

                    v45 = v32 * v42;
                    v46 = 0.0;
                    v47 = 0.0;
                    if (v45 != 0.0)
                    {
                      __e[0] = 0;
                      v48 = frexp(v45, __e);
                      v49 = ldexp(v48, 11);
                      v47 = ldexp(round(v49), __e[0] - 11);
                    }

                    v50 = (v44 * a11) + v47;
                    if (v50 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v50, __e);
                      v52 = ldexp(v51, 11);
                      v46 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = v18;
                    v54 = 0.0;
                    if ((v11 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp((v11 * v46), __e);
                      v56 = ldexp(v55, 11);
                      v54 = ldexp(round(v56), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v54);
                    if (v57 == INFINITY)
                    {
                      LOBYTE(v58) = -1;
                    }

                    else if (v57 == -INFINITY)
                    {
                      LOBYTE(v58) = 0;
                    }

                    else
                    {
                      v59 = llroundf(v57);
                      if (v59 >= 255)
                      {
                        v59 = 255;
                      }

                      v58 = v59 & ~(v59 >> 31);
                    }

                    v18 = v53;
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v33;
  }

  while (v33 != v61);
  v26 = __p;
  if (__p)
  {
LABEL_87:
    v83 = v26;
    operator delete(v26);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_25990B5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,signed char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v21 = a5[1];
    if (*a5 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v23 = a6[1];
    if (*a6 != v23)
    {
      v24 = a4[1];
      if (*a4 != v24 && v24 - *a4 != v23 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v26 = __p;
  v27 = v82 - __p;
  if (v82 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = v84 - v83;
  if (v84 == v83)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v30 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = 65536.0;
  if (a10 <= 65536.0)
  {
    v31 = a10;
  }

  if (v31 >= -65536.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -65536.0;
  }

  v60 = *__p;
  if (!*__p)
  {
    goto LABEL_89;
  }

  v76 = a9;
  v33 = 0;
  v62 = *(__p + 1);
  v64 = *(__p + 2);
  v66 = *(__p + 3);
  v79 = *(__p + 4);
  v59 = *v87;
  v61 = *(v87 + 1);
  v63 = *(v87 + 2);
  v34 = *(v87 + 4);
  v65 = *(v87 + 3);
  v74 = *(v85 + 1);
  v75 = *v85;
  v72 = *(v85 + 3);
  v73 = *(v85 + 2);
  v70 = *v83;
  v71 = *(v85 + 4);
  v69 = *(v83 + 1);
  v67 = *(v83 + 3);
  v68 = *(v83 + 2);
  v35 = *(v83 + 4);
  do
  {
    if (v62)
    {
      for (i = 0; i != v62; ++i)
      {
        if (v64)
        {
          for (j = 0; j != v64; ++j)
          {
            if (v66)
            {
              for (k = 0; k != v66; ++k)
              {
                if (v79)
                {
                  for (m = 0; m != v79; ++m)
                  {
                    if (a2)
                    {
                    }

                    else
                    {
                      v40 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v41 = 1.0;
                    }

                    v42 = LODWORD(v11);
                    if (LODWORD(v11) > 65536.0)
                    {
                      v42 = 65536.0;
                    }

                    if (v40 <= 65536.0)
                    {
                      v43 = v40;
                    }

                    else
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = -65536.0;
                    }

                    if (v41 > 65536.0)
                    {
                      v41 = 65536.0;
                    }

                    if (v41 >= -65536.0)
                    {
                      v11 = v41;
                    }

                    else
                    {
                      v11 = -65536.0;
                    }

                    v45 = v32 * v42;
                    v46 = 0.0;
                    v47 = 0.0;
                    if (v45 != 0.0)
                    {
                      __e[0] = 0;
                      v48 = frexp(v45, __e);
                      v49 = ldexp(v48, 11);
                      v47 = ldexp(round(v49), __e[0] - 11);
                    }

                    v50 = (v44 * a11) + v47;
                    if (v50 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v50, __e);
                      v52 = ldexp(v51, 11);
                      v46 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = 0.0;
                    if ((v11 * v46) != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp((v11 * v46), __e);
                      v55 = ldexp(v54, 11);
                      v53 = ldexp(round(v55), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v53);
                    if (v56 == INFINITY)
                    {
                      v57 = 127;
                    }

                    else if (v56 == -INFINITY)
                    {
                      v57 = 0x80;
                    }

                    else
                    {
                      v58 = llroundf(v56);
                      if (v58 >= 127)
                      {
                        v58 = 127;
                      }

                      if (v58 <= -128)
                      {
                        v57 = 0x80;
                      }

                      else
                      {
                        v57 = v58;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v33;
  }

  while (v33 != v60);
  v26 = __p;
  if (__p)
  {
LABEL_89:
    v82 = v26;
    operator delete(v26);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }
}

void sub_25990BDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,MIL::Fp16,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v19 = a5[1];
    if (*a5 != v19)
    {
      v20 = a4[1];
      if (*a4 != v20 && v20 - *a4 != v19 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v21 = a6[1];
    if (*a6 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v24 = __p;
  v25 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = 65536.0;
  if (a10 <= 65536.0)
  {
    v29 = a10;
  }

  if (v29 >= -65536.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_82;
  }

  v31 = a2;
  v32 = 0;
  v33 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v34 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  v65 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    if (v31)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = v40;
                    if (v40 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = v30 * v44;
                    v49 = 0.0;
                    v50 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v48, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v46 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v47 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v47 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    v59 = std::function<float ()(float)>::operator()(a8, v56);
                    v61 = MIL::Fp16::FromFloat(v59, v60);
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v65;
      }

      while (v36 != v65);
    }

    ++v32;
  }

  while (v32 != v63);
  v24 = __p;
  if (__p)
  {
LABEL_82:
    v85 = v24;
    operator delete(v24);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_25990C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,MIL::Fp16,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_89;
  }

  v80 = a9;
  v32 = 0;
  v33 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v34 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  v65 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    if (a2)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = v40;
                    if (v40 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v45 = v42;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v45 >= -65536.0)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    if (v43 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v47 = v43;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    v48 = v31 * v44;
                    v49 = 0.0;
                    v50 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v48, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v46 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v47 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v47 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v56);
                    if (v59 == INFINITY)
                    {
                      LOBYTE(v60) = -1;
                    }

                    else if (v59 == -INFINITY)
                    {
                      LOBYTE(v60) = 0;
                    }

                    else
                    {
                      v61 = llroundf(v59);
                      if (v61 >= 255)
                      {
                        v61 = 255;
                      }

                      v60 = v61 & ~(v61 >> 31);
                    }
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v65;
      }

      while (v36 != v65);
    }

    ++v32;
  }

  while (v32 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_89:
    v85 = v25;
    operator delete(v25);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_25990CC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,MIL::Fp16,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v86 - __p;
  if (v86 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v92 - v91;
  if (v92 == v91)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v64 = *__p;
  if (!*__p)
  {
    goto LABEL_91;
  }

  v32 = a2;
  v81 = a9;
  v33 = 0;
  v34 = *(__p + 1);
  v83 = *(__p + 4);
  v63 = *v91;
  v65 = *(v91 + 1);
  v67 = *(v91 + 2);
  v68 = *(__p + 2);
  v69 = *(v91 + 3);
  v70 = *(__p + 3);
  v35 = *(v91 + 4);
  v79 = *v89;
  v78 = *(v89 + 1);
  v77 = *(v89 + 2);
  v76 = *(v89 + 3);
  v75 = *(v89 + 4);
  v73 = *(v87 + 1);
  v74 = *v87;
  v71 = *(v87 + 3);
  v72 = *(v87 + 2);
  v36 = *(v87 + 4);
  v66 = v34;
  do
  {
    if (v34)
    {
      v37 = 0;
      do
      {
        if (v68)
        {
          for (i = 0; i != v68; ++i)
          {
            if (v70)
            {
              for (j = 0; j != v70; ++j)
              {
                if (v83)
                {
                  for (k = 0; k != v83; ++k)
                  {
                    if (v32)
                    {
                      MIL::Fp16::GetFloat(__e);
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 0.0;
                    }

                    if (a3)
                    {
                      MIL::Fp16::GetFloat(__e);
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = v41;
                    if (v41 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v46 >= -65536.0)
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = -65536.0;
                    }

                    if (v44 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v48 = v44;
                    }

                    else
                    {
                      v48 = -65536.0;
                    }

                    v49 = v31 * v45;
                    v50 = 0.0;
                    v51 = 0.0;
                    if (v49 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v49, __e);
                      v53 = ldexp(v52, 11);
                      v51 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = (v47 * a11) + v51;
                    if (v54 != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp(v54, __e);
                      v56 = ldexp(v55, 11);
                      v50 = ldexp(round(v56), __e[0] - 11);
                    }

                    v57 = 0.0;
                    if ((v48 * v50) != 0.0)
                    {
                      __e[0] = 0;
                      v58 = frexp((v48 * v50), __e);
                      v59 = ldexp(v58, 11);
                      v57 = ldexp(round(v59), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v57);
                    if (v60 == INFINITY)
                    {
                      v61 = 127;
                    }

                    else if (v60 == -INFINITY)
                    {
                      v61 = 0x80;
                    }

                    else
                    {
                      v62 = llroundf(v60);
                      if (v62 >= 127)
                      {
                        v62 = 127;
                      }

                      if (v62 <= -128)
                      {
                        v61 = 0x80;
                      }

                      else
                      {
                        v61 = v62;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v37;
        v34 = v66;
      }

      while (v37 != v66);
    }

    ++v33;
  }

  while (v33 != v64);
  v25 = __p;
  if (__p)
  {
LABEL_91:
    v86 = v25;
    operator delete(v25);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_25990D43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,unsigned char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v19 = a5[1];
    if (*a5 != v19)
    {
      v20 = a4[1];
      if (*a4 != v20 && v20 - *a4 != v19 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v21 = a6[1];
    if (*a6 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v24 = __p;
  v25 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = 65536.0;
  if (a10 <= 65536.0)
  {
    v29 = a10;
  }

  if (v29 >= -65536.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_77;
  }

  v31 = a2;
  v32 = 0;
  v33 = *(__p + 1);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v67 = *(__p + 2);
  v68 = *(v90 + 3);
  v69 = *(__p + 3);
  v34 = *(v90 + 4);
  v78 = *v88;
  v77 = *(v88 + 1);
  v76 = *(v88 + 2);
  v75 = *(v88 + 3);
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v73 = *v86;
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  v65 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v67)
        {
          for (i = 0; i != v67; ++i)
          {
            if (v69)
            {
              for (j = 0; j != v69; ++j)
              {
                if (v82)
                {
                  for (k = 0; k != v82; ++k)
                  {
                    if (v31)
                    {
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = v40;
                    if (v40 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v47 = v44;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    v48 = v30 * v45;
                    v49 = 0.0;
                    v50 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v48, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v46 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v47 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v47 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    v59 = std::function<float ()(float)>::operator()(a8, v56);
                    v61 = MIL::Fp16::FromFloat(v59, v60);
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v65;
      }

      while (v36 != v65);
    }

    ++v32;
  }

  while (v32 != v63);
  v24 = __p;
  if (__p)
  {
LABEL_77:
    v85 = v24;
    operator delete(v24);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_25990DB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,unsigned char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v85 - __p;
  if (v85 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v91 - v90;
  if (v91 == v90)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v63 = *__p;
  if (!*__p)
  {
    goto LABEL_84;
  }

  v32 = a2;
  v79 = a9;
  v33 = 0;
  v65 = *(__p + 1);
  v67 = *(__p + 2);
  v69 = *(__p + 3);
  v82 = *(__p + 4);
  v62 = *v90;
  v64 = *(v90 + 1);
  v66 = *(v90 + 2);
  v34 = *(v90 + 4);
  v68 = *(v90 + 3);
  v77 = *(v88 + 1);
  v78 = *v88;
  v75 = *(v88 + 3);
  v76 = *(v88 + 2);
  v73 = *v86;
  v74 = *(v88 + 4);
  v72 = *(v86 + 1);
  v70 = *(v86 + 3);
  v71 = *(v86 + 2);
  v35 = *(v86 + 4);
  do
  {
    if (v65)
    {
      for (i = 0; i != v65; ++i)
      {
        if (v67)
        {
          for (j = 0; j != v67; ++j)
          {
            if (v69)
            {
              for (k = 0; k != v69; ++k)
              {
                if (v82)
                {
                  for (m = 0; m != v82; ++m)
                  {
                    if (v32)
                    {
                      v42 = v41;
                    }

                    else
                    {
                      v42 = 0.0;
                    }

                    if (a3)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = 1.0;
                    }

                    v45 = v40;
                    if (v40 > 65536.0)
                    {
                      v45 = 65536.0;
                    }

                    if (v45 < -65536.0)
                    {
                      v45 = -65536.0;
                    }

                    if (v42 <= 65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    if (v44 <= 65536.0)
                    {
                      v47 = v44;
                    }

                    else
                    {
                      v47 = 65536.0;
                    }

                    v48 = v31 * v45;
                    v49 = 0.0;
                    v50 = 0.0;
                    if (v48 != 0.0)
                    {
                      __e[0] = 0;
                      v51 = frexp(v48, __e);
                      v52 = ldexp(v51, 11);
                      v50 = ldexp(round(v52), __e[0] - 11);
                    }

                    v53 = (v46 * a11) + v50;
                    if (v53 != 0.0)
                    {
                      __e[0] = 0;
                      v54 = frexp(v53, __e);
                      v55 = ldexp(v54, 11);
                      v49 = ldexp(round(v55), __e[0] - 11);
                    }

                    v56 = 0.0;
                    if ((v47 * v49) != 0.0)
                    {
                      __e[0] = 0;
                      v57 = frexp((v47 * v49), __e);
                      v58 = ldexp(v57, 11);
                      v56 = ldexp(round(v58), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v56);
                    if (v59 == INFINITY)
                    {
                      LOBYTE(v60) = -1;
                    }

                    else if (v59 == -INFINITY)
                    {
                      LOBYTE(v60) = 0;
                    }

                    else
                    {
                      v61 = llroundf(v59);
                      if (v61 >= 255)
                      {
                        v61 = 255;
                      }

                      v60 = v61 & ~(v61 >> 31);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v33;
  }

  while (v33 != v63);
  v25 = __p;
  if (__p)
  {
LABEL_84:
    v85 = v25;
    operator delete(v25);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}