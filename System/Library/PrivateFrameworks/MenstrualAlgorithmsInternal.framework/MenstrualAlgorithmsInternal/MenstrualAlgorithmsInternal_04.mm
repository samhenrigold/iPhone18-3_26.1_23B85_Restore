uint64_t *std::vector<BOOL>::__init_with_size[abi:nn200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void *std::vector<BOOL>::__construct_at_end<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(void *result, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

unint64_t std::vector<Nightingale::lunaMTPreparedData>::__emplace_back_slow_path<Nightingale::lunaMTPreparedData const&>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::lunaMTPreparedData>>(a1, v6);
  }

  v7 = 120 * v2;
  *v7 = *a2;
  std::vector<int>::vector[abi:nn200100]((v7 + 8), (a2 + 8));
  std::vector<int>::vector[abi:nn200100]((v7 + 32), (a2 + 32));
  std::vector<BOOL>::vector((v7 + 56), (a2 + 56));
  std::vector<BOOL>::vector((v7 + 80), (a2 + 80));
  *(v7 + 104) = *(a2 + 104);
  v8 = v7 + 120;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<Nightingale::lunaMTPreparedData>::~__split_buffer(v14);
  return v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::lunaMTPreparedData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 1);
      *(a4 + 24) = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 2);
      v8 = v7[7];
      *(a4 + 48) = v7[6];
      v7[5] = 0;
      v7[6] = 0;
      v7[4] = 0;
      *(a4 + 56) = v8;
      *(a4 + 64) = *(v7 + 4);
      v7[8] = 0;
      v7[9] = 0;
      v7[7] = 0;
      *(a4 + 80) = v7[10];
      *(a4 + 88) = *(v7 + 11);
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      *(a4 + 104) = *(v7 + 13);
      v7 += 15;
      a4 += 120;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:nn200100]<Nightingale::lunaMTPreparedData,void,0>(a1, v5);
      v5 += 15;
    }
  }
}

void **std::__split_buffer<Nightingale::lunaMTPreparedData>::~__split_buffer(void **a1)
{
  std::__split_buffer<Nightingale::lunaMTPreparedData>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::lunaMTPreparedData>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 120;
    std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:nn200100]<Nightingale::lunaMTPreparedData,void,0>(v4, (i - 120));
  }
}

BOOL Nightingale::FwPredictorWrapper_t::init(Nightingale::FwPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  if ((*(a2 + 200) & 1) == 0 || ((v3 = a2, v4 = 0x277CCA000, v6 = a2 + 176, *(a2 + 199) >= 0) ? (v7 = a2 + 176) : (v7 = *(a2 + 22)), [MEMORY[0x277CCACA8] stringWithUTF8String:v7], v8 = objc_claimAutoreleasedReturnValue(), (v6[56] & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    v43 = v42;

    _Unwind_Resume(v43);
  }

  v9 = v8;
  v12 = *(v3 + 26);
  v11 = v3 + 208;
  v10 = v12;
  if (v11[23] >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
  v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
  v17 = objc_opt_new();
  v18 = *(this + 3);
  *(this + 3) = v17;

  if (!*(this + 3))
  {
    goto LABEL_18;
  }

  v19 = objc_opt_new();
  v20 = *(this + 2);
  *(this + 2) = v19;

  if (!*(this + 2))
  {
    goto LABEL_18;
  }

  [*(this + 3) setComputeUnits:0];
  v47 = 0;
  v21 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9EB0 dataType:65600 error:&v47];
  v22 = v47;
  v23 = *(this + 1);
  *(this + 1) = v21;

  if (!*(this + 1))
  {
    goto LABEL_20;
  }

  v24 = [fwEnddet_lstm alloc];
  v25 = *(this + 3);
  v46 = v22;
  v26 = [(fwEnddet_lstm *)v24 initWithContentsOfURL:v15 configuration:v25 error:&v46];
  v27 = v46;

  v28 = *(this + 7);
  *(this + 7) = v26;

  if (!v27)
  {
    v30 = objc_opt_new();
    v31 = *(this + 3);
    *(this + 3) = v30;

    if (*(this + 3))
    {
      v32 = objc_opt_new();
      v33 = *(this + 2);
      *(this + 2) = v32;

      if (*(this + 2))
      {
        [*(this + 3) setComputeUnits:0];
        v45 = 0;
        v34 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9EC8 dataType:65600 error:&v45];
        v22 = v45;
        v35 = *this;
        *this = v34;

        if (*this)
        {
          v36 = [fwEnddet_rf alloc];
          v37 = *(this + 3);
          v44 = v22;
          v38 = [(fwEnddet_rf *)v36 initWithContentsOfURL:v16 configuration:v37 error:&v44];
          v39 = v44;

          v40 = *(this + 5);
          *(this + 5) = v38;

          v29 = v39 == 0;
          v22 = v39;
          goto LABEL_19;
        }

LABEL_20:
        v29 = 0;
        goto LABEL_19;
      }
    }

LABEL_18:
    v29 = 0;
    v22 = 0;
    goto LABEL_19;
  }

  v29 = 0;
  v22 = v27;
LABEL_19:

  return v29;
}

id **std::unique_ptr<Nightingale::FwPredictorWrapper_t>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x259C8E7C0](v2, 0x80C40A284212CLL);
  }

  return a1;
}

BOOL Nightingale::PeriodPredictorWrapper_t::init(Nightingale::PeriodPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  if ((*(a2 + 168) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    v25 = v24;

    _Unwind_Resume(v25);
  }

  v6 = *(a2 + 18);
  v4 = a2 + 144;
  v5 = v6;
  if (v4[23] >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v10 = objc_opt_new();
  v11 = *(this + 2);
  *(this + 2) = v10;

  if (*(this + 2) && (v12 = objc_opt_new(), v13 = *(this + 1), *(this + 1) = v12, v13, *(this + 1)))
  {
    [*(this + 2) setComputeUnits:0];
    v27 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9EE0 dataType:65600 error:&v27];
    v15 = v27;
    v16 = *this;
    *this = v14;

    if (*this)
    {
      v17 = [period_lstm alloc];
      v18 = *(this + 2);
      v26 = v15;
      v19 = [(period_lstm *)v17 initWithContentsOfURL:v9 configuration:v18 error:&v26];
      v20 = v26;

      v21 = *(this + 4);
      *(this + 4) = v19;

      v22 = v20 == 0;
      v15 = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v15 = 0;
  }

  return v22;
}

double Nightingale::FwPredictorWrapper_t::FwPredictorWrapper_t(Nightingale::FwPredictorWrapper_t *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double Nightingale::PeriodPredictorWrapper_t::PeriodPredictorWrapper_t(Nightingale::PeriodPredictorWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

BOOL Nightingale::periodPredictorWrapper_t::init(Nightingale::periodPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  if ((*(a2 + 264) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    v32 = v31;

    _Unwind_Resume(v32);
  }

  v8 = *(a2 + 30);
  v6 = a2 + 240;
  v7 = v8;
  if (v6[23] >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v12 = objc_opt_new();
  v13 = *(this + 2);
  *(this + 2) = v12;

  v14 = *(this + 2);
  if (!v14)
  {
    v17 = 0;
    goto LABEL_14;
  }

  [v14 setComputeUnits:0];
  v15 = *(this + 2);
  v34 = 0;
  v16 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v11 configuration:v15 error:&v34];
  v17 = v34;
  v18 = *(this + 4);
  *(this + 4) = v16;

  if (v17)
  {
LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  v19 = [*(this + 4) modelDescription];
  v20 = [v19 inputDescriptionsByName];
  v21 = [v20 objectForKeyedSubscript:@"in"];
  v22 = [v21 multiArrayConstraint];
  v23 = [v22 shape];

  v24 = [v23 objectAtIndexedSubscript:0];
  if ([v23 count] == 1 && objc_msgSend(v24, "intValue") == 5)
  {

    v23 = &unk_2869C9EF8;
  }

  v33 = 0;
  v25 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v23 dataType:65600 error:&v33];
  v17 = v33;
  v26 = *this;
  *this = v25;

  v27 = *this != 0;
  if (*this)
  {
    v28 = [[model_period_LstmInput alloc] initWithIn:*this lstm_1_h_in:0 lstm_1_c_in:0];
    v29 = *(this + 3);
    *(this + 3) = v28;
  }

LABEL_15:
  return v27;
}

double Nightingale::periodPredictorWrapper_t::periodPredictorWrapper_t(Nightingale::periodPredictorWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t Nightingale::periodPredictorTransformerWrapper_t::init(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = objc_opt_new();
  v7 = a1[2];
  a1[2] = v6;

  v8 = a1[2];
  if (v8)
  {
    [v8 setComputeUnits:0];
    v9 = a1[2];
    v20 = 0;
    v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 configuration:v9 error:&v20];
    v11 = v20;
    v12 = a1[4];
    a1[4] = v10;

    if (v11 || (v19 = 0, v14 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9F10 dataType:65568 error:&v19], v11 = v19, v15 = *a1, *a1 = v14, v15, !*a1))
    {
      v13 = 0;
    }

    else
    {
      v16 = [[model_period_TFInput alloc] initWithIn:*a1];
      v17 = a1[3];
      a1[3] = v16;

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  return v13;
}

double Nightingale::periodPredictorTransformerWrapper_t::periodPredictorTransformerWrapper_t(Nightingale::periodPredictorTransformerWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t Nightingale::periodPredictorEnsembleWrapper_t::init(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = objc_opt_new();
  v7 = a1[2];
  a1[2] = v6;

  v8 = a1[2];
  if (v8)
  {
    [v8 setComputeUnits:0];
    v9 = a1[2];
    v20 = 0;
    v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 configuration:v9 error:&v20];
    v11 = v20;
    v12 = a1[4];
    a1[4] = v10;

    if (v11 || (v19 = 0, v14 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9F28 dataType:65568 error:&v19], v11 = v19, v15 = *a1, *a1 = v14, v15, !*a1))
    {
      v13 = 0;
    }

    else
    {
      v16 = [[model_period_EnsembleInput alloc] initWithIn:*a1];
      v17 = a1[3];
      a1[3] = v16;

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  return v13;
}

uint64_t Nightingale::periodPredictorEnsembleWrapper_t::predictPeriod(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = [*a1 dataPointer];
  if (v6 != v5)
  {
    memmove(v7, v5, v6 - v5);
  }

  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v19 = 0;
  v10 = [v8 predictionFromFeatures:v9 error:&v19];
  v11 = v19;
  v12 = [model_period_TFOutput alloc];
  v13 = [v10 featureValueForName:@"out"];
  v14 = [v13 multiArrayValue];
  v15 = [(model_period_TFOutput *)v12 initWithOut:v14];

  v16 = [(model_period_TFOutput *)v15 out];
  v17 = [v16 objectAtIndexedSubscript:0];
  *a3 = [v17 intValue];

  return 0;
}

double Nightingale::periodPredictorEnsembleWrapper_t::periodPredictorEnsembleWrapper_t(Nightingale::periodPredictorEnsembleWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(Nightingale::wristTemperatureInputAcquisition *this)
{
  Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

{
  Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(Nightingale::wristTemperatureInputAcquisition *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = this;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(this);
}

uint64_t Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v3 >>= 6;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    while ((v2[15] & 1) == 0)
    {
      ++v4;
      v2 += 16;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    v5 = *v2;
    v3 = v4;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  return v5 | (v3 << 32);
}

uint64_t Nightingale::wristTemperatureInputAcquisition::getAWTmpEntryDailyData(uint64_t a1, void *a2, int *a3, int a4)
{
  v4 = *a3;
  v5 = (a2[1] - *a2) >> 6;
  if (v5 <= v4)
  {
    return 0;
  }

  v6 = v4 + 1;
  for (i = (*a2 + (v4 << 6) + 60); *(i - 15) != a4; i += 64)
  {
    ++v4;
    ++v6;
    if (v5 <= v4)
    {
      return 0;
    }
  }

  if (*i == 1)
  {
    result = *(i - 1);
  }

  else
  {
    result = 0;
  }

  *a3 = v6;
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(void *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, unint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  *a6 = 0u;
  *(a6 + 24) = -1;
  *(a6 + 32) = 0u;
  v7 = (a6 + 32);
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  if ((a5 & 1) == 0 || a3 == -1 || a2 == -1 || a3 < a2)
  {
    return;
  }

  v52 = v7;
  v50 = a4;
  v10 = HIDWORD(a4);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v11 = 0xFFFFFFFFLL;
  v64 = 0;
  __src = 0;
  v60 = 0;
  v51 = a2;
  v12 = a2;
  v61 = 0;
  do
  {
    v13 = (a1[1] - *a1) >> 6;
    if (v13 <= v10)
    {
      goto LABEL_37;
    }

    v14 = (*a1 + (v10 << 6) + 60);
    v15 = v13 - v10;
    v16 = -1;
    while (*(v14 - 15) != v12)
    {
      --v16;
      v14 += 64;
      if (!--v15)
      {
        goto LABEL_37;
      }
    }

    if ((*v14 & 1) == 0)
    {
      LODWORD(v10) = v10 - v16;
LABEL_37:
      v57 = 0;
      v58 = 0;
      if (v65 != v66 && v60 != __src)
      {
        v32 = 0;
        v33 = 0;
        while (0xAAAAAAAAAAAAAAABLL * (v66 - v65) > v33)
        {
          std::vector<float>::push_back[abi:nn200100](&v65[v32], &Nightingale::INVALID_TMP);
          ++v33;
          v32 += 3;
          if (v60 - __src <= v33)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_91;
      }

      goto LABEL_42;
    }

    v17 = *(v14 - 1);
    v57 = v17;
    v58 = 1;
    if (v11 == -1)
    {
      *(a6 + 24) = v12;
      v11 = v12;
    }

    LODWORD(v10) = v10 - v16;
    v19 = __src;
    v18 = v60;
    if (__src == v60)
    {
      std::vector<char>::push_back[abi:nn200100](&__src, &v57);
LABEL_51:
      if ((v58 & 1) == 0)
      {
        goto LABEL_92;
      }

      std::vector<float>::push_back[abi:nn200100](&v62, &v57 + 1);
      std::vector<std::vector<float>>::push_back[abi:nn200100](&v65, &v62);
      goto LABEL_42;
    }

    v53 = v11;
    v20 = memchr(__src, v17, v60 - __src);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    if (v21 == v18)
    {
      v35 = 0;
      v36 = 0;
      v11 = v53;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * (v66 - v65) <= v36)
        {
          goto LABEL_91;
        }

        std::vector<float>::push_back[abi:nn200100](&v65[v35], &Nightingale::INVALID_TMP);
        ++v36;
        v35 += 3;
      }

      while (v60 - __src > v36);
      if ((v58 & 1) == 0)
      {
LABEL_92:
        std::__throw_bad_optional_access[abi:nn200100]();
        std::vector<std::vector<float>>::push_back[abi:nn200100](v48, v49);
        return;
      }

      std::vector<char>::push_back[abi:nn200100](&__src, &v57);
      v63 = v62;
      std::vector<float>::assign(&v62, ((v65[1] - *v65) >> 2) - 1, &Nightingale::INVALID_TMP, v37);
      goto LABEL_51;
    }

    v22 = v65;
    v23 = v66;
    if (v65 == v66)
    {
      v24 = 0;
      __p = 0;
      __b = 0;
      v56 = 0;
      do
      {
        std::vector<std::vector<float>>::push_back[abi:nn200100](&v65, &__p);
        ++v24;
        v19 = __src;
      }

      while (v60 - __src > v24);
      if (__p)
      {
        __b = __p;
        operator delete(__p);
        v19 = __src;
      }

      v22 = v65;
      v23 = v66;
    }

    if (0xAAAAAAAAAAAAAAABLL * (v23 - v22) <= v21 - v19)
    {
      goto LABEL_91;
    }

    if ((v58 & 1) == 0)
    {
      goto LABEL_92;
    }

    std::vector<float>::push_back[abi:nn200100](&v22[3 * (v21 - v19)], &v57 + 1);
    v25 = __src;
    v26 = v21 - __src;
    if (v21 - __src >= 1)
    {
      v27 = 0;
      v28 = 0;
      while (0xAAAAAAAAAAAAAAABLL * (v66 - v65) > v28)
      {
        std::vector<float>::push_back[abi:nn200100](&v65[v27], &Nightingale::INVALID_TMP);
        ++v28;
        v25 = __src;
        v26 = v21 - __src;
        v27 += 3;
        if (v28 >= v21 - __src)
        {
          goto LABEL_31;
        }
      }

LABEL_91:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_31:
    v11 = v53;
    if (v60 - v25 > (v26 + 1))
    {
      v29 = v26 + 1;
      v30 = v26 + 2;
      while (0xAAAAAAAAAAAAAAABLL * (v66 - v65) > v29)
      {
        std::vector<float>::push_back[abi:nn200100](&v65[3 * v29], &Nightingale::INVALID_TMP);
        v29 = v30;
        if (v60 - __src <= v30++)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_91;
    }

LABEL_42:
    v34 = v12 == a3;
    v12 = (v12 + 1);
  }

  while (!v34);
  *(a6 + 28) = a3;
  v39 = v65;
  v38 = v66;
  if (__src == v60)
  {
    v40 = v65;
    if (v66 != v65)
    {
      v41 = v66;
      do
      {
        v43 = *(v41 - 3);
        v41 -= 3;
        v42 = v43;
        if (v43)
        {
          *(v38 - 2) = v42;
          operator delete(v42);
        }

        v38 = v41;
      }

      while (v41 != v39);
      v40 = v65;
    }

    v66 = v39;
    v38 = v39;
    v39 = v40;
  }

  if (v39 == v38)
  {
    if (v11 > v51 && v50 <= v51)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v44 = v39;
    do
    {
      v45 = *v44;
      v46 = v44[1];
      while (v45 != v46)
      {
        if (*v45 > 38.5)
        {
          *v45 = -1082130432;
        }

        v45 += 4;
      }

      v44 += 3;
    }

    while (v44 != v38);
    if (v11 > v51 && v50 <= v51)
    {
      for (; v39 != v38; v39 += 3)
      {
        __p = 0;
        __b = 0;
        v56 = 0;
        if (v11 != v51)
        {
          std::vector<int>::__vallocate[abi:nn200100](&__p, v11 - v51);
        }

        std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v39, *v39, 0, 0, 0);
        if (__p)
        {
          __b = __p;
          operator delete(__p);
        }
      }

LABEL_80:
      *(a6 + 24) = v51;
    }
  }

  if (&v65 != a6)
  {
    std::vector<std::vector<float>>::__assign_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(a6, v65, v66, 0xAAAAAAAAAAAAAAABLL * (v66 - v65));
  }

  v47 = __src;
  if (v52 != &__src)
  {
    std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(v52, __src, v60, v60 - __src);
    v47 = __src;
  }

  if (v47)
  {
    v60 = v47;
    operator delete(v47);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  v62 = &v65;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v62);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(a1, v11);
    }

    v12 = (24 * v8);
    std::vector<int>::vector[abi:nn200100](v12, a2);
    v7 = v12 + 3;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy(v12 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 3;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::vector<std::pair<BOOL,float>>>::~__split_buffer(v17);
  }

  else
  {
    result = std::vector<int>::vector[abi:nn200100](v4, a2);
    v7 = (result + 24);
  }

  *(a1 + 8) = v7;
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::removeOutlierUsingSlidingWin(float a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v13 = a4;
  if (a4 < ((a3[1] - *a3) >> 2))
  {
    v9 = 0;
    v10 = a4;
    v12 = a5;
    do
    {
      v17 = 0;
      __dst = 0;
      v19 = 0;
      if (a4)
      {
        std::vector<int>::__vallocate[abi:nn200100](&v17, v13);
      }

      __p = 0;
      v15 = 0;
      v16 = 0;
      if (a5)
      {
        std::vector<int>::__vallocate[abi:nn200100](&__p, v12);
      }

      MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(&v17, &__p, -1.0);
      if ((MeanDiffOf2Windows & 0x100000000) != 0 && COERCE_FLOAT(MeanDiffOf2Windows & 0x7FFFFFFF) >= a1)
      {
        if (v10 >= (a3[1] - *a3) >> 2)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        *(*a3 + 4 * v10) = -1082130432;
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      if (v17)
      {
        __dst = v17;
        operator delete(v17);
      }

      ++v10;
      v9 += 4;
    }

    while (v10 < (a3[1] - *a3) >> 2);
  }
}

uint64_t Nightingale::wristTemperatureInputAcquisition::getOutlierRmvSegLen(Nightingale::wristTemperatureInputAcquisition *this, int a2, int a3)
{
  if (a3 - a2 < 30)
  {
    return 30;
  }

  LODWORD(result) = 31;
  do
  {
    result = (result - 1);
  }

  while ((a3 - a2) % result < 7);
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a6;
  v11 = a2;
  v14 = HIDWORD(a6);
  std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](a1);
  a1[4] = a1[3];
  a1[7] = a1[6];
  v15 = ((a5[1] - *a5) >> 6);
  while (v15 >= 1)
  {
    if (*(*a5 + (--v15 << 6)) <= a4)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  if (v7 <= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = v7;
  }

  if (v7 > a4)
  {
    v15 = v14;
  }

  v17 = v16 | (v15 << 32);
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(a1, a3 - v11 + 1 - v16, a3 - v11, a5, v17, v18);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v23 = v18;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v23);
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(a1, v11, a3, a5, v17, a7);
}

void Nightingale::wristTemperatureInputAcquisition::reset(Nightingale::wristTemperatureInputAcquisition *this)
{
  std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](this);
  *(this + 4) = *(this + 3);
  *(this + 7) = *(this + 6);
}

void Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(a4, (a3 - a2 + 1), a3, a5, 1, a6);
  v9 = *a6;
  v10 = *(a6 + 8);
  if (*a6 != v10 && *v9 != v9[1])
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    if (a1[3] != a1[4])
    {
      v11 = *(a6 + 32);
      v12 = *(a6 + 40);
      if (v11 != v12)
      {
        v13 = 0;
        do
        {
          v14 = a1[3];
          v15 = a1[4];
          v16 = memchr(v14, *v11, v15 - v14);
          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v15;
          }

          if (v17 == v15)
          {
            LODWORD(__p) = 0;
          }

          else
          {
            if (0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3) <= v13 || (v18 = v17 - v14, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v18) || (std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>((*a6 + 24 * v13), *(*a6 + 24 * v13), *(*a1 + 24 * v18), *(*a1 + 24 * v18 + 8), (*(*a1 + 24 * v18 + 8) - *(*a1 + 24 * v18)) >> 2), 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v18))
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            LODWORD(__p) = (*(*a1 + 24 * v18 + 8) - *(*a1 + 24 * v18)) >> 2;
          }

          std::vector<int>::push_back[abi:nn200100](&v47, &__p);
          ++v13;
          ++v11;
        }

        while (v11 != v12);
        v9 = *a6;
        v10 = *(a6 + 8);
      }
    }

    if (v9 != v10)
    {
      v19 = 0;
      do
      {
        if (v47 == v48)
        {
          goto LABEL_23;
        }

        v20 = (v48 - v47) >> 2;
        if (v20 - 1 < v19)
        {
          goto LABEL_23;
        }

        if (v20 <= v19)
        {
          goto LABEL_70;
        }

        if (*(v47 + v19) || (v29 = *v9, v30 = v9[1], *v9 == v30))
        {
LABEL_23:
          v21 = 0;
        }

        else
        {
          v31 = 0;
          do
          {
            if (*v29 >= 0.0)
            {
              break;
            }

            ++v31;
            ++v29;
          }

          while (v29 != v30);
          v21 = v31;
        }

        v22 = v9[1];
        v23 = &(*v9)[v21];
        __p = 0;
        __dst = 0;
        v46 = 0;
        if (v23 != v22)
        {
          std::vector<int>::__vallocate[abi:nn200100](&__p, v22 - v23);
        }

        Nightingale::wristTemperatureInputAcquisition::removeOutlierUsingSlidingWin(1.0, v8, &__p, 7, 1);
        if (__dst != __p)
        {
          memmove(&(*v9)[v21], __p, __dst - __p);
        }

        if (v47 != v48)
        {
          if (v19 >= ((v48 - v47) >> 2))
          {
LABEL_70:
            std::string::__throw_length_error[abi:nn200100]();
          }

          v24 = *(v47 + v19);
          if (v24)
          {
            v26 = *v9;
            v25 = v9[1];
            v27 = &(*v9)[v24];
            v28 = v25 - v27;
            if (v25 != v27)
            {
              memmove(*v9, v27, v25 - v27);
            }

            v9[1] = (v26 + v28);
          }
        }

        v8 = __p;
        if (__p)
        {
          __dst = __p;
          operator delete(__p);
        }

        ++v19;
        v9 += 3;
      }

      while (v9 != v10);
    }

    LOBYTE(v43) = 0;
    BYTE4(v43) = 0;
    v32 = a1[6];
    v33 = a1[7];
    if (v32 == v33)
    {
      if (*(a6 + 56) == *(a6 + 64))
      {
        v8 = std::vector<std::optional<float>>::assign((a6 + 56), *(a6 + 40) - *(a6 + 32), &v43);
      }

      else
      {
        log = ha_get_log(v8);
        v8 = os_log_type_enabled(log, OS_LOG_TYPE_FAULT);
        if (v8)
        {
          Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(log);
        }
      }
    }

    else
    {
      if ((a6 + 56) != a1 + 6)
      {
        v8 = std::vector<std::optional<float>>::__assign_with_size[abi:nn200100]<std::optional<float>*,std::optional<float>*>((a6 + 56), v32, v33, (v33 - v32) >> 3);
      }

      v34 = 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3);
      v36 = *(a6 + 56);
      v35 = *(a6 + 64);
      v37 = &v35[-v36] >> 3;
      v38 = v37 >= v34;
      v39 = v37 - v34;
      if (v39 != 0 && v38)
      {
        v40 = (v36 + 8 * v39);
        v41 = v35 - v40;
        if (v35 != v40)
        {
          v8 = memmove(*(a6 + 56), v40, v41 - 3);
        }

        *(a6 + 64) = v36 + v41;
      }

      else if (v39)
      {
        do
        {
          std::vector<std::optional<float>>::push_back[abi:nn200100](a6 + 56, &v43);
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3) != (*(a6 + 64) - *(a6 + 56)) >> 3);
      }
    }

    Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(v8, a6, a1 + 6);
    if (*(*a6 + 8) - **a6 > 0x1BuLL)
    {
      std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](a1);
      if (*a6 != *(a6 + 8))
      {
        __p = 0;
        __dst = 0;
        v46 = 0;
        std::vector<int>::__vallocate[abi:nn200100](&__p, 7uLL);
      }
    }

    else if (*a1 == a1[1] && a1 != a6)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(a1, *a6, *(a6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3));
    }

    if (a1 + 3 != (a6 + 32))
    {
      std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(a1 + 3, *(a6 + 32), *(a6 + 40), *(a6 + 40) - *(a6 + 32));
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }
}

char *std::vector<std::optional<float>>::assign(uint64_t *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::optional<float>>::__vallocate[abi:nn200100](a1, v8);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = (a1[1] - result) >> 3;
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = (a1[1] - result) >> 3;
  }

  for (; v10; --v10)
  {
    v11 = *a3;
    result[4] = *(a3 + 4);
    *result = v11;
    result += 8;
  }

  if (a2 <= v9)
  {
    a1[1] = *a1 + 8 * a2;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[a2 - v9];
    v14 = 8 * a2 - 8 * v9;
    do
    {
      *v12++ = *a3;
      v14 -= 8;
    }

    while (v14);
    a1[1] = v13;
  }

  return result;
}

void Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(uint64_t a1, float ***a2, uint64_t *a3)
{
  if (*a2 != a2[1] && **a2 != (*a2)[1])
  {
    v4 = a2[4];
    v5 = a2[5];
    if (v4 != v5)
    {
      LOBYTE(v17) = 0;
      BYTE4(v17) = 0;
      v7 = a3[1];
      if (*a3 == v7)
      {
        a1 = std::vector<std::optional<float>>::assign(a3, v5 - v4, &v17);
      }

      else
      {
        v8 = v7 - *a3;
        if (v5 - v4 > (v8 >> 3))
        {
          v9 = (v8 >> 3);
          do
          {
            std::vector<std::optional<float>>::push_back[abi:nn200100](a3, &v17);
            ++v9;
          }

          while (a2[5] - a2[4] > v9);
        }
      }

      v10 = *a2;
      v11 = a2[1];
      if (0xAAAAAAAAAAAAAAABLL * (v11 - *a2) > (a3[1] - *a3) >> 3)
      {
        log = ha_get_log(a1);
        if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
        {
          Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(log);
        }

        a3[1] = *a3;
        a1 = std::vector<std::optional<float>>::assign(a3, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2), &v17);
        v10 = *a2;
        v11 = a2[1];
      }

      if (v10 != v11)
      {
        v13 = 0;
        do
        {
          v14 = v10[1];
          while (v14 != *v10)
          {
            v15 = *--v14;
            LOBYTE(a1) = Nightingale::check2Real_t_equal(a1, v15, -1.0);
            if ((a1 & 1) == 0)
            {
              if (v13 >= (a3[1] - *a3) >> 3)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v16 = *a3 + 8 * v13;
              *v16 = *v14;
              *(v16 + 4) = 1;
              break;
            }
          }

          ++v13;
          v10 += 3;
        }

        while (v10 != v11);
      }
    }
  }
}

void Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (Nightingale::assertVectorOfVectors(a1))
  {
    v9 = *(a1 + 24);
    if (v9 != -1 && *(a1 + 28) != -1)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      if (v11 != v12)
      {
        v13 = v12 - v11;
        if (v13 == 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) && v13 == (*(a1 + 64) - *(a1 + 56)) >> 3)
        {
          v14 = (v9 - a4);
          if (v14 >= 1)
          {
            __p = 0;
            __b = 0;
            v35 = 0;
            std::vector<int>::__vallocate[abi:nn200100](&__p, v14);
          }

          if (a3 >= 1)
          {
            v15 = 0;
            while (1)
            {
              __p = 0;
              __b = 0;
              v35 = 0;
              v16 = *a1;
              v17 = *(a1 + 8);
              if (*a1 == v17)
              {
                v18 = 0;
                v20 = 0;
              }

              else
              {
                do
                {
                  std::vector<float>::vector[abi:nn200100]<float const*,0>(&v30, (4 * v15 + *v16), (4 * (a2 + v15) + *v16));
                  LODWORD(v27[0]) = Nightingale::getMissingCnt(&v30);
                  std::vector<int>::push_back[abi:nn200100](&__p, v27);
                  if (v30)
                  {
                    __dst = v30;
                    operator delete(v30);
                  }

                  v16 += 3;
                }

                while (v16 != v17);
                v18 = __p;
                if (__p == __b)
                {
                  v20 = __p;
                }

                else
                {
                  v19 = __p + 4;
                  v20 = __p;
                  if (__p + 4 != __b)
                  {
                    v21 = *__p;
                    v20 = __p;
                    v22 = (__p + 4);
                    do
                    {
                      v24 = *v22++;
                      v23 = v24;
                      if (v24 < v21)
                      {
                        v21 = v23;
                        v20 = v19;
                      }

                      v19 = v22;
                    }

                    while (v22 != __b);
                  }
                }
              }

              v29 = (v20 - v18) >> 2;
              std::vector<char>::push_back[abi:nn200100](a5 + 24, &v29);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) <= v29)
              {
                goto LABEL_41;
              }

              v30 = 0;
              __dst = 0;
              v32 = 0;
              if (a2)
              {
                std::vector<int>::__vallocate[abi:nn200100](&v30, a2);
              }

              std::vector<std::vector<float>>::push_back[abi:nn200100](&v36, &v30);
              v25 = *(a1 + 56);
              if (v29 >= ((*(a1 + 64) - v25) >> 3))
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v28 = *(v25 + 8 * v29);
              if (v15 > 0)
              {
                break;
              }

              std::vector<std::optional<float>>::push_back[abi:nn200100](a5 + 48, &v28);
              if (v30)
              {
                __dst = v30;
                operator delete(v30);
              }

              if (__p)
              {
                __b = __p;
                operator delete(__p);
              }

              if (a3 <= ++v15)
              {
                goto LABEL_38;
              }
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) > v29)
            {
              memset(v27, 0, sizeof(v27));
              std::vector<int>::__vallocate[abi:nn200100](v27, v15);
            }

LABEL_41:
            std::string::__throw_length_error[abi:nn200100]();
          }

