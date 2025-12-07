double operations_research::sat::SatDecisionPolicy::UpdateVariableActivityIncrement(operations_research::sat::SatDecisionPolicy *this)
{
  result = *(this + 19) * (1.0 / *(*this + 384));
  *(this + 19) = result;
  return result;
}

uint64_t operations_research::sat::SatDecisionPolicy::NextBranch(std::vector<int> *this)
{
  if ((this[1].__begin_ & 1) == 0)
  {
    operations_research::sat::SatDecisionPolicy::InitializeVariableOrdering(this);
  }

  v2 = *(this->__begin_ + 25);
  if (v2 == 0.0 || vcvtd_n_f64_u64((*(this->__end_cap_.__value_ + 2))(*this->__end_cap_.__value_), 0x40uLL) >= v2)
  {
    value = this[1].__end_cap_.__value_;
    LODWORD(v14) = *(value + 2);
    for (i = this->__end_; ((*(*(i + 3) + (((2 * v14) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v14 & 0x1Fu))) & 3) != 0; LODWORD(v14) = *(value + 2))
    {
      this[2].__end_cap_.__value_[v14] = 0;
      end_low = LODWORD(this[1].__end_);
      LODWORD(this[1].__end_) = end_low - 1;
      if (end_low >= 2)
      {
        operations_research::IntegerPriorityQueue<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement,std::less<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement>>::SetAndDecreasePriority(&this[1].__end_, 1, *&value[4 * end_low], *&value[4 * end_low + 2]);
        i = this->__end_;
        value = this[1].__end_cap_.__value_;
      }

      v16 = *(*(i + 12) + 8 * v14 + 4);
      begin_high = HIDWORD(this[5].__begin_);
      if (begin_high <= v16)
      {
        begin_high = *(*(i + 12) + 8 * v14 + 4);
      }

      *(this[5].__end_ + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      HIDWORD(this[5].__begin_) = begin_high;
    }

    v19 = *(this->__begin_ + 26);
    if (v19 == 0.0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    end = this[1].__end_;
    if (end == 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = this->__end_cap_.__value_;
    if (end)
    {
      v6 = __clz(end);
      if (((end << v6) & 0x7FFFFFFF) != 0)
      {
        v7 = -32;
      }

      else
      {
        v7 = -31;
      }

      v8 = 0xFFFFFFFFFFFFFFFFLL >> (v7 + (v6 | 0x40u));
      do
      {
        v5 = (*(v4 + 2))(*v4) & v8;
      }

      while (end <= v5);
    }

    else
    {
      v5 = (*(v4 + 2))(*v4);
    }

    while (1)
    {
      v9 = *(this[1].__end_cap_.__value_ + (((v5 << 32) + 0x100000000) >> 28));
      v10 = this->__end_;
      if (((*(*(v10 + 3) + (((2 * v9) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v9 & 0x1Fu))) & 3) == 0)
      {
        break;
      }

      v11 = *(*(v10 + 12) + 8 * v9 + 4);
      v12 = HIDWORD(this[5].__begin_);
      if (v12 <= v11)
      {
        v12 = v11;
      }

      HIDWORD(this[5].__begin_) = v12;
      *(this[5].__end_ + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      operations_research::IntegerPriorityQueue<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement,std::less<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement>>::Remove(&this[1].__end_, v9);
      end = this[1].__end_;
      if (end != 1)
      {
        goto LABEL_6;
      }

LABEL_8:
      v5 = 0;
    }

    v14 = *(this[1].__end_cap_.__value_ + (((v5 << 32) + 0x100000000) >> 28));
    v19 = *(this->__begin_ + 26);
    if (v19 == 0.0)
    {
      goto LABEL_31;
    }
  }

  if (vcvtd_n_f64_u64((*(this->__end_cap_.__value_ + 2))(*this->__end_cap_.__value_), 0x40uLL) < v19)
  {
    return ((*(this->__end_cap_.__value_ + 2))(*this->__end_cap_.__value_) & 1 | (2 * v14)) ^ 1;
  }

LABEL_31:
  v21 = v14 >> 6;
  v22 = 1 << v14;
  if ((*&this[9].__end_cap_.__value_[2 * v21] & (1 << v14)) != 0)
  {
    begin = this[10].__end_cap_.__value_;
  }

  else if (LOBYTE(this[11].__end_cap_.__value_) == 1 && (*&this[12].__begin_[2 * v21] & v22) != 0)
  {
    begin = this[13].__begin_;
  }

  else
  {
    begin = this[14].__begin_;
  }

  return ((*&begin[2 * v21] & v22) == 0) | (2 * v14);
}

int *operations_research::IntegerPriorityQueue<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement,std::less<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement>>::Remove(int *result, int a2)
{
  v3 = *(result + 4);
  v4 = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = 0;
  v5 = *result;
  *result = v5 - 1;
  if (v4 != v5)
  {
    v6 = v4;
    v7 = *(result + 1);
    v8 = (v7 + 16 * v5);
    v9 = *v8;
    v10 = *(v8 + 1);
    v11 = v8[1];
    v12 = v7 + 16 * v4;
    v13 = *(v12 + 8);
    if (v11 < v13)
    {
      return operations_research::IntegerPriorityQueue<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement,std::less<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement>>::SetAndDecreasePriority(result, v4, v9 | (v10 << 32), *&v11);
    }

    v14 = *&v10;
    if (v11 == v13 && *(v12 + 4) > *&v10)
    {
      return operations_research::IntegerPriorityQueue<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement,std::less<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement>>::SetAndDecreasePriority(result, v4, v9 | (v10 << 32), *&v11);
    }

    else
    {
      v15 = v9 | (v10 << 32);
      if (v4 >= 2)
      {
        while (1)
        {
          v17 = v4 >> 1;
          v7 = *(result + 1);
          v18 = (v7 + 16 * (v4 >> 1));
          v19 = *v18;
          v20 = *(v18 + 1);
          v21 = v18[1];
          if (v21 >= v11)
          {
            v22 = v21 != v11 || v14 <= *&v20;
            if (v22)
            {
              break;
            }
          }

          v16 = v7 + 16 * v4;
          *v16 = v19 | (v20 << 32);
          *(v16 + 8) = v21;
          *(*(result + 4) + 4 * v19) = v4;
          v22 = v4 > 3;
          v4 >>= 1;
          if (!v22)
          {
            v7 = *(result + 1);
            v4 = v17;
            break;
          }
        }

        v6 = v4;
      }

      v23 = v7 + 16 * v6;
      *v23 = v15;
      *(v23 + 8) = v11;
      *(*(result + 4) + 4 * v9) = v4;
    }
  }

  return result;
}

uint64_t operations_research::sat::SatDecisionPolicy::PqInsertOrUpdate(uint64_t result, int a2)
{
  v2 = 4 * a2;
  v3 = *(*(result + 184) + v2);
  v4 = *(*(result + 160) + 8 * a2);
  v5 = *(*(result + 64) + v2);
  if (v5)
  {
    if (v5 >= 2)
    {
      while (1)
      {
        v7 = v5 >> 1;
        v8 = *(result + 40);
        v9 = (v8 + 16 * (v5 >> 1));
        v10 = *v9;
        v11 = *(v9 + 1);
        v12 = v9[1];
        if (v12 >= v4)
        {
          v13 = v12 != v4 || v3 <= *&v11;
          if (v13)
          {
            break;
          }
        }

        v6 = v8 + 16 * v5;
        *v6 = v10 | (v11 << 32);
        *(v6 + 8) = v12;
        *(*(result + 64) + 4 * v10) = v5;
        v13 = v5 > 3;
        v5 >>= 1;
        if (!v13)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    v5 = *(result + 32) + 1;
    *(result + 32) = v5;
    if (v5 >= 2)
    {
      while (1)
      {
        v7 = v5 >> 1;
        v15 = *(result + 40);
        v16 = (v15 + 16 * (v5 >> 1));
        v17 = *v16;
        v18 = *(v16 + 1);
        v19 = v16[1];
        if (v19 >= v4 && (v19 != v4 || v3 <= *&v18))
        {
          break;
        }

        v14 = v15 + 16 * v5;
        *v14 = v17 | (v18 << 32);
        *(v14 + 8) = v19;
        *(*(result + 64) + 4 * v17) = v5;
        v13 = v5 > 3;
        v5 >>= 1;
        if (!v13)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v7 = v5;
LABEL_24:
  v21 = *(result + 40) + 16 * v7;
  *v21 = a2 | (LODWORD(v3) << 32);
  *(v21 + 8) = v4;
  *(*(result + 64) + 4 * a2) = v7;
  return result;
}

void operations_research::sat::SatDecisionPolicy::Untrail(operations_research::sat::SatDecisionPolicy *this, int a2)
{
  v4 = *this;
  if (*(this + 360) == 1 && *(v4 + 564) == 1)
  {
    v5 = *(this + 1);
    v6 = *(v5 + 12);
    if (v6 > a2)
    {
      v7 = *(v5 + 48);
      v8 = *(this + 42);
      v9 = (v7 + 4 * a2);
      v10 = v6 - a2;
      do
      {
        while (1)
        {
          v11 = *v9++;
          v12 = (v11 >> 1) >> 6;
          v13 = 1 << (v11 >> 1);
          if ((v11 & 1) == 0)
          {
            break;
          }

          *(v8 + 8 * v12) &= ~v13;
          if (!--v10)
          {
            goto LABEL_8;
          }
        }

        *(v8 + 8 * v12) |= v13;
        --v10;
      }

      while (v10);
    }
  }

LABEL_8:
  if (*(v4 + 252) == 1)
  {
    v14 = *(this + 26);
    v15 = (this + 208);
    v16 = (*(this + 27) - v14) >> 3;
    v17 = *(this + 21) - *(this + 20);
    if (v17 >> 3 != v16)
    {
      *&v37 = 0;
      if (v17 >> 3 <= v16)
      {
        if (v17 >> 3 < v16)
        {
          *(this + 27) = v14 + v17;
        }
      }

      else
      {
        std::vector<unsigned long long>::__append(this + 208, (v17 >> 3) - v16, &v37);
      }
    }

    v24 = *(this + 13);
    if (*(this + 12) == v24)
    {
      v25 = -1;
      v26 = *(*(this + 1) + 12);
      if (v26 <= a2)
      {
        return;
      }
    }

    else
    {
      v25 = *(v24 - 16);
      v26 = *(*(this + 1) + 12);
      if (v26 <= a2)
      {
        return;
      }
    }

    v27 = 0;
    v28 = fmax(*(this + 11) * -0.000001 + 0.4, 0.06);
    do
    {
      if (v26 == v25)
      {
        v30 = *(this + 12);
        v29 = *(this + 13);
        v27 += *(v29 - 8);
        *(this + 13) = v29 - 16;
        if (v30 == v29 - 16)
        {
          v25 = -1;
        }

        else
        {
          v25 = *(v29 - 32);
        }
      }

      v31 = *(*(*(this + 1) + 48) + 4 * v26 - 4) >> 1;
      if (v27 >= 1)
      {
        v32 = *(*v15 + 8 * v31);
        if (v32 < 1)
        {
          v33 = 0.0;
        }

        else
        {
          *(*v15 + 8 * v31) = 0;
          v33 = v32 / v27;
        }

        *(*(this + 20) + 8 * v31) = (1.0 - v28) * *(*(this + 20) + 8 * v31) + v28 * v33;
      }

      if (*(this + 24) == 1)
      {
        operations_research::sat::SatDecisionPolicy::PqInsertOrUpdate(this, v31);
      }

      --v26;
    }

    while (v26 > a2);
    if (v27 >= 1)
    {
      v34 = *(this + 13);
      v35 = *(this + 1);
      if (*(this + 12) == v34)
      {
        v36 = *(v35 + 12);
      }

      else
      {
        v36 = *(v35 + 12);
        if (*(v34 - 16) == v36)
        {
          *(v34 - 8) += v27;
          return;
        }
      }

      LODWORD(v37) = v36;
      *(&v37 + 1) = v27;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 96, &v37);
    }
  }

  else if (*(this + 24) == 1)
  {
    v18 = *(this + 31);
    if (v18 >= a2)
    {
      do
      {
        while (1)
        {
          operations_research::sat::SatDecisionPolicy::PqInsertOrUpdate(this, *(*(*(this + 1) + 48) + 4 * v18) >> 1);
          v19 = *(this + 31);
          v20 = v19 >> 6;
          v21 = 1 << v19;
          v22 = *(this + 16);
          v23 = *(v22 + 8 * v20) & ~v21;
          *(v22 + 8 * v20) = v23;
          if (!v23)
          {
            break;
          }

LABEL_15:
          v18 = (__clz(v23) | (v20 << 6)) ^ 0x3F;
          *(this + 31) = v18;
          if (v18 < a2)
          {
            return;
          }
        }

        while (v20)
        {
          v23 = *(v22 + 8 * --v20);
          if (v23)
          {
            goto LABEL_15;
          }
        }

        v18 = -1;
        *(this + 31) = -1;
      }

      while (a2 <= -1);
    }
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int32x2_t a4)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if ((a2 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = (v6 + 4 * a2);
      a4.i32[0] = *a3;
      v19 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v19 < 7)
      {
        goto LABEL_36;
      }

      v20 = v19 + 1;
      v21 = (v6 + 4 * (v20 & 0x7FFFFFFFFFFFFFF8));
      v22 = vdupq_lane_s32(a4, 0);
      v23 = v6 + 1;
      v24 = v20 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v23[-1] = v22;
        *v23 = v22;
        v23 += 2;
        v24 -= 8;
      }

      while (v24);
      v6 = v21;
      if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_36:
        do
        {
          v6->i32[0] = a4.i32[0];
          v6 = (v6 + 4);
        }

        while (v6 != v18);
      }

      v6 = v18;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v7 = (v6->i64 - *a1) >> 2;
    v8 = v7 + a2;
    if ((v7 + a2) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *a1;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v25 = 4 * v7;
    if ((a2 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v25 + 4 * a2;
      a4.i32[0] = *a3;
      v12 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v13 = (4 * v7);
      if (v12 < 7)
      {
        goto LABEL_37;
      }

      v14 = v12 + 1;
      v13 = (v25 + 4 * (v14 & 0x7FFFFFFFFFFFFFF8));
      v15 = vdupq_lane_s32(a4, 0);
      v16 = (v25 + 16);
      v17 = v14 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_37:
        do
        {
          *v13++ = a4.i32[0];
        }

        while (v13 != v11);
      }
    }

    else
    {
      v11 = 4 * v7;
    }

    v26 = *a1;
    v27 = *(a1 + 8) - *a1;
    v28 = v25 - v27;
    memcpy((v25 - v27), *a1, v27);
    *a1 = v28;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v26)
    {

      operator delete(v26);
    }
  }
}

_OWORD *std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::Literal const*>,std::__wrap_iter<operations_research::sat::Literal const*>>(uint64_t a1, char *__src, char *a3, unint64_t a4)
{
  v6 = *(a1 + 16);
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8);
  v13 = v12 - result;
  if (a4 > (v12 - result) >> 2)
  {
    v14 = &__src[v13];
    if (v12 != result)
    {
      result = memmove(result, __src, v13);
      v12 = *(a1 + 8);
    }

    v15 = v12;
    if (v14 == a3)
    {
      goto LABEL_26;
    }

    v16 = v14;
    v17 = a3 - v14 - 4;
    if (v17 < 0x1C)
    {
      v15 = v12;
    }

    else
    {
      v15 = v12;
      if ((v12 - v14) >= 0x20)
      {
        v18 = (v17 >> 2) + 1;
        v19 = 4 * (v18 & 0x7FFFFFFFFFFFFFF8);
        v16 = &v14[v19];
        v15 = (v12 + v19);
        v20 = v12 + 1;
        v21 = (v14 + 16);
        v22 = v18 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v23 = *v21;
          *(v20 - 1) = *(v21 - 1);
          *v20 = v23;
          v20 += 2;
          v21 += 2;
          v22 -= 8;
        }

        while (v22);
        if (v18 == (v18 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    do
    {
      v26 = *v16;
      v16 += 4;
      *v15++ = v26;
    }

    while (v16 != a3);
LABEL_26:
    *(a1 + 8) = v15;
    return result;
  }

  v24 = a3 - __src;
  if (v24)
  {
    v25 = result;
    memmove(result, __src, v24);
    result = v25;
  }

  *(a1 + 8) = result + v24;
  return result;
}

int32x4_t *std::vector<float>::assign(int32x4_t **a1, unint64_t a2, __int32 *a3, int32x2_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (a2 > (v6 - v7) >> 2)
  {
    if (v7)
    {
      a1[1] = v7;
      operator delete(v7);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v9 = a2;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v7;
  v14 = (v12 - v7) >> 2;
  if (v14 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = (v12 - v7) >> 2;
  }

  if (v15)
  {
    a4.i32[0] = *a3;
    v16 = v15;
    if (v15 < 8)
    {
      goto LABEL_33;
    }

    result = (v7 + 4 * (v15 & 0xFFFFFFFFFFFFFFF8));
    v16 = v15 & 7;
    v17 = vdupq_lane_s32(a4, 0);
    v18 = v7 + 1;
    v19 = v15 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v15 != (v15 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_33:
      do
      {
        result->i32[0] = a4.i32[0];
        result = (result + 4);
        --v16;
      }

      while (v16);
    }
  }

  v10 = a2 >= v14;
  v20 = a2 - v14;
  if (v20 != 0 && v10)
  {
    if ((v20 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = (v12 + 4 * v20);
      a4.i32[0] = *a3;
      v22 = 4 * a2 - v13 - 4;
      if (v22 < 0x1C)
      {
        goto LABEL_34;
      }

      v23 = (v22 >> 2) + 1;
      v24 = (v12 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
      v25 = vdupq_lane_s32(a4, 0);
      v26 = v12 + 1;
      v27 = v23 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v26[-1] = v25;
        *v26 = v25;
        v26 += 2;
        v27 -= 8;
      }

      while (v27);
      v12 = v24;
      if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_34:
        do
        {
          v12->i32[0] = a4.i32[0];
          v12 = (v12 + 4);
        }

        while (v12 != v21);
      }

      a1[1] = v21;
    }

    else
    {
      a1[1] = v12;
    }
  }

  else
  {
    a1[1] = (v7 + 4 * a2);
  }

  return result;
}

uint64_t operations_research::IntegerPriorityQueue<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement,std::less<operations_research::sat::SatDecisionPolicy::WeightedVarQueueElement>>::SetAndDecreasePriority(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = 2 * a2;
  if (2 * a2 < *result)
  {
    while (1)
    {
      v6 = v5 | 1;
      v10 = *(result + 8);
      v11 = (v10 + 16 * v5);
      v12 = v11[1];
      v13 = (v10 + 16 * v6);
      v14 = *v13;
      v7 = *(v13 + 1);
      v8 = v13[1];
      if (v12 < v8 || (v12 == v8 ? (v15 = *(v11 + 1) < *&v7) : (v15 = 0), v15))
      {
        if (v8 <= *&a4 && (v8 != *&a4 || *(&a3 + 1) >= *&v7))
        {
LABEL_23:
          v5 = a2;
          goto LABEL_31;
        }
      }

      else
      {
        v14 = *v11;
        if (v12 > *&a4)
        {
          v7 = *(v11 + 1);
          v8 = v11[1];
          LODWORD(v6) = v5;
        }

        else
        {
          v16 = v12 == *&a4 && *(&a3 + 1) < *(v11 + 1);
          v7 = *(v11 + 1);
          v8 = v11[1];
          LODWORD(v6) = v5;
          if (!v16)
          {
            goto LABEL_23;
          }
        }
      }

      v9 = v10 + 16 * a2;
      *v9 = v14 | (v7 << 32);
      *(v9 + 8) = v8;
      *(*(result + 32) + 4 * v14) = a2;
      v5 = 2 * v6;
      a2 = v6;
      if (2 * v6 >= v4)
      {
        goto LABEL_3;
      }
    }
  }

  LODWORD(v6) = a2;
LABEL_3:
  if (v5 <= v4 && ((v18 = *(result + 8), v19 = (v18 + 16 * v5), v20 = *v19, v21 = *(v19 + 1), v22 = v19[1], v22 > *&a4) || (v22 == *&a4 ? (v23 = *(&a3 + 1) < *&v21) : (v23 = 0), v23)))
  {
    v24 = v18 + 16 * v6;
    *v24 = v20 | (v21 << 32);
    *(v24 + 8) = v22;
    *(*(result + 32) + 4 * v20) = v6;
  }

  else
  {
    v5 = v6;
  }

LABEL_31:
  v25 = *(result + 8) + 16 * v5;
  *v25 = a3;
  *(v25 + 8) = *&a4;
  *(*(result + 32) + 4 * a3) = v5;
  return result;
}

uint64_t std::deque<std::vector<operations_research::sat::Literal>>::emplace_back<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(unint64_t *a1, const void **a2, const void **a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 170 * ((v7 - v6) >> 3) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    std::deque<std::vector<operations_research::sat::Literal>>::__add_back_capacity(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v14 = *a2;
    v15 = *a3;
    MEMORY[0] = 0;
    MEMORY[8] = 0;
    MEMORY[0x10] = 0;
    v13 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_11;
    }

LABEL_9:
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[5] + a1[4];
  v10 = (*(v6 + 8 * (v9 / 0xAA)) + 24 * (v9 % 0xAA));
  v11 = *a2;
  v12 = *a3;
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v13 = v12 - v11;
  if (v12 != v11)
  {
    goto LABEL_9;
  }

LABEL_11:
  v16 = a1[4];
  v17 = a1[5] + 1;
  a1[5] = v17;
  v18 = v16 + v17;
  v19 = a1[1];
  v20 = (v19 + 8 * (v18 / 0xAA));
  v21 = *v20 + 24 * (v18 % 0xAA);
  if (a1[2] == v19)
  {
    v21 = 0;
  }

  if (v21 == *v20)
  {
    return *(v20 - 1) + 4056;
  }

  else
  {
    return v21 - 24;
  }
}

void sub_23CCBF0A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Inprocessing::PresolveLoop(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  *&v44[0] = a2;
  *&v44[1] = a3;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  if (dword_27E25D290 >= 1)
  {
    IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::Inprocessing::PresolveLoop(operations_research::sat::SatPresolveOptions)::$_0::operator() const(void)::site, dword_27E25D290);
    v22 = *(a1 + 48);
    v9 = v22[14];
    v10 = 0.0;
    if (operations_research::TimeLimit::LimitReached(v22))
    {
      goto LABEL_3;
    }
  }

  else
  {
    IsEnabled1 = 0;
    v8 = *(a1 + 48);
    v9 = v8[14];
    v10 = 0.0;
    if (operations_research::TimeLimit::LimitReached(v8))
    {
      goto LABEL_3;
    }
  }

  v23 = v9 + *&a2;
  if (IsEnabled1)
  {
    v24 = 0x101010100;
  }

  else
  {
    v24 = 16843008;
  }

  v25 = v24 & 0xFFFFFFFFFFFFFF00 | BYTE1(a3);
  v26 = (a3 >> 16) & 1;
  while (*(*(a1 + 48) + 112) <= v23)
  {
    v27 = *(*(a1 + 56) + 296);
    if (v27)
    {
      operations_research::sat::Inprocessing::PresolveLoop(v27, v52);
    }

    operations_research::sat::ClauseManager::AttachAllClauses(*(a1 + 24));
    if ((operations_research::sat::SatSolver::Propagate(*(a1 + 56)) & 1) == 0)
    {
      return 0;
    }

    operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(*(a1 + 16));
    operations_research::sat::BinaryImplicationGraph::RemoveDuplicates(*(a1 + 16));
    result = operations_research::sat::Inprocessing::DetectEquivalencesAndStamp(a1, v26, IsEnabled1);
    if (!result)
    {
      return result;
    }

    result = operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(a1, IsEnabled1);
    if (!result)
    {
      return result;
    }

    operations_research::sat::BinaryImplicationGraph::RemoveAllRedundantVariables(*(a1 + 16), *(a1 + 96));
    result = operations_research::sat::StampingSimplifier::DoOneRound(*(a1 + 72), IsEnabled1);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 152) < *(*(a1 + 32) + 12))
    {
      goto LABEL_15;
    }

    v28 = *(a1 + 16);
    v29 = *(v28 + 432);
    if (v29 >= 0)
    {
      v30 = *(v28 + 432) & 1;
    }

    else
    {
      v30 = -(*(v28 + 432) & 1);
    }

    if (v30)
    {
      operations_research::sat::Inprocessing::PresolveLoop(v30);
    }

    if (*(a1 + 144) < v29 || (*(v28 + 632) & 1) == 0)
    {
      goto LABEL_15;
    }

    result = operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(a1, IsEnabled1);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 152) < *(*(a1 + 32) + 12))
    {
      goto LABEL_15;
    }

    v31 = *(a1 + 16);
    v32 = *(v31 + 432);
    if (v32 >= 0)
    {
      v33 = *(v31 + 432) & 1;
    }

    else
    {
      v33 = -(*(v31 + 432) & 1);
    }

    if (v33)
    {
      operations_research::sat::Inprocessing::PresolveLoop(v33);
    }

    if (*(a1 + 144) >= v32 && *(v31 + 632) == 1)
    {
      operations_research::sat::BlockedClauseSimplifier::DoOneRound(*(a1 + 80), IsEnabled1);
      result = operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(a1, IsEnabled1);
      if (!result)
      {
        return result;
      }

      result = operations_research::sat::BoundedVariableElimination::DoOneRound(*(a1 + 88), IsEnabled1);
      if (!result)
      {
        return result;
      }

      v34 = *(*(a1 + 56) + 296);
      if (v34)
      {
        operations_research::sat::Inprocessing::PresolveLoop(v34);
      }

      operations_research::sat::ClauseManager::AttachAllClauses(*(a1 + 24));
      result = operations_research::sat::SatSolver::Propagate(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v35 = absl::lts_20240722::GetCurrentTimeNanos(result);
      v36 = *(a1 + 48);
      if (v23 - *(v36 + 112) <= 0.0)
      {
        break;
      }

      v37 = v35;
      result = operations_research::sat::FailedLiteralProbingRound(COERCE_ABSL_LTS_20240722_(v23 - *(v36 + 112)), v25, *(a1 + 136));
      if (!result)
      {
        return result;
      }

      v10 = v10 + (absl::lts_20240722::GetCurrentTimeNanos(result) - CurrentTimeNanos) * 0.000000001 - (v37 - CurrentTimeNanos) * 0.000000001;
      if (*(a1 + 152) >= *(*(a1 + 32) + 12) && !operations_research::sat::Inprocessing::MoreRedundantVariableToClean(a1) && (*(*(a1 + 16) + 632) & 1) != 0 || operations_research::TimeLimit::LimitReached(*(a1 + 48)))
      {
        break;
      }
    }

    else
    {
LABEL_15:
      if (operations_research::TimeLimit::LimitReached(*(a1 + 48)))
      {
        break;
      }
    }
  }

LABEL_3:
  v11 = *(*(a1 + 56) + 296);
  if (v11)
  {
    operations_research::sat::Inprocessing::PresolveLoop(v11);
  }

  operations_research::sat::ClauseManager::AttachAllClauses(*(a1 + 24));
  result = operations_research::sat::SatSolver::Propagate(*(a1 + 56));
  if (result)
  {
    v14 = *(a1 + 104);
    if (*v14 == 1)
    {
      *&v52[0] = "[Pure SAT presolve]";
      *(&v52[0] + 1) = 19;
      *&v51 = " num_fixed: ";
      *(&v51 + 1) = 12;
      v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*(a1 + 32) + 12), v50, v13);
      *&v49 = v50;
      *(&v49 + 1) = v15 - v50;
      *&v48 = " num_redundant: ";
      *(&v48 + 1) = 16;
      v17 = *(*(a1 + 16) + 432);
      if (v17 % 2)
      {
        operations_research::sat::Inprocessing::PresolveLoop(v17 % 2);
      }

      v18 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v17 / 2, v47, v16);
      *&v46 = v47;
      *(&v46 + 1) = v18 - v47;
      v19 = *(a1 + 48);
      v42 = *(*(a1 + 56) + 16);
      v20 = *(a1 + 24);
      v45 = *(*(a1 + 16) + 224);
      v41 = *(v20 + 184);
      v40 = *(v19 + 112) - v9;
      v21 = absl::lts_20240722::GetCurrentTimeNanos(v18);
      v39 = (v21 - CurrentTimeNanos) * 0.000000001;
      v38 = (absl::lts_20240722::GetCurrentTimeNanos(v21) - CurrentTimeNanos) * 0.000000001 - v10;
      absl::lts_20240722::StrCat<char [2],int,char [20],long long,char [23],long long,char [9],double,char [2],double,char [9],double,char [20],double>(&__p, "/", v52, &v51, &v49, &v48, &v46, &v42, " num_implications: ", &v45, " num_watched_clauses: ", &v41, " dtime: ", &v40, "/", v44, " wtime: ", &v39, " non-probing time: ", &v38);
      operations_research::SolverLogger::LogInfo(v14, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_inprocessing.cc", 167, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    return 1;
  }

  return result;
}

void sub_23CCBF5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Inprocessing::LevelZeroPropagate(operations_research::sat::Inprocessing *this)
{
  v2 = *(*(this + 7) + 296);
  if (v2)
  {
    operations_research::sat::Inprocessing::PresolveLoop(v2);
  }

  operations_research::sat::ClauseManager::AttachAllClauses(*(this + 3));
  v3 = *(this + 7);

  return operations_research::sat::SatSolver::Propagate(v3);
}

uint64_t operations_research::sat::Inprocessing::DetectEquivalencesAndStamp(operations_research::sat::Inprocessing *this, int a2, int a3)
{
  v4 = *(*(this + 7) + 296);
  if (v4)
  {
    operations_research::sat::Inprocessing::PresolveLoop(v4);
  }

  operations_research::sat::ClauseManager::AttachAllClauses(*(this + 3));
  if (!operations_research::sat::SatSolver::Propagate(*(this + 7)))
  {
    return 0;
  }

  operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(*(this + 2));
  v7 = *(this + 2);
  if ((*(v7 + 632) & 1) == 0)
  {
    if (!operations_research::sat::BinaryImplicationGraph::DetectEquivalences(v7, a3))
    {
      return 0;
    }

    v11 = *(*(this + 7) + 296);
    if (v11)
    {
      operations_research::sat::Inprocessing::PresolveLoop(v11);
    }

    operations_research::sat::ClauseManager::AttachAllClauses(*(this + 3));
    if (!operations_research::sat::SatSolver::Propagate(*(this + 7)) || a2 && (!operations_research::sat::BinaryImplicationGraph::ComputeTransitiveReduction(*(this + 2), a3) || !operations_research::sat::Inprocessing::LevelZeroPropagate(this)))
    {
      return 0;
    }
  }

  if (!operations_research::sat::StampingSimplifier::ComputeStampsForNextRound(*(this + 9), a3))
  {
    return 0;
  }

  v8 = *(*(this + 7) + 296);
  if (v8)
  {
    operations_research::sat::Inprocessing::PresolveLoop(v8);
  }

  operations_research::sat::ClauseManager::AttachAllClauses(*(this + 3));
  v9 = *(this + 7);

  return operations_research::sat::SatSolver::Propagate(v9);
}

uint64_t operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(operations_research::sat::Inprocessing *this, int a2)
{
  v3 = *(*(this + 7) + 296);
  if (v3)
  {
    operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(v3, __p);
  }

  operations_research::sat::ClauseManager::AttachAllClauses(*(this + 3));
  if ((operations_research::sat::SatSolver::Propagate(*(this + 7)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(this + 2) + 432);
  if (v5 >= 0)
  {
    v6 = *(*(this + 2) + 432) & 1;
  }

  else
  {
    v6 = -(*(*(this + 2) + 432) & 1);
  }

  if (v6)
  {
    operations_research::sat::Inprocessing::PresolveLoop(v6);
  }

  v7 = *(*(this + 4) + 12);
  if (*(this + 18) == v5 && *(this + 19) == v7)
  {
    return 1;
  }

  *(this + 18) = v5;
  *(this + 19) = v7;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(0);
  v10 = 2 * *(*(this + 7) + 16);
  memset(__p, 0, sizeof(__p));
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::ClauseManager::DeleteRemovedClauses(*(this + 3));
  operations_research::sat::ClauseManager::DetachAllClauses(*(this + 3));
  v54 = CurrentTimeNanos;
  v11 = *(this + 3);
  v13 = *(v11 + 280);
  v12 = *(v11 + 288);
  if (v13 == v12)
  {
    v57 = 0.0;
    v48 = 0.0;
    *(*(this + 6) + 112) = *(*(this + 6) + 112) + 0.0;
    if (!a2)
    {
      goto LABEL_56;
    }

LABEL_61:
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v60, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_inprocessing.cc", 430);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v60, "Cleanup. num_removed_literals: ", 0x1FuLL);
    v62 = v57;
    v51 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v60, &v62);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v51, " dtime: ", 8uLL);
    v62 = v48;
    v52 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v51, &v62);
    v53 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v52, " wtime: ", 8uLL);
    v62 = (absl::lts_20240722::GetCurrentTimeNanos(v53) - v54) * 0.000000001;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v52, &v62);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v60);
    v8 = 1;
    v49 = __p[0];
    if (!__p[0])
    {
      return v8;
    }

LABEL_57:
    operator delete(v49);
    return v8;
  }

  v57 = 0.0;
  v14 = 0;
  v15 = 0;
  v55 = *(v11 + 288);
LABEL_18:
  v16 = *v13 + 1;
  v17 = **v13;
  if (!v17)
  {
    goto LABEL_17;
  }

  v59 = *v13;
  v18 = 4 * v17;
  v19 = 4 * v17;
  v20 = *v13 + 1;
  while (1)
  {
    v21 = *v20;
    v22 = *(*(*this + 8) + 8 * (v21 >> 6));
    if ((v22 & (1 << v21)) != 0)
    {
      if (!operations_research::sat::ClauseManager::InprocessingFixLiteral(*(this + 3), v21))
      {
        goto LABEL_59;
      }

      operations_research::sat::ClauseManager::InprocessingRemoveClause(*(this + 3), v59);
      v17 = *v59;
      *&v57 += v17;
LABEL_17:
      v14 += v17;
      if (++v13 == v12)
      {
        v48 = v14 * 0.00000001;
        *(*(this + 6) + 112) = v48 + *(*(this + 6) + 112);
        if (a2)
        {
          goto LABEL_61;
        }

LABEL_56:
        v8 = 1;
        v49 = __p[0];
        if (!__p[0])
        {
          return v8;
        }

        goto LABEL_57;
      }

      goto LABEL_18;
    }

    if (((v22 >> (v21 & 0x3F ^ 1)) & 1) != 0 || (*(*(*(this + 2) + 672) + 8 * (v21 >> 6)) & (1 << v21)) != 0)
    {
      break;
    }

    ++v20;
    v19 -= 4;
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  v56 = v14;
  v17 *= 2;
  v23 = 0;
  v24 = v15;
  v58 = v17;
  while (1)
  {
    v28 = *(this + 2);
    v29 = *(v28 + 704);
    v30 = *(v28 + 696);
    v31 = *v16;
    if (*v16 < ((v29 - v30) >> 2))
    {
      v32 = *(v30 + 4 * *v16);
      if (v32 == -1)
      {
        v31 = *v16;
      }

      else
      {
        v31 = v32;
      }
    }

    v25 = v31 >> 6;
    v26 = 1 << v31;
    v27 = *(__p[0] + v25);
    if (((1 << v31) & v27) != 0)
    {
      goto LABEL_27;
    }

    v33 = *(*(*this + 8) + 8 * v25);
    if ((v33 >> (v31 & 0x3F ^ 1u)))
    {
      goto LABEL_27;
    }

    if (v27 & (1 << (v31 & 0x3F ^ 1u)) | v33 & v26)
    {
      break;
    }

    *(__p[0] + v25) = v26 | v27;
    if (v23 >= v24)
    {
      v34 = v23;
      v35 = v23 >> 2;
      v36 = v35 + 1;
      if ((v35 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v24 >> 1 > v36)
      {
        v36 = v24 >> 1;
      }

      if (v36)
      {
        if (!(v36 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v37 = (4 * v35);
      v24 = 0;
      *v37 = v31;
      v23 = (v37 + 1);
      memcpy(0, 0, v34);
      v17 = v58;
    }

    else
    {
      *v23 = v31;
      v23 += 4;
    }

LABEL_27:
    ++v16;
    v18 -= 4;
    if (!v18)
    {
      v38 = 1;
      v39 = v59;
      if (!v23)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }
  }

  v39 = v59;
  operations_research::sat::ClauseManager::InprocessingRemoveClause(*(this + 3), v59);
  v38 = 0;
  *&v57 += *v59;
  if (!v23)
  {
    goto LABEL_46;
  }

LABEL_44:
  v40 = __p[0];
  for (i = 0; i != v23; ++i)
  {
    v42 = *i;
    *&v40[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v42);
  }

LABEL_46:
  v15 = v24;
  if ((v38 & 1) == 0)
  {
    v12 = v55;
    v14 = v56;
    goto LABEL_17;
  }

  v43 = v39;
  v44 = *v39;
  v45 = v23 >> 2;
  v46 = operations_research::sat::ClauseManager::InprocessingRewriteClause(*(this + 3), v43, 0, v23 >> 2);
  v12 = v55;
  v14 = v56;
  if (v46)
  {
    v47 = v44 - v45;
    v17 = v58;
    *&v57 += v47;
    goto LABEL_17;
  }

LABEL_59:
  v8 = 0;
  v49 = __p[0];
  if (__p[0])
  {
    goto LABEL_57;
  }

  return v8;
}

void sub_23CCBFD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, char a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    if (!v19)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v19)
  {
    goto LABEL_3;
  }

  operator delete(v19);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::StampingSimplifier::DoOneRound(operations_research::sat::BinaryImplicationGraph **this, int a2)
{
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v5 = (this + 6);
  v6 = this[1];
  if (*(v6 + 26) == *(v6 + 25) || !*(v6 + 28))
  {
    return 1;
  }

  if (this[5])
  {
    goto LABEL_4;
  }

  operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(v6);
  if (!operations_research::sat::BinaryImplicationGraph::DetectEquivalences(this[1], a2))
  {
    return 1;
  }

  operations_research::sat::StampingSimplifier::SampleTreeAndFillParent(this);
  result = operations_research::sat::StampingSimplifier::ComputeStamps(this);
  if (result)
  {
LABEL_4:
    *(this + 40) = 0;
    result = operations_research::sat::StampingSimplifier::ProcessClauses(this);
    if (result)
    {
      *(this[4] + 14) = *(this + 6) + *(this[4] + 14);
      if (a2)
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_inprocessing.cc", 678);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Stamping. num_removed_literals: ", 0x20uLL);
        v14 = *(this + 8);
        v8 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v13, &v14);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " num_subsumed: ", 0xFuLL);
        v14 = *(this + 7);
        v9 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v8, &v14);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, " num_fixed: ", 0xCuLL);
        v14 = *(this + 9);
        v10 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v9, &v14);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, " dtime: ", 8uLL);
        v14 = *v5;
        v11 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v10, &v14);
        v12 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, " wtime: ", 8uLL);
        v14 = (absl::lts_20240722::GetCurrentTimeNanos(v12) - CurrentTimeNanos) * 0.000000001;
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v11, &v14);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v13);
      }

      return 1;
    }
  }

  return result;
}

