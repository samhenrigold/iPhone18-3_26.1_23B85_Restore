void sub_23CA825E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, int a14, __int16 a15, char a16, char a17, char a18, void *__p, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (*(v39 - 161) < 0)
  {
    operator delete(*(v39 - 184));
    if (a18)
    {
LABEL_7:
      operator delete(__p);
      if ((a22 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (a18)
  {
    goto LABEL_7;
  }

  if ((a22 & 1) == 0)
  {
LABEL_9:
    if (*(v39 - 160))
    {
      operator delete(*(v39 - 152));
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear((v39 - 136));
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a23);
  goto LABEL_9;
}

unsigned int *google::protobuf::RepeatedField<int>::operator=(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    *result = 0;
    v2 = *a2;
    if (v2)
    {
      if (result[1] < v2)
      {
        v17 = a2;
        v18 = result;
        google::protobuf::RepeatedField<int>::Grow(result, 0, v2);
        a2 = v17;
        result = v18;
        v3 = *v18;
        v4 = *(v18 + 1);
        *v18 = v3 + v2;
        if (v2 < 1)
        {
          return result;
        }
      }

      else
      {
        v3 = 0;
        v4 = *(result + 1);
        *result = v2;
        if (v2 < 1)
        {
          return result;
        }
      }

      v5 = *(a2 + 1);
      v6 = (v4 + 4 * v3);
      if (v2 < 8)
      {
        goto LABEL_10;
      }

      v7 = 4 * v3 + v4;
      if ((v7 - v5) < 0x20)
      {
        goto LABEL_10;
      }

      v8 = v2;
      v9 = v2 & 0x7FFFFFF8;
      LODWORD(v2) = v2 - (v2 & 0x7FFFFFF8);
      v6 += v9;
      v10 = &v5[v9];
      v11 = (v5 + 4);
      v12 = (v7 + 16);
      v13 = v9;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 8;
      }

      while (v13);
      v5 = v10;
      if (v9 != v8)
      {
LABEL_10:
        v15 = v2 + 1;
        do
        {
          v16 = *v5++;
          *v6++ = v16;
          --v15;
        }

        while (v15 > 1);
      }
    }
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>>::count<int>(unsigned __int8 **a1, int *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[10];
  if (!(*a1)[10])
  {
    goto LABEL_6;
  }

LABEL_2:
  v5 = 0;
  do
  {
    if (*&v3[4 * v5 + 12] >= v2)
    {
      goto LABEL_7;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_7:
  while (!v3[11])
  {
    v3 = *&v3[8 * v5 + 256];
    v4 = v3[10];
    if (v3[10])
    {
      goto LABEL_2;
    }

LABEL_6:
    LODWORD(v5) = 0;
  }

  while (1)
  {
    v6 = v3[10];
    if (v5 != v6)
    {
      break;
    }

    LODWORD(v5) = v3[8];
    v3 = *v3;
    if (v3[11])
    {
      v7 = a1[1];
      v12 = v7[10];
      v8 = v12;
      v10 = v12;
      v11 = v7;
      goto LABEL_32;
    }
  }

  v7 = a1[1];
  v8 = v7[10];
  v9 = v3 == v7 && v5 == v8;
  v10 = v7[10];
  v11 = a1[1];
  if (!v9)
  {
    if (v2 >= *&v3[4 * v5 + 12])
    {
      if (v3[11])
      {
        v8 = v5 + 1;
        if (v5 + 1 == v6)
        {
          v13 = v3;
          while (1)
          {
            v7 = *v13;
            if (*(*v13 + 11))
            {
              break;
            }

            v14 = v13[8];
            v13 = *v13;
            if (v14 != v7[10])
            {
              v8 = v14;
              goto LABEL_31;
            }
          }
        }

        v7 = v3;
      }

      else
      {
        v15 = &v3[8 * (v5 + 1) + 256];
        do
        {
          v7 = *v15;
          v16 = *(*v15 + 11);
          v15 = *v15 + 256;
        }

        while (!v16);
        v8 = 0;
      }
    }

    else
    {
      v8 = v5;
      v7 = v3;
    }

LABEL_31:
    v10 = v5;
    v11 = v3;
  }

LABEL_32:
  v18 = v7;
  v19 = v8;
  return absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>> const,int const&,int const*>::operator-(&v18, v11, v10);
}

uint64_t operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(operations_research::sat::PresolveContext **this, int a2, operations_research::sat::ConstraintProto *a3)
{
  v4 = *(a3 + 15);
  if (v4 == 12)
  {
    v5 = *(*(a3 + 6) + 16);
    if (v5 > 0)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if (v6 != a2)
        {
          v8 = *(*(*(a3 + 6) + 48) + 8 * v6);
          if (v8)
          {
            if (v8 < 0)
            {
              v8 = -v8;
            }

            v9 = v7;
            do
            {
              v7 = v8;
              v8 = v9 % v8;
              v9 = v7;
            }

            while (v8);
          }

          if (v7 == 1)
          {
            return 0;
          }
        }

        if (++v6 == v5)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_34;
  }

  if (off_2810BEE58 < 1)
  {
LABEL_34:
    v7 = 0;
    goto LABEL_35;
  }

  v10 = 0;
  v7 = 0;
  do
  {
    if (v10 != a2)
    {
      v11 = *(off_2810BEE78 + v10);
      if (v11)
      {
        if (v11 < 0)
        {
          v11 = -v11;
        }

        v12 = v7;
        do
        {
          v7 = v11;
          v11 = v12 % v11;
          v12 = v7;
        }

        while (v11);
      }

      if (v7 == 1)
      {
        return 0;
      }
    }

    ++v10;
  }

  while (v10 != off_2810BEE58);
LABEL_24:
  if (v7 < 2)
  {
LABEL_35:
    operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(v7, &v21);
  }

  if (v4 == 12)
  {
    v13 = *(a3 + 6);
    v14 = v13[3] + a2;
    v15 = v13[6][a2];
    if (!(v15 % v7))
    {
      return 0;
    }
  }

  else
  {
    v13 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v14 = (off_2810BEE60 + 4 * a2);
    v15 = *(off_2810BEE78 + a2);
    if (!(v15 % v7))
    {
      return 0;
    }
  }

  if (!operations_research::sat::PresolveContext::CanonicalizeAffineVariable(this[1], *v14, v15, v7, *v13[9]))
  {
    return 0;
  }

  return operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, a3, v17, v18, v19);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinearEqualityWithModulo(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(*(this + 1) + 416))
  {
    return 0;
  }

  if (*(a2 + 15) != 12)
  {
    return 0;
  }

  v2 = *(a2 + 6);
  if (*(v2 + 64) != 2)
  {
    return 0;
  }

  if (**(v2 + 72) != *(*(v2 + 72) + 8))
  {
    return 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  v38 = *(v2 + 16);
  if (v38 < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v39 = 0;
  v40 = 0;
  v8 = 0;
  v9 = 0;
  v37 = a2;
  do
  {
    v10 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    if (*(a2 + 15) == 12)
    {
      v10 = *(a2 + 6);
    }

    v11 = v10[6][v4];
    if (v11 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = -v11;
    }

    v13 = v6 == 0;
    if (v12 < v5)
    {
      v13 = 1;
    }

    if (v12 == v5)
    {
      v14 = v6 + 1;
    }

    else
    {
      v14 = v6;
    }

    if (v13)
    {
      v7 = v4;
      v6 = 1;
    }

    else
    {
      v6 = v14;
    }

    if (v13)
    {
      v5 = v12;
    }

    if (v12)
    {
      v15 = v39;
      v16 = v39 >> 2;
      if (((v39 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v36 = v5;
      if (v39 >> 2 != -1)
      {
        if (!(((v39 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v16) = v4;
      v39 = 4 * v16 + 4;
      memcpy(0, 0, v15);
      v5 = v36;
      a2 = v37;
    }

    if (0xAAAAAAAAAAAAAAABLL * v12 + 0x2AAAAAAAAAAAAAAALL >= 0x5555555555555555)
    {
      v41 = v8;
      v17 = v9;
      v18 = v9 >> 2;
      if (((v9 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v9 >> 2 != -1)
      {
        if (!(((v9 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v19 = v5;
      v20 = a2;
      *(4 * v18) = v4;
      v21 = 4 * v18 + 4;
      memcpy(0, 0, v17);
      v8 = v41;
      a2 = v20;
      v5 = v19;
      v9 = v21;
    }

    if (0xCCCCCCCCCCCCCCCDLL * v12 + 0x1999999999999999 >= 0x3333333333333333)
    {
      v22 = v40 - v8;
      v23 = (v40 - v8) >> 2;
      v24 = v23 + 1;
      v42 = v8;
      if ((v23 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v8 >> 1 > v24)
      {
        v24 = -v8 >> 1;
      }

      if (-v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v25 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (v25)
      {
        if (!(v25 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v26 = v5;
      *(4 * v23) = v4;
      v40 = 4 * v23 + 4;
      memcpy(0, v42, v22);
      v8 = 0;
      a2 = v37;
      v5 = v26;
    }

    ++v4;
  }

  while (v38 != v4);
  if (v39 >> 2 == 1)
  {
    goto LABEL_64;
  }

  if (v39 >> 2 == 2)
  {
    if (v39)
    {
      v27 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        v27 = *(a2 + 6);
      }

      if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(this + 1), *(v27[3] + MEMORY[0])))
      {
        operator new();
      }

      v33 = v39;
    }

    else
    {
      if (*(a2 + 15) == 12)
      {
        v28 = *(a2 + 6);
      }

      else
      {
        v28 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      v29 = *v28[9];
      v30 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "linear: only two odd Booleans in equality");
      operations_research::sat::PresolveContext::UpdateRuleStats(v30, __p, 1, v31, v32);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), MEMORY[0], MEMORY[4] ^ -(v29 & 1));
      v33 = v39;
      operator delete(0);
    }

    a2 = v37;
    if (v33 == 4)
    {
      goto LABEL_64;
    }
  }

  if (v9 == 4)
  {
LABEL_64:
    v7 = MEMORY[0];
    return operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(this, v7, a2);
  }

  if (v40 - v8 == 4)
  {
    v34 = operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(this, *v8, a2);
    operator delete(v8);
    return v34;
  }

  else
  {
    if (v6 == 1)
    {
      return operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(this, v7, a2);
    }

    return 0;
  }
}

void sub_23CA833F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *__p, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v28);
  if (v27)
  {
    operator delete(v27);
    if (!a13)
    {
LABEL_3:
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a13)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if (!v29)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinearOfSizeOne(operations_research::sat::PresolveContext **this, operations_research::sat::ConstraintProto *a2)
{
  if (*(a2 + 15) == 12)
  {
    v5 = *(a2 + 6);
  }

  else
  {
    v5 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  v6 = *(v5 + 4);
  if (v6 != 1)
  {
    operations_research::sat::CpModelPresolver::PresolveLinearOfSizeOne(v6, v62);
  }

  v7 = *v5[3];
  if ((v7 & 0x80000000) != 0)
  {
    operations_research::sat::CpModelPresolver::PresolveLinearOfSizeOne(v62);
  }

  operations_research::sat::PresolveContext::DomainOf(v62, this[1], v7);
  if (*(a2 + 15) == 12)
  {
    v9 = *(a2 + 6);
  }

  else
  {
    v9 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v9[9], *(v9 + 16), v56, v8);
  if (*(a2 + 15) == 12)
  {
    v10 = *(a2 + 6);
  }

  else
  {
    v10 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::InverseMultiplicationBy(__p, v56, *v10[6]);
  operations_research::Domain::IntersectionWith(&v60, __p, v62);
  if (__p[0])
  {
    operator delete(*&__p[8]);
  }

  if (v56[0])
  {
    operator delete(v56[1]);
  }

  if (!operations_research::Domain::IsEmpty(&v60))
  {
    operations_research::sat::PresolveContext::DomainOf(__p, this[1], v7);
    v19 = v61;
    if ((v60 & 1) == 0)
    {
      v19 = &v61;
    }

    v20 = &__p[8];
    if (__p[0])
    {
      v20 = *&__p[8];
    }

    if ((((*__p >> 1) ^ (v60 >> 1)) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      v23 = &v19[2 * (v60 >> 1)];
      v24 = &v20[16 * (*__p >> 1)];
      if ((v60 & 0x1FFFFFFFFFFFFFFELL) == 0 || (*__p & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
LABEL_47:
        v21 = v20 == v24 && v19 == v23;
        if ((__p[0] & 1) == 0)
        {
LABEL_29:
          if (v21)
          {
            v22 = this[1];
            v59 = 20;
            strcpy(__p, "linear1: always true");
            operations_research::sat::PresolveContext::UpdateRuleStats(v22, __p, 1, v17, v18);
            if (v59 < 0)
            {
              operator delete(*__p);
            }

            operations_research::sat::ConstraintProto::Clear(a2);
            goto LABEL_33;
          }

          if (*(a2 + 15) == 12)
          {
            if (**(*(a2 + 6) + 48) == 1)
            {
LABEL_68:
              if (!*(a2 + 4))
              {
                operator new();
              }

              if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(this[1], v7))
              {
                if (operations_research::Domain::Min(&v60) == 1)
                {
                  if (*(a2 + 15) == 4)
                  {
                    v32 = *(a2 + 6);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(a2);
                    *(a2 + 15) = 4;
                    v40 = *(a2 + 1);
                    if (v40)
                    {
                      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v32 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v40);
                    *(a2 + 6) = v32;
                  }

                  v42 = *(v32 + 4);
                  v41 = *(v32 + 5);
                  if (v42 == v41)
                  {
                    google::protobuf::RepeatedField<int>::Grow((v32 + 2), v41, (v41 + 1));
                    v42 = *(v32 + 4);
                  }

                  v43 = v32[3];
                  *(v32 + 4) = v42 + 1;
                  *(v43 + 4 * v42) = v7;
                  v2 = 1;
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_115;
                  }
                }

                else
                {
                  v38 = operations_research::Domain::Min(&v60);
                  if (v38)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v38, 0, "rhs.FixedValue() == 0");
                  }

                  if (*(a2 + 15) == 4)
                  {
                    v39 = *(a2 + 6);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(a2);
                    *(a2 + 15) = 4;
                    v50 = *(a2 + 1);
                    if (v50)
                    {
                      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v39 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v50);
                    *(a2 + 6) = v39;
                  }

                  v52 = *(v39 + 4);
                  v51 = *(v39 + 5);
                  if (v52 == v51)
                  {
                    google::protobuf::RepeatedField<int>::Grow((v39 + 2), v51, (v51 + 1));
                    v52 = *(v39 + 4);
                  }

                  v53 = v39[3];
                  *(v39 + 4) = v52 + 1;
                  *(v53 + 4 * v52) = ~v7;
                  v2 = 1;
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_115;
                  }
                }

LABEL_20:
                operator delete(v61);
                if ((v62[0] & 1) == 0)
                {
                  return v2 & 1;
                }

                goto LABEL_116;
              }

              if (*(a2 + 4) != 1)
              {
                goto LABEL_119;
              }

              v33 = **(a2 + 3);
              if (operations_research::Domain::IsFixed(&v60))
              {
                v34 = operations_research::Domain::Min(&v60);
                LODWORD(v56[0]) = 0;
                if (operations_research::sat::PresolveContext::HasVarValueEncoding(this[1], v7, v34, v56))
                {
                  if (v33 != LODWORD(v56[0]))
                  {
                    operations_research::sat::PresolveContext::AddImplication(this[1], v33, v56[0]);
                    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
                    operations_research::sat::ConstraintProto::Clear(a2);
                    v35 = this[1];
                    std::string::basic_string[abi:ne200100]<0>(__p, "linear1: transformed to implication");
                    operations_research::sat::PresolveContext::UpdateRuleStats(v35, __p, 1, v36, v37);
                    if (v59 < 0)
                    {
                      operator delete(*__p);
                    }

LABEL_33:
                    v2 = 1;
                    if (v60)
                    {
                      goto LABEL_20;
                    }

                    goto LABEL_115;
                  }
                }

                else
                {
                  if (operations_research::sat::PresolveContext::StoreLiteralImpliesVarEqValue(this[1], v33, v7, v34))
                  {
                    operations_research::SparseBitset<int>::Set(this[1] + 136, v7);
                  }

                  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
                }

LABEL_119:
                v2 = 0;
                if (v60)
                {
                  goto LABEL_20;
                }

                goto LABEL_115;
              }

              operations_research::Domain::Complement(v56, &v60);
              operations_research::Domain::IntersectionWith(__p, v56, v62);
              if (v56[0])
              {
                operator delete(v56[1]);
              }

              IsFixed = operations_research::Domain::IsFixed(__p);
              v45 = IsFixed;
              if (IsFixed)
              {
                v46 = operations_research::Domain::Min(__p);
                v55 = 0;
                if (operations_research::sat::PresolveContext::HasVarValueEncoding(this[1], v7, v46, &v55))
                {
                  if ((v55 ^ v33) != 0xFFFFFFFF)
                  {
                    operations_research::sat::PresolveContext::AddImplication(this[1], v33, ~v55);
                    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
                    operations_research::sat::ConstraintProto::Clear(a2);
                    v47 = this[1];
                    std::string::basic_string[abi:ne200100]<0>(v56, "linear1: transformed to implication");
                    operations_research::sat::PresolveContext::UpdateRuleStats(v47, v56, 1, v48, v49);
                    if (v57 < 0)
                    {
                      operator delete(v56[0]);
                    }

                    v2 = 1;
                    goto LABEL_112;
                  }
                }

                else
                {
                  if (operations_research::sat::PresolveContext::StoreLiteralImpliesVarNEqValue(this[1], v33, v7, v46))
                  {
                    operations_research::SparseBitset<int>::Set(this[1] + 136, v7);
                  }

                  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
                }

                v2 = 0;
              }

LABEL_112:
              if (__p[0])
              {
                operator delete(*&__p[8]);
                if (!v45)
                {
                  goto LABEL_119;
                }
              }

              else if (!v45)
              {
                goto LABEL_119;
              }

              if (v60)
              {
                goto LABEL_20;
              }

              goto LABEL_115;
            }
          }

          else if (*off_2810BEE78 == 1)
          {
            goto LABEL_68;
          }

          v27 = this[1];
          strcpy(__p, "linear1: canonicalized");
          v59 = 22;
          operations_research::sat::PresolveContext::UpdateRuleStats(v27, __p, 1, v17, v18);
          if (v59 < 0)
          {
            operator delete(*__p);
            if (*(a2 + 15) == 12)
            {
LABEL_58:
              **(*(a2 + 6) + 48) = 1;
              if (*(a2 + 15) == 12)
              {
LABEL_59:
                v28 = *(a2 + 6);
LABEL_67:
                operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v60, v28);
                goto LABEL_68;
              }

LABEL_64:
              operations_research::sat::ConstraintProto::clear_constraint(a2);
              *(a2 + 15) = 12;
              v31 = *(a2 + 1);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v31);
              *(a2 + 6) = v28;
              goto LABEL_67;
            }
          }

          else if (*(a2 + 15) == 12)
          {
            goto LABEL_58;
          }

          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 12;
          v29 = *(a2 + 1);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v29);
          *(a2 + 6) = v30;
          *v30[6] = 1;
          if (*(a2 + 15) == 12)
          {
            goto LABEL_59;
          }

          goto LABEL_64;
        }

LABEL_28:
        operator delete(*&__p[8]);
        goto LABEL_29;
      }

      while (*v19 == *v20 && v19[1] == *(v20 + 1))
      {
        v19 += 2;
        v20 += 16;
        if (v19 == v23 || v20 == v24)
        {
          goto LABEL_47;
        }
      }
    }

    v21 = 0;
    if ((__p[0] & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v13 = this[1];
  v59 = 19;
  strcpy(__p, "linear1: infeasible");
  operations_research::sat::PresolveContext::UpdateRuleStats(v13, __p, 1, v11, v12);
  if (v59 < 0)
  {
    operator delete(*__p);
  }

  v2 = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v14, v15, v16);
  if (v60)
  {
    goto LABEL_20;
  }

LABEL_115:
  if (v62[0])
  {
LABEL_116:
    operator delete(v62[1]);
  }

  return v2 & 1;
}

void sub_23CA83CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, int a12, __int16 a13, char a14, char a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, void *a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a17);
  }

  if (a23)
  {
    operator delete(a24);
  }

  if (*(v24 - 72))
  {
    operator delete(*(v24 - 64));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::SparseBitset<int>::Set(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  v4 = *(v3 + 8 * v2);
  if ((v4 & (1 << a2)) == 0)
  {
    *(v3 + 8 * v2) = v4 | (1 << a2);
    std::vector<int>::push_back[abi:ne200100](a1 + 32, &v5);
  }
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinearOfSizeTwo(operations_research::sat::PresolveContext **this, void (****a2)(operations_research::sat::LinearConstraintProto *__hidden this), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a2;
  if (*(a2 + 15) == 12)
  {
    v8 = a2[6];
  }

  else
  {
    v8 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  v9 = v8[3];
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = v8[6];
  v14 = *v12;
  v13 = v12[1];
  if (*(v8 + 16) != 2 || (v15 = v8[9], v16 = *v15, *v15 != v15[1]))
  {
    if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(this[1], v11))
    {
      v20 = v13;
      v13 = v14;
      v21 = v10;
      LODWORD(v10) = v11;
    }

    else
    {
      v20 = v14;
      v21 = v11;
      if (!operations_research::sat::PresolveContext::CanBeUsedAsLiteral(this[1], v10))
      {
        goto LABEL_84;
      }
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_84;
    }

    if (*(v6 + 15) == 12)
    {
      v22 = v6[6];
    }

    else
    {
      v22 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    operations_research::Domain::FromFlatSpanOfIntervals(v22[9], *(v22 + 16), &v84, v19);
    operations_research::Domain::Domain(__p, -v13);
    operations_research::Domain::AdditionWith(&v80, &v84, __p, v23);
    operations_research::Domain::InverseMultiplicationBy(&v82, &v80, v20);
    if (v80)
    {
      operator delete(v81);
    }

    if (__p[0])
    {
      operator delete(*&__p[8]);
    }

    operations_research::Domain::InverseMultiplicationBy(&v80, &v84, v20);
    operations_research::sat::PresolveContext::DomainOf(&v76, this[1], v21);
    operations_research::Domain::IntersectionWith(__p, &v76, &v82);
    IsEmpty = operations_research::Domain::IsEmpty(__p);
    if (__p[0])
    {
      operator delete(*&__p[8]);
    }

    if (v76)
    {
      operator delete(v77);
    }

    operations_research::sat::PresolveContext::DomainOf(&v76, this[1], v21);
    operations_research::Domain::IntersectionWith(__p, &v76, &v80);
    v27 = operations_research::Domain::IsEmpty(__p);
    if (__p[0])
    {
      operator delete(*&__p[8]);
      if ((v76 & 1) == 0)
      {
LABEL_36:
        if (v27 && IsEmpty)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }
    }

    else if ((v76 & 1) == 0)
    {
      goto LABEL_36;
    }

    operator delete(v77);
    if (v27 && IsEmpty)
    {
LABEL_37:
      v28 = this[1];
      v79 = 20;
      strcpy(__p, "linear2: infeasible.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v28, __p, 1, v25, v26);
      if (v79 < 0)
      {
        operator delete(*__p);
      }

      LOBYTE(v6) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v6, v29, v30, v31);
      if ((v80 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_57;
    }

LABEL_43:
    if (v27)
    {
      operator new();
    }

    if (IsEmpty)
    {
      operator new();
    }

    if (*(v6 + 4) || operations_research::sat::PresolveContext::CanBeUsedAsLiteral(this[1], v21))
    {
      operator new();
    }

    v54 = this[1];
    std::string::basic_string[abi:ne200100]<0>(__p, "linear2: contains a Boolean.");
    operations_research::sat::PresolveContext::UpdateRuleStats(v54, __p, 1, v55, v56);
    if (v79 < 0)
    {
      operator delete(*__p);
    }

    operations_research::sat::PresolveContext::DomainOf(__p, this[1], v21);
    if ((operations_research::Domain::IsIncludedIn(__p, &v82) & 1) == 0)
    {
      v57 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      operations_research::sat::BoolArgumentProto::add_literals(v57, v10);
      v58 = operations_research::sat::ConstraintProto::mutable_linear(v57);
      operations_research::sat::BoolArgumentProto::add_literals(v58, v21);
      v59 = operations_research::sat::ConstraintProto::mutable_linear(v57);
      operations_research::sat::LinearConstraintProto::add_coeffs(v59, 1);
      operations_research::Domain::IntersectionWith(&v76, &v82, __p);
      v60 = operations_research::sat::ConstraintProto::mutable_linear(v57);
      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v76, v60);
      if (v76)
      {
        operator delete(v77);
      }
    }

    if ((operations_research::Domain::IsIncludedIn(__p, &v80) & 1) == 0)
    {
      v61 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      operations_research::sat::BoolArgumentProto::add_literals(v61, ~v10);
      v62 = operations_research::sat::ConstraintProto::mutable_linear(v61);
      operations_research::sat::BoolArgumentProto::add_literals(v62, v21);
      v63 = operations_research::sat::ConstraintProto::mutable_linear(v61);
      operations_research::sat::LinearConstraintProto::add_coeffs(v63, 1);
      operations_research::Domain::IntersectionWith(&v76, &v80, __p);
      v64 = operations_research::sat::ConstraintProto::mutable_linear(v61);
      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v76, v64);
      if (v76)
      {
        operator delete(v77);
      }
    }

    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
    operations_research::sat::ConstraintProto::Clear(v6);
    if (__p[0])
    {
      operator delete(*&__p[8]);
    }

    LOBYTE(v6) = 1;
    if ((v80 & 1) == 0)
    {
LABEL_77:
      if ((v82 & 1) == 0)
      {
LABEL_78:
        if ((v84 & 1) == 0)
        {
          return v6 & 1;
        }

        goto LABEL_79;
      }

LABEL_58:
      operator delete(*(&v82 + 1));
      if ((v84 & 1) == 0)
      {
        return v6 & 1;
      }

LABEL_79:
      operator delete(*(&v84 + 1));
      return v6 & 1;
    }

LABEL_57:
    operator delete(v81);
    if ((v82 & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_58;
  }

  if (!*(a2 + 4))
  {
    if (v14 == 1)
    {
      if (operations_research::sat::PresolveContext::StoreAffineRelation(this[1], v11, v10, -v13, v16, 0))
      {
        goto LABEL_99;
      }
    }

    else if (v13 == 1)
    {
      if (operations_research::sat::PresolveContext::StoreAffineRelation(this[1], v10, v11, -v14, v16, 0))
      {
        goto LABEL_99;
      }
    }

    else if (v14 == -1)
    {
      if (operations_research::sat::PresolveContext::StoreAffineRelation(this[1], v11, v10, v13, -v16, 0))
      {
        goto LABEL_99;
      }
    }

    else
    {
      v50 = this[1];
      if (v13 != -1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v84, "TODO linear2: ax + by = cte");
        operations_research::sat::PresolveContext::UpdateRuleStats(v50, &v84, 1, v51, v52);
        if (v85 < 0)
        {
          operator delete(v84);
        }

        goto LABEL_84;
      }

      if (operations_research::sat::PresolveContext::StoreAffineRelation(v50, v10, v11, v14, -v16, 0))
      {
LABEL_99:
        operations_research::sat::ConstraintProto::Clear(v6);
        LOBYTE(v6) = 1;
        return v6 & 1;
      }
    }

LABEL_84:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v74 = v12[1];
  v75 = v14;
  v72 = 0;
  v73 = v16;
  v71 = 0;
  if (!operations_research::sat::SolveDiophantineEquationOfSizeTwo(&v75, &v74, &v73, &v72, &v71, a6))
  {
    operator new();
  }

  operations_research::sat::PresolveContext::DomainOf(__p, this[1], v11);
  operations_research::Domain::Domain(&v76, -v72);
  operations_research::Domain::AdditionWith(&v80, __p, &v76, v17);
  operations_research::Domain::InverseMultiplicationBy(&v82, &v80, v74);
  operations_research::sat::PresolveContext::DomainOf(v68, this[1], v10);
  operations_research::Domain::Domain(v66, -v71);
  operations_research::Domain::AdditionWith(v69, v68, v66, v18);
  operations_research::Domain::InverseMultiplicationBy(v70, v69, -v75);
  operations_research::Domain::IntersectionWith(&v84, &v82, v70);
  if (v70[0])
  {
    operator delete(v70[1]);
    if ((v69[0] & 1) == 0)
    {
LABEL_10:
      if ((v66[0] & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_62;
    }
  }

  else if ((v69[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v69[1]);
  if ((v66[0] & 1) == 0)
  {
LABEL_11:
    if ((v68[0] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_62:
  operator delete(v67);
  if ((v68[0] & 1) == 0)
  {
LABEL_12:
    if ((v82 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

LABEL_63:
  operator delete(v68[1]);
  if ((v82 & 1) == 0)
  {
LABEL_13:
    if ((v80 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_64:
  operator delete(*(&v82 + 1));
  if ((v80 & 1) == 0)
  {
LABEL_14:
    if ((v76 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  operator delete(v81);
  if ((v76 & 1) == 0)
  {
LABEL_15:
    if ((__p[0] & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_66:
  operator delete(v77);
  if (__p[0])
  {
LABEL_16:
    operator delete(*&__p[8]);
  }

LABEL_17:
  if (operations_research::Domain::IsEmpty(&v84))
  {
    operator new();
  }

  if (operations_research::Domain::Size(&v84) == 1)
  {
    v32 = operations_research::Domain::Min(&v84);
    v33 = v72;
    v34 = v74;
    v35 = v75;
    v65 = v71;
    v36 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    google::protobuf::RepeatedField<int>::operator=(v36 + 4, v6 + 4);
    v37 = operations_research::sat::ConstraintProto::mutable_linear(v36);
    operations_research::sat::BoolArgumentProto::add_literals(v37, v11);
    v38 = operations_research::sat::ConstraintProto::mutable_linear(v36);
    operations_research::sat::LinearConstraintProto::add_coeffs(v38, 1);
    v39 = operations_research::sat::ConstraintProto::mutable_linear(v36);
    operations_research::sat::LinearConstraintProto::add_domain(v39, v33 + v34 * v32);
    v40 = operations_research::sat::ConstraintProto::mutable_linear(v36);
    operations_research::sat::LinearConstraintProto::add_domain(v40, v33 + v34 * v32);
    v41 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    google::protobuf::RepeatedField<int>::operator=(v41 + 4, v6 + 4);
    v42 = operations_research::sat::ConstraintProto::mutable_linear(v41);
    operations_research::sat::BoolArgumentProto::add_literals(v42, v10);
    v43 = operations_research::sat::ConstraintProto::mutable_linear(v41);
    operations_research::sat::LinearConstraintProto::add_coeffs(v43, 1);
    v44 = operations_research::sat::ConstraintProto::mutable_linear(v41);
    operations_research::sat::LinearConstraintProto::add_domain(v44, v65 - v35 * v32);
    v45 = operations_research::sat::ConstraintProto::mutable_linear(v41);
    operations_research::sat::LinearConstraintProto::add_domain(v45, v65 - v35 * v32);
    v46 = this[1];
    std::string::basic_string[abi:ne200100]<0>(&v82, "linear2: implied ax + by = cte has only one solution");
    operations_research::sat::PresolveContext::UpdateRuleStats(v46, &v82, 1, v47, v48);
    if (v83 < 0)
    {
      operator delete(v82);
    }

    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
    operations_research::sat::ConstraintProto::Clear(v6);
    v49 = 0;
    LOBYTE(v6) = 1;
  }

  else
  {
    v49 = 1;
  }

  if (v84)
  {
    operator delete(*(&v84 + 1));
  }

  if (v49)
  {
    goto LABEL_84;
  }

  return v6 & 1;
}

void sub_23CA84F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, void *a18, uint64_t a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, void *a31, void *__p, int a33, __int16 a34, char a35, char a36)
{
  if (a31)
  {
    operator delete(__p);
  }

  if (*(v36 - 168))
  {
    operator delete(*(v36 - 160));
  }

  if (*(v36 - 144))
  {
    operator delete(*(v36 - 136));
  }

  if (*(v36 - 120))
  {
    operator delete(*(v36 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveSmallLinear(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5, uint64_t *a6)
{
  if (*(a2 + 15) != 12)
  {
    return 0;
  }

  v7 = *(this + 1);
  if (*(v7 + 416))
  {
    return 0;
  }

  v9 = *(*(a2 + 6) + 16);
  if (v9 == 2)
  {

    return operations_research::sat::CpModelPresolver::PresolveLinearOfSizeTwo(this, a2, a3, a4, a5, a6);
  }

  else if (v9 == 1)
  {

    return operations_research::sat::CpModelPresolver::PresolveLinearOfSizeOne(this, a2);
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v10 = this;
    v20 = 13;
    strcpy(__p, "linear: empty");
    operations_research::sat::PresolveContext::UpdateRuleStats(v7, __p, 1, a4, a5);
    v13 = a2;
    if (v20 < 0)
    {
      operator delete(__p[0]);
      v13 = a2;
    }

    if (*(v13 + 15) == 12)
    {
      v14 = *(v13 + 6);
    }

    else
    {
      v14 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    operations_research::Domain::FromFlatSpanOfIntervals(v14[9], *(v14 + 16), __p, v12);
    if (operations_research::Domain::Contains(__p, 0))
    {
      operations_research::sat::ConstraintProto::Clear(a2);
      result = 1;
    }

    else
    {
      result = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(v10, a2, v15, v16, v17);
    }

    if (__p[0])
    {
      v18 = result;
      operator delete(__p[1]);
      return v18;
    }
  }

  return result;
}

void sub_23CA8533C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveDiophantine(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 15) == 12)
  {
    v2 = *(a2 + 6);
    if (*(v2 + 16) >= 2 && (*(*(this + 1) + 416) & 1) == 0 && *(v2 + 64) == 2 && **(v2 + 72) == *(*(v2 + 72) + 8))
    {
      operator new();
    }
  }

  return 0;
}

void sub_23CA862EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  operations_research::sat::DiophantineSolution::~DiophantineSolution(&a34);
  if (a24)
  {
    operator delete(a24);
  }

  operator delete(a23);
  _Unwind_Resume(a1);
}

void *std::vector<int>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CA864CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3, __n128 a4)
{
  if (*(a3 + 15) != 12)
  {
    return;
  }

  if (*(*(this + 1) + 416))
  {
    return;
  }

  v5 = a3;
  v6 = *(a3 + 6);
  if (*(v6 + 64) != 2)
  {
    return;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(*(v6 + 72), 2uLL, v166, a4);
  v8 = *(this + 38);
  *(this + 30) = *(this + 29);
  *(this + 39) = v8;
  v155 = (this + 304);
  v156 = (this + 328);
  *(this + 42) = *(this + 41);
  v157 = (this + 352);
  v153 = v5;
  v154 = (this + 232);
  *(this + 45) = *(this + 44);
  v9 = *(v6 + 16);
  if (v9 < 1)
  {
    v158 = 0;
    v12 = 0;
    v11 = 0;
    v21 = 1;
  }

  else
  {
    v150 = a2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v158 = 0;
    v13 = 0;
    do
    {
      v14 = *(*(v6 + 48) + 8 * v10);
      if (v14 >= 0)
      {
        v15 = *(*(v6 + 48) + 8 * v10);
      }

      else
      {
        v15 = -v14;
      }

      v165 = v15;
      if (v14)
      {
        if (v13 <= v15)
        {
          v13 = v15;
        }

        v164 = 0;
        v163 = 0;
        v16 = *(this + 1);
        v17 = *(*(v6 + 24) + 4 * v10);
        if (v14 < 1)
        {
          v164 = -operations_research::sat::PresolveContext::MaxOf(v16, v17);
          v18 = -operations_research::sat::PresolveContext::MinOf(*(this + 1), *(*(v6 + 24) + 4 * v10));
          v163 = v18;
          v19 = v164;
          if (v164 == v18)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v164 = operations_research::sat::PresolveContext::MinOf(v16, v17);
          v18 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), *(*(v6 + 24) + 4 * v10));
          v163 = v18;
          v19 = v164;
          if (v164 == v18)
          {
            goto LABEL_23;
          }
        }

        v20 = v165;
        std::vector<long long>::push_back[abi:ne200100](v156, &v164);
        std::vector<long long>::push_back[abi:ne200100](v157, &v163);
        std::vector<long long>::push_back[abi:ne200100](v155, &v165);
        *&__p = v165;
        *(&__p + 1) = (v163 - v164) * v165;
        v161 = v10;
        std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](v154, &__p);
        v11 += v20 * v19;
        v12 += v20 * v18;
        v158 += *(*(this + 30) - 16);
      }

      ++v10;
    }

    while (v9 != v10);
    v21 = v13 < 2;
    a2 = v150;
    v5 = v153;
  }

  if (v11 > operations_research::Domain::Max(v166) || operations_research::Domain::Min(v166) > v12)
  {
LABEL_22:
    operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v5, v22, v23, v24);
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
    goto LABEL_23;
  }

  v25 = operations_research::Domain::Max(v166);
  if (__OFSUB__(v25, v11))
  {
    v26 = (v25 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = v25 - v11;
  }

  v27 = operations_research::Domain::Min(v166);
  if (__OFSUB__(v12, v27))
  {
    v28 = (v12 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v28 = v12 - v27;
  }

  if (v26 >= v158 && v28 >= v158)
  {
    operations_research::sat::ConstraintProto::Clear(v5);
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
    goto LABEL_23;
  }

  if (v21)
  {
    goto LABEL_23;
  }

  if (v28 < v158)
  {
    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 400), v28);
    v29 = operations_research::Domain::Min(v166);
    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 504), v29 + ~v11);
  }

  if (v26 < v158)
  {
    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 608), v26);
    v30 = operations_research::Domain::Max(v166);
    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 712), v12 + ~v30);
  }

  std::stable_sort[abi:ne200100]<std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0>(*(this + 29), *(this + 30));
  *(this + 48) = *(this + 47);
  v35 = *(this + 29);
  v34 = *(this + 30);
  if (v34 == v35)
  {
LABEL_88:
    if ((v28 >= v158 || *(this + 53) >= *(this + 52)) && (v26 >= v158 || *(this + 79) >= *(this + 78)))
    {
LABEL_108:
      v84 = *(this + 47);
      v83 = *(this + 48);
      if ((v83 - v84) >= 0x19)
      {
        std::vector<long long>::resize(this + 47, 3uLL);
        v84 = *(this + 47);
        v83 = *(this + 48);
      }

      if (v84 == v83)
      {
        goto LABEL_23;
      }

      v152 = a2;
      v159 = v83;
      while (1)
      {
        while (1)
        {
          v85 = *v84;
          v165 = 0;
          v87 = *(this + 38);
          v86 = *(this + 39);
          v88 = *(this + 41);
          v89 = *(this + 42);
          v91 = *(this + 44);
          v90 = *(this + 45);
          v92 = operations_research::Domain::Max(v166);
          if (operations_research::sat::LinearInequalityCanBeReducedWithClosestMultiple(v85, v87, (v86 - v87) >> 3, v88, (v89 - v88) >> 3, v91, (v90 - v91) >> 3, v92, &v165))
          {
            break;
          }

          if (++v84 == v159)
          {
            goto LABEL_23;
          }
        }

        v164 = 0;
        v94 = *(this + 41);
        v93 = *(this + 42);
        v95 = *(this + 44);
        v96 = v93 - v94;
        if (v93 != v94)
        {
          if (v96 <= 7 || ((v96 - 1) <= 0x7FFFFFFE ? (v97 = (v96 - 1) >> 31 == 0) : (v97 = 0), !v97 || v94 < (v95 + v93 - v94) && v95 < v93))
          {
            v98 = 0;
            v99 = 0;
LABEL_124:
            v100 = v99 + 1;
            do
            {
              v101 = v94[v98];
              v94[v98] = v95[v98];
              v95[v98] = v101;
              v94[v98] = -v94[v98];
              v95[v98] = -v95[v98];
              v98 = v100++;
            }

            while (v96 > v98);
            goto LABEL_126;
          }

          v98 = (v93 - v94) & 0xFFFFFFFELL;
          v133 = v98;
          v134 = *(this + 44);
          v135 = *(this + 41);
          do
          {
            v136 = *v135;
            *v135++ = vnegq_s64(*v134);
            *v134++ = vnegq_s64(v136);
            v133 -= 2;
          }

          while (v133);
          v99 = v96 & 0xFFFFFFFE;
          if (v96 != v98)
          {
            goto LABEL_124;
          }
        }

LABEL_126:
        v103 = *(this + 38);
        v102 = *(this + 39);
        v104 = *(this + 45);
        v105 = operations_research::Domain::Min(v166);
        CanBeReducedWithClosestMultiple = operations_research::sat::LinearInequalityCanBeReducedWithClosestMultiple(v85, v103, (v102 - v103) >> 3, v94, v96, v95, (v104 - v95) >> 3, -v105, &v164);
        if (CanBeReducedWithClosestMultiple)
        {
          v107 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(&__p, "linear: simplify using approximate gcd");
          operations_research::sat::PresolveContext::UpdateRuleStats(v107, &__p, 1, v108, v109);
          if (v162 < 0)
          {
            operator delete(__p);
          }

          v111 = operations_research::sat::ConstraintProto::mutable_linear(v153);
          if (*(v6 + 40) < 1)
          {
            v113 = 0;
          }

          else
          {
            v112 = 0;
            v113 = 0;
            do
            {
              v114 = operations_research::sat::ClosestMultiple(*(*(v6 + 48) + 8 * v112), v85, v110);
              if (v114 / v85)
              {
                *(v111[3] + 4 * v113) = *(*(v6 + 24) + 4 * v112);
                *(v111[6] + 8 * v113++) = v114 / v85;
              }

              ++v112;
            }

            while (v112 < *(v6 + 40));
          }

          if (*(v111 + 4) > v113)
          {
            *(v111 + 4) = v113;
          }

          if (*(v111 + 10) > v113)
          {
            *(v111 + 10) = v113;
          }

          operations_research::Domain::Domain(&__p, -v164, v165);
          if (operations_research::Domain::IsEmpty(&__p))
          {
            operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v153, v125, v126, v127);
          }

          else
          {
            operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&__p, v111);
          }

          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v152);
          if (__p)
          {
            operator delete(*(&__p + 1));
          }

          v118 = v159;
          goto LABEL_151;
        }

        v115 = *(this + 41);
        v116 = *(this + 42);
        v117 = v116 - v115;
        v118 = v159;
        if (v116 != v115)
        {
          v119 = v117 >> 3;
          v120 = *v157;
          if ((v117 >> 3) <= 7)
          {
            goto LABEL_136;
          }

          v122 = 0;
          v121 = 0;
          if ((v119 - 1) > 0x7FFFFFFE || (v119 - 1) >> 31)
          {
            goto LABEL_137;
          }

          if (v115 < v120->u64 + v117 && v120 < v116)
          {
LABEL_136:
            v121 = 0;
            v122 = 0;
LABEL_137:
            v123 = v122 + 1;
            do
            {
              v124 = *(v115 + 8 * v121);
              *(v115 + 8 * v121) = v120->i64[v121];
              v120->i64[v121] = v124;
              *(v115 + 8 * v121) = -*(v115 + 8 * v121);
              v120->i64[v121] = -v120->i64[v121];
              v121 = v123++;
            }

            while (v119 > v121);
            goto LABEL_151;
          }

          v121 = (v117 >> 3) & 0xFFFFFFFELL;
          v129 = v121;
          v130 = *v157;
          v131 = *(this + 41);
          do
          {
            v132 = *v131;
            *v131++ = vnegq_s64(*v130);
            *v130++ = vnegq_s64(v132);
            v129 -= 2;
          }

          while (v129);
          v122 = v119 & 0xFFFFFFFE;
          if (v119 != v121)
          {
            goto LABEL_137;
          }
        }

LABEL_151:
        ++v84;
        v128 = v84 == v118 || CanBeReducedWithClosestMultiple;
        if (v128)
        {
          goto LABEL_23;
        }
      }
    }

    v68 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "linear: reduce rhs with DP");
    operations_research::sat::PresolveContext::UpdateRuleStats(v68, &__p, 1, v69, v70);
    if (v162 < 0)
    {
      operator delete(__p);
      v71 = v11;
      if (v28 >= v158)
      {
LABEL_94:
        if (v26 >= v158)
        {
          goto LABEL_95;
        }

        goto LABEL_105;
      }
    }

    else
    {
      v71 = v11;
      if (v28 >= v158)
      {
        goto LABEL_94;
      }
    }

    v71 = v12 - *(this + 53);
    if (v26 >= v158)
    {
LABEL_95:
      if (v71 > v12)
      {
        goto LABEL_22;
      }

      goto LABEL_106;
    }

LABEL_105:
    v12 = *(this + 79) + v11;
    if (v71 > v12)
    {
      goto LABEL_22;
    }

LABEL_106:
    operations_research::Domain::Domain(&__p, v71, v12);
    v82 = operations_research::sat::ConstraintProto::mutable_linear(v5);
    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&__p, v82);
    if (__p)
    {
      operator delete(*(&__p + 1));
    }

    goto LABEL_108;
  }

  v146 = v28;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v149 = 0;
  v39 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v35) >> 3);
  v40 = v158;
  v147 = v26;
  while (1)
  {
    v41 = (v35 + 24 * v36);
    v42 = *v41;
    if (*v41)
    {
      v43 = v37;
      v44 = *v41;
      do
      {
        v37 = v44;
        v44 = v43 % v44;
        v43 = v37;
      }

      while (v44);
    }

    v45 = v41[1];
    v46 = v40 - v45;
    v38 += v45 / v42;
    v148 = v41;
    v47 = v149 + 1;
    if (v39 <= v47 || v42 != *(v35 + 24 * v47))
    {
      break;
    }

    v40 -= v45;
    v26 = v147;
LABEL_43:
    v39 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v35) >> 3);
    ++v149;
    v36 = v47;
    if (v39 <= v47)
    {
      goto LABEL_84;
    }
  }

  if (v42 >= 2 && (v147 >= v158 || (v42 & ((v147 % v42) >> 63)) + v147 % v42 >= v46))
  {
    if (v146 < v158 && (v42 & ((v146 % v42) >> 63)) + v146 % v42 < v46)
    {
      goto LABEL_57;
    }

    std::vector<long long>::push_back[abi:ne200100](this + 376, v41);
  }

  if (v146 >= v158)
  {
    v48 = v38;
    v57 = 0;
    v40 = v46;
    goto LABEL_68;
  }

  v42 = *v148;
LABEL_57:
  operations_research::sat::MaxBoundedSubsetSum::AddMultiples((this + 400), v42, v38);
  operations_research::sat::MaxBoundedSubsetSum::AddMultiples((this + 504), *v148, v38);
  v48 = v38;
  v49 = *(this + 53);
  v50 = (v49 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v40 = v46;
  v51 = __OFADD__(v49, v46);
  v52 = v49 + v46;
  if (v51)
  {
    v52 = v50;
  }

  v53 = *(this + 66);
  v54 = (v53 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v51 = __OFADD__(v53, v46);
  v55 = v53 + v46;
  if (v51)
  {
    v55 = v54;
  }

  v57 = v55 > *(this + 65) && v52 > *(this + 52);
LABEL_68:
  v26 = v147;
  if (v147 >= v158)
  {
    v66 = 0;
  }

  else
  {
    v145 = v57;
    v58 = v48;
    operations_research::sat::MaxBoundedSubsetSum::AddMultiples((this + 608), *v148, v48);
    operations_research::sat::MaxBoundedSubsetSum::AddMultiples((this + 712), *v148, v58);
    v59 = *(this + 79);
    v60 = (v59 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v51 = __OFADD__(v59, v40);
    v61 = v59 + v40;
    if (v51)
    {
      v61 = v60;
    }

    v62 = *(this + 92);
    v63 = (v62 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v51 = __OFADD__(v62, v40);
    v64 = v62 + v40;
    if (v51)
    {
      v64 = v63;
    }

    v66 = v64 > *(this + 91) && v61 > *(this + 78);
    v26 = v147;
    v57 = v145;
  }

  if (v40)
  {
    if (v57 || v66)
    {
      v38 = 0;
      v35 = *(this + 29);
      v34 = *(this + 30);
      v47 = v149 + 1;
      goto LABEL_43;
    }

    v72 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "linear: remove irrelevant part");
    operations_research::sat::PresolveContext::UpdateRuleStats(v72, &__p, 1, v73, v74);
    if (v162 < 0)
    {
      operator delete(__p);
    }

    v151 = a2;
    *(this + 33) = *(this + 32);
    *(this + 36) = *(this + 35);
    if (v149 < 0)
    {
      v76 = 0;
      v75 = 0;
    }

    else
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      do
      {
        v78 = *(*v154 + 24 * v77 + 16);
        v79 = *(*v155 + 8 * v78);
        v80 = *(*v156 + 8 * v78);
        v81 = (*v157)->i64[v78];
        LODWORD(__p) = *(*(v6 + 24) + 4 * v78);
        std::vector<int>::push_back[abi:ne200100](this + 256, &__p);
        *&__p = *(*(v6 + 48) + 8 * v78);
        std::vector<long long>::push_back[abi:ne200100](this + 35, &__p);
        v75 += v80 * v79;
        v76 += v81 * v79;
        ++v77;
      }

      while (v77 <= v149);
    }

    v137 = operations_research::sat::ConstraintProto::mutable_linear(v153);
    google::protobuf::RepeatedField<int>::Assign<std::__wrap_iter<int *>>(v137 + 4, *(this + 32), *(this + 33));
    google::protobuf::RepeatedField<long long>::Assign<std::__wrap_iter<long long *>>(v137 + 10, *(this + 35), *(this + 36));
    v141 = v75;
    if (v146 < v158)
    {
      v141 = v76 - *(this + 53);
      if (v147 >= v158)
      {
LABEL_171:
        if (v141 > v76)
        {
LABEL_172:
          operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v153, v138, v139, v140);
LABEL_178:
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v151);
          goto LABEL_23;
        }

LABEL_175:
        operations_research::Domain::Domain(&__p, v141, v76);
        operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&__p, v137);
        if (__p)
        {
          operator delete(*(&__p + 1));
        }

        operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, v153, v142, v143, v144);
        goto LABEL_178;
      }
    }

    else if (v147 >= v158)
    {
      goto LABEL_171;
    }

    v76 = *(this + 79) + v75;
    if (v141 > v76)
    {
      goto LABEL_172;
    }

    goto LABEL_175;
  }

LABEL_84:
  v67 = v37 >= 2;
  v5 = v153;
  v28 = v146;
  if (!v67)
  {
    goto LABEL_88;
  }

  if (operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, v153, v31, v32, v33))
  {
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
  }

LABEL_23:
  if (v166[0])
  {
    operator delete(v166[1]);
  }
}

void sub_23CA87140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *__p, int a25, __int16 a26, char a27, char a28)
{
  if (a23)
  {
    operator delete(__p);
  }

  if (*(v28 - 112))
  {
    operator delete(*(v28 - 104));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void std::stable_sort[abi:ne200100]<std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0>(char *a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 < 3073)
  {
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v3 = a1;
    v4 = a2;
    v5 = MEMORY[0x277D826F0];
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    while (1)
    {
      v7 = operator new(24 * v6, v5);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        v10 = 0;
        v6 = v8;
        goto LABEL_8;
      }
    }

    v10 = v7;
LABEL_8:
    a2 = v4;
    a1 = v3;
  }

  std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(a1, a2, v2, v10, v6);
  if (v10)
  {

    operator delete(v10);
  }
}

void sub_23CA8742C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::RepeatedField<int>::Assign<std::__wrap_iter<int *>>(int *result, char *a2, char *a3)
{
  *result = 0;
  v3 = (a3 - a2) >> 2;
  if (result[1] < v3)
  {
    v18 = result;
    v19 = a2;
    v20 = a3;
    result = google::protobuf::RepeatedField<int>::Grow(result, 0, v3);
    a2 = v19;
    a3 = v20;
    v4 = *v18;
    v5 = *(v18 + 1);
    *v18 = v3;
    v6 = v20 - v19;
    if (v20 == v19)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
    v5 = *(result + 1);
    *result = v3;
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return result;
    }
  }

  v7 = (v5 + 4 * v4);
  v8 = v6 - 4;
  if (v8 < 0x1C)
  {
    v9 = a2;
    goto LABEL_10;
  }

  v10 = 4 * v4 + v5;
  if ((v10 - a2) < 0x20)
  {
    v9 = a2;
    do
    {
LABEL_10:
      v17 = *v9;
      v9 += 4;
      *v7++ = v17;
    }

    while (v9 != a3);
    return result;
  }

  v11 = (v8 >> 2) + 1;
  v12 = 4 * (v11 & 0x7FFFFFFFFFFFFFF8);
  v7 = (v7 + v12);
  v9 = &a2[v12];
  v13 = a2 + 16;
  v14 = (v10 + 16);
  v15 = v11 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 32;
    v14 += 2;
    v15 -= 8;
  }

  while (v15);
  if (v11 != (v11 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_10;
  }

  return result;
}

int *google::protobuf::RepeatedField<long long>::Assign<std::__wrap_iter<long long *>>(int *result, char *a2, char *a3)
{
  *result = 0;
  v3 = (a3 - a2) >> 3;
  if (result[1] < v3)
  {
    v18 = result;
    v19 = a2;
    v20 = a3;
    result = google::protobuf::RepeatedField<long long>::Grow(result, 0, v3);
    a2 = v19;
    a3 = v20;
    v4 = *v18;
    v5 = *(v18 + 1);
    *v18 = v3;
    v6 = v20 - v19;
    if (v20 == v19)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
    v5 = *(result + 1);
    *result = v3;
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return result;
    }
  }

  v7 = (v5 + 8 * v4);
  v8 = v6 - 8;
  if (v8 < 0x38)
  {
    v9 = a2;
    goto LABEL_10;
  }

  v10 = 8 * v4 + v5;
  if ((v10 - a2) < 0x20)
  {
    v9 = a2;
    do
    {
LABEL_10:
      v17 = *v9;
      v9 += 8;
      *v7++ = v17;
    }

    while (v9 != a3);
    return result;
  }

  v11 = (v8 >> 3) + 1;
  v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL);
  v7 = (v7 + v12);
  v9 = &a2[v12];
  v13 = a2 + 16;
  v14 = (v10 + 16);
  v15 = v11 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 32;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  if (v11 != (v11 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_10;
  }

  return result;
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 8 * a2;
  }
}

void operations_research::sat::CpModelPresolver::ProcessAtMostOneAndLinear(operations_research::sat::CpModelPresolver *this)
{
  if ((operations_research::TimeLimit::LimitReached(*(this + 3)) & 1) == 0)
  {
    v2 = *(this + 1);
    if ((*(v2 + 416) & 1) == 0)
    {
      if (*(*(v2 + 392) + 792))
      {
        operator new();
      }
    }
  }
}

void sub_23CA87A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::ActivityBoundHelper::~ActivityBoundHelper(&a15);
  operations_research::sat::PresolveTimer::~PresolveTimer((v15 - 200), v17);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::PresolveTimer::PresolveTimer(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = absl::lts_20240722::GetCurrentTimeNanos(a1);
  return a1;
}

void sub_23CA87AE8(_Unwind_Exception *a1)
{
  std::vector<std::string>::~vector[abi:ne200100]((v1 + 96));
  std::vector<std::pair<std::string,long long>>::~vector[abi:ne200100]((v1 + 72));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelPresolver::ProcessOneLinearWithAmo(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3, operations_research::sat::ActivityBoundHelper *a4)
{
  if (*(a3 + 15) != 12 || *(*(a3 + 6) + 16) < 2)
  {
    return;
  }

  *(this + 5) = *(this + 4);
  v186 = this + 32;
  operations_research::sat::ConstraintProto::Clear((this + 168));
  operations_research::Domain::Domain(&v202, 0);
  if (*(a3 + 15) != 12)
  {
    v187 = a3;
    v185 = off_2810BEE58;
    if (off_2810BEE58 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v187 = a3;
  v185 = *(*(a3 + 6) + 16);
  if (v185 >= 1)
  {
LABEL_23:
    v18 = 0;
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      while (1)
      {
        v24 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v187 + 15) == 12)
        {
          v24 = *(v187 + 6);
        }

        v25 = *(v24[3] + v18);
        v26 = v24[6];
        v27 = v26[v18];
        v28 = v25 >= 0 ? v26[v18] : -v27;
        v29 = v25 ^ (v25 >> 31);
        if (!operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(this + 1), v29))
        {
          break;
        }

        LODWORD(v200) = v29;
        v201.n128_u64[0] = v28;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v186, &v200);
        if (v27 >= 0)
        {
          v30 = v27;
        }

        else
        {
          v30 = -v27;
        }

        if (v30 < v8)
        {
          v8 = v30;
        }

        if (v7 <= v30)
        {
          v7 = v30;
        }

        if (v185 == ++v18)
        {
          goto LABEL_6;
        }
      }

      operations_research::sat::PresolveContext::DomainOf(&v194, *(this + 1), v29);
      operations_research::Domain::ContinuousMultiplicationBy(&v196, &v194, v28);
      operations_research::Domain::AdditionWith(&v198, &v202, &v196, v31);
      operations_research::Domain::RelaxIfTooComplex(&v200, &v198);
      if (v202)
      {
        operator delete(v203.n128_u64[0]);
      }

      v202 = v200;
      v6 = v201;
      v203 = v201;
      v200 = 0;
      if (v198)
      {
        operator delete(*(&v198 + 1));
        if ((v196 & 1) == 0)
        {
LABEL_45:
          if ((v194 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }
      }

      else if ((v196 & 1) == 0)
      {
        goto LABEL_45;
      }

      operator delete(__p[0]);
      if ((v194 & 1) == 0)
      {
LABEL_46:
        if (*(this + 57) == 12)
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }

LABEL_50:
      operator delete(v195.n128_u64[0]);
      if (*(this + 57) == 12)
      {
LABEL_47:
        v32 = *(this + 27);
        goto LABEL_54;
      }

LABEL_51:
      operations_research::sat::ConstraintProto::clear_constraint((v186 + 136));
      *(this + 57) = 12;
      v33 = *(this + 22);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v33);
      *(this + 27) = v32;
LABEL_54:
      v35 = *(v32 + 4);
      v34 = *(v32 + 5);
      if (v35 == v34)
      {
        google::protobuf::RepeatedField<int>::Grow((v32 + 2), v34, (v34 + 1));
        v35 = *(v32 + 4);
      }

      v36 = v32[3];
      *(v32 + 4) = v35 + 1;
      *(v36 + 4 * v35) = v29;
      if (*(this + 57) != 12)
      {
        operations_research::sat::ConstraintProto::clear_constraint((v186 + 136));
        *(this + 57) = 12;
        v37 = *(this + 22);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v37);
        *(this + 27) = v19;
        v21 = *(v19 + 10);
        v20 = *(v19 + 11);
        v22 = (v19 + 5);
        if (v21 != v20)
        {
          goto LABEL_25;
        }

LABEL_60:
        google::protobuf::RepeatedField<long long>::Grow(v22, v20, (v20 + 1));
        v21 = *v22;
        goto LABEL_25;
      }

      v19 = *(this + 27);
      v21 = *(v19 + 10);
      v20 = *(v19 + 11);
      v22 = (v19 + 5);
      if (v21 == v20)
      {
        goto LABEL_60;
      }

LABEL_25:
      v23 = v19[6];
      *(v19 + 10) = v21 + 1;
      *(v23 + 8 * v21) = v28;
      if (v185 == ++v18)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_5:
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
  if (*(this + 4) == *(this + 5))
  {
    goto LABEL_67;
  }

  v9 = v187;
  v10 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  if (*(v187 + 15) == 12)
  {
    v10 = *(v187 + 6);
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v10[9], *(v10 + 16), &v200, v6);
  operations_research::Domain::Domain(&v198, 0);
  v11 = v203.n128_u64[0];
  if ((v202 & 1) == 0)
  {
    v11 = &v203;
  }

  v12 = &v198 + 1;
  if (v198)
  {
    v12 = *(&v198 + 1);
  }

  if ((((v198 >> 1) ^ (v202 >> 1)) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_14;
  }

  v42 = &v11[v202 >> 1];
  v43 = &v12[2 * (v198 >> 1)];
  if ((v202 & 0x1FFFFFFFFFFFFFFELL) != 0 && (v198 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    while (v11->n128_u64[0] == *v12 && v11->n128_u64[1] == v12[1])
    {
      ++v11;
      v12 += 2;
      if (v11 == v42 || v12 == v43)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_14;
  }

LABEL_79:
  if (v12 != v43 || v11 != v42 || (v200 & 0x1FFFFFFFELL) != 2)
  {
LABEL_14:
    if (v198)
    {
      operator delete(*(&v198 + 1));
    }

    goto LABEL_16;
  }

  if (v198)
  {
    operator delete(*(&v198 + 1));
  }

  if (v8 >= v7)
  {
    goto LABEL_16;
  }

  v46 = *(this + 4);
  v45 = *(this + 5);
  if (v46 == v45)
  {
    v48 = 0;
    goto LABEL_259;
  }

  v47 = v45 - v46 - 16;
  if (v47 <= 0xF)
  {
    v48 = 0;
    v49 = *(this + 4);
    do
    {
LABEL_258:
      v48 += *(v49 + 8) & (*(v49 + 8) >> 63);
      v49 += 16;
    }

    while (v49 != v45);
    goto LABEL_259;
  }

  v157 = 0;
  v158 = 0;
  v159 = (v47 >> 4) + 1;
  v49 = v46 + 16 * (v159 & 0x1FFFFFFFFFFFFFFELL);
  v160 = (v46 + 24);
  v161 = v159 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v162 = *(v160 - 2);
    v163 = *v160;
    v160 += 4;
    v157 += v162 & (v162 >> 63);
    v158 += v163 & (v163 >> 63);
    v161 -= 2;
  }

  while (v161);
  v48 = v158 + v157;
  if (v159 != (v159 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_258;
  }

LABEL_259:
  v164 = operations_research::Domain::Max(&v200) - v48;
  v165 = v48 >= operations_research::Domain::Min(&v200) && v7 <= v164;
  v9 = v187;
  if (v165)
  {
    v166 = *(this + 4);
    for (i = *(this + 5); v166 != i; v166 += 16)
    {
      v168 = *(v166 + 8);
      if (v168 + v8 <= v164)
      {
        operator new();
      }
    }

    v9 = v187;
    if (operations_research::sat::ActivityBoundHelper::IsAmo(a4, 0, 0))
    {
      v169 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v198, "linear + amo: detect hidden AMO");
      operations_research::sat::PresolveContext::UpdateRuleStats(v169, &v198, 1, v170, v171);
      if (v199 < 0)
      {
        operator delete(v198);
      }

      if (v185 < 1)
      {
        v173 = 0;
LABEL_292:
        operations_research::Domain::Domain(&v198, v173, v173 + 1);
        v180 = operations_research::sat::ConstraintProto::mutable_linear(v187);
        operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v198, v180);
        if (v198)
        {
          operator delete(*(&v198 + 1));
        }

        goto LABEL_65;
      }

      v172 = 0;
      v173 = 0;
      while (1)
      {
        while (*(v187 + 15) == 12)
        {
          v174 = *(v187 + 6);
          if ((*(*(v174 + 24) + 4 * v172) & 0x80000000) != 0)
          {
            goto LABEL_296;
          }

          v175 = *(v174 + 48);
          if (*(v175 + 8 * v172) <= 0)
          {
            goto LABEL_287;
          }

LABEL_274:
          *(v175 + 8 * v172++) = 1;
          if (v185 == v172)
          {
            goto LABEL_292;
          }
        }

        if ((*(off_2810BEE60 + v172) & 0x80000000) != 0)
        {
LABEL_296:
          v181 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v198, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 3411);
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v181);
        }

        if (*(off_2810BEE78 + v172) >= 1)
        {
          operations_research::sat::ConstraintProto::clear_constraint(v187);
          *(v187 + 15) = 12;
          v176 = *(v187 + 1);
          if (v176)
          {
            v176 = *(v176 & 0xFFFFFFFFFFFFFFFELL);
          }

          v177 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v176);
          *(v187 + 6) = v177;
          v175 = v177[6];
          goto LABEL_274;
        }

        operations_research::sat::ConstraintProto::clear_constraint(v187);
        *(v187 + 15) = 12;
        v178 = *(v187 + 1);
        if (v178)
        {
          v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
        }

        v179 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v178);
        *(v187 + 6) = v179;
        v175 = v179[6];
LABEL_287:
        *(v175 + 8 * v172) = -1;
        --v173;
        if (v185 == ++v172)
        {
          goto LABEL_292;
        }
      }
    }
  }

LABEL_16:
  v13 = a4;
  v14 = operations_research::sat::ActivityBoundHelper::ComputeActivity(a4, 1, *(this + 4), (*(this + 5) - *(this + 4)) >> 4, this + 7);
  v15 = operations_research::sat::ActivityBoundHelper::ComputeActivity(a4, 0, *(this + 4), (*(this + 5) - *(this + 4)) >> 4, this + 10);
  operations_research::Domain::Domain(&v196, v14, v15);
  operations_research::Domain::AdditionWith(&v198, &v202, &v196, v16);
  if (v196)
  {
    operator delete(__p[0]);
  }

  operations_research::Domain::IntersectionWith(&v196, &v198, &v200);
  IsEmpty = operations_research::Domain::IsEmpty(&v196);
  if (v196)
  {
    operator delete(__p[0]);
  }

  if (IsEmpty)
  {
    operator new();
  }

  if (operations_research::Domain::IsIncludedIn(&v198, &v200))
  {
    operator new();
  }

  v182 = (v9 + 16);
  if (!*(v9 + 4))
  {
    v80 = *(this + 57) == 12 ? *(this + 27) : &operations_research::sat::_LinearConstraintProto_default_instance_;
    if (*(v80 + 4))
    {
      operations_research::Domain::Domain(&v192, v14, v15);
      operations_research::Domain::Negation(&v194, &v192);
      operations_research::Domain::AdditionWith(&v196, &v200, &v194, v104);
      v105 = operations_research::sat::ConstraintProto::mutable_linear((v186 + 136));
      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v196, v105);
      if (v196)
      {
        operator delete(__p[0]);
        if ((v194 & 1) == 0)
        {
LABEL_176:
          if ((v192 & 1) == 0)
          {
            goto LABEL_178;
          }

          goto LABEL_177;
        }
      }

      else if ((v194 & 1) == 0)
      {
        goto LABEL_176;
      }

      operator delete(v195.n128_u64[0]);
      if ((v192 & 1) == 0)
      {
LABEL_178:
        if ((operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(this, -1, (v186 + 136)) & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_89;
      }

LABEL_177:
      operator delete(v193);
      goto LABEL_178;
    }
  }

LABEL_89:
  v50 = *(this + 4);
  if (*(this + 5) == v50)
  {
    v53 = 0;
    v52 = 0;
    LODWORD(v71) = *v182;
    v72 = 1;
LABEL_152:
    if (v71)
    {
      if (*(v187 + 15) == 12)
      {
        v89 = *(v187 + 6);
      }

      else
      {
        v89 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      if ((operations_research::sat::ActivityBoundHelper::PresolveEnforcement(v13, v89[3], *(v89 + 4), v187, this + 17) & 1) == 0)
      {
        v101 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v196, "linear + amo: infeasible enforcement");
        operations_research::sat::PresolveContext::UpdateRuleStats(v101, &v196, 1, v102, v103);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(v196);
        }

        operations_research::sat::ConstraintProto::Clear(v187);
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        goto LABEL_63;
      }

      if (*v182 < v71)
      {
        v90 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v196, "linear + amo: simplified enforcement list");
        operations_research::sat::PresolveContext::UpdateRuleStats(v90, &v196, 1, v91, v92);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(v196);
        }

        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      }

      if (!v72)
      {
        v117 = *(this + 17);
        if (v117 > 1)
        {
          _X10 = *(this + 19);
          v145 = 0;
          do
          {
            v146 = 0;
            v147 = ~*v145;
            __asm { PRFM            #4, [X10] }

            v152 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v147) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v147));
            v153 = vdup_n_s8(v152 & 0x7F);
            v154 = ((_X10 >> 12) ^ (v152 >> 7)) & v117;
            v155 = *(_X10 + v154);
            v156 = vceq_s8(v155, v153);
            if (!v156)
            {
              goto LABEL_248;
            }

            do
            {
LABEL_246:
              if (*(*(this + 20) + 4 * ((v154 + (__clz(__rbit64(v156)) >> 3)) & v117)) == v147)
              {
                goto LABEL_253;
              }

              v156 &= ((v156 & 0x8080808080808080) - 1) & 0x8080808080808080;
            }

            while (v156);
LABEL_248:
            while (!*&vceq_s8(v155, 0x8080808080808080))
            {
              v146 += 8;
              v154 = (v146 + v154) & v117;
              v155 = *(_X10 + v154);
              v156 = vceq_s8(v155, v153);
              if (v156)
              {
                goto LABEL_246;
              }
            }

            ++v145;
          }

          while (v145 != v53);
        }

        else if (*(this + 18) >= 2uLL)
        {
          v118 = 0;
          while ((*v118 ^ *(this + 38)) != -1)
          {
            if (++v118 == v53)
            {
              goto LABEL_199;
            }
          }

LABEL_253:
          operator new();
        }

LABEL_199:
        if (*v182 == 1 && !v72)
        {
          v119 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(&v196, "linear + amo: added implications");
          operations_research::sat::PresolveContext::UpdateRuleStats(v119, &v196, 1, v120, v121);
          if (SHIBYTE(__p[1]) < 0)
          {
            operator delete(v196);
          }

          v122 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          google::protobuf::RepeatedField<int>::operator=((v122 + 16), v182);
          v123 = 0;
          do
          {
            v124 = *v123;
            LODWORD(v194) = *v123;
            if (*(v122 + 60) == 4)
            {
              v125 = *(v122 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v122);
              *(v122 + 60) = 4;
              v126 = *(v122 + 8);
              if (v126)
              {
                v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
              }

              v125 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v126);
              *(v122 + 48) = v125;
              v124 = v194;
            }

            v128 = *(v125 + 4);
            v127 = *(v125 + 5);
            if (v128 == v127)
            {
              google::protobuf::RepeatedField<int>::Grow((v125 + 2), v127, (v127 + 1));
              v128 = *(v125 + 4);
            }

            v129 = v125[3];
            *(v125 + 4) = v128 + 1;
            *(v129 + 4 * v128) = v124;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(this + 17, &v194, &v196);
            if (LOBYTE(__p[1]) == 1)
            {
              *__p[0] = v194;
            }

            ++v123;
          }

          while (v123 != v53);
          operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
        }
      }

      v93 = operations_research::sat::ConstraintProto::mutable_linear(v187);
      if (fixed > (v52 >> 2))
      {
        v96 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v196, "linear + amo: fixed literal implied by enforcement");
        operations_research::sat::PresolveContext::UpdateRuleStats(v96, &v196, 1, v97, v98);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(v196);
        }
      }

      if (fixed >= 1)
      {
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      }
    }

    v99 = v187;
    if (*(v187 + 15) == 12)
    {
      v100 = *(v187 + 6);
    }

    else
    {
      v100 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    v106 = *(v100 + 4);
    if (!v106)
    {
      v110 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v196, "linear + amo: empty after processing");
      operations_research::sat::PresolveContext::UpdateRuleStats(v110, &v196, 1, v111, v112);
      if (SHIBYTE(__p[1]) < 0)
      {
        operator delete(v196);
      }

      operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v187, v113, v114, v115, v116);
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      goto LABEL_63;
    }

    if (v185 != v106)
    {
      if (operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v187, v38, v39, v40, v41))
      {
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (*(v187 + 15) != 12)
        {
          goto LABEL_63;
        }
      }
    }

    if (!*v182)
    {
      goto LABEL_63;
    }

    *(this + 5) = *(this + 4);
    operations_research::Domain::Domain(&v196, 0);
    v108 = *(v187 + 15);
    if (v108 == 12)
    {
      v109 = *(v187 + 6);
    }

    else
    {
      v109 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    v130 = *(v109 + 4);
    if (v130 < 1)
    {
LABEL_232:
      if (v108 == 12)
      {
        v137 = *(v99 + 48);
      }

      else
      {
        v137 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      v139 = *(this + 4);
      v138 = *(this + 5);
      operations_research::Domain::FromFlatSpanOfIntervals(v137[9], *(v137 + 16), &v194, v107);
      v140 = operations_research::sat::ActivityBoundHelper::RemoveEnforcementThatMakesConstraintTrivial(a4, v139, (v138 - v139) >> 4, &v196, &v194, v99);
      if (v194)
      {
        operator delete(v195.n128_u64[0]);
      }

      if (v140 >= 1)
      {
        v141 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v194, "linear + amo: removed enforcement literal");
        operations_research::sat::PresolveContext::UpdateRuleStats(v141, &v194, v140, v142, v143);
        if (v195.n128_i8[15] < 0)
        {
          operator delete(v194);
        }

        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      }

      if (v196)
      {
        operator delete(__p[0]);
      }

      goto LABEL_63;
    }

    v131 = 0;
    while (1)
    {
      v132 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v187 + 15) == 12)
      {
        v132 = *(v187 + 6);
      }

      v133 = v132[3];
      v134 = *(v133 + v131);
      if ((v134 & 0x80000000) != 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v194, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 3599);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v194);
      }

      v135 = v132[6][v131];
      if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(this + 1), *(v133 + v131)))
      {
        LODWORD(v194) = v134;
        v195.n128_u64[0] = v135;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v186, &v194);
        goto LABEL_217;
      }

      operations_research::sat::PresolveContext::DomainOf(&v188, *(this + 1), v134);
      operations_research::Domain::ContinuousMultiplicationBy(&v190, &v188, v135);
      operations_research::Domain::AdditionWith(&v192, &v196, &v190, v136);
      operations_research::Domain::RelaxIfTooComplex(&v194, &v192);
      if (v196)
      {
        operator delete(__p[0]);
      }

      v196 = v194;
      v107 = v195;
      *__p = v195;
      v194 = 0;
      if (v192)
      {
        operator delete(v193);
        if ((v190 & 1) == 0)
        {
LABEL_226:
          if (v188)
          {
            goto LABEL_230;
          }

          goto LABEL_217;
        }
      }

      else if ((v190 & 1) == 0)
      {
        goto LABEL_226;
      }

      operator delete(v191);
      if (v188)
      {
LABEL_230:
        operator delete(v189);
      }

LABEL_217:
      if (v130 == ++v131)
      {
        v99 = v187;
        v108 = *(v187 + 15);
        goto LABEL_232;
      }
    }
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 1;
  do
  {
    v55 = 16 * v51;
    v56 = *(v50 + 16 * v51);
    operations_research::Domain::Domain(&v196, *(*(this + 7) + 16 * v51), *(*(this + 10) + 16 * v51));
    operations_research::Domain::AdditionWith(&v194, &v196, &v202, v57);
    operations_research::Domain::IntersectionWith(&v192, &v194, &v200);
    v58 = operations_research::Domain::IsEmpty(&v192);
    if (v192)
    {
      operator delete(v193);
    }

    if (v58)
    {
      v59 = v53;
      v60 = v53 >> 2;
      if (((v53 >> 2) + 1) >> 62)
      {
        goto LABEL_297;
      }

      if (v53 >> 2 != -1)
      {
        if (!(((v53 >> 2) + 1) >> 62))
        {
          operator new();
        }

LABEL_299:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v60) = v56;
      v53 = 4 * v60 + 4;
      memcpy(0, 0, v59);
    }

    else if (operations_research::Domain::IsIncludedIn(&v194, &v200))
    {
      v61 = v52;
      v62 = v52 >> 2;
      if ((v62 + 1) >> 62)
      {
LABEL_297:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v62 != -1)
      {
        if (!((v62 + 1) >> 62))
        {
          operator new();
        }

        goto LABEL_299;
      }

      MEMORY[0xFFFFFFFFFFFFFFFC] = v56;
      v52 = 0;
      memcpy(0, 0, v61);
    }

    operations_research::Domain::Domain(&v192, *(*(this + 7) + v55 + 8), *(*(this + 10) + v55 + 8));
    operations_research::Domain::AdditionWith(&v190, &v192, &v202, v63);
    operations_research::Domain::IntersectionWith(&v188, &v190, &v200);
    v64 = operations_research::Domain::IsEmpty(&v188);
    if (v188)
    {
      operator delete(v189);
    }

    if (v64)
    {
      v65 = ~v56;
      v67 = v53;
      v68 = v53 >> 2;
      if (((v53 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v53 >> 2 != -1)
      {
        if (!(((v53 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v68) = v65;
      v53 = 4 * v68 + 4;
      memcpy(0, 0, v67);
LABEL_126:
      if (v190)
      {
        goto LABEL_111;
      }

      goto LABEL_127;
    }

    if (!operations_research::Domain::IsIncludedIn(&v190, &v200))
    {
      goto LABEL_126;
    }

    v66 = ~v56;
    v69 = v52;
    v70 = v52 >> 2;
    if (((v52 >> 2) + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v52 >> 2 != -1)
    {
      if (!(((v52 >> 2) + 1) >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v70) = v66;
    v52 = 4 * v70 + 4;
    memcpy(0, 0, v69);
    if (v190)
    {
LABEL_111:
      operator delete(v191);
      if (v192)
      {
        goto LABEL_112;
      }

      goto LABEL_128;
    }

LABEL_127:
    if (v192)
    {
LABEL_112:
      operator delete(v193);
      if ((v194 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_113;
    }

LABEL_128:
    if ((v194 & 1) == 0)
    {
LABEL_129:
      if ((v196 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_130;
    }

LABEL_113:
    operator delete(v195.n128_u64[0]);
    if ((v196 & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_130:
    operator delete(__p[0]);
LABEL_91:
    v51 = v54;
    v50 = *(this + 4);
    ++v54;
  }

  while (v51 < (*(this + 5) - v50) >> 4);
  LODWORD(v71) = *v182;
  v72 = v53 == 0;
  if (*v182 || !v53)
  {
    if (v52)
    {
      v81 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v196, "linear + amo: extracted enforcement literal");
      operations_research::sat::PresolveContext::UpdateRuleStats(v81, &v196, v52 >> 2, v82, v83);
      if (SHIBYTE(__p[1]) < 0)
      {
        operator delete(v196);
      }

      v71 = *(v187 + 4);
      v84 = *(v187 + 5);
      for (j = 0; j != v52; ++j)
      {
        v86 = *j;
        if (v71 == v84)
        {
          google::protobuf::RepeatedField<int>::Grow(v182, v71, (v71 + 1));
          LODWORD(v71) = *(v187 + 4);
          v84 = *(v187 + 5);
        }

        v87 = v71;
        v88 = *(v187 + 3);
        v71 = (v71 + 1);
        *(v187 + 4) = v71;
        *(v88 + 4 * v87) = v86;
      }
    }

    v13 = a4;
    goto LABEL_152;
  }

  v73 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v196, "linear + amo: fixed literal");
  operations_research::sat::PresolveContext::UpdateRuleStats(v73, &v196, v53 >> 2, v74, v75);
  if (SHIBYTE(__p[1]) < 0)
  {
    operator delete(v196);
  }

  v76 = 0;
  while ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), *v76) & 1) != 0)
  {
    if (++v76 == v53)
    {
      operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, v187, v77, v78, v79);
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      break;
    }
  }

LABEL_63:
  if (v198)
  {
    operator delete(*(&v198 + 1));
  }

LABEL_65:
  if (v200)
  {
    operator delete(v201.n128_u64[0]);
  }

LABEL_67:
  if (v202)
  {
    operator delete(v203.n128_u64[0]);
  }
}

void sub_23CA89314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, void *a25, uint64_t a26, void *a27, void *a28, int a29, __int16 a30, char a31, char a32, void *a33, void *a34, int a35, __int16 a36, char a37, char a38)
{
  if (v38)
  {
    operator delete(v38);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (*(v39 - 160))
  {
    operator delete(*(v39 - 152));
  }

  if (*(v39 - 136))
  {
    operator delete(*(v39 - 128));
  }

  if (*(v39 - 112))
  {
    operator delete(*(v39 - 104));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveTimer::AddCounter(void *a1, __int128 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[10];
    v5 = a1[11];
    if (v4 >= v5)
    {
      v8 = a1[9];
      v9 = (v4 - v8) >> 5;
      v10 = v9 + 1;
      if ((v9 + 1) >> 59)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v11 = v5 - v8;
      if (v11 >> 4 > v10)
      {
        v10 = v11 >> 4;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v12 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = 32 * v9;
      *v13 = *a2;
      v14 = *(a2 + 2);
      *(a2 + 8) = 0uLL;
      *a2 = 0;
      *(v13 + 16) = v14;
      *(v13 + 24) = a3;
      v7 = 32 * v9 + 32;
      v15 = a1[9];
      v16 = a1[10] - v15;
      v17 = v13 - v16;
      memcpy((v13 - v16), v15, v16);
      a1[9] = v17;
      a1[10] = v7;
      a1[11] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      v6 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v6;
      *(a2 + 8) = 0uLL;
      *a2 = 0;
      *(v4 + 24) = a3;
      v7 = v4 + 32;
    }

    a1[10] = v7;
  }
}

uint64_t operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  v222 = *MEMORY[0x277D85DE8];
  if (*(a3 + 15) == 12)
  {
    v4 = *(this + 1);
    if ((*(v4 + 416) & 1) == 0)
    {
      v8 = *(a3 + 6);
      v9 = *(v8 + 16);
      v10 = v9;
      v193 = v9;
      v191 = v9;
      if (v9 > 9)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        do
        {
          while (1)
          {
            v20 = *(*(v8 + 24) + 4 * v15);
            v21 = *(*(v8 + 48) + 8 * v15);
            if (v21 >= 1)
            {
              break;
            }

            v18 = operations_research::sat::PresolveContext::MaxOf(v4, v20);
            v16 += operations_research::sat::PresolveContext::MinOf(v4, v20) * v21;
            v17 += v18 * v21;
            if (v193 == ++v15)
            {
              goto LABEL_12;
            }
          }

          v22 = operations_research::sat::PresolveContext::MinOf(v4, v20);
          v16 += operations_research::sat::PresolveContext::MaxOf(v4, v20) * v21;
          v17 += v22 * v21;
          ++v15;
        }

        while (v193 != v15);
LABEL_12:
        if (v193 > 9)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v11 = v9 + 1;
        v13 = *(v4 + 56);
        v12 = *(v4 + 64);
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3);
        if (v10 + 1 <= v14)
        {
          if (v10 + 1 < v14)
          {
            v23 = v13 + 24 * v11;
            if (v12 != v23)
            {
              v24 = *(v4 + 64);
              do
              {
                v25 = *(v24 - 24);
                v24 -= 24;
                if (v25)
                {
                  operator delete(*(v12 - 16));
                }

                v12 = v24;
              }

              while (v24 != v23);
            }

            *(v4 + 64) = v23;
          }
        }

        else
        {
          std::vector<operations_research::Domain>::__append((v4 + 56), v10 + 1 - v14);
        }

        v27 = *(v4 + 80);
        v26 = *(v4 + 88);
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 3);
        if (v11 <= v28)
        {
          if (v11 < v28)
          {
            v29 = v27 + 24 * v11;
            if (v26 != v29)
            {
              v30 = *(v4 + 88);
              do
              {
                v31 = *(v30 - 24);
                v30 -= 24;
                if (v31)
                {
                  operator delete(*(v26 - 16));
                }

                v26 = v30;
              }

              while (v30 != v29);
            }

            *(v4 + 88) = v29;
          }
        }

        else
        {
          std::vector<operations_research::Domain>::__append((v4 + 80), v11 - v28);
        }

        operations_research::Domain::Domain(__p, 0);
        v32 = *(v4 + 80);
        if (v32 == __p)
        {
          operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(__p);
        }

        else
        {
          if (*v32)
          {
            operator delete(v32[1]);
          }

          *v32 = __p[0];
          *(v32 + 1) = *&__p[1];
        }

        operations_research::Domain::Domain(__p, 0);
        v33 = (*(v4 + 56) + 24 * v10);
        if (v33 == __p)
        {
          operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(__p);
        }

        else
        {
          if (*v33)
          {
            operator delete(v33[1]);
          }

          *v33 = __p[0];
          v19 = *&__p[1];
          *(v33 + 1) = *&__p[1];
        }

        if (v193 <= 0)
        {
          v16 = 0;
          v17 = 0;
LABEL_62:
          v43 = *(v4 + 80) + 24 * v10;
          v215 = 0;
          if (*v43 >= 2uLL)
          {
            if (*v43)
            {
              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v215, v43);
            }

            else
            {
              v215 = *v43;
              v19 = *(v43 + 8);
              v216 = v19;
            }
          }

LABEL_66:
          if (*(a3 + 15) == 12)
          {
            v44 = *(a3 + 6);
          }

          else
          {
            v44 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          operations_research::Domain::FromFlatSpanOfIntervals(v44[9], *(v44 + 16), &v213, v19);
          if (operations_research::Domain::IsIncludedIn(&v215, &v213))
          {
            if (a2 != -1)
            {
              v47 = *(this + 1);
              HIBYTE(__p[2]) = 19;
              strcpy(__p, "linear: always true");
              operations_research::sat::PresolveContext::UpdateRuleStats(v47, __p, 1, v45, v46);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            operations_research::sat::ConstraintProto::Clear(a3);
            v5 = 1;
            goto LABEL_299;
          }

          operations_research::Domain::SimplifyUsingImpliedDomain(&v211, &v213, &v215);
          if (operations_research::Domain::IsEmpty(&v211))
          {
            v50 = *(this + 1);
            HIBYTE(__p[2]) = 18;
            strcpy(__p, "linear: infeasible");
            operations_research::sat::PresolveContext::UpdateRuleStats(v50, __p, 1, v48, v49);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            v5 = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a3, v51, v52, v53);
            if ((v211 & 1) == 0)
            {
LABEL_299:
              if (v213)
              {
                operator delete(v214);
                if ((v215 & 1) == 0)
                {
                  return v5 & 1;
                }
              }

              else if ((v215 & 1) == 0)
              {
                return v5 & 1;
              }

              operator delete(v216.n128_u64[0]);
              return v5 & 1;
            }

LABEL_298:
            operator delete(v212);
            goto LABEL_299;
          }

          v54 = v212;
          if ((v211 & 1) == 0)
          {
            v54 = &v212;
          }

          v55 = &v214;
          if (v213)
          {
            v55 = v214;
          }

          if ((((v213 >> 1) ^ (v211 >> 1)) & 0xFFFFFFFFFFFFFFFLL) == 0)
          {
            v57 = &v54[2 * (v211 >> 1)];
            v58 = &v55[2 * (v213 >> 1)];
            if ((v211 & 0x1FFFFFFFFFFFFFFELL) == 0 || (v213 & 0x1FFFFFFFFFFFFFFELL) == 0)
            {
LABEL_95:
              v56 = v55 != v58 || v54 != v57;
              if (a2 == -1)
              {
                goto LABEL_105;
              }

              goto LABEL_102;
            }

            while (*v54 == *v55 && v54[1] == v55[1])
            {
              v54 += 2;
              v55 += 2;
              if (v54 == v57 || v55 == v58)
              {
                goto LABEL_95;
              }
            }
          }

          v56 = 1;
          if (a2 == -1)
          {
LABEL_105:
            if (*(a3 + 15) == 12)
            {
              v62 = *(a3 + 6);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(a3);
              *(a3 + 15) = 12;
              v63 = *(a3 + 1);
              if (v63)
              {
                v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
              }

              v62 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v63);
              *(a3 + 6) = v62;
            }

            operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v211, v62);
            if (*(a3 + 4) > 1)
            {
              v5 = 0;
              if ((v211 & 1) == 0)
              {
                goto LABEL_299;
              }

              goto LABEL_298;
            }

            v210 = 0;
            operations_research::Domain::Negation(&v208, &v211);
            operations_research::Domain::Domain(&v206, 0);
            v204 = 0;
            *&v202[1] = 0;
            v189 = 0;
            v190 = v193 - 1;
            LODWORD(v68) = v193;
LABEL_114:
            while (2)
            {
              while (2)
              {
                while (2)
                {
                  while (2)
                  {
                    v69 = v68;
LABEL_115:
                    v68 = (v69 - 1);
                    if (v69 - 1 < 0)
                    {
LABEL_283:
                      if (a2 == -1)
                      {
                        if (v210)
                        {
                          v183 = *(this + 1);
                          std::string::basic_string[abi:ne200100]<0>(__p, "linear: reduced variable domains in derived constraint");
                          operations_research::sat::PresolveContext::UpdateRuleStats(v183, __p, 1, v184, v185);
                          if (SHIBYTE(__p[2]) < 0)
                          {
                            operator delete(__p[0]);
                          }
                        }
                      }

                      else
                      {
                        if (v210)
                        {
                          v180 = *(this + 1);
                          std::string::basic_string[abi:ne200100]<0>(__p, "linear: reduced variable domains");
                          operations_research::sat::PresolveContext::UpdateRuleStats(v180, __p, 1, v181, v182);
                          if (SHIBYTE(__p[2]) < 0)
                          {
                            operator delete(__p[0]);
                          }
                        }

                        if (v189)
                        {
                          v187 = operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, a3, v64, v65, v66);
                          goto LABEL_293;
                        }
                      }

                      v187 = 0;
LABEL_293:
                      if (v202[1])
                      {
                        operator delete(v203);
                        if ((v204 & 1) == 0)
                        {
LABEL_295:
                          if ((v206 & 1) == 0)
                          {
                            goto LABEL_296;
                          }

                          goto LABEL_306;
                        }
                      }

                      else if ((v204 & 1) == 0)
                      {
                        goto LABEL_295;
                      }

                      operator delete(v205);
                      if ((v206 & 1) == 0)
                      {
LABEL_296:
                        v5 = v187;
                        if ((v208 & 1) == 0)
                        {
                          goto LABEL_297;
                        }

                        goto LABEL_307;
                      }

LABEL_306:
                      operator delete(v207);
                      v5 = v187;
                      if ((v208 & 1) == 0)
                      {
LABEL_297:
                        if ((v211 & 1) == 0)
                        {
                          goto LABEL_299;
                        }

                        goto LABEL_298;
                      }

LABEL_307:
                      operator delete(v209);
                      if ((v211 & 1) == 0)
                      {
                        goto LABEL_299;
                      }

                      goto LABEL_298;
                    }

                    while (1)
                    {
                      v70 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                      if (*(a3 + 15) == 12)
                      {
                        v70 = *(a3 + 6);
                      }

                      v71 = *(v70[3] + v68);
                      v202[0] = v71;
                      v72 = v70[6][v68];
                      if (v193 > 9)
                      {
                        v74 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v71);
                        v75 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v202[0]);
                        v76 = v74 * v72;
                        if (v72 >= 0)
                        {
                          v77 = v75 * v72;
                        }

                        else
                        {
                          v77 = v74 * v72;
                        }

                        if (v72 < 0)
                        {
                          v76 = v75 * v72;
                        }

                        operations_research::Domain::Domain(__p, v17 - v76, v16 - v77);
                      }

                      else
                      {
                        operations_research::Domain::AdditionWith(&v220, &v206, (*(v4 + 56) + 24 * v69), v67);
                        operations_research::Domain::RelaxIfTooComplex(__p, &v220);
                        if (v206)
                        {
                          operator delete(v207);
                        }

                        v206 = __p[0];
                        v73 = *&__p[1];
                        v207 = *&__p[1];
                        __p[0] = 0;
                        if (v220)
                        {
                          operator delete(v221.n128_u64[0]);
                        }

                        operations_research::Domain::AdditionWith(__p, (*(v4 + 80) + 24 * v68), &v206, v73);
                      }

                      if (v202[1])
                      {
                        operator delete(v203);
                      }

                      *&v202[1] = __p[0];
                      v203 = *&__p[1];
                      operations_research::Domain::AdditionWith(&v220, &v202[1], &v208, *&__p[1]);
                      operations_research::Domain::InverseMultiplicationBy(__p, &v220, -v72);
                      if (v204)
                      {
                        operator delete(v205);
                      }

                      v204 = __p[0];
                      v205 = *&__p[1];
                      __p[0] = 0;
                      if (v220)
                      {
                        operator delete(v221.n128_u64[0]);
                      }

                      v78 = *(a3 + 4);
                      if (v78 == 1)
                      {
                        if ((v202[0] & 0x80000000) != 0)
                        {
                          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 3708);
                          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
                        }

                        if ((operations_research::Domain::IsIncludedIn((*(*(this + 1) + 424) + 24 * v202[0]), &v204) & 1) == 0)
                        {
                          v79 = *(this + 1);
                          v80 = **(a3 + 3);
                          v81 = v202[0];
                          v200 = 0;
                          if (v204 >= 2)
                          {
                            if (v204)
                            {
                              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v200, &v204);
                            }

                            else
                            {
                              v200 = v204;
                              v201 = v205;
                            }
                          }

                          operations_research::sat::DomainDeductions::AddDeduction(v79 + 248, v80, v81, &v200);
                          if (v200)
                          {
                            operator delete(v201);
                          }
                        }
                      }

                      else if (!v78 && (operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v202[0], &v204, &v210) & 1) == 0)
                      {
                        v187 = 1;
                        goto LABEL_293;
                      }

                      IsFixed = operations_research::sat::PresolveContext::IsFixed(*(this + 1), v202[0]);
                      v83 = a2 == -1 || IsFixed;
                      if (v83)
                      {
                        v189 |= IsFixed;
                        goto LABEL_114;
                      }

                      if (*(a3 + 4))
                      {
                        goto LABEL_114;
                      }

                      v84 = operations_research::Domain::Min(&v211);
                      if (v84 == operations_research::Domain::Max(&v211) || !operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(*(this + 1), v202[0]))
                      {
                        break;
                      }

                      if (v72 > 0 == *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>>((*(this + 1) + 512), v202) < 1)
                      {
                        operations_research::sat::PresolveContext::DomainOf(__p, *(this + 1), v202[0]);
                        if (__p[0])
                        {
                          operator delete(__p[1]);
                        }

                        if (!CanBeFixedToMax)
                        {
                          break;
                        }

                        v90 = operations_research::Domain::Max(&v211);
                        operations_research::Domain::Domain(__p, v90);
                      }

                      else
                      {
                        operations_research::sat::PresolveContext::DomainOf(__p, *(this + 1), v202[0]);
                        if (__p[0])
                        {
                          operator delete(__p[1]);
                        }

                        if (!CanBeFixedToMin)
                        {
                          break;
                        }

                        v87 = operations_research::Domain::Min(&v211);
                        operations_research::Domain::Domain(__p, v87);
                      }

                      if (v211)
                      {
                        operator delete(v212);
                      }

                      v211 = __p[0];
                      v212 = *&__p[1];
                      v91 = *(this + 1);
                      std::string::basic_string[abi:ne200100]<0>(__p, "linear: tightened into equality");
                      operations_research::sat::PresolveContext::UpdateRuleStats(v91, __p, 1, v92, v93);
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v94 = operations_research::sat::ConstraintProto::mutable_linear(a3);
                      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v211, v94);
                      operations_research::Domain::Negation(__p, &v211);
                      if (v208)
                      {
                        operator delete(v209);
                      }

                      v208 = __p[0];
                      v209 = *&__p[1];
                      operations_research::Domain::Domain(__p, 0);
                      if (v206)
                      {
                        operator delete(v207);
                      }

                      v206 = __p[0];
                      v67 = *&__p[1];
                      v207 = *&__p[1];
                      v68 = v190;
                      v69 = v193;
                      if ((v190 & 0x80000000) != 0)
                      {
                        goto LABEL_283;
                      }
                    }

                    v95 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                    if (*(a3 + 15) == 12)
                    {
                      v95 = *(a3 + 6);
                    }

                    if (*(v95 + 4) < 3)
                    {
                      continue;
                    }

                    break;
                  }

                  v96 = operations_research::Domain::Min(&v211);
                  if (v96 != operations_research::Domain::Max(&v211))
                  {
                    continue;
                  }

                  break;
                }

                v97 = *(this + 1);
                v98 = v72 >= 0 ? v72 : -v72;
                if ((*(v97 + 16) & 1) != 0 || v98 != 1 || *(*(v97 + 392) + 680) < 1)
                {
                  continue;
                }

                break;
              }

              v99 = (*(v97 + 672) + 32 * v202[0]);
              LODWORD(__p[0]) = -1;
              v100 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::contains<int>(v99, __p);
              v101 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              if (*(a3 + 15) == 12)
              {
                v101 = *(a3 + 6);
              }

              v102 = (*(*(this + 1) + 672) + 32 * v202[0]);
              v103 = (v102[1] >> 1) - v100 - 1;
              if ((*(v101 + 4) - 1) * v103 > v103 + *(v101 + 4))
              {
                continue;
              }

              break;
            }

            v188 = v100;
            v197 = 0;
            v198 = 0;
            v199 = 0;
            v105 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin(v102);
            if (v105)
            {
              v106 = v104;
              do
              {
                v107 = *v106;
                LODWORD(__p[0]) = v107;
                if (v107 != -1)
                {
                  if (v107 == -2)
                  {
                    goto LABEL_261;
                  }

                  if (v107 != a2)
                  {
                    v108 = **(this + 1);
                    v110 = *(v108 + 48);
                    v109 = (v108 + 48);
                    v111 = (v110 + 8 * v107 + 7);
                    if ((v110 & 1) == 0)
                    {
                      v111 = v109;
                    }

                    v112 = *v111;
                    if (*(v112 + 60) != 12)
                    {
                      goto LABEL_261;
                    }

                    v113 = *(v112 + 16);
                    if (v113)
                    {
                      v114 = *(v112 + 24);
                      v115 = 4 * v113;
                      do
                      {
                        v116 = *v114;
                        if (~*v114 > *v114)
                        {
                          v116 = ~v116;
                        }

                        if (v116 == v202[0])
                        {
                          goto LABEL_261;
                        }

                        ++v114;
                        v115 -= 4;
                      }

                      while (v115);
                    }

                    std::vector<int>::push_back[abi:ne200100](&v197, __p);
                  }
                }

                v118 = *(v105 + 1);
                v105 = (v105 + 1);
                LOBYTE(v117) = v118;
                ++v106;
                if (v118 <= -2)
                {
                  do
                  {
                    v119 = __clz(__rbit64((*v105 | ~(*v105 >> 7)) & 0x101010101010101)) >> 3;
                    v105 = (v105 + v119);
                    v106 += v119;
                    v117 = *v105;
                  }

                  while (v117 < -1);
                }
              }

              while (v117 != 255);
            }

            operations_research::sat::PresolveContext::DomainOf(__p, *(this + 1), v202[0]);
            v120 = operations_research::Domain::operator!=(__p, &v204);
            if (__p[0])
            {
              operator delete(__p[1]);
            }

            if (!v120)
            {
              goto LABEL_242;
            }

            v121 = v197;
            if (v198 - v197 != 4)
            {
              v133 = 1;
              goto LABEL_270;
            }

            v122 = **(this + 1);
            v124 = *(v122 + 48);
            v123 = (v122 + 48);
            v125 = v124 + 8 * *v197 + 7;
            if (v124)
            {
              v123 = v125;
            }

            v126 = *v123;
            if (*(v126 + 16))
            {
              goto LABEL_261;
            }

            v127 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (*(v126 + 60) == 12)
            {
              v127 = *(v126 + 48);
            }

            if (*(v127 + 4) > 100)
            {
              goto LABEL_261;
            }

            operations_research::Domain::FromFlatSpanOfIntervals(v127[9], *(v127 + 16), __p, v67);
            v128 = *(v127 + 4);
            if (v128 < 1)
            {
              goto LABEL_239;
            }

            v129 = 0;
            v186 = 0;
            while (1)
            {
              while (1)
              {
                v130 = *(v127[3] + v129);
                v131 = v127[6][v129];
                if (v130 != v202[0])
                {
                  break;
                }

                v186 += v131;
                if (++v129 >= v128)
                {
                  goto LABEL_231;
                }
              }

              operations_research::sat::PresolveContext::DomainOf(v195, *(this + 1), v130);
              operations_research::Domain::MultiplicationBy(&v196, v195, 0, -v131);
              operations_research::Domain::AdditionWith(&v217, __p, &v196, v132);
              operations_research::Domain::RelaxIfTooComplex(&v220, &v217);
              if (__p[0])
              {
                operator delete(__p[1]);
              }

              __p[0] = v220;
              v67 = v221;
              *&__p[1] = v221;
              v220 = 0;
              if (v217)
              {
                operator delete(v218);
                if (v196.__r_.__value_.__s.__data_[0])
                {
LABEL_228:
                  operator delete(v196.__r_.__value_.__l.__size_);
                  if ((v195[0] & 1) == 0)
                  {
                    goto LABEL_225;
                  }

LABEL_224:
                  operator delete(v195[1]);
                  goto LABEL_225;
                }
              }

              else if (v196.__r_.__value_.__s.__data_[0])
              {
                goto LABEL_228;
              }

              if (v195[0])
              {
                goto LABEL_224;
              }

LABEL_225:
              v128 = *(v127 + 4);
              if (++v129 >= v128)
              {
LABEL_231:
                if (!v186)
                {
                  goto LABEL_239;
                }

                operations_research::Domain::InverseMultiplicationBy(&v220, __p, v186);
                if (__p[0])
                {
                  operator delete(__p[1]);
                }

                __p[0] = v220;
                *&__p[1] = v221;
                if (operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v202[0], __p, 0))
                {
                  if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v202[0]))
                  {
                    goto LABEL_239;
                  }

                  operations_research::Domain::IntersectionWith(&v220, &v204, __p);
                  operations_research::sat::PresolveContext::DomainOf(&v217, *(this + 1), v202[0]);
                  v134 = operations_research::Domain::operator!=(&v220, &v217);
                  if (v217)
                  {
                    operator delete(v218);
                    if (v220)
                    {
                      goto LABEL_277;
                    }

LABEL_238:
                    if (v134)
                    {
                      goto LABEL_239;
                    }

LABEL_278:
                    v177 = *(this + 1);
                    std::string::basic_string[abi:ne200100]<0>(&v220, "linear: doubleton free");
                    operations_research::sat::PresolveContext::UpdateRuleStats(v177, &v220, 1, v178, v179);
                    if (v221.n128_i8[15] < 0)
                    {
                      operator delete(v220);
                    }

                    v136 = 0;
                    v135 = 1;
                    if (__p[0])
                    {
LABEL_240:
                      operator delete(__p[1]);
                    }
                  }

                  else
                  {
                    if ((v220 & 1) == 0)
                    {
                      goto LABEL_238;
                    }

LABEL_277:
                    operator delete(v221.n128_u64[0]);
                    if (!v134)
                    {
                      goto LABEL_278;
                    }

LABEL_239:
                    v135 = 0;
                    v136 = 7;
                    if (__p[0])
                    {
                      goto LABEL_240;
                    }
                  }
                }

                else
                {
                  v135 = 0;
                  v187 = 0;
                  v136 = 1;
                  if (__p[0])
                  {
                    goto LABEL_240;
                  }
                }

                if (v135)
                {
LABEL_242:
                  if (!v188 || (operations_research::sat::PresolveContext::SubstituteVariableInObjective(*(this + 1), v202[0], v72, a3) & 1) != 0)
                  {
                    operations_research::sat::ConstraintProto::ConstraintProto(__p, 0);
                    std::__sort<std::__less<int,int> &,int *>();
                    v139 = v197;
                    v138 = v198;
                    v140 = v197;
                    if (v197 == v198)
                    {
LABEL_257:
                      v163 = *(this + 1);
                      v220 = "linear: variable substitution ";
                      v221.n128_u64[0] = 30;
                      v164 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v140 - v139) >> 2, v219, v137);
                      v217 = v219;
                      v218 = (v164 - v219);
                      absl::lts_20240722::StrCat(&v220, &v217, &v196);
                      operations_research::sat::PresolveContext::UpdateRuleStats(v163, &v196, 1, v165, v166);
                      if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v196.__r_.__value_.__l.__data_);
                      }

                      v167 = *(this + 1);
                      if (*(*(v167 + 84) + 32 * v202[0] + 8) >> 1 != 1)
                      {
                        absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(*(*(v167 + 84) + 32 * v202[0] + 8) >> 1, 1, "context_->VarToConstraints(var).size() == 1");
                      }

                      operations_research::sat::PresolveContext::MarkVariableAsRemoved(v167, v202[0]);
                      v168 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0xF6C);
                      operations_research::sat::ConstraintProto::CopyFrom(v168, a3);
                      v169 = operations_research::sat::ConstraintProto::mutable_linear(v168);
                      v170 = google::protobuf::RepeatedField<int>::at(v169 + 4, 0);
                      v171 = google::protobuf::RepeatedField<int>::at(v169 + 4, v68);
                      v172 = *v170;
                      *v170 = *v171;
                      *v171 = v172;
                      v173 = google::protobuf::RepeatedField<long long>::at(v169 + 10, 0);
                      v174 = google::protobuf::RepeatedField<long long>::at(v169 + 10, v68);
                      v175 = *v173;
                      *v173 = *v174;
                      *v174 = v175;
                      operations_research::sat::ConstraintProto::Clear(a3);
                      v136 = 1;
                      v187 = 1;
                    }

                    else
                    {
                      while (1)
                      {
                        v141 = **(this + 1);
                        v143 = *(v141 + 48);
                        v142 = (v141 + 48);
                        v144 = *v139;
                        v145 = v143 + 8 * v144 + 7;
                        if (v143)
                        {
                          v142 = v145;
                        }

                        operations_research::sat::ConstraintProto::CopyFrom(__p, *v142);
                        v147 = **(this + 1);
                        v149 = *(v147 + 48);
                        v148 = (v147 + 48);
                        v150 = v149 + 8 * v144 + 7;
                        if (v149)
                        {
                          v148 = v150;
                        }

                        v154 = operations_research::sat::SubstituteVariable(v202[0], v72, a3, *v148, v146);
                        v155 = **(this + 1);
                        v157 = *(v155 + 48);
                        v156 = (v155 + 48);
                        v158 = v157 + 8 * v144 + 7;
                        if (v157)
                        {
                          v156 = v158;
                        }

                        v159 = *v156;
                        if ((v154 & 1) == 0)
                        {
                          break;
                        }

                        v160 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                        if (*(v159 + 60) == 12)
                        {
                          v160 = *(v159 + 48);
                        }

                        v161 = operations_research::sat::PossibleIntegerOverflow(v155, v160[3], *(v160 + 4), v160[6], *(v160 + 10), 0);
                        v162 = *(this + 1);
                        if (v161)
                        {
                          v176 = (v162->__begin_ + 12);
                          if (*v176)
                          {
                            v176 = (*v176 + 8 * v144 + 7);
                          }

                          operations_research::sat::ConstraintProto::CopyFrom(*v176, __p);
                          goto LABEL_267;
                        }

                        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v162, v144);
                        if (++v139 == v138)
                        {
                          v139 = v197;
                          v140 = v198;
                          goto LABEL_257;
                        }
                      }

                      if (operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, v159, v151, v152, v153))
                      {
                        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v144);
                      }