LABEL_38:
          if (&v36 != a5)
          {
            std::vector<std::vector<float>>::__assign_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(a5, v36, v37, 0xAAAAAAAAAAAAAAABLL * (v37 - v36));
          }
        }
      }
    }
  }

  __p = &v36;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&__p);
}

void Nightingale::wristTemperatureInputProcess::clearDLSlices(uint64_t a1, uint64_t *a2)
{
  std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](a2);
  a2[19] = a2[18];
  a2[4] = a2[3];
  a2[10] = 0;
  a2[16] = 0;
  a2[13] = 0;
  a2[7] = a2[6];
  a2[22] = a2[21];
}

void Nightingale::addEntryToNewextractedLunaDayStreamSlice(const void **a1, void *a2, int a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a3;
  std::vector<std::vector<float>>::push_back[abi:nn200100](a1, (*a2 + 24 * a3));
  v6 = a2[18];
  if (v5 >= (a2[19] - v6) >> 2)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  std::vector<float>::push_back[abi:nn200100](a1 + 18, (v6 + 4 * v5));
  v7 = a2[3];
  if (a2[4] - v7 <= v5)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  std::vector<char>::push_back[abi:nn200100]((a1 + 3), (v7 + v5));
  if (a2[10] <= v5 || (v8 = v5 >> 6, v9 = 1 << v5, v14 = (*(a2[9] + 8 * (v5 >> 6)) & (1 << v5)) != 0, std::vector<BOOL>::push_back((a1 + 9), &v14), a2[16] <= v5) || (v13 = (*(a2[15] + 8 * v8) & v9) != 0, std::vector<BOOL>::push_back((a1 + 15), &v13), a2[13] <= v5))
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = (*(a2[12] + 8 * v8) & v9) != 0;
  std::vector<BOOL>::push_back((a1 + 12), &v12);
  v10 = a2[6];
  if (v5 >= (a2[7] - v10) >> 2 || (std::vector<int>::push_back[abi:nn200100](a1 + 6, (v10 + 4 * v5)), v11 = a2[21], v5 >= (a2[22] - v11) >> 2))
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  std::vector<int>::push_back[abi:nn200100](a1 + 21, (v11 + 4 * v5));
}

uint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::computeDay2DayNoise(int **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  if (v1 == *a1 || (v1 - *a1) < 9)
  {
    return 2143289344;
  }

  __p = 0x3F800000BF000000;
  LODWORD(v23) = -1090519040;
  std::vector<float>::vector[abi:nn200100](v20, &__p, 3uLL);
  v5 = *a1;
  v6 = a1[1] - *a1;
  if (!v6 || (v21[0] = *v5, v6 <= 4) || (v21[1] = v5[1], v6 == 8))
  {
LABEL_29:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v21[2] = v5[2];
  std::vector<float>::vector[abi:nn200100](&__p, v21, 3uLL);
  if ((a1[1] - *a1) < 9)
  {
    v18 = 0;
LABEL_23:
    v19 = 2143289344;
    goto LABEL_24;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  v9 = 0.0;
  v10 = 2;
  do
  {
    SmoothedPow_aSample = Nightingale::getSmoothedPow_aSample(&__p, v20);
    v13 = Nightingale::check2Real_t_equal(v12, SmoothedPow_aSample, -1.0);
    if (!v13)
    {
      v9 = v9 + SmoothedPow_aSample;
    }

    v14 = *a1;
    v15 = a1[1] - *a1;
    if (v15 - 1 <= v10)
    {
      ++v10;
    }

    else
    {
      v16 = __p;
      v17 = v23 - (__p + 4);
      if (v23 != __p + 4)
      {
        memmove(__p, __p + 4, v23 - (__p + 4));
        v14 = *a1;
        v15 = a1[1] - *a1;
      }

      v23 = &v16[v17];
      if (v15 <= ++v10)
      {
        goto LABEL_29;
      }

      std::vector<float>::push_back[abi:nn200100](&__p, &v14[v10]);
      v15 = a1[1] - *a1;
    }

    v8 = (v8 + v13);
    v7 += !v13;
  }

  while (v15 > v10);
  v18 = v8 << 32;
  if (!v7)
  {
    goto LABEL_23;
  }

  v19 = COERCE_UNSIGNED_INT(v9 / (v7 * 1.5));
LABEL_24:
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  return v18 | v19;
}

uint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpDay2dayNoiseHigh(float a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0.0 || *a3 == *(a3 + 8))
  {
    v4 = 0;
    v7 = 2143289344;
  }

  else
  {
    v7 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::computeDay2DayNoise(a3);
    v4 = *&v7 > a1 || ((*(a3 + 8) - *a3) >> 2) - 2 == v7 >> 32;
  }

  return v4 | (v7 << 32);
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpSnrLow(float a1, uint64_t a2, int **a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v5 = a4, v6 = *a3, a4 > (a3[1] - v6)))
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    std::vector<float>::vector[abi:nn200100]<float const*,0>(v17, v6, &v6[a4]);
    std::vector<float>::vector[abi:nn200100]<float const*,0>(__p, &(*a3)[v5], a3[1]);
    Nightingale::pooledVar2Win(v17, __p, 0xFFFFFFFFLL);
    v12 = v11;
    if (v11 >= 1.0e-12 && (MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(v17, __p, -1.0), (MeanDiffOf2Windows & 0x100000000) != 0))
    {
      *&v14 = (*&MeanDiffOf2Windows * *&MeanDiffOf2Windows) / v12;
      v8 = *&v14 < a1;
      v9 = v14 << 32;
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }
  }

  return v9 | v8;
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh(float a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 8) == *a3)
  {
    return 0xBF80000000000000;
  }

  *&v6 = Nightingale::getMissingCnt(a3);
  return ((*&v6 / a4) > a1) | (v6 << 32);
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpEarlyWinMissingCntHigh(float a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v4 = *a3, a4 > ((*(a3 + 8) - v4) >> 2)))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xBF80000000000000;
  }

  else
  {
    std::vector<float>::vector[abi:nn200100]<float const*,0>(&v15, v4, &v4[a4]);
    v10 = v15;
    if (v16 == v15)
    {
      v13 = 0xBF80000000000000;
    }

    else
    {
      v11 = (v16 - v15) >> 2;
      *&v12 = Nightingale::getMissingCnt(&v15);
      v13 = ((*&v12 / v11) > a1) | (v12 << 32);
      v10 = v15;
    }

    v8 = v13 & 0xFFFFFFFF00000000;
    if (v10)
    {
      v16 = v10;
      operator delete(v10);
    }

    v7 = v13 & 0xFFFFFF00;
    v6 = v13;
  }

  return v8 | v6 | v7;
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpLaterWinMissingCntHigh(float a1, uint64_t a2, void *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v4 = a4, v5 = a3[1], v4 > (v5 - *a3) >> 2))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xBF80000000000000;
  }

  else
  {
    std::vector<float>::vector[abi:nn200100]<float const*,0>(&v15, (*a3 + 4 * v4), v5);
    v10 = v15;
    if (v16 == v15)
    {
      v13 = 0xBF80000000000000;
    }

    else
    {
      v11 = (v16 - v15) >> 2;
      *&v12 = Nightingale::getMissingCnt(&v15);
      v13 = ((*&v12 / v11) > a1) | (v12 << 32);
      v10 = v15;
    }

    v8 = v13 & 0xFFFFFFFF00000000;
    if (v10)
    {
      v16 = v10;
      operator delete(v10);
    }

    v7 = v13 & 0xFFFFFF00;
    v6 = v13;
  }

  return v8 | v6 | v7;
}