void sub_23CCBFF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::Inprocessing::MoreRedundantVariableToClean(operations_research::sat::Inprocessing *this)
{
  v2 = *(*(this + 2) + 432);
  if (v2 >= 0)
  {
    v3 = *(*(this + 2) + 432) & 1;
  }

  else
  {
    v3 = -(*(*(this + 2) + 432) & 1);
  }

  if (v3)
  {
    operations_research::sat::Inprocessing::PresolveLoop(v3);
  }

  return *(this + 18) < v2;
}

uint64_t operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(operations_research::sat::ClauseManager **this, int a2)
{
  absl::lts_20240722::GetCurrentTimeNanos(this);
  operations_research::sat::ClauseManager::DeleteRemovedClauses(this[3]);
  operations_research::sat::ClauseManager::DetachAllClauses(this[3]);
  v3 = this[3];
  v5 = *(v3 + 35);
  v4 = *(v3 + 36);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(0, 0, 0, 0, 0);
  v6 = 2 * *(this[7] + 4);
  if (v6 >= 1)
  {
    operator new();
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = &v16;
  v20 = 0;
  if (v6)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = *(this[7] + 74);
  if (v14)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v14, 0, "sat_solver_->CurrentDecisionLevel() == 0");
  }

  operations_research::sat::ClauseManager::AttachAllClauses(this[3]);
  if (operations_research::sat::SatSolver::Propagate(this[7]))
  {
    *(this[6] + 14) = 0.0 * 0.00000001 + 0.0 + *(this[6] + 14);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v16;
  if (v16)
  {
    v9 = v17;
    v10 = v16;
    if (v17 != v16)
    {
      v11 = v17;
      do
      {
        v12 = *(v11 - 32);
        v11 -= 4;
        if (v12)
        {
          operator delete(*(v9 - 3));
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = v16;
    }

    v17 = v8;
    operator delete(v10);
  }

  return v7;
}

void sub_23CCC0F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (v33)
  {
    operator delete(v33);
  }

  v36 = a12;
  v37 = *(v34 - 152);
  if (v37)
  {
    v38 = *(v34 - 144);
    v39 = *(v34 - 152);
    if (v38 != v37)
    {
      v40 = *(v34 - 144);
      do
      {
        v41 = *(v40 - 32);
        v40 -= 32;
        if (v41)
        {
          operator delete(*(v38 - 24));
        }

        v38 = v40;
      }

      while (v40 != v37);
      v39 = *(v34 - 152);
      v36 = a12;
    }

    *(v34 - 144) = v37;
    operator delete(v39);
    if (!v32)
    {
LABEL_7:
      if (!v29)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if (!v32)
  {
    goto LABEL_7;
  }

  operator delete(v32);
  if (!v29)
  {
LABEL_8:
    if (!v31)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v29);
  if (!v31)
  {
LABEL_9:
    if (!v36)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v31);
  if (!v36)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::BlockedClauseSimplifier::DoOneRound(operations_research::sat::BlockedClauseSimplifier *this, int a2)
{
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  operations_research::sat::BlockedClauseSimplifier::InitializeForNewRound(this);
  if ((operations_research::TimeLimit::LimitReached(*(this + 4)) & 1) == 0)
  {
    do
    {
      if (!*(this + 19))
      {
        break;
      }

      v11 = *(this + 15);
      v12 = (*(v11 + ((*(this + 18) >> 7) & 0x1FFFFFFFFFFFFF8)))[*(this + 18) & 0x3FFLL];
      *(*(this + 11) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v12);
      v13 = vaddq_s64(*(this + 9), xmmword_23CE306C0);
      *(this + 9) = v13;
      if (v13.i64[0] >= 0x800uLL)
      {
        operator delete(*v11);
        *(this + 15) += 8;
        *(this + 18) -= 1024;
        if (*(this + 7) <= 1000000000)
        {
LABEL_17:
          operations_research::sat::BlockedClauseSimplifier::ProcessLiteral(this, v12);
        }
      }

      else if (*(this + 7) <= 1000000000)
      {
        goto LABEL_17;
      }
    }

    while (!operations_research::TimeLimit::LimitReached(*(this + 4)));
  }

  v6 = *(this + 23);
  v5 = *(this + 24);
  if (v5 != v6)
  {
    v7 = *(this + 24);
    do
    {
      v9 = *(v7 - 24);
      v7 -= 24;
      v8 = v9;
      if (v9)
      {
        *(v5 - 16) = v8;
        operator delete(v8);
      }

      v5 = v7;
    }

    while (v7 != v6);
  }

  *(this + 24) = v6;
  v10 = *(this + 5) + *(this + 7) * 0.00000001;
  *(this + 5) = v10;
  *(*(this + 4) + 112) = v10 + *(*(this + 4) + 112);
  if (dword_27E25D2A8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::BlockedClauseSimplifier::DoOneRound(BOOL)::$_0::operator() const(void)::site, dword_27E25D2A8) || a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_inprocessing.cc", 990);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Blocked clause. num_blocked_clauses: ", 0x25uLL);
    LODWORD(v18) = *(this + 12);
    v14 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v17, &v18);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, " dtime: ", 8uLL);
    v18 = *(this + 5);
    v15 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v14, &v18);
    v16 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, " wtime: ", 8uLL);
    v18 = (absl::lts_20240722::GetCurrentTimeNanos(v16) - CurrentTimeNanos) * 0.000000001;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v15, &v18);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v17);
  }
}