LABEL_267:
                      v136 = 7;
                    }

                    operations_research::sat::ConstraintProto::~ConstraintProto(__p);
                    goto LABEL_269;
                  }

LABEL_261:
                  v136 = 7;
                }

LABEL_269:
                v121 = v197;
                v133 = v136 == 7;
LABEL_270:
                if (v121)
                {
                  v198 = v121;
                  operator delete(v121);
                }

                v69 = v68;
                if (!v133)
                {
                  goto LABEL_293;
                }

                goto LABEL_115;
              }
            }
          }

LABEL_102:
          if (v56)
          {
            v61 = *(this + 1);
            strcpy(__p, "linear: simplified rhs");
            HIBYTE(__p[2]) = 22;
            operations_research::sat::PresolveContext::UpdateRuleStats(v61, __p, 1, v48, v49);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_105;
        }

        v34 = 0;
        v35 = 0;
        do
        {
          v36 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a3 + 15) == 12)
          {
            v36 = *(a3 + 6);
          }

          v37 = v36[6][v35];
          operations_research::sat::PresolveContext::DomainOf(&v220, *(this + 1), *(v36[3] + v35));
          operations_research::Domain::MultiplicationBy(__p, &v220, 0, v37);
          v39 = *(v4 + 56);
          if ((v39 + v34) == __p)
          {
            if (__p[0])
            {
              operator delete(__p[1]);
            }
          }

          else
          {
            if (*(v39 + v34))
            {
              operator delete(*(v39 + v34 + 8));
            }

            v40 = v39 + v34;
            *v40 = __p[0];
            v38 = *&__p[1];
            *(v40 + 8) = *&__p[1];
            __p[0] = 0;
          }

          if (v220)
          {
            operator delete(v221.n128_u64[0]);
          }

          operations_research::Domain::AdditionWith(&v220, (*(v4 + 80) + v34), (*(v4 + 56) + v34), v38);
          v19 = operations_research::Domain::RelaxIfTooComplex(__p, &v220);
          v41 = *(v4 + 80);
          v42 = (v41 + v34 + 24);
          if (v42 == __p)
          {
            if (__p[0])
            {
              operator delete(__p[1]);
            }
          }

          else
          {
            if (*v42)
            {
              operator delete(*(v41 + v34 + 32));
            }

            *v42 = __p[0];
            v19 = *&__p[1];
            *(v41 + v34 + 32) = *&__p[1];
            __p[0] = 0;
          }

          if (v220)
          {
            operator delete(v221.n128_u64[0]);
          }

          v34 += 24;
          ++v35;
        }

        while (24 * v193 != v34);
        v17 = 0;
        v16 = 0;
        if (v193 > 9)
        {
LABEL_60:
          operations_research::Domain::Domain(&v215, v17, v16);
          goto LABEL_66;
        }
      }

      LODWORD(v10) = v191;
      goto LABEL_62;
    }
  }

  v5 = 0;
  return v5 & 1;
}