void Nightingale::wristTemperatureInputValidation::checkListOfConditions(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = a6;
    v12 = a3;
    v14 = 0;
    do
    {
      if (v14 >= (a4[1] - *a4) >> 2)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v14 >= (a5[1] - *a5) >> 2)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v15 = std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::operator()(v7, a1, v12, *(*a4 + 4 * v14), *(*a5 + 4 * v14));
      v16 = v15;
      v18 = *(a7 + 8);
      v17 = *(a7 + 16);
      if (v18 >= v17)
      {
        v20 = (v18 - *a7) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v21 = v17 - *a7;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,float>>>(a7, v23);
        }

        v24 = (8 * v20);
        *v24 = v15;
        v19 = 8 * v20 + 8;
        v25 = *(a7 + 8) - *a7;
        v26 = v24 - v25;
        memcpy(v24 - v25, *a7, v25);
        v27 = *a7;
        *a7 = v26;
        *(a7 + 8) = v19;
        *(a7 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }

        v9 = a6;
        v12 = a3;
      }

      else
      {
        *v18 = v15;
        v19 = (v18 + 1);
      }

      *(a7 + 8) = v19;
      if (v16 & v9)
      {
        break;
      }

      ++v14;
      v7 += 32;
    }

    while (v7 != v8);
  }
}

char *std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  v13 = a4;
  v12 = a5;
  v5 = *(a1 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, a2, a3, &v13, &v12);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v7, v8, v9, v10, v11);
}

char *std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<std::vector<float>>::__assign_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(uint64_t **a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * (a1[2] - *a1);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<float>>::__vallocate[abi:nn200100](a1, v9);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v22, a2, a3, v7);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      v18 = a1[1];
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v17 - 16) = v19;
          operator delete(v19);
        }

        v17 = v18;
      }

      while (v18 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v21, a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = std::vector<int>::vector[abi:nn200100](v13, v11);
        v11 += 3;
        v13 = v14 + 3;
        v12 += 24;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

char **std::__copy_impl::operator()[abi:nn200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(int a1, char **a2, char **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::vector<std::optional<float>>::__assign_with_size[abi:nn200100]<std::optional<float>*,std::optional<float>*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::optional<float>>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 3);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 3);
      v11 = v6[1];
    }

    v14 = (a3 - v13);
    if (a3 != v13)
    {
      result = memmove(v11, v13, (v14 - 3));
    }

    v15 = &v14[v11];
  }

  v6[1] = v15;
  return result;
}

Nightingale::ngt_HistoricalAnalyzer *Nightingale::ngt_HistoricalAnalyzer::ngt_HistoricalAnalyzer(Nightingale::ngt_HistoricalAnalyzer *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *(this + 19) = 0;
  *(this + 20) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 18) = this + 152;
  is_enabled = ha_sensitive_logging_is_enabled();
  if (is_enabled)
  {
    log = ha_get_log(is_enabled);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 6;
      strcpy(__p, "4.14.1");
      *buf = 136315138;
      v8 = __p;
      _os_log_impl(&dword_2588F5000, log, OS_LOG_TYPE_DEFAULT, "HistoricalAnalyzer: %s,\n", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return this;
}

void Nightingale::ngt_HistoricalAnalyzer::~ngt_HistoricalAnalyzer(Nightingale::ngt_HistoricalAnalyzer *this)
{
  std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(this + 144, *(this + 19));
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

void Nightingale::ngt_HistoricalAnalyzer::appendDay(void *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = (v2 - *a1) >> 6;
  if (v3 <= 0x2AC5)
  {
    v4 = a1[2];
    if (v2 >= v4)
    {
      v8 = v4 - *a1;
      if (v8 >> 5 <= v3 + 1)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v8 >> 5;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_DayInput>>(a1, v10);
    }

    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v2[2] = a2[2];
    v2[3] = v7;
    *v2 = v5;
    v2[1] = v6;
    a1[1] = v2 + 4;
  }
}

void Nightingale::ngt_HistoricalAnalyzer::appendPhaseSet(void *a1, uint64_t a2, int a3)
{
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1 + 3;
  v7 = (v6 - v4) >> 2;
  if (v7 <= 0x2AC5)
  {
    v9 = a1[5];
    if (v6 >= v9)
    {
      v10 = v9 - v4;
      if (v10 >> 1 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = v10 >> 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>((a1 + 3), v12);
    }

    *v6 = a3;
    a1[4] = v6 + 1;
    v14 = a1[7];
    v13 = a1[8];
    if (v14 >= v13)
    {
      v16 = a1[6];
      v17 = (v14 - v16) >> 3;
      if ((v17 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 2;
      if (v18 >> 2 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>((a1 + 6), v20);
      }

      v21 = (8 * v17);
      *v21 = a2;
      v15 = 8 * v17 + 8;
      v22 = a1[6];
      v23 = a1[7] - v22;
      v24 = v21 - v23;
      memcpy(v21 - v23, v22, v23);
      v25 = a1[6];
      a1[6] = v24;
      a1[7] = v15;
      a1[8] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v14 = a2;
      v15 = (v14 + 1);
    }

    a1[7] = v15;
  }

  std::vector<int>::vector[abi:nn200100](__p, v5);
  std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](&v30, a1 + 6);
  v26 = a1[9];
  if (v26)
  {
    a1[10] = v26;
    operator delete(v26);
  }

  *(a1 + 9) = *__p;
  a1[11] = v29;
  __p[1] = 0;
  v29 = 0;
  __p[0] = 0;
  v27 = a1[12];
  if (v27)
  {
    a1[13] = v27;
    operator delete(v27);
    v27 = __p[0];
  }

  *(a1 + 6) = v30;
  a1[14] = v31;
  v31 = 0;
  v30 = 0uLL;
  if (v27)
  {
    __p[1] = v27;
    operator delete(v27);
  }
}

void Nightingale::ngt_HistoricalAnalyzer::constructePseudo1stCycle(int a1@<W1>, int a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  *(a6 + 4) = 0;
  *(a6 + 8) = 0;
  *(a6 + 12) = 0;
  *(a6 + 16) = 0;
  *(a6 + 32) = 0;
  *(a6 + 36) = 0;
  *(a6 + 40) = 0;
  *(a6 + 44) = 0;
  *(a6 + 48) = 0;
  *(a6 + 52) = 0;
  *(a6 + 56) = 0;
  *(a6 + 60) = 0;
  *(a6 + 64) = 0;
  *(a6 + 68) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = 0;
  if (a2 < 0)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (a3 >> 32 >= ((a5[1] - *a5) >> 6))
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v6 = *(*a5 + (a3 >> 32 << 6));
    if (a1 - v6 <= 18)
    {
LABEL_6:
      v6 = a1 - 28;
    }
  }

  else
  {
    *(a6 + 12) = a2;
    *(a6 + 16) = 1;
    v6 = a2 - 4;
  }

  *a6 = v6;
  *(a6 + 20) = a1 - 1;
  *(a6 + 24) = 1;
}

void Nightingale::ngt_HistoricalAnalyzer::analyze(uint64_t *__return_ptr a1@<X8>, Nightingale::ngt_HistoricalAnalyzer *this@<X0>, int a3@<W1>)
{
  v149 = *MEMORY[0x277D85DE8];
  Nightingale::uiLogProcessor::uiLogProcessor(v137);
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v136);
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v135);
  Nightingale::fwHEstimation::fwHEstimation(&v134);
  v132 = 0;
  v131 = 0;
  v133 = 0;
  *(a1 + 216) = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  Nightingale::PhaseCondenser::phase_updates(__p, (this + 144));
  v5 = *__p;
  v6 = *&__p[8];
  if (*__p != *&__p[8])
  {
    do
    {
      Nightingale::ngt_HistoricalAnalyzer::appendPhaseSet(this, *v5, *(v5 + 8));
      v5 += 16;
    }

    while (v5 != v6);
    v5 = *__p;
  }

  if (v5)
  {
    *&__p[8] = v5;
    operator delete(v5);
  }

  is_enabled = ha_sensitive_logging_is_enabled();
  if (is_enabled)
  {
    log = ha_get_log(is_enabled);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_HistoricalAnalyzer::analyze();
    }
  }

  Nightingale::uiLogProcessor::hist_process(this, this + 9, &v129);
  if (v129 == v130)
  {
    v42 = ha_sensitive_logging_is_enabled();
    if (v42)
    {
      v43 = ha_get_log(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }
  }

  else
  {
    JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(v135, this);
    v11 = v10;
    jDayLastOPKPosBfr1stPeriodSt = Nightingale::uiLogProcessor::get_jDayLastOPKPosBfr1stPeriodSt(v137, *v129, this);
    v98 = v11;
    v99 = JDayIdx1stTmp;
    v100 = this;
    Nightingale::ngt_HistoricalAnalyzer::constructePseudo1stCycle(*v129, jDayLastOPKPosBfr1stPeriodSt, JDayIdx1stTmp, v11, this, v126);
    std::vector<Nightingale::cycleInfo>::insert(&v129, v129, v126);
    v116[0] = 0;
    v116[4] = 0;
    v116[8] = 0;
    v116[12] = 0;
    *&v116[16] = 3;
    v117[0] = 0;
    *&v116[20] = 0;
    *&v116[28] = 0;
    v13.i64[0] = 0x3F0000003FLL;
    v13.i64[1] = 0x3F0000003FLL;
    *&v117[4] = vnegq_f32(v13);
    v117[20] = 0;
    v117[24] = 0;
    v117[28] = 0;
    v118 = 0;
    LOBYTE(v119) = 0;
    v121 = 0;
    LOBYTE(v122) = 0;
    v124 = 0;
    v125[0] = 0;
    v125[4] = 0;
    *&v125[8] = 0x17FC00000;
    *&v125[16] = 0;
    *&v125[20] = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v14 = ha_sensitive_logging_is_enabled();
    if (v14)
    {
      v15 = ha_get_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_2588F5000, v15, OS_LOG_TYPE_DEFAULT, "Cycles:[ \n", __p, 2u);
      }
    }

    v97 = v130;
    if (v129 != v130)
    {
      v16 = 0;
      v17 = (v129 + 18);
      do
      {
        LOBYTE(v104) = 0;
        BYTE4(v104) = 0;
        BYTE8(v104) = 0;
        BYTE12(v104) = 0;
        v109 = 0;
        v110 = 0;
        v108 = 0;
        v111 = 3;
        v18 = ha_sensitive_logging_is_enabled();
        if (v18)
        {
          v19 = ha_get_log(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(v17 - 18);
            *__p = 67109376;
            *&__p[4] = v16;
            *&__p[8] = 1024;
            *&__p[10] = v20;
            _os_log_impl(&dword_2588F5000, v19, OS_LOG_TYPE_DEFAULT, "\t{idx: %d, jDayCycleStart: %d ", __p, 0xEu);
          }
        }

        std::vector<int>::vector[abi:nn200100](v102, this + 9);
        std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](v103, this + 12);
        Nightingale::fwHEstimation::processPerCycle((v17 - 9), this, v99, v98, v102, v135, a3, __p);
        *v116 = *__p;
        *&v116[14] = *&__p[14];
        *v117 = v139;
        *&v117[16] = v140;
        v118 = v141;
        std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(&v119, (&v141 + 8));
        std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(&v122, &v143[1]);
        *v125 = *&v145[8];
        *&v125[14] = *&v145[22];
        if (v145[0] == 1 && v143[1])
        {
          *&v144 = v143[1];
          operator delete(v143[1]);
        }

        if (LOBYTE(v143[0]) == 1 && *(&v141 + 1))
        {
          *&v142 = *(&v141 + 1);
          operator delete(*(&v141 + 1));
        }

        if (v103[0])
        {
          v103[1] = v103[0];
          operator delete(v103[0]);
        }

        if (v102[0])
        {
          v102[1] = v102[0];
          operator delete(v102[0]);
        }

        if (a3)
        {
          v21 = v114;
          if (v114 >= v115)
          {
            v27 = std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__emplace_back_slow_path<Nightingale::coreAnalyticsHistPerCycle_t const&>(&v113, v117);
          }

          else
          {
            v22 = *v117;
            v23 = *&v117[16];
            *(v114 + 32) = v118;
            *v21 = v22;
            *(v21 + 16) = v23;
            *(v21 + 40) = 0;
            v24 = (v21 + 40);
            *(v21 + 64) = 0;
            if (v121 == 1)
            {
              *v24 = 0;
              *(v21 + 48) = 0;
              *(v21 + 56) = 0;
              if (v120 != v119)
              {
                std::vector<int>::__vallocate[abi:nn200100](v24, (v120 - v119) >> 2);
              }

              *(v21 + 64) = 1;
            }

            *(v21 + 72) = 0;
            v25 = (v21 + 72);
            *(v21 + 96) = 0;
            if (v124 == 1)
            {
              *v25 = 0;
              *(v21 + 80) = 0;
              *(v21 + 88) = 0;
              if (v123 != v122)
              {
                std::vector<int>::__vallocate[abi:nn200100](v25, (v123 - v122) >> 2);
              }

              *(v21 + 96) = 1;
            }

            v26 = *v125;
            *(v21 + 118) = *&v125[14];
            *(v21 + 104) = v26;
            v27 = v21 + 128;
          }

          v114 = v27;
        }

        if (v16)
        {
          LODWORD(v104) = *v116;
          BYTE4(v104) = v116[4];
          DWORD2(v104) = *&v116[8];
          BYTE12(v104) = v116[12];
          v111 = *&v116[16];
          v107 = *(v17 - 44);
          v105 = *(v17 - 18);
          v112 = *&v116[20];
          if (v17 != &v108)
          {
            std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(&v108, *v17, v17[1], v17[1] - *v17);
          }

          if (*(v17 - 64) == 1)
          {
            v106 = *(v17 - 17);
            std::vector<Nightingale::ngt_HistoricCycle>::push_back[abi:nn200100](a1, &v104);
          }
        }

        v28 = 0xAAAAAAAAAAAAAAABLL * ((v130 - v129) >> 5);
        v29 = ha_sensitive_logging_is_enabled();
        if (v28 <= v16 + 1)
        {
          if (!v29)
          {
            goto LABEL_54;
          }

          v33 = ha_get_log(v29);
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_54;
          }

          *__p = 0;
          v31 = v33;
          v32 = "\t} \n ";
        }

        else
        {
          if (!v29)
          {
            goto LABEL_54;
          }

          v30 = ha_get_log(v29);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_54;
          }

          *__p = 0;
          v31 = v30;
          v32 = "\t}, \n ";
        }

        _os_log_impl(&dword_2588F5000, v31, OS_LOG_TYPE_DEFAULT, v32, __p, 2u);