void sub_23CCC1384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::BoundedVariableElimination::DoOneRound(operations_research::sat::BoundedVariableElimination *this, char a2)
{
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  v111 = this;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  v3 = this + 64;
  *(v3 + 2) = 0u;
  *(v3 + 6) = 0;
  *(v3 + 29) = *(v3 + 28);
  operations_research::sat::ClauseManager::DeleteRemovedClauses(*(v3 - 5));
  operations_research::sat::ClauseManager::DetachAllClauses(*(v3 - 5));
  v4 = *(v3 - 5);
  v5 = *(v4 + 280);
  v6 = *(v4 + 288);
  if (v5 == v6)
  {
    v24 = v111;
    v25 = *(v4 + 88);
    v27 = *(v111 + 39);
    v26 = *(v111 + 40);
    v28 = v27;
    if (v26 == v27)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  do
  {
    v10 = 0;
    v12 = *v5;
    *__u = v12;
    v13 = *(v111 + 3);
    _X11 = v13[41];
    __asm { PRFM            #4, [X11] }

    v20 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v12;
    v21 = ((v20 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v20);
    v22 = vdup_n_s8(v21 & 0x7F);
    v23 = v13[39];
    for (i = (v21 >> 7) ^ (_X11 >> 12); ; i = v10 + v7)
    {
      v7 = i & v23;
      v8 = *(_X11 + v7);
      v9 = vceq_s8(v8, v22);
      if (v9)
      {
        break;
      }

LABEL_6:
      if (vceq_s8(v8, 0x8080808080808080))
      {
        std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100]((v3 + 224), __u);
        goto LABEL_9;
      }

      v10 += 8;
    }

    while (*(v13[42] + 24 * ((v7 + (__clz(__rbit64(v9)) >> 3)) & v23)) != v12)
    {
      v9 &= ((v9 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    ++v5;
  }

  while (v5 != v6);
  v24 = v111;
  v25 = *(*(v111 + 3) + 88);
  v27 = *(v111 + 39);
  v26 = *(v111 + 40);
  v28 = v27;
  if (v26 != v27)
  {
LABEL_14:
    v29 = v26;
    do
    {
      v31 = *(v29 - 24);
      v29 -= 24;
      v30 = v31;
      if (v31)
      {
        *(v26 - 16) = v30;
        operator delete(v30);
      }

      v26 = v29;
    }

    while (v29 != v27);
    v28 = *(v24 + 39);
  }

LABEL_19:
  *(v24 + 40) = v27;
  v32 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 3);
  if (v25 <= v32)
  {
    if (v25 < v32)
    {
      v33 = v28 + 24 * v25;
      if (v27 != v33)
      {
        v34 = v27;
        do
        {
          v36 = *(v34 - 24);
          v34 -= 24;
          v35 = v36;
          if (v36)
          {
            *(v27 - 16) = v35;
            operator delete(v35);
          }

          v27 = v34;
        }

        while (v34 != v33);
      }

      v24 = v111;
      *(v111 + 40) = v33;
    }
  }

  else
  {
    std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v24 + 312, v25 - v32);
  }

  v109 = v25;
  v110 = v3;
  __u[0] = 0;
  std::vector<int>::assign(v24 + 14, v25, __u);
  v37 = *(v24 + 36);
  v38 = *(v24 + 37);
  if (((v38 - v37) >> 3) >= 1)
  {
    v39 = 0;
    do
    {
      v41 = *(v37 + 8 * v39);
      v44 = *v41;
      v43 = v41 + 1;
      v42 = v44;
      if (v44)
      {
        v45 = 4 * v42;
        do
        {
          v47 = *v43;
          v48 = *(v24 + 39) + 24 * *v43;
          v50 = *(v48 + 8);
          v49 = *(v48 + 16);
          if (v50 < v49)
          {
            *v50 = v39;
            v46 = (v50 + 1);
          }

          else
          {
            v51 = *v48;
            v52 = v50 - *v48;
            v53 = v52 >> 2;
            v54 = (v52 >> 2) + 1;
            if (v54 >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v55 = v49 - v51;
            if (v55 >> 1 > v54)
            {
              v54 = v55 >> 1;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v56 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v54;
            }

            if (v56)
            {
              if (!(v56 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v53) = v39;
            v46 = 4 * v53 + 4;
            memcpy(0, v51, v52);
            *v48 = 0;
            *(v48 + 8) = v46;
            *(v48 + 16) = 0;
            if (v51)
            {
              operator delete(v51);
            }

            v24 = v111;
          }

          *(v48 + 8) = v46;
          ++*(*(v24 + 42) + 4 * v47);
          ++v43;
          v45 -= 4;
        }

        while (v45);
        v37 = *(v24 + 36);
        v38 = *(v24 + 37);
        v40 = **(v37 + 8 * v39);
      }

      else
      {
        v40 = 0;
      }

      *(v24 + 9) += v40;
      ++v39;
    }

    while (v39 < ((v38 - v37) >> 3));
  }

  v57 = (v109 / 2);
  v58 = *(*(v24 + 5) + 12);
  *(v24 + 14) = v58;
  *(v24 + 34) = *(v24 + 33);
  std::vector<BOOL>::resize(v24 + 240, v57, 0);
  v59 = *(v24 + 24);
  v60 = (v24 + 192);
  v61 = (*(v24 + 25) - v59) >> 3;
  if (v57 + 1 <= v61)
  {
    v62 = v110;
    if (v57 + 1 < v61)
    {
      *(v24 + 25) = v59 + 8 * (v57 + 1);
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v24 + 192, v57 + 1 - v61);
    v62 = v110;
  }

  v63 = *(v24 + 27);
  v64 = *(v24 + 28);
  v65 = (v24 + 216);
  __u[0] = 0;
  v66 = (v64 - v63) >> 2;
  if (v57 <= v66)
  {
    if (v57 < v66)
    {
      *(v24 + 28) = v63 + 4 * v57;
    }
  }

  else
  {
    std::vector<int>::__append(v24 + 9, v57 - v66, __u);
  }

  if (v109 >= 2)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    do
    {
      if (((*(*(*(v111 + 1) + 8) + (((v67 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v68 & 0x3E)) & 3) == 0)
      {
        operations_research::sat::BoundedVariableElimination::UpdatePriorityQueue(v111, v69);
      }

      ++v69;
      v68 += 2;
      v67 += 0x200000000;
    }

    while (v57 != v69);
  }

  std::vector<BOOL>::resize(v111 + 136, v109, 0);
  if ((operations_research::TimeLimit::LimitReached(*(v111 + 6)) & 1) == 0)
  {
    while (1)
    {
      if (!*(v111 + 46))
      {
        goto LABEL_64;
      }

      v77 = *(v111 + 24);
      v78 = *(v77 + 8);
      *(*(v111 + 27) + 4 * v78) = 0;
      v79 = *(v111 + 46);
      v80 = v79 - 1;
      *(v111 + 46) = v79 - 1;
      if (v79 >= 2)
      {
        break;
      }

LABEL_91:
      LOBYTE(__u[0]) = 0;
      if (!operations_research::sat::BoundedVariableElimination::Propagate(v111))
      {
        return 0;
      }

      v88 = v78;
      while (operations_research::sat::BinaryImplicationGraph::FindFailedLiteralAroundVar(*(v111 + 2), v78, __u))
      {
        if ((operations_research::sat::BoundedVariableElimination::Propagate(v111) & 1) == 0)
        {
          return 0;
        }
      }

      if ((__u[0] & 1) != 0 || !operations_research::sat::BoundedVariableElimination::CrossProduct(v111, v78))
      {
        return 0;
      }

      v89 = *(v111 + 33);
      v90 = *(v111 + 34);
      if (v89 == v90)
      {
        *(v111 + 31) = 0;
        *(v111 + 34) = v89;
        if (operations_research::TimeLimit::LimitReached(*(v111 + 6)))
        {
          goto LABEL_64;
        }
      }

      else
      {
        do
        {
          v91 = *v89;
          *(*(v111 + 30) + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v91);
          if (v88 != v91)
          {
            operations_research::sat::BoundedVariableElimination::UpdatePriorityQueue(v111, v91);
          }

          ++v89;
        }

        while (v89 != v90);
        v92 = *(v111 + 33);
        *(v111 + 31) = 0;
        *(v111 + 34) = v92;
        if (operations_research::TimeLimit::LimitReached(*(v111 + 6)))
        {
          goto LABEL_64;
        }
      }
    }

    v81 = *(v77 + 8 * v79);
    if (v80 < 3)
    {
      v83 = 2;
      LODWORD(v84) = 1;
      if (v80 < 2)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v82 = 1;
      v83 = 2;
      do
      {
        v77 = *v60;
        v85 = *(*v60 + 8 * v83);
        v84 = v83 | 1;
        v86 = *(*v60 + 8 * v84);
        if (SHIDWORD(v85) >= SHIDWORD(v86))
        {
          LODWORD(v84) = v83;
          if (SHIDWORD(v81) >= SHIDWORD(v85))
          {
            goto LABEL_85;
          }
        }

        else
        {
          if (SHIDWORD(v81) >= SHIDWORD(v86))
          {
LABEL_85:
            v83 = v82;
            goto LABEL_90;
          }

          v85 = *(*v60 + 8 * v84);
        }

        *(v77 + 8 * v82) = v85;
        *(*v65 + 4 * v85) = v82;
        v83 = 2 * v84;
        v82 = v84;
      }

      while (2 * v84 < v80);
      v77 = *v60;
      if (v83 > v80)
      {
        goto LABEL_89;
      }
    }

    v87 = *(v77 + 8 * v83);
    if (SHIDWORD(v81) < SHIDWORD(v87))
    {
      *(v77 + 8 * v84) = v87;
      *(*v65 + 4 * v87) = v84;
      v77 = *v60;
LABEL_90:
      *(v77 + 8 * v83) = v81;
      *(*v65 + 4 * v81) = v83;
      goto LABEL_91;
    }

LABEL_89:
    v83 = v84;
    goto LABEL_90;
  }

LABEL_64:
  result = operations_research::sat::BoundedVariableElimination::Propagate(v111);
  if (result)
  {
    operations_research::sat::BinaryImplicationGraph::CleanupAllRemovedAndFixedVariables(*(v111 + 2));
    v71 = *(v111 + 3);
    v72 = *(v71 + 280);
    v73 = *(v71 + 288);
    while (v72 != v73)
    {
      v74 = *v72 + 1;
      v75 = **v72;
      if (v75)
      {
        v76 = 4 * v75;
        while (((*(*(*(v111 + 2) + 792) + ((*v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v74) & 1) == 0)
        {
          ++v74;
          v76 -= 4;
          if (!v76)
          {
            goto LABEL_67;
          }
        }

        operations_research::sat::ClauseManager::InprocessingRemoveClause(*(v111 + 3), *v72);
      }

LABEL_67:
      ++v72;
    }

    v94 = *(v111 + 39);
    v93 = *(v111 + 40);
    if (v93 != v94)
    {
      v95 = *(v111 + 40);
      do
      {
        v97 = *(v95 - 24);
        v95 -= 24;
        v96 = v97;
        if (v97)
        {
          *(v93 - 16) = v96;
          operator delete(v96);
        }

        v93 = v95;
      }

      while (v95 != v94);
    }

    *(v111 + 40) = v94;
    *(v111 + 43) = *(v111 + 42);
    v98 = *(v111 + 8) + *(v111 + 9) * 0.00000001;
    *(v111 + 8) = v98;
    *(*(v111 + 6) + 112) = v98 + *(*(v111 + 6) + 112);
    if (dword_27E25D2C0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::BoundedVariableElimination::DoOneRound(BOOL)::$_0::operator() const(void)::site, dword_27E25D2C0) || (a2 & 1) != 0)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(__u, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_inprocessing.cc", 1258);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__u, "BVE.", 4uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__u, " num_fixed: ", 0xCuLL);
      LODWORD(v113) = *(*(v111 + 5) + 12) - v58;
      v99 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(__u, &v113);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v99, " num_simplified_literals: ", 0x1AuLL);
      v113 = *(v111 + 10);
      v100 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v99, &v113);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v100, " num_blocked_clauses_: ", 0x17uLL);
      v113 = *(v111 + 11);
      v101 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v100, &v113);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v101, " num_eliminations: ", 0x13uLL);
      v113 = *(v111 + 12);
      v102 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v101, &v113);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v102, " num_literals_diff: ", 0x14uLL);
      v113 = *(v111 + 13);
      v103 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v102, &v113);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v103, " num_clause_diff: ", 0x12uLL);
      v113 = *(v111 + 14);
      v104 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v103, &v113);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v104, " dtime: ", 8uLL);
      v113 = *v62;
      v105 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v104, &v113);
      v106 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v105, " wtime: ", 8uLL);
      v113 = (absl::lts_20240722::GetCurrentTimeNanos(v106) - CurrentTimeNanos) * 0.000000001;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v105, &v113);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__u);
    }

    return 1;
  }

  return result;
}

void sub_23CCC1D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *absl::lts_20240722::StrCat<char [2],int,char [20],long long,char [23],long long,char [9],double,char [2],double,char [9],double,char [20],double>@<X0>(std::string *__return_ptr a1@<X8>, char *__s@<X5>, _OWORD *a3@<X0>, __int128 *a4@<X1>, _OWORD *a5@<X2>, __int128 *a6@<X3>, _OWORD *a7@<X4>, unsigned int *a8@<X6>, const char *a9@<X7>, unint64_t *a10, const char *a11, unint64_t *a12, const char *a13, long double *a14, const char *a15, long double *a16, const char *a17, long double *a18, const char *a19, long double *a20)
{
  v86 = *MEMORY[0x277D85DE8];
  v22 = *a4;
  v57[0] = *a3;
  v57[1] = v22;
  v23 = *a6;
  v57[2] = *a5;
  v57[3] = v23;
  v57[4] = *a7;
  v58 = __s;
  v59 = strlen(__s);
  v25 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v56, v24);
  v54 = v56;
  v55 = v25 - v56;
  v60 = v56;
  v61 = v25 - v56;
  v26 = strlen(a9);
  v62 = a9;
  v63 = v26;
  v28 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a10, v53, v27);
  v51 = v53;
  v52 = v28 - v53;
  v64 = v53;
  v65 = v28 - v53;
  v29 = strlen(a11);
  v66 = a11;
  v67 = v29;
  v31 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a12, v50, v30);
  v49[4] = v50;
  v49[5] = v31 - v50;
  v68 = v50;
  v69 = v31 - v50;
  v32 = strlen(a13);
  v70 = a13;
  v71 = v32;
  v34 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v49, *a14, v33);
  v48[4] = v49;
  v48[5] = v34;
  v72 = v49;
  v73 = v34;
  v35 = strlen(a15);
  v74 = a15;
  v75 = v35;
  v37 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v48, *a16, v36);
  v47[4] = v48;
  v47[5] = v37;
  v76 = v48;
  v77 = v37;
  v38 = strlen(a17);
  v78 = a17;
  v79 = v38;
  v40 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v47, *a18, v39);
  v46[4] = v47;
  v46[5] = v40;
  v80 = v47;
  v81 = v40;
  v41 = strlen(a19);
  v82 = a19;
  v83 = v41;
  v45 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v46, *a20, v42);
  v84 = v46;
  v85 = v45;
  return absl::lts_20240722::strings_internal::CatPieces(v57, 19, a1);
}

uint64_t operations_research::sat::BinaryImplicationGraph::num_redundant_literals(operations_research::sat::BinaryImplicationGraph *this)
{
  v1 = *(this + 54);
  if (v1 >= 0)
  {
    v2 = *(this + 54) & 1;
  }

  else
  {
    v2 = -(*(this + 54) & 1);
  }

  if (v2)
  {
    operations_research::sat::Inprocessing::PresolveLoop(v2);
  }

  return v1;
}

uint64_t operations_research::sat::Inprocessing::InprocessingRound(uint64_t ***this)
{
  v53 = *MEMORY[0x277D85DE8];
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  if (dword_2810C0BC8 < 1)
  {
    IsEnabled1 = 0;
    v4 = dword_2810C0BE0;
    if (dword_2810C0BE0 <= 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = CurrentTimeNanos;
    IsEnabled2 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0BD8, v4);
    CurrentTimeNanos = v9;
    v6 = *(this[6] + 14);
    if (*(this + 112) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = CurrentTimeNanos;
  IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_28, dword_2810C0BC8);
  CurrentTimeNanos = v8;
  v4 = dword_2810C0BE0;
  if (dword_2810C0BE0 > 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  IsEnabled2 = 0;
  v6 = *(this[6] + 14);
  if (*(this + 112) == 1)
  {
LABEL_4:
    *(this + 15) = v6;
    *(this + 112) = 0;
    return 1;
  }

LABEL_7:
  if (*(this + 16) > (v6 - *(this + 15)) * *(this[1] + 117))
  {
    return 1;
  }

  v36 = IsEnabled2;
  v34 = IsEnabled1;
  v35 = CurrentTimeNanos;
  if (*this[8] != this[8][1])
  {
    operator new();
  }

  *(this[5] + 360) = 0;
  operations_research::sat::BinaryImplicationGraph::RemoveDuplicates(this[2]);
  if ((operations_research::sat::Inprocessing::DetectEquivalencesAndStamp(this, 1, v36) & 1) == 0)
  {
    return 0;
  }

  result = operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(this, v36);
  if (result)
  {
    v10 = *(this[7] + 74);
    if (v10)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v10, 0, "sat_solver_->CurrentDecisionLevel() == 0");
    }

    operations_research::sat::ClauseManager::AttachAllClauses(this[3]);
    result = operations_research::sat::SatSolver::Propagate(this[7]);
    if (result)
    {
      v11 = 0.0;
      if (*(this[1] + 118) > 0.0)
      {
        v12 = absl::lts_20240722::GetCurrentTimeNanos(result);
        if (v36)
        {
          v13 = 0x101010101;
        }

        else
        {
          v13 = 16843009;
        }

        v14 = operations_research::sat::FailedLiteralProbingRound(this[1][118], v13, this[17]);
        if ((v14 & 1) == 0)
        {
          return 0;
        }

        v11 = (absl::lts_20240722::GetCurrentTimeNanos(v14) - v35) * 0.000000001 - (v12 - v35) * 0.000000001 + 0.0;
      }

      result = operations_research::sat::Inprocessing::DetectEquivalencesAndStamp(this, 1, v36);
      if (!result)
      {
        return result;
      }

      result = operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(this, v36);
      if (!result)
      {
        return result;
      }

      result = operations_research::sat::Inprocessing::LevelZeroPropagate(this);
      if (!result)
      {
        return result;
      }

      result = operations_research::sat::StampingSimplifier::DoOneRound(this[9], v36);
      if (!result)
      {
        return result;
      }

      result = operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(this, v36);
      if (!result)
      {
        return result;
      }

      result = operations_research::sat::Inprocessing::LevelZeroPropagate(this);
      if (!result)
      {
        return result;
      }

      v15 = this[7];
      v16 = v15[57];
      v17 = v15[61];
      v18 = *(this[1] + 120);
      if (v18 <= 0.0)
      {
        v21 = v15[61];
        v20 = v15[57];
      }

      else
      {
        result = operations_research::sat::SatSolver::MinimizeByPropagation(v15, v18);
        if (!result)
        {
          return result;
        }

        v19 = this[7];
        v20 = v19[57];
        v21 = v19[61];
      }

      v44 = v21 - v17;
      v45 = v20 - v16;
      if (operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(this, v36))
      {
        result = operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(this, v36);
        if (result)
        {
          result = operations_research::sat::Inprocessing::RemoveFixedAndEquivalentVariables(this, v36);
          if (result)
          {
            result = operations_research::sat::Inprocessing::LevelZeroPropagate(this);
            if (result)
            {
              v22 = this[6];
              v23 = this[7];
              v25 = operations_research::sat::SatSolver::deterministic_time(v23);
              *(v22 + 14) = *(v22 + 14) + v25 - v23[147];
              v23[147] = v25;
              *(this + 16) = *(this + 16) + *(this[6] + 14) - v6;
              if (v34)
              {
                v26 = this[13];
                if (*v26 == 1)
                {
                  *&v52 = "Inprocessing.";
                  *(&v52 + 1) = 13;
                  *&v51 = " fixed:";
                  *(&v51 + 1) = 7;
                  v27 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this[4] + 3), v50, v24);
                  *&v49 = v50;
                  *(&v49 + 1) = v27 - v50;
                  *&v48 = " equiv:";
                  *(&v48 + 1) = 7;
                  v28 = operations_research::sat::BinaryImplicationGraph::num_redundant_literals(this[2]);
                  v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v28 / 2, v47, v29);
                  *&v46 = v47;
                  *(&v46 + 1) = v30 - v47;
                  v31 = this[6];
                  v42 = *(this[7] + 4);
                  v32 = this[2][28];
                  v40 = this[3][23];
                  v41 = v32;
                  v39 = *(v31 + 14) - v6;
                  v33 = absl::lts_20240722::GetCurrentTimeNanos(v30);
                  v38 = (v33 - v35) * 0.000000001;
                  v37 = (absl::lts_20240722::GetCurrentTimeNanos(v33) - v35) * 0.000000001 - v11;
                  absl::lts_20240722::StrCat<char [8],int,char [15],long long,char [10],long long,char [15],long long,char [2],long long,char [8],double,char [8],double,char [11],double>(&__p, " BOOLs:", &v52, &v51, &v49, &v48, &v46, &v42, " implications:", &v41, " watched:", &v40, " minimization:", &v45, "|", &v44, " dtime:", &v39, " wtime:", &v38, " np_wtime:", &v37);
                  operations_research::SolverLogger::LogInfo(v26, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_inprocessing.cc", 281, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }

              result = 1;
              *(this[5] + 360) = 1;
            }
          }
        }

        return result;
      }

      return 0;
    }
  }

  return result;
}

void sub_23CCC26A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (v37 != v38)
  {
    v40 = v37;
    do
    {
      *(*v40 + 24896) = v40[8] & 1;
      v40 += 16;
    }

    while (v40 != v38);
  }

  if (v37)
  {
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

char *absl::lts_20240722::StrCat<char [8],int,char [15],long long,char [10],long long,char [15],long long,char [2],long long,char [8],double,char [8],double,char [11],double>@<X0>(std::string *__return_ptr a1@<X8>, char *__s@<X5>, _OWORD *a3@<X0>, __int128 *a4@<X1>, _OWORD *a5@<X2>, __int128 *a6@<X3>, _OWORD *a7@<X4>, unsigned int *a8@<X6>, const char *a9@<X7>, unint64_t *a10, const char *a11, unint64_t *a12, const char *a13, unint64_t *a14, const char *a15, unint64_t *a16, const char *a17, long double *a18, const char *a19, long double *a20, const char *a21, long double *a22)
{
  v100 = *MEMORY[0x277D85DE8];
  v24 = *a4;
  v67[0] = *a3;
  v67[1] = v24;
  v25 = *a6;
  v67[2] = *a5;
  v67[3] = v25;
  v67[4] = *a7;
  v68 = __s;
  v69 = strlen(__s);
  v27 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v66, v26);
  v64 = v66;
  v65 = v27 - v66;
  v70 = v66;
  v71 = v27 - v66;
  v28 = strlen(a9);
  v72 = a9;
  v73 = v28;
  v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a10, v63, v29);
  v61 = v63;
  v62 = v30 - v63;
  v74 = v63;
  v75 = v30 - v63;
  v31 = strlen(a11);
  v76 = a11;
  v77 = v31;
  v33 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a12, v60, v32);
  v58 = v60;
  v59 = v33 - v60;
  v78 = v60;
  v79 = v33 - v60;
  v34 = strlen(a13);
  v80 = a13;
  v81 = v34;
  v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a14, v57, v35);
  v55 = v57;
  v56 = v36 - v57;
  v82 = v57;
  v83 = v36 - v57;
  v37 = strlen(a15);
  v84 = a15;
  v85 = v37;
  v39 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a16, v54, v38);
  v53[4] = v54;
  v53[5] = v39 - v54;
  v86 = v54;
  v87 = v39 - v54;
  v40 = strlen(a17);
  v88 = a17;
  v89 = v40;
  v42 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v53, *a18, v41);
  v52[4] = v53;
  v52[5] = v42;
  v90 = v53;
  v91 = v42;
  v43 = strlen(a19);
  v92 = a19;
  v93 = v43;
  v45 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v52, *a20, v44);
  v51[4] = v52;
  v51[5] = v45;
  v94 = v52;
  v95 = v45;
  v46 = strlen(a21);
  v96 = a21;
  v97 = v46;
  v50 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v51, *a22, v47);
  v98 = v51;
  v99 = v50;
  return absl::lts_20240722::strings_internal::CatPieces(v67, 21, a1);
}

BOOL operations_research::sat::StampingSimplifier::ComputeStampsForNextRound(operations_research::sat::BinaryImplicationGraph **this, int a2)
{
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  this[6] = 0;
  this[9] = 0;
  v5 = this[1];
  if (*(v5 + 26) == *(v5 + 25))
  {
    return 1;
  }

  if (!*(v5 + 28))
  {
    return 1;
  }

  operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(v5);
  if (!operations_research::sat::BinaryImplicationGraph::DetectEquivalences(this[1], a2))
  {
    return 1;
  }

  operations_research::sat::StampingSimplifier::SampleTreeAndFillParent(this);
  result = operations_research::sat::StampingSimplifier::ComputeStamps(this);
  if (result)
  {
    result = 1;
    *(this + 40) = 1;
    *(this[4] + 14) = *(this + 6) + *(this[4] + 14);
    if (a2)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_inprocessing.cc", 703);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, "Prestamping.", 0xCuLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, " num_fixed: ", 0xCuLL);
      v11 = *(this + 9);
      v7 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v10, &v11);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " dtime: ", 8uLL);
      v11 = *(this + 6);
      v8 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v7, &v11);
      v9 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " wtime: ", 8uLL);
      v11 = (absl::lts_20240722::GetCurrentTimeNanos(v9) - CurrentTimeNanos) * 0.000000001;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v8, &v11);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v10);
      return 1;
    }
  }

  return result;
}