void sub_23CA8ADC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, void *a32, void *a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, char a41, void *a42, uint64_t a43, uint64_t a44, char a45, void *a46, uint64_t a47, char a48, void *a49, uint64_t a50, char a51, void *a52, uint64_t a53, char a54, void *a55, uint64_t a56, uint64_t a57, char a58, void *a59)
{
  if (*(v59 - 121) < 0)
  {
    operator delete(*(v59 - 144));
  }

  if (a17)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a45)
  {
    operator delete(a46);
    if ((a48 & 1) == 0)
    {
LABEL_9:
      if ((a51 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if ((a48 & 1) == 0)
  {
    goto LABEL_9;
  }

  operator delete(a49);
  if ((a51 & 1) == 0)
  {
LABEL_10:
    if ((a54 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    operator delete(a55);
LABEL_16:
    if (a58)
    {
      operator delete(a59);
    }

    if (*(v59 - 240))
    {
      operator delete(*(v59 - 232));
    }

    if ((*(v59 - 216) & 1) == 0)
    {
      _Unwind_Resume(exception_object);
    }

    operator delete(*(v59 - 208));
    _Unwind_Resume(exception_object);
  }

LABEL_14:
  operator delete(a52);
  if ((a54 & 1) == 0)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t operations_research::sat::anonymous namespace::FixLiteralFromSet(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = *(a2 + 16);
  if (v4 < 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v5 = *(a2 + 24);
    v6 = *(a2 + 48);
    v7 = *a1;
    if (*a1 < 2)
    {
      if (a1[1] < 2)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(a2 + 16);
        goto LABEL_29;
      }

      v10 = 0;
      v9 = 0;
      v8 = 0;
      v36 = *(a2 + 48);
      v37 = *(a2 + 24);
      while (1)
      {
        v39 = *v37++;
        v38 = v39;
        v41 = *v36++;
        v40 = v41;
        v42 = *(a1 + 4);
        if (v42 == v38)
        {
          break;
        }

        if ((v38 ^ v42) == 0xFFFFFFFF)
        {
LABEL_28:
          v8 = (v8 + 1);
          if (!--v4)
          {
            goto LABEL_29;
          }
        }

        else
        {
          *(v5 + 4 * v10) = v38;
          *(v6 + 8 * v10++) = v40;
          if (!--v4)
          {
            goto LABEL_29;
          }
        }
      }

      v9 += v40;
      goto LABEL_28;
    }

    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    a3.n128_u16[0] = -32640;
    a3.n128_u8[2] = 0x80;
    a3.n128_u8[3] = 0x80;
    a3.n128_u8[4] = 0x80;
    a3.n128_u8[5] = 0x80;
    a3.n128_u8[6] = 0x80;
    a3.n128_u8[7] = 0x80;
    do
    {
LABEL_14:
      v15 = 0;
      v17 = *(v5 + 4 * v11);
      v18 = *(v6 + 8 * v11);
      _X1 = a1[2];
      __asm { PRFM            #4, [X1] }

      v25 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17));
      v16 = (_X1 >> 12) ^ (v25 >> 7);
      v26 = vdup_n_s8(v25 & 0x7F);
      v27 = a1[3];
      while (1)
      {
        v12 = v16 & v7;
        v13 = *(_X1 + v12);
        v14 = vceq_s8(v13, v26);
        if (v14)
        {
          break;
        }

LABEL_10:
        if (vceq_s8(v13, a3.n128_u64[0]))
        {
          v28 = 0;
          v29 = ~v17;
          __asm { PRFM            #4, [X1] }

          v31 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29));
          v32 = vdup_n_s8(v31 & 0x7F);
          v33 = ((_X1 >> 12) ^ (v31 >> 7)) & v7;
          v34 = *(_X1 + v33);
          v35 = vceq_s8(v34, v32);
          if (!v35)
          {
            goto LABEL_18;
          }

LABEL_16:
          while (*(v27 + 4 * ((v33 + (__clz(__rbit64(v35)) >> 3)) & v7)) != v29)
          {
            v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v35)
            {
LABEL_18:
              while (!*&vceq_s8(v34, a3.n128_u64[0]))
              {
                v28 += 8;
                v33 = (v28 + v33) & v7;
                v34 = *(_X1 + v33);
                v35 = vceq_s8(v34, v32);
                if (v35)
                {
                  goto LABEL_16;
                }
              }

              *(v5 + 4 * v10) = v17;
              *(v6 + 8 * v10++) = v18;
              if (++v11 != v4)
              {
                goto LABEL_14;
              }

              goto LABEL_29;
            }
          }

          goto LABEL_13;
        }

        v15 += 8;
        v16 = v15 + v12;
      }

      while (*(v27 + 4 * ((v12 + (__clz(__rbit64(v14)) >> 3)) & v7)) != v17)
      {
        v14 &= ((v14 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      v9 += v18;
LABEL_13:
      v8 = (v8 + 1);
      ++v11;
    }

    while (v11 != v4);
  }

LABEL_29:
  if (*(a2 + 16) <= v10)
  {
    if (*(a2 + 40) <= v10)
    {
LABEL_31:
      if (!v9)
      {
        return v8;
      }

      goto LABEL_35;
    }
  }

  else
  {
    *(a2 + 16) = v10;
    if (*(a2 + 40) <= v10)
    {
      goto LABEL_31;
    }
  }

  *(a2 + 40) = v10;
  if (!v9)
  {
    return v8;
  }

LABEL_35:
  operations_research::Domain::FromFlatSpanOfIntervals(*(a2 + 72), *(a2 + 64), v46, a3);
  operations_research::Domain::Domain(v45, -v9);
  operations_research::Domain::AdditionWith(v47, v46, v45, v43);
  operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v47, a2);
  if ((v47[0] & 1) == 0)
  {
    if ((v45[0] & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    operator delete(v45[1]);
    if ((v46[0] & 1) == 0)
    {
      return v8;
    }

    goto LABEL_41;
  }

  operator delete(v47[1]);
  if (v45[0])
  {
    goto LABEL_40;
  }

LABEL_37:
  if ((v46[0] & 1) == 0)
  {
    return v8;
  }

LABEL_41:
  operator delete(v46[1]);
  return v8;
}

void sub_23CA8B42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *__p)
{
  if (a16)
  {
    operator delete(__p);
    if ((a10 & 1) == 0)
    {
LABEL_3:
      if ((a13 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a10 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  if ((a13 & 1) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a14);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::Domain::operator!=(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = a1[1];
  v3 = a1 + 1;
  v4 = v5;
  if ((v2 & 1) == 0)
  {
    v4 = v3;
  }

  v6 = *a2;
  v9 = a2[1];
  v7 = a2 + 1;
  v8 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = v7;
  }

  if ((((v6 >> 1) ^ (v2 >> 1)) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v11 = &v4[2 * (v2 >> 1)];
  v12 = &v8[2 * (v6 >> 1)];
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0 && (v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    while (*v4 == *v8 && v4[1] == v8[1])
    {
      v4 += 2;
      v8 += 2;
      if (v4 == v11 || v8 == v12)
      {
        return v8 != v12 || v4 != v11;
      }
    }

    return 1;
  }

  return v8 != v12 || v4 != v11;
}

uint64_t operations_research::sat::anonymous namespace::RhsCanBeFixedToMin(uint64_t this, operations_research::Domain *a2, const operations_research::Domain *a3, const operations_research::Domain *a4, const operations_research::Domain *a5)
{
  if (this >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = -this;
  }

  if (v5 != 1 || (*a2 & 0x1FFFFFFFELL) != 2)
  {
    return 0;
  }

  if (this == -1)
  {
    v14 = operations_research::Domain::Max(a3);
    v15 = v14 - operations_research::Domain::Max(a2);
    if (v15 > operations_research::Domain::Min(a4))
    {
      return 0;
    }
  }

  else
  {
    if (this != 1)
    {
      return 0;
    }

    v10 = operations_research::Domain::Max(a3);
    v11 = operations_research::Domain::Min(a2) + v10;
    if (v11 > operations_research::Domain::Min(a4))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t operations_research::sat::anonymous namespace::RhsCanBeFixedToMax(uint64_t this, operations_research::Domain *a2, const operations_research::Domain *a3, const operations_research::Domain *a4, const operations_research::Domain *a5)
{
  if (this >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = -this;
  }

  if (v5 != 1 || (*a2 & 0x1FFFFFFFELL) != 2)
  {
    return 0;
  }

  if (this == -1)
  {
    v14 = operations_research::Domain::Min(a3);
    v15 = v14 - operations_research::Domain::Min(a2);
    if (v15 < operations_research::Domain::Max(a4))
    {
      return 0;
    }
  }

  else
  {
    if (this != 1)
    {
      return 0;
    }

    v10 = operations_research::Domain::Min(a3);
    v11 = operations_research::Domain::Max(a2) + v10;
    if (v11 < operations_research::Domain::Max(a4))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t google::protobuf::RepeatedField<int>::at(unsigned int *a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::RepeatedField<int>::at(a2, v3);
  }

  if (*a1 <= a2)
  {
    google::protobuf::RepeatedField<int>::at(a2, *a1, v3);
  }

  return *(a1 + 1) + 4 * a2;
}

uint64_t google::protobuf::RepeatedField<long long>::at(unsigned int *a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::RepeatedField<int>::at(a2, v3);
  }

  if (*a1 <= a2)
  {
    google::protobuf::RepeatedField<int>::at(a2, *a1, v3);
  }

  return *(a1 + 1) + 8 * a2;
}

void operations_research::sat::CpModelPresolver::LowerThanCoeffStrengthening(operations_research::sat::PresolveContext **this, int a2, uint64_t a3, uint64_t a4, void (****a5)(operations_research::sat::LinearConstraintProto *__hidden this))
{
  v5 = a5;
  v6 = a4;
  if (*(a5 + 15) == 12)
  {
    v7 = a5[6];
    v8 = *(v7 + 4);
    v26 = a4 - a3;
    if (a4 - a3 < a3)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v7 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v8 = off_2810BEE58;
    v26 = a4 - a3;
    if (a4 - a3 < a3)
    {
      goto LABEL_29;
    }
  }

  if (v8 < 1)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v25 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v17 = v7[6][v9];
      if (v17 >= 0)
      {
        v18 = v7[6][v9];
      }

      else
      {
        v18 = -v17;
      }

      if (v18 <= v26)
      {
        if (v17)
        {
          v19 = v18;
          do
          {
            v14 = v19;
            v19 = v11 % v19;
            v11 = v14;
          }

          while (v19);
        }

        else
        {
          v14 = v11;
        }

        if (v12 <= v18)
        {
          v12 = v18;
        }

        v15 = operations_research::sat::PresolveContext::MaxOf(this[1], *(v7[3] + v9));
        v16 = operations_research::sat::PresolveContext::MinOf(this[1], *(v7[3] + v9));
        v25 += v15 - v16;
        v10 += (v15 - v16) * v18;
        v11 = v14;
        v6 = a4;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  if (a3 <= 0)
  {
    operations_research::sat::CpModelPresolver::LowerThanCoeffStrengthening(a3, &v28);
  }

  if (v12 < a3)
  {
    operations_research::sat::CpModelPresolver::LowerThanCoeffStrengthening(a3, v12, &v28);
  }

  if (v10 <= v6)
  {
    operator new();
  }

  if (v6 / a3 == v6 / v12)
  {
    operator new();
  }

  v5 = a5;
  if (v11 >= 2)
  {
    operator new();
  }

LABEL_29:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v21 = v7[6][i];
      if (v21 < 0)
      {
        v21 = -v21;
      }

      if (v6 >= v21)
      {
        if (v21 > v26 && v6 > v21)
        {
          operator new();
        }
      }

      else if (!*(v5 + 4))
      {
        operator new();
      }
    }
  }
}

void sub_23CA8BFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, char a21, uint64_t a22)
{
  if (*(v22 - 81) < 0)
  {
    operator delete(*(v22 - 104));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ExtractEnforcementLiteralFromLinearConstraint(operations_research::sat::PresolveContext **this, int a2, operations_research::sat::ConstraintProto *a3)
{
  if (*(a3 + 15) == 12 && (*(this[1] + 416) & 1) == 0)
  {
    v3 = *(a3 + 6);
    v62 = *(v3 + 16);
    if (v62 >= 2)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v12 = *(*(v3 + 24) + 4 * v4);
        v13 = *(v3 + 48);
        v14 = *(v13 + 8 * v4);
        if (v14 < 1)
        {
          if (v7 <= -v14)
          {
            v7 = -v14;
          }

          if (v8 >= -v14)
          {
            v8 = -v14;
          }

          v9 = operations_research::sat::PresolveContext::MaxOf(this[1], v12);
          v10 = operations_research::sat::PresolveContext::MinOf(this[1], v12);
        }

        else
        {
          if (v7 <= v14)
          {
            v7 = *(v13 + 8 * v4);
          }

          if (v14 < v8)
          {
            v8 = *(v13 + 8 * v4);
          }

          v9 = operations_research::sat::PresolveContext::MinOf(this[1], v12);
          v10 = operations_research::sat::PresolveContext::MaxOf(this[1], v12);
        }

        v5 += v9 * v14;
        v6 += v10 * v14;
        ++v4;
      }

      while (v62 != v4);
      v15 = this;
      if (v7 != 1)
      {
        v16 = *(a3 + 15);
        if (v16 == 12)
        {
          v17 = *(a3 + 6);
        }

        else
        {
          v17 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        v18 = v5;
        v19 = *(v17 + 16);
        v20 = v17[9];
        v21 = v20[v19 - 2] - v5;
        v22 = v20[1];
        v23 = v6 - v22;
        v24 = v7 + v8;
        if (v21 <= v6 - v22)
        {
          v25 = (v6 - v22);
        }

        else
        {
          v25 = v20[v19 - 2] - v5;
        }

        if (v24 >= v25 || v19 != 2 || v8 < 2 || v8 >= v7)
        {
LABEL_34:
          if (v16 == 12)
          {
            v29 = *(a3 + 6);
          }

          else
          {
            v29 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          operations_research::Domain::FromFlatSpanOfIntervals(v29[9], *(v29 + 16), v68, v11);
          v59 = operations_research::Domain::Min(v68);
          if (v6 > operations_research::Domain::Max(v68) != v5 >= v59)
          {
LABEL_104:
            if (v68[0])
            {
              operator delete(v68[1]);
            }

            return;
          }

          if (v5 < v59)
          {
            v30 = v21;
          }

          else
          {
            v30 = v23;
          }

          v31 = v30 / 2;
          if ((v30 & 0x8000000000000001) == 1)
          {
            ++v31;
          }

          if (v31 <= v30 - v8)
          {
            v31 = v30 - v8;
          }

          if ((v68[0] >> 1) > 1)
          {
            v31 = v30;
          }

          v56 = v31;
          v32 = this[1];
          if (*(*(v32 + 49) + 319) == 1)
          {
            v58 = *(v32 + 1176) ^ 1;
          }

          else
          {
            v58 = 0;
          }

          v37 = operations_research::sat::ConstraintProto::mutable_linear(a3);
          if (*(v3 + 16) < 1)
          {
            v39 = 0;
            v63 = 0;
          }

          else
          {
            v61 = v30;
            v63 = 0;
            v57 = v18;
            v38 = 0;
            v39 = 0;
            do
            {
              v42 = v37;
              v43 = *(*(v3 + 24) + 4 * v38);
              v44 = *(*(v3 + 48) + 8 * v38);
              v45 = v43 ^ (v44 >> 63);
              if (v44 >= 0)
              {
                v46 = *(*(v3 + 48) + 8 * v38);
              }

              else
              {
                v46 = -v44;
              }

              CanBeUsedAsLiteral = operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v15[1], v43 ^ (v44 >> 63));
              IsFixed = operations_research::sat::PresolveContext::IsFixed(v15[1], v45);
              v49 = v46 < v61 || IsFixed;
              if (v49 & 1) == 0 && ((v58 | CanBeUsedAsLiteral))
              {
                if (CanBeUsedAsLiteral)
                {
                  operator new();
                }

                operator new();
              }

              v37 = v42;
              *(v42[3] + 4 * v39) = *(v42[3] + 4 * v38);
              if (v46 > v61)
              {
                operator new();
              }

              v50 = *(*(v3 + 48) + 8 * v38);
              if (v50 >= 0)
              {
                v51 = *(*(v3 + 48) + 8 * v38);
              }

              else
              {
                v51 = -v50;
              }

              if (v46 > v56 && v46 < v61)
              {
                operator new();
              }

              if (v51 != v46)
              {
                v53 = this[1];
                if (v57 >= v59)
                {
                  v40 = operations_research::sat::PresolveContext::MaxOf(v53, v45);
                }

                else
                {
                  v40 = operations_research::sat::PresolveContext::MinOf(v53, v45);
                }

                v63 += v40 * (v51 - v46);
              }

              if (*(*(v3 + 48) + 8 * v38) > 0)
              {
                v41 = v51;
              }

              else
              {
                v41 = -v51;
              }

              *(v42[6] + 8 * v39++) = v41;
              v15 = this;
              ++v38;
            }

            while (v38 < *(v3 + 16));
          }

          if (*(v37 + 4) > v39)
          {
            *(v37 + 4) = v39;
          }

          if (*(v37 + 10) > v39)
          {
            *(v37 + 10) = v39;
          }

          operations_research::Domain::Domain(v65, v63);
          operations_research::Domain::AdditionWith(v67, v68, v65, v54);
          operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v67, v37);
          if (v67[0])
          {
            operator delete(v67[1]);
            if ((v65[0] & 1) == 0)
            {
LABEL_99:
              if (v39 != 1)
              {
                goto LABEL_104;
              }

LABEL_103:
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v15[1], a2);
              operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v15[1]);
              goto LABEL_104;
            }
          }

          else if ((v65[0] & 1) == 0)
          {
            goto LABEL_99;
          }

          operator delete(__p);
          if (v39 != 1)
          {
            goto LABEL_104;
          }

          goto LABEL_103;
        }

        v33 = *v20;
        if (v5 < v33 || (v34 = v22 - v5, v24 <= v22 - v5))
        {
          if (v6 > v22)
          {
            goto LABEL_34;
          }

          v34 = v6 - v33;
          if (v24 <= v6 - v33)
          {
            goto LABEL_34;
          }

          v35 = this;
          v36 = 0;
        }

        else
        {
          v35 = this;
          v36 = 1;
        }

        operations_research::sat::CpModelPresolver::LowerThanCoeffStrengthening(v35, v36, v8, v34, a3);
      }
    }
  }
}

void sub_23CA8C85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p)
{
  if (*(v30 - 136))
  {
    operator delete(*(v30 - 128));
  }

  if (a29)
  {
    operator delete(__p);
  }

  if (*(v30 - 112))
  {
    operator delete(*(v30 - 104));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ExtractAtMostOneFromLinear(operations_research::sat::PresolveContext **this, operations_research::sat::ConstraintProto *a2, __n128 a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((*(this[1] + 416) & 1) != 0 || *(a2 + 4))
  {
    return;
  }

  if (*(a2 + 15) == 12)
  {
    v5 = *(a2 + 6);
  }

  else
  {
    v5 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v5[9], *(v5 + 16), v38, a3);
  if (*(a2 + 15) != 12)
  {
    v6 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v7 = off_2810BEE58;
    if (off_2810BEE58 < 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = 0;
    v36 = 0;
    v37 = 0;
    do
    {
      v9 = *(v6[3] + v8);
      v10 = v6[6][v8];
      v11 = operations_research::sat::PresolveContext::MinOf(this[1], v9);
      v12 = operations_research::sat::PresolveContext::MaxOf(this[1], v9);
      v13 = v11 * v10;
      if (v12 * v10 >= v11 * v10)
      {
        v14 = v11 * v10;
      }

      else
      {
        v14 = v12 * v10;
      }

      if (v13 <= v12 * v10)
      {
        v13 = v12 * v10;
      }

      v36 += v14;
      v37 += v13;
      ++v8;
    }

    while (v7 != v8);
    goto LABEL_17;
  }

  v6 = *(a2 + 6);
  v7 = *(v6 + 4);
  if (v7 >= 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v36 = 0;
  v37 = 0;
LABEL_17:
  v39 = 0x100000000;
  v15 = &v39;
  do
  {
    v35 = v15;
    v34 = *v15;
    if (v7 < 1)
    {
      v18 = 0;
      v17 = 0;
    }

    else
    {
      v16 = 0;
      if (*v15)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = *(v6[3] + v16);
          v20 = v6[6][v16];
          if (!operations_research::sat::PresolveContext::MinOf(this[1], v19) && operations_research::sat::PresolveContext::MaxOf(this[1], v19) == 1)
          {
            v21 = operations_research::Domain::Min(v38);
            v22 = v20 >= 0 ? v20 : -v20;
            if (v37 - 2 * v22 < v21)
            {
              operator new();
            }
          }

          ++v16;
        }

        while (v7 != v16);
      }

      else
      {
        v23 = 0;
        v18 = 0;
        do
        {
          v24 = *(v6[3] + v16);
          v25 = v6[6][v16];
          if (operations_research::sat::PresolveContext::MinOf(this[1], v24) || operations_research::sat::PresolveContext::MaxOf(this[1], v24) != 1 || ((v26 = operations_research::Domain::Max(v38), v25 >= 0) ? (v27 = v25) : (v27 = -v25), v36 + 2 * v27 <= v26))
          {
            v17 = v23;
          }

          else
          {
            if (v25 >= 1)
            {
              v28 = v24;
            }

            else
            {
              v28 = ~v24;
            }

            v29 = &v18[-v23];
            v30 = &v18[-v23] >> 2;
            v31 = v30 + 1;
            if ((v30 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (-v23 >> 1 > v31)
            {
              v31 = -v23 >> 1;
            }

            if (-v23 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v32 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v31;
            }

            if (v32)
            {
              if (!(v32 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v17 = 0;
            v33 = (4 * v30);
            *v33 = v28;
            v18 = (v33 + 1);
            memcpy(0, v23, v29);
          }

          ++v16;
          v23 = v17;
        }

        while (v7 != v16);
      }
    }

    if ((v18 - v17) > 4)
    {
      if (v34)
      {
        operator new();
      }

      operator new();
    }

    v15 = (v35 + 4);
  }

  while ((v35 + 4) != &v40);
  if (v38[0])
  {
    operator delete(v38[1]);
  }
}

void sub_23CA8CEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    operator delete(v24);
  }

  if ((a23 & 1) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a24);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(a2 + 15) != 12 || (*(*(this + 1) + 416) & 1) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 6);
  v5 = *(v4 + 16);
  if (v5 < 1)
  {
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_204;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v11 = *(*(v4 + 24) + 4 * v6);
    if ((v11 & 0x80000000) != 0)
    {
      operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(__p);
    }

    v12 = *(*(v4 + 48) + 8 * v6);
    if (!v12)
    {
      operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(__p);
    }

    if (operations_research::sat::PresolveContext::MinOf(*(this + 1), v11) || operations_research::sat::PresolveContext::MaxOf(*(this + 1), v11) != 1)
    {
      return 0;
    }

    if (v10 >= -v12)
    {
      v14 = -v12;
    }

    else
    {
      v14 = v10;
    }

    if (v12 >= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v12 >= 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = -v12;
    }

    if (v12 >= 1)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }

    if (v12 < 1)
    {
      v7 += v12;
    }

    else
    {
      v8 += v12;
    }

    if (v9 <= v16)
    {
      v9 = v16;
    }

    ++v6;
  }

  while (v5 != v6);
  if (v10 > v9)
  {
LABEL_204:
    operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(v10, v9, __p);
  }

  operations_research::Domain::FromFlatSpanOfIntervals(*(v4 + 72), *(v4 + 64), &v127, v13);
  if (!operations_research::Domain::Contains(&v127, v7) && v7 + v10 > operations_research::Domain::Max(&v127) || !operations_research::Domain::Contains(&v127, v8) && v8 - v10 < operations_research::Domain::Min(&v127))
  {
    operator new();
  }

  operations_research::Domain::Domain(__p, v7, v8);
  IsIncludedIn = operations_research::Domain::IsIncludedIn(__p, &v127);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  if (IsIncludedIn)
  {
    operator new();
  }

  v18 = v7 + v10;
  if (v7 + v10 <= operations_research::Domain::Max(&v127))
  {
    v32 = v8 - v10;
    if (v8 - v10 < operations_research::Domain::Min(&v127))
    {
      v33 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "linear: positive reified and");
      operations_research::sat::PresolveContext::UpdateRuleStats(v33, __p, 1, v34, v35);
      if (v124 < 0)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
      v36 = 0;
      *(operations_research::sat::ConstraintProto::mutable_BOOL_and(a2) + 4) = 0;
      do
      {
        if (*(a2 + 15) == 4)
        {
          v37 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 4;
          v38 = *(a2 + 1);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          v37 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v38);
          *(a2 + 6) = v37;
        }

        if (*(v126 + 8 * v36) >= 1)
        {
          v39 = *(v125 + 4 * v36);
        }

        else
        {
          v39 = ~*(v125 + 4 * v36);
        }

        v41 = *(v37 + 4);
        v40 = *(v37 + 5);
        if (v41 == v40)
        {
          google::protobuf::RepeatedField<int>::Grow((v37 + 2), v40, (v40 + 1));
          v41 = *(v37 + 4);
        }

        v42 = v37[3];
        *(v37 + 4) = v41 + 1;
        *(v42 + 4 * v41) = v39;
        ++v36;
      }

      while (v5 != v36);
      goto LABEL_54;
    }

    if (v18 < operations_research::Domain::Min(&v127))
    {
      goto LABEL_78;
    }

    v43 = (v128 + 8);
    if ((v127 & 1) == 0)
    {
      v43 = &v129;
    }

    if (*v43 >= v8)
    {
      v55 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "linear: positive clause");
      operations_research::sat::PresolveContext::UpdateRuleStats(v55, __p, 1, v56, v57);
      if (v124 < 0)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
      v58 = 0;
      *(operations_research::sat::ConstraintProto::mutable_BOOL_or(a2) + 4) = 0;
      do
      {
        if (*(a2 + 15) == 3)
        {
          v62 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 3;
          v63 = *(a2 + 1);
          if (v63)
          {
            v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
          }

          v62 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v63);
          *(a2 + 6) = v62;
        }

        if (*(v126 + 8 * v58) >= 1)
        {
          v64 = *(v125 + 4 * v58);
        }

        else
        {
          v64 = ~*(v125 + 4 * v58);
        }

        v66 = *(v62 + 4);
        v65 = *(v62 + 5);
        if (v66 == v65)
        {
          google::protobuf::RepeatedField<int>::Grow((v62 + 2), v65, (v65 + 1));
          v66 = *(v62 + 4);
        }

        v67 = v62[3];
        *(v62 + 4) = v66 + 1;
        *(v67 + 4 * v66) = v64;
        ++v58;
      }

      while (v5 != v58);
    }

    else
    {
LABEL_78:
      if (v32 > operations_research::Domain::Max(&v127))
      {
        goto LABEL_79;
      }

      v44 = &v128;
      if (v127)
      {
        v44 = v128;
      }

      if (v44[2 * (v127 >> 1) - 2] > v7)
      {
LABEL_79:
        v45 = (a2 + 16);
        if (*(a2 + 4))
        {
          goto LABEL_103;
        }

        v121 = v7 + v9;
        if (v7 + v9 <= operations_research::Domain::Max(&v127) && v7 + 2 * v10 > operations_research::Domain::Max(&v127))
        {
          v46 = &v128;
          if (v127)
          {
            v46 = v128;
          }

          if (v46[2 * (v127 >> 1) - 2] <= v7)
          {
            v91 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(__p, "linear: positive at most one");
            operations_research::sat::PresolveContext::UpdateRuleStats(v91, __p, 1, v92, v93);
            if (v124 < 0)
            {
              operator delete(__p[0]);
            }

            operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
            v94 = 0;
            *(operations_research::sat::ConstraintProto::mutable_at_most_one(a2) + 4) = 0;
            do
            {
              v95 = operations_research::sat::ConstraintProto::mutable_at_most_one(a2);
              if (*(v126 + 8 * v94) >= 1)
              {
                v96 = *(v125 + 4 * v94);
              }

              else
              {
                v96 = ~*(v125 + 4 * v94);
              }

              operations_research::sat::BoolArgumentProto::add_literals(v95, v96);
              ++v94;
            }

            while (v5 != v94);
            goto LABEL_105;
          }
        }

        if (*v45)
        {
          goto LABEL_103;
        }

        v47 = v8 - v9;
        if (v47 >= operations_research::Domain::Min(&v127) && v8 - 2 * v10 < operations_research::Domain::Min(&v127))
        {
          v48 = (v128 + 8);
          if ((v127 & 1) == 0)
          {
            v48 = &v129;
          }

          if (*v48 >= v8)
          {
            v97 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(__p, "linear: negative at most one");
            operations_research::sat::PresolveContext::UpdateRuleStats(v97, __p, 1, v98, v99);
            if (v124 < 0)
            {
              operator delete(__p[0]);
            }

            operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
            v100 = 0;
            *(operations_research::sat::ConstraintProto::mutable_at_most_one(a2) + 4) = 0;
            do
            {
              v101 = operations_research::sat::ConstraintProto::mutable_at_most_one(a2);
              if (*(v126 + 8 * v100) <= 0)
              {
                v102 = *(v125 + 4 * v100);
              }

              else
              {
                v102 = ~*(v125 + 4 * v100);
              }

              operations_research::sat::BoolArgumentProto::add_literals(v101, v102);
              ++v100;
            }

            while (v5 != v100);
            goto LABEL_105;
          }
        }

        if (*v45)
        {
          goto LABEL_103;
        }

        if ((v127 & 0x1FFFFFFFELL) == 2 && v7 < operations_research::Domain::Min(&v127) && v18 >= operations_research::Domain::Min(&v127) && v7 + 2 * v10 > operations_research::Domain::Max(&v127) && v121 <= operations_research::Domain::Max(&v127))
        {
          v103 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "linear: positive equal one");
          operations_research::sat::PresolveContext::UpdateRuleStats(v103, __p, 1, v104, v105);
          if (v124 < 0)
          {
            operator delete(__p[0]);
          }

          v106 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v107 = v106;
          v108 = *(v106 + 8);
          if (v108)
          {
            v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set<>((v106 + 40), (*(a2 + 5) & 0xFFFFFFFFFFFFFFFCLL), v108);
          for (i = 0; i != v5; ++i)
          {
            v110 = operations_research::sat::ConstraintProto::mutable_exactly_one(v107);
            if (*(*(v4 + 48) + 8 * i) >= 1)
            {
              v111 = *(*(v4 + 24) + 4 * i);
            }

            else
            {
              v111 = ~*(*(v4 + 24) + 4 * i);
            }

            operations_research::sat::BoolArgumentProto::add_literals(v110, v111);
          }
        }

        else
        {
          if (*v45 || (v127 & 0x1FFFFFFFELL) != 2 || v8 <= operations_research::Domain::Max(&v127) || v32 > operations_research::Domain::Max(&v127) || v8 - 2 * v10 >= operations_research::Domain::Min(&v127) || v47 < operations_research::Domain::Min(&v127))
          {
LABEL_103:
            if (v5 > 3)
            {
              result = 0;
              goto LABEL_107;
            }

            v50 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(__p, "linear: small Boolean expression");
            operations_research::sat::PresolveContext::UpdateRuleStats(v50, __p, 1, v51, v52);
            v53 = (a2 + 16);
            if (v124 < 0)
            {
              operator delete(__p[0]);
            }

            v54 = *(v4 + 16);
            if (v54 != 31)
            {
              v78 = 0;
              v79 = 1 << v54;
              do
              {
                v80 = 0;
                v81 = 0;
                do
                {
                  if ((v78 >> v80))
                  {
                    v81 += *(*(v4 + 48) + 8 * v80);
                  }

                  ++v80;
                }

                while (v5 != v80);
                if (!operations_research::Domain::Contains(&v127, v81))
                {
                  v82 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                  v83 = v82;
                  if (*(v82 + 60) == 3)
                  {
                    v84 = *(v82 + 48);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(v82);
                    *(v83 + 60) = 3;
                    v85 = *(v83 + 8);
                    if (v85)
                    {
                      v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v84 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v85);
                    *(v83 + 48) = v84;
                  }

                  if (*v53)
                  {
                    google::protobuf::RepeatedField<int>::operator=((v83 + 16), v53);
                  }

                  for (j = 0; j != v5; ++j)
                  {
                    if ((v78 >> j))
                    {
                      v87 = ~*(*(v4 + 24) + 4 * j);
                    }

                    else
                    {
                      v87 = *(*(v4 + 24) + 4 * j);
                    }

                    v89 = *(v84 + 4);
                    v88 = *(v84 + 5);
                    if (v89 == v88)
                    {
                      google::protobuf::RepeatedField<int>::Grow((v84 + 2), v88, (v88 + 1));
                      v89 = *(v84 + 4);
                    }

                    v90 = v84[3];
                    *(v84 + 4) = v89 + 1;
                    *(v90 + 4 * v89) = v87;
                  }
                }

                ++v78;
              }

              while (v78 != v79);
            }

            goto LABEL_202;
          }

          v112 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "linear: negative equal one");
          operations_research::sat::PresolveContext::UpdateRuleStats(v112, __p, 1, v113, v114);
          if (v124 < 0)
          {
            operator delete(__p[0]);
          }

          v115 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v116 = v115;
          v117 = *(v115 + 8);
          if (v117)
          {
            v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set<>((v115 + 40), (*(a2 + 5) & 0xFFFFFFFFFFFFFFFCLL), v117);
          for (k = 0; k != v5; ++k)
          {
            v119 = operations_research::sat::ConstraintProto::mutable_exactly_one(v116);
            if (*(*(v4 + 48) + 8 * k) <= 0)
            {
              v120 = *(*(v4 + 24) + 4 * k);
            }

            else
            {
              v120 = ~*(*(v4 + 24) + 4 * k);
            }

            operations_research::sat::BoolArgumentProto::add_literals(v119, v120);
          }
        }

LABEL_202:
        operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
        operations_research::sat::ConstraintProto::Clear(a2);
        goto LABEL_106;
      }

      v68 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "linear: negative clause");
      operations_research::sat::PresolveContext::UpdateRuleStats(v68, __p, 1, v69, v70);
      if (v124 < 0)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
      v71 = 0;
      *(operations_research::sat::ConstraintProto::mutable_BOOL_or(a2) + 4) = 0;
      do
      {
        if (*(a2 + 15) == 3)
        {
          v72 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 3;
          v73 = *(a2 + 1);
          if (v73)
          {
            v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
          }

          v72 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v73);
          *(a2 + 6) = v72;
        }

        if (*(v126 + 8 * v71) <= 0)
        {
          v74 = *(v125 + 4 * v71);
        }

        else
        {
          v74 = ~*(v125 + 4 * v71);
        }

        v76 = *(v72 + 4);
        v75 = *(v72 + 5);
        if (v76 == v75)
        {
          google::protobuf::RepeatedField<int>::Grow((v72 + 2), v75, (v75 + 1));
          v76 = *(v72 + 4);
        }

        v77 = v72[3];
        *(v72 + 4) = v76 + 1;
        *(v77 + 4 * v76) = v74;
        ++v71;
      }

      while (v5 != v71);
    }

    operations_research::sat::CpModelPresolver::PresolveBoolOr(this, a2, v59, v60, v61);
    goto LABEL_105;
  }

  v19 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "linear: negative reified and");
  operations_research::sat::PresolveContext::UpdateRuleStats(v19, __p, 1, v20, v21);
  if (v124 < 0)
  {
    operator delete(__p[0]);
  }

  operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
  v22 = 0;
  *(operations_research::sat::ConstraintProto::mutable_BOOL_and(a2) + 4) = 0;
  do
  {
    if (*(a2 + 15) == 4)
    {
      v26 = *(a2 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 4;
      v27 = *(a2 + 1);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v27);
      *(a2 + 6) = v26;
    }

    if (*(v126 + 8 * v22) <= 0)
    {
      v28 = *(v125 + 4 * v22);
    }

    else
    {
      v28 = ~*(v125 + 4 * v22);
    }

    v30 = *(v26 + 4);
    v29 = *(v26 + 5);
    if (v30 == v29)
    {
      google::protobuf::RepeatedField<int>::Grow((v26 + 2), v29, (v29 + 1));
      v30 = *(v26 + 4);
    }

    v31 = v26[3];
    *(v26 + 4) = v30 + 1;
    *(v31 + 4 * v30) = v28;
    ++v22;
  }

  while (v5 != v22);
LABEL_54:
  operations_research::sat::CpModelPresolver::PresolveBoolAnd(this, a2, v23, v24, v25);
LABEL_105:
  operations_research::sat::LinearConstraintProto::~LinearConstraintProto(__p);
LABEL_106:
  result = 1;
LABEL_107:
  if (v127)
  {
    v49 = result;
    operator delete(v128);
    return v49;
  }

  return result;
}

void sub_23CA8DCD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveInterval(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  v3 = *(this + 1);
  if (*(v3 + 416))
  {
    return 0;
  }

  if (*(a3 + 15) == 19)
  {
    v7 = *(a3 + 6);
    if (!*(a3 + 4))
    {
      goto LABEL_11;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a3);
    *(a3 + 15) = 19;
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntervalConstraintProto>(v8);
    v7 = v9;
    *(a3 + 6) = v9;
    v3 = *(this + 1);
    if (!*(a3 + 4))
    {
      goto LABEL_11;
    }
  }

  if (operations_research::sat::PresolveContext::SizeMax(v3, a2) < 0)
  {
    operator new();
  }

  if (*(a3 + 4))
  {
    goto LABEL_19;
  }

  v3 = *(this + 1);
LABEL_11:
  v26 = 0;
  if (*(v7 + 40))
  {
    v10 = *(v7 + 40);
  }

  else
  {
    v10 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  operations_research::Domain::Domain(v27, 0, 0x7FFFFFFFFFFFFFFFLL);
  v11 = operations_research::sat::PresolveContext::IntersectDomainWith(v3, v10, v27, &v26);
  if (v27[0])
  {
    operator delete(v27[1]);
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if (v26)
  {
    operator new();
  }

LABEL_19:
  if (operations_research::sat::PresolveContext::ConstraintVariableGraphIsUpToDate(*(this + 1)))
  {
    v12 = *(this + 1);
    v13 = *(v12 + 768);
    if (a2 >= ((*(v12 + 776) - v13) >> 2) || !*(v13 + 4 * a2))
    {
      operator new();
    }
  }

  *(v7 + 16) |= 1u;
  v14 = *(v7 + 24);
  if (!v14)
  {
    v15 = *(v7 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v15);
    v14 = v16;
    *(v7 + 24) = v16;
  }

  v17 = operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a3 + 3), *(a3 + 4), v14);
  *(v7 + 16) |= 4u;
  v18 = *(v7 + 40);
  if (!v18)
  {
    v19 = *(v7 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v19);
    v18 = v20;
    *(v7 + 40) = v20;
  }

  v21 = v17 | operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a3 + 3), *(a3 + 4), v18);
  *(v7 + 16) |= 2u;
  v22 = *(v7 + 32);
  if (!v22)
  {
    v23 = *(v7 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v23);
    v22 = v24;
    *(v7 + 32) = v24;
  }

  return v21 | operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a3 + 3), *(a3 + 4), v22);
}