LABEL_54:
        if (v108)
        {
          v109 = v108;
          operator delete(v108);
        }

        v34 = v17 + 3;
        v17 += 12;
        ++v16;
      }

      while (v34 != v97);
    }

    v35 = ha_sensitive_logging_is_enabled();
    if (v35)
    {
      v36 = ha_get_log(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_2588F5000, v36, OS_LOG_TYPE_DEFAULT, "], \n", __p, 2u);
      }
    }

    Nightingale::phaseFactorHist::tagHistReproductive(&v131, a1, this + 9);
    v37 = ha_sensitive_logging_is_enabled();
    if (v37)
    {
      v38 = ha_get_log(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v39 = a1[1];
    if (*a1 == v39)
    {
      v44 = ha_sensitive_logging_is_enabled();
      if (v44)
      {
        v45 = ha_get_log(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    else
    {
      if (v39 - *a1 != 72)
      {
        v75 = 0;
        v76 = 0;
        do
        {
          v77 = ha_sensitive_logging_is_enabled();
          if (v77)
          {
            v78 = ha_get_log(v77);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
            {
              if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) <= v76)
              {
LABEL_157:
                std::string::__throw_length_error[abi:nn200100]();
              }

              v79 = *a1 + v75;
              if (*(v79 + 4) == 1)
              {
                v80 = *v79;
              }

              else
              {
                v80 = -1;
              }

              *__p = 67109120;
              *&__p[4] = v80;
              _os_log_debug_impl(&dword_2588F5000, v78, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
            }
          }

          ++v76;
          v75 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((a1[1] - *a1) >> 3) > v76);
      }

      v40 = ha_sensitive_logging_is_enabled();
      if (v40)
      {
        v41 = ha_get_log(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    v46 = ha_sensitive_logging_is_enabled();
    if (v46)
    {
      v47 = ha_get_log(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v48 = a1[1];
    if (*a1 == v48)
    {
      v51 = ha_sensitive_logging_is_enabled();
      if (v51)
      {
        v52 = ha_get_log(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    else
    {
      if (v48 - *a1 != 72)
      {
        v81 = 0;
        for (i = 0; -1 - 0x71C71C71C71C71C7 * ((a1[1] - *a1) >> 3) > i; ++i)
        {
          v83 = ha_sensitive_logging_is_enabled();
          if (v83)
          {
            v84 = ha_get_log(v83);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) <= i)
              {
                goto LABEL_157;
              }

              v85 = *a1 + v81;
              if (*(v85 + 12) == 1)
              {
                v86 = *(v85 + 8);
              }

              else
              {
                v86 = -1;
              }

              *__p = 67109120;
              *&__p[4] = v86;
              _os_log_debug_impl(&dword_2588F5000, v84, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
            }
          }

          v81 += 72;
        }
      }

      v49 = ha_sensitive_logging_is_enabled();
      if (v49)
      {
        v50 = ha_get_log(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    v53 = ha_sensitive_logging_is_enabled();
    if (v53)
    {
      v54 = ha_get_log(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v55 = a1[1];
    if (*a1 == v55)
    {
      v58 = ha_sensitive_logging_is_enabled();
      if (v58)
      {
        v59 = ha_get_log(v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    else
    {
      if (v55 - *a1 != 72)
      {
        v87 = 0;
        v88 = 56;
        do
        {
          v89 = ha_sensitive_logging_is_enabled();
          if (v89)
          {
            v90 = ha_get_log(v89);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) <= v87)
              {
                goto LABEL_157;
              }

              v91 = *(*a1 + v88);
              *__p = 67109120;
              *&__p[4] = v91;
              _os_log_debug_impl(&dword_2588F5000, v90, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
            }
          }

          ++v87;
          v88 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((a1[1] - *a1) >> 3) > v87);
      }

      v56 = ha_sensitive_logging_is_enabled();
      if (v56)
      {
        v57 = ha_get_log(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    v60 = ha_sensitive_logging_is_enabled();
    if (v60)
    {
      v61 = ha_get_log(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v62 = a1[1];
    if (*a1 == v62)
    {
      v65 = ha_sensitive_logging_is_enabled();
      if (v65)
      {
        v66 = ha_get_log(v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    else
    {
      if (v62 - *a1 != 72)
      {
        v92 = 0;
        v93 = 60;
        do
        {
          v94 = ha_sensitive_logging_is_enabled();
          if (v94)
          {
            v95 = ha_get_log(v94);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
            {
              if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) <= v92)
              {
                goto LABEL_157;
              }

              v96 = *(*a1 + v93);
              *__p = 67109120;
              *&__p[4] = v96;
              _os_log_debug_impl(&dword_2588F5000, v95, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
            }
          }

          ++v92;
          v93 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((a1[1] - *a1) >> 3) > v92);
      }

      v63 = ha_sensitive_logging_is_enabled();
      if (v63)
      {
        v64 = ha_get_log(v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    v67 = ha_sensitive_logging_is_enabled();
    if (v67)
    {
      v68 = ha_get_log(v67);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    if (a3)
    {
      Nightingale::ngt_HistoricalAnalyzer::getCoreAnalyticsContent(v100, &v129, v99, v98, &v113, __p);
      v69 = *v145;
      *(a1 + 21) = *&v145[16];
      v70 = v147;
      *(a1 + 23) = v146;
      *(a1 + 25) = v70;
      v71 = v141;
      *(a1 + 13) = v142;
      v72 = v144;
      *(a1 + 15) = *v143;
      *(a1 + 17) = v72;
      *(a1 + 19) = v69;
      v73 = *__p;
      *(a1 + 5) = *&__p[16];
      v74 = v140;
      *(a1 + 7) = v139;
      *(a1 + 9) = v74;
      *(a1 + 11) = v71;
      *(a1 + 216) = v148;
      *(a1 + 3) = v73;
    }

    *__p = &v113;
    std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__destroy_vector::operator()[abi:nn200100](__p);
    if (v124 == 1 && v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    if (v121 == 1 && v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }
  }

  *__p = &v129;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](__p);
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  Nightingale::fwHEstimation::~fwHEstimation(&v134);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v135);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v136);
  Nightingale::uiLogProcessor::~uiLogProcessor(v137);
}

void *Nightingale::phaseFactorHist::phaseFactorHist(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

unint64_t std::vector<Nightingale::cycleInfo>::insert(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    if (v15 > 0x2AAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v16 = a2 - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v14) >> 5);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    }

    if (v17 >= 0x155555555555555)
    {
      v19 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v25 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::cycleInfo>>(a1, v19);
    }

    v21 = 0;
    v22 = 32 * (v16 >> 5);
    v23 = v22;
    v24 = 0;
    std::__split_buffer<Nightingale::cycleInfo>::emplace_back<Nightingale::cycleInfo const&>(&v21, a3);
    v4 = std::vector<Nightingale::cycleInfo>::__swap_out_circular_buffer(a1, &v21, v4);
    std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(&v21);
  }

  else if (a2 == v7)
  {
    std::construct_at[abi:nn200100]<Nightingale::cycleInfo,Nightingale::cycleInfo&,Nightingale::cycleInfo*>(a1[1], a3);
    a1[1] = v7 + 96;
  }

  else
  {
    std::vector<Nightingale::cycleInfo>::__move_range(a1, a2, a1[1], a2 + 96);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 96;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    *v4 = *v10;
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 48);
    *(v4 + 61) = *(v10 + 61);
    *(v4 + 32) = v12;
    *(v4 + 48) = v13;
    *(v4 + 16) = v11;
    if (v4 != v10)
    {
      std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>((v4 + 72), *(v10 + 72), *(v10 + 80), *(v10 + 80) - *(v10 + 72));
    }
  }

  return v4;
}

unint64_t std::vector<Nightingale::ngt_HistoricCycle>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<Nightingale::ngt_HistoricCycle>::__emplace_back_slow_path<Nightingale::ngt_HistoricCycle const&>(a1, a2);
  }

  else
  {
    std::construct_at[abi:nn200100]<Nightingale::ngt_HistoricCycle,Nightingale::ngt_HistoricCycle const&,Nightingale::ngt_HistoricCycle*>(*(a1 + 8), a2);
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void Nightingale::phaseFactorHist::tagHistReproductive(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a3 != a3[1])
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    v4 = a2[1];
    v5 = 0x8E38E38E38E38E39 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = (v5 - 1);
        do
        {
          v11 = 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3);
          if (v11 <= v9 || (v12 = v9 + 1, v11 <= v9 + 1) || (Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *(*a2 + v8 + 16) | ((*(*a2 + v8 + 88) - 1) << 32), a3, &__p), v13 = v12 - 1, 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3) <= v13))
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v14 = (*a2 + v8 + 32);
          if (v14 != &__p)
          {
            std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(v14, __p, v18, v18 - __p);
          }

          v8 += 72;
          v9 = v13 + 1;
        }

        while (v13 + 1 != v10);
        v4 = a2[1];
      }

      Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *(v4 - 56) | 0xFFFFFFFF00000000, a3, &__p);
      v15 = (a2[1] - 40);
      v16 = __p;
      if (v15 != &__p)
      {
        std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(v15, __p, v18, v18 - __p);
        v16 = __p;
      }

      if (v16)
      {
        v18 = v16;
        operator delete(v16);
      }
    }
  }
}

void Nightingale::ngt_HistoricalAnalyzer::getCoreAnalyticsContent(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 192) = 0;
  v13 = a5[1];
  if (*a5 == v13 || (v15 = *a2, v14 = a2[1], *a2 == v14))
  {
    if ((v13 - *a5) < 0x81)
    {
      return;
    }

    v15 = *a2;
    v14 = a2[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 5) < 2)
    {
      return;
    }
  }

  if (v15 + 96 != v14)
  {
    do
    {
      v16 = v15 + 96;
      v17 = *(v15 + 144);
      *(v15 + 32) = *(v15 + 128);
      *(v15 + 48) = v17;
      *(v15 + 61) = *(v15 + 157);
      v18 = *(v15 + 112);
      *v15 = *(v15 + 96);
      *(v15 + 16) = v18;
      std::vector<float>::__move_assign(v15 + 72, (v15 + 168));
      v19 = v15 + 192;
      v15 += 96;
    }

    while (v19 != v14);
    v14 = a2[1];
    v15 = v16;
  }

  while (v14 != v15)
  {
    v20 = *(v14 - 24);
    if (v20)
    {
      *(v14 - 16) = v20;
      operator delete(v20);
    }

    v14 -= 96;
  }

  a2[1] = v15;
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *>(&v253, (*a5 + 128), a5[1], *a5);
  v22 = v21;
  v23 = a5[1];
  if (v23 != v21)
  {
    do
    {
      v23 -= 128;
      std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(a5, v23);
    }

    while (v23 != v22);
  }

  a5[1] = v22;
  v24 = *a2;
  v25 = a2[1];
  v220 = *a2;
  if (*a2 == v25)
  {
    v29 = 0.0;
    v28 = 0.0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    do
    {
      if (*(v24 + 8) == 1 && *v24 == *(v24 + 4))
      {
        ++v26;
      }

      v27 += *(v24 + 16);
      v24 += 96;
    }

    while (v24 != v25);
    v28 = v26;
    v29 = v27;
  }

  v30 = *(v25 - 24);
  if (v30)
  {
    *(v25 - 16) = v30;
    operator delete(v30);
    v22 = a5[1];
  }

  a2[1] = v25 - 96;
  std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(a5, v22 - 128);
  a5[1] = v22 - 128;
  HasMultipleWatchHist = Nightingale::ngt_HistoricalAnalyzer::getHasMultipleWatchHist(a1, 60, a3, a4);
  v253 = 0;
  v254 = 0;
  v255 = 0;
  v250 = 0;
  v251 = 0;
  v252 = 0;
  v247 = 0;
  v248 = 0;
  v249 = 0;
  v244 = 0;
  v245 = 0;
  v246 = 0;
  v241 = 0;
  v242 = 0;
  v243 = 0;
  v239[0] = 0;
  v239[1] = 0;
  v240 = 0;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  __src[0] = 0;
  __src[1] = 0;
  v235 = 0;
  v232[0] = 0;
  v232[1] = 0;
  v233 = 0;
  v230[0] = 0;
  v230[1] = 0;
  v231 = 0;
  v228[0] = 0;
  v228[1] = 0;
  v229 = 0;
  __dst[0] = 0;
  __dst[1] = 0;
  v227 = 0;
  v224[0] = 0;
  v224[1] = 0;
  v32 = *a5;
  v31 = a5[1];
  v33 = (v31 - *a5) >> 7;
  v225 = 0;
  if (v33 <= 12)
  {
    v34 = 12;
  }

  else
  {
    v34 = v33;
  }

  if (v33 <= 15)
  {
    LODWORD(v33) = 15;
  }

  __p[0] = 0;
  __p[1] = 0;
  v223 = 0;
  if (v31 == v32)
  {
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v35 = 0;
    v36 = v34 - 12;
    v37 = v33 - 15;
    do
    {
      if (*v32 == 1)
      {
        LOBYTE(v256) = *(v32 + 4) != 0.0;
        std::vector<BOOL>::push_back(&v253, &v256);
        if (*v32)
        {
          std::vector<float>::push_back[abi:nn200100](&v247, (v32 + 8));
          std::vector<float>::push_back[abi:nn200100](&v236, (v32 + 12));
          if (*(v32 + 108) == 1)
          {
            std::vector<float>::push_back[abi:nn200100](v239, (v32 + 104));
          }
        }
      }

      if (v35 >= v36 && *v32 == 1)
      {
        std::vector<float>::push_back[abi:nn200100](&v244, (v32 + 16));
        std::vector<float>::push_back[abi:nn200100](__p, (v32 + 120));
      }

      if (v35 >= v37 && *v32 == 1)
      {
        std::vector<float>::push_back[abi:nn200100](&v241, (v32 + 8));
        v38 = __src[1];
        if (__src[1] >= v235)
        {
          v40 = __src[0];
          v41 = __src[1] - __src[0];
          v42 = (__src[1] - __src[0]) >> 2;
          v43 = v42 + 1;
          if ((v42 + 1) >> 62)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v44 = v235 - __src[0];
          if ((v235 - __src[0]) >> 1 > v43)
          {
            v43 = v44 >> 1;
          }

          v45 = v44 >= 0x7FFFFFFFFFFFFFFCLL;
          v46 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v45)
          {
            v46 = v43;
          }

          if (v46)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(__src, v46);
          }

          *(4 * v42) = *(v32 + 116);
          v39 = (4 * v42 + 4);
          memcpy(0, v40, v41);
          v47 = __src[0];
          __src[0] = 0;
          __src[1] = v39;
          v235 = 0;
          if (v47)
          {
            operator delete(v47);
          }
        }

        else
        {
          *__src[1] = *(v32 + 116);
          v39 = v38 + 4;
        }

        __src[1] = v39;
        if (*(v32 + 125) == 1)
        {
          std::vector<BOOL>::push_back(&v250, (v32 + 124));
        }
      }

      if (v35 >= v36)
      {
        std::vector<float>::push_back[abi:nn200100](v232, (v32 + 112));
      }

      if (*(v32 + 24) == 1)
      {
        std::vector<float>::push_back[abi:nn200100](v230, (v32 + 20));
      }

      if (*(v32 + 32) == 1)
      {
        std::vector<float>::push_back[abi:nn200100](v228, (v32 + 28));
      }

      if (*(v32 + 64) == 1)
      {
        std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__dst, __dst[1], *(v32 + 40), *(v32 + 48), (*(v32 + 48) - *(v32 + 40)) >> 2);
      }

      if (*(v32 + 96) == 1)
      {
        std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v224, v224[1], *(v32 + 72), *(v32 + 80), (*(v32 + 80) - *(v32 + 72)) >> 2);
      }

      ++v35;
      v32 += 128;
    }

    while (v32 != v31);
    v49 = v253;
    v48 = v254;
  }

  if (v48 > 0x3F || (v50 = 0.0, (v48 & 0x3F) != 0))
  {
    v51 = 0;
    v52 = &v49[v48 >> 6];
    v53 = v52;
    v50 = 0.0;
    do
    {
      if ((*v49 >> v51))
      {
        v54 = 1.0;
      }

      else
      {
        v54 = 0.0;
      }

      v50 = v50 + v54;
      if (v51 == 63)
      {
        v53 = v52;
      }

      v49 += v51 == 63;
      if (v51 == 63)
      {
        v51 = 0;
      }

      else
      {
        ++v51;
      }
    }

    while (v51 != (v48 & 0x3F) || v49 != v53);
  }

  v55 = v50 / v48;
  if (v55 >= 0.0 && v55 <= 1.0)
  {
    if (v55 == 1.0)
    {
      v57 = 9;
    }

    else
    {
      v57 = (v55 / 0.1);
    }
  }

  else
  {
    v57 = -1;
  }

  v218 = v57;
  if (v247 != v248)
  {
    v58 = v247;
    do
    {
      ++v58;
    }

    while (v58 != v248);
  }

  if (v247 == v248)
  {
    v63 = -1;
    v215 = -1;
    v216 = -1;
    v214 = -1;
    v217 = -1;
LABEL_114:
    v213 = v63;
    goto LABEL_115;
  }

  std::__sort<std::__less<float,float> &,float *>();
  Percentile = Nightingale::getPercentile(&v247, 0, 0.5);
  v61 = Nightingale::check2Real_t_equal(v60, Percentile, -1.0);
  if (v61)
  {
    v62 = -1;
LABEL_93:
    v217 = v62;
    goto LABEL_97;
  }

  if (Percentile >= 0.1)
  {
    if (Percentile >= 0.8)
    {
      v62 = 15;
    }

    else
    {
      v62 = (((Percentile + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_93;
  }

  v217 = 0;
LABEL_97:
  v64 = *(v248 - 1);
  v65 = Nightingale::check2Real_t_equal(v61, v64, -1.0);
  if (v65)
  {
    v66 = -1;
LABEL_99:
    v216 = v66;
    goto LABEL_102;
  }

  if (v64 >= 0.1)
  {
    if (v64 >= 0.8)
    {
      v66 = 15;
    }

    else
    {
      v66 = (((v64 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_99;
  }

  v216 = 0;
LABEL_102:
  v67 = *v247;
  if (Nightingale::check2Real_t_equal(v65, *v247, -1.0))
  {
    v68 = -1;
LABEL_104:
    v215 = v68;
    goto LABEL_107;
  }

  if (v67 >= 0.1)
  {
    if (v67 >= 0.8)
    {
      v68 = 15;
    }

    else
    {
      v68 = (((v67 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_104;
  }

  v215 = 0;
LABEL_107:
  v69 = Nightingale::getPercentile(&v247, 0, 0.75);
  if (Nightingale::check2Real_t_equal(v70, v69, -1.0))
  {
    v71 = -1;
LABEL_109:
    v214 = v71;
    goto LABEL_112;
  }

  if (v69 >= 0.1)
  {
    if (v69 >= 0.8)
    {
      v71 = 15;
    }

    else
    {
      v71 = (((v69 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_109;
  }

  v214 = 0;
LABEL_112:
  v72 = Nightingale::getPercentile(&v247, 0, 0.25);
  if (Nightingale::check2Real_t_equal(v73, v72, -1.0))
  {
    v63 = -1;
    goto LABEL_114;
  }

  if (v72 >= 0.1)
  {
    if (v72 >= 0.8)
    {
      v63 = 15;
    }

    else
    {
      v63 = (((v72 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_114;
  }

  v213 = 0;
LABEL_115:
  if (v236 != v237)
  {
    v74 = v236;
    do
    {
      ++v74;
    }

    while (v74 != v237);
  }

  if (v236 == v237)
  {
    v79 = -1;
    v210 = -1;
    v211 = -1;
    v209 = -1;
    v212 = -1;
    goto LABEL_144;
  }

  std::__sort<std::__less<float,float> &,float *>();
  v75 = Nightingale::getPercentile(&v236, 0, 0.5);
  v77 = Nightingale::check2Real_t_equal(v76, v75, -1.0);
  if (v77)
  {
    v78 = -1;
LABEL_121:
    v212 = v78;
    goto LABEL_127;
  }

  if (v75 >= 0.1)
  {
    if (v75 >= 0.8)
    {
      v78 = 15;
    }

    else
    {
      v78 = (((v75 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_121;
  }

  v212 = 0;
LABEL_127:
  v80 = *(v237 - 1);
  v81 = Nightingale::check2Real_t_equal(v77, v80, -1.0);
  if (v81)
  {
    v82 = -1;
LABEL_129:
    v211 = v82;
    goto LABEL_132;
  }

  if (v80 >= 0.1)
  {
    if (v80 >= 0.8)
    {
      v82 = 15;
    }

    else
    {
      v82 = (((v80 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_129;
  }

  v211 = 0;
LABEL_132:
  v83 = *v236;
  if (Nightingale::check2Real_t_equal(v81, *v236, -1.0))
  {
    v84 = -1;
LABEL_134:
    v210 = v84;
    goto LABEL_137;
  }

  if (v83 >= 0.1)
  {
    if (v83 >= 0.8)
    {
      v84 = 15;
    }

    else
    {
      v84 = (((v83 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_134;
  }

  v210 = 0;
LABEL_137:
  v85 = Nightingale::getPercentile(&v236, 0, 0.75);
  if (Nightingale::check2Real_t_equal(v86, v85, -1.0))
  {
    v87 = -1;
LABEL_139:
    v209 = v87;
    goto LABEL_142;
  }

  if (v85 >= 0.1)
  {
    if (v85 >= 0.8)
    {
      v87 = 15;
    }

    else
    {
      v87 = (((v85 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_139;
  }

  v209 = 0;
LABEL_142:
  v88 = Nightingale::getPercentile(&v236, 0, 0.25);
  if (Nightingale::check2Real_t_equal(v89, v88, -1.0))
  {
    v79 = -1;
  }

  else
  {
    if (v88 < 0.1)
    {
      v208 = 0;
      goto LABEL_145;
    }

    if (v88 >= 0.8)
    {
      v79 = 15;
    }

    else
    {
      v79 = (((v88 + -0.1) / 0.05) + 1.0);
    }
  }

LABEL_144:
  v208 = v79;
LABEL_145:
  if (v239[0] == v239[1])
  {
    v205 = -1;
    v206 = -1;
    v207 = -1;
    v203 = -1;
    v204 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v90 = Nightingale::getPercentile(v239, 0, 0.5);
    CAFwEndEstimateError = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v91, v90);
    v207 = CAFwEndEstimateError;
    v93 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(CAFwEndEstimateError, *(v239[1] - 1));
    v206 = v93;
    v203 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v93, *v239[0]);
    v94 = Nightingale::getPercentile(v239, 0, 0.75);
    v205 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v95, v94);
    v96 = Nightingale::getPercentile(v239, 0, 0.25);
    v204 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v97, v96);
  }

  if (v244 != v245)
  {
    v98 = v244;
    do
    {
      ++v98;
    }

    while (v98 != v245);
  }

  if (v244 == v245)
  {
    v103 = -1;
  }

  else
  {
    v99 = 0.0;
    v100 = v244;
    do
    {
      v101 = *v100++;
      v99 = v99 + v101;
    }

    while (v100 != v245);
    v102 = sqrtf(v99 / (v245 - v244));
    if (v102 >= 0.35)
    {
      v103 = 7;
    }

    else
    {
      v103 = (v102 / 0.05);
    }
  }

  v202 = v103;
  v104 = __p[0];
  if (__p[0] == __p[1] || (std::__sort<std::__less<float,float> &,float *>(), v105 = Nightingale::getPercentile(__p, 0, 0.5), v105 < 0.0))
  {
    v201 = -1;
    v106 = v220;
  }

  else
  {
    v106 = v220;
    if (v105 >= 0.9)
    {
      v107 = 9;
    }

    else
    {
      v107 = (v105 / 0.1);
    }

    v201 = v107;
  }

  v108 = __src[1];
  v109 = __src[0];
  if (__src[0] == __src[1])
  {
    v191 = -1;
    v192 = -1;
    v194 = -1;
    v195 = -1;
    v193 = -1;
    v196 = -1;
    v197 = -1;
    v198 = -1;
    v199 = -1;
    v200 = -1;
  }

  else
  {
    v110 = 0;
    v111 = __src[0];
    do
    {
      v112 = *v111++;
      if (v112 == 1)
      {
        ++v110;
      }
    }

    while (v111 != __src[1]);
    CANumberOfCycles = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v104, ((__src[1] - __src[0]) >> 2));
    v200 = CANumberOfCycles;
    v114 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(CANumberOfCycles, v110);
    v199 = v114;
    v115 = 0;
    v116 = v109;
    do
    {
      v117 = *v116++;
      if (v117 == 2)
      {
        ++v115;
      }
    }

    while (v116 != v108);
    v118 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v114, v115);
    v198 = v118;
    v119 = 0;
    v120 = v109;
    do
    {
      v121 = *v120++;
      if (v121 == 3)
      {
        ++v119;
      }
    }

    while (v120 != v108);
    v122 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v118, v119);
    v197 = v122;
    v123 = 0;
    v124 = v109;
    do
    {
      v125 = *v124++;
      if (v125 == 4)
      {
        ++v123;
      }
    }

    while (v124 != v108);
    v126 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v122, v123);
    v196 = v126;
    v127 = 0;
    v128 = v109;
    do
    {
      if (!*v128++)
      {
        ++v127;
      }
    }

    while (v128 != v108);
    v130 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v126, v127);
    v195 = v130;
    v131 = 0;
    v132 = v109;
    do
    {
      v133 = *v132++;
      if (v133 == 6)
      {
        ++v131;
      }
    }

    while (v132 != v108);
    v134 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v130, v131);
    v194 = v134;
    v135 = 0;
    do
    {
      v136 = *v109++;
      if (v136 == 7)
      {
        ++v135;
      }
    }

    while (v109 != v108);
    v137 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v134, v135);
    v193 = v137;
    v138 = v241;
    if (v241 == v242)
    {
      v139 = 0;
    }

    else
    {
      v139 = 0;
      do
      {
        v138 += 4;
        ++v139;
      }

      while (v138 != v242);
    }

    v140 = v251 & 0x3F;
    if (v251 <= 0x3F && v140 == 0)
    {
      LODWORD(v143) = 0;
    }

    else
    {
      v142 = 0;
      v143 = 0;
      v144 = v250;
      v145 = &v250[8 * (v251 >> 6)];
      do
      {
        v143 += (*v144 >> v142) & 1;
        if (v142 == 63)
        {
          v145 = &v250[8 * (v251 >> 6)];
        }

        v144 += 8 * (v142 == 63);
        if (v142 == 63)
        {
          v142 = 0;
        }

        else
        {
          ++v142;
        }
      }

      while (v142 != v140 || v144 != v145);
    }

    v146 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v137, v139 + v143);
    v192 = v146;
    v191 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v146, v143);
    v106 = v220;
  }

  v147 = v25 - v106;
  if (v232[0] == v232[1])
  {
    v189 = -1;
    v190 = -1;
    v187 = -1;
    v188 = -1;
    v221 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v148 = Nightingale::getPercentile(v232, 0, 0.5);
    if (v148 >= 6.0)
    {
      if (v148 >= 9.0)
      {
        if (v148 >= 12.0)
        {
          if (v148 >= 15.0)
          {
            if (v148 >= 18.0)
            {
              if (v148 >= 21.0)
              {
                if (v148 >= 24.0)
                {
                  v149 = 7;
                }

                else
                {
                  v149 = 6;
                }
              }

              else
              {
                v149 = 5;
              }
            }

            else
            {
              v149 = 4;
            }
          }

          else
          {
            v149 = 3;
          }
        }

        else
        {
          v149 = 2;
        }
      }

      else
      {
        v149 = 1;
      }

      v221 = v149;
    }

    else
    {
      v221 = 0;
    }

    v150 = *(v232[1] - 1);
    if (v150 >= 6.0)
    {
      if (v150 >= 9.0)
      {
        if (v150 >= 12.0)
        {
          if (v150 >= 15.0)
          {
            if (v150 >= 18.0)
            {
              if (v150 >= 21.0)
              {
                if (v150 >= 24.0)
                {
                  v151 = 7;
                }

                else
                {
                  v151 = 6;
                }
              }

              else
              {
                v151 = 5;
              }
            }

            else
            {
              v151 = 4;
            }
          }

          else
          {
            v151 = 3;
          }
        }

        else
        {
          v151 = 2;
        }
      }

      else
      {
        v151 = 1;
      }

      v190 = v151;
    }

    else
    {
      v190 = 0;
    }

    v152 = *v232[0];
    if (*v232[0] >= 6.0)
    {
      if (v152 >= 9.0)
      {
        if (v152 >= 12.0)
        {
          if (v152 >= 15.0)
          {
            if (v152 >= 18.0)
            {
              if (v152 >= 21.0)
              {
                if (v152 >= 24.0)
                {
                  v153 = 7;
                }

                else
                {
                  v153 = 6;
                }
              }

              else
              {
                v153 = 5;
              }
            }

            else
            {
              v153 = 4;
            }
          }

          else
          {
            v153 = 3;
          }
        }

        else
        {
          v153 = 2;
        }
      }

      else
      {
        v153 = 1;
      }

      v189 = v153;
    }

    else
    {
      v189 = 0;
    }

    v154 = Nightingale::getPercentile(v232, 0, 0.75);
    if (v154 >= 6.0)
    {
      if (v154 >= 9.0)
      {
        if (v154 >= 12.0)
        {
          if (v154 >= 15.0)
          {
            if (v154 >= 18.0)
            {
              if (v154 >= 21.0)
              {
                if (v154 >= 24.0)
                {
                  v155 = 7;
                }

                else
                {
                  v155 = 6;
                }
              }

              else
              {
                v155 = 5;
              }
            }

            else
            {
              v155 = 4;
            }
          }

          else
          {
            v155 = 3;
          }
        }

        else
        {
          v155 = 2;
        }
      }

      else
      {
        v155 = 1;
      }

      v188 = v155;
    }

    else
    {
      v188 = 0;
    }

    v156 = Nightingale::getPercentile(v232, 0, 0.25);
    if (v156 >= 6.0)
    {
      if (v156 >= 9.0)
      {
        if (v156 >= 12.0)
        {
          if (v156 >= 15.0)
          {
            if (v156 >= 18.0)
            {
              if (v156 >= 21.0)
              {
                if (v156 >= 24.0)
                {
                  v157 = 7;
                }

                else
                {
                  v157 = 6;
                }
              }

              else
              {
                v157 = 5;
              }
            }

            else
            {
              v157 = 4;
            }
          }

          else
          {
            v157 = 3;
          }
        }

        else
        {
          v157 = 2;
        }
      }

      else
      {
        v157 = 1;
      }

      v187 = v157;
    }

    else
    {
      v187 = 0;
    }
  }

  v158 = v147 >> 5;
  if (v230[0] == v230[1])
  {
    v161 = -1;
    v162 = -1;
    v160 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v159 = Nightingale::getPercentile(v230, 0, 0.5);
    if (v159 >= 1.0)
    {
      if (v159 >= 5.0)
      {
        if (v159 >= 10.0)
        {
          if (v159 >= 15.0)
          {
            if (v159 >= 20.0)
            {
              if (v159 >= 25.0)
              {
                if (v159 >= 30.0)
                {
                  v160 = 7;
                }

                else
                {
                  v160 = 6;
                }
              }

              else
              {
                v160 = 5;
              }
            }

            else
            {
              v160 = 4;
            }
          }

          else
          {
            v160 = 3;
          }
        }

        else
        {
          v160 = 2;
        }
      }

      else
      {
        v160 = 1;
      }
    }

    else
    {
      v160 = 0;
    }

    v163 = *(v230[1] - 1);
    if (v163 >= 1.0)
    {
      if (v163 >= 5.0)
      {
        if (v163 >= 10.0)
        {
          if (v163 >= 15.0)
          {
            if (v163 >= 20.0)
            {
              if (v163 >= 25.0)
              {
                if (v163 >= 30.0)
                {
                  v161 = 7;
                }

                else
                {
                  v161 = 6;
                }
              }

              else
              {
                v161 = 5;
              }
            }

            else
            {
              v161 = 4;
            }
          }

          else
          {
            v161 = 3;
          }
        }

        else
        {
          v161 = 2;
        }
      }

      else
      {
        v161 = 1;
      }
    }

    else
    {
      v161 = 0;
    }

    v164 = *v230[0];
    if (*v230[0] >= 1.0)
    {
      if (v164 >= 5.0)
      {
        if (v164 >= 10.0)
        {
          if (v164 >= 15.0)
          {
            if (v164 >= 20.0)
            {
              if (v164 >= 25.0)
              {
                if (v164 >= 30.0)
                {
                  v162 = 7;
                }

                else
                {
                  v162 = 6;
                }
              }

              else
              {
                v162 = 5;
              }
            }

            else
            {
              v162 = 4;
            }
          }

          else
          {
            v162 = 3;
          }
        }

        else
        {
          v162 = 2;
        }
      }

      else
      {
        v162 = 1;
      }
    }

    else
    {
      v162 = 0;
    }
  }

  v165 = 0xAAAAAAAAAAAAAAABLL * v158;
  if (v228[0] == v228[1])
  {
    v168 = -1;
    v169 = -1;
    v167 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v166 = Nightingale::getPercentile(v228, 0, 0.5);
    if (v166 >= 1.0)
    {
      if (v166 >= 5.0)
      {
        if (v166 >= 10.0)
        {
          if (v166 >= 15.0)
          {
            if (v166 >= 20.0)
            {
              if (v166 >= 25.0)
              {
                if (v166 >= 30.0)
                {
                  v167 = 7;
                }

                else
                {
                  v167 = 6;
                }
              }

              else
              {
                v167 = 5;
              }
            }

            else
            {
              v167 = 4;
            }
          }

          else
          {
            v167 = 3;
          }
        }

        else
        {
          v167 = 2;
        }
      }

      else
      {
        v167 = 1;
      }
    }

    else
    {
      v167 = 0;
    }

    v170 = *(v228[1] - 1);
    if (v170 >= 1.0)
    {
      if (v170 >= 5.0)
      {
        if (v170 >= 10.0)
        {
          if (v170 >= 15.0)
          {
            if (v170 >= 20.0)
            {
              if (v170 >= 25.0)
              {
                if (v170 >= 30.0)
                {
                  v168 = 7;
                }

                else
                {
                  v168 = 6;
                }
              }

              else
              {
                v168 = 5;
              }
            }

            else
            {
              v168 = 4;
            }
          }

          else
          {
            v168 = 3;
          }
        }

        else
        {
          v168 = 2;
        }
      }

      else
      {
        v168 = 1;
      }
    }

    else
    {
      v168 = 0;
    }

    v171 = *v228[0];
    if (*v228[0] >= 1.0)
    {
      if (v171 >= 5.0)
      {
        if (v171 >= 10.0)
        {
          if (v171 >= 15.0)
          {
            if (v171 >= 20.0)
            {
              if (v171 >= 25.0)
              {
                if (v171 >= 30.0)
                {
                  v169 = 7;
                }

                else
                {
                  v169 = 6;
                }
              }

              else
              {
                v169 = 5;
              }
            }

            else
            {
              v169 = 4;
            }
          }

          else
          {
            v169 = 3;
          }
        }

        else
        {
          v169 = 2;
        }
      }

      else
      {
        v169 = 1;
      }
    }

    else
    {
      v169 = 0;
    }
  }

  v172 = v165;
  if (__dst[0] == __dst[1])
  {
    v175 = -1;
    v176 = -1;
    v174 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v173 = Nightingale::getPercentile(__dst, 0, 0.5);
    if (v173 >= 1.0)
    {
      if (v173 >= 5.0)
      {
        if (v173 >= 10.0)
        {
          if (v173 >= 15.0)
          {
            if (v173 >= 20.0)
            {
              if (v173 >= 25.0)
              {
                if (v173 >= 30.0)
                {
                  v174 = 7;
                }

                else
                {
                  v174 = 6;
                }
              }

              else
              {
                v174 = 5;
              }
            }

            else
            {
              v174 = 4;
            }
          }

          else
          {
            v174 = 3;
          }
        }

        else
        {
          v174 = 2;
        }
      }

      else
      {
        v174 = 1;
      }
    }

    else
    {
      v174 = 0;
    }

    v177 = *(__dst[1] - 1);
    if (v177 >= 1.0)
    {
      if (v177 >= 5.0)
      {
        if (v177 >= 10.0)
        {
          if (v177 >= 15.0)
          {
            if (v177 >= 20.0)
            {
              if (v177 >= 25.0)
              {
                if (v177 >= 30.0)
                {
                  v175 = 7;
                }

                else
                {
                  v175 = 6;
                }
              }

              else
              {
                v175 = 5;
              }
            }

            else
            {
              v175 = 4;
            }
          }

          else
          {
            v175 = 3;
          }
        }

        else
        {
          v175 = 2;
        }
      }

      else
      {
        v175 = 1;
      }
    }

    else
    {
      v175 = 0;
    }

    v178 = *__dst[0];
    if (*__dst[0] >= 1.0)
    {
      if (v178 >= 5.0)
      {
        if (v178 >= 10.0)
        {
          if (v178 >= 15.0)
          {
            if (v178 >= 20.0)
            {
              if (v178 >= 25.0)
              {
                if (v178 >= 30.0)
                {
                  v176 = 7;
                }

                else
                {
                  v176 = 6;
                }
              }

              else
              {
                v176 = 5;
              }
            }

            else
            {
              v176 = 4;
            }
          }

          else
          {
            v176 = 3;
          }
        }

        else
        {
          v176 = 2;
        }
      }

      else
      {
        v176 = 1;
      }
    }

    else
    {
      v176 = 0;
    }
  }

  v179 = v29 / v172;
  if (v224[0] == v224[1])
  {
    v182 = -1;
    v183 = -1;
    v181 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v180 = Nightingale::getPercentile(v224, 0, 0.5);
    if (v180 >= 1.0)
    {
      if (v180 >= 5.0)
      {
        if (v180 >= 10.0)
        {
          if (v180 >= 15.0)
          {
            if (v180 >= 20.0)
            {
              if (v180 >= 25.0)
              {
                if (v180 >= 30.0)
                {
                  v181 = 7;
                }

                else
                {
                  v181 = 6;
                }
              }

              else
              {
                v181 = 5;
              }
            }

            else
            {
              v181 = 4;
            }
          }

          else
          {
            v181 = 3;
          }
        }

        else
        {
          v181 = 2;
        }
      }

      else
      {
        v181 = 1;
      }
    }

    else
    {
      v181 = 0;
    }

    v184 = *(v224[1] - 1);
    if (v184 >= 1.0)
    {
      if (v184 >= 5.0)
      {
        if (v184 >= 10.0)
        {
          if (v184 >= 15.0)
          {
            if (v184 >= 20.0)
            {
              if (v184 >= 25.0)
              {
                if (v184 >= 30.0)
                {
                  v182 = 7;
                }

                else
                {
                  v182 = 6;
                }
              }

              else
              {
                v182 = 5;
              }
            }

            else
            {
              v182 = 4;
            }
          }

          else
          {
            v182 = 3;
          }
        }

        else
        {
          v182 = 2;
        }
      }

      else
      {
        v182 = 1;
      }
    }

    else
    {
      v182 = 0;
    }

    v185 = *v224[0];
    if (*v224[0] >= 1.0)
    {
      if (v185 >= 5.0)
      {
        if (v185 >= 10.0)
        {
          if (v185 >= 15.0)
          {
            if (v185 >= 20.0)
            {
              if (v185 >= 25.0)
              {
                if (v185 >= 30.0)
                {
                  v183 = 7;
                }

                else
                {
                  v183 = 6;
                }
              }

              else
              {
                v183 = 5;
              }
            }

            else
            {
              v183 = 4;
            }
          }

          else
          {
            v183 = 3;
          }
        }

        else
        {
          v183 = 2;
        }
      }

      else
      {
        v183 = 1;
      }
    }

    else
    {
      v183 = 0;
    }
  }

  *(a6 + 8) = HasMultipleWatchHist;
  *(a6 + 12) = v218;
  *(a6 + 16) = v213;
  *(a6 + 20) = v217;
  *(a6 + 24) = v214;
  *(a6 + 28) = v215;
  *(a6 + 32) = v216;
  *(a6 + 36) = v208;
  *(a6 + 40) = v212;
  *(a6 + 44) = v209;
  *(a6 + 48) = v210;
  *(a6 + 52) = v211;
  *(a6 + 56) = v202;
  *(a6 + 60) = v201;
  *(a6 + 64) = v203;
  *(a6 + 9) = v256;
  *(a6 + 11) = v257;
  *(a6 + 68) = v204;
  v186 = *(a6 + 192);
  *a6 = v28 / v172;
  *(a6 + 4) = v179;
  *(a6 + 72) = v207;
  *(a6 + 76) = v205;
  *(a6 + 80) = v206;
  *(a6 + 84) = v189;
  *(a6 + 88) = v187;
  *(a6 + 92) = v221;
  *(a6 + 96) = v188;
  *(a6 + 100) = v190;
  *(a6 + 104) = v160;
  *(a6 + 108) = v162;
  *(a6 + 112) = v161;
  *(a6 + 116) = v167;
  *(a6 + 120) = v169;
  *(a6 + 124) = v168;
  *(a6 + 128) = v174;
  *(a6 + 132) = v176;
  *(a6 + 136) = v175;
  *(a6 + 140) = v181;
  *(a6 + 144) = v183;
  *(a6 + 148) = v182;
  *(a6 + 152) = v200;
  *(a6 + 156) = v199;
  *(a6 + 160) = v198;
  *(a6 + 164) = v197;
  *(a6 + 168) = v196;
  *(a6 + 172) = v194;
  *(a6 + 176) = v193;
  *(a6 + 180) = v195;
  *(a6 + 184) = v192;
  *(a6 + 188) = v191;
  if ((v186 & 1) == 0)
  {
    *(a6 + 192) = 1;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v224[0])
  {
    v224[1] = v224[0];
    operator delete(v224[0]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v228[0])
  {
    v228[1] = v228[0];
    operator delete(v228[0]);
  }

  if (v230[0])
  {
    v230[1] = v230[0];
    operator delete(v230[0]);
  }

  if (v232[0])
  {
    v232[1] = v232[0];
    operator delete(v232[0]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  if (v236)
  {
    v237 = v236;
    operator delete(v236);
  }

  if (v239[0])
  {
    v239[1] = v239[0];
    operator delete(v239[0]);
  }

  if (v241)
  {
    v242 = v241;
    operator delete(v241);
  }

  if (v244)
  {
    v245 = v244;
    operator delete(v244);
  }

  if (v247)
  {
    v248 = v247;
    operator delete(v247);
  }

  if (v250)
  {
    operator delete(v250);
  }

  if (v253)
  {
    operator delete(v253);
  }
}

void Nightingale::phaseFactorHist::~phaseFactorHist(Nightingale::phaseFactorHist *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getHasMultipleWatchHist(void *a1, int a2, unint64_t a3, char a4)
{
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v20);
  Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(a1, (*(a1[1] - 64) - a2 + 1), *(a1[1] - 64), a3, a4, &v14);
  if (v16 == v17 || v17 - v16 == 1)
  {
    goto LABEL_3;
  }

  if ((v17 - v16) <= 2)
  {
    v10 = v14;
    v11 = v15;
    if (v14 == v15)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_4;
    }

    do
    {
      std::vector<int>::vector[abi:nn200100](v13, v10);
      v8 = Nightingale::checkNumTmpSwitches(v13, 2, 30.0);
      if (v13[0])
      {
        v13[1] = v13[0];
        operator delete(v13[0]);
      }

      v10 += 3;
      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8;
      }
    }

    while (v12 != 1);
  }

  else
  {
    v8 = 1;
  }

LABEL_4:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v21 = &v14;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v21);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v20);
  return v8;
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAFractionOfCycles(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 1.0)
  {
    return 9;
  }

  return (a2 / 0.1);
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCASignalAtFwEndEstimate(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (Nightingale::check2Real_t_equal(this, a2, -1.0))
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 < 0.1)
  {
    return 0;
  }

  if (a2 >= 0.8)
  {
    return 15;
  }

  return (((a2 + -0.1) / 0.05) + 1.0);
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < -7.0)
  {
    return 0;
  }

  if (a2 < -5.0)
  {
    return 1;
  }

  if (a2 < -3.0)
  {
    return 2;
  }

  if (a2 < -1.0)
  {
    return 3;
  }

  if (a2 < 1.0)
  {
    return 4;
  }

  if (a2 >= 7.0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 7;
  }

  if (a2 >= 5.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (a2 >= 3.0)
  {
    return v4;
  }

  else
  {
    return 5;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(Nightingale::ngt_HistoricalAnalyzer *this, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAEstimatedLutealPhaseLength(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 6.0)
  {
    return 0;
  }

  if (a2 < 9.0)
  {
    return 1;
  }

  if (a2 < 12.0)
  {
    return 2;
  }

  if (a2 < 15.0)
  {
    return 3;
  }

  if (a2 >= 24.0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 6;
  }

  if (a2 >= 21.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a2 >= 18.0)
  {
    return v4;
  }

  else
  {
    return 4;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCADaysLoggedBeforeOrAfterCycleStart(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 1.0)
  {
    return 0;
  }

  if (a2 < 5.0)
  {
    return 1;
  }

  if (a2 < 10.0)
  {
    return 2;
  }

  if (a2 < 15.0)
  {
    return 3;
  }

  if (a2 >= 30.0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 6;
  }

  if (a2 >= 25.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a2 >= 20.0)
  {
    return v4;
  }

  else
  {
    return 4;
  }
}

uint64_t Nightingale::phaseFactorHist::suppressFWHist(uint64_t result, unsigned int **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = Nightingale::phaseFactorProcessor::suppressFWStEnd(v6, v3, v3 + 2, a3);
      v3 += 18;
    }

    while (v3 != v4);
  }

  return result;
}

void std::vector<Nightingale::cycleInfo>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 32);
      v10 = *(v6 + 48);
      *(v7 + 61) = *(v6 + 61);
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      *(v7 + 16) = v8;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0;
      *(v7 + 72) = *(v6 + 72);
      *(v7 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v6 += 96;
      v7 += 96;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v11 = 0;
    v12 = a4 - v4;
    do
    {
      v13 = v4 + v11;
      *(v13 - 96) = *(v5 + v11 - 96);
      v14 = *(v5 + v11 - 80);
      v15 = *(v5 + v11 - 64);
      v16 = *(v5 + v11 - 48);
      *(v13 - 35) = *(v5 + v11 - 35);
      *(v13 - 64) = v15;
      *(v13 - 48) = v16;
      *(v13 - 80) = v14;
      std::vector<float>::__move_assign(v4 + v11 - 24, (v5 + v11 - 24));
      v11 -= 96;
    }

    while (v12 != v11);
  }
}

uint64_t std::__split_buffer<Nightingale::cycleInfo>::emplace_back<Nightingale::cycleInfo const&>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0x5555555555555556 * ((v4 - *a1) >> 5);
      }

      v13 = a1[4];
      v15 = a1[4];
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::cycleInfo>>(v13, v12);
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / -2;
    v5 = v6 - 96 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        *v5 = *v6;
        v9 = *(v6 + 16);
        v10 = *(v6 + 32);
        v11 = *(v6 + 48);
        *(v5 + 61) = *(v6 + 61);
        *(v5 + 32) = v10;
        *(v5 + 48) = v11;
        *(v5 + 16) = v9;
        std::vector<float>::__move_assign(v5 + 72, (v6 + 72));
        v6 += 96;
        v5 += 96;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 96 * v8;
    a1[2] = v5;
  }

  result = std::construct_at[abi:nn200100]<Nightingale::cycleInfo,Nightingale::cycleInfo&,Nightingale::cycleInfo*>(v5, a2);
  a1[2] += 96;
  return result;
}

uint64_t std::vector<Nightingale::cycleInfo>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

__n128 std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<float>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__emplace_back_slow_path<Nightingale::coreAnalyticsHistPerCycle_t const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = 0;
  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>(a1, v7);
  }

  v8 = v2 << 7;
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 32) = *(a2 + 32);
  *v8 = v9;
  *(v8 + 16) = v10;
  *(v8 + 40) = 0;
  *(v8 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    std::vector<int>::vector[abi:nn200100]((v8 + 40), a2 + 5);
    *(v8 + 64) = 1;
  }

  *(v8 + 72) = 0;
  *(v8 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    std::vector<int>::vector[abi:nn200100]((v8 + 72), a2 + 9);
    *(v8 + 96) = 1;
  }

  v11 = *(a2 + 104);
  *(v8 + 118) = *(a2 + 118);
  *(v8 + 104) = v11;
  v12 = a1[1];
  v13 = v8 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  a1[1] = v8 + 128;
  v15 = a1[2];
  a1[2] = 0;
  v17[2] = v14;
  v18 = v15;
  v17[0] = v14;
  v17[1] = v14;
  std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::~__split_buffer(v17);
  return v8 + 128;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7);
      v11 = *(a2 + v7 + 16);
      *(v9 + 32) = *(a2 + v7 + 32);
      *v9 = v10;
      *(v9 + 16) = v11;
      *(a4 + v7 + 40) = 0;
      *(v9 + 64) = 0;
      if (*(a2 + v7 + 64) == 1)
      {
        *(a4 + v7 + 40) = 0;
        *(a4 + v7 + 48) = 0;
        *(a4 + v7 + 56) = 0;
        *(v9 + 40) = *(v8 + 40);
        *(v9 + 56) = *(v8 + 56);
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v9 + 64) = 1;
      }

      *(v9 + 72) = 0;
      v12 = (v9 + 72);
      *(v9 + 96) = 0;
      if (*(v8 + 96) == 1)
      {
        v13 = (a2 + v7);
        *v12 = 0;
        *(v9 + 80) = 0;
        *(v9 + 88) = 0;
        *v12 = *(a2 + v7 + 72);
        *(a4 + v7 + 88) = *(a2 + v7 + 88);
        v13[9] = 0;
        v13[10] = 0;
        v13[11] = 0;
        *(v9 + 96) = 1;
      }

      v14 = a4 + v7;
      v15 = *(v8 + 104);
      *(v14 + 118) = *(v8 + 118);
      *(v14 + 104) = v15;
      v7 += 128;
    }

    while (v8 + 128 != a3);
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(result, v5);
      v5 += 128;
    }
  }
}

void std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      *(a2 + 80) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 64) == 1)
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      *(a2 + 48) = v4;

      operator delete(v4);
    }
  }
}

void **std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::~__split_buffer(void **a1)
{
  std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 128;
    std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(v4, i - 128);
  }
}

unint64_t std::vector<Nightingale::ngt_HistoricCycle>::__emplace_back_slow_path<Nightingale::ngt_HistoricCycle const&>(__int128 **a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_HistoricCycle>>(a1, v6);
  }

  v7 = 72 * v2;
  std::construct_at[abi:nn200100]<Nightingale::ngt_HistoricCycle,Nightingale::ngt_HistoricCycle const&,Nightingale::ngt_HistoricCycle*>(v7, a2);
  v8 = v7 + 72;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<Nightingale::ngt_HistoricCycle>::~__split_buffer(v14);
  return v8;
}

uint64_t std::construct_at[abi:nn200100]<Nightingale::ngt_HistoricCycle,Nightingale::ngt_HistoricCycle const&,Nightingale::ngt_HistoricCycle*>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *a1 = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  if (v5 != v6)
  {
    std::vector<Nightingale::Phase>::__vallocate[abi:nn200100](v4, v5 - v6);
  }

  v7 = *(a2 + 7);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 56) = v7;
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_HistoricCycle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 9) = *(v6 + 9);
      *a4 = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = v6[2];
      *(a4 + 48) = *(v6 + 6);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      v8 = *(v6 + 7);
      *(a4 + 64) = *(v6 + 16);
      *(a4 + 56) = v8;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v9 = *(v5 + 4);
      if (v9)
      {
        *(v5 + 5) = v9;
        operator delete(v9);
      }

      v5 = (v5 + 72);
    }
  }
}

uint64_t std::__split_buffer<Nightingale::ngt_HistoricCycle>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Nightingale::ngt_HistoricCycle>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::ngt_HistoricCycle>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 72;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }
}

void std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 128;
        std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    v8 = v5[1];
    *(a4 + 32) = *(v5 + 32);
    *a4 = v7;
    *(a4 + 16) = v8;
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(a4 + 40, (v5 + 40));
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(a4 + 72, (v5 + 72));
    v9 = *(v5 + 104);
    *(a4 + 118) = *(v5 + 118);
    *(a4 + 104) = v9;
    a4 += 128;
    v5 += 8;
  }

  while (v5 != v6);
  return v6;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t Nightingale::lstmHr::lstmHr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2869C6258;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  return a1;
}