void sub_23CCC2B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::StampingSimplifier::SampleTreeAndFillParent(operations_research::sat::StampingSimplifier *this)
{
  v1 = *(this + 1);
  if ((*(v1 + 632) & 1) == 0)
  {
    operations_research::sat::StampingSimplifier::SampleTreeAndFillParent(&v45);
  }

  v3 = *(v1 + 208) - *(v1 + 200);
  v4 = *(this + 10);
  v5 = (this + 80);
  v6 = (v3 >> 5);
  v7 = (*(this + 11) - v4) >> 2;
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      *(this + 11) = v4 + 4 * v6;
    }
  }

  else
  {
    std::vector<int>::__append((this + 80), v6 - v7);
  }

  if ((v3 >> 5) >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = (v3 >> 5) & 0x7FFFFFFF;
    do
    {
      *(*(this + 10) + (v8 >> 30)) = v9;
      v11 = *(this + 1);
      if (((*(v11[84] + 8 * (v9 >> 6)) >> v9) & 1) == 0 && ((*(*(*this + 8) + 8 * (v9 >> 6)) >> (v9 & 0x3E)) & 3) == 0)
      {
        v12 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v11, v9 ^ 1);
        if (v12 != -1)
        {
          v13 = v12;
          v14 = *(this + 1);
          v15 = *(v14[84] + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8));
          v16 = v13 ^ 1u;
          v17 = v15 & (1 << v16);
          v18 = v9 != v16 && v17 == 0;
          LODWORD(v19) = v16;
          if (v18 || (v20 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v14, v9 ^ 1), v20 != -1) && ((v21 = v20, v19 = v20 ^ 1u, v22 = *(this + 1), v9 != v19) && (*(v22[84] + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0 || (v23 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v22, v9 ^ 1), v23 != -1) && ((v24 = v23, v19 = v23 ^ 1u, v25 = *(this + 1), v9 != v19) && (*(v25[84] + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0 || (v26 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v25, v9 ^ 1), v26 != -1) && ((v27 = v26, v19 = v26 ^ 1u, v28 = *(this + 1), v9 != v19) && (*(v28[84] + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0 || (v29 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v28, v9 ^ 1), v29 != -1) && ((v30 = v29, v19 = v29 ^ 1u, v31 = *(this + 1), v9 != v19) && (*(v31[84] + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0 || (v32 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v31, v9 ^ 1), v32 != -1) && ((v33 = v32, v19 = v32 ^ 1u, v34 = *(this + 1), v9 != v19) && (*(v34[84] + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0 || (v35 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v34, v9 ^ 1), v35 != -1) && ((v36 = v35, v19 = v35 ^ 1u, v37 = *(this + 1), v9 != v19) && (*(v37[84] + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0 || (v38 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v37, v9 ^ 1), v38 != -1) && ((v39 = v38, v19 = v38 ^ 1u, v40 = *(this + 1), v9 != v19) && (*(v40[84] + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0 || (v41 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v40, v9 ^ 1), v41 != -1) && ((v42 = v41, v19 = v41 ^ 1u, v43 = *(this + 1), v9 != v19) && (*(v43[84] + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0 || (v44 = operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v43, v9 ^ 1), v44 != -1) && (v19 = v44 ^ 1u, v9 != v19) && (*(*(*(this + 1) + 672) + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << (v44 ^ 1u))) == 0)))))))))
          {
            *(*v5 + (v8 >> 30)) = v19;
          }
        }
      }

      ++v9;
      v8 += 0x100000000;
    }

    while (v10 != v9);
  }
}

BOOL operations_research::sat::StampingSimplifier::ComputeStamps(operations_research::sat::StampingSimplifier *this)
{
  v2 = *(*(this + 1) + 208) - *(*(this + 1) + 200);
  __u = 0;
  v3 = (v2 >> 5);
  std::vector<int>::assign((this + 104), v3, &__u);
  v4 = (v2 >> 5) & 0x7FFFFFFF;
  v73 = v2 >> 5;
  if ((v2 >> 5) >= 1)
  {
    v5 = 0;
    v6 = *(this + 10);
    do
    {
      v7 = *(v6 + 4 * v5);
      if (v5 != v7)
      {
        ++*(*(this + 13) + 4 * v7);
      }

      ++v5;
    }

    while (v4 != v5);
  }

  v8 = *(this + 16);
  v9 = (this + 128);
  v10 = ((v2 << 27) + 0x100000000) >> 32;
  v11 = (*(this + 17) - v8) >> 2;
  if (v10 <= v11)
  {
    if (v10 < v11)
    {
      *(this + 17) = &v8[v10];
    }
  }

  else
  {
    std::vector<int>::__append((this + 128), v10 - v11);
    v8 = *v9;
  }

  *v8 = 0;
  if (v73 >= 1)
  {
    v12 = 0;
    v13 = *(this + 13);
    if (v73 + 1 > 2)
    {
      v14 = (v73 + 1);
    }

    else
    {
      v14 = 2;
    }

    v15 = v8 + 1;
    v16 = v14 - 1;
    do
    {
      v17 = *v13++;
      v12 += v17;
      *v15++ = v12;
      --v16;
    }

    while (v16);
  }

  v18 = *(this + 19);
  v19 = (*(this + 20) - v18) >> 2;
  if (v3 <= v19)
  {
    if (v3 < v19)
    {
      *(this + 20) = v18 + 4 * v3;
    }
  }

  else
  {
    std::vector<int>::__append((this + 152), v3 - v19);
  }

  if (v73 >= 1)
  {
    v20 = 0;
    v21 = *(this + 10);
    do
    {
      v22 = *(v21 + 4 * v20);
      if (v20 != v22)
      {
        v23 = 4 * v22;
        v24 = *(*v9 + v23);
        *(*v9 + v23) = v24 + 1;
        *(*(this + 19) + 4 * v24) = v20;
      }

      ++v20;
    }

    while (v4 != v20);
    v25 = *(this + 13);
    v26 = *v9;
    if (v4 <= 7 || (v26 < v25 + 4 * v4 ? (v27 = v25 >= v26 + 4 * v4) : (v27 = 1), !v27))
    {
      v28 = 0;
LABEL_36:
      v33 = (v26 + 4 * v28);
      v34 = (v25 + 4 * v28);
      v35 = v28 - v4;
      do
      {
        v36 = *v34++;
        *v33++ -= v36;
        v27 = __CFADD__(v35++, 1);
      }

      while (!v27);
      goto LABEL_39;
    }

    v28 = v4 - (v2 >> 5);
    v29 = (v26 + 16);
    v30 = (v25 + 16);
    v31 = v28;
    do
    {
      v32 = vsubq_s32(*v29, *v30);
      v29[-1] = vsubq_s32(v29[-1], v30[-1]);
      *v29 = v32;
      v29 += 2;
      v30 += 2;
      v31 -= 8;
    }

    while (v31);
    if (v2 >> 5)
    {
      goto LABEL_36;
    }
  }

LABEL_39:
  v37 = *(this + 28);
  v38 = (*(this + 29) - v37) >> 2;
  v76 = (this + 224);
  if (v3 <= v38)
  {
    if (v3 < v38)
    {
      *(this + 29) = v37 + 4 * v3;
    }
  }

  else
  {
    std::vector<int>::__append((this + 224), v3 - v38);
  }

  v39 = *(this + 31);
  v40 = (*(this + 32) - v39) >> 2;
  v75 = (this + 128);
  if (v3 <= v40)
  {
    if (v3 < v40)
    {
      *(this + 32) = v39 + 4 * v3;
    }
  }

  else
  {
    std::vector<int>::__append((this + 248), v3 - v40);
  }

  v78 = 0;
  std::vector<BOOL>::assign(this + 176, (v2 >> 5), &v78);
  v77 = 0;
  if (v73 >= 1)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v74 = 4 * v42;
      if (*(*(this + 10) + v74) == v42)
      {
        std::vector<int>::push_back[abi:ne200100](this + 200, &v77);
        v43 = *(this + 25);
        v44 = *(this + 26);
        while (v43 != v44)
        {
          v45 = *(v44 - 1);
          v46 = *(this + 22);
          v47 = 1 << v45;
          v48 = *(v46 + 8 * (v45 >> 6));
          v49 = 4 * v45;
          if (((1 << v45) & v48) != 0)
          {
            *(this + 26) = v44 - 4;
            *(*(this + 31) + 4 * v45) = v41;
            v44 -= 4;
          }

          else
          {
            v50 = *v76;
            *(*v76 + 4 * v45) = v41;
            v51 = v45;
            *(v46 + 8 * (v45 >> 6)) = v47 | v48;
            v52 = v45 ^ 1;
            if (((v47 | v48) >> (v45 ^ 1u)))
            {
              v53 = *(v50 + 4 * v52);
              if (v53 >= *(v50 + v74))
              {
                if (v53 < v41)
                {
                  v54 = v49;
                  do
                  {
                    v55 = *(*(this + 10) + v54);
                    v54 = 4 * v55;
                  }

                  while (*(v50 + v54) > v53);
                  v52 = v55 ^ 1;
                }

                ++*(this + 9);
                result = operations_research::sat::ClauseManager::InprocessingFixLiteral(*(this + 2), v52);
                if (!result)
                {
                  return result;
                }

                v44 = *(this + 26);
              }
            }

            v57 = *(*v75 + 4 * (v51 + 1));
            v58 = *(*v75 + v49);
            if (v57 > v58)
            {
              v59 = 4 * v58;
              v60 = v57 - v58;
              do
              {
                v61 = *(this + 19);
                v62 = *(this + 27);
                if (v44 < v62)
                {
                  *v44 = *(v61 + v59);
                  v44 += 4;
                }

                else
                {
                  v63 = *(this + 25);
                  v64 = v44 - v63;
                  v65 = (v44 - v63) >> 2;
                  v66 = v65 + 1;
                  if ((v65 + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v67 = v62 - v63;
                  if (v67 >> 1 > v66)
                  {
                    v66 = v67 >> 1;
                  }

                  if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v68 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v68 = v66;
                  }

                  if (v68)
                  {
                    if (!(v68 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v69 = v65;
                  v70 = (4 * v65);
                  v71 = *(v61 + v59);
                  v72 = &v70[-v69];
                  *v70 = v71;
                  v44 = (v70 + 1);
                  memcpy(v72, v63, v64);
                  *(this + 25) = v72;
                  *(this + 26) = v44;
                  *(this + 27) = 0;
                  if (v63)
                  {
                    operator delete(v63);
                  }
                }

                *(this + 26) = v44;
                v59 += 4;
                --v60;
              }

              while (v60);
            }
          }

          ++v41;
          v43 = *(this + 25);
        }
      }

      v42 = v77 + 1;
      v77 = v42;
    }

    while (v42 < v73);
  }

  return 1;
}

uint64_t operations_research::sat::StampingSimplifier::ProcessClauses(operations_research::sat::ClauseManager **this)
{
  v2 = this;
  operations_research::sat::ClauseManager::DeleteRemovedClauses(this[2]);
  operations_research::sat::ClauseManager::DetachAllClauses(v2[2]);
  v3 = v2[2];
  v4 = *(v3 + 35);
  v67 = 1;
  v70 = *(v3 + 36);
  if (v4 == v70)
  {
    return v67;
  }

  v5 = 0;
  v6 = 0;
  v77 = v2;
  while (2)
  {
    v72 = *v4;
    v8 = (*v4 + 1);
    v7 = **v4;
    if (!v7)
    {
      goto LABEL_5;
    }

    v71 = v4;
    v9 = 0;
    v10 = v6;
    v73 = **v4;
    __p = v5;
    v79 = (*v4 + 1);
    while (1)
    {
      v11 = *(v8 + 4 * v9);
      v12 = *(*(*v2 + 1) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if ((v12 >> v11))
      {
        break;
      }

      if (((v12 >> (v11 & 0x3F ^ 1)) & 1) == 0)
      {
        v13 = v1;
        v14 = 4 * v11;
        v15 = *(v2[28] + v14);
        v16 = *(v2[31] + v14);
        v17 = v10 - v6;
        v18 = v17 + 1;
        if ((v17 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (-v6 >> 3 > v18)
        {
          v18 = -v6 >> 3;
        }

        if (-v6 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          if (!(v19 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = 16 * v17;
        *v20 = v9;
        *(v20 + 4) = 0;
        *(v20 + 8) = v15;
        *(v20 + 12) = v16;
        memcpy(0, v6, v10 - v6);
        v21 = 4 * (*(v79 + 4 * v9) ^ 1);
        v22 = *(v77[28] + v21);
        v23 = *(v77[31] + v21);
        v24 = 16 * v17 + 16;
        v25 = v24 >> 4;
        if (((v24 >> 4) + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v24 >> 4 != -1)
        {
          if (!(((v24 >> 4) + 1) >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v6 = 0;
        v26 = 16 * v25;
        *v26 = v9;
        *(v26 + 4) = 1;
        *(v26 + 8) = v22;
        *(v26 + 12) = v23;
        v10 = (16 * v25 + 16);
        memcpy(0, 0, v24);
        v1 = v13;
        v2 = v77;
        v7 = v73;
        v8 = v79;
        v5 = __p;
      }

      if (v7 == ++v9)
      {
        goto LABEL_26;
      }
    }

    operations_research::sat::ClauseManager::InprocessingRemoveClause(v2[2], v72);
LABEL_26:
    if (!*v72)
    {
LABEL_4:
      v4 = v71;
      goto LABEL_5;
    }

    if (v6 == v10)
    {
      v32 = v5;
      if (*v72)
      {
        goto LABEL_79;
      }

      goto LABEL_3;
    }

    v27 = v10 - v6;
    v28.n128_f64[0] = *(v2 + 6) + v27 * 0.000000015 * log(v27);
    v2[6] = v28.n128_u64[0];
    v29 = __clz(v27);
    v5 = __p;
    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *,false>(v6, v10, 126 - 2 * v29, 1, v28);
    v30 = v6;
    v31 = -1;
    v32 = __p;
    v68 = v30;
    while (1)
    {
      if (v30->n128_u32[3] >= v31)
      {
        v1 = v30->n128_u32[0];
        v78 = v30->n128_u8[4];
        v31 = v30->n128_i32[3];
        goto LABEL_30;
      }

      v33 = v30->n128_u32[0];
      if (v30->n128_u8[4] == v78)
      {
        if (v1 == v33)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v1, v1, "top_entry.i != e.i");
        }

        if (v78)
        {
          v37 = v5 - v32;
          v38 = (v5 - v32) >> 2;
          v39 = v38 + 1;
          if ((v38 + 1) >> 62)
          {
            goto LABEL_115;
          }

          v40 = v1;
          if (-v32 >> 1 > v39)
          {
            v39 = -v32 >> 1;
          }

          v41 = v32;
          if (-v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v42 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v39;
          }

          if (v42)
          {
            if (!(v42 >> 62))
            {
              operator new();
            }

            goto LABEL_116;
          }

          v32 = 0;
          v7 = v73;
          *(4 * v38) = v33;
          __pa = (4 * v38 + 4);
          memcpy(0, v41, v37);
          v1 = v40;
        }

        else
        {
          v43 = v5 - v32;
          v44 = (v5 - v32) >> 2;
          v45 = v44 + 1;
          if ((v44 + 1) >> 62)
          {
            goto LABEL_115;
          }

          if (-v32 >> 1 > v45)
          {
            v45 = -v32 >> 1;
          }

          v46 = v32;
          if (-v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v47 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            if (!(v47 >> 62))
            {
              operator new();
            }

            goto LABEL_116;
          }

          v32 = 0;
          *(4 * v44) = v1;
          __pa = (4 * v44 + 4);
          memcpy(0, v46, v43);
          v7 = v73;
        }

LABEL_73:
        v5 = __pa;
        v2 = v77;
        v8 = v79;
        goto LABEL_30;
      }

      if (v1 == v33)
      {
        break;
      }

      if (v78)
      {
        goto LABEL_77;
      }

LABEL_30:
      if (++v30 == v10)
      {
        goto LABEL_78;
      }
    }

    v34 = *(v8 + 4 * v1);
    v2[9] = (v2[9] + 1);
    v35 = v2[2];
    if ((v78 & 1) == 0)
    {
      v36 = v32;
      if (!operations_research::sat::ClauseManager::InprocessingFixLiteral(v35, v34 ^ 1))
      {
        return 0;
      }

      v48 = v5 - v32;
      v49 = (v5 - v32) >> 2;
      v50 = v49 + 1;
      if ((v49 + 1) >> 62)
      {
LABEL_115:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v32 >> 1 > v50)
      {
        v50 = -v32 >> 1;
      }

      if (-v32 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v51 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v50;
      }

      if (v51)
      {
        if (!(v51 >> 62))
        {
          operator new();
        }

LABEL_116:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v32 = 0;
      v7 = v73;
      *(4 * v49) = v1;
      __pa = (4 * v49 + 4);
      memcpy(0, v36, v48);
      goto LABEL_73;
    }

    if (!operations_research::sat::ClauseManager::InprocessingFixLiteral(v35, v34))
    {
      return 0;
    }

LABEL_77:
    v2[7] = (v2[7] + 1);
    operations_research::sat::ClauseManager::InprocessingRemoveClause(v2[2], v72);
LABEL_78:
    v6 = v68;
    if (!*v72)
    {
      goto LABEL_3;
    }

LABEL_79:
    if (v32 == v5 && v7 <= v10 - v6)
    {
LABEL_3:
      v5 = v32;
      goto LABEL_4;
    }

    std::__sort<std::__less<int,int> &,int *>();
    v52 = v32;
    v69 = v6;
    __pb = v1;
    if (v32 != v5)
    {
      v53 = (v32 + 4);
      while (v53 != v5)
      {
        v54 = *(v53 - 1);
        v55 = *v53++;
        if (v54 == v55)
        {
          v56 = v53 - 2;
          while (v53 != v5)
          {
            v57 = v54;
            v54 = *v53;
            if (v57 != *v53)
            {
              v56[1] = v54;
              ++v56;
            }

            ++v53;
          }

          if (v56 + 1 == v5)
          {
            v58 = v5;
          }

          else
          {
            v58 = v56 + 1;
          }

          v8 = v79;
          goto LABEL_95;
        }
      }
    }

    v58 = v5;
LABEL_95:
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = (v58 - v32) >> 2;
    do
    {
      if (v62 > v61 && v60 == *(v32 + 4 * v61))
      {
        ++v61;
      }

      else
      {
        v63 = *(v8 + 4 * v59);
        v64 = *(*(*v2 + 1) + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if ((v64 >> v63))
        {
          operations_research::sat::ClauseManager::InprocessingRemoveClause(v2[2], v72);
          v2 = v77;
          v8 = v79;
          v32 = v52;
        }

        else if (((v64 >> (v63 & 0x3F ^ 1u)) & 1) == 0)
        {
          operator new();
        }
      }

      v59 = ++v60;
    }

    while (v7 != v60);
    v2[8] = (v2[8] + v7);
    v65 = operations_research::sat::ClauseManager::InprocessingRewriteClause(v2[2], v72, 0, 0);
    v6 = v69;
    v4 = v71;
    v1 = __pb;
    if (v65)
    {
      v5 = v32;
LABEL_5:
      if (++v4 != v70)
      {
        continue;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23CCC3E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    if (!a14)
    {
LABEL_3:
      if (!v18)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a14)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if (!v18)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v18);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::BlockedClauseSimplifier::InitializeForNewRound(operations_research::sat::ClauseManager **this)
{
  v1 = this;
  v2 = this + 20;
  this[21] = this[20];
  operations_research::sat::ClauseManager::DeleteRemovedClauses(this[2]);
  operations_research::sat::ClauseManager::DetachAllClauses(*(v2 - 18));
  v3 = *(v2 - 18);
  v4 = *(v3 + 35);
  v5 = *(v3 + 36);
  if (v4 != v5)
  {
    do
    {
      v9 = 0;
      v11 = *v4;
      v64 = v11;
      v12 = v1[2];
      _X11 = *(v12 + 41);
      __asm { PRFM            #4, [X11] }

      v19 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11))) + v11;
      v20 = ((v19 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v19);
      v21 = vdup_n_s8(v20 & 0x7F);
      v22 = *(v12 + 39);
      for (i = (v20 >> 7) ^ (_X11 >> 12); ; i = v9 + v6)
      {
        v6 = i & v22;
        v7 = *(_X11 + v6);
        v8 = vceq_s8(v7, v21);
        if (v8)
        {
          break;
        }

LABEL_6:
        if (vceq_s8(v7, 0x8080808080808080))
        {
          std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v2, &v64);
          goto LABEL_9;
        }

        v9 += 8;
      }

      while (*(*(v12 + 42) + 24 * ((v6 + (__clz(__rbit64(v8)) >> 3)) & v22)) != v11)
      {
        v8 &= ((v8 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

LABEL_9:
      ++v4;
    }

    while (v4 != v5);
    v3 = v1[2];
  }

  v23 = *(v3 + 22);
  v63 = 1;
  std::vector<BOOL>::assign((v1 + 11), v23, &v63);
  if (v23 >= 1)
  {
    v24 = 0;
    v25 = v1[15];
    v26 = v1[16];
    v27 = v1[18];
    v28 = v1[19];
    do
    {
      if (v26 == v25)
      {
        v29 = 0;
      }

      else
      {
        v29 = ((v26 - v25) << 7) - 1;
      }

      v30 = v27 + v28;
      if (v29 == (v27 + v28))
      {
        std::deque<operations_research::sat::Literal>::__add_back_capacity(v1 + 14);
        v25 = v1[15];
        v26 = v1[16];
        v27 = v1[18];
        v28 = v1[19];
        v30 = v28 + v27;
      }

      *(*(v25 + ((v30 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v30 & 0x3FF)) = v24;
      v28 = (v28 + 1);
      v1[19] = v28;
      ++v24;
    }

    while (v23 != v24);
  }

  std::vector<BOOL>::resize((v1 + 8), v23, 0);
  v32 = v1[23];
  v31 = v1[24];
  v33 = v1 + 23;
  v34 = v32;
  if (v31 != v32)
  {
    v35 = v1[24];
    do
    {
      v37 = *(v35 - 3);
      v35 = (v35 - 24);
      v36 = v37;
      if (v37)
      {
        *(v31 - 2) = v36;
        operator delete(v36);
      }

      v31 = v35;
    }

    while (v35 != v32);
    v34 = *v33;
  }

  v1[24] = v32;
  v38 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v34) >> 3);
  if (v23 <= v38)
  {
    if (v23 < v38)
    {
      v39 = (v34 + 24 * v23);
      if (v32 != v39)
      {
        v40 = v32;
        do
        {
          v42 = *(v40 - 3);
          v40 = (v40 - 24);
          v41 = v42;
          if (v42)
          {
            *(v32 - 2) = v41;
            operator delete(v41);
          }

          v32 = v40;
        }

        while (v40 != v39);
      }

      v1[24] = v39;
    }
  }

  else
  {
    std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((v1 + 23), v23 - v38);
  }

  v43 = v1[20];
  v44 = v1[21];
  if (((v44 - v43) >> 3) >= 1)
  {
    v45 = 0;
    v62 = v1;
    do
    {
      v47 = *(v43 + v45);
      v50 = *v47;
      v49 = v47 + 1;
      v48 = v50;
      if (v50)
      {
        v51 = 4 * v48;
        do
        {
          v53 = *v33 + 24 * *v49;
          v55 = *(v53 + 8);
          v54 = *(v53 + 16);
          if (v55 < v54)
          {
            *v55 = v45;
            v52 = (v55 + 1);
          }

          else
          {
            v56 = *v53;
            v57 = v55 - *v53;
            v58 = v57 >> 2;
            v59 = (v57 >> 2) + 1;
            if (v59 >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v60 = v54 - v56;
            if (v60 >> 1 > v59)
            {
              v59 = v60 >> 1;
            }

            if (v60 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v61 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v59;
            }

            if (v61)
            {
              if (!(v61 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v58) = v45;
            v52 = 4 * v58 + 4;
            memcpy(0, v56, v57);
            *v53 = 0;
            *(v53 + 8) = v52;
            *(v53 + 16) = 0;
            if (v56)
            {
              operator delete(v56);
            }
          }

          *(v53 + 8) = v52;
          ++v49;
          v51 -= 4;
        }

        while (v51);
        v1 = v62;
        v43 = v62[20];
        v44 = v62[21];
        v46 = **(v43 + v45);
      }

      else
      {
        v46 = 0;
      }

      v1[7] = (v1[7] + v46);
      ++v45;
    }

    while (v45 < ((v44 - v43) >> 3));
  }
}

void operations_research::sat::BlockedClauseSimplifier::ProcessLiteral(void *a1, int a2)
{
  if (((*(*(*a1 + 8) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (a2 & 0x3E)) & 3) != 0)
  {
    return;
  }

  v4 = a1[1];
  if ((*(v4[99] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
  {
    return;
  }

  v6 = operations_research::sat::BinaryImplicationGraph::DirectImplications(v4, a2);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *v6;
    do
    {
      v11 = *v10;
      if (v11 != a2)
      {
        ++v9;
        *(a1[8] + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v10;
      }

      ++v10;
    }

    while (v10 != v8);
  }

  v12 = a1[23] + 24 * a2;
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*v12 == v14)
  {
    if (v7 == v8)
    {
      return;
    }

    goto LABEL_24;
  }

  do
  {
    v15 = *(a1[20] + 8 * *v13);
    v16 = *v15;
    if (v16)
    {
      if (v9 < 1)
      {
        goto LABEL_20;
      }

      if (v16 > v9)
      {
        v17 = 0;
        v18 = (v15 + 1);
        v19 = 4 * v16;
        do
        {
          v20 = *v18;
          if (v20 != a2)
          {
            v17 += (*(a1[8] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v20 & 0x3F ^ 1)) & 1;
          }

          ++v18;
          v19 -= 4;
        }

        while (v19);
        a1[7] += v16;
        if (v17 >= v9)
        {
LABEL_20:
          operator new();
        }
      }
    }

    ++v13;
  }

  while (v13 != v14);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
LABEL_24:
    v21 = a1[8];
    do
    {
      v22 = *v7++;
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v22);
    }

    while (v7 != v8);
  }
}

void sub_23CCC47C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::BlockedClauseSimplifier::ClauseIsBlocked(void *a1, int a2, int *a3, uint64_t a4)
{
  v4 = 4 * a4;
  v5 = a4 & 0x3FFFFFFFFFFFFFFFLL;
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a1[8];
    v7 = 4 * a4;
    v8 = a3;
    do
    {
      v9 = *v8++;
      *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      v7 -= 4;
    }

    while (v7);
  }

  v10 = a1[23] + 24 * (a2 ^ 1);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v11 == v12)
  {
LABEL_15:
    v20 = 1;
    if (!v5)
    {
      return v20;
    }

    goto LABEL_16;
  }

  v13 = a1[20];
  while (1)
  {
    v14 = *(v13 + 8 * *v11);
    v15 = *v14;
    if (v15)
    {
      break;
    }

LABEL_6:
    if (++v11 == v12)
    {
      goto LABEL_15;
    }
  }

  v16 = v14 + 1;
  v17 = a1[7];
  v18 = 4 * v15;
  do
  {
    v19 = *v16;
    if (v19 != (a2 ^ 1) && ((*(a1[8] + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v19 & 0x3F ^ 1)) & 1) != 0)
    {
      a1[7] = v17 + 1;
      goto LABEL_6;
    }

    ++v16;
    ++v17;
    v18 -= 4;
  }

  while (v18);
  v20 = 0;
  a1[7] = v17;
  if (v5)
  {
LABEL_16:
    v21 = a1[8];
    do
    {
      v22 = *a3++;
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v22);
      v4 -= 4;
    }

    while (v4);
  }

  return v20;
}

int *operations_research::sat::BoundedVariableElimination::UpdatePriorityQueue(int *result, uint64_t a2)
{
  if (((*(*(*(result + 1) + 8) + (((2 * a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (a2 & 0x1Fu))) & 3) == 0)
  {
    v2 = *(result + 2);
    v3 = (2 * a2) >> 6;
    v4 = 1 << (2 * (a2 & 0x1Fu));
    if ((*(v2[99] + 8 * v3) & v4) == 0 && (*(v2[84] + 8 * v3) & v4) == 0)
    {
      v5 = -(*(*(result + 42) + 4 * ((2 * a2) | 1)) + *(v2[102] + ((4 * ((2 * a2) | 1)) & 0xFFFFFFFFFFFFFFF8))) - (*(*(result + 42) + (a2 << 33 >> 30)) + *(v2[102] + (a2 << 33 >> 30) + 4));
      v6 = 4 * a2;
      v7 = a2 | (v5 << 32);
      if (*(*(result + 27) + v6))
      {
        return operations_research::IntegerPriorityQueue<operations_research::sat::BoundedVariableElimination::VariableWithPriority,std::less<operations_research::sat::BoundedVariableElimination::VariableWithPriority>>::ChangePriority(result + 46, v7);
      }

      else
      {
        v8 = result[46] + 1;
        result[46] = v8;
        if (v8 < 2)
        {
          *(*(result + 24) + 8 * v8) = v7;
          *(*(result + 27) + v6) = v8;
        }

        else
        {
          while (1)
          {
            v9 = v8 >> 1;
            v10 = *(result + 24);
            v11 = *(v10 + 8 * (v8 >> 1));
            if (SHIDWORD(v11) >= v5)
            {
              break;
            }

            *(v10 + 8 * v8) = v11;
            *(*(result + 27) + 4 * v11) = v8;
            v12 = v8 > 3;
            v8 >>= 1;
            if (!v12)
            {
              goto LABEL_13;
            }
          }

          v9 = v8;
LABEL_13:
          *(*(result + 24) + 8 * v9) = v7;
          *(*(result + 27) + v6) = v9;
        }
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::BoundedVariableElimination::Propagate(operations_research::sat::BoundedVariableElimination *this)
{
  v1 = *(this + 5);
  if (*(this + 14) >= *(v1 + 3))
  {
    return 1;
  }

  do
  {
    result = operations_research::sat::BinaryImplicationGraph::Propagate(*(this + 2), v1);
    if (!result)
    {
      return result;
    }

    v7 = *(*(*(this + 5) + 48) + 4 * *(this + 14));
    v3 = *(this + 39);
    v8 = (v3 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    v38 = result;
    if (*v8 != v10)
    {
      do
      {
        v11 = *(*(this + 36) + 8 * *v9);
        v12 = *v11;
        if (v12)
        {
          v13 = *(this + 14) - 1;
          *(this + 13) -= v12;
          *(this + 14) = v13;
          operations_research::sat::ClauseManager::InprocessingRemoveClause(*(this + 3), v11);
        }

        ++v9;
      }

      while (v9 != v10);
      v3 = *(this + 39);
      v9 = *(v3 + 24 * v7);
    }

    *(v3 + 24 * v7 + 8) = v9;
    v14 = v7 ^ 1;
    v15 = (v3 + 24 * (v7 ^ 1));
    v4 = *v15;
    v39 = v15[1];
    if (*v15 == v39)
    {
      goto LABEL_4;
    }

    while (2)
    {
      v16 = *(*(this + 36) + 8 * *v4);
      v17 = *v16;
      if (!v17)
      {
        goto LABEL_16;
      }

      v40 = v4;
      *(this + 13) -= v17;
      v18 = *(this + 20);
      *(this + 21) = v18;
      v19 = 4 * v17;
      v20 = 1;
      do
      {
        while (1)
        {
          v21 = v16[v20];
          if (v21 != v14)
          {
            v22 = *(*(*(this + 1) + 8) + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8));
            if (((v22 >> (v21 & 0x3F ^ 1u)) & 1) == 0)
            {
              break;
            }
          }

          --*(*(this + 42) + 4 * v21);
          ++v20;
          v19 -= 4;
          if (!v19)
          {
            goto LABEL_37;
          }
        }

        if ((v22 >> (v21 & 0x3F)))
        {
          --*(this + 14);
          operations_research::sat::ClauseManager::InprocessingRemoveClause(*(this + 3), v16);
          goto LABEL_15;
        }

        v23 = *(this + 22);
        if (v18 >= v23)
        {
          v24 = *(this + 20);
          v25 = v18 - v24;
          v26 = (v18 - v24) >> 2;
          v27 = v26 + 1;
          if ((v26 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v28 = v23 - v24;
          if (v28 >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v29 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            if (!(v29 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v30 = (v18 - v24) >> 2;
          v31 = (4 * v26);
          v32 = (4 * v26 - 4 * v30);
          *v31 = v21;
          v18 = (v31 + 1);
          memcpy(v32, v24, v25);
          *(this + 20) = v32;
          *(this + 21) = v18;
          *(this + 22) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v18 = v21;
          v18 += 4;
        }

        *(this + 21) = v18;
        ++v20;
        v19 -= 4;
      }

      while (v19);
LABEL_37:
      result = operations_research::sat::ClauseManager::InprocessingRewriteClause(*(this + 3), v16, *(this + 20), &v18[-*(this + 20)] >> 2);
      if (!result)
      {
        return result;
      }

      v33 = *v16;
      if (v33)
      {
        *(this + 13) += v33;
LABEL_15:
        v4 = v40;
        goto LABEL_16;
      }

      --*(this + 14);
      v34 = *(this + 20);
      v35 = *(this + 21);
      v4 = v40;
      if (v34 != v35)
      {
        v36 = *(this + 42);
        do
        {
          v37 = *v34++;
          --*(v36 + 4 * v37);
        }

        while (v34 != v35);
      }

LABEL_16:
      if (++v4 != v39)
      {
        continue;
      }

      break;
    }

    v3 = *(this + 39);
    v4 = *(v3 + 24 * v14);
LABEL_4:
    *(v3 + 24 * v14 + 8) = v4;
    v5 = *(this + 14) + 1;
    *(this + 14) = v5;
    v1 = *(this + 5);
  }

  while (v5 < *(v1 + 3));
  return v38;
}

uint64_t operations_research::sat::BoundedVariableElimination::CrossProduct(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (((*(*(*(a1 + 8) + 8) + (((2 * a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (a2 & 0x1Fu))) & 3) == 0)
  {
    v3 = (2 * a2) | 1;
    v4 = *(a1 + 336);
    v5 = *(*(a1 + 16) + 816);
    v6 = 4 * v3;
    v7 = *(v4 + v6);
    v8 = *(v5 + (a2 << 33 >> 30) + 4) + *(v4 + (a2 << 33 >> 30));
    v9 = *(v5 + (v6 & 0xFFFFFFFFFFFFFFF8)) + v7;
    if (v8 | v9)
    {
      v10 = (2 * a2);
      if (v8 >= 1 && v9 == 0)
      {
        ++*(a1 + 96);
        v28 = a1;
        if (!operations_research::sat::ClauseManager::InprocessingFixLiteral(*(a1 + 24), 2 * a2))
        {
          return 0;
        }

        goto LABEL_23;
      }

      if (v8)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9 < 1;
      }

      if (!v12)
      {
        ++*(a1 + 96);
        v28 = a1;
        LODWORD(v10) = (2 * a2) | 1;
        if (operations_research::sat::ClauseManager::InprocessingFixLiteral(*(a1 + 24), v10))
        {
          goto LABEL_23;
        }

        return 0;
      }

      v13 = *a1;
      v14 = v8 <= 1 || v9 < 2;
      if (!v14 && v9 * v8 > *(v13 + 496))
      {
        return 1;
      }

      v15 = a2;
      v16 = *(v13 + 500);
      v28 = a1;
      v17 = operations_research::sat::BinaryImplicationGraph::DirectImplications(*(a1 + 16), 2 * a2);
      v18 = v17[1] - *v17;
      v19 = v16 + 2;
      v20 = operations_research::sat::BinaryImplicationGraph::DirectImplications(v28[2], v3);
      v21 = (((v20[1] - *v20) >> 2) + (v18 >> 2)) * v19;
      v22 = v28[39];
      v23 = (v22 + 24 * v10);
      v25 = *v23;
      v24 = v23[1];
      if (v25 != v24)
      {
        v26 = v28[36];
        if (&v24[-1].u8[4] == v25)
        {
          v27 = v25;
          do
          {
LABEL_34:
            v38 = v27->i32[0];
            v27 = (v27 + 4);
            v39 = **(v26 + 8 * v38);
            if (v39)
            {
              v40 = v39 + v16;
            }

            else
            {
              v40 = 0;
            }

            v21 += v40;
          }

          while (v27 != v24);
          goto LABEL_38;
        }

        v29 = 0;
        v30 = ((&v24[-1].u8[4] - v25) >> 2) + 1;
        v27 = (v25 + 4 * (v30 & 0x7FFFFFFFFFFFFFFELL));
        v31 = v30 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v32 = *v25++;
          v33 = vshrq_n_s64(vshll_n_s32(v32, 0x20uLL), 0x1DuLL);
          v34 = **(v26 + v33.i64[0]);
          v35 = **(v26 + v33.i64[1]);
          if (v34)
          {
            v36 = v34 + v16;
          }

          else
          {
            v36 = 0;
          }

          if (v35)
          {
            v37 = v35 + v16;
          }

          else
          {
            v37 = 0;
          }

          v21 += v36;
          v29 += v37;
          v31 -= 2;
        }

        while (v31);
        v21 += v29;
        if (v30 != (v30 & 0x7FFFFFFFFFFFFFFELL))
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      v41 = (v22 + 24 * v3);
      v43 = *v41;
      v42 = v41[1];
      if (v43 != v42)
      {
        v44 = v28[36];
        if (&v42[-1].u8[4] == v43)
        {
          v45 = v43;
        }

        else
        {
          v46 = 0;
          v47 = ((&v42[-1].u8[4] - v43) >> 2) + 1;
          v45 = (v43 + 4 * (v47 & 0x7FFFFFFFFFFFFFFELL));
          v48 = v47 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v49 = *v43++;
            v50 = vshrq_n_s64(vshll_n_s32(v49, 0x20uLL), 0x1DuLL);
            v51 = **(v44 + v50.i64[0]);
            v52 = **(v44 + v50.i64[1]);
            if (v51)
            {
              v53 = v51 + v16;
            }

            else
            {
              v53 = 0;
            }

            if (v52)
            {
              v54 = v52 + v16;
            }

            else
            {
              v54 = 0;
            }

            v21 += v53;
            v46 += v54;
            v48 -= 2;
          }

          while (v48);
          v21 += v46;
          if (v47 == (v47 & 0x7FFFFFFFFFFFFFFELL))
          {
            goto LABEL_54;
          }
        }

        do
        {
          v55 = v45->i32[0];
          v45 = (v45 + 4);
          v56 = **(v44 + 8 * v55);
          if (v56)
          {
            v57 = v56 + v16;
          }

          else
          {
            v57 = 0;
          }

          v21 += v57;
        }

        while (v45 != v42);
      }

LABEL_54:
      v28[16] = v21;
      v58 = operations_research::sat::BinaryImplicationGraph::NumImplicationOnVariableRemoval(v28[2], v15);
      v28[15] = v58 * v19;
      if (v58 * v19 > v28[16])
      {
        return 1;
      }

      if (!operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<true,true>(v28, v3))
      {
        return 0;
      }

      if (v28[15] > v28[16])
      {
        return 1;
      }

      if (!operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<true,false>(v28, v10))
      {
        return 0;
      }

      v59 = v28[15];
      if (v59 > v28[16])
      {
        return 1;
      }

      v60 = v28;
      if (v59 >= 1)
      {
        if (!operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<false,false>(v28, v10))
        {
          return 0;
        }

        v60 = v28;
        if (!operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<false,true>(v28, v3))
        {
          return 0;
        }
      }

      ++v60[12];
      operations_research::sat::BinaryImplicationGraph::RemoveBooleanVariable(v60[2], v15, v60[4]);
      operations_research::sat::BoundedVariableElimination::DeleteAllClausesContaining(v60, v10);
      LODWORD(v10) = v3;
LABEL_23:
      operations_research::sat::BoundedVariableElimination::DeleteAllClausesContaining(v28, v10);
      return 1;
    }
  }

  return v2;
}

BOOL operations_research::sat::BoundedVariableElimination::RemoveLiteralFromClause(uint64_t a1, int a2, int *a3)
{
  v6 = a3 + 1;
  v5 = *a3;
  v8 = a1 + 160;
  v7 = *(a1 + 160);
  *(a1 + 104) -= v5;
  *(a1 + 168) = v7;
  if (v5)
  {
    v10 = 4 * v5;
    do
    {
      while (1)
      {
        v11 = *v6;
        v19 = v11;
        if (v11 != a2)
        {
          v12 = *(*(*(a1 + 8) + 8) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8));
          if (((v12 >> (v11 & 0x3F ^ 1)) & 1) == 0)
          {
            break;
          }
        }

        --*(*(a1 + 336) + 4 * v11);
        ++v6;
        v10 -= 4;
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      if ((v12 >> (v11 & 0x3F)))
      {
        --*(a1 + 112);
        operations_research::sat::ClauseManager::InprocessingRemoveClause(*(a1 + 24), a3);
        return 1;
      }

      std::vector<int>::push_back[abi:ne200100](v8, &v19);
      ++v6;
      v10 -= 4;
    }

    while (v10);
LABEL_8:
    result = operations_research::sat::ClauseManager::InprocessingRewriteClause(*(a1 + 24), a3, *(a1 + 160), (*(a1 + 168) - *(a1 + 160)) >> 2);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = operations_research::sat::ClauseManager::InprocessingRewriteClause(*(a1 + 24), a3, v7, 0);
    if (result)
    {
LABEL_11:
      v14 = *a3;
      if (v14)
      {
        *(a1 + 104) += v14;
      }

      else
      {
        --*(a1 + 112);
        v15 = *(a1 + 160);
        v16 = *(a1 + 168);
        if (v15 != v16)
        {
          v17 = *(a1 + 336);
          do
          {
            v18 = *v15++;
            --*(v17 + 4 * v18);
          }

          while (v15 != v16);
        }
      }

      return 1;
    }
  }

  return result;
}

int *operations_research::IntegerPriorityQueue<operations_research::sat::BoundedVariableElimination::VariableWithPriority,std::less<operations_research::sat::BoundedVariableElimination::VariableWithPriority>>::ChangePriority(int *result, uint64_t a2)
{
  v2 = *(*(result + 4) + 4 * a2);
  if (v2 < 2 || *(*(result + 1) + ((4 * v2) & 0x3FFFFFFF8) + 4) >= SHIDWORD(a2))
  {
    v7 = *result;
    v8 = 2 * v2;
    if (2 * v2 < *result)
    {
      while (1)
      {
        v12 = *(result + 1);
        v13 = *(v12 + 8 * v8);
        v14 = v8 | 1;
        v15 = *(v12 + 8 * v14);
        if (SHIDWORD(v13) >= SHIDWORD(v15))
        {
          if (SHIDWORD(a2) >= SHIDWORD(v13))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (SHIDWORD(a2) >= SHIDWORD(v15))
          {
LABEL_17:
            *(*(result + 1) + 8 * v2) = a2;
            *(*(result + 4) + 4 * a2) = v2;
            return result;
          }

          v13 = *(v12 + 8 * v14);
          v8 |= 1u;
        }

        v9 = v8;
        *(v12 + 8 * v2) = v13;
        *(*(result + 4) + 4 * v13) = v2;
        v8 *= 2;
        LODWORD(v2) = v9;
        if (v8 >= v7)
        {
          goto LABEL_8;
        }
      }
    }

    v9 = *(*(result + 4) + 4 * a2);
LABEL_8:
    if (v8 > v7 || (v10 = *(result + 1), v11 = *(v10 + 8 * v8), SHIDWORD(a2) >= SHIDWORD(v11)))
    {
      *(*(result + 1) + 8 * v9) = a2;
      *(*(result + 4) + 4 * a2) = v9;
    }

    else
    {
      *(v10 + 8 * v9) = v11;
      *(*(result + 4) + 4 * v11) = v9;
      *(*(result + 1) + 8 * v8) = a2;
      *(*(result + 4) + 4 * a2) = v8;
    }
  }

  else
  {
    while (1)
    {
      v3 = v2 >> 1;
      v4 = *(result + 1);
      v5 = *(v4 + 8 * v3);
      if (SHIDWORD(v5) >= SHIDWORD(a2))
      {
        break;
      }

      *(v4 + 8 * v2) = v5;
      *(*(result + 4) + 4 * v5) = v2;
      v6 = v2 > 3;
      LODWORD(v2) = v2 >> 1;
      if (!v6)
      {
        *(*(result + 1) + 8 * v3) = a2;
        *(*(result + 4) + 4 * a2) = v3;
        return result;
      }
    }

    *(v4 + 8 * v2) = a2;
    *(*(result + 4) + 4 * a2) = v2;
  }

  return result;
}

void operations_research::sat::BoundedVariableElimination::DeleteAllClausesContaining(unint64_t *result, int a2)
{
  v3 = a2;
  v4 = result[39];
  v5 = (v4 + 24 * a2);
  v6 = *v5;
  v42 = v5[1];
  if (*v5 != v42)
  {
    do
    {
      v8 = 8 * *v6;
      v9 = *(result[36] + v8);
      v12 = *v9;
      v10 = (v9 + 1);
      v11 = v12;
      if (v12)
      {
        v13 = result[4];
        v44[0] = v10;
        v45 = &v10[4 * v11];
        std::deque<std::vector<operations_research::sat::Literal>>::emplace_back<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v13, v44, &v45);
        v14 = 0;
        v15 = 1;
        while (*&v10[4 * v14] != a2)
        {
          v14 = v15++;
          if (!--v11)
          {
            operations_research::sat::BoundedVariableElimination::DeleteAllClausesContaining(v44);
          }
        }

        v16 = v13[5] + v13[4] - 1;
        v17 = *(*(v13[1] + 8 * (v16 / 0xAA)) + 24 * (v16 % 0xAA));
        v18 = *v17;
        *v17 = v17[v14];
        v17[v14] = v18;
        v43 = *(result[36] + v8);
        v20 = v43 + 1;
        v19 = *v43;
        v21 = result[14] - 1;
        result[13] -= v19;
        result[14] = v21;
        if (v19)
        {
          v22 = 4 * v19;
          do
          {
            v24 = *v20;
            v25 = *v20 >> 1;
            --*(result[42] + 4 * v24);
            v26 = v24 >> 1;
            v27 = result[30];
            v28 = v26 >> 6;
            v29 = *(v27 + 8 * v28);
            if ((v29 & (1 << v25)) == 0)
            {
              *(v27 + 8 * v28) = v29 | (1 << v25);
              v31 = result[34];
              v30 = result[35];
              if (v31 < v30)
              {
                *v31 = v25;
                v23 = (v31 + 1);
              }

              else
              {
                v32 = result[33];
                v33 = v31 - v32;
                v34 = (v31 - v32) >> 2;
                v35 = v34 + 1;
                if ((v34 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v36 = v30 - v32;
                if (v36 >> 1 > v35)
                {
                  v35 = v36 >> 1;
                }

                if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v37 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v37 = v35;
                }

                if (v37)
                {
                  if (!(v37 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v38 = (v31 - v32) >> 2;
                v39 = (4 * v34);
                v40 = (4 * v34 - 4 * v38);
                *v39 = v25;
                v23 = (v39 + 1);
                memcpy(v40, v32, v33);
                result[33] = v40;
                result[34] = v23;
                result[35] = 0;
                if (v32)
                {
                  operator delete(v32);
                }
              }

              result[34] = v23;
            }

            ++v20;
            v22 -= 4;
          }

          while (v22);
        }

        operations_research::sat::ClauseManager::InprocessingRemoveClause(result[3], v43);
      }

      ++v6;
    }

    while (v6 != v42);
    v4 = result[39];
    v3 = a2;
    v6 = *(v4 + 24 * a2);
  }

  *(v4 + 24 * v3 + 8) = v6;
}

void operations_research::sat::BoundedVariableElimination::AddClause(uint64_t a1, int *a2, unint64_t a3)
{
  v4 = a2;
  v14 = operations_research::sat::ClauseManager::InprocessingAddClause(*(a1 + 24), a2, a3);
  if (v14)
  {
    v6 = vdupq_n_s64(1uLL);
    v6.i64[0] = a3;
    *(a1 + 104) = vaddq_s64(*(a1 + 104), v6);
    v13 = (*(a1 + 296) - *(a1 + 288)) >> 3;
    std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 288, &v14);
    if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = 4 * a3;
      do
      {
        v8 = *v4;
        ++*(*(a1 + 336) + 4 * v8);
        std::vector<int>::push_back[abi:ne200100](*(a1 + 312) + 24 * v8, &v13);
        v9 = *(a1 + 240);
        v10 = (v8 >> 1) >> 6;
        v11 = *(v9 + 8 * v10);
        if ((v11 & (1 << (v8 >> 1))) == 0)
        {
          *(v9 + 8 * v10) = v11 | (1 << (v8 >> 1));
          v12 = v8 >> 1;
          std::vector<int>::push_back[abi:ne200100](a1 + 264, &v12);
        }

        ++v4;
        v7 -= 4;
      }

      while (v7);
    }
  }
}

uint64_t operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<true,true>(uint64_t a1, int a2)
{
  v41 = a2;
  v4 = *(*a1 + 500);
  v6 = operations_research::sat::BinaryImplicationGraph::DirectImplications(*(a1 + 16), a2);
  v7 = (*(a1 + 312) + 24 * a2);
  v8 = *v7;
  v9 = v7[1];
  if (v9 == *v7)
  {
    v37 = 1;
    return v37 & 1;
  }

  v10 = v6;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *(*(a1 + 288) + 8 * v8[v11]);
    v15 = v13 + 1;
    v14 = *v13;
    if (!v14)
    {
      goto LABEL_4;
    }

    v16 = *(a1 + 136);
    v17 = 4 * v14;
    v18 = 4 * v14;
    v19 = v13 + 1;
    do
    {
      v20 = *v19++;
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v18 -= 4;
    }

    while (v18);
    v22 = *v10;
    v21 = v10[1];
    v23 = *(a1 + 120);
    v24 = v21 == *v10;
    *(a1 + 72) += v14 + v21 - *v10;
    if (!v24)
    {
      v25 = v23;
      while (1)
      {
        v26 = *v22;
        v40 = v26;
        if (v26 == a2)
        {
          operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<true,true>(&v40, &v41);
        }

        v27 = (v26 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v28 = v26 & 0x3F;
        v29 = *(*(a1 + 136) + v27);
        if (((v29 >> (v28 ^ 1u)) & 1) == 0)
        {
          if ((v29 >> v28))
          {
            v30 = 0;
            goto LABEL_18;
          }

          v25 += v14 + v4;
          *(a1 + 120) = v25;
        }

        if (++v22 == v21)
        {
          v30 = 1;
          goto LABEL_18;
        }
      }
    }

    v30 = 1;
    v25 = v23;
LABEL_18:
    v31 = *(a1 + 136);
    do
    {
      v32 = *v15++;
      *(v31 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v32);
      v17 -= 4;
    }

    while (v17);
    v33 = *(a1 + 128);
    if ((v30 & 1) == 0)
    {
      break;
    }

LABEL_3:
    if (v25 > v33)
    {
      v38 = 0;
      LOBYTE(v9) = 1;
      goto LABEL_27;
    }

LABEL_4:
    v11 = ++v12;
    if (v12 >= (v9 - v8))
    {
      v38 = 1;
      goto LABEL_27;
    }
  }

  ++*(a1 + 80);
  *(a1 + 120) = v23;
  *(a1 + 128) = v33 - (v14 + v4);
  if (operations_research::sat::BoundedVariableElimination::RemoveLiteralFromClause(a1, a2, v13))
  {
    v8 = *v7;
    v34 = v7[1];
    v35 = *(v34 - 4);
    v9 = (v34 - 4);
    v36 = *(*v7 + 4 * v11);
    *(*v7 + 4 * v11) = v35;
    *v9 = v36;
    v7[1] = v9;
    --v12;
    v25 = *(a1 + 120);
    v33 = *(a1 + 128);
    goto LABEL_3;
  }

  v38 = 0;
  LOBYTE(v9) = 0;
LABEL_27:
  v37 = v38 | v9;
  return v37 & 1;
}

uint64_t operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<true,false>(uint64_t a1, int a2)
{
  v100 = a2;
  v4 = *(*a1 + 500);
  v5 = operations_research::sat::BinaryImplicationGraph::DirectImplications(*(a1 + 16), a2);
  v6 = (*(a1 + 312) + 24 * a2);
  v7 = *v6;
  v8 = v6[1];
  if (v8 == *v6)
  {
    goto LABEL_66;
  }

  v9 = v5;
  v10 = 0;
  v11 = 0;
  v89 = v5;
  v90 = v4 - 1;
  v92 = (*(a1 + 312) + 24 * a2);
  v96 = v4;
  while (2)
  {
    v12 = 8 * *(v7 + 4 * v10);
    v13 = *(*(a1 + 288) + v12);
    v16 = *v13;
    v14 = v13 + 1;
    v15 = v16;
    if (!v16)
    {
      goto LABEL_4;
    }

    v97 = v12;
    v17 = v15;
    v18 = v15;
    v93 = &v14[v18];
    v94 = v10;
    v19 = *(a1 + 136);
    v20 = v18 * 4;
    v21 = v14;
    do
    {
      v22 = *v21++;
      *(v19 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v20 -= 4;
    }

    while (v20);
    v24 = *v9;
    v23 = v9[1];
    v98 = *(a1 + 120);
    v99 = v14;
    *(a1 + 72) += v15 + v23 - *v9;
    if (v23 != v24)
    {
      v25 = v98;
      do
      {
        v26 = *v24;
        LODWORD(v102[0]) = v26;
        if (v26 == a2)
        {
          operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<true,true>(v102, &v100);
        }

        v27 = (v26 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v28 = v26 & 0x3F;
        v29 = *(*(a1 + 136) + v27);
        if (((v29 >> (v28 ^ 1u)) & 1) == 0)
        {
          if ((v29 >> v28))
          {
            v59 = 1;
            goto LABEL_44;
          }

          v25 += v15 + v4;
          *(a1 + 120) = v25;
        }

        ++v24;
      }

      while (v24 != v23);
    }

    v30 = (*(a1 + 312) + 24 * (a2 ^ 1));
    v32 = *v30;
    v31 = v30[1];
    if (v31 == *v30)
    {
      v59 = 0;
      goto LABEL_44;
    }

    v33 = 0;
    v34 = 0;
    while (1)
    {
      v35 = *(a1 + 128);
      if (*(a1 + 120) > v35)
      {
LABEL_40:
        v59 = 0;
        goto LABEL_41;
      }

      v36 = *(*(a1 + 288) + 8 * v32[v33]);
      v38 = v36 + 1;
      v37 = *v36;
      if (v37)
      {
        break;
      }

LABEL_18:
      v33 = ++v34;
      if (v34 >= (v31 - v32))
      {
        goto LABEL_40;
      }
    }

    v39 = 0;
    v40 = *(a1 + 72);
    v41 = 4 * v37;
    v42 = 4 * v37;
    do
    {
      v43 = *v38;
      if ((v43 ^ a2) != 1)
      {
        v44 = (v43 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v45 = v43 & 0x3F;
        v46 = *(*(a1 + 136) + v44);
        if ((v46 >> (v45 ^ 1u)))
        {
          *(a1 + 72) = v40 + 1;
          goto LABEL_18;
        }

        if (((v46 >> v45) & 1) == 0)
        {
          ++v39;
        }
      }

      ++v38;
      ++v40;
      v42 -= 4;
    }

    while (v42);
    *(a1 + 72) = v40;
    if (v39 + v17 <= v37)
    {
      ++*(a1 + 80);
      *(a1 + 128) = v35 - (v96 + v37);
      if (v39)
      {
        v47 = v30;
        if (!operations_research::sat::BoundedVariableElimination::RemoveLiteralFromClause(a1, a2 ^ 1, v36))
        {
          goto LABEL_67;
        }

        v30 = v47;
        v32 = *v47;
        v48 = v47[1];
        v49 = *(v48 - 4);
        v31 = (v48 - 4);
        v50 = *(*v47 + 4 * v33);
        *(*v47 + 4 * v33) = v49;
        *v31 = v50;
        v47[1] = v31;
        --v34;
        v14 = v99;
        v17 = v15;
        goto LABEL_18;
      }

      v91 = v30;
      v51 = *(a1 + 112) - 1;
      *(a1 + 104) -= v37;
      *(a1 + 112) = v51;
      v52 = 1;
      do
      {
        v53 = v36[v52];
        v54 = v53 >> 1;
        --*(*(a1 + 336) + 4 * v53);
        v55 = v53 >> 1;
        v56 = *(a1 + 240);
        v57 = v55 >> 6;
        v58 = *(v56 + 8 * v57);
        if ((v58 & (1 << v54)) == 0)
        {
          *(v56 + 8 * v57) = v58 | (1 << v54);
          LODWORD(v101[0]) = v54;
          std::vector<int>::push_back[abi:ne200100](a1 + 264, v101);
        }

        ++v52;
        v41 -= 4;
      }

      while (v41);
      operations_research::sat::ClauseManager::InprocessingRemoveClause(*(a1 + 24), v36);
      v14 = v99;
      v17 = v15;
      v30 = v91;
    }

    if (!v39)
    {
      v59 = 1;
      goto LABEL_41;
    }

    if ((v15 - 1 + v39) < 0x65)
    {
      *(a1 + 120) += v90 + v15 + v39;
      v32 = *v30;
      v31 = v30[1];
      goto LABEL_18;
    }

    v59 = 0;
    *(a1 + 120) = *(a1 + 128) + 1;
LABEL_41:
    v4 = v96;
    v9 = v89;
LABEL_44:
    v60 = *(a1 + 136);
    v61 = v14;
    do
    {
      v62 = *v61++;
      *(v60 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v62);
      --v18;
    }

    while (v18 * 4);
    v63 = *(a1 + 128);
    if ((v59 & 1) == 0)
    {
      v6 = v92;
      v64 = v97;
      v68 = *(a1 + 120);
      if (v68 > v63)
      {
        goto LABEL_68;
      }

      goto LABEL_51;
    }

    ++*(a1 + 80);
    *(a1 + 120) = v98;
    *(a1 + 128) = v63 - (v17 + v4);
    v64 = v97;
    v6 = v92;
    if (operations_research::sat::BoundedVariableElimination::RemoveLiteralFromClause(a1, a2, *(*(a1 + 288) + v97)))
    {
      v65 = v92[1];
      v66 = *(*v92 + 4 * v94);
      v67 = *--v65;
      *(*v92 + 4 * v94) = v67;
      *v65 = v66;
      v92[1] = v65;
      --v11;
      v68 = *(a1 + 120);
      v63 = *(a1 + 128);
      v14 = v99;
      v17 = v15;
      if (v68 > v63)
      {
LABEL_68:
        v87 = 0;
        LODWORD(v8) = 1;
        return (v87 | v8) & 1;
      }

LABEL_51:
      if (v68 == v98)
      {
        v69 = v59;
      }

      else
      {
        v69 = 1;
      }

      if ((v69 & 1) == 0)
      {
        ++*(a1 + 88);
        *(a1 + 128) = v63 - (v17 + v4);
        v70 = *(a1 + 32);
        v101[0] = v14;
        v102[0] = v93;
        std::deque<std::vector<operations_research::sat::Literal>>::emplace_back<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v70, v101, v102);
        v71 = 0;
        v72 = 1;
        while (v99[v71] != a2)
        {
          v71 = v72++;
          if (!--v15)
          {
            operations_research::sat::BoundedVariableElimination::DeleteAllClausesContaining(v101);
          }
        }

        v73 = v70[5] + v70[4] - 1;
        v74 = *(*(v70[1] + 8 * (v73 / 0xAA)) + 24 * (v73 % 0xAA));
        v75 = *v74;
        *v74 = v74[v71];
        v74[v71] = v75;
        v76 = *(*(a1 + 288) + v64);
        v78 = v76 + 1;
        v77 = *v76;
        v79 = *(a1 + 112) - 1;
        *(a1 + 104) -= v77;
        *(a1 + 112) = v79;
        if (v77)
        {
          v80 = 4 * v77;
          do
          {
            v81 = *v78;
            v82 = *v78 >> 1;
            --*(*(a1 + 336) + 4 * v81);
            v83 = v81 >> 1;
            v84 = *(a1 + 240);
            v85 = v83 >> 6;
            v86 = *(v84 + 8 * v85);
            if ((v86 & (1 << v82)) == 0)
            {
              *(v84 + 8 * v85) = v86 | (1 << v82);
              LODWORD(v101[0]) = v82;
              std::vector<int>::push_back[abi:ne200100](a1 + 264, v101);
            }

            ++v78;
            v80 -= 4;
          }

          while (v80);
        }

        operations_research::sat::ClauseManager::InprocessingRemoveClause(*(a1 + 24), v76);
      }

LABEL_4:
      v10 = ++v11;
      v7 = *v6;
      v8 = v6[1] - *v6;
      if (v11 < (v8 >> 2))
      {
        continue;
      }

LABEL_66:
      v87 = 1;
    }

    else
    {
LABEL_67:
      v87 = 0;
      LODWORD(v8) = 0;
    }

    return (v87 | v8) & 1;
  }
}

BOOL operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<false,false>(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v87 = a2;
  v74 = *(*a1 + 500);
  v4 = operations_research::sat::BinaryImplicationGraph::DirectImplications(*(a1 + 16), a2);
  v75 = (*(a1 + 312) + 24 * v3);
  v76 = v4;
  v6 = *v75;
  v5 = v75[1];
  if (v5 == *v75)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  while (2)
  {
    while (1)
    {
      v80 = v8;
      v78 = v7;
      v79 = 8 * v6[v7];
      v9 = *(*(a1 + 288) + v79);
      v12 = *v9;
      v11 = v9 + 1;
      v10 = v12;
      if (v12)
      {
        break;
      }

LABEL_4:
      v8 = v80 + 1;
      v7 = v80 + 1;
      if (v7 >= v5 - v6)
      {
        return 1;
      }
    }

    v13 = *(a1 + 160);
    *(a1 + 168) = v13;
    v82 = v11;
    v83 = v10;
    v14 = 4 * v10;
    v81 = 4 * v10;
    do
    {
      v15 = *v11;
      if (*v11 != v3)
      {
        v16 = *(a1 + 176);
        if (v13 < v16)
        {
          *v13 = v15;
          v13 += 4;
        }

        else
        {
          v17 = *(a1 + 160);
          v18 = v13 - v17;
          v19 = (v13 - v17) >> 2;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
LABEL_75:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v21 = v3;
          v22 = v16 - v17;
          if (v22 >> 1 > v20)
          {
            v20 = v22 >> 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v20;
          }

          if (v23)
          {
            if (!(v23 >> 62))
            {
              operator new();
            }

            goto LABEL_76;
          }

          v24 = (v13 - v17) >> 2;
          v25 = (4 * v19);
          v26 = (4 * v19 - 4 * v24);
          *v25 = v15;
          v13 = (v25 + 1);
          memcpy(v26, v17, v18);
          *(a1 + 160) = v26;
          *(a1 + 168) = v13;
          *(a1 + 176) = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v3 = v21;
        }

        *(a1 + 168) = v13;
      }

      *(*(a1 + 136) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++v11;
      v14 -= 4;
    }

    while (v14);
    v28 = *v76;
    v27 = v76[1];
    v29 = v83;
    v77 = *(a1 + 120);
    for (*(a1 + 72) += v83 + v27 - *v76; v28 != v27; ++v28)
    {
      v35 = *v28;
      v86 = v35;
      if (v35 == v3)
      {
        operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<true,true>(&v86, &v87);
      }

      v36 = (v35 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v37 = v35 & 0x3F;
      v38 = *(*(a1 + 136) + v36);
      if (((v38 >> (v37 ^ 1u)) & 1) == 0)
      {
        if ((v38 >> v37))
        {
LABEL_32:
          v39 = 1;
LABEL_66:
          v34 = v81;
          v33 = v82;
          goto LABEL_67;
        }

        std::vector<int>::push_back[abi:ne200100](a1 + 160, &v86);
        operations_research::sat::BoundedVariableElimination::AddClause(a1, *(a1 + 160), (*(a1 + 168) - *(a1 + 160)) >> 2);
        *(a1 + 168) -= 4;
      }
    }

    v3 = v87;
    v84 = (*(a1 + 312) + 24 * (v87 ^ 1));
    v30 = *v84;
    if (v84[1] == *v84)
    {
      v39 = 0;
      goto LABEL_66;
    }

    v31 = 0;
    v32 = 0;
    v34 = v81;
    v33 = v82;
    while (2)
    {
      v40 = *(*(a1 + 288) + 8 * *(v30 + 4 * v31));
      v41 = *v40;
      if (!v41)
      {
        goto LABEL_35;
      }

      v85 = v32;
      v42 = 0;
      v43 = v40 + 1;
      v44 = 4 * v41;
      while (1)
      {
        v46 = *v43;
        ++*(a1 + 72);
        if ((v3 ^ v46) != 1)
        {
          break;
        }

LABEL_40:
        ++v43;
        v44 -= 4;
        if (!v44)
        {
          v29 = v83;
          if (v42)
          {
            operations_research::sat::BoundedVariableElimination::AddClause(a1, *(a1 + 160), (*(a1 + 168) - *(a1 + 160)) >> 2);
            v60 = *(a1 + 160);
            v61 = (*(a1 + 168) - v60) >> 2;
            v62 = v61 >= v42;
            v63 = v61 - v42;
            v34 = v81;
            v33 = v82;
            if (v62)
            {
              *(a1 + 168) = v60 + 4 * v63;
            }

            else
            {
              std::vector<int>::__append((a1 + 160), -v42);
            }

            goto LABEL_34;
          }

          goto LABEL_32;
        }
      }

      v47 = *(*(a1 + 136) + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v47 >> (v46 & 0x3F ^ 1u)) & 1) == 0)
      {
        if (((v47 >> (v46 & 0x3F)) & 1) == 0)
        {
          v49 = *(a1 + 168);
          v48 = *(a1 + 176);
          if (v49 < v48)
          {
            *v49 = v46;
            v45 = v49 + 4;
          }

          else
          {
            v50 = *(a1 + 160);
            v51 = v49 - v50;
            v52 = (v49 - v50) >> 2;
            v53 = v52 + 1;
            if ((v52 + 1) >> 62)
            {
              goto LABEL_75;
            }

            v54 = v3;
            v55 = v48 - v50;
            if (v55 >> 1 > v53)
            {
              v53 = v55 >> 1;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v56 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v53;
            }

            if (v56)
            {
              if (!(v56 >> 62))
              {
                operator new();
              }

LABEL_76:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v57 = (v49 - v50) >> 2;
            v58 = (4 * v52);
            v59 = (4 * v52 - 4 * v57);
            *v58 = v46;
            v45 = v58 + 1;
            memcpy(v59, v50, v51);
            *(a1 + 160) = v59;
            *(a1 + 168) = v45;
            *(a1 + 176) = 0;
            if (v50)
            {
              operator delete(v50);
            }

            v3 = v54;
          }

          ++v42;
          *(a1 + 168) = v45;
        }

        goto LABEL_40;
      }

      v64 = *(a1 + 160);
      v65 = (*(a1 + 168) - v64) >> 2;
      v66 = v65 - v42;
      if (v65 < v42)
      {
        std::vector<int>::__append((a1 + 160), -v42);
        v33 = v82;
        v29 = v83;
        v34 = v81;
LABEL_34:
        v32 = v85;
        goto LABEL_35;
      }

      v33 = v82;
      v29 = v83;
      v34 = v81;
      v32 = v85;
      if (v65 > v66)
      {
        *(a1 + 168) = v64 + 4 * v66;
      }

LABEL_35:
      v31 = ++v32;
      v30 = *v84;
      if (v32 < ((v84[1] - *v84) >> 2))
      {
        continue;
      }

      break;
    }

    v39 = 0;
LABEL_67:
    v67 = *(a1 + 136);
    do
    {
      v68 = *v33++;
      *(v67 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v68);
      v34 -= 4;
    }

    while (v34);
    if ((v39 & 1) == 0)
    {
      v6 = *v75;
      v5 = v75[1];
      goto LABEL_4;
    }

    ++*(a1 + 80);
    v69 = *(a1 + 128) - (v29 + v74);
    *(a1 + 120) = v77;
    *(a1 + 128) = v69;
    v3 = v87;
    result = operations_research::sat::BoundedVariableElimination::RemoveLiteralFromClause(a1, v87, *(*(a1 + 288) + v79));
    if (result)
    {
      v6 = *v75;
      v71 = v75[1];
      v72 = *(v71 - 4);
      v5 = (v71 - 4);
      v73 = *(*v75 + 4 * v78);
      *(*v75 + 4 * v78) = v72;
      *v5 = v73;
      v75[1] = v5;
      v8 = v80;
      v7 = v80;
      if (v80 >= (v5 - v6))
      {
        return 1;
      }

      continue;
    }

    return result;
  }
}

BOOL operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<false,true>(uint64_t a1, int a2)
{
  v2 = a2;
  v54 = a2;
  v45 = *(*a1 + 500);
  v4 = operations_research::sat::BinaryImplicationGraph::DirectImplications(*(a1 + 16), a2);
  v46 = (*(a1 + 312) + 24 * v2);
  v47 = v4;
  v6 = *v46;
  v5 = v46[1];
  if (v5 != *v46)
  {
    v7 = 0;
    v8 = 0;
    v52 = v2;
    do
    {
      v9 = *(*(a1 + 288) + 8 * v6[v7]);
      v12 = *v9;
      v11 = v9 + 1;
      v10 = v12;
      if (v12)
      {
        v48 = v7;
        v49 = 8 * v6[v7];
        v50 = v8;
        v51 = v10;
        v13 = *(a1 + 160);
        *(a1 + 168) = v13;
        v14 = 4 * v10;
        v15 = 4 * v10;
        v16 = v11;
        do
        {
          v17 = *v16;
          if (*v16 != v2)
          {
            v18 = *(a1 + 176);
            if (v13 < v18)
            {
              *v13 = v17;
              v13 += 4;
            }

            else
            {
              v19 = *(a1 + 160);
              v20 = v13 - v19;
              v21 = (v13 - v19) >> 2;
              v22 = v21 + 1;
              if ((v21 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v23 = v18 - v19;
              if (v23 >> 1 > v22)
              {
                v22 = v23 >> 1;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v24 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (!(v24 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v25 = (v13 - v19) >> 2;
              v26 = (4 * v21);
              v27 = (4 * v21 - 4 * v25);
              *v26 = v17;
              v13 = (v26 + 1);
              memcpy(v27, v19, v20);
              *(a1 + 160) = v27;
              *(a1 + 168) = v13;
              *(a1 + 176) = 0;
              if (v19)
              {
                operator delete(v19);
              }

              v2 = v52;
            }

            *(a1 + 168) = v13;
          }

          *(*(a1 + 136) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          ++v16;
          v15 -= 4;
        }

        while (v15);
        v29 = *v47;
        v28 = v47[1];
        v30 = *(a1 + 120);
        v31 = v28 == *v47;
        *(a1 + 72) += v51 + v28 - *v47;
        if (!v31)
        {
          do
          {
            v40 = *v29;
            v53 = v40;
            if (v40 == v2)
            {
              operations_research::sat::BoundedVariableElimination::ResolveAllClauseContaining<true,true>(&v53, &v54);
            }

            v41 = (v40 >> 3) & 0x1FFFFFFFFFFFFFF8;
            v42 = v40 & 0x3F;
            v43 = *(*(a1 + 136) + v41);
            if (((v43 >> (v42 ^ 1u)) & 1) == 0)
            {
              if ((v43 >> v42))
              {
                v32 = 0;
                goto LABEL_27;
              }

              std::vector<int>::push_back[abi:ne200100](a1 + 160, &v53);
              operations_research::sat::BoundedVariableElimination::AddClause(a1, *(a1 + 160), (*(a1 + 168) - *(a1 + 160)) >> 2);
              *(a1 + 168) -= 4;
            }

            ++v29;
          }

          while (v29 != v28);
        }

        v32 = 1;
LABEL_27:
        v33 = *(a1 + 136);
        do
        {
          v34 = *v11++;
          *(v33 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v34);
          v14 -= 4;
        }

        while (v14);
        if (v32)
        {
          v6 = *v46;
          v5 = v46[1];
          v8 = v50;
        }

        else
        {
          ++*(a1 + 80);
          v35 = *(a1 + 128) - (v51 + v45);
          *(a1 + 120) = v30;
          *(a1 + 128) = v35;
          result = operations_research::sat::BoundedVariableElimination::RemoveLiteralFromClause(a1, a2, *(*(a1 + 288) + v49));
          if (!result)
          {
            return result;
          }

          v6 = *v46;
          v37 = v46[1];
          v38 = *(v37 - 4);
          v5 = (v37 - 4);
          v39 = *(*v46 + 4 * v48);
          *(*v46 + 4 * v48) = v38;
          *v5 = v39;
          v46[1] = v5;
          v8 = v50 - 1;
        }
      }

      v7 = ++v8;
    }

    while (v8 < (v5 - v6));
  }

  return 1;
}

char *std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(char *result, char *a2, unint64_t a3, char *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *result;
      if (*v5 < **result)
      {
        *result = v5;
        *(a2 - 1) = v6;
      }

      return result;
    }

    if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = &result[v17];
      if (a3 <= a5)
      {
        v23 = result;
        std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(result, v19, a3 >> 1, a4);
        v26 = &a4[8 * v16];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(&v23[v17], a2, v18, v26);
        v27 = &a4[8 * a3];
        if ((a3 & 0x3FFFFFFFFFFFFFFELL) != 0)
        {
          v28 = v26;
          v29 = a4;
          v30 = v23;
          v31 = v23;
          while (v28 != v27)
          {
            v32 = *v28;
            v33 = **v28;
            v34 = **v29;
            v35 = v33 < v34;
            v36 = v33 >= v34;
            v37 = v35;
            if (!v35)
            {
              v32 = *v29;
            }

            v29 += 8 * v36;
            v28 += 8 * v37;
            *v31++ = v32;
            v30 += 8;
            if (v29 == v26)
            {
              goto LABEL_33;
            }
          }

          if (v29 != v26)
          {
            v42 = &a4[v17] - v29 - 8;
            if (v42 >= 0x38)
            {
              if ((v30 - v29) >= 0x20)
              {
                v51 = v31 + 2;
                v52 = (v42 >> 3) + 1;
                v53 = 8 * (v52 & 0x3FFFFFFFFFFFFFFCLL);
                v43 = &v29[v53];
                v31 = (v31 + v53);
                v54 = (v29 + 16);
                v55 = v52 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v56 = *v54;
                  *(v51 - 1) = *(v54 - 1);
                  *v51 = v56;
                  v51 += 2;
                  v54 += 2;
                  v55 -= 4;
                }

                while (v55);
                if (v52 == (v52 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return result;
                }
              }

              else
              {
                v43 = v29;
              }
            }

            else
            {
              v43 = v29;
            }

            do
            {
              v57 = *v43;
              v43 += 8;
              *v31++ = v57;
            }

            while (v43 != v26);
          }
        }

        else
        {
          v31 = v23;
          v28 = v26;
LABEL_33:
          if (v28 != v27)
          {
            v38 = v27 - v28 - 8;
            if (v38 >= 0x18 && (v31 - v28) > 0x1F)
            {
              v44 = (v38 >> 3) + 1;
              v45 = v44 & 0x3FFFFFFFFFFFFFFCLL;
              v40 = &v28[v45 * 8];
              v41 = &v31[v45];
              v46 = v31 + 2;
              v47 = (v28 + 16);
              v48 = v44 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v49 = *v47;
                *(v46 - 1) = *(v47 - 1);
                *v46 = v49;
                v46 += 2;
                v47 += 2;
                v48 -= 4;
              }

              while (v48);
              if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v40 = v28;
              v41 = v31;
            }

            do
            {
              v50 = *v40;
              v40 += 8;
              *v41++ = v50;
            }

            while (v40 != v27);
          }
        }
      }

      else
      {
        v20 = result;
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(result, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(&v20[v17], a2, v18, a4, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(v20, &v20[v17], a2, v16, v18, a4, a5);
      }
    }

    else if (result != a2)
    {
      v7 = result + 8;
      if (result + 8 != a2)
      {
        v8 = 0;
        v9 = result;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *v12;
          if (*v12 < *v11)
          {
            v14 = v8;
            do
            {
              *&result[v14 + 8] = v11;
              if (!v14)
              {
                v10 = result;
                goto LABEL_11;
              }

              v11 = *&result[v14 - 8];
              v14 -= 8;
            }

            while (v13 < *v11);
            v10 = &result[v14 + 8];
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 8;
          v8 += 8;
        }

        while (v9 + 8 != a2);
      }
    }
  }

  return result;
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(char *result, char *a2, unint64_t a3, char *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = a2 - 8;
      v5 = v6;
      v7 = *v6;
      v8 = **result;
      if (*v6 >= v8)
      {
        v5 = *result;
      }

      *a4 = v5;
      a4 += 8;
      if (v7 >= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = 8 * (a3 >> 1);
      v21 = &result[v20];
      v22 = result;
      v25 = a4;
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(result, &result[v20], v19, a4, v19);
      result = std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      if (v20)
      {
        v26 = v25;
        v27 = v25;
        v28 = v21;
        v29 = a2;
        v30 = v22;
        while (v28 != a2)
        {
          v31 = *v28;
          v32 = **v28;
          v33 = **v30;
          v34 = v32 < v33;
          v35 = v32 >= v33;
          v36 = v34;
          if (!v34)
          {
            v31 = *v30;
          }

          v28 += 8 * v36;
          v30 += 8 * v35;
          *v26++ = v31;
          v27 += 8;
          if (v30 == v21)
          {
            goto LABEL_34;
          }
        }

        if (v30 != v21)
        {
          v46 = v21 - v30 - 8;
          if (v46 >= 0x38)
          {
            if ((v27 - v30) >= 0x20)
            {
              v49 = v26 + 2;
              v50 = (v46 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v26 = (v26 + v51);
              v47 = &v30[v51];
              v52 = (v30 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v47 = v30;
            }
          }

          else
          {
            v47 = v30;
          }

          do
          {
            v55 = *v47;
            v47 += 8;
            *v26++ = v55;
          }

          while (v47 != v21);
        }
      }

      else
      {
        v28 = v21;
        v26 = v25;
        v29 = a2;
LABEL_34:
        if (v28 != v29)
        {
          v37 = v29 - v28 - 8;
          if (v37 < 0x18 || (v26 - v28) < 0x20)
          {
            v40 = v26;
            v41 = v28;
          }

          else
          {
            v38 = (v37 >> 3) + 1;
            v39 = v38 & 0x3FFFFFFFFFFFFFFCLL;
            v40 = &v26[v39];
            v41 = &v28[v39 * 8];
            v42 = (v28 + 16);
            v43 = v26 + 2;
            v44 = v38 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v45 = *v42;
              *(v43 - 1) = *(v42 - 1);
              *v43 = v45;
              v42 += 2;
              v43 += 2;
              v44 -= 4;
            }

            while (v44);
            if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          do
          {
            v48 = *v41;
            v41 += 8;
            *v40++ = v48;
          }

          while (v41 != v29);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12;
            v12 += 8;
            v13 = v14;
            if (**result < *v14)
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          *(v11 + 1) = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = &a4[v16];
              v17 = *&a4[v16 - 8];
              if (**result >= *v17)
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v9 = result;
    while (a5 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = -a4;
      while (1)
      {
        v12 = *&v10[v9];
        if (**a2 < *v12)
        {
          break;
        }

        v10 += 8;
        if (__CFADD__(v11++, 1))
        {
          return result;
        }
      }

      v14 = -v11;
      v68 = a3;
      __src = a6;
      v66 = &v10[v9];
      v67 = a7;
      if (-v11 >= a5)
      {
        if (v11 == -1)
        {
          *&v10[v9] = *a2;
          *a2 = v12;
          return result;
        }

        v23 = v14 / 2;
        v24 = &v9[8 * (v14 / 2)];
        v16 = a2;
        if (a2 != a3)
        {
          v25 = (a3 - a2) >> 3;
          v16 = a2;
          do
          {
            v26 = v25 >> 1;
            v27 = &v16[8 * (v25 >> 1)];
            v29 = *v27;
            v28 = v27 + 8;
            v25 += ~(v25 >> 1);
            if (*v29 < **&v10[v24])
            {
              v16 = v28;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
        }

        v15 = (v16 - a2) >> 3;
        v17 = &v10[v24];
      }

      else
      {
        v15 = a5 / 2;
        v16 = &a2[8 * (a5 / 2)];
        v17 = a2;
        if ((a2 - v9) != v10)
        {
          v18 = (a2 - v9 - v10) >> 3;
          v17 = &v10[v9];
          do
          {
            v19 = v18 >> 1;
            v20 = &v17[8 * (v18 >> 1)];
            v22 = *v20;
            v21 = v20 + 8;
            v18 += ~(v18 >> 1);
            if (**v16 < *v22)
            {
              v18 = v19;
            }

            else
            {
              v17 = v21;
            }
          }

          while (v18);
        }

        v23 = (v17 - v9 - v10) >> 3;
      }

      a4 = -(v23 + v11);
      v30 = a5 - v15;
      v31 = a5;
      v32 = v23;
      v33 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SatClause **>,std::__wrap_iter<operations_research::sat::SatClause **>>(v17, a2, v16);
      v34 = v32;
      v35 = v33;
      if (v34 + v15 >= v31 - (v34 + v15) - v11)
      {
        a6 = __src;
        v36 = v34;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(v33, v16, v68, a4, v30, __src, v67);
        a7 = v67;
        a4 = v36;
        a3 = v35;
        v9 = v66;
        a5 = v15;
        a2 = v17;
        if (!v15)
        {
          return result;
        }
      }

      else
      {
        a6 = __src;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::Inprocessing::SubsumeAndStrenghtenRound(BOOL)::$_0 &,std::__wrap_iter<operations_research::sat::SatClause **>>(&v10[v9], v17, v33, v34, v15, __src, v67);
        a7 = v67;
        v9 = v35;
        a3 = v68;
        a5 = v30;
        a2 = v16;
        if (!v30)
        {
          return result;
        }
      }
    }

    if (a4 <= a5)
    {
      if (a2 != v9)
      {
        v46 = a2 - v9 - 8;
        v47 = a6;
        v48 = v9;
        if (v46 < 0x18)
        {
          goto LABEL_75;
        }

        v47 = a6;
        v48 = v9;
        if ((a6 - v9) <= 0x1F)
        {
          goto LABEL_75;
        }

        v49 = (v46 >> 3) + 1;
        v50 = 8 * (v49 & 0x3FFFFFFFFFFFFFFCLL);
        v47 = &a6[v50];
        v48 = &v9[v50];
        v51 = (v9 + 16);
        v52 = a6 + 16;
        v53 = v49 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v54 = *v51;
          *(v52 - 1) = *(v51 - 1);
          *v52 = v54;
          v51 += 2;
          v52 += 32;
          v53 -= 4;
        }

        while (v53);
        if (v49 != (v49 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_75:
          do
          {
            v55 = *v48;
            v48 += 8;
            *v47 = v55;
            v47 += 8;
          }

          while (v48 != a2);
        }

        if (v47 != a6)
        {
          while (a2 != a3)
          {
            v56 = *a2;
            v57 = **a2;
            v58 = **a6;
            v59 = v57 < v58;
            v60 = v57 >= v58;
            v61 = v59;
            if (!v59)
            {
              v56 = *a6;
            }

            a2 += 8 * v61;
            a6 += 8 * v60;
            *v9 = v56;
            v9 += 8;
            if (a6 == v47)
            {
              return result;
            }
          }

          return memmove(v9, a6, v47 - a6);
        }
      }
    }

    else
    {
      if (a2 == a3)
      {
        return result;
      }

      v37 = a3 - a2 - 8;
      if (v37 < 0x18)
      {
        v38 = a6;
        v39 = a2;
        do
        {
LABEL_61:
          v62 = *v39;
          v39 += 8;
          *v38 = v62;
          v38 += 8;
        }

        while (v39 != a3);
        goto LABEL_68;
      }

      v38 = a6;
      v39 = a2;
      if ((a6 - a2) <= 0x1F)
      {
        goto LABEL_61;
      }

      v40 = (v37 >> 3) + 1;
      v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
      v38 = &a6[v41];
      v39 = &a2[v41];
      v42 = a2 + 16;
      v43 = a6 + 16;
      v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v45 = *v42;
        *(v43 - 1) = *(v42 - 1);
        *v43 = v45;
        v42 += 32;
        v43 += 32;
        v44 -= 4;
      }

      while (v44);
      if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_61;
      }

LABEL_68:
      while (v38 != a6)
      {
        if (a2 == v9)
        {
          if (v38 != a6)
          {
            v64 = -8;
            do
            {
              v65 = *(v38 - 1);
              v38 -= 8;
              *&a3[v64] = v65;
              v64 -= 8;
            }

            while (v38 != a6);
          }

          return result;
        }

        v63 = *(a2 - 1);
        if (**(v38 - 1) < *v63)
        {
          a2 -= 8;
        }

        else
        {
          v63 = *(v38 - 1);
          v38 -= 8;
        }

        *(a3 - 1) = v63;
        a3 -= 8;
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SatClause **>,std::__wrap_iter<operations_research::sat::SatClause **>>(char *__src, uint64_t a2, void *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 8 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 8, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 8) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 8;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 8, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 3;
    v16 = v6 >> 3;
    if (v5 >> 3 == v6 >> 3)
    {
      v17 = __src + 8;
      v18 = (a2 + 8);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 8;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 3;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[8 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 3;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[8 * v32];
          if (v31)
          {
            v26 = &v28[8 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

void ***std::__exception_guard_exceptions<std::vector<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v7 = *(v6 - 32);
          v6 -= 4;
          if (v7)
          {
            operator delete(*(v4 - 3));
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      if (a2[-1].n128_u32[2] < v12->n128_u32[2])
      {
        v133 = *v12;
        *v12 = a2[-1];
        result = v133;
        a2[-1] = v133;
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v58 = v12 + 1;
      v60 = v12 == a2 || v58 == a2;
      if (a4)
      {
        if (!v60)
        {
          v61 = 0;
          v62 = v12;
          do
          {
            v64 = v58;
            v65 = v62[1].n128_i32[2];
            if (v65 < v62->n128_u32[2])
            {
              v66 = v64->n128_u64[0];
              v67 = v62[1].n128_u32[3];
              v68 = v61;
              do
              {
                result = *(v12 + v68);
                *(v12 + v68 + 16) = result;
                if (!v68)
                {
                  v63 = v12;
                  goto LABEL_125;
                }

                v69 = *(&v12->n128_i32[-2] + v68);
                v68 -= 16;
              }

              while (v65 < v69);
              v63 = &v12[1] + v68;
LABEL_125:
              *v63 = v66;
              *(v63 + 8) = v65;
              *(v63 + 12) = v67;
            }

            v58 = v64 + 1;
            v61 += 16;
            v62 = v64;
          }

          while (&v64[1] != a2);
        }
      }

      else if (!v60)
      {
        do
        {
          v104 = v58;
          v105 = a1[1].n128_i32[2];
          if (v105 < a1->n128_u32[2])
          {
            v106 = v58->n128_u64[0];
            v107 = a1[1].n128_u32[3];
            v108 = v104;
            do
            {
              result = v108[-1];
              *v108 = result;
              v109 = v108[-2].n128_i32[2];
              --v108;
            }

            while (v105 < v109);
            v108->n128_u64[0] = v106;
            v108->n128_u32[2] = v105;
            v108->n128_u32[3] = v107;
          }

          v58 = v104 + 1;
          a1 = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v70 = (v13 - 2) >> 1;
        v71 = v70;
        do
        {
          v73 = 16 * v71;
          if (v70 >= (16 * v71) >> 4)
          {
            v74 = (v73 >> 3) | 1;
            v75 = &v12[v74];
            if ((v73 >> 3) + 2 < v13)
            {
              v76 = v75->n128_i32[2];
              v77 = v75[1].n128_i32[2];
              v75 += v76 < v77;
              if (v76 < v77)
              {
                v74 = (v73 >> 3) + 2;
              }
            }

            v78 = &v12[v73 / 0x10];
            v79 = v78->n128_i32[2];
            if (v75->n128_u32[2] >= v79)
            {
              v80 = v78->n128_u64[0];
              v81 = v78->n128_u32[3];
              do
              {
                v82 = v78;
                v78 = v75;
                *v82 = *v75;
                if (v70 < v74)
                {
                  break;
                }

                v83 = (2 * v74) | 1;
                v75 = &v12[v83];
                v84 = 2 * v74 + 2;
                if (v84 < v13)
                {
                  v85 = v75->n128_i32[2];
                  v86 = v75[1].n128_i32[2];
                  v75 += v85 < v86;
                  if (v85 < v86)
                  {
                    v83 = v84;
                  }
                }

                v74 = v83;
              }

              while (v75->n128_u32[2] >= v79);
              v78->n128_u64[0] = v80;
              v78->n128_u32[2] = v79;
              v78->n128_u32[3] = v81;
            }
          }

          v72 = v71-- <= 0;
        }

        while (!v72);
        do
        {
          v87 = 0;
          v136 = *v12;
          v88 = (v13 - 2) >> 1;
          v89 = v12;
          do
          {
            while (1)
            {
              v94 = &v89[v87];
              v93 = v94 + 1;
              v95 = (2 * v87) | 1;
              v87 = 2 * v87 + 2;
              if (v87 < v13)
              {
                break;
              }

              v87 = v95;
              *v89 = *v93;
              v89 = v94 + 1;
              if (v95 > v88)
              {
                goto LABEL_157;
              }
            }

            v90 = v94[1].n128_i32[2];
            v91 = v94[2].n128_i32[2];
            v92 = v94 + 2;
            if (v90 >= v91)
            {
              v87 = v95;
            }

            else
            {
              v93 = v92;
            }

            *v89 = *v93;
            v89 = v93;
          }

          while (v87 <= v88);
LABEL_157:
          if (v93 == --a2)
          {
            result = v136;
            *v93 = v136;
          }

          else
          {
            *v93 = *a2;
            result = v136;
            *a2 = v136;
            v96 = (v93 - v12 + 16) >> 4;
            v72 = v96 < 2;
            v97 = v96 - 2;
            if (!v72)
            {
              v98 = v97 >> 1;
              v99 = &v12[v97 >> 1];
              v100 = v93->n128_i32[2];
              if (v99->n128_u32[2] < v100)
              {
                v101 = v93->n128_u64[0];
                v102 = v93->n128_u32[3];
                do
                {
                  v103 = v93;
                  v93 = v99;
                  result = *v99;
                  *v103 = *v99;
                  if (!v98)
                  {
                    break;
                  }

                  v98 = (v98 - 1) >> 1;
                  v99 = &v12[v98];
                }

                while (v99->n128_u32[2] < v100);
                v93->n128_u64[0] = v101;
                v93->n128_u32[2] = v100;
                v93->n128_u32[3] = v102;
              }
            }
          }

          v72 = v13-- <= 2;
        }

        while (!v72);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_i32[2];
    if (v13 < 0x81)
    {
      v17 = v12->n128_i32[2];
      if (v17 < v14->n128_u32[2])
      {
        if (v15 < v17)
        {
          v111 = *v14;
          *v14 = *v9;
          goto LABEL_36;
        }

        v120 = *v14;
        *v14 = *v12;
        result = v120;
        *v12 = v120;
        if (a2[-1].n128_u32[2] < v12->n128_u32[2])
        {
          v111 = *v12;
          *v12 = *v9;
LABEL_36:
          result = v111;
          *v9 = v111;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v15 >= v17)
      {
        goto LABEL_37;
      }

      v114 = *v12;
      *v12 = *v9;
      result = v114;
      *v9 = v114;
      if (v12->n128_u32[2] >= v14->n128_u32[2])
      {
        goto LABEL_37;
      }

      v115 = *v14;
      *v14 = *v12;
      result = v115;
      *v12 = v115;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v21 = v12->n128_i32[2];
      if (v12[-1].n128_u32[2] < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= a2[-1].n128_u32[2])
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          v45 = *(n128_u64 + 8);
          n128_u64 += 16;
        }

        while (v21 >= v45);
      }

      else
      {
        v42 = v12;
        do
        {
          v12 = v42 + 1;
          v43 = v42[1].n128_i32[2];
          ++v42;
        }

        while (v21 >= v43);
      }

      v46 = a2;
      if (v12 < a2)
      {
        v47 = a2;
        do
        {
          v46 = v47 - 1;
          v48 = v47[-1].n128_i32[2];
          --v47;
        }

        while (v21 < v48);
      }

      v49 = a1->n128_u64[0];
      v50 = a1->n128_u32[3];
      while (v12 < v46)
      {
        v132 = *v12;
        *v12 = *v46;
        result = v132;
        *v46 = v132;
        do
        {
          v51 = v12[1].n128_i32[2];
          ++v12;
        }

        while (v21 >= v51);
        do
        {
          v52 = v46[-1].n128_i32[2];
          --v46;
        }

        while (v21 < v52);
      }

      v53 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v53;
        *a1 = *v53;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v49;
      v12[-1].n128_u32[2] = v21;
      v12[-1].n128_u32[3] = v50;
    }

    else
    {
      v16 = v14->n128_i32[2];
      if (v16 >= v12->n128_u32[2])
      {
        if (v15 < v16)
        {
          v112 = *v14;
          *v14 = *v9;
          *v9 = v112;
          if (v14->n128_u32[2] < v12->n128_u32[2])
          {
            v113 = *v12;
            *v12 = *v14;
            *v14 = v113;
          }
        }
      }

      else
      {
        if (v15 >= v16)
        {
          v116 = *v12;
          *v12 = *v14;
          *v14 = v116;
          if (a2[-1].n128_u32[2] >= v14->n128_u32[2])
          {
            goto LABEL_28;
          }

          v110 = *v14;
          *v14 = *v9;
        }

        else
        {
          v110 = *v12;
          *v12 = *v9;
        }

        *v9 = v110;
      }

LABEL_28:
      v18 = v14 - 1;
      v19 = v14[-1].n128_i32[2];
      v20 = a2[-2].n128_i32[2];
      if (v19 >= v12[1].n128_u32[2])
      {
        if (v20 < v19)
        {
          v118 = *v18;
          *v18 = *v10;
          *v10 = v118;
          if (v14[-1].n128_u32[2] < v12[1].n128_u32[2])
          {
            v119 = v12[1];
            v12[1] = *v18;
            *v18 = v119;
          }
        }
      }

      else
      {
        if (v20 >= v19)
        {
          v121 = v12[1];
          v12[1] = *v18;
          *v18 = v121;
          if (a2[-2].n128_u32[2] >= v14[-1].n128_u32[2])
          {
            goto LABEL_42;
          }

          v117 = *v18;
          *v18 = *v10;
        }

        else
        {
          v117 = v12[1];
          v12[1] = *v10;
        }

        *v10 = v117;
      }

LABEL_42:
      v22 = v14[1].n128_i32[2];
      v23 = a2[-3].n128_i32[2];
      if (v22 >= v12[2].n128_u32[2])
      {
        if (v23 < v22)
        {
          v123 = v14[1];
          v14[1] = *v11;
          *v11 = v123;
          if (v14[1].n128_u32[2] < v12[2].n128_u32[2])
          {
            v124 = v12[2];
            v12[2] = v14[1];
            v14[1] = v124;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v125 = v12[2];
          v12[2] = v14[1];
          v14[1] = v125;
          if (a2[-3].n128_u32[2] >= v14[1].n128_u32[2])
          {
            goto LABEL_51;
          }

          v122 = v14[1];
          v14[1] = *v11;
        }

        else
        {
          v122 = v12[2];
          v12[2] = *v11;
        }

        *v11 = v122;
      }

LABEL_51:
      v24 = v14->n128_i32[2];
      v25 = v14[1].n128_i32[2];
      if (v24 >= v14[-1].n128_u32[2])
      {
        if (v25 < v24)
        {
          v127 = *v14;
          *v14 = v14[1];
          v14[1] = v127;
          if (v14->n128_u32[2] < v14[-1].n128_u32[2])
          {
            v128 = *v18;
            *v18 = *v14;
            *v14 = v128;
          }
        }
      }

      else
      {
        if (v25 >= v24)
        {
          v129 = *v18;
          *v18 = *v14;
          *v14 = v129;
          if (v14[1].n128_u32[2] >= v14->n128_u32[2])
          {
            goto LABEL_60;
          }

          v126 = *v14;
          *v14 = v14[1];
        }

        else
        {
          v126 = *v18;
          *v18 = v14[1];
        }

        v14[1] = v126;
      }

LABEL_60:
      v130 = *v12;
      *v12 = *v14;
      result = v130;
      *v14 = v130;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v21 = v12->n128_i32[2];
LABEL_62:
      v26 = 0;
      v27 = v12->n128_u64[0];
      v28 = v12->n128_u32[3];
      do
      {
        v29 = v12[++v26].n128_i32[2];
      }

      while (v29 < v21);
      v30 = &v12[v26];
      v31 = a2;
      if (v26 == 1)
      {
        v34 = a2;
        while (v30 < v34)
        {
          v32 = v34 - 1;
          v35 = v34[-1].n128_i32[2];
          --v34;
          if (v35 < v21)
          {
            goto LABEL_70;
          }
        }

        v32 = v34;
        v12 = v30;
      }

      else
      {
        do
        {
          v32 = v31 - 1;
          v33 = v31[-1].n128_i32[2];
          --v31;
        }

        while (v33 >= v21);
LABEL_70:
        v12 = v30;
        if (v30 < v32)
        {
          v36 = v32;
          do
          {
            v131 = *v12;
            *v12 = *v36;
            result = v131;
            *v36 = v131;
            do
            {
              v37 = v12[1].n128_i32[2];
              ++v12;
            }

            while (v37 < v21);
            do
            {
              v38 = v36[-1].n128_i32[2];
              --v36;
            }

            while (v38 >= v21);
          }

          while (v12 < v36);
        }
      }

      v39 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v39;
        *a1 = *v39;
      }

      v12[-1].n128_u64[0] = v27;
      v12[-1].n128_u32[2] = v21;
      v12[-1].n128_u32[3] = v28;
      if (v30 < v32)
      {
        goto LABEL_81;
      }

      v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *>(v12, a2, v41))
      {
        a2 = v12 - 1;
        if (!v40)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v40)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *,false>(a1, v12 - 1, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v56 = v12[1].n128_i32[2];
      v57 = v12[2].n128_i32[2];
      if (v56 >= v12->n128_u32[2])
      {
        if (v57 < v56)
        {
          v138 = v12[1];
          v12[1] = v12[2];
          result = v138;
          v12[2] = v138;
          if (v12[1].n128_u32[2] < v12->n128_u32[2])
          {
            v139 = *v12;
            *v12 = v12[1];
            result = v139;
            v12[1] = v139;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v135 = *v12;
          *v12 = v12[2];
          goto LABEL_181;
        }

        v141 = *v12;
        *v12 = v12[1];
        result = v141;
        v12[1] = v141;
        if (v12[2].n128_u32[2] < v12[1].n128_u32[2])
        {
          v135 = v12[1];
          v12[1] = v12[2];
LABEL_181:
          result = v135;
          v12[2] = v135;
        }
      }

      if (a2[-1].n128_u32[2] >= v12[2].n128_u32[2])
      {
        return result;
      }

      v142 = v12[2];
      v12[2] = *v9;
      result = v142;
      *v9 = v142;
      if (v12[2].n128_u32[2] >= v12[1].n128_u32[2])
      {
        return result;
      }

      v143 = v12[1];
      v12[1] = v12[2];
      result = v143;
      v12[2] = v143;
LABEL_185:
      if (v12[1].n128_u32[2] < v12->n128_u32[2])
      {
        v144 = *v12;
        *v12 = v12[1];
        result = v144;
        v12[1] = v144;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v54 = v12[1].n128_i32[2];
  v55 = a2[-1].n128_i32[2];
  if (v54 >= v12->n128_u32[2])
  {
    if (v55 >= v54)
    {
      return result;
    }

    v137 = v12[1];
    v12[1] = *v9;
    result = v137;
    *v9 = v137;
    goto LABEL_185;
  }

  if (v55 >= v54)
  {
    v140 = *v12;
    *v12 = v12[1];
    result = v140;
    v12[1] = v140;
    if (a2[-1].n128_u32[2] >= v12[1].n128_u32[2])
    {
      return result;
    }

    v134 = v12[1];
    v12[1] = *v9;
  }

  else
  {
    v134 = *v12;
    *v12 = *v9;
  }

  result = v134;
  *v9 = v134;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i32[2];
  v7 = a3->n128_i32[2];
  if (v6 >= a1->n128_u32[2])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[2] < a1->n128_u32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_u32[2] < a2->n128_u32[2])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[2] < a3->n128_u32[2])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u32[2] < a2->n128_u32[2])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[2] < a1->n128_u32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u32[2] < a4->n128_u32[2])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u32[2] < a3->n128_u32[2])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u32[2] < a2->n128_u32[2])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[2] < a1->n128_u32[2])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a2 - 1;
      v7 = a1[1].n128_i32[2];
      v8 = a2[-1].n128_i32[2];
      if (v7 < a1->n128_u32[2])
      {
        if (v8 >= v7)
        {
          v24 = *a1;
          *a1 = a1[1];
          a1[1] = v24;
          if (a2[-1].n128_u32[2] >= a1[1].n128_u32[2])
          {
            return 1;
          }

          v9 = a1[1];
          a1[1] = *v6;
        }

        else
        {
          v9 = *a1;
          *a1 = *v6;
        }

        *v6 = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v19 = a1[1];
      a1[1] = *v6;
      *v6 = v19;
      if (a1[1].n128_u32[2] >= a1->n128_u32[2])
      {
        return 1;
      }

LABEL_52:
      v38 = *a1;
      *a1 = a1[1];
      a1[1] = v38;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::StampingSimplifier::ProcessClauses(void)::Entry *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

LABEL_14:
      v10 = a1 + 2;
      v11 = a1[1].n128_i32[2];
      v12 = a1->n128_i32[2];
      v13 = a1[2].n128_i32[2];
      if (v11 >= v12)
      {
        if (v13 < v11)
        {
          v20 = a1[1];
          a1[1] = *v10;
          *v10 = v20;
          if (a1[1].n128_u32[2] < v12)
          {
            v21 = *a1;
            *a1 = a1[1];
            a1[1] = v21;
          }
        }
      }

      else
      {
        if (v13 >= v11)
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
          if (v13 >= a1[1].n128_u32[2])
          {
            goto LABEL_35;
          }

          v14 = a1[1];
          a1[1] = *v10;
        }

        else
        {
          v14 = *a1;
          *a1 = *v10;
        }

        *v10 = v14;
      }

LABEL_35:
      v26 = a1 + 3;
      if (&a1[3] == a2)
      {
        return 1;
      }

      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = v26->n128_i32[2];
        if (v29 < v10->n128_u32[2])
        {
          break;
        }

LABEL_38:
        v10 = v26;
        v27 += 16;
        if (++v26 == a2)
        {
          return 1;
        }
      }

      v30 = v26->n128_u64[0];
      v31 = v26->n128_u32[3];
      v32 = v27;
      do
      {
        *(a1 + v32 + 48) = *(a1 + v32 + 32);
        if (v32 == -32)
        {
          a1->n128_u64[0] = v30;
          a1->n128_u32[2] = v29;
          a1->n128_u32[3] = v31;
          if (++v28 != 8)
          {
            goto LABEL_38;
          }

          return &v26[1] == a2;
        }

        v33 = *(&a1[1].n128_i32[2] + v32);
        v32 -= 16;
      }

      while (v29 < v33);
      v34 = a1 + v32;
      *(v34 + 6) = v30;
      v34 += 48;
      *(v34 + 2) = v29;
      *(v34 + 3) = v31;
      if (++v28 != 8)
      {
        goto LABEL_38;
      }

      return &v26[1] == a2;
    }

    v15 = a1[1].n128_i32[2];
    v16 = a1->n128_i32[2];
    v17 = a1[2].n128_i32[2];
    if (v15 >= v16)
    {
      if (v17 < v15)
      {
        v22 = a1[1];
        a1[1] = a1[2];
        a1[2] = v22;
        if (a1[1].n128_u32[2] < v16)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
        }
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = *a1;
        *a1 = a1[2];
LABEL_48:
        a1[2] = v18;
        goto LABEL_49;
      }

      v35 = *a1;
      *a1 = a1[1];
      a1[1] = v35;
      if (v17 < a1[1].n128_u32[2])
      {
        v18 = a1[1];
        a1[1] = a1[2];
        goto LABEL_48;
      }
    }

LABEL_49:
    if (a2[-1].n128_u32[2] >= a1[2].n128_u32[2])
    {
      return 1;
    }

    v36 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v36;
    if (a1[2].n128_u32[2] >= a1[1].n128_u32[2])
    {
      return 1;
    }

    v37 = a1[1];
    a1[1] = a1[2];
    a1[2] = v37;
    if (a1[1].n128_u32[2] >= a1->n128_u32[2])
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].n128_u32[2] >= a1->n128_u32[2])
  {
    return 1;
  }

  v5 = *a1;
  *a1 = a2[-1];
  a2[-1] = v5;
  return 1;
}

void std::deque<operations_research::sat::Literal>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v10);
}

void sub_23CCC8BA4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v5, a2, 303);
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v5, a2, 673);
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v5, a2, 1416);
}

double operations_research::sat::FindBestScalingAndComputeErrors(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, double *a5, double *a6, double a7)
{
  BestScalingOfDoublesToInt64 = operations_research::GetBestScalingOfDoublesToInt64(*a1, (a1[1] - *a1) >> 3, *a2, (a2[1] - *a2) >> 3, *a3, (a3[1] - *a3) >> 3, a4);
  v14 = BestScalingOfDoublesToInt64;
  if (BestScalingOfDoublesToInt64 != 0.0)
  {
    v15 = BestScalingOfDoublesToInt64;
    v16 = 1.0;
    if (BestScalingOfDoublesToInt64 <= 1.0)
    {
      v14 = BestScalingOfDoublesToInt64;
    }

    else
    {
      v14 = 1.0;
    }

    if (v14 <= BestScalingOfDoublesToInt64)
    {
      do
      {
        operations_research::ComputeScalingErrors(*a1, (a1[1] - *a1) >> 3, *a2, v14, (a2[1] - *a2) >> 3, *a3, (a3[1] - *a3) >> 3, a5, a6);
        if (v14 == v15 || *a6 < v14 * a7)
        {
          break;
        }

        v14 = v14 + v14;
      }

      while (v14 <= v15);
    }

    v18 = *a1;
    v19 = a1[1];
    if (*a1 != v19)
    {
      v16 = 1.0;
      v20 = *a1;
      do
      {
        v21 = 0;
        v22 = v16 * *v20;
        v23 = fabs(v22);
        v24 = v23 - floor(v23);
        v25 = 1;
        while (1)
        {
          v26 = v25;
          if (vabdd_f64(v22 * v25, round(v22 * v25)) < v16 * 0.00000001 * v25)
          {
            break;
          }

          v27 = 1.0 / v24;
          v28 = floor(v27);
          if (v28 < 9.22337204e18)
          {
            v29 = (v28 * v25) >> 64 == (v28 * v25) >> 63 ? v28 * v25 : ((v25 ^ v28) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            v30 = (v21 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            v31 = __OFADD__(v21, v29);
            v32 = v21 + v29;
            v25 = v31 ? v30 : v32;
            v24 = v27 - v28;
            v21 = v26;
            if (v25 < 100000000)
            {
              continue;
            }
          }

          v26 = 0;
          break;
        }

        v16 = v16 * v26;
        ++v20;
      }

      while (v20 != v19 && v16 != 0.0);
    }

    if (v16 != 0.0 && v16 < v14)
    {
      v37 = 0.0;
      v38 = 0;
      operations_research::ComputeScalingErrors(v18, (v19 - v18) >> 3, *a2, v16, (a2[1] - *a2) >> 3, *a3, (a3[1] - *a3) >> 3, &v38, &v37);
      v34 = v37;
      if (v37 < v16 * a7 || v14 * v37 <= v16 * *a6)
      {
        *a5 = v38;
        *a6 = v34;
        return v16;
      }
    }
  }

  return v14;
}

BOOL operations_research::sat::ConvertCpModelProtoToMPModelProto(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::MPModelProto *a3)
{
  if (!a2)
  {
    operations_research::sat::ConvertCpModelProtoToMPModelProto(v144);
  }

  operations_research::MPModelProto::Clear(a2);
  v5 = (this + 24);
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      if (*v5)
      {
        v8 = (*v5 + v7 - 1);
      }

      else
      {
        v8 = this + 24;
      }

      if (*(*v8 + 16) != 2)
      {
        if (dword_2810C0C40 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0C38, dword_2810C0C40))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v145, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1159);
          v137 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v145, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v137, "Cannot convert ", 0xFuLL);
          google::protobuf::Message::ShortDebugString(v144);
        }

        return 0;
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::MPVariableProto>);
      *(v9 + 40) = 1;
      v10 = *(v9 + 16);
      if (*v5)
      {
        v11 = (*v5 + v7 - 1);
      }

      else
      {
        v11 = this + 24;
      }

      *(v9 + 48) = **(*v11 + 24);
      if (*v5)
      {
        v12 = (*v5 + v7 - 1);
      }

      else
      {
        v12 = this + 24;
      }

      *(v9 + 56) = *(*(*v12 + 24) + 8);
      *(v9 + 16) = v10 | 0x34;
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v13 = *(this + 4);
  if (v13)
  {
    v15 = *(this + 16);
    v16 = 1.0;
    if (*(v15 + 96) != 0.0)
    {
      v16 = *(v15 + 96);
    }

    v17 = *(v15 + 16);
    v18 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    if (v17 >= 1)
    {
      v19 = 0;
      v20 = (a2 + 24);
      do
      {
        v21 = *(this + 16);
        if (!v21)
        {
          v21 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }

        v22 = *(v21[3] + v19);
        if ((v22 & 0x80000000) != 0)
        {
          return 0;
        }

        v23 = (*v20 + 8 * v22 + 7);
        if ((*v20 & 1) == 0)
        {
          v23 = (a2 + 24);
        }

        v24 = *v23;
        v25 = *(v24 + 32);
        if (v25 != 0.0)
        {
          operations_research::sat::ConvertCpModelProtoToMPModelProto(v144, v25);
        }

        *(v24 + 32) = v16 * v21[6][v19];
        *(v24 + 16) |= 2u;
        ++v19;
      }

      while (v17 != v19);
      v15 = *(this + 16);
    }

    if (v15)
    {
      v18 = v15;
    }

    v14 = v16 * *(v18 + 11);
    *(a2 + 18) = v14;
    v26 = *(a2 + 4);
    *(a2 + 4) = v26 | 8;
    if (v16 >= 0.0)
    {
      goto LABEL_50;
    }

    *(a2 + 152) = 1;
    v27 = v26 | 0x18;
    goto LABEL_49;
  }

  if ((v13 & 8) != 0)
  {
    v29 = *(this + 19);
    v30 = *(v29 + 16);
    v31 = &operations_research::sat::_FloatObjectiveProto_default_instance_;
    if (v30 >= 1)
    {
      v32 = 0;
      v33 = (a2 + 24);
      do
      {
        v34 = *(this + 19);
        if (!v34)
        {
          v34 = &operations_research::sat::_FloatObjectiveProto_default_instance_;
        }

        v35 = *(v34[3] + v32);
        if ((v35 & 0x80000000) != 0)
        {
          return 0;
        }

        v36 = (*v33 + 8 * v35 + 7);
        if ((*v33 & 1) == 0)
        {
          v36 = (a2 + 24);
        }

        v37 = *v36;
        v38 = *(v37 + 32);
        if (v38 != 0.0)
        {
          operations_research::sat::ConvertCpModelProtoToMPModelProto(v144, v38);
        }

        *(v37 + 32) = v34[6][v32];
        *(v37 + 16) |= 2u;
        ++v32;
      }

      while (v30 != v32);
      v29 = *(this + 19);
    }

    if (v29)
    {
      v31 = v29;
    }

    v14 = *(v31 + 7);
    *(a2 + 18) = v14;
    v27 = *(a2 + 4) | 8;
LABEL_49:
    *(a2 + 4) = v27;
    goto LABEL_50;
  }

  v14 = *(a2 + 18);
LABEL_50:
  if (v14 == 0.0)
  {
    *(a2 + 18) = 0;
    *(a2 + 4) &= ~8u;
  }

  v140 = *(this + 14);
  if (v140 < 1)
  {
    return 1;
  }

  v142 = 0;
  v143 = a2;
  v28 = 0;
  v141 = (this + 48);
  while (1)
  {
    if (*v141)
    {
      v40 = *v141 + 8 * v142 + 7;
    }

    else
    {
      v40 = v141;
    }

    v41 = *v40;
    v42 = *(*v40 + 16);
    v43 = *(v41 + 60);
    if (v42)
    {
      if (v43 == 4)
      {
        goto LABEL_102;
      }

      if (v43 != 12)
      {
        if (dword_2810C0C58 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0C50, dword_2810C0C58))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v145, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1210);
          v135 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v145, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v135, "Cannot convert constraint: ", 0x1BuLL);
          google::protobuf::Message::DebugString(v144);
        }

        return v28;
      }

      goto LABEL_62;
    }

    if (v43 <= 11)
    {
      break;
    }

    if (v43 != 12)
    {
      if (v43 == 26)
      {
        v77 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v143 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>);
        v93 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        if (*(v41 + 60) == 26)
        {
          v93 = *(v41 + 48);
        }

        *(v77 + 80) = 0xFFF0000000000000;
        v79 = (1 - appended);
      }

      else
      {
        if (v43 != 29)
        {
          goto LABEL_176;
        }

        v77 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v143 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>);
        v78 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        if (*(v41 + 60) == 29)
        {
          v78 = *(v41 + 48);
        }

        *(v77 + 80) = v79;
      }

      goto LABEL_54;
    }

LABEL_62:
    v44 = *(v41 + 48);
    if (*(v44 + 64) != 2)
    {
      if (dword_2810C0C70 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0C68, dword_2810C0C70))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v145, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1252);
        v134 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v145, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v134, "Cannot convert constraint: ", 0x1BuLL);
        google::protobuf::Message::ShortDebugString(v144);
      }

      return v28;
    }

    v138 = v28;
    v45 = *(v44 + 16);
    if (v45 >= 1)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      while (1)
      {
        v49 = *(*(v44 + 24) + 4 * v46);
        if ((v49 & 0x80000000) != 0)
        {
          return v138;
        }

        v50 = *(*(v44 + 48) + 8 * v46);
        v51 = *v5 + 7 + 8 * v49;
        if ((*v5 & 1) == 0)
        {
          v51 = v5;
        }

        v52 = *(*v51 + 24);
        if (v50 <= 0)
        {
          v53 = v52 + 1;
        }

        else
        {
          v53 = v52;
        }

        if (v50 > 0)
        {
          ++v52;
        }

        v47 += *v52 * v50;
        v48 += *v53 * v50;
        if (v45 == ++v46)
        {
          if (!v42)
          {
            goto LABEL_113;
          }

          goto LABEL_75;
        }
      }
    }

    v48 = 0;
    v47 = 0;
    if (v42)
    {
LABEL_75:
      if (*(*(v44 + 72) + 8) < v47)
      {
        v54 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v143 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>);
        *(v54 + 80) = 0xFFF0000000000000;
        v55 = *(v54 + 16) | 4;
        *(v54 + 16) = v55;
        v56 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v41 + 60) == 12)
        {
          v56 = *(v41 + 48);
        }

        v57 = v56[9][1];
        v58 = *(v41 + 16);
        if (v58)
        {
          v59 = v47 - v57;
          v60 = *(v41 + 24);
          v61 = -v59;
          v139 = v59;
          v62 = v59;
          v63 = 4 * v58;
          do
          {
            while (1)
            {
              v64 = *v60;
              if (*v60 < 0)
              {
                break;
              }

              v66 = *(v54 + 24);
              v65 = *(v54 + 28);
              if (v66 == v65)
              {
                google::protobuf::RepeatedField<int>::Grow(v54 + 24, v65, (v65 + 1));
                v66 = *(v54 + 24);
              }

              v67 = *(v54 + 32);
              *(v54 + 24) = v66 + 1;
              *(v67 + 4 * v66) = v64;
              v69 = *(v54 + 48);
              v68 = *(v54 + 52);
              if (v69 == v68)
              {
                google::protobuf::RepeatedField<long long>::Grow(v54 + 48, v68, (v68 + 1));
                v69 = *(v54 + 48);
              }

              v70 = *(v54 + 56);
              *(v54 + 48) = v69 + 1;
              *(v70 + 8 * v69) = v62;
              v57 += v139;
              ++v60;
              v63 -= 4;
              if (!v63)
              {
                goto LABEL_123;
              }
            }

            v72 = *(v54 + 24);
            v71 = *(v54 + 28);
            if (v72 == v71)
            {
              google::protobuf::RepeatedField<int>::Grow(v54 + 24, v71, (v71 + 1));
              v72 = *(v54 + 24);
            }

            v73 = *(v54 + 32);
            *(v54 + 24) = v72 + 1;
            *(v73 + 4 * v72) = ~v64;
            v75 = *(v54 + 48);
            v74 = *(v54 + 52);
            if (v75 == v74)
            {
              google::protobuf::RepeatedField<long long>::Grow(v54 + 48, v74, (v74 + 1));
              v75 = *(v54 + 48);
            }

            v76 = *(v54 + 56);
            *(v54 + 48) = v75 + 1;
            *(v76 + 8 * v75) = v61;
            ++v60;
            v63 -= 4;
          }

          while (v63);
LABEL_123:
          v55 = *(v54 + 16);
        }

        *(v54 + 88) = v57;
        *(v54 + 16) = v55 | 8;
        operator new();
      }

      if (**(*(v41 + 48) + 72) > v48)
      {
        v96 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v143 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>);
        *(v96 + 88) = 0x7FF0000000000000;
        v97 = *(v96 + 16) | 8;
        *(v96 + 16) = v97;
        v98 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v41 + 60) == 12)
        {
          v98 = *(v41 + 48);
        }

        v99 = *v98[9];
        v100 = *(v41 + 16);
        if (v100)
        {
          v101 = v48 - v99;
          v102 = *(v41 + 24);
          v103 = 4 * v100;
          do
          {
            while (1)
            {
              v104 = *v102;
              if (*v102 < 0)
              {
                break;
              }

              v106 = *(v96 + 24);
              v105 = *(v96 + 28);
              if (v106 == v105)
              {
                google::protobuf::RepeatedField<int>::Grow(v96 + 24, v105, (v105 + 1));
                v106 = *(v96 + 24);
              }

              v107 = *(v96 + 32);
              *(v96 + 24) = v106 + 1;
              *(v107 + 4 * v106) = v104;
              v109 = *(v96 + 48);
              v108 = *(v96 + 52);
              if (v109 == v108)
              {
                google::protobuf::RepeatedField<long long>::Grow(v96 + 48, v108, (v108 + 1));
                v109 = *(v96 + 48);
              }

              v110 = *(v96 + 56);
              *(v96 + 48) = v109 + 1;
              *(v110 + 8 * v109) = v101;
              v99 += v101;
              ++v102;
              v103 -= 4;
              if (!v103)
              {
                goto LABEL_144;
              }
            }

            v112 = *(v96 + 24);
            v111 = *(v96 + 28);
            if (v112 == v111)
            {
              google::protobuf::RepeatedField<int>::Grow(v96 + 24, v111, (v111 + 1));
              v112 = *(v96 + 24);
            }

            v113 = *(v96 + 32);
            *(v96 + 24) = v112 + 1;
            *(v113 + 4 * v112) = ~v104;
            v115 = *(v96 + 48);
            v114 = *(v96 + 52);
            if (v115 == v114)
            {
              google::protobuf::RepeatedField<long long>::Grow(v96 + 48, v114, (v114 + 1));
              v115 = *(v96 + 48);
            }

            v116 = *(v96 + 56);
            *(v96 + 48) = v115 + 1;
            *(v116 + 8 * v115) = -v101;
            ++v102;
            v103 -= 4;
          }

          while (v103);
LABEL_144:
          v97 = *(v96 + 16);
        }

        *(v96 + 80) = v99;
        *(v96 + 16) = v97 | 4;
        operator new();
      }

      goto LABEL_55;
    }

LABEL_113:
    v90 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v143 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>);
    if (*(v41 + 60) == 12)
    {
      v91 = **(*(v41 + 48) + 72);
      if (v48 >= v91)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v91 = *off_2810BEE90;
      if (v48 >= *off_2810BEE90)
      {
LABEL_115:
        v92 = -INFINITY;
        goto LABEL_148;
      }
    }

    v92 = v91;
LABEL_148:
    *(v90 + 80) = v92;
    v117 = *(v90 + 16);
    *(v90 + 16) = v117 | 4;
    if (*(v41 + 60) == 12)
    {
      v118 = *(*(*(v41 + 48) + 72) + 8);
      if (v47 <= v118)
      {
        goto LABEL_150;
      }
    }

    else
    {
      v118 = *(off_2810BEE90 + 1);
      if (v47 <= v118)
      {
LABEL_150:
        *(v90 + 88) = 0x7FF0000000000000;
        *(v90 + 16) = v117 | 0xC;
        if (v45 >= 1)
        {
          goto LABEL_154;
        }

        goto LABEL_55;
      }
    }

    *(v90 + 88) = v118;
    *(v90 + 16) = v117 | 0xC;
    if (v45 >= 1)
    {
LABEL_154:
      v119 = v45;
      v120 = 0;
      do
      {
        v121 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v41 + 60) == 12)
        {
          v121 = *(v41 + 48);
        }

        v122 = *(v121[3] + v120);
        if (v122 < 0)
        {
          return v138;
        }

        v124 = *(v90 + 24);
        v123 = *(v90 + 28);
        if (v124 == v123)
        {
          v131 = v90;
          google::protobuf::RepeatedField<int>::Grow(v90 + 24, v123, (v123 + 1));
          v90 = v131;
          v124 = *(v131 + 24);
        }

        v125 = *(v90 + 32);
        *(v90 + 24) = v124 + 1;
        *(v125 + 4 * v124) = v122;
        v126 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v41 + 60) == 12)
        {
          v126 = *(v41 + 48);
        }

        v127 = v126[6][v120];
        v129 = *(v90 + 48);
        v128 = *(v90 + 52);
        if (v129 == v128)
        {
          v132 = v90;
          google::protobuf::RepeatedField<long long>::Grow(v90 + 48, v128, (v128 + 1));
          v90 = v132;
          v129 = *(v132 + 48);
        }

        v130 = *(v90 + 56);
        *(v90 + 48) = v129 + 1;
        *(v130 + 8 * v129) = v127;
      }

      while (v119 != ++v120);
    }

LABEL_55:
    v28 = ++v142 >= v140;
    if (v142 == v140)
    {
      return v28;
    }
  }

  if (v43 == 3)
  {
    v77 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v143 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>);
    v95 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    if (*(v41 + 60) == 3)
    {
      v95 = *(v41 + 48);
    }

    v79 = INFINITY;
LABEL_54:
    v39 = *(v77 + 16);
    *(v77 + 88) = v79;
    *(v77 + 16) = v39 | 0xC;
    goto LABEL_55;
  }

  if (v43 == 4)
  {
LABEL_102:
    if (v42)
    {
      operator new();
    }

    v80 = 0;
    v81 = *(v41 + 48);
    v82 = *(v81 + 16);
    if (v82)
    {
      v83 = *(v81 + 24);
      v84 = 4 * v82;
      do
      {
        v85 = *v83;
        v86 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v143 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>);
        v87 = v80;
        v88 = v80 >> 2;
        if ((v88 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v88 != -1)
        {
          if (!((v88 + 1) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        MEMORY[0xFFFFFFFFFFFFFFFC] = v85;
        memcpy(0, 0, v87);
        v89 = *(v86 + 16);
        *(v86 + 88) = 0x7FF0000000000000;
        *(v86 + 16) = v89 | 0xC;
        v80 = -4;
        ++v83;
        v84 -= 4;
      }

      while (v84);
    }

    goto LABEL_55;
  }

LABEL_176:
  if (dword_2810C0C88 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0C80, dword_2810C0C88))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v145, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1346);
    v136 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v145, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v136, "Cannot convert constraint: ", 0x1BuLL);
    google::protobuf::Message::DebugString(v144);
  }

  return v28;
}

void sub_23CCC9F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a24);
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v24);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::anonymous namespace::AppendSumOfLiteral(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  result = 0;
  v5 = 4 * a2;
  do
  {
    while (1)
    {
      v7 = *a1;
      v9 = *(a3 + 48);
      v8 = *(a3 + 52);
      if ((*a1 & 0x80000000) != 0)
      {
        break;
      }

      if (v9 == v8)
      {
        v18 = result;
        v19 = a1;
        v20 = a3;
        google::protobuf::RepeatedField<long long>::Grow(a3 + 48, v8, (v8 + 1));
        a1 = v19;
        result = v18;
        a3 = v20;
        v9 = *(v20 + 48);
      }

      *(*(a3 + 56) + 8 * v9) = 0x3FF0000000000000;
      *(a3 + 48) = v9 + 1;
      v10 = *(a3 + 24);
      v11 = v10;
      if (v10 == HIDWORD(v10))
      {
        v12 = result;
        v13 = a1;
        v14 = a3;
        google::protobuf::RepeatedField<int>::Grow(a3 + 24, HIDWORD(v10), (HIDWORD(v10) + 1));
        a1 = v13;
        result = v12;
        a3 = v14;
        v11 = *(v14 + 24);
      }

      v6 = *(a3 + 32);
      *(a3 + 24) = v11 + 1;
      *(v6 + 4 * v11) = v7;
      ++a1;
      v5 -= 4;
      if (!v5)
      {
        return result;
      }
    }

    if (v9 == v8)
    {
      v21 = result;
      v22 = a1;
      v23 = a3;
      google::protobuf::RepeatedField<long long>::Grow(a3 + 48, v8, (v8 + 1));
      a1 = v22;
      LODWORD(result) = v21;
      a3 = v23;
      v9 = *(v23 + 48);
    }

    *(*(a3 + 56) + 8 * v9) = 0xBFF0000000000000;
    *(a3 + 48) = v9 + 1;
    v15 = *(a3 + 24);
    v16 = v15;
    if (v15 == HIDWORD(v15))
    {
      v24 = result;
      v25 = a1;
      v26 = a3;
      google::protobuf::RepeatedField<int>::Grow(a3 + 24, HIDWORD(v15), (HIDWORD(v15) + 1));
      a1 = v25;
      LODWORD(result) = v24;
      a3 = v26;
      v16 = *(v26 + 24);
    }

    v17 = *(a3 + 32);
    *(a3 + 24) = v16 + 1;
    *(v17 + 4 * v16) = ~v7;
    result = (result + 1);
    ++a1;
    v5 -= 4;
  }

  while (v5);
  return result;
}

BOOL operations_research::sat::ScaleAndSetObjective(uint64_t a1, int **a2, char *a3, uint64_t a4, _BYTE *a5, double a6)
{
  v7 = a3;
  v63 = *MEMORY[0x277D85DE8];
  v10 = *(a4 + 128);
  if (v10)
  {
    operations_research::sat::CpObjectiveProto::Clear(v10);
  }

  *(a4 + 16) &= ~1u;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v11 = *a2;
  v38 = a2[1];
  if (*a2 == v38)
  {
    v46 = 0;
    v43 = 0;
    v40 = 0;
  }

  else
  {
    v37 = (a4 + 24);
    do
    {
      if (*v37)
      {
        v12 = (*v37 + 8 * *v11 + 7);
      }

      else
      {
        v12 = (a4 + 24);
      }

      v13 = *v12;
      v14 = *(v13 + 24);
      v15 = *v14;
      v16 = v14[*(v13 + 16) - 1];
      if (*v14 != v16)
      {
        operator new();
      }

      if (v15)
      {
        a6 = a6 + v15 * *(v11 + 1);
      }

      v11 += 4;
    }

    while (v11 != v38);
    v47 = 0;
    v48 = 0;
    v44 = 0;
    v45 = 0;
    v41 = 0;
    v42 = 0;
    v46 = 0;
    v43 = 0;
    v40 = 0;
  }

  if (a6 == 0.0)
  {
    v17 = 1;
    goto LABEL_18;
  }

  v19 = 1 << *(a1 + 628);
  if (*(a1 + 640) >= *(a1 + 728))
  {
    v20 = *(a1 + 640);
  }

  else
  {
    v20 = *(a1 + 728);
  }

  v49 = 0.0;
  *&v39 = 0.0;
  BestScalingAndComputeErrors = operations_research::sat::FindBestScalingAndComputeErrors(&v46, &v43, &v40, v19, &v49, &v39, v20);
  v22 = BestScalingAndComputeErrors;
  v17 = BestScalingAndComputeErrors != 0.0;
  if (BestScalingAndComputeErrors == 0.0)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v54, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1409);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v54, "Scaling factor of zero while scaling objective! This likely indicate an infinite coefficient in the objective.", 0x6EuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v54);
    v34 = v40;
    if (!v40)
    {
      goto LABEL_18;
    }

LABEL_17:
    v41 = v34;
    operator delete(v34);
    goto LABEL_18;
  }

  v24 = operations_research::ComputeGcdOfRoundedDoubles(0, 0, BestScalingAndComputeErrors);
  if (*a5 == 1)
  {
    v54 = "[Scaling] Objective coefficient relative error: ";
    v55 = 48;
    v25 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v53, v49, v23);
    *&v52 = v53;
    *(&v52 + 1) = v25;
    absl::lts_20240722::StrCat(&v54, &v52, v51);
    operations_research::SolverLogger::LogInfo(a5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1418, v51);
    if (SHIBYTE(v51[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51[0].__r_.__value_.__l.__data_);
      if ((*a5 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((*a5 & 1) == 0)
    {
      goto LABEL_38;
    }

    v54 = "[Scaling] Objective worst-case absolute error: ";
    v55 = 47;
    v26 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v53, *&v39 / v22, v23);
    *&v52 = v53;
    *(&v52 + 1) = v26;
    absl::lts_20240722::StrCat(&v54, &v52, v51);
    operations_research::SolverLogger::LogInfo(a5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1420, v51);
    if (SHIBYTE(v51[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51[0].__r_.__value_.__l.__data_);
      if ((*a5 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((*a5 & 1) == 0)
    {
      goto LABEL_38;
    }

    v54 = "[Scaling] Objective scaling factor: ";
    v55 = 36;
    v27 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v53, v22 / v24, v23);
    *&v52 = v53;
    *(&v52 + 1) = v27;
    absl::lts_20240722::StrCat(&v54, &v52, v51);
    operations_research::SolverLogger::LogInfo(a5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1422, v51);
    if (SHIBYTE(v51[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51[0].__r_.__value_.__l.__data_);
    }
  }

LABEL_38:
  if (*&v39 / v22 > v20 && *a5 == 1)
  {
    v28 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v53, v20, v23);
    *&v52 = v53;
    *(&v52 + 1) = v28;
    v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 628), &v51[0].__r_.__value_.__s.__data_[16], v29);
    v51[0].__r_.__value_.__r.__words[0] = &v51[0].__r_.__value_.__r.__words[2];
    v51[0].__r_.__value_.__l.__size_ = v30 - &v51[0].__r_.__value_.__r.__words[2];
    v54 = "[Scaling] Warning: the worst-case absolute error is greater than the wanted precision (";
    v55 = 87;
    v56 = v52;
    v57 = "). Try to increase mip_max_activity_exponent (default = ";
    v58 = 56;
    v59 = &v51[0].__r_.__value_.__s.__data_[16];
    v60 = v30 - &v51[0].__r_.__value_.__r.__words[2];
    v61 = ") or reduced your variables range and/or objective coefficient. We will continue the solve, but the final objective value might be off.";
    v62 = 135;
    absl::lts_20240722::strings_internal::CatPieces(&v54, 5, v50);
    operations_research::SolverLogger::LogInfo(a5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lp_utils.cc", 1433, v50);
    if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50[0].__r_.__value_.__l.__data_);
    }
  }

  *(a4 + 16) |= 1u;
  v31 = *(a4 + 128);
  if (!v31)
  {
    v32 = *(a4 + 8);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v32);
    *(a4 + 128) = v31;
  }

  if (v7)
  {
    v33 = -1;
  }

  else
  {
    v33 = 1;
  }

  *(v31 + 88) = a6 * v22 / v24 * v33;
  *(v31 + 96) = 1.0 / v22 * v24 * v33;
  if (*&v39 == 0.0)
  {
    *(v31 + 128) = 1;
  }

  v34 = v40;
  if (v40)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v43)
  {
    operator delete(v43);
  }

  if (v46)
  {
    operator delete(v46);
  }

  return v17;
}