void sub_23CA8E1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v4 = *(a2 + 15);
  if (v4 == 18)
  {
    v5 = *(a2 + 6);
    v6 = *(v5 + 4);
    v45 = 0;
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = v5[3];
    v10 = 4 * v6;
    while (1)
    {
      v11 = *v9;
      v12 = *(this + 1);
      operations_research::Domain::Domain(__p, 0, v6 - 1);
      v13 = operations_research::sat::PresolveContext::IntersectDomainWith(v12, v11, __p, &v45);
      if (__p[0])
      {
        operator delete(__p[1]);
      }

      if ((v13 & 1) == 0)
      {
        break;
      }

      v9 = (v9 + 4);
      v10 -= 4;
      if (!v10)
      {
        v4 = *(a2 + 15);
        if (v4 == 18)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }
    }

    if (dword_2810BFCF8 < 1)
    {
      return 0;
    }

    result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFCF0, dword_2810BFCF8);
    if (result)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 4645);
      v29 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
      goto LABEL_38;
    }

    return result;
  }

  v5 = &operations_research::sat::_InverseConstraintProto_default_instance_;
  v6 = dword_2810BECC0;
  v45 = 0;
  if (dword_2810BECC0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v4 != 18)
  {
LABEL_13:
    v7 = &operations_research::sat::_InverseConstraintProto_default_instance_;
    v8 = dword_2810BECD8;
    if (!dword_2810BECD8)
    {
      goto LABEL_20;
    }

LABEL_14:
    v14 = v7[6];
    v15 = 4 * v8;
    while (1)
    {
      v16 = *v14;
      v17 = *(this + 1);
      operations_research::Domain::Domain(__p, 0, v6 - 1);
      v18 = operations_research::sat::PresolveContext::IntersectDomainWith(v17, v16, __p, &v45);
      if (__p[0])
      {
        operator delete(__p[1]);
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 = (v14 + 4);
      v15 -= 4;
      if (!v15)
      {
        v4 = *(a2 + 15);
        goto LABEL_20;
      }
    }

    if (dword_2810BFD10 >= 1)
    {
      result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFD08, dword_2810BFD10);
      if (!result)
      {
        return result;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 4651);
      v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
LABEL_38:
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
    }

    return 0;
  }