{
  *a1 = &unk_2869C6258;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  return a1;
}

void Nightingale::lstmHr::~lstmHr(Nightingale::lstmHr *this)
{
  *this = &unk_2869C6258;
  Nightingale::heartRateInputAcquisition::~heartRateInputAcquisition((this + 372));
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  v3 = *(this + 40);
  if (v3)
  {
    *(this + 41) = v3;
    operator delete(v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  v5 = *(this + 34);
  if (v5)
  {
    *(this + 35) = v5;
    operator delete(v5);
  }

  v6 = *(this + 31);
  if (v6)
  {
    *(this + 32) = v6;
    operator delete(v6);
  }

  v13 = (this + 208);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }

  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

uint64_t Nightingale::lstmHr::acquireHr(Nightingale::lstmHr *this)
{
  JDay1stValidAwakeHr = Nightingale::lstmHr::getJDay1stValidAwakeHr(this);
  result = 0;
  if ((JDay1stValidAwakeHr & 0x100000000) != 0 && *(*(*(this + 23) + 8) - 96) - 39 >= JDay1stValidAwakeHr)
  {
    (**this)(this);
    if (*(this + 108) == 1 && *(this + 116) == 1)
    {
      memset(v4, 0, sizeof(v4));
      std::vector<std::optional<float>>::__vallocate[abi:nn200100](v4, 0x2DuLL);
    }

    return 0;
  }

  return result;
}

uint64_t Nightingale::lstmHr::getJDay1stValidAwakeHr(Nightingale::lstmHr *this)
{
  v1 = *(this + 22);
  v2 = *v1;
  v3 = v1[1];
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if (*(v2 + 24) == 1 && *(v2 + 40) == 1 && v2[9] >= *(*(this + 24) + 132))
    {
      break;
    }

    v2 += 16;
  }

  return *v2 | 0x100000000;
}

uint64_t *Nightingale::lstmHr::acquireHrSlices(uint64_t *this)
{
  v1 = this[24];
  if (*(v1 + 36) == 1)
  {
    v2 = this;
    Nightingale::heartRateInputAcquisition::acquireSlicesFwDayStream(this + 372, this[22], *(v1 + 32), *(this[23] + 80), (this + 1));
    this = Nightingale::heartRateInputAcquisition::get1stJDayDailyIdx((v2 + 372));
    *(v2 + 58) = this;
    *(v2 + 236) = BYTE4(this);
    *(v2 + 60) = v3;
    *(v2 + 244) = v4;
  }

  return this;
}

BOOL Nightingale::lstmHr::validateHr(const Nightingale::ngt_Config **this, int a2)
{
  Nightingale::heartRateInputValidation::heartRateInputValidation(v12, this[24]);
  Nightingale::heartRateInputValidation::process(v12, this + 1, (this + 26), a2);
  if (*(this + 108) == 1 && *(this + 116) == 1 && (v4 = this[24], *(v4 + 36) == 1))
  {
    v5 = *(*(this[23] + 1) - 96);
    v6 = *(v4 + 8) - v5 + 39;
    if (v6 < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 38 - v7;
    if (v6 >= 100)
    {
      v9 = -61;
    }

    else
    {
      v9 = v8;
    }

    v10 = (v9 + *(this + 26) + ((this[2] - this[1]) >> 3)) <= v5;
  }

  else
  {
    v10 = 0;
  }

  Nightingale::heartRateInputValidation::~heartRateInputValidation(v12);
  return v10;
}

uint64_t Nightingale::lstmHr::preConditionHr(Nightingale::lstmHr *this)
{
  v3[49] = *MEMORY[0x277D85DE8];
  Nightingale::heartRateInputPreCondition::heartRateInputPreCondition(v3, *(this + 22), this + 8, *(this + 24));
  v1 = Nightingale::heartRateInputPreCondition::preConditionHr(v3);
  Nightingale::heartRateInputPreCondition::~heartRateInputPreCondition(v3);
  return v1;
}

BOOL Nightingale::lstmHr::prepareUiVectors(Nightingale::lstmHr *this, int a2, int a3, int a4)
{
  v19 = a2;
  v20 = 1;
  v21 = a3;
  v22 = 1;
  v23 = a4;
  v24 = 1;
  v5 = *(this + 22);
  v6 = *(this + 23);
  v7 = *(this + 24);
  v16 = xmmword_258951590;
  v17 = 0x3FB8CEF8402F005CLL;
  Nightingale::uiProcessForLstm::uiProcessForLstm(v18, v5, v6, v7, &v16);
  Nightingale::uiProcessForLstm::prepareUiLogForDL(v18, &v19, this + 296, this + 320, this + 344);
  v8 = *(this + 37);
  v9 = *(this + 38);
  if (v8 == v9 || (v10 = *(this + 40), v11 = *(this + 41), v10 == v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    if ((v11 - v10) >= 0xB4 && (v9 - v8) >= 0xB4)
    {
      v13 = *(this + 43);
      v14 = *(this + 44);
      if (v13 != v14 && (v14 - v13) >= 0xB4)
      {
        v12 = *(*(this + 22) + 8) - **(this + 22) > 0xB3FuLL;
      }
    }
  }

  Nightingale::uiProcessForLstm::~uiProcessForLstm(v18);
  return v12;
}

uint64_t Nightingale::lstmHrFw::lstmHrFw(uint64_t a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4, uint64_t a5)
{
  *a1 = &unk_2869C6258;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  *a1 = &unk_2869C6270;
  v13 = 0;
  std::vector<BOOL>::vector((a1 + 392), 8, &v13);
  *(a1 + 444) = 0;
  *(a1 + 448) = 0;
  *(a1 + 452) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  Nightingale::ngt_dnn_fw_predict_t::ngt_dnn_fw_predict_t((a1 + 480), a4);
  Nightingale::lstmModelCommonFw::lstmModelCommonFw((a1 + 488));
  *(a1 + 492) = 0;
  *(a1 + 496) = 0;
  *(a1 + 500) = 0;
  *(a1 + 504) = 0;
  *(a1 + 508) = 0;
  *(a1 + 512) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 524) = 0;
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 540) = -1082130432;
  *(a1 + 544) = -1;
  *(a1 + 552) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a1 + 560) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 576) = _Q0;
  *(a1 + 584) = -1;
  *(a1 + 592) = 0;
  *(a1 + 596) = 0;
  return a1;
}

void Nightingale::lstmHrFw::~lstmHrFw(id **this)
{
  *this = &unk_2869C6270;
  Nightingale::lstmModelCommonFw::~lstmModelCommonFw((this + 61));
  Nightingale::ngt_dnn_fw_predict_t::~ngt_dnn_fw_predict_t(this + 60);
  v2 = this[57];
  if (v2)
  {
    this[58] = v2;
    operator delete(v2);
  }

  v3 = this[52];
  if (v3)
  {
    this[53] = v3;
    operator delete(v3);
  }

  v4 = this[49];
  if (v4)
  {
    operator delete(v4);
  }

  Nightingale::lstmHr::~lstmHr(this);
}

void Nightingale::lstmHrFw::getFWEndHr(uint64_t *__return_ptr a1@<X8>, Nightingale::lstmHrFw *this@<X0>, int a3@<W1>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 6) = -1082130432;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a1 + 44) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 60) = _Q0;
  *(a1 + 68) = -1;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  if (Nightingale::lstmHr::acquireHr(this) && Nightingale::lstmHr::validateHr(this, 1) && Nightingale::lstmHr::preConditionHr(this))
  {
    if (*(this + 108) & 1) != 0 && (*(this + 116) & 1) != 0 && (*(this + 236))
    {
      if (Nightingale::lstmHr::prepareUiVectors(this, *(this + 26), *(this + 28), *(this + 58)))
      {
        Nightingale::lstmHrFw::applyAlgs(this);
        Nightingale::lstmHrFw::computeHrFwCA(this, a3);
        v11 = *(this + 564);
        *(a1 + 2) = *(this + 548);
        *(a1 + 3) = v11;
        *(a1 + 4) = *(this + 580);
        *(a1 + 20) = *(this + 149);
        v12 = *(this + 532);
        *a1 = *(this + 516);
        *(a1 + 1) = v12;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      Nightingale::lstmHrFw::applyAlgs(v13);
    }
  }
}