LABEL_4:
  v7 = *(a2 + 6);
  v8 = *(v7 + 10);
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_20:
  v19 = xmmword_23CE306D0;
  *__p = xmmword_23CE306D0;
  v20 = &operations_research::sat::_InverseConstraintProto_default_instance_;
  v21 = &operations_research::sat::_InverseConstraintProto_default_instance_;
  if (v4 == 18)
  {
    v21 = *(a2 + 6);
  }

  v22 = *(v21 + 4);
  if (!v22)
  {
LABEL_29:
    *v41 = v19;
    if (v4 == 18)
    {
      v26 = *(a2 + 6);
      v27 = *(v26 + 10);
      if (!v27)
      {
LABEL_45:
        result = 0;
        v34 = 1;
        if (v41[0] < 2)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v26 = &operations_research::sat::_InverseConstraintProto_default_instance_;
      v27 = dword_2810BECD8;
      if (!dword_2810BECD8)
      {
        goto LABEL_45;
      }
    }

    v31 = v26[6];
    v32 = 4 * v27;
    while (1)
    {
      v33 = *v31;
      if (~*v31 > *v31)
      {
        v33 = ~v33;
      }

      v37 = v33;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v41, &v37, &v38);
      if ((v40 & 1) == 0)
      {
        break;
      }

      *v39 = v37;
      ++v31;
      v32 -= 4;
      if (!v32)
      {
        goto LABEL_45;
      }
    }

    result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "inverse: duplicated variable", 28);
    v34 = 0;
    if (v41[0] < 2)
    {
      goto LABEL_50;
    }