uint64_t *Nightingale::lstmHrFw::applyAlgs(uint64_t *this)
{
  if (*(this + 108) & 1) != 0 && (v1 = this, (*(this + 116)))
  {
    v2 = *(this + 26) + 44;
    v3 = *(this + 28);
    if (v2 <= v3)
    {
      for (i = 0; ; ++i)
      {
        v5 = v2 + i;
        v6 = i;
        Nightingale::lstmHrFw::applyAlgsADay(v1, v6);
        if (*(v1 + 444) == 1 && (*(v1 + 520) & 1) == 0 && Nightingale::lstmHrFw::validateFwRsltADay(v1, v2 + i))
        {
          if ((*(v1 + 444) & 1) == 0)
          {
            goto LABEL_25;
          }

          *(v1 + 516) = v2 + i + *(v1 + 440);
          *(v1 + 520) = 1;
          *(v1 + 524) = v5;
          *(v1 + 528) = 1;
        }

        v7 = *(v1 + 208);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 216) - v7) >> 3) <= v6)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v8 = *(v7 + 24 * v6 + 8) - 1;
        if ((*(*(v7 + 24 * v6) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
        {
          v9 = *(v1 + 536) ^ 1;
        }

        else
        {
          v9 = 0;
        }

        this = Nightingale::lstmHrFw::validateToRunPeriodADay(v1, v2 + i, v9 & 1);
        if (this)
        {
          *(v1 + 532) = v5;
          *(v1 + 536) = 1;
        }

        if (*(v1 + 520) == 1 && *(v1 + 528) == 1)
        {
          if (v5 >= v3 || (*(v1 + 536) & 1) != 0)
          {
            return this;
          }
        }

        else if (v5 >= v3)
        {
          return this;
        }
      }
    }
  }

  else
  {
LABEL_25:
    std::__throw_bad_optional_access[abi:nn200100]();
    return Nightingale::lstmHrFw::computeHrFwCA(v10, v11);
  }

  return this;
}

void Nightingale::lstmHrFw::computeHrFwCA(uint64_t *this, int a2)
{
  if (a2)
  {
    if (this[31] != this[32])
    {
      Nightingale::lstmHrFw::computeHrSignalQuality(v5, this);
      v3 = v5[1];
      *(this + 540) = v5[0];
      *(this + 556) = v3;
      *(this + 572) = v5[2];
      *(this + 147) = v6;
      v4 = this[23];
      if (*(v4 + 108) == 1 && *(this + 520) == 1)
      {
        *(this + 148) = *(this + 129) + ~*(v4 + 104);
        *(this + 596) = 1;
      }
    }
  }
}

void Nightingale::lstmHrFw::applyAlgsADay(Nightingale::lstmHrFw *this, uint64_t a2)
{
  v2 = *(this + 26);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 27) - v2) >> 3);
  if (a2 < v3)
  {
    v4 = a2;
    if (v3 <= a2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = a2;
    if (**(v2 + 24 * a2))
    {
      v7 = (a2 + 44);
      if (v7 < (*(this + 2) - *(this + 1)) >> 3 && v7 < (*(this + 5) - *(this + 4)) >> 3 && v7 < (*(this + 38) - *(this + 37)) >> 2 && v7 < (*(this + 41) - *(this + 40)) >> 2 && v7 < (*(this + 44) - *(this + 43)) >> 2)
      {
        v8 = a2 + 45;
        memset(v18, 0, sizeof(v18));
        v17 = 0;
        v15 = 0u;
        *v16 = 0u;
        *__src = 0u;
        *v14 = 0u;
        memset(v12, 0, sizeof(v12));
        Nightingale::lstmHr::copyASliceToLstmStruct(this, v12, this + 1, a2, (a2 + 45));
        Nightingale::lstmHr::copyASliceToLstmStruct(this, &v12[1] + 1, this + 4, v4, v8);
        v9 = *(this + 37);
        v10 = (v9 + 4 * v4);
        v11 = (4 * v8);
        std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(__src, __src[0], v10, (v9 + v11), (v11 - 4 * v5) >> 2);
        std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v14[1], v14[1], (*(this + 40) + 4 * v5), (*(this + 40) + v11), (v11 - 4 * v5) >> 2);
        std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v16, v16[0], (*(this + 43) + 4 * v5), (*(this + 43) + v11), (v11 - 4 * v5) >> 2);
        Nightingale::ngt_dnn_fw_predict_t::ngt_dnn_process_fw(this + 60, v12, v18);
      }
    }
  }
}

uint64_t Nightingale::lstmHrFw::validateFwRsltADay(Nightingale::lstmHrFw *this, int a2)
{
  if (*(this + 444) != 1)
  {
    return 0;
  }

  if (*(this + 57) == *(this + 58))
  {
    return 0;
  }

  if (*(this + 452) != 1)
  {
    return 0;
  }

  v3 = *(*(this + 23) + 8);
  if (*(v3 - 60) != 1)
  {
    return 0;
  }

  if (*(this + 50) <= 7uLL)
  {
    goto LABEL_48;
  }

  v4 = *(this + 110);
  v5 = *(v3 - 64);
  v6 = *(v3 - 96);
  v7 = *(this + 49);
  v8 = 128;
  if (!*(this + 520))
  {
    v8 = 0;
  }

  v9 = *v7 & 0xFFFFFFFFFFFFFF7FLL | v8;
  *v7 = v9;
  v10 = *(this + 50);
  v11 = v10 & 0x3F;
  if (v10 > 0x3F || v11 != 5)
  {
    v12 = 5;
    v13 = &v7[v10 >> 6];
    v14 = v7;
    while (((*v14 >> v12) & 1) == 0)
    {
      if (v12 == 63)
      {
        v13 = &v7[v10 >> 6];
      }

      v14 += v12 == 63;
      if (v12 == 63)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }

      if (v12 == v11 && v14 == v13)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

LABEL_19:
  if (!v10)
  {
    goto LABEL_48;
  }

  v15 = v9 & 0xFFFFFFFFFFFFFFFELL;
  if (*(this + 112) < 10.0)
  {
    ++v15;
  }

  *v7 = v15;
  if (*(this + 50) <= 1uLL)
  {
    goto LABEL_48;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((v4 & 0xFFFFFFFE) == 2));
  *v7 = v16;
  if (*(this + 50) <= 3uLL)
  {
    goto LABEL_48;
  }

  v17 = (a2 - v6 + v4);
  v18 = v17;
  v19 = roundf(v5 + -13.0);
  *v7 = v16 & 0xFFFFFFFFFFFFFFF7 | (8 * (v19 < v17));
  v20 = Nightingale::follicularPhaseCheck(v17, 6, 100);
  if (*(this + 50) <= 2uLL)
  {
    goto LABEL_48;
  }

  v21 = 4;
  if ((v20 & 1) == 0)
  {
    v21 = 0;
  }

  **(this + 49) = **(this + 49) & 0xFFFFFFFFFFFFFFFBLL | v21;
  v22 = Nightingale::passLutealPhaseCheck(v17, v5, 6.0);
  if (*(this + 50) <= 4uLL)
  {
    goto LABEL_48;
  }

  v23 = 0;
  v24 = *(this + 49);
  v25 = 16;
  if (!v22)
  {
    v25 = 0;
  }

  v26 = *v24 & 0xFFFFFFFFFFFFFFEFLL | v25;
  *v24 = v26;
  v27 = v24;
  v28 = v24;
  do
  {
    if (((*v28 >> v23) & 1) == 0)
    {
      return 0;
    }

    if (v23 == 63)
    {
      v27 = v24;
    }

    v28 += v23 == 63;
    if (v23 == 63)
    {
      v23 = 0;
    }

    else
    {
      ++v23;
    }
  }

  while (v23 != 3 || v28 != v27);
  if (v19 < v18 && v22)
  {
    return 1;
  }

  v30 = *(this + 50);
  if (v19 >= v18)
  {
    if (v30 > 5)
    {
      v31 = 32;
      goto LABEL_47;
    }

LABEL_48:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v30 <= 6)
  {
    goto LABEL_48;
  }

  v31 = 64;
LABEL_47:
  result = 0;
  *v24 = v26 | v31;
  return result;
}

uint64_t Nightingale::lstmHrFw::validateToRunPeriodADay(Nightingale::lstmHrFw *this, int a2, int a3)
{
  if (*(this + 536))
  {
    return 0;
  }

  v3 = this;
  if (*(this + 444) != 1 || *(this + 57) == *(this + 58) || *(this + 452) != 1 || *(*(*(this + 23) + 8) - 60) != 1)
  {
    return 0;
  }

  v6 = *(this + 110);
  v7 = v6 + a2;
  v9 = *(this + 53);
  v8 = *(this + 54);
  if (v9 >= v8)
  {
    v12 = *(this + 52);
    v13 = v9 - v12;
    v14 = (v9 - v12) >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v16 = v8 - v12;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(this + 416, v18);
    }

    v19 = (v9 - v12) >> 2;
    v20 = (4 * v14);
    v21 = (4 * v14 - 4 * v19);
    *v20 = v7;
    v10 = v20 + 1;
    memcpy(v21, v12, v13);
    this = *(v3 + 52);
    *(v3 + 52) = v21;
    *(v3 + 53) = v10;
    *(v3 + 54) = 0;
    if (this)
    {
      operator delete(this);
    }
  }

  else
  {
    *v9 = v7;
    v10 = v9 + 4;
  }

  *(v3 + 53) = v10;
  v22 = *(v3 + 52);
  if (v10 - v22 >= 0x11)
  {
    if (v10 != (v22 + 4))
    {
      this = memmove(*(v3 + 52), (v22 + 4), v10 - v22 - 4);
    }

    *(v3 + 53) = v10 - 1;
  }

  v23 = Nightingale::lstmHrFw::consistencyCheck(this, v3 + 52, 4);
  result = 0;
  if (v23 && (v6 + 20) <= 0xE)
  {
    if (a3)
    {
      *(v3 + 133) = a2;
      result = 1;
      *(v3 + 536) = 1;
    }
  }

  return result;
}

void Nightingale::lstmHr::copyASliceToLstmStruct(uint64_t a1, const void **a2, void *a3, unsigned int a4, unsigned int a5)
{
  std::vector<std::optional<float>>::vector[abi:nn200100]<std::__wrap_iter<std::optional<float> const*>,0>(&v19, (*a3 + 8 * a4), (*a3 + 8 * a5));
  v6 = v19;
  v7 = v20;
  if (v19 != v20)
  {
    do
    {
      v8 = -1.0;
      if (*(v6 + 4) == 1)
      {
        v8 = *v6;
      }

      v10 = a2[1];
      v9 = a2[2];
      if (v10 >= v9)
      {
        v12 = *a2;
        v13 = v10 - *a2;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>(a2, v17);
        }

        *(8 * v14) = v8;
        v11 = (8 * v14 + 8);
        memcpy(0, v12, v13);
        v18 = *a2;
        *a2 = 0;
        a2[1] = v11;
        a2[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a2[1] = v11;
      v6 += 2;
    }

    while (v6 != v7);
    v6 = v19;
  }

  if (v6)
  {
    v20 = v6;
    operator delete(v6);
  }
}

BOOL Nightingale::lstmHrFw::consistencyCheck(uint64_t a1, int **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 < a3)
  {
    return 0;
  }

  v6 = v4 - 1;
  if (v4 == 1)
  {
    return 1;
  }

  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2[1] - *a2;
  }

  if (v7 - 1 <= v4 - 2)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = 0;
  v11 = *v3;
  v9 = v3 + 1;
  v10 = v11;
  do
  {
    v12 = *v9++;
    v8 = v12 + v8 - v10;
    v10 = v12;
    --v6;
  }

  while (v6);
  return v8 == 0;
}

void Nightingale::lstmHrFw::computeHrSignalQuality(uint64_t *__return_ptr a1@<X8>, Nightingale::lstmHrFw *this@<X0>)
{
  *a1 = -1082130432;
  *(a1 + 4) = -1;
  *(a1 + 12) = -1;
  v5 = *(this + 31);
  v4 = *(this + 32);
  if (v4 == v5)
  {
    a1[3] = 0;
    *(a1 + 5) = 0;
    *a1 = 1065353216;
    *(a1 + 3) = 0;
    *(a1 + 11) = 0;
  }

  else
  {
    v6 = 0;
    v7 = (v4 - v5) >> 3;
    v8 = *(this + 31);
    do
    {
      v6 += *(v8 + 4) ^ 1;
      v8 += 8;
    }

    while (v8 != v4);
    v9 = 0;
    v10 = v7;
    *a1 = v6 / v7;
    v11 = v5;
    do
    {
      if (*(v11 + 4) == 1 && *v11 > 11)
      {
        ++v9;
      }

      v11 += 8;
    }

    while (v11 != v4);
    v12 = 0;
    *(a1 + 5) = v9 / v10;
    v13 = v5;
    do
    {
      if (*(v13 + 4) == 1 && *v13 > 17)
      {
        ++v12;
      }

      v13 += 8;
    }

    while (v13 != v4);
    v14 = 0;
    *(a1 + 6) = v12 / v10;
    v15 = v5;
    do
    {
      if (*(v15 + 4) == 1 && *v15 > 23)
      {
        ++v14;
      }

      v15 += 8;
    }

    while (v15 != v4);
    v16 = 0;
    *(a1 + 7) = v14 / v10;
    __p = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      if (*(v5 + 4) == 1)
      {
        v37 = *v5;
        std::vector<float>::push_back[abi:nn200100](&__p, &v37);
        if ((*(v5 + 4) & 1) == 0)
        {
LABEL_70:
          std::__throw_bad_optional_access[abi:nn200100]();
          Nightingale::lstmHrFw::getHrSignalQuality(v32, v33);
          return;
        }

        if (*v5 < *(*(this + 24) + 132))
        {
          v16 = v16;
        }

        else
        {
          v16 = (v16 + 1);
        }
      }

      else
      {
        v37 = 0.0;
        std::vector<float>::push_back[abi:nn200100](&__p, &v37);
      }

      v5 += 8;
    }

    while (v5 != v4);
    if (v35 != __p)
    {
      std::__sort<std::__less<float,float> &,float *>();
      Percentile = Nightingale::getPercentile(&__p, 1, 0.5);
      if (Percentile > 50.0)
      {
        Percentile = 50.0;
      }

      *(a1 + 1) = llroundf(Percentile);
      v18 = Nightingale::getPercentile(&__p, 1, 0.3);
      if (v18 > 50.0)
      {
        v18 = 50.0;
      }

      *(a1 + 3) = llroundf(v18);
    }

    *(a1 + 11) = Nightingale::getCABoundedNumberOfDays(v16);
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }
  }

  v20 = *(this + 34);
  v19 = *(this + 35);
  if (v19 == v20)
  {
    a1[4] = 0;
    *(a1 + 10) = 0;
    *(a1 + 2) = 0;
    *(a1 + 4) = 0;
    *(a1 + 12) = 0;
  }

  else
  {
    v21 = 0;
    v22 = (v19 - v20) >> 3;
    v23 = *(this + 34);
    do
    {
      if (*(v23 + 4) == 1 && *v23 > 11)
      {
        ++v21;
      }

      v23 += 8;
    }

    while (v23 != v19);
    v24 = 0;
    v25 = v22;
    *(a1 + 8) = v21 / v22;
    v26 = v20;
    do
    {
      if (*(v26 + 4) == 1 && *v26 > 17)
      {
        ++v24;
      }

      v26 += 8;
    }

    while (v26 != v19);
    v27 = 0;
    *(a1 + 9) = v24 / v25;
    v28 = v20;
    do
    {
      if (*(v28 + 4) == 1 && *v28 > 23)
      {
        ++v27;
      }

      v28 += 8;
    }

    while (v28 != v19);
    v29 = 0;
    *(a1 + 10) = v27 / v25;
    __p = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      if (*(v20 + 4) == 1)
      {
        v37 = *v20;
        std::vector<float>::push_back[abi:nn200100](&__p, &v37);
        if ((*(v20 + 4) & 1) == 0)
        {
          goto LABEL_70;
        }

        if (*v20 < *(*(this + 24) + 136))
        {
          v29 = v29;
        }

        else
        {
          v29 = (v29 + 1);
        }
      }

      else
      {
        v37 = 0.0;
        std::vector<float>::push_back[abi:nn200100](&__p, &v37);
      }

      v20 += 8;
    }

    while (v20 != v19);
    if (v35 != __p)
    {
      std::__sort<std::__less<float,float> &,float *>();
      v30 = Nightingale::getPercentile(&__p, 1, 0.5);
      if (v30 > 50.0)
      {
        v30 = 50.0;
      }

      *(a1 + 2) = llroundf(v30);
      v31 = Nightingale::getPercentile(&__p, 1, 0.3);
      if (v31 > 50.0)
      {
        v31 = 50.0;
      }

      *(a1 + 4) = llroundf(v31);
    }

    *(a1 + 12) = Nightingale::getCABoundedNumberOfDays(v29);
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }
  }
}

double Nightingale::lstmHrFw::getHrSignalQuality@<D0>(Nightingale::lstmHrFw *this@<X0>, uint64_t a2@<X8>)
{
  if (Nightingale::lstmHr::acquireHr(this))
  {

    Nightingale::lstmHrFw::computeHrSignalQuality(a2, this);
  }

  else
  {
    *a2 = -1082130432;
    *(a2 + 4) = -1;
    *(a2 + 12) = -1;
    __asm { FMOV            V0.4S, #-1.0 }

    *(a2 + 20) = _Q0;
    __asm { FMOV            V0.2S, #-1.0 }

    *(a2 + 36) = _Q0;
    result = NAN;
    *(a2 + 44) = -1;
  }

  return result;
}

uint64_t Nightingale::lstmHrPeriod::lstmHrPeriod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_2869C6258;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  *a1 = &unk_2869C6288;
  *(a1 + 388) = a6;
  Nightingale::CGradient::CGradient(a1 + 400);
  *(a1 + 456) = 0;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 468) = 0;
  *(a1 + 472) = 0;
  *(a1 + 476) = 0;
  *(a1 + 480) = 0;
  *(a1 + 484) = 0;
  *(a1 + 488) = 0;
  *(a1 + 580) = 0;
  return a1;
}