LABEL_49:
    v35 = result;
    operator delete((v42 - (v41[1] & 1) - 8));
    result = v35;
    goto LABEL_50;
  }

  v23 = v21[3];
  v24 = 4 * v22;
  while (1)
  {
    v25 = *v23;
    if (~*v23 > *v23)
    {
      v25 = ~v25;
    }

    v38 = v25;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(__p, &v38, v41);
    if ((v42 & 1) == 0)
    {
      break;
    }

    *v41[1] = v38;
    ++v23;
    v24 -= 4;
    if (!v24)
    {
      v4 = *(a2 + 15);
      v19 = xmmword_23CE306D0;
      goto LABEL_29;
    }
  }

  result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "inverse: duplicated variable", 28);
  v34 = 0;
LABEL_50:
  if (__p[0] >= 2)
  {
    v36 = result;
    operator delete(&v44[-(__p[1] & 1) - 8]);
    result = v36;
  }

  if (v34)
  {
    __p[0] = this;
    LODWORD(__p[1]) = v6;
    v44 = &v45;
    if (*(a2 + 15) == 18)
    {
      if ((operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::ConstraintProto *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(__p, *(a2 + 6) + 16, *(a2 + 6) + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::ConstraintProto *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(__p, &dword_2810BECC0, &dword_2810BECD8) & 1) == 0)
    {
      return 0;
    }

    if (*(a2 + 15) == 18)
    {
      v20 = *(a2 + 6);
    }

    if (operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::ConstraintProto *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(__p, (v20 + 5), (v20 + 2)))
    {
      if (v45)
      {
        operator new();
      }
    }

    return 0;
  }

  return result;
}

void sub_23CA8E69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CA8E6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CA8E6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::ConstraintProto *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return 1;
}

void sub_23CA8EF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *__p, uint64_t a24, void *a25)
{
  if (a22)
  {
    operator delete(__p);
    if (!a14)
    {
      goto LABEL_7;
    }
  }

  else if (!a14)
  {
LABEL_7:
    std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100](&a25);
    _Unwind_Resume(a1);
  }

  operator delete(a14);
  goto LABEL_7;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveElement(operations_research::sat::CpModelPresolver *this, void (****a2)(operations_research::sat::ElementConstraintProto *__hidden this), uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(this + 1);
  if (*(v5 + 416))
  {
    return 0;
  }

  v7 = this;
  if (*(a2 + 15) != 14)
  {
    v8 = &operations_research::sat::_ElementConstraintProto_default_instance_;
    v9 = dword_2810BED00;
    if (dword_2810BED00)
    {
      goto LABEL_4;
    }

LABEL_18:
    HIBYTE(__p[2]) = 20;
    strcpy(__p, "element: empty array");
    operations_research::sat::PresolveContext::UpdateRuleStats(v5, __p, 1, a4, a5);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(v7 + 1), &byte_23CE7F131, 0);
  }

  v8 = a2[6];
  v9 = *(v8 + 4);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (*(a2 + 4))
  {
    return 0;
  }

  v10 = *(v8 + 9);
  v119 = *(v8 + 10);
  operations_research::Domain::Domain(__p, 0, v9 - 1);
  v11 = operations_research::sat::PresolveContext::IntersectDomainWith(v5, v10, __p, 0);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v119;
  if (~v119 > v119)
  {
    v12 = ~v119;
  }

  v117 = ~v10;
  v118 = v10;
  if (~v10 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = ~v10;
  }

  v114 = v12;
  v115 = v13;
  v116 = v7;
  if (v12 != v13)
  {
LABEL_68:
    __p[0] = 0;
    operations_research::sat::PresolveContext::DomainOf(&v132, *(v7 + 1), v10);
    operations_research::sat::PresolveContext::DomainOf(&v130, *(v7 + 1), v119);
    if (v132 > 1)
    {
      v42 = v132 & 1;
      v43 = &v132 + 1;
      v41 = *(&v132 + 1);
      if (v132)
      {
        v43 = *(&v132 + 1);
      }

      v40 = *v43;
    }

    else
    {
      v40 = 0;
      v41 = *(&v132 + 1);
      v42 = v132;
    }

    if (v42)
    {
      v44 = v41;
    }

    else
    {
      v44 = &v132 + 1;
    }

    if ((v132 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v45 = &v44[2 * (v132 >> 1)];
      while (1)
      {
        if (v40 < 0)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v40, 0, "value >= 0");
        }

        if (*(a2 + 15) == 14)
        {
          v46 = a2[6];
        }

        else
        {
          v46 = &operations_research::sat::_ElementConstraintProto_default_instance_;
        }

        v47 = *(v46 + 4);
        if (v40 >= v47)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v40, v47, "value < ct->element().vars_size()");
        }

        v48 = *(v46[3] + v40);
        operations_research::sat::PresolveContext::DomainOf(&v127, *(v7 + 1), v48);
        if (v48 == v10)
        {
          break;
        }

        if (v48 == v117)
        {
          operations_research::Domain::Domain(v125, -v40);
          goto LABEL_91;
        }

        if (v48 == ~v119)
        {
          operations_research::Domain::Domain(v125, 0);
          goto LABEL_91;
        }

LABEL_94:
        operations_research::Domain::IntersectionWith(v125, &v127, &v130);
        IsEmpty = operations_research::Domain::IsEmpty(v125);
        if (v125[0])
        {
          operator delete(v126);
        }

        if (!IsEmpty)
        {
          operator new();
        }

        if (v127)
        {
          operator delete(v128);
        }

        if (v40 == v44[1])
        {
          v44 += 2;
          if (v44 != v45)
          {
            v40 = *v44;
          }
        }

        else
        {
          ++v40;
        }

        if (v44 == v45)
        {
          goto LABEL_103;
        }
      }

      operations_research::Domain::Domain(v125, v40);
LABEL_91:
      if (v127)
      {
        operator delete(v128);
      }

      v127 = *v125;
      v128 = v126;
      goto LABEL_94;
    }

LABEL_103:
    if (operations_research::Domain::Size(&v132))
    {
      v50 = *(v7 + 1);
      v123 = 0;
      v124 = 0;
      v122 = 0;
      operations_research::Domain::FromValues(&v122, &v127);
      v51 = operations_research::sat::PresolveContext::IntersectDomainWith(v50, v10, &v127, 0);
      if (v127)
      {
        operator delete(v128);
      }

      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if ((v51 & 1) == 0)
      {
        goto LABEL_122;
      }

      v52 = *(v7 + 1);
      std::string::basic_string[abi:ne200100]<0>(&v127, "element: reduced index domain");
      operations_research::sat::PresolveContext::UpdateRuleStats(v52, &v127, 1, v53, v54);
      if (SHIBYTE(v128) < 0)
      {
        operator delete(v127);
      }
    }

    v125[0] = 0;
    if (operations_research::sat::PresolveContext::IntersectDomainWith(*(v7 + 1), v119, __p, v125))
    {
      if (v125[0])
      {
        v55 = *(v7 + 1);
        std::string::basic_string[abi:ne200100]<0>(&v127, "element: reduced target domain");
        operations_research::sat::PresolveContext::UpdateRuleStats(v55, &v127, 1, v56, v57);
        if (SHIBYTE(v128) < 0)
        {
          operator delete(v127);
        }
      }

      if (v130)
      {
        operator delete(*(&v130 + 1));
        if ((v132 & 1) == 0)
        {
LABEL_117:
          if ((__p[0] & 1) == 0)
          {
            goto LABEL_119;
          }

          goto LABEL_118;
        }
      }

      else if ((v132 & 1) == 0)
      {
        goto LABEL_117;
      }

      operator delete(*(&v132 + 1));
      if ((__p[0] & 1) == 0)
      {
LABEL_119:
        if (operations_research::sat::PresolveContext::IsFixed(*(v7 + 1), v10))
        {
          if (*(a2 + 15) == 14)
          {
            v58 = a2[6];
          }

          else
          {
            v58 = &operations_research::sat::_ElementConstraintProto_default_instance_;
          }

          v79 = *(v58[3] + operations_research::sat::PresolveContext::MinOf(*(v7 + 1), v10));
          if (v79 != v119)
          {
            v80 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v7 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v81 = operations_research::sat::ConstraintProto::mutable_linear(v80);
            operations_research::sat::BoolArgumentProto::add_literals(v81, v79);
            operations_research::sat::LinearConstraintProto::add_coeffs(v81, -1);
            operations_research::sat::BoolArgumentProto::add_literals(v81, v119);
            operations_research::sat::LinearConstraintProto::add_coeffs(v81, 1);
            operations_research::sat::LinearConstraintProto::add_domain(v81, 0);
            operations_research::sat::LinearConstraintProto::add_domain(v81, 0);
            operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v7 + 1));
          }

          v82 = *(v7 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "element: fixed index");
          operations_research::sat::PresolveContext::UpdateRuleStats(v82, __p, 1, v83, v84);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_167:
          operations_research::sat::ConstraintProto::Clear(a2);
          return 1;
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(v7 + 1), v119))
        {
          v59 = *(v7 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "element: one value array");
          operations_research::sat::PresolveContext::UpdateRuleStats(v59, __p, 1, v60, v61);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_167;
        }

        if (!operations_research::sat::PresolveContext::MinOf(*(v7 + 1), v10) && operations_research::sat::PresolveContext::MaxOf(*(v7 + 1), v10) == 1)
        {
          v63 = MEMORY[0];
          v62 = MEMORY[8];
          v64 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v7 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v65 = operations_research::sat::ConstraintProto::mutable_linear(v64);
          operations_research::sat::BoolArgumentProto::add_literals(v65, v119);
          operations_research::sat::LinearConstraintProto::add_coeffs(v65, 1);
          operations_research::sat::BoolArgumentProto::add_literals(v65, v10);
          operations_research::sat::LinearConstraintProto::add_coeffs(v65, v63 - v62);
          operations_research::sat::LinearConstraintProto::add_domain(v65, v63);
          operations_research::sat::LinearConstraintProto::add_domain(v65, v63);
          operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v7 + 1));
          v66 = *(v7 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "element: linearize constant element of size 2");
          operations_research::sat::PresolveContext::UpdateRuleStats(v66, __p, 1, v67, v68);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          operations_research::sat::ConstraintProto::Clear(a2);
          operator delete(0);
          return 1;
        }

        operations_research::sat::PresolveContext::GetAffineRelation(&v130, *(v7 + 1), v10);
        if (v130 == v10)
        {
LABEL_147:
          *__p = xmmword_23CE306D0;
          LODWORD(v132) = v115;
          v69 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::operator[]<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,(int *)0>(__p, &v132);
          ++*v69;
          LODWORD(v132) = v114;
          v70 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::operator[]<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,(int *)0>(__p, &v132);
          ++*v70;
          operations_research::sat::PresolveContext::DomainOf(&v127, *(v7 + 1), v10);
          v71 = v127 & 1;
          if (v127)
          {
            v72 = v128;
          }

          else
          {
            v72 = &v128;
          }

          if ((v127 & 0x1FFFFFFFFFFFFFFELL) != 0)
          {
            v73 = &v72[v127 >> 1];
            do
            {
              v74 = *v72;
              v75 = *(v72 + 1);
              if (*v72 <= v75)
              {
                v76 = v74 << 32;
                do
                {
                  v77 = &operations_research::sat::_ElementConstraintProto_default_instance_;
                  if (*(a2 + 15) == 14)
                  {
                    v77 = a2[6];
                  }

                  v78 = *(v77[3] + (v76 >> 30));
                  if (~v78 > v78)
                  {
                    v78 = ~v78;
                  }

                  *v125 = v78;
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__p, v125, &v132);
                  if (v133 == 1)
                  {
                    **(&v132 + 1) = *v125;
                  }

                  ++*(*(&v132 + 1) + 4);
                  ++v74;
                  v76 += 0x100000000;
                }

                while (v74 <= v75);
              }

              ++v72;
            }

            while (v72 != v73);
            v71 = v127 & 1;
          }

          if (v71)
          {
            operator delete(v128);
          }

          if (operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(v7 + 1), v10) && (LODWORD(v132) = v115, *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>>(__p, &v132) == 1))
          {
            v87 = *(v7 + 1);
            std::string::basic_string[abi:ne200100]<0>(&v132, "element: trivial target domain reduction");
            operations_research::sat::PresolveContext::UpdateRuleStats(v87, &v132, 1, v88, v89);
            if (v134 < 0)
            {
              operator delete(v132);
            }

            operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(v7 + 1), v10);
            v90 = 4952;
          }

          else
          {
            if (operations_research::sat::PresolveContext::IsFixed(*(v7 + 1), v119) || !operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(v7 + 1), v119) || (LODWORD(v132) = v114, *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>>(__p, &v132) != 1))
            {
              result = 0;
LABEL_213:
              if (__p[0] >= 2)
              {
                v113 = result;
                operator delete(__p[2] - (__p[1] & 1) - 8);
                return v113;
              }

              return result;
            }

            v110 = *(v7 + 1);
            std::string::basic_string[abi:ne200100]<0>(&v132, "element: trivial index domain reduction");
            operations_research::sat::PresolveContext::UpdateRuleStats(v110, &v132, 1, v111, v112);
            if (v134 < 0)
            {
              operator delete(v132);
            }

            operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(v7 + 1), v119);
            v90 = 4965;
          }

          operations_research::sat::PresolveContext::NewMappingConstraint(*(v7 + 1), a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, v90);
          operations_research::sat::ConstraintProto::Clear(a2);
          result = 1;
          goto LABEL_213;
        }

        operations_research::sat::PresolveContext::DomainOf(__p, *(v7 + 1), v130);
        v85 = operations_research::Domain::Size(__p);
        operations_research::sat::PresolveContext::DomainOf(&v132, *(v7 + 1), v10);
        v86 = operations_research::Domain::Size(&v132);
        if (v132)
        {
          operator delete(*(&v132 + 1));
          if ((__p[0] & 1) == 0)
          {
LABEL_172:
            if (v85 > v86)
            {
              return 1;
            }

            goto LABEL_184;
          }
        }

        else if ((__p[0] & 1) == 0)
        {
          goto LABEL_172;
        }

        operator delete(__p[1]);
        if (v85 > v86)
        {
          return 1;
        }

LABEL_184:
        v91 = v130;
        v92 = operations_research::sat::PresolveContext::MinOf(*(v7 + 1), v130);
        v93 = operations_research::sat::PresolveContext::MaxOf(*(v7 + 1), v91);
        v94 = v93;
        if (*(a2 + 15) == 14)
        {
          v95 = a2[6];
        }

        else
        {
          v95 = &operations_research::sat::_ElementConstraintProto_default_instance_;
        }

        if (v92)
        {
          v96 = *(v7 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "TODO element: representative has bad domain");
          operations_research::sat::PresolveContext::UpdateRuleStats(v96, __p, 1, v97, v98);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else if ((v131 & 0x8000000000000000) == 0)
        {
          v99 = *(v95 + 4);
          if (v131 < v99)
          {
            v100 = v131 + *(&v130 + 1) * v93;
            if ((v100 & 0x8000000000000000) == 0 && v100 < v99)
            {
              v101 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v7 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              operations_research::sat::ConstraintProto::mutable_element(v101);
              v103 = v102;
              if ((v94 & 0x8000000000000000) == 0)
              {
                v104 = 0;
                do
                {
                  v105 = v131 + *(&v130 + 1) * v104;
                  if ((v105 & 0x8000000000000000) != 0)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v105, 0, "scaled_index >= 0");
                  }

                  if (v105 >= v99)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v105, v99, "scaled_index < array_size");
                  }

                  v106 = &operations_research::sat::_ElementConstraintProto_default_instance_;
                  if (*(a2 + 15) == 14)
                  {
                    v106 = a2[6];
                  }

                  operations_research::sat::BoolArgumentProto::add_literals(v103, *(v106[3] + v105));
                  ++v104;
                }

                while (v104 <= v94);
              }

              *(v103 + 36) = v91;
              *(v103 + 40) = v119;
              v107 = v116[1];
              if (*(&v130 + 1) == 1)
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "element: shifed index ");
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "element: scaled index");
              }

              operations_research::sat::PresolveContext::UpdateRuleStats(v107, __p, 1, v108, v109);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v116[1]);
              operations_research::sat::ConstraintProto::Clear(a2);
              return 1;
            }
          }
        }

        goto LABEL_147;
      }

LABEL_118:
      operator delete(__p[1]);
      goto LABEL_119;
    }

LABEL_122:
    if (v130)
    {
      operator delete(*(&v130 + 1));
      if ((v132 & 1) == 0)
      {
LABEL_124:
        if ((__p[0] & 1) == 0)
        {
          return 1;
        }

        goto LABEL_128;
      }
    }

    else if ((v132 & 1) == 0)
    {
      goto LABEL_124;
    }

    operator delete(*(&v132 + 1));
    if ((__p[0] & 1) == 0)
    {
      return 1;
    }