void Nightingale::lstmHrPeriod::~lstmHrPeriod(Nightingale::lstmHrPeriod *this)
{
  *this = &unk_2869C6288;
  v2 = *(this + 50);
  if (v2)
  {
    *(this + 51) = v2;
    operator delete(v2);
  }

  Nightingale::lstmHr::~lstmHr(this);
}

uint64_t Nightingale::lstmHrPeriod::estimatePeriodStartHr@<X0>(void *__return_ptr a1@<X8>, Nightingale::lstmHrPeriod *this@<X0>)
{
  result = Nightingale::CGradient::CGradient(a1);
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  if (*(this + 392) == 1)
  {
    v5 = *(*(this + 23) + 104);
    if ((v5 & 0x100000000) == 0 || ((v6 = *(this + 388), v7 = v5 + 1, (v6 & 0x100000000) != 0) ? (v8 = v7 < v6) : (v8 = 1), v8))
    {
      result = Nightingale::lstmHr::acquireHr(this);
      if (result)
      {
        result = Nightingale::lstmHr::validateHr(this, 0);
        if (result)
        {
          result = Nightingale::lstmHr::preConditionHr(this);
          if (result)
          {
            if (*(this + 108) & 1) != 0 && (*(this + 116) & 1) != 0 && (*(this + 236))
            {
              Nightingale::lstmHr::prepareUiVectors(this, *(this + 26), *(this + 28), *(this + 58));
              Nightingale::lstmHrPeriod::applyAlgs(this);
            }

            std::__throw_bad_optional_access[abi:nn200100]();
            return Nightingale::lstmHrPeriod::checkDayToRunPeriodDLLessThanOPK(v9, v10, v11);
          }
        }
      }
    }
  }

  return result;
}

__n128 Nightingale::lstmHrPeriod::getEnsembleTelemetry@<Q0>(uint64_t *__return_ptr a1@<X8>, Nightingale::lstmHrPeriod *this@<X0>)
{
  v2 = *(this + 536);
  *(a1 + 2) = *(this + 520);
  *(a1 + 3) = v2;
  v3 = *(this + 568);
  *(a1 + 4) = *(this + 552);
  *(a1 + 5) = v3;
  result = *(this + 488);
  v5 = *(this + 504);
  *a1 = result;
  *(a1 + 1) = v5;
  return result;
}

void Nightingale::lstmHrPeriod::acquireHrSlices(Nightingale::lstmHrPeriod *this)
{
  if (*(this + 392))
  {
    Nightingale::heartRateInputAcquisition::acquireSlicesPeriodDayStream(this + 372, *(this + 22), *(this + 97), this + 8);
    v2 = Nightingale::heartRateInputAcquisition::get1stJDayDailyIdx((this + 372));
    *(this + 58) = v2;
    *(this + 236) = BYTE4(v2);
    *(this + 60) = v3;
    *(this + 244) = v4;
  }

  else
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    Nightingale::lstmHrPeriod::getPeriodProjFromLstmModel(v5, v6);
  }
}

void Nightingale::lstmHrPeriod::getPeriodProjFromLstmModel(Nightingale::lstmHrPeriod *this, Nightingale::lstmModelCommonPeriod *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  *v4 = 0u;
  Nightingale::lstmHr::copyASliceToLstmStruct(this, v4, this + 1, 0, 0x2Du);
  Nightingale::lstmHr::copyASliceToLstmStruct(this, v5 + 1, this + 4, 0, 0x2Du);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v6, *&v6[0], *(this + 37), (*(this + 37) + 180), 45);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v6[1] + 1, *(&v6[1] + 1), *(this + 40), (*(this + 40) + 180), 45);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v7, v7, *(this + 43), (*(this + 43) + 180), 45);
  Nightingale::ngt_dnn_period_predict_t::ngt_dnn_period_predict_t(&v3, *(this + 24));
  Nightingale::ngt_dnn_period_predict_t::ngt_dnn_process_period(&v3, v4, v9);
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    if (v9 > 0x2AAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = a2 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 5);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    }

    if (v11 >= 0x155555555555555)
    {
      v13 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v19 = a1;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(a1, v13);
    }

    v15 = 0;
    v16 = 32 * (v10 >> 5);
    v17 = v16;
    v18 = 0;
    std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::emplace_back<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>(&v15, a3);
    v4 = std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__swap_out_circular_buffer(a1, &v15, v4);
    std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::~__split_buffer(&v15);
  }

  else if (a2 == v7)
  {
    *v7 = 0;
    *(v7 + 88) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v7, a3);
    a1[1] = v7 + 96;
  }

  else
  {
    std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__move_range(a1, a2, a1[1], a2 + 96);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v4, a3);
  }

  return v4;
}

void Nightingale::lstmHrPeriod::getEnsembleInput(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  Nightingale::uiLogProcessor::uiLogProcessor(v16, *(*(a1 + 192) + 48));
  Nightingale::uiLogProcessor::getEnsembleInput(v16, *(a1 + 184), *(a1 + 192), a4);
  if (a2[1] != *a2)
  {
    Nightingale::get_width_and_days_to_drs(*a2, a3);
    a4[3] = v8;
    a4[4] = v9;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) > 1)
    {
      Nightingale::get_width_and_days_to_drs((*a2 + 96), a3);
      a4[5] = v10;
      a4[6] = v11;
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) > 2)
      {
        Nightingale::get_width_and_days_to_drs((*a2 + 192), a3);
        a4[7] = v12;
        a4[8] = v13;
        v14 = *(a1 + 192);
        if (*(v14 + 52) == 1)
        {
          v15 = *(v14 + 48);
        }

        else
        {
          v15 = 2143289344;
        }

        a4[9] = v15;
        Nightingale::vMean<float>();
      }
    }
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t Nightingale::CGradient::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  v4 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v4;
  return a1;
}

uint64_t Nightingale::get_phase_day_format(Nightingale *this)
{
  v1 = 0x100000000;
  if (this == -2)
  {
    v2 = 254;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  if (this == -2)
  {
    v3 = -256;
  }

  else
  {
    v3 = 0;
  }

  if (this >= 0)
  {
    v1 = 0x100000000;
    v2 = (this - 1);
    v3 = (this - 1) & 0xFFFFFF00;
  }

  return v1 | v3 | v2;
}

uint64_t Nightingale::get_days_since(uint64_t a1, int a2)
{
  v2 = a2 - a1;
  if (a2 <= a1 || a1 == -2)
  {
    v2 = -1;
  }

  if ((a1 & 0x100000000) != 0)
  {
    return v2;
  }

  else
  {
    return 4294967293;
  }
}

void Nightingale::get_width_and_days_to_drs(Nightingale::CGradient *a1, uint64_t a2)
{
  v5 = a2;
  v4[0] = &v5;
  v4[1] = &v5;
  v2 = *(a1 + 22);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
    std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:nn200100](v3);
  }

  else
  {
    v6 = v4;
    (*(&off_2869C6300 + v2))(&v6, a1);
  }
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<BOOL>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<BOOL>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t *std::vector<std::optional<float>>::vector[abi:nn200100]<std::__wrap_iter<std::optional<float> const*>,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a2)
  {
    std::vector<std::optional<float>>::__vallocate[abi:nn200100](a1, a3 - a2);
  }

  return a1;
}

void Nightingale::ngt_hr_DLin_t::~ngt_hr_DLin_t(Nightingale::ngt_hr_DLin_t *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      *v10 = 0;
      *(v10 + 88) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v10, v8);
      v8 += 96;
      v10 += 96;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 96;
    v12 = a4 - v7;
    v13 = a2 + v7 - 96 - a4;
    do
    {
      result = std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v11, v13);
      v11 -= 96;
      v13 -= 96;
      v12 += 96;
    }

    while (v12);
  }

  return result;
}

uint64_t std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::emplace_back<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 5);
      }

      v10 = a1[4];
      v12 = a1[4];
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(v10, v9);
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / -2;
    v5 = v6 - 96 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v5, v6);
        v6 += 96;
        v5 += 96;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 96 * v8;
    a1[2] = v5;
  }

  *v5 = 0;
  *(v5 + 88) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v5, a2);
  a1[2] += 96;
  return result;
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 88);
  if (v4 != -1)
  {
    result = (off_2869C62D0[v4])(&v7, result);
  }

  *(v3 + 88) = -1;
  v5 = *(a2 + 88);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_2869C62E0[v5])(&v6, a2);
    *(v3 + 88) = v5;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN11Nightingale19lstmPeriodOutStructENS8_21lstmPeriodTFOutStructEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN11Nightingale19lstmPeriodOutStructENS8_21lstmPeriodTFOutStructEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(a2 + 24);
  *(v2 + 33) = *(a2 + 33);
  *(v2 + 24) = v3;
  result = *(a2 + 56);
  *(v2 + 69) = *(a2 + 69);
  *(v2 + 56) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  *(v2 + 33) = *(a2 + 33);
  *(v2 + 24) = result;
  *(v2 + 56) = *(a2 + 56);
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 88);
  v4 = *(a2 + 88);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_2869C62D0[v3])(&v6, result, a2);
    *(v2 + 88) = -1;
    return result;
  }

  v5 = result;
  return (off_2869C62F0[v4])(&v5, result, a2);
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__assign_alt[abi:nn200100]<0ul,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodOutStruct>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88))
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__emplace[abi:nn200100]<0ul,Nightingale::lstmPeriodOutStruct>(a1, a3);
  }

  else
  {
    std::vector<float>::__move_assign(a2, a3);
    v6 = *(a3 + 24);
    *(a2 + 33) = *(a3 + 33);
    *(a2 + 24) = v6;
    result = *(a3 + 56);
    *(a2 + 69) = *(a3 + 69);
    *(a2 + 56) = result;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__emplace[abi:nn200100]<0ul,Nightingale::lstmPeriodOutStruct>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  if (v4 != -1)
  {
    (off_2869C62D0[v4])(&v8, a1);
  }

  *(a1 + 88) = -1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v5;
  v6 = *(a2 + 56);
  *(a1 + 69) = *(a2 + 69);
  *(a1 + 56) = v6;
  *(a1 + 88) = 0;
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__assign_alt[abi:nn200100]<1ul,Nightingale::lstmPeriodTFOutStruct,Nightingale::lstmPeriodTFOutStruct>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88) == 1)
  {
    std::vector<float>::__move_assign(a2, a3);
    v5 = *(a3 + 24);
    *(a2 + 33) = *(a3 + 33);
    *(a2 + 24) = v5;
    *(a2 + 56) = *(a3 + 56);
  }

  else
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__emplace[abi:nn200100]<1ul,Nightingale::lstmPeriodTFOutStruct>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__emplace[abi:nn200100]<1ul,Nightingale::lstmPeriodTFOutStruct>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  if (v4 != -1)
  {
    (off_2869C62D0[v4])(&v7, a1);
  }

  *(a1 + 88) = -1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 88) = 1;
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v13 = v4;
    v14 = v5;
    v8 = a2;
    v9 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 88) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(a4, v9);
      v9 += 96;
      a4 += 96;
    }

    while (v9 != a3);
    for (; v8 != a3; v8 += 96)
    {
      v11 = *(v8 + 88);
      if (v11 != -1)
      {
        result = (off_2869C62D0[v11])(&v12, v8);
      }

      *(v8 + 88) = -1;
    }
  }

  return result;
}

void **std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::clear[abi:nn200100](uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v1)
  {
    v3 = result;
    do
    {
      v4 = v2 - 96;
      *(v3 + 16) = v2 - 96;
      v5 = *(v2 - 8);
      if (v5 != -1)
      {
        result = (off_2869C62D0[v5])(&v6);
        v4 = *(v3 + 16);
      }

      *(v2 - 8) = -1;
      v2 = v4;
    }

    while (v4 != v1);
  }

  return result;
}

void std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 96;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        result = (off_2869C62D0[v5])(&v6, v3 - 96);
      }

      *(v3 - 8) = -1;
      v3 -= 96;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<Nightingale::overloaded<Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_0,Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&>(int a1, float **this)
{
  Nightingale::CGradient::get_expectation(this);
  if ((*(this + 68) & 1) == 0 || (*(this + 60) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<Nightingale::overloaded<Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_0,Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&>(v3, v4);
  }
}

void sub_258940898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  Nightingale::ngt_Config::~ngt_Config(va);
  _Unwind_Resume(a1);
}

void sub_258940CCC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_258941A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _Unwind_Exception *exception_object, MAIDayStreamProcessorOutput *a37, uint64_t a38, ...)
{
  va_start(va, a38);

  Nightingale::ngt_DayStreamProcOut::~ngt_DayStreamProcOut(va);
  MAIDayStreamProcessorOutput::~MAIDayStreamProcessorOutput(a37);

  _Unwind_Resume(a1);
}

id retrieve_id_for_core_analytics(void)
{
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 valueForKeyPath:@"HADateOfPseudoDeviceIDGeneration"];

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 valueForKeyPath:@"HAPseudoDeviceID"];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (isKindOfClass = [v0 timeIntervalSinceDate:v2], v6 / 86400.0 <= 180.0) && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    v7 = v4;
  }

  else
  {
    v8 = ha_get_log(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2588F5000, v8, OS_LOG_TYPE_DEFAULT, "generated a new unique ID for CoreAnalytics", v13, 2u);
    }

    v9 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v9 UUIDString];

    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v10 setValue:v0 forKeyPath:@"HADateOfPseudoDeviceIDGeneration"];

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v11 setValue:v7 forKeyPath:@"HAPseudoDeviceID"];
  }

  return v7;
}

void sub_258941FB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void Nightingale::ngt_DayStreamProcOut::~ngt_DayStreamProcOut(Nightingale::ngt_DayStreamProcOut *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

Nightingale::ngt_DayStreamProcessor *std::unique_ptr<Nightingale::ngt_DayStreamProcessor>::reset[abi:nn200100](Nightingale::ngt_DayStreamProcessor **a1, Nightingale::ngt_DayStreamProcessor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Nightingale::ngt_DayStreamProcessor::~ngt_DayStreamProcessor(result);

    JUMPOUT(0x259C8E7C0);
  }

  return result;
}

uint64_t *Nightingale::PhaseCondenser::begin_phase(uint64_t a1, unsigned int a2, int a3)
{
  v5 = a3;
  v6 = &v5;
  result = std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, &v5, &std::piecewise_construct, &v6);
  if (a2 >= 9)
  {
    abort();
  }

  ++*(result + a2 + 16);
  return result;
}

uint64_t *Nightingale::PhaseCondenser::end_phase(uint64_t a1, unsigned int a2, int a3)
{
  v5 = a3 + 1;
  v6 = &v5;
  result = std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, &v5, &std::piecewise_construct, &v6);
  if (a2 >= 9)
  {
    abort();
  }

  --*(result + a2 + 16);
  return result;
}

void Nightingale::PhaseCondenser::phase_updates(const void **__return_ptr a1@<X8>, Nightingale::PhaseCondenser *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<Nightingale::PhaseUpdate>::reserve(a1, *(this + 2));
  v30 = 0uLL;
  v31 = 0;
  v4 = *this;
  v5 = this + 8;
  if (*this != (this + 8))
  {
    do
    {
      v6 = a1[1];
      if (*a1 == v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v6 - 2);
      }

      v8 = 0;
      v29 = v7;
      v27 = *(v4 + 2);
      v28 = *(v4 + 24);
      do
      {
        *(&v30 + v8) += *(&v27 + v8);
        v8 += 2;
      }

      while (v8 != 18);
      v24 = v30;
      v25 = v31;
      v26 = Nightingale::PhaseCondenser::flatten_counted_phase_set(&v24);
      if ((std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,9ul>,true,true>(&v29, 0, &v29, 9u, &v26) & 1) == 0)
      {
        v9 = *(v4 + 7);
        v11 = a1[1];
        v10 = a1[2];
        if (v11 >= v10)
        {
          v13 = (v11 - *a1) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v15 = v10 - *a1;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseUpdate>>(a1, v16);
          }

          v17 = 16 * v13;
          *v17 = v26;
          *(v17 + 8) = v9;
          v12 = (16 * v13 + 16);
          v18 = a1[1] - *a1;
          v19 = (16 * v13 - v18);
          memcpy(v19, *a1, v18);
          v20 = *a1;
          *a1 = v19;
          a1[1] = v12;
          a1[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = v26;
          *(v11 + 2) = v9;
          v12 = v11 + 16;
        }

        a1[1] = v12;
      }

      v21 = *(v4 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v4 + 2);
          v23 = *v22 == v4;
          v4 = v22;
        }

        while (!v23);
      }

      v4 = v22;
    }

    while (v22 != v5);
  }
}

void std::vector<Nightingale::PhaseUpdate>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseUpdate>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t Nightingale::PhaseCondenser::flatten_counted_phase_set(uint64_t a1)
{
  v2 = 0;
  v4 = 0;
  do
  {
    if (*(a1 + 2 * v2) >= 1)
    {
      Nightingale::PhaseSet::add(&v4, v2);
    }

    ++v2;
  }

  while (v2 != 9);
  return v4;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseUpdate>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,9ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t *std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void Nightingale::fwEstimatorOPK::getHistFwOpk(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 4) = 0;
  *(a5 + 8) = 0;
  v6 = (a5 + 8);
  *(a5 + 12) = 0;
  *(a5 + 16) = 3;
  *(a5 + 32) = 0;
  *(a5 + 20) = 0;
  *(a5 + 28) = 0;
  v7.i64[0] = 0x3F0000003FLL;
  v7.i64[1] = 0x3F0000003FLL;
  *(a5 + 36) = vnegq_f32(v7);
  *(a5 + 52) = 0;
  *(a5 + 56) = 0;
  *(a5 + 60) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  *(a5 + 140) = 0;
  *(a5 + 144) = 0x17FC00000;
  *(a5 + 152) = 0;
  *(a5 + 156) = 0;
  if (*(a2 + 24) == 1 && *(a2 + 16) == 1 && (a4 & 0x100000000) != 0)
  {
    v9 = *(a2 + 12);
    if (v9 <= a4)
    {
      *a5 = v9 - 4;
      *(a5 + 4) = 1;
      *(a5 + 8) = v9 + 1;
      *(a5 + 12) = 1;
      *(a5 + 16) = 0;
      *(a5 + 29) = Nightingale::phaseFactorProcessor::suppressFWStEnd(a1, a5, v6, a3);
      v11 = *a2;
      v12 = *(a2 + 20);

      Nightingale::fwEstimatorBase::suppressHistFWOverCycleBoundary(a1, v11, v12, a5);
    }

    else
    {
      *(a5 + 28) = 1;
    }
  }
}

uint64_t Nightingale::fwEstimatorOPK::getOnGoingjDayFwEndOpk(uint64_t a1, int a2, uint64_t a3)
{
  if ((BYTE4(a3) & (a3 - 4 >= a2)) != 0)
  {
    return (a3 + 1) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

void __65__period_lstm_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[period_lstm alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__period_lstm_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [period_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(period_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __64__period_lstm_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [period_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(period_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}