LABEL_128:
    operator delete(__p[1]);
    return 1;
  }

  memset(__p, 0, 24);
  operations_research::sat::PresolveContext::DomainOf(&v132, *(v7 + 1), v10);
  if (v132 > 1)
  {
    v16 = v132 & 1;
    v18 = &v132 + 1;
    v15 = *(&v132 + 1);
    if (v132)
    {
      v18 = *(&v132 + 1);
    }

    v14 = *v18;
  }

  else
  {
    v14 = 0;
    v15 = *(&v132 + 1);
    v16 = v132;
  }

  if (v16)
  {
    v19 = v15;
  }

  else
  {
    v19 = &v132 + 1;
  }

  if ((v132 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v20 = &v19[2 * (v132 >> 1)];
    v120 = v20;
    do
    {
      v21 = &operations_research::sat::_ElementConstraintProto_default_instance_;
      if (*(a2 + 15) == 14)
      {
        v21 = a2[6];
      }

      if (v119 == v10)
      {
        v22 = v14;
      }

      else
      {
        v22 = -v14;
      }

      if (operations_research::sat::PresolveContext::DomainContains(*(v7 + 1), *(v21[3] + v14), v22))
      {
        v23 = __p[1];
        if (__p[1] >= __p[2])
        {
          v25 = __p[0];
          v26 = __p[1] - __p[0];
          v27 = (__p[1] - __p[0]) >> 3;
          v28 = v27 + 1;
          if ((v27 + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v29 = __p[2] - __p[0];
          if ((__p[2] - __p[0]) >> 2 > v28)
          {
            v28 = v29 >> 2;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            if (!(v30 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v27) = v22;
          v24 = (8 * v27 + 8);
          memcpy(0, v25, v26);
          __p[0] = 0;
          __p[1] = v24;
          __p[2] = 0;
          if (v25)
          {
            operator delete(v25);
          }

          v20 = v120;
        }

        else
        {
          *__p[1] = v22;
          v24 = v23 + 8;
        }

        __p[1] = v24;
        v10 = v118;
      }

      if (v14 == v19[1])
      {
        v19 += 2;
        if (v19 != v20)
        {
          v14 = *v19;
        }
      }

      else
      {
        ++v14;
      }
    }

    while (v19 != v20);
  }

  v32 = __p[0];
  v31 = __p[1];
  v33 = operations_research::Domain::Size(&v132) > ((v31 - v32) >> 3);
  v7 = v116;
  if (!v33)
  {
LABEL_64:
    if (v132)
    {
      operator delete(*(&v132 + 1));
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_68;
  }

  v34 = v116[1];
  v35 = std::vector<long long>::vector[abi:ne200100](v129, __p);
  operations_research::Domain::FromValues(v35, &v130);
  v36 = operations_research::sat::PresolveContext::IntersectDomainWith(v34, v10, &v130, 0);
  if (v130)
  {
    operator delete(*(&v130 + 1));
  }

  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (v36)
  {
    v37 = v116[1];
    std::string::basic_string[abi:ne200100]<0>(&v130, "element: reduced index domain when target equals index");
    operations_research::sat::PresolveContext::UpdateRuleStats(v37, &v130, 1, v38, v39);
    if (SHIBYTE(v131) < 0)
    {
      operator delete(v130);
    }

    goto LABEL_64;
  }

  if (v132)
  {
    operator delete(*(&v132 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}

void sub_23CA902D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, _Unwind_Exception *exception_objecta, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, void *a33, void *a34, int a35, __int16 a36, char a37, char a38)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::ConstraintProto::mutable_element(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) != 14)
  {
    operations_research::sat::ConstraintProto::clear_constraint(this);
    *(this + 15) = 14;
    v2 = *(this + 1);
    if (v2)
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    }

    else
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(v2);
    }

    *(this + 6) = v3;
  }
}

char *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::operator[]<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,(int *)0>(unint64_t *a1, _DWORD *a2)
{
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(a1, a2, v4);
  if (v6 == 1)
  {
    *v5 = *a2;
  }

  return v5 + 4;
}

char *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>>(void *a1, const char *a2)
{
  v2 = *a1;
  if (*a1 > 1uLL)
  {
    v3 = 0;
    _X9 = a1[2];
    __asm { PRFM            #4, [X9] }

    v9 = *a2;
    v10 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
    v11 = vdup_n_s8(v10 & 0x7F);
    v12 = ((v10 >> 7) ^ (_X9 >> 12)) & v2;
    v13 = *(_X9 + v12);
    v14 = vceq_s8(v13, v11);
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_5:
    v15 = a1[3];
    while (1)
    {
      v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v2;
      if (*(v15 + 8 * v16) == v9)
      {
        break;
      }

      v14 &= ((v14 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v14)
      {
LABEL_8:
        while (!*&vceq_s8(v13, 0x8080808080808080))
        {
          v3 += 8;
          v12 = (v3 + v12) & v2;
          v13 = *(_X9 + v12);
          v14 = vceq_s8(v13, v11);
          if (v14)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", a2);
      }
    }

    v17 = (v15 + 8 * v16);
    if (!(_X9 + v16))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[1] < 2uLL)
    {
      goto LABEL_20;
    }

    v20 = *(a1 + 4);
    v19 = (a1 + 2);
    _ZF = v20 == *a2;
    v17 = &absl::lts_20240722::container_internal::kSooControl;
    v22 = v20 == *a2 ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v17 = v19;
    }

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  return v17 + 4;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveTable(operations_research::sat::PresolveContext **this, void (****a2)(operations_research::sat::TableConstraintProto *__hidden this))
{
  if ((*(this[1] + 416) & 1) == 0)
  {
    if (*(a2 + 15) == 16)
    {
      v2 = *(a2[6] + 4);
      if (v2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = dword_2810BEF00;
      if (dword_2810BEF00)
      {
LABEL_5:
        v6 = 1;
        if (v2 >= 1)
        {
          v3 = &operations_research::sat::_TableConstraintProto_default_instance_;
          if (*(a2 + 15) == 16)
          {
            v3 = a2[6];
          }

          operations_research::sat::PresolveContext::GetAffineRelation(&v5, this[1], *v3[3]);
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }
    }

    operator new();
  }

  return 0;
}

void sub_23CA9215C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a38);
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v42 - 224));
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v42 - 200));
  std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100]((v42 - 136));
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v42 - 176));
  operator delete(a17);
  operator delete(a16);
  if (a30)
  {
    operator delete(a30);
    if (!a29)
    {
LABEL_5:
      if (!a28)
      {
LABEL_10:
        _Unwind_Resume(a1);
      }

LABEL_9:
      operator delete(a28);
      goto LABEL_10;
    }
  }

  else if (!a29)
  {
    goto LABEL_5;
  }

  operator delete(a29);
  if (!a28)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void *operations_research::sat::ConstraintProto::mutable_table(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 16)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 16;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::TableConstraintProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::TableConstraintProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

void gtl::STLSortAndRemoveDuplicates<std::vector<std::vector<long long>>>(const void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,false>(v2, v3, &v12, v5, 1);
  v6 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<long long> *>,std::__wrap_iter<std::vector<long long> *>,std::__equal_to &>(*a1, a1[1]);
  v7 = a1[1];
  if (v6 != v7)
  {
    v8 = v6;
    v9 = a1[1];
    do
    {
      v11 = *(v9 - 24);
      v9 -= 24;
      v10 = v11;
      if (v11)
      {
        *(v7 - 16) = v10;
        operator delete(v10);
      }

      v7 = v9;
    }

    while (v9 != v8);
    a1[1] = v8;
  }
}

void *std::vector<std::vector<long long>>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

uint64_t std::set_difference[abi:ne200100]<std::__wrap_iter<std::vector<long long> *>,std::__wrap_iter<std::vector<long long> *>,std::__wrap_iter<std::vector<long long> *>>(uint64_t a1, uint64_t a2, char **a3, char **a4, char **a5)
{
  v10 = a2;
  v11 = a1;
  v8 = a4;
  v9 = a3;
  v7 = a5;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &>(&v11, &v10, &v9, &v8, &v7);
  return v5;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    v2 = 0;
    return v2 & 1;
  }

  v4 = this;
  if (*(a2 + 15) != 13)
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 13;
    v12 = *(a2 + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v12);
    *(a2 + 6) = v13;
    v119 = v13;
    if (*(a2 + 15) == 13)
    {
      v14 = v13[2];
      if (v14)
      {
        v6 = (v14 + 7);
      }

      else
      {
        v6 = v13 + 2;
      }

      v7 = *(v13 + 6);
      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 13;
      v15 = *(a2 + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v15);
      *(a2 + 6) = v16;
      v18 = v16[2];
      v17 = v16 + 2;
      v19 = (v18 + 7);
      if (v18)
      {
        v6 = v19;
      }

      else
      {
        v6 = v17;
      }

      v7 = *(v17 + 2);
      if (v7)
      {
        goto LABEL_10;
      }
    }

LABEL_27:
    LOBYTE(v8) = 0;
    goto LABEL_28;
  }

  v119 = *(a2 + 6);
  v5 = v119[2];
  if (v5)
  {
    v6 = (v5 + 7);
  }

  else
  {
    v6 = v119 + 2;
  }

  v7 = *(v119 + 6);
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_10:
  v8 = 0;
  v9 = 8 * v7;
  do
  {
    v10 = *v6++;
    v8 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(v4 + 1), *(a2 + 3), *(a2 + 4), v10);
    v9 -= 8;
  }

  while (v9);
LABEL_28:
  v116 = v8;
  v123 = (v119 + 2);
  v121 = v4;
LABEL_31:
  while (2)
  {
    v20 = *(v119 + 6);
    if (v20 == 1)
    {
      operator new();
    }

    if (!v20)
    {
      operator new();
    }

    v133 = 0;
    v21 = 0uLL;
    v132 = 0u;
    if (v20 < 1)
    {
      goto LABEL_72;
    }

    v22 = 0;
    v23 = 0;
    while (2)
    {
      if (*v123)
      {
        v25 = (*v123 + 8 * v23 + 7);
      }

      else
      {
        v25 = (v119 + 2);
      }

      if (!operations_research::sat::PresolveContext::IsFixed(*(v4 + 1), *v25))
      {
        if (*v123)
        {
          v37 = (*v123 + 8 * v23 + 7);
        }

        else
        {
          v37 = v119 + 2;
        }

        v38 = *v37;
        v39 = *(&v132 + 1);
        if (*(&v132 + 1) >= v133)
        {
          v24 = std::vector<operations_research::sat::LinearExpressionProto>::__emplace_back_slow_path<operations_research::sat::LinearExpressionProto const&>(&v132, v38);
        }

        else
        {
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(*(&v132 + 1), 0, v38);
          v24 = (v39 + 80);
        }

        *(&v132 + 1) = v24;
        goto LABEL_37;
      }

      if (*v123)
      {
        v26 = (*v123 + 8 * v23 + 7);
      }

      else
      {
        v26 = (v119 + 2);
      }

      v27 = operations_research::sat::PresolveContext::MinOf(*(v4 + 1), *v26);
      v28 = 0;
      v29 = 0;
LABEL_46:
      v30 = 8 * v28++;
      v31 = v30 + 8;
      do
      {
        if (v22 + v28 != 1)
        {
          v32 = (*v123 & 1) != 0 ? (*v123 + v31 - 1) : (v119 + 2);
          if (operations_research::sat::PresolveContext::DomainContains(*(v4 + 1), *v32, v27))
          {
            v33 = *(v4 + 1);
            if (*v123)
            {
              v34 = (*v123 + v31 - 1);
            }

            else
            {
              v34 = (v119 + 2);
            }

            v35 = *v34;
            operations_research::Domain::Domain(&v126, v27);
            operations_research::Domain::Complement(&v134, &v126);
            v36 = operations_research::sat::PresolveContext::IntersectDomainWith(v33, v35, &v134, 0);
            if (v134)
            {
              operator delete(v135);
              if ((v126 & 1) == 0)
              {
LABEL_58:
                if ((v36 & 1) == 0)
                {
                  goto LABEL_97;
                }

LABEL_62:
                v29 = 1;
                if (v28 == v20)
                {
LABEL_70:
                  operator new();
                }

                goto LABEL_46;
              }
            }

            else if ((v126 & 1) == 0)
            {
              goto LABEL_58;
            }

            operator delete(__p);
            if ((v36 & 1) == 0)
            {
LABEL_97:
              v51 = 1;
              IsUnsat = 1;
              v52 = v132;
              if (!v132)
              {
                goto LABEL_29;
              }

              goto LABEL_202;
            }

            goto LABEL_62;
          }
        }

        ++v28;
        v31 += 8;
      }

      while (v28 - v20 != 1);
      if (v29)
      {
        goto LABEL_70;
      }

LABEL_37:
      ++v23;
      --v22;
      if (v23 != v20)
      {
        continue;
      }

      break;
    }

    v21 = v132;
LABEL_72:
    v40 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v21 + 1) - v21) >> 4));
    if (*(&v21 + 1) == v21)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,false>(v21, *(&v21 + 1), v41, 1);
    v42 = v119;
    v43 = *(&v132 + 1);
    v44 = v132;
    v45 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v132 + 1) - v132) >> 4);
    if (v45 >= 2)
    {
      v46 = 2;
      v47 = 1;
      while (1)
      {
        if (operations_research::sat::LinearExpressionProtosAreEqual((v44 + 80 * v47), (v44 + 80 * v46 - 160), 1))
        {
          IsUnsat = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(v4 + 1), "Duplicate variable in all_diff", 30);
          v51 = 1;
          v52 = v132;
          if (!v132)
          {
            goto LABEL_29;
          }

          goto LABEL_202;
        }

        if (!operations_research::sat::LinearExpressionProtosAreEqual((v132 + 80 * v47), (v132 + 80 * (v46 - 2)), 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_77;
        }

        v130[0] = 0;
        v48 = *(v4 + 1);
        v49 = v132;
        operations_research::Domain::Domain(&v126, 0);
        operations_research::Domain::Complement(&v134, &v126);
        v50 = operations_research::sat::PresolveContext::IntersectDomainWith(v48, (v49 + 80 * v47), &v134, v130);
        if (v134)
        {
          operator delete(v135);
          if (v126)
          {
LABEL_85:
            operator delete(__p);
            if ((v50 & 1) == 0)
            {
LABEL_207:
              IsUnsat = 0;
              v51 = 1;
              v52 = v132;
              if (v132)
              {
                goto LABEL_202;
              }

LABEL_29:
              if (v51)
              {
                goto LABEL_214;
              }

              goto LABEL_31;
            }

            goto LABEL_86;
          }
        }

        else if (v126)
        {
          goto LABEL_85;
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_207;
        }

LABEL_86:
        if (v130[0])
        {
          operator new();
        }

LABEL_77:
        v47 = v46;
        v43 = *(&v132 + 1);
        v44 = v132;
        v45 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v132 + 1) - v132) >> 4);
        ++v46;
        if (v45 <= v47)
        {
          v42 = v119;
          break;
        }
      }
    }

    v53 = *(v42 + 6);
    if (v45 < v53)
    {
      if (v53 >= 1)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v123);
        v43 = *(&v132 + 1);
        v44 = v132;
      }

      while (v44 != v43)
      {
        v54 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(v123, google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
        operations_research::sat::LinearExpressionProto::CopyFrom(v54, v44);
        v44 = (v44 + 80);
      }

      operator new();
    }

    if (v53 <= 1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v53, 2, "all_diff.exprs_size() >= 2");
    }

    if (*v123)
    {
      v55 = (*v123 + 7);
    }

    else
    {
      v55 = (v119 + 2);
    }

    operations_research::sat::PresolveContext::DomainSuperSetOf(v130, *(v4 + 1), *v55);
    LODWORD(v56) = *(v42 + 6);
    if (v56 >= 2)
    {
      v57 = 16;
      v58 = 1;
      do
      {
        if (*v123)
        {
          v59 = (*v123 + v57 - 1);
        }

        else
        {
          v59 = (v119 + 2);
        }

        operations_research::sat::PresolveContext::DomainSuperSetOf(&v126, *(v4 + 1), *v59);
        operations_research::Domain::UnionWith(&v134, v130, &v126);
        if (v130[0])
        {
          operator delete(v131);
        }

        *v130 = v134;
        v131 = v135;
        v134 = 0;
        if (v126)
        {
          operator delete(__p);
        }

        ++v58;
        v56 = *(v119 + 6);
        v57 += 8;
      }

      while (v58 < v56);
      v42 = v119;
    }

    if (operations_research::Domain::Size(v130) != v56)
    {
      goto LABEL_197;
    }

    v126 = 0;
    __p = 0;
    v128 = &unk_23CE31C20;
    v60 = v42[2];
    if (v60)
    {
      v61 = (v60 + 7);
    }

    else
    {
      v61 = v119 + 2;
    }

    v62 = *(v42 + 6);
    if (!v62)
    {
      goto LABEL_211;
    }

    v118 = &v61[v62];
    do
    {
      v63 = *v61;
      operations_research::sat::PresolveContext::DomainOf(&v134, *(v4 + 1), **(*v61 + 24));
      v124 = 0;
      if (v134 < 2)
      {
        goto LABEL_124;
      }

      if ((v134 & 1) == 0)
      {
        v124 = v134;
        v125 = v135;
LABEL_124:
        if ((v134 & 1) == 0)
        {
          goto LABEL_126;
        }

LABEL_125:
        operator delete(v135);
        goto LABEL_126;
      }

      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v124, &v134);
      if (v134)
      {
        goto LABEL_125;
      }

LABEL_126:
      v120 = v61;
      if (v124 <= 1)
      {
        v64 = v124;
        goto LABEL_176;
      }

      v64 = v124 & 1;
      if (v124)
      {
        v65 = v125;
      }

      else
      {
        v65 = &v125;
      }

      v66 = *v65;
      if (v124)
      {
        v67 = v125;
      }

      else
      {
        v67 = &v125;
      }

      if ((v124 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v68 = &v67[2 * (v124 >> 1)];
        v122 = v68;
        do
        {
          v69 = 0;
          v70 = *(v63 + 64) + **(v63 + 48) * v66;
          _X8 = v128;
          __asm { PRFM            #4, [X8] }

          v77 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v70) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v70));
          v78 = vdup_n_s8(v77 & 0x7F);
          v79 = ((v77 >> 7) ^ (v128 >> 12)) & v126;
          v80 = *(v128 + v79);
          v81 = vceq_s8(v80, v78);
          if (!v81)
          {
            goto LABEL_141;
          }

          do
          {
LABEL_139:
            v82 = (v79 + (__clz(__rbit64(v81)) >> 3)) & v126;
            if (v129[4 * v82] == v70)
            {
              v84 = &v129[4 * v82];
              v86 = v84[2];
              v85 = v84[3];
              if (v86 >= v85)
              {
                goto LABEL_148;
              }

              goto LABEL_145;
            }

            v81 &= ((v81 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v81);
LABEL_141:
          while (1)
          {
            v83 = vceq_s8(v80, 0x8080808080808080);
            if (v83)
            {
              break;
            }

            v69 += 8;
            v79 = (v69 + v79) & v126;
            v80 = *(v128 + v79);
            v81 = vceq_s8(v80, v78);
            if (v81)
            {
              goto LABEL_139;
            }
          }

          inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v126, v77, (v79 + (__clz(__rbit64(v83)) >> 3)) & v126, v69, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::GetPolicyFunctions(void)::value);
          v84 = &v129[4 * inserted];
          *v84 = v70;
          v84[1] = 0;
          v84[2] = 0;
          v84[3] = 0;
          v86 = v84[2];
          v85 = v84[3];
          if (v86 >= v85)
          {
LABEL_148:
            v88 = v84[1];
            v89 = 0xCCCCCCCCCCCCCCCDLL * ((v86 - v88) >> 4);
            v90 = v89 + 1;
            if (v89 + 1 > 0x333333333333333)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v91 = 0xCCCCCCCCCCCCCCCDLL * ((v85 - v88) >> 4);
            if (2 * v91 > v90)
            {
              v90 = 2 * v91;
            }

            if (v91 >= 0x199999999999999)
            {
              v92 = 0x333333333333333;
            }

            else
            {
              v92 = v90;
            }

            v137 = v84 + 1;
            if (v92)
            {
              if (v92 <= 0x333333333333333)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v134 = 0;
            *&v135 = 80 * v89;
            *(&v135 + 1) = 80 * v89;
            v136 = 0;
            operations_research::sat::LinearExpressionProto::LinearExpressionProto(80 * v89, 0, v63);
            v93 = *(&v135 + 1) + 80;
            *(&v135 + 1) += 80;
            v95 = v84[1];
            v94 = v84[2];
            v96 = (v135 + v95 - v94);
            if (v95 != v94)
            {
              v97 = v84[1];
              v98 = (v135 + v95 - v94);
              while (2)
              {
                operations_research::sat::LinearExpressionProto::LinearExpressionProto(v98, 0);
                if (v98 == v97)
                {
                  goto LABEL_160;
                }

                v99 = *(v98 + 1);
                if (v99)
                {
                  v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
                  v100 = *(v97 + 1);
                  if ((v100 & 1) == 0)
                  {
                    goto LABEL_164;
                  }
                }

                else
                {
                  v100 = *(v97 + 1);
                  if ((v100 & 1) == 0)
                  {
LABEL_164:
                    if (v99 != v100)
                    {
                      goto LABEL_165;
                    }

                    goto LABEL_159;
                  }
                }

                if (v99 != *(v100 & 0xFFFFFFFFFFFFFFFELL))
                {
LABEL_165:
                  operations_research::sat::LinearExpressionProto::CopyFrom(v98, v97);
                  goto LABEL_160;
                }

LABEL_159:
                operations_research::sat::LinearExpressionProto::InternalSwap(v98, v97);
LABEL_160:
                v97 = (v97 + 80);
                v98 = (v98 + 80);
                if (v97 == v94)
                {
                  do
                  {
                    operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v95);
                    v95 = (v95 + 80);
                  }

                  while (v95 != v94);
                  break;
                }

                continue;
              }
            }

            v101 = v84[1];
            v84[1] = v96;
            v84[2] = v93;
            v84[3] = v136;
            if (v101)
            {
              operator delete(v101);
            }

            v4 = v121;
            v68 = v122;
            v84[2] = v93;
            if (v66 == v67[1])
            {
              goto LABEL_173;
            }

LABEL_136:
            ++v66;
            continue;
          }

LABEL_145:
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(v86, 0, v63);
          v84[2] = v86 + 80;
          v84[2] = v86 + 80;
          if (v66 != v67[1])
          {
            goto LABEL_136;
          }

LABEL_173:
          v67 += 2;
          if (v67 != v68)
          {
            v66 = *v67;
          }
        }

        while (v67 != v68);
        v64 = v124 & 1;
      }

LABEL_176:
      if (v64)
      {
        operator delete(v125);
      }

      v61 = v120 + 1;
    }

    while (v120 + 1 != v118);
    if (__p >= 2)
    {
      v102 = v128;
      v103 = v129;
      if (*v128 <= -2)
      {
        do
        {
          v104 = __clz(__rbit64((*v102 | ~(*v102 >> 7)) & 0x101010101010101)) >> 3;
          v102 = (v102 + v104);
          v103 += 4 * v104;
        }

        while (*v102 < -1);
      }

      LOBYTE(v51) = 0;
      do
      {
        v105 = v103[1];
        if (v103[2] - v105 == 80 && !operations_research::sat::PresolveContext::IsFixed(*(v4 + 1), v105))
        {
          v106 = *(v4 + 1);
          v107 = v103[1];
          operations_research::Domain::Domain(&v134, *v103);
          v108 = operations_research::sat::PresolveContext::IntersectDomainWith(v106, v107, &v134, 0);
          if (v134)
          {
            operator delete(v135);
          }

          v51 = 1;
          if ((v108 & 1) == 0)
          {
            v112 = 0;
            IsUnsat = 1;
            goto LABEL_194;
          }
        }

        v110 = *(v102 + 1);
        v102 = (v102 + 1);
        LOBYTE(v109) = v110;
        v103 += 4;
        if (v110 <= -2)
        {
          do
          {
            v111 = __clz(__rbit64((*v102 | ~(*v102 >> 7)) & 0x101010101010101)) >> 3;
            v102 = (v102 + v111);
            v103 += 4 * v111;
            v109 = *v102;
          }

          while (v109 < -1);
        }
      }

      while (v109 != 255);
      if (v51)
      {
        operator new();
      }
    }

LABEL_211:
    v51 = 0;
    v112 = 1;
LABEL_194:
    if (v126)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::destroy_slots(&v126);
      operator delete((v128 - (__p & 1) - 8));
    }

    if (v112)
    {
LABEL_197:
      v51 = 4;
      if (!v130[0])
      {
        goto LABEL_201;
      }

      goto LABEL_198;
    }

    if (!v130[0])
    {
LABEL_201:
      v52 = v132;
      if (!v132)
      {
        goto LABEL_29;
      }

      goto LABEL_202;
    }

LABEL_198:
    operator delete(v131);
    v52 = v132;
    if (!v132)
    {
      goto LABEL_29;
    }

LABEL_202:
    v113 = *(&v132 + 1);
    v114 = v52;
    if (*(&v132 + 1) != v52)
    {
      do
      {
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v113 - 80));
      }

      while (v113 != v52);
      v114 = v132;
    }

    *(&v132 + 1) = v52;
    operator delete(v114);
    if (!v51)
    {
      continue;
    }

    break;
  }

LABEL_214:
  v2 = IsUnsat;
  if (v51 == 4)
  {
    v2 = v116;
  }

  return v2 & 1;
}