void sub_23CCCAECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (a28)
  {
    operator delete(a28);
    v36 = a31;
    if (!a31)
    {
LABEL_3:
      v37 = a34;
      if (!a34)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v36 = a31;
    if (!a31)
    {
      goto LABEL_3;
    }
  }

  operator delete(v36);
  v37 = a34;
  if (!a34)
  {
LABEL_4:
    if (!v34)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v37);
  if (!v34)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v34);
  _Unwind_Resume(a1);
}

void operations_research::sat::ComputeTrueObjectiveLowerBound(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::CpObjectiveProto *a3)
{
  operations_research::glop::LinearProgram::LinearProgram(v25);
  if (*(this + 8) >= 1)
  {
    v6 = 0;
    v7 = (this + 24);
    v8 = 8;
    do
    {
      if (*v7)
      {
        v9 = (*v7 + v8 - 1);
      }

      else
      {
        v9 = (this + 24);
      }

      v10 = *v9;
      NewVariable = operations_research::glop::LinearProgram::CreateNewVariable(v25);
      operations_research::glop::LinearProgram::SetVariableBounds(v25, NewVariable, **(v10 + 24), *(*(v10 + 24) + 8 * (*(v10 + 16) - 1)));
      ++v6;
      v8 += 8;
    }

    while (v6 < *(this + 8));
  }

  if (*(this + 19))
  {
    v12 = *(this + 19);
  }

  else
  {
    v12 = &operations_research::sat::_FloatObjectiveProto_default_instance_;
  }

  operations_research::glop::LinearProgram::SetObjectiveOffset(v25, *(v12 + 7));
  operations_research::glop::LinearProgram::SetMaximizationProblem(v25, *(v12 + 64));
  if (*(v12 + 4) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v12[3] + v13);
      operations_research::glop::LinearProgram::SetObjectiveCoefficient(v25, v14, *(v26 + 8 * v14) + *&v12[6][v13++]);
    }

    while (v13 < *(v12 + 4));
  }

  NewConstraint = operations_research::glop::LinearProgram::CreateNewConstraint(v25);
  v16 = a3;
  v17 = NewConstraint;
  operations_research::glop::LinearProgram::SetConstraintBounds(v25, NewConstraint, v16, INFINITY);
  if (*(a2 + 4) >= 1)
  {
    v19 = 0;
    do
    {
      operations_research::glop::LinearProgram::SetCoefficient(v25, v17, *(*(a2 + 3) + 4 * v19), *(*(a2 + 6) + 8 * v19));
      ++v19;
    }

    while (v19 < *(a2 + 4));
  }

  operations_research::glop::LinearProgram::CleanUp(v25, v18);
  operations_research::glop::LPSolver::LPSolver(v24);
  operations_research::glop::GlopParameters::GlopParameters(v20, 0);
  v22 = 100 * *(this + 8);
  v23 = 0;
  v21 = vorr_s8(v21, 0x1002000000);
  operations_research::glop::LPSolver::SetParameters(v24, v20);
  operations_research::glop::LPSolver::Solve(v24, v25);
}

void sub_23CCCB2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  operations_research::glop::GlopParameters::~GlopParameters(&a9);
  operations_research::glop::LPSolver::~LPSolver(&a50);
  operations_research::glop::LinearProgram::~LinearProgram(&STACK[0x5C0]);
  _Unwind_Resume(a1);
}

void operations_research::glop::LPSolver::~LPSolver(operations_research::glop::LPSolver *this)
{
  operations_research::glop::GlopParameters::~GlopParameters((this + 808));
  v2 = *(this + 94);
  if (v2)
  {
    *(this + 95) = v2;
    operator delete(v2);
  }

  v3 = *(this + 91);
  if (v3)
  {
    *(this + 92) = v3;
    operator delete(v3);
  }

  v4 = *(this + 88);
  if (v4)
  {
    *(this + 89) = v4;
    operator delete(v4);
  }

  v5 = *(this + 85);
  if (v5)
  {
    *(this + 86) = v5;
    operator delete(v5);
  }

  v6 = *(this + 82);
  if (v6)
  {
    *(this + 83) = v6;
    operator delete(v6);
  }

  v7 = *(this + 79);
  if (v7)
  {
    *(this + 80) = v7;
    operator delete(v7);
  }

  v8 = *(this + 76);
  if (v8)
  {
    *(this + 77) = v8;
    operator delete(v8);
  }

  v9 = *(this + 73);
  if (v9)
  {
    *(this + 74) = v9;
    operator delete(v9);
  }

  v10 = *(this + 70);
  if (v10)
  {
    *(this + 71) = v10;
    operator delete(v10);
  }

  v11 = *(this + 68);
  *(this + 68) = 0;
  if (v11)
  {
    operations_research::glop::RevisedSimplex::~RevisedSimplex(v11);
    MEMORY[0x23EED9460]();
  }

  v12 = *(this + 65);
  if (v12)
  {
    v13 = *(this + 66);
    v14 = *(this + 65);
    if (v13 != v12)
    {
      do
      {
        if (*(v13 - 1) < 0)
        {
          operator delete(*(v13 - 24));
        }

        v13 -= 40;
      }

      while (v13 != v12);
      v14 = *(this + 65);
    }

    *(this + 66) = v12;
    operator delete(v14);
  }

  v15 = *(this + 57);
  if (v15)
  {
    v16 = *(this + 58);
    v17 = *(this + 57);
    if (v16 != v15)
    {
      v18 = v16 - 32;
      do
      {
        v19 = *(v16 - 8);
        v16 -= 32;
        if (v16 == v19)
        {
          (*(*v19 + 32))(v19);
        }

        else if (v19)
        {
          (*(*v19 + 40))(v19);
        }

        v18 -= 32;
      }

      while (v16 != v15);
      v17 = *(this + 57);
    }

    *(this + 58) = v15;
    operator delete(v17);
  }

  operations_research::glop::LinearProgram::~LinearProgram(this);
}

operations_research::sat::SatSolver *operations_research::sat::SatSolver::SatSolver(operations_research::sat::SatSolver *this, operations_research::sat::Model *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PbConstraints>(a2);
  *(this + 3) = 0u;
  *(this + 5) = v4;
  *(this + 8) = 0u;
  *(this + 10) = xmmword_23CE306D0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 137) = 0u;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 27) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 28) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 29) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 30) = operations_research::sat::Model::GetOrCreate<operations_research::sat::RestartPolicy>(a2);
  *(this + 31) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(a2);
  *(this + 32) = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  *(this + 66) = 0;
  *(this + 46) = 0;
  *(this + 94) = 0;
  *(this + 65) = 0;
  *(this + 528) = 0;
  *(this + 34) = 0;
  *(this + 74) = 0;
  *(this + 280) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 348) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 489) = 0u;
  *(this + 67) = 0x3FF0000000000000;
  *(this + 136) = 0;
  *(this + 69) = 0;
  *(this + 140) = 0;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 154) = 0;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 168) = 0;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 206) = 0;
  *(this + 976) = 0;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 52) = 0u;
  *(this + 123) = *(this + 27);
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 64) = 0u;
  *(this + 62) = 0u;
  *(this + 254) = 0;
  *(this + 126) = 0;
  *(this + 1072) = 1;
  *(this + 1108) = 0u;
  *(this + 1080) = 0u;
  *(this + 1096) = 0u;
  *(this + 147) = 0;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
  *(this + 1128) = 0u;
  *(this + 1184) = 1;
  *(this + 149) = 0;
  *(this + 1223) = 9;
  strcpy(this + 1200, "SatSolver");
  *(this + 306) = 0;
  *(this + 156) = 0;
  *(this + 77) = 0u;
  *(this + 79) = 0u;
  *(this + 157) = this + 1264;
  operations_research::sat::SatSolver::InitializePropagators(this);
  return this;
}

void sub_23CCCB778(_Unwind_Exception *a1)
{
  operations_research::StatsGroup::~StatsGroup((v2 + 150));
  operations_research::sat::MutableUpperBoundedLinearConstraint::~MutableUpperBoundedLinearConstraint(v5);
  operations_research::sat::VariableWithSameReasonIdentifier::~VariableWithSameReasonIdentifier((v2 + 123));
  v10 = v2[119];
  if (v10)
  {
    v2[120] = v10;
    operator delete(v10);
    v11 = v2[116];
    if (!v11)
    {
LABEL_3:
      v12 = v2[113];
      if (!v12)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v11 = v2[116];
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  v2[117] = v11;
  operator delete(v11);
  v12 = v2[113];
  if (!v12)
  {
LABEL_4:
    v13 = v2[110];
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v2[114] = v12;
  operator delete(v12);
  v13 = v2[110];
  if (!v13)
  {
LABEL_5:
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2 + 103);
    v14 = v2[100];
    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v2[111] = v13;
  operator delete(v13);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2 + 103);
  v14 = v2[100];
  if (!v14)
  {
LABEL_6:
    v15 = v2[97];
    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v2[101] = v14;
  operator delete(v14);
  v15 = v2[97];
  if (!v15)
  {
LABEL_7:
    v16 = v2[94];
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v2[98] = v15;
  operator delete(v15);
  v16 = v2[94];
  if (!v16)
  {
LABEL_8:
    v17 = v2[91];
    if (!v17)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_23:
  v2[95] = v16;
  operator delete(v16);
  v17 = v2[91];
  if (!v17)
  {
LABEL_10:
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2 + 84);
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2 + 77);
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2 + 70);
    v18 = v2[42];
    if (v18)
    {
      v2[43] = v18;
      operator delete(v18);
      v19 = *v8;
      if (!*v8)
      {
LABEL_12:
        v20 = *v7;
        if (!*v7)
        {
          goto LABEL_13;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v19 = *v8;
      if (!*v8)
      {
        goto LABEL_12;
      }
    }

    v2[39] = v19;
    operator delete(v19);
    v20 = *v7;
    if (!*v7)
    {
LABEL_13:
      operations_research::sat::BinaryClauseManager::~BinaryClauseManager(v4);
      std::vector<std::unique_ptr<operations_research::sat::SatPropagator>>::~vector[abi:ne200100](v3);
      v21 = v2[12];
      if (!v21)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

LABEL_27:
    v2[35] = v20;
    operator delete(v20);
    operations_research::sat::BinaryClauseManager::~BinaryClauseManager(v4);
    std::vector<std::unique_ptr<operations_research::sat::SatPropagator>>::~vector[abi:ne200100](v3);
    v21 = v2[12];
    if (!v21)
    {
LABEL_14:
      v22 = v2[9];
      if (!v22)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    v2[13] = v21;
    operator delete(v21);
    v22 = v2[9];
    if (!v22)
    {
LABEL_15:
      v23 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    v2[10] = v22;
    operator delete(v22);
    v23 = *v6;
    if (!*v6)
    {
LABEL_16:
      std::unique_ptr<operations_research::sat::Model>::~unique_ptr[abi:ne200100](v1);
      _Unwind_Resume(a1);
    }

LABEL_30:
    v2[7] = v23;
    operator delete(v23);
    std::unique_ptr<operations_research::sat::Model>::~unique_ptr[abi:ne200100](v1);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v2[92] = v17;
  operator delete(v17);
  goto LABEL_10;
}

void operations_research::sat::SatSolver::~SatSolver(operations_research::sat::SatSolver *this)
{
  operations_research::StatsGroup::~StatsGroup((this + 1200));
  v2 = *(this + 144);
  if (v2)
  {
    *(this + 145) = v2;
    operator delete(v2);
  }

  v3 = *(this + 141);
  if (v3)
  {
    *(this + 142) = v3;
    operator delete(v3);
  }

  v4 = *(this + 135);
  if (v4)
  {
    *(this + 136) = v4;
    operator delete(v4);
  }

  v5 = *(this + 131);
  if (v5)
  {
    *(this + 132) = v5;
    operator delete(v5);
  }

  v6 = *(this + 128);
  if (v6)
  {
    *(this + 129) = v6;
    operator delete(v6);
  }

  v7 = *(this + 124);
  if (v7)
  {
    *(this + 125) = v7;
    operator delete(v7);
  }

  v8 = *(this + 119);
  if (v8)
  {
    *(this + 120) = v8;
    operator delete(v8);
  }

  v9 = *(this + 116);
  if (v9)
  {
    *(this + 117) = v9;
    operator delete(v9);
  }

  v10 = *(this + 113);
  if (v10)
  {
    *(this + 114) = v10;
    operator delete(v10);
  }

  v11 = *(this + 110);
  if (v11)
  {
    *(this + 111) = v11;
    operator delete(v11);
  }

  v12 = *(this + 107);
  if (v12)
  {
    *(this + 108) = v12;
    operator delete(v12);
  }

  v13 = *(this + 104);
  if (v13)
  {
    *(this + 105) = v13;
    operator delete(v13);
  }

  v14 = *(this + 100);
  if (v14)
  {
    *(this + 101) = v14;
    operator delete(v14);
  }

  v15 = *(this + 97);
  if (v15)
  {
    *(this + 98) = v15;
    operator delete(v15);
  }

  v16 = *(this + 94);
  if (v16)
  {
    *(this + 95) = v16;
    operator delete(v16);
  }

  v17 = *(this + 91);
  if (v17)
  {
    *(this + 92) = v17;
    operator delete(v17);
  }

  v18 = *(this + 88);
  if (v18)
  {
    *(this + 89) = v18;
    operator delete(v18);
  }

  v19 = *(this + 85);
  if (v19)
  {
    *(this + 86) = v19;
    operator delete(v19);
  }

  v20 = *(this + 81);
  if (v20)
  {
    *(this + 82) = v20;
    operator delete(v20);
  }

  v21 = *(this + 78);
  if (v21)
  {
    *(this + 79) = v21;
    operator delete(v21);
  }

  v22 = *(this + 74);
  if (v22)
  {
    *(this + 75) = v22;
    operator delete(v22);
  }

  v23 = *(this + 71);
  if (v23)
  {
    *(this + 72) = v23;
    operator delete(v23);
  }

  v24 = *(this + 42);
  if (v24)
  {
    *(this + 43) = v24;
    operator delete(v24);
  }

  v25 = *(this + 38);
  if (v25)
  {
    *(this + 39) = v25;
    operator delete(v25);
  }

  v26 = *(this + 34);
  if (v26)
  {
    *(this + 35) = v26;
    operator delete(v26);
  }

  v27 = *(this + 24);
  if (v27)
  {
    *(this + 25) = v27;
    operator delete(v27);
  }

  if (*(this + 20) >= 2uLL)
  {
    operator delete((*(this + 22) - (*(this + 21) & 1) - 8));
  }

  v28 = *(this + 16);
  if (v28)
  {
    v29 = *(this + 17);
    v30 = *(this + 16);
    if (v29 != v28)
    {
      do
      {
        v32 = *--v29;
        v31 = v32;
        *v29 = 0;
        if (v32)
        {
          (*(*v31 + 8))(v31);
        }
      }

      while (v29 != v28);
      v30 = *(this + 16);
    }

    *(this + 17) = v28;
    operator delete(v30);
  }

  v33 = *(this + 12);
  if (v33)
  {
    *(this + 13) = v33;
    operator delete(v33);
  }

  v34 = *(this + 9);
  if (v34)
  {
    *(this + 10) = v34;
    operator delete(v34);
  }

  v35 = *(this + 6);
  if (v35)
  {
    *(this + 7) = v35;
    operator delete(v35);
  }

  v36 = *(this + 1);
  *(this + 1) = 0;
  if (v36)
  {
    operations_research::sat::Model::~Model(v36);
    MEMORY[0x23EED9460]();
  }
}

operations_research::sat::PbConstraints *operations_research::sat::Model::GetOrCreate<operations_research::sat::PbConstraints>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PbConstraints>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PbConstraints>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::PbConstraints>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::PbConstraints>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::PbConstraints>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::SatSolver::InitializePropagators(operations_research::sat::SatSolver *this)
{
  v2 = this + 48;
  *(this + 7) = *(this + 6);
  v8 = *(this + 3);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](this + 48, &v8);
  v8 = *(v2 - 2);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v2, &v8);
  v8 = *(v2 - 1);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v2, &v8);
  v3 = *(v2 + 6);
  if (*(v2 + 7) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v2, (v3 + 8 * v4));
      v4 = v5;
      v3 = *(this + 12);
      ++v5;
    }

    while (v4 < (*(this + 13) - v3) >> 3);
  }

  v7 = *(this + 15);
  v6 = (this + 120);
  if (v7)
  {
    std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v2, v6);
  }
}

void operations_research::sat::MutableUpperBoundedLinearConstraint::~MutableUpperBoundedLinearConstraint(operations_research::sat::MutableUpperBoundedLinearConstraint *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void operations_research::sat::VariableWithSameReasonIdentifier::~VariableWithSameReasonIdentifier(operations_research::sat::VariableWithSameReasonIdentifier *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void operations_research::sat::BinaryClauseManager::~BinaryClauseManager(operations_research::sat::BinaryClauseManager *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  if (*this >= 2uLL)
  {
    operator delete((*(this + 2) - (*(this + 1) & 1) - 8));
  }
}

void *std::vector<std::unique_ptr<operations_research::sat::SatPropagator>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::SatSolver::SetNumVariables(operations_research::sat::SatSolver *this, uint64_t a2)
{
  if (*(this + 4) > a2)
  {
    operations_research::sat::SatSolver::SetNumVariables(a2, this + 4, &v9);
  }

  *(this + 4) = a2;
  operations_research::sat::BinaryImplicationGraph::Resize(*(this + 3), a2);
  operations_research::sat::ClauseManager::Resize(*(this + 4), a2);
  operations_research::sat::Trail::Resize(*(this + 27), a2);
  operations_research::sat::SatDecisionPolicy::IncreaseNumVariables(*(this + 31), a2);
  operations_research::sat::PbConstraints::Resize(*(this + 5), a2);
  v4 = *(this + 124);
  v5 = (*(this + 125) - v4) >> 2;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      *(this + 125) = v4 + 4 * a2;
    }
  }

  else
  {
    std::vector<int>::__append((this + 992), a2 - v5);
  }

  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 1016, a2);
  v6 = a2 + 1;
  v7 = *(this + 38);
  v8 = (*(this + 39) - v7) >> 3;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      *(this + 39) = v7 + 8 * v6;
    }
  }

  else
  {

    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(this + 304, v6 - v8);
  }
}

void operations_research::sat::PbConstraints::Resize(operations_research::sat::PbConstraints *this, int a2)
{
  if (*(this + 5) != *(this + 6))
  {
    v4 = 2 * a2;
    v7 = *(this + 11);
    v6 = *(this + 12);
    v5 = this + 88;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    if (v4 <= v8)
    {
      if (v4 < v8)
      {
        v9 = v7 + 24 * v4;
        if (v6 != v9)
        {
          v10 = v6;
          do
          {
            v12 = *(v10 - 24);
            v10 -= 24;
            v11 = v12;
            if (v12)
            {
              *(v6 - 16) = v11;
              operator delete(v11);
            }

            v6 = v10;
          }

          while (v10 != v9);
        }

        *(this + 12) = v9;
      }
    }

    else
    {
      std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v5, v4 - v8);
    }

    v13 = *(this + 29);
    v14 = (*(this + 30) - v13) >> 4;
    if (a2 <= v14)
    {
      if (a2 < v14)
      {
        *(this + 30) = v13 + 16 * a2;
      }
    }

    else
    {

      std::vector<operations_research::sat::PbConstraintsEnqueueHelper::ReasonInfo>::__append(this + 232, a2 - v14);
    }
  }
}

BOOL operations_research::sat::SatSolver::SetParameters(const operations_research::sat::SatParameters **this, const operations_research::sat::SatParameters *a2)
{
  operations_research::sat::SatParameters::CopyFrom(this[29], a2);
  operations_research::sat::RestartPolicy::Reset(this[30], v4);
  operations_research::TimeLimit::ResetTimers(this[28], *(a2 + 56), *(a2 + 67));
  v5 = this[32];
  if (*(a2 + 290))
  {
    result = 1;
  }

  else
  {
    if (dword_27E25D2D8 >= 1)
    {
      result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatSolver::SetParameters(operations_research::sat::SatParameters const&)::$_0::operator() const(void)::site, dword_27E25D2D8);
      v7 = this[32];
      goto LABEL_6;
    }

    result = 0;
  }

  v7 = this[32];
LABEL_6:
  *v5 = result;
  *(v7 + 1) = *(a2 + 566);
  return result;
}

uint64_t operations_research::sat::SatSolver::AddClauseDuringSearch(uint64_t a1, int *a2, unint64_t a3)
{
  if (*(a1 + 528))
  {
    return 0;
  }

  v4 = *(a1 + 216);
  if ((*(v4 + 8) & 0xFFFFFFF) != 0)
  {
    v5 = *(v4 + 12);
    switch(a3)
    {
      case 2uLL:
        v6 = a1;
        if (operations_research::sat::BinaryImplicationGraph::AddBinaryClause(*(a1 + 24), *a2, a2[1]))
        {
LABEL_16:
          if (*(*(v6 + 216) + 12) == v5)
          {
            return 1;
          }

          return operations_research::sat::SatSolver::FinishPropagation(v6);
        }

        result = *(v6 + 296);
        if (result)
        {
          operations_research::sat::SatSolver::AddClauseDuringSearch(result, v7);
        }

        break;
      case 1uLL:
        *v7 = *a2;
        return operations_research::sat::SatSolver::AddProblemClause(a1, v7, 1, 1);
      case 0uLL:
        *(a1 + 528) = 1;
        return 0;
      default:
        v6 = a1;
        if (operations_research::sat::ClauseManager::AddClause(*(a1 + 32), a2, a3))
        {
          goto LABEL_16;
        }

        result = *(v6 + 296);
        if (result)
        {
          operations_research::sat::SatSolver::AddClauseDuringSearch(result, v7);
        }

        break;
    }

    *(v6 + 528) = 1;
    return result;
  }

  return operations_research::sat::SatSolver::AddProblemClause(a1, a2, a3, 0);
}

uint64_t operations_research::sat::SatSolver::AddProblemClause(uint64_t a1, char *__src, uint64_t a3, int a4)
{
  if (*(a1 + 528))
  {
    return 0;
  }

  v33 = v4;
  v34 = v5;
  v8 = __src;
  v10 = (a1 + 800);
  if (*(a1 + 296))
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a1 + 800), __src, &__src[4 * a3], (4 * a3) >> 2);
  }

  else
  {
    *(a1 + 808) = *(a1 + 800);
    if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = 4 * a3;
      do
      {
        v27 = *v8;
        v31 = v27;
        v28 = *(*(*(a1 + 216) + 24) + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if ((v28 >> v27))
        {
          return 1;
        }

        if (((v28 >> (v27 & 0x3F ^ 1u)) & 1) == 0)
        {
          std::vector<int>::push_back[abi:ne200100](v10, &v31);
        }

        ++v8;
        v26 -= 4;
      }

      while (v26);
    }
  }

  v11 = *v10;
  if (a4)
  {
    v12 = (*(a1 + 808) - v11) >> 2;
  }

  else
  {
    v17 = *(a1 + 808);
    v18 = 126 - 2 * __clz(v17 - v11);
    if (v17 == v11)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(*v10, *(a1 + 808), &v32, v19, 1);
    v11 = *(a1 + 800);
    v20 = *(a1 + 808);
    if (v11 != v20)
    {
      v21 = v11 + 1;
      while (v21 != v20)
      {
        v23 = *(v21 - 1);
        v22 = *v21++;
        if (v23 == v22)
        {
          v24 = v21 - 2;
          while (v21 != v20)
          {
            v25 = v22;
            v22 = *v21;
            if (v25 != *v21)
            {
              v24[1] = v22;
              ++v24;
            }

            ++v21;
          }

          if (v24 + 1 != v20)
          {
            v20 = v24 + 1;
            *(a1 + 808) = v24 + 1;
          }

          break;
        }
      }
    }

    v29 = 0;
    v12 = v20 - v11;
    while (v12 > v29 + 1)
    {
      v30 = v11[v29] ^ v11[v29 + 1];
      ++v29;
      if (v30 == 1)
      {
        return 1;
      }
    }
  }

  result = operations_research::sat::SatSolver::AddProblemClauseInternal(a1, v11, v12);
  if (result)
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    while (v13 != v14)
    {
      v15 = *v13;
      if (((*(**v13 + 40))(*v13) & 1) == 0 && *(v15 + 36) != *(*(a1 + 216) + 12))
      {
        v16 = operations_research::sat::SatSolver::Propagate(a1);
        result = 1;
        if ((v16 & 1) == 0)
        {
          *(a1 + 528) = 1;
          return 0;
        }

        return result;
      }

      ++v13;
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::SatSolver::FinishPropagation(operations_research::sat::SatSolver *this)
{
  if (*(this + 528))
  {
    return 0;
  }

  v3 = *(this + 74);
  if (operations_research::sat::SatSolver::Propagate(this))
  {
    return 1;
  }

  for (i = 1; ; ++i)
  {
    operations_research::sat::SatSolver::ProcessCurrentConflict(this);
    v5 = *(this + 528);
    if (v5)
    {
      return v5 ^ 1u;
    }

    if (*(this + 74) == v3)
    {
      break;
    }

    v3 = *(this + 74);
    if ((i & 0xF) == 0)
    {
      if (operations_research::TimeLimit::LimitReached(*(this + 28)))
      {
        return v5 ^ 1u;
      }

      v3 = *(this + 74);
    }

    if (operations_research::sat::SatSolver::Propagate(this))
    {
      return v5 ^ 1u;
    }
  }

  if (*(this + 42) == *(this + 43))
  {
    operations_research::sat::SatSolver::FinishPropagation(&v6);
  }

  return 0;
}

uint64_t operations_research::sat::SatSolver::AddBinaryClause(uint64_t a1, int a2, int a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  v4[1] = a3;
  return operations_research::sat::SatSolver::AddProblemClause(a1, v4, 2, 1);
}

uint64_t operations_research::sat::SatSolver::AddTernaryClause(uint64_t a1, int a2, int a3, int a4)
{
  v6 = *MEMORY[0x277D85DE8];
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  return operations_research::sat::SatSolver::AddProblemClause(a1, __src, 3, 1);
}

uint64_t operations_research::sat::SatSolver::AddProblemClauseInternal(uint64_t a1, int *a2, unint64_t a3)
{
  switch(a3)
  {
    case 2uLL:
      v13 = a2;
      v11 = *a2;
      v12 = v13[1];
      if (v11 == v12)
      {
        v14 = *(a1 + 216);
        v15 = *(v14 + 12);
        *(v14 + 8) = *(v14 + 8) & 0xFFFFFFF | 0x10000000;
        *(*(v14 + 48) + 4 * v15) = v12;
        *(*(v14 + 96) + 8 * (v12 >> 1)) = *(v14 + 8);
        *(*(v14 + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        ++*(v14 + 12);
        return 1;
      }

      else
      {
        if ((v11 ^ v12) != 1)
        {
          operations_research::sat::SatSolver::AddBinaryClauseInternal(a1, v11, v12);
        }

        return 1;
      }

    case 1uLL:
      v5 = *(a1 + 1192);
      if (v5)
      {
        v18 = *a2;
        v6 = a2;
        v7 = a1;
        operations_research::sat::DratProofHandler::AddClause(v5, &v18, 1);
        a2 = v6;
        a1 = v7;
      }

      v8 = *(a1 + 216);
      v9 = *a2;
      v10 = *(v8 + 12);
      *(v8 + 8) = *(v8 + 8) & 0xFFFFFFF | 0x10000000;
      *(*(v8 + 48) + 4 * v10) = v9;
      *(*(v8 + 96) + 8 * (v9 >> 1)) = *(v8 + 8);
      *(*(v8 + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      ++*(v8 + 12);
      return 1;
    case 0uLL:
      v3 = 0;
      *(a1 + 528) = 1;
      return v3;
    default:
      v16 = a1;
      v17 = operations_research::sat::ClauseManager::AddClause(*(a1 + 32), a2, a3, *(a1 + 216));
      v3 = 1;
      if (v17)
      {
        return v3;
      }

      *(v16 + 528) = 1;
      return 0;
  }
}

uint64_t operations_research::sat::SatSolver::Propagate(operations_research::sat::SatSolver *this)
{
LABEL_1:
  *(this + 10) = *(this + 9);
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 == v3)
  {
    goto LABEL_18;
  }

  do
  {
    v15 = *v2;
    if (((*(*v15 + 40))(v15) & 1) == 0)
    {
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](this + 72, &v15);
    }

    ++v2;
  }

  while (v2 != v3);
  if (*(this + 9) == *(this + 10))
  {
    goto LABEL_18;
  }

  v4 = *(*(this + 27) + 12);
LABEL_8:
  v5 = *(this + 9);
  v6 = *(this + 10);
  if (v5 == v6)
  {
LABEL_18:
    v12 = *(this + 6);
    v13 = *(this + 7);
    while (v12 != v13)
    {
      v14 = *v12;
      if (((*(**v12 + 40))(*v12) & 1) == 0 && *(v14 + 36) != *(*(this + 27) + 12))
      {
        goto LABEL_1;
      }

      ++v12;
    }

    return 1;
  }

  else
  {
    v7 = v5 + 8;
    while (1)
    {
      result = (*(**(v7 - 8) + 16))(*(v7 - 8));
      if (!result)
      {
        break;
      }

      v9 = *(this + 27);
      v10 = *(v9 + 12);
      v11 = v10 > v4 || v7 == v6;
      v7 += 8;
      if (v11)
      {
        v11 = v10 == v4;
        v4 = *(v9 + 12);
        if (v11)
        {
          goto LABEL_18;
        }

        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::SatSolver::AddBinaryClauseInternal(uint64_t a1, int a2, int a3)
{
  if ((*(a1 + 152) & 1) == 0 || (result = operations_research::sat::BinaryClauseManager::Add(a1 + 160, a2 | (a3 << 32)), result))
  {
    result = operations_research::sat::BinaryImplicationGraph::AddBinaryClause(*(a1 + 24), a2, a3);
    if ((result & 1) == 0)
    {
      result = *(a1 + 296);
      if (result)
      {
        operations_research::sat::SatSolver::AddBinaryClauseInternal(result, &v7);
      }

      *(a1 + 528) = 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::SatSolver::AddLinearConstraintInternal(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    result = 0;
    *(a1 + 528) = 1;
  }

  else if (a3 >= a4)
  {
    return 1;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = *(*a2 + 1);
    if (a4 - v7 <= a3)
    {
      v11 = *(a1 + 800);
      *(a1 + 808) = v11;
      if (v5 == v6)
      {
        v13 = v11;
      }

      else
      {
        do
        {
          v12 = *v5;
          v5 += 4;
          v17 = v12 ^ 1;
          std::vector<int>::push_back[abi:ne200100](a1 + 800, &v17);
        }

        while (v5 != v6);
        v13 = *(a1 + 800);
        v11 = *(a1 + 808);
      }

      return operations_research::sat::SatSolver::AddProblemClauseInternal(a1, v13, v11 - v13);
    }

    else
    {
      if (a3 >= 2 * v7 || (*(*(a1 + 232) + 269) & 1) != 0 || *(v6 - 8) > a3)
      {
        *(a1 + 1184) = 0;
        v14 = *(a1 + 40);
        v15 = *(a1 + 216);

        operations_research::sat::PbConstraints::AddConstraint(v14, a2, a3, v15);
      }

      v8 = *(a1 + 800);
      *(a1 + 808) = v8;
      if (v5 == v6)
      {
        v9 = v8;
      }

      else
      {
        do
        {
          std::vector<int>::push_back[abi:ne200100](a1 + 800, v5);
          v5 += 4;
        }

        while (v5 != v6);
        v9 = *(a1 + 800);
        v8 = *(a1 + 808);
      }

      v16 = operations_research::sat::BinaryImplicationGraph::AddAtMostOne(*(a1 + 24), v9, (v8 - v9) >> 2);
      result = 1;
      if ((v16 & 1) == 0)
      {
        *(a1 + 528) = 1;
        return 0;
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::SatSolver::CanonicalizeLinear(uint64_t a1, __int128 **a2, void *a3, void *a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(*a2, v7);
  if (*a2 == v7)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(*(a1 + 216) + 24) + ((*v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v12 = *v6 & 0x3F;
      if (((v11 >> (v12 ^ 1u)) & 1) == 0)
      {
        if ((v11 >> v12))
        {
          v13 = *(v6 + 1);
          v14 = -v13;
          v15 = v10 - v13;
          v16 = v15 ^ v10;
          v10 = v15;
          if (((v15 ^ v14) & v16) < 0 != v8)
          {
            operations_research::sat::SatSolver::CanonicalizeLinear(v24);
          }
        }

        else
        {
          (*a2)[v9++] = *v6;
        }
      }

      v8 = __OFSUB__(++v6, v7);
    }

    while (v6 != v7);
    v17 = v9;
    v18 = a2[1] - *a2;
    if (v17 <= v18)
    {
      if (v17 < v18)
      {
        a2[1] = &(*a2)[v17];
      }
    }

    else
    {
      v19 = a4;
      std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(a2, v17 - v18);
      a4 = v19;
    }
  }

  v23 = 0;
  result = operations_research::sat::ComputeBooleanLinearExpressionCanonicalForm(a2, &v23, a4);
  if ((result & 1) == 0)
  {
    operations_research::sat::SatSolver::CanonicalizeLinear(v24);
  }

  v22 = *a3 + v23;
  if (((v22 ^ v23) & (v22 ^ *a3)) < 0 != v20)
  {
    operations_research::sat::SatSolver::CanonicalizeLinear(v24);
  }

  *a3 = v22;
  if ((((v22 + v10) ^ v10) & ((v22 + v10) ^ v22)) < 0 != v20)
  {
    operations_research::sat::SatSolver::CanonicalizeLinear(v24);
  }

  *a3 = v22 + v10;
  return result;
}

uint64_t operations_research::sat::SatSolver::AddLinearConstraint(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int128 **a6)
{
  v7 = *(a1 + 296);
  if (v7)
  {
    operations_research::sat::SatSolver::AddLinearConstraint(v7, v34);
  }

  if (*(a1 + 528))
  {
    return 0;
  }

  v34[0] = 0;
  if (a4)
  {
    v10 = a2;
    v11 = a3;
    v33 = 0;
    operations_research::sat::SatSolver::CanonicalizeLinear(a1, a6, v34, &v33);
    v13 = operations_research::sat::ComputeCanonicalRhs(a5, v34[0], v33);
    if ((operations_research::sat::SatSolver::AddLinearConstraintInternal(a1, a6, v13, v33) & 1) == 0)
    {
LABEL_29:
      result = 0;
      *(a1 + 528) = 1;
      return result;
    }

    a3 = v11;
    a2 = v10;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  v33 = 0;
  v14 = a3;
  operations_research::sat::SatSolver::CanonicalizeLinear(a1, a6, v34, &v33);
  v15 = *a6;
  v16 = a6[1] - *a6;
  if (v16)
  {
    v17 = v16 >> 4;
    v18 = v17 - 1;
    if (v17 <= 1 || (&v15[v18] >= v15 ? (v19 = v18 > 0x7FFFFFFE) : (v19 = 1), (v20 = v18 >> 31, !v19) ? (v21 = v20 == 0) : (v21 = 0), !v21))
    {
      v22 = 0;
      v23 = 0;
LABEL_19:
      v24 = v23 + 1;
      do
      {
        LODWORD(v15[v22]) ^= 1u;
        v22 = v24++;
      }

      while (v17 > v22);
      goto LABEL_21;
    }

    v22 = v17 & 0xFFFFFFFE;
    v23 = v17 & 0xFFFFFFFE;
    v30 = (v15 + 1);
    v31 = v22;
    do
    {
      v32 = *v30 ^ 1;
      *(v30 - 4) ^= 1u;
      *v30 = v32;
      v30 += 8;
      v31 -= 2;
    }

    while (v31);
    if (v17 != v22)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v25 = operations_research::sat::ComputeNegatedCanonicalRhs(v14, v34[0], v33);
  if ((operations_research::sat::SatSolver::AddLinearConstraintInternal(a1, a6, v25, v33) & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  if (v26 == v27)
  {
    return 1;
  }

  while (1)
  {
    v28 = *v26;
    if (((*(**v26 + 40))(*v26) & 1) == 0 && *(v28 + 36) != *(*(a1 + 216) + 12))
    {
      break;
    }

    if (++v26 == v27)
    {
      return 1;
    }
  }

  v29 = operations_research::sat::SatSolver::Propagate(a1);
  result = 1;
  if ((v29 & 1) == 0)
  {
    *(a1 + 528) = 1;
    return 0;
  }

  return result;
}

uint64_t operations_research::sat::SatSolver::AddLearnedClauseAndEnqueueUnitPropagation(uint64_t a1, int **a2, int a3)
{
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6 == 2)
  {
    if (*(a1 + 152) == 1)
    {
      if (!operations_research::sat::BinaryClauseManager::Add(a1 + 160, *v5))
      {
        operations_research::sat::SatSolver::AddLearnedClauseAndEnqueueUnitPropagation(v34);
      }

      v5 = *a2;
    }

    if (!operations_research::sat::BinaryImplicationGraph::AddBinaryClause(*(a1 + 24), *v5, v5[1]))
    {
      operations_research::sat::SatSolver::AddLearnedClauseAndEnqueueUnitPropagation(v34);
    }

    return 2;
  }

  else
  {
    if (v6 == 1)
    {
      v7 = *(a1 + 296);
      if (v7)
      {
        operations_research::sat::SatSolver::AddLearnedClauseAndEnqueueUnitPropagation(v7, v34);
      }

      v8 = *(a1 + 216);
      v9 = *v5;
      v10 = *(v8 + 12);
      *(v8 + 8) = *(v8 + 8) & 0xFFFFFFF | 0x10000000;
      *(*(v8 + 48) + 4 * v10) = v9;
      *(*(v8 + 96) + 8 * (v9 >> 1)) = *(v8 + 8);
      v11 = 1;
      *(*(v8 + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      ++*(v8 + 12);
      return v11;
    }

    operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(a1);
    v14 = operations_research::sat::SatSolver::ComputeLbd<std::vector<operations_research::sat::Literal>>(a1, a2);
    v11 = v14;
    if (!a3 || v14 <= *(*(a1 + 232) + 512))
    {
      if ((operations_research::sat::ClauseManager::AddClause(*(a1 + 32), *a2, a2[1] - *a2, *(a1 + 216)) & 1) == 0)
      {
        operations_research::sat::SatSolver::AddLearnedClauseAndEnqueueUnitPropagation(v34);
      }

      return v11;
    }

    --*(a1 + 544);
    v15 = operations_research::sat::ClauseManager::AddRemovableClause(*(a1 + 32), a2, *(a1 + 216));
    v16 = v15;
    v17 = 0;
    v18 = *(a1 + 32);
    _X8 = v18[41];
    __asm { PRFM            #4, [X8] }

    v25 = v15 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15)));
    v26 = ((v25 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v25);
    v27 = v18[39];
    v28 = vdup_n_s8(v26 & 0x7F);
    v29 = ((v26 >> 7) ^ (_X8 >> 12)) & v27;
    v30 = *(_X8 + v29);
    v31 = vceq_s8(v30, v28);
    if (!v31)
    {
      goto LABEL_18;
    }

LABEL_16:
    while (1)
    {
      v32 = (v18[42] + 24 * ((v29 + (__clz(__rbit64(v31)) >> 3)) & v27));
      if (*v32 == v15)
      {
        break;
      }

      v31 &= ((v31 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v31)
      {
LABEL_18:
        while (1)
        {
          v33 = vceq_s8(v30, 0x8080808080808080);
          if (v33)
          {
            break;
          }

          v17 += 8;
          v29 = (v17 + v29) & v27;
          v30 = *(_X8 + v29);
          v31 = vceq_s8(v30, v28);
          if (v31)
          {
            goto LABEL_16;
          }
        }

        v32 = (v18[42] + 24 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(v18 + 39, v26, (v29 + (__clz(__rbit64(v33)) >> 3)) & v27, v17, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::SatClause *,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::SatClause *,void>::Eq,std::allocator<std::pair<operations_research::sat::SatClause * const,operations_research::sat::ClauseInfo>>>::GetPolicyFunctions(void)::value));
        *v32 = v16;
        v32[1] = 0;
        v32[2] = 0;
        break;
      }
    }

    *(v32 + 4) = v11;
    operations_research::sat::SatSolver::BumpClauseActivity(a1, v16);
    return v11;
  }
}

uint64_t operations_research::sat::BinaryClauseManager::Add(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  if (a2)
  {
    v3 = ~(a2 >> 1);
  }

  else
  {
    v3 = (a2 >> 1) + 1;
  }

  if ((a2 & 0x100000000) != 0)
  {
    v4 = ~(a2 >> 33);
  }

  else
  {
    v4 = (a2 >> 33) + 1;
  }

  v29 = __PAIR64__(v4, v3);
  if (v3 <= v4)
  {
    v5 = v4;
    v4 = v3;
    v6 = *a1;
    if (*a1 > 1uLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v29 = __PAIR64__(v3, v4);
    v5 = v3;
    v6 = *a1;
    if (*a1 > 1uLL)
    {
LABEL_9:
      v7 = 0;
      v8 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4))) + v5;
      v9 = 0x9DDFEA08EB382D69 * v8;
      v10 = (v8 * 0x9DDFEA08EB382D69) >> 64;
      _X12 = *(a1 + 16);
      __asm { PRFM            #4, [X12] }

      v16 = v10 ^ v9;
      v17 = vdup_n_s8(v16 & 0x7F);
      v18 = ((v16 >> 7) ^ (_X12 >> 12)) & v6;
      v19 = *(_X12 + v18);
      v20 = vceq_s8(v19, v17);
      if (!v20)
      {
        goto LABEL_15;
      }

LABEL_10:
      while (1)
      {
        v21 = (*(a1 + 24) + 8 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v6));
        v23 = *v21;
        v22 = v21[1];
        if (v23 == v4 && v22 == v5)
        {
          return 0;
        }

        v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v20)
        {
LABEL_15:
          while (!*&vceq_s8(v19, 0x8080808080808080))
          {
            v7 += 8;
            v18 = (v7 + v18) & v6;
            v19 = *(_X12 + v18);
            v20 = vceq_s8(v19, v17);
            if (v20)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_20;
        }
      }
    }
  }

  if (*(a1 + 8) >= 2uLL && *(a1 + 16) == v4 && *(a1 + 20) == v5)
  {
    return 0;
  }

LABEL_20:
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>(a1, &v29, v26);
  if (v28 == 1)
  {
    *v27 = v29;
  }

  std::vector<long long>::push_back[abi:ne200100](a1 + 32, &v30);
  return 1;
}

void operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(operations_research::sat::SatSolver *this)
{
  if (*(this + 136) > 0)
  {
    return;
  }

  __p = 0;
  v57 = 0;
  v58 = 0;
  v2 = *(this + 4);
  v3 = v2[40];
  if (v3 >= 2)
  {
    v4 = v2[41];
    v5 = v2[42];
    if (*v4 <= -2)
    {
      do
      {
        v6 = __clz(__rbit64((*v4 | ~(*v4 >> 7)) & 0x101010101010101)) >> 3;
        v4 = (v4 + v6);
        v5 += 3 * v6;
      }

      while (*v4 < -1);
    }

    while (1)
    {
      v7 = *v5;
      v8 = (*(*v5 + 4) >> 1);
      v9 = *(this + 27);
      v10 = v8 << 32;
      v11 = *(v9 + 96);
      v12 = (v11 + 8 * v8);
      v13 = v12[1];
      if (v13 >= *(v9 + 12) || v8 != *(*(v9 + 48) + 4 * v13) >> 1)
      {
        goto LABEL_15;
      }

      v14 = *v12;
      if (v14 >> 28 == 3)
      {
        v15 = *(*(v9 + 128) + 4 * v8);
        v10 = v15 << 32;
        v16 = *(v11 + 8 * v15) >> 28;
        if (v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v14 >> 28;
        if (v14 >> 28)
        {
LABEL_9:
          v17 = *(this + 4);
          if (v16 == *(v17 + 8))
          {
            goto LABEL_10;
          }

          goto LABEL_14;
        }
      }

      v17 = *(this + 4);
      if (*(*(v9 + 224) + (v10 >> 30)) == *(v17 + 8))
      {
LABEL_10:
        if (operations_research::sat::ClauseManager::ReasonClause(v17, v13) == v7)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_14:
      if (!v7)
      {
        goto LABEL_17;
      }

LABEL_15:
      if (*(v5 + 20) == 1)
      {
        *(v5 + 20) = 0;
LABEL_17:
        v19 = *(v4 + 1);
        v4 = (v4 + 1);
        LOBYTE(v18) = v19;
        v5 += 3;
        if (v19 <= -2)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      v21 = *v5;
      v55 = *(v5 + 1);
      v22 = v57;
      if (v57 >= v58)
      {
        v24 = __p;
        v25 = v57 - __p;
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v57 - __p) >> 3);
        v27 = v26 + 1;
        if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v58 - __p) >> 3) > v27)
        {
          v27 = 0x5555555555555556 * ((v58 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v58 - __p) >> 3) >= 0x555555555555555)
        {
          v28 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          if (v28 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v29 = 8 * ((v57 - __p) >> 3);
        *v29 = v21;
        *(v29 + 8) = v55;
        v30 = 24 * v26 + 24;
        v31 = (v29 - v25);
        memcpy((v29 - v25), v24, v25);
        __p = v31;
        v58 = 0;
        if (v24)
        {
          operator delete(v24);
        }

        v57 = v30;
        v32 = *(v4 + 1);
        v4 = (v4 + 1);
        LOBYTE(v18) = v32;
        v5 += 3;
        if (v32 > -2)
        {
          goto LABEL_19;
        }

        do
        {
LABEL_18:
          v20 = __clz(__rbit64((*v4 | ~(*v4 >> 7)) & 0x101010101010101)) >> 3;
          v4 = (v4 + v20);
          v5 += 3 * v20;
          v18 = *v4;
        }

        while (v18 < -1);
        goto LABEL_19;
      }

      *v57 = v21;
      *(v22 + 8) = v55;
      v57 = v22 + 24;
      v23 = *(v4 + 1);
      v4 = (v4 + 1);
      LOBYTE(v18) = v23;
      v5 += 3;
      if (v23 <= -2)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (v18 == 255)
      {
        v3 = v2[40];
        v33 = __p;
        v34 = v57;
        goto LABEL_38;
      }
    }
  }

  v33 = 0;
  v34 = 0;
LABEL_38:
  v35 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
  v36 = 126 - 2 * __clz(v35);
  if (v34 == v33)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  if (*(*(this + 29) + 224) == 1)
  {
    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,false>(v33, v34, v37, 1);
    v38 = *(this + 29);
    v39 = *(v38 + 196);
    if (v39 < 1)
    {
      goto LABEL_43;
    }

LABEL_53:
    if (v39 >= v35)
    {
      v40 = -1431655765 * (v34 - v33);
    }

    else
    {
      v40 = v39;
    }

    v41 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
    v42 = (v35 - v40);
    if (v40 >= 1 && v42 >= 1)
    {
      goto LABEL_47;
    }

    goto LABEL_61;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,false>(v33, v34, v37, 1);
  v38 = *(this + 29);
  v39 = *(v38 + 196);
  if (v39 >= 1)
  {
    goto LABEL_53;
  }

LABEL_43:
  v40 = (*(v38 + 760) * v35);
  v41 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
  v42 = (v35 - v40);
  if (v40 >= 1 && v42 >= 1)
  {
LABEL_47:
    v44 = v33[3 * v42 + 1];
    v45 = -v40;
    v46 = &v33[3 * (~v40 + v41) + 2];
    while (1)
    {
      v47 = v44;
      v42 = (v41 + v45);
      v44 = *(v46 - 1);
      if (v47 != v44 || LODWORD(v33[3 * v42 + 2]) != *v46)
      {
        break;
      }

      --v45;
      v46 -= 3;
      if (!(v41 + v45))
      {
        LODWORD(v42) = 0;
        goto LABEL_71;
      }
    }

    LODWORD(v41) = -v45;
    v49 = v42 >= v35;
    v50 = v42 - v35;
    if (v42 <= v35)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

LABEL_61:
  LODWORD(v41) = v40;
  if (v42 >= 1)
  {
    v49 = v42 >= v35;
    v50 = v42 - v35;
    if (v42 <= v35)
    {
LABEL_65:
      if (!v49)
      {
        v34 = &v33[3 * v42];
        v57 = v34;
      }

      goto LABEL_68;
    }

LABEL_63:
    std::vector<std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo>>::__append(&__p, v50);
    v33 = __p;
    v34 = v57;
LABEL_68:
    while (v33 != v34)
    {
      v51 = *v33;
      *(this + 55) += **v33;
      operations_research::sat::ClauseManager::LazyDetach(*(this + 4), v51);
      v33 += 3;
    }

    operations_research::sat::ClauseManager::CleanUpWatchers(*(this + 4));
    if ((*(this + 976) & 1) == 0)
    {
      operations_research::sat::ClauseManager::DeleteRemovedClauses(*(this + 4));
    }
  }

LABEL_71:
  *(this + 136) = *(*(this + 29) + 408);
  if (dword_2810BD3F8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_2::operator() const(void)::site, dword_2810BD3F8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v55, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 2761);
    v52 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v55, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v52, "Database cleanup, #protected:", 0x1DuLL);
    v59 = (v3 >> 1) - v35;
    v53 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v52, &v59);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v53, " #kept:", 7uLL);
    v59 = v41;
    v54 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v53, &v59);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v54, " #deleted:", 0xAuLL);
    v59 = v42;
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v54, &v59);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v55);
  }

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }
}

void sub_23CCCDCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SatSolver::ComputeLbd<std::vector<operations_research::sat::Literal>>(uint64_t a1, int **a2)
{
  if (*(*(a1 + 232) + 567))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 332);
  }

  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 824, (*(*(*(a1 + 216) + 96) + 8 * (**a2 >> 1)) & 0xFFFFFFF) + 1);
  v6 = *a2;
  for (i = a2[1]; v6 != i; ++v6)
  {
    v7 = *(*(*(a1 + 216) + 96) + 8 * (*v6 >> 1)) & 0xFFFFFFF;
    if (v7 > v4)
    {
      v8 = *(a1 + 832);
      v9 = *(v8 + 8 * (v7 >> 6));
      v10 = 1 << *(*(*(a1 + 216) + 96) + 8 * (*v6 >> 1));
      if ((v9 & v10) == 0)
      {
        v12 = *(*(*(a1 + 216) + 96) + 8 * (*v6 >> 1)) & 0xFFFFFFF;
        *(v8 + 8 * (v7 >> 6)) = v9 | v10;
        std::vector<int>::push_back[abi:ne200100](a1 + 856, &v12);
      }
    }
  }

  return (*(a1 + 864) - *(a1 + 856)) >> 2;
}

void operations_research::sat::SatSolver::AddPropagator(operations_research::sat::SatSolver *this, operations_research::sat::SatPropagator *a2)
{
  v9 = a2;
  v3 = *(this + 74);
  if (v3)
  {
    operations_research::sat::SatSolver::AddPropagator(v3, v10);
  }

  *(this + 1184) = 0;
  v4 = *(this + 27);
  v11 = a2;
  v5 = *(v4 + 248);
  v6 = *(v4 + 256);
  if (v5 == v6)
  {
    v7 = a2;
    std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(v4 + 248, 4uLL);
    a2 = v7;
    v5 = *(v4 + 248);
    v6 = *(v4 + 256);
  }

  v8 = v6 - v5;
  if ((v8 >> 3) >= 0x10)
  {
    operations_research::sat::SatSolver::AddPropagator(v8 >> 3, v10);
  }

  *(a2 + 8) = v8 >> 3;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v4 + 248, &v11);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](this + 96, &v9);
  operations_research::sat::SatSolver::InitializePropagators(this);
}

void operations_research::sat::SatSolver::AddLastPropagator(operations_research::sat::SatSolver *this, operations_research::sat::SatPropagator *a2)
{
  v3 = *(this + 74);
  if (v3)
  {
    operations_research::sat::SatSolver::AddLastPropagator(v3, v9);
  }

  if (*(this + 15))
  {
    operations_research::sat::SatSolver::AddLastPropagator(v9);
  }

  *(this + 1184) = 0;
  v5 = *(this + 27);
  v10 = a2;
  v6 = *(v5 + 248);
  v7 = *(v5 + 256);
  if (v6 == v7)
  {
    std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(v5 + 248, 4uLL);
    v6 = *(v5 + 248);
    v7 = *(v5 + 256);
  }

  v8 = v7 - v6;
  if ((v8 >> 3) >= 0x10)
  {
    operations_research::sat::SatSolver::AddPropagator(v8 >> 3, v9);
  }

  *(a2 + 8) = v8 >> 3;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v5 + 248, &v10);
  *(this + 15) = a2;
  operations_research::sat::SatSolver::InitializePropagators(this);
}

void operations_research::sat::SatSolver::LoadDebugSolution(uint64_t a1, int **a2)
{
  v4 = *(a1 + 16);
  v5 = 2 * v4;
  if (2 * v4 < 1)
  {
    v5 = 0;
  }

  else if (*(a1 + 264) > v5)
  {
    v6 = *(a1 + 272) + (((v5 + 63) >> 3) & 0x1FFFFFF8);
    *(v6 - 8) &= ~(-2 << (v5 + 63));
  }

  *(a1 + 264) = v5;
  v7 = (v5 + 63) >> 6;
  v23[0] = 0;
  v8 = *(a1 + 272);
  v9 = (*(a1 + 280) - v8) >> 3;
  if (v7 <= v9)
  {
    if (v7 < v9)
    {
      *(a1 + 280) = v8 + 8 * v7;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1 + 272, v7 - v9, v23);
    v4 = *(a1 + 16);
  }

  if (v4 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 272);
    do
    {
      v13 = (v10 >> 32) >> 6;
      v14 = *(v12 + 8 * v13);
      v15 = 3 << (v11 & 0x3E);
      if ((v14 & v15) != 0)
      {
        *(v12 + 8 * v13) = v14 & ~v15;
      }

      v11 += 2;
      v10 += 0x200000000;
    }

    while (2 * v4 != v11);
  }

  v16 = *a2;
  v17 = a2[1];
  if (*a2 != v17)
  {
    v18 = *(a1 + 272);
    do
    {
      v19 = *v16++;
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    }

    while (v16 != v17);
  }

  if (v4 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 2 * v4;
    do
    {
      if (((*(*(a1 + 272) + (((v20 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v21 & 0x3E)) & 3) == 0)
      {
        operations_research::sat::SatSolver::LoadDebugSolution(v23);
      }

      v21 += 2;
      v20 += 0x200000000;
    }

    while (v22 != v21);
  }
}

uint64_t operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 528))
  {
    return 0xFFFFFFFFLL;
  }

  operations_research::sat::SatSolver::EnqueueNewDecision(a1, a2);
  if (operations_research::sat::SatSolver::FinishPropagation(a1))
  {
    return *(a1 + 328);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t operations_research::sat::SatSolver::EnqueueNewDecision(uint64_t result, uint64_t a2)
{
  v2 = *(result + 216);
  v3 = a2 >> 1;
  if (((*(*(v2 + 24) + (((2 * v3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v3 & 0x1Fu))) & 3) != 0)
  {
    operations_research::sat::SatSolver::EnqueueNewDecision(&v11);
  }

  v4 = *(result + 296);
  if (!v4)
  {
    v5 = *(v2 + 12);
    if (*(result + 360) >= v5 || (*(*(result + 24) + 400) + (*v2 + v5) * 8.0 + *(*(result + 32) + 168) * 4.0 + *(*(result + 32) + 176) + *(*(result + 40) + 368) * 20.0 + *(*(result + 40) + 384) * 2.0 + *(*(result + 40) + 376)) * 0.00000001 <= *(result + 368) + 1.0)
    {
      v4 = 0;
    }

    else
    {
      v6 = result;
      v7 = a2;
      operations_research::sat::SatSolver::ProcessNewlyFixedVariables(result);
      result = v6;
      a2 = v7;
      v2 = *(v6 + 216);
      v4 = *(v6 + 296);
    }
  }

  ++*(result + 384);
  v8 = *(v2 + 12);
  *(result + 328) = v8;
  *(*(result + 304) + 8 * v4) = v8 | (a2 << 32);
  LODWORD(v8) = *(result + 296) + 1;
  *(result + 296) = v8;
  *(*(result + 216) + 8) = *(*(result + 216) + 8) & 0xF0000000 | v8 & 0xFFFFFFF;
  v9 = *(result + 216);
  v10 = *(v9 + 12);
  *(v9 + 8) = *(v9 + 8) & 0xFFFFFFF | 0x20000000;
  *(*(v9 + 48) + 4 * v10) = a2;
  *(*(v9 + 96) + 8 * v3) = *(v9 + 8);
  *(*(v9 + 24) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  ++*(v9 + 12);
  return result;
}

uint64_t operations_research::sat::SatSolver::RestoreSolverToAssumptionLevel(operations_research::sat::SatSolver *this)
{
  if (*(this + 528))
  {
    return 0;
  }

  v2 = *(this + 83);
  if (*(this + 74) <= v2)
  {
    result = operations_research::sat::SatSolver::FinishPropagation(this);
    if (result)
    {

      return operations_research::sat::SatSolver::ReapplyAssumptionsIfNeeded(this);
    }
  }

  else
  {
    operations_research::sat::SatSolver::Backtrack(this, v2);
    return 1;
  }

  return result;
}

void operations_research::sat::SatSolver::Backtrack(operations_research::sat::SatSolver *this, int a2)
{
  if (*(this + 74) != a2)
  {
    v4 = (this + 216);
    v3 = *(this + 27);
    if (a2)
    {
      v5 = *(v3 + 8) & 0xF0000000 | a2 & 0xFFFFFFF;
    }

    else
    {
      ++*(this + 50);
      v5 = *(v3 + 8) & 0xF0000000;
    }

    *(v3 + 8) = v5;
    *(this + 74) = a2;
    v6 = *(*(this + 38) + 8 * a2);
    v7 = *(this + 6);
    v8 = *(this + 7);
    while (v7 != v8)
    {
      v9 = *v7;
      if (((*(**v7 + 40))(*v7) & 1) == 0)
      {
        (*(*v9 + 24))(v9, *v4, v6);
      }

      ++v7;
    }

    operations_research::sat::SatDecisionPolicy::Untrail(*(this + 31), v6);
    v10 = *(this + 27);
    v11 = *(v10 + 12);
    *v10 += v11 - v6;
    if (v11 > v6)
    {
      v12 = *(v10 + 24);
      v13 = v11 - v6;
      v14 = (*(v10 + 48) + 4 * v6);
      do
      {
        v15 = *v14++;
        *(v12 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(3 << (v15 & 0x3E));
        --v13;
      }

      while (v13);
    }

    *(v10 + 12) = v6;
    *(this + 82) = v6;
  }
}

uint64_t operations_research::sat::SatSolver::ReapplyAssumptionsIfNeeded(operations_research::sat::SatSolver *this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 528))
  {
    return 0;
  }

  v2 = *(this + 74);
  v3 = *(this + 83);
  if (v2 >= v3)
  {
    return 1;
  }

  if (v2 || *(this + 42) == *(this + 43))
  {
    v4 = *(this + 48);
    v6 = operations_research::sat::SatSolver::ReapplyDecisionsUpTo(this, v3 - 1, 0);
    *(this + 48) = v4;
    *(this + 83) = *(this + 74);
    return v6 == 2;
  }

  else
  {
    v7 = *(*(this + 27) + 12);
    *(this + 82) = v7;
    **(this + 38) = v7;
    LODWORD(v7) = *(this + 74) + 1;
    *(this + 74) = v7;
    *(*(this + 27) + 8) = *(*(this + 27) + 8) & 0xF0000000 | v7 & 0xFFFFFFF;
    v8 = *(this + 42);
    v9 = *(this + 43);
    if (v8 == v9)
    {
LABEL_21:
      *(this + 74) = 0;
      *(*(this + 27) + 8) &= 0xF0000000;

      return operations_research::sat::SatSolver::ResetToLevelZero(this);
    }

    else
    {
      v10 = 0;
      do
      {
        v12 = *v8;
        v13 = *(this + 27);
        v14 = *v8 >> 6;
        v15 = *(*(v13 + 24) + 8 * v14);
        v16 = 1 << *v8;
        if ((v15 & v16) == 0)
        {
          if ((v15 >> (v12 & 0x3F ^ 1u)))
          {
            v18[0] = v12 ^ 1;
            v18[1] = v12;
            *(v13 + 120) = 0;
            std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v13 + 72), v18, &v19, 2uLL);
            result = 0;
            if (!v10)
            {
              *(this + 74) = 0;
              *(*(this + 27) + 8) &= 0xF0000000;
            }

            return result;
          }

          v11 = *(v13 + 12);
          ++v10;
          *(v13 + 8) = *(v13 + 8) & 0xFFFFFFF | 0x20000000;
          *(*(v13 + 48) + 4 * v11) = v12;
          *(*(v13 + 96) + 8 * (v12 >> 1)) = *(v13 + 8);
          *(*(v13 + 24) + 8 * v14) |= v16;
          ++*(v13 + 12);
        }

        ++v8;
      }

      while (v8 != v9);
      if (!v10)
      {
        goto LABEL_21;
      }

      return operations_research::sat::SatSolver::FinishPropagation(this);
    }
  }
}

void operations_research::sat::SatSolver::ProcessCurrentConflict(operations_research::sat::SatSolver *this)
{
  if (*(this + 528))
  {
    return;
  }

  ++*(this + 49);
  v2 = *(*(this + 27) + 12);
  v3 = *(this + 74);
  bzero(*(this + 128), *(this + 129) - *(this + 128));
  *(this + 132) = *(this + 131);
  v4 = *(this + 27);
  v5 = v4[9];
  v6 = v4[10];
  v7 = v6 - v5 - 4;
  if ((v6 - v5) < 4)
  {
    v8 = -1;
    goto LABEL_19;
  }

  v9 = v4[12] + 4;
  if (v7 < 4)
  {
    v8 = -1;
    v10 = v4[9];
    do
    {
LABEL_16:
      v18 = *v10++;
      v19 = *(v9 + 8 * (v18 >> 1));
      if (v8 <= v19)
      {
        v8 = v19;
      }
    }

    while (v10 != v6);
    goto LABEL_19;
  }

  v11 = (v7 >> 2) + 1;
  v10 = &v5[v11 & 0x7FFFFFFFFFFFFFFELL];
  v12 = -1;
  v13 = v11 & 0x7FFFFFFFFFFFFFFELL;
  v14 = v4[9];
  v15 = -1;
  do
  {
    v16 = *v14++;
    v17 = vshrq_n_s64(vshll_n_s32(vshr_n_s32(v16, 1uLL), 0x20uLL), 0x1DuLL);
    if (v12 <= *(v9 + v17.i64[0]))
    {
      v12 = *(v9 + v17.i64[0]);
    }

    if (v15 <= *(v9 + v17.i64[1]))
    {
      v15 = *(v9 + v17.i64[1]);
    }

    v13 -= 2;
  }

  while (v13);
  if (v12 <= v15)
  {
    v8 = v15;
  }

  else
  {
    v8 = v12;
  }

  if (v11 != (v11 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v6 != v5 && *(this + 42) != *(this + 43) && (*(v4[12] + 8 * (*(v4[6] + 4 * v8) >> 1)) & 0xFFFFFFF) == 1)
  {
    return;
  }

  operations_research::sat::SatSolver::ComputeFirstUIPConflict(this, v8, this + 110, this + 113, this + 119);
  v20 = *(this + 110);
  v21 = *(this + 111);
  if (v20 == v21)
  {
LABEL_62:
    *(this + 528) = 1;
    return;
  }

  operations_research::sat::SatDecisionPolicy::BumpVariableActivities(*(this + 31), v20, v21 - v20);
  operations_research::sat::SatDecisionPolicy::BumpVariableActivities(*(this + 31), *(this + 113), (*(this + 114) - *(this + 113)) >> 2);
  if (*(*(this + 29) + 253) == 1)
  {
    operations_research::sat::SatSolver::ComputeUnionOfReasons(this, this + 110, this + 116);
    operations_research::sat::SatDecisionPolicy::BumpVariableActivities(*(this + 31), *(this + 116), (*(this + 117) - *(this + 116)) >> 2);
  }

  v22 = *(*(this + 27) + 120);
  if (v22)
  {
    operations_research::sat::SatSolver::BumpClauseActivity(this, v22);
  }

  operations_research::sat::SatSolver::BumpReasonActivities(this, this + 113);
  operations_research::sat::SatDecisionPolicy::UpdateVariableActivityIncrement(*(this + 31));
  *(this + 67) = *(this + 67) * (1.0 / *(*(this + 29) + 400));
  operations_research::sat::PbConstraints::UpdateActivityIncrement(*(this + 5));
  v23 = *(this + 29);
  if (!(*(this + 49) % *(v23 + 412)))
  {
    v24 = *(v23 + 384);
    if (v24 < *(v23 + 424))
    {
      *(v23 + 384) = v24 + *(v23 + 432);
      *(v23 + 24) |= 0x8000000u;
      v23 = *(this + 29);
    }
  }

  if (*(v23 + 269) != 1)
  {
    goto LABEL_78;
  }

  v25 = *(this + 5);
  v26 = *(v25 + 256);
  if (v26 == -1 || !*(*(v25 + 40) + 8 * v26))
  {
    v27 = *(this + 113);
    v28 = *(this + 114);
    while (1)
    {
      if (v27 == v28)
      {
        goto LABEL_78;
      }

      v29 = (*v27 >> 1);
      v30 = *(this + 27);
      v31 = v29 << 32;
      v32 = v30[12];
      v33 = 8 * v29;
      if (*(v32 + v33) >> 28 == 3)
      {
        v34 = *(v30[16] + (v31 >> 30));
        v31 = v34 << 32;
        v35 = (v32 + 8 * v34);
        v36 = *v35;
        if (*v35 >> 28 != 3)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v35 = (v32 + v33);
        v36 = *v35;
        if (*v35 >> 28 != 3)
        {
LABEL_38:
          v37 = v36 >> 28;
          if (v36 >> 28)
          {
            goto LABEL_43;
          }

          goto LABEL_39;
        }
      }

      v39 = *(v30[16] + (v31 >> 30));
      v31 = v39 << 32;
      v37 = *(v32 + 8 * v39) >> 28;
      if (v37)
      {
LABEL_43:
        v38 = *(this + 5);
        if (v37 != *(v38 + 8))
        {
          goto LABEL_34;
        }

        goto LABEL_44;
      }

LABEL_39:
      v38 = *(this + 5);
      if (*(v30[28] + (v31 >> 30)) != *(v38 + 8))
      {
        goto LABEL_34;
      }

LABEL_44:
      if (operations_research::sat::PbConstraints::ReasonPbConstraint(v38, v35[1]))
      {
        break;
      }

LABEL_34:
      ++v27;
    }
  }

  operations_research::sat::MutableUpperBoundedLinearConstraint::ClearAndResize((this + 1080), *(this + 4));
  v40 = *(this + 5);
  v41 = *(v40 + 256);
  if (v41 != -1)
  {
    v42 = *(*(v40 + 40) + 8 * v41);
    if (v42)
    {
      operations_research::sat::UpperBoundedLinearConstraint::AddToConflict(v42, (this + 1080));
      *(*(this + 5) + 256) = -1;
      v43 = operations_research::sat::MutableUpperBoundedLinearConstraint::ComputeSlackForTrailPrefix((this + 1080), *(this + 27), v8 + 1);
      goto LABEL_53;
    }
  }

  v44 = *(this + 27);
  v45 = *(v44 + 72);
  v46 = *(v44 + 80);
  if (v45 == v46)
  {
    v117[0] = -1;
    goto LABEL_145;
  }

  v47 = 1;
  do
  {
    v48 = *v45++;
    operations_research::sat::MutableUpperBoundedLinearConstraint::AddTerm(this + 135, v48 ^ 1, 1);
    --v47;
  }

  while (v45 != v46);
  v117[0] = -v47;
  if (v47 > 0)
  {
LABEL_145:
    operations_research::sat::UpperBoundedLinearConstraint::AddToConflict(v117, &v118);
  }

  *(this + 138) -= v47;
  v43 = -1;
LABEL_53:
  v121 = 0;
  operations_research::sat::SatSolver::ComputePBConflict(this, v8, v43, (this + 1080), &v121);
  v49 = v121;
  if (v121 == -1)
  {
    goto LABEL_62;
  }

  v118 = 0;
  v119 = 0;
  v120 = 0;
  operations_research::sat::MutableUpperBoundedLinearConstraint::CopyIntoVector(this + 135, &v118);
  v50 = v118;
  if (*(this + 138) != ((v119 - v118) >> 4) - 1)
  {
    goto LABEL_69;
  }

  if (v118 != v119)
  {
    v51 = v118;
    while (*(v51 + 1) == 1)
    {
      if (++v51 == v119)
      {
        goto LABEL_59;
      }
    }

LABEL_69:
    v61 = *(this + 74);
    if (v49 < v61)
    {
      operations_research::sat::SatSolver::Backtrack(this, v49);
      operations_research::sat::PbConstraints::AddLearnedConstraint(*(this + 5), &v118, *(this + 138), *(this + 27));
    }

    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v49, v61, "pb_backjump_level < CurrentDecisionLevel()");
  }

LABEL_59:
  if (v49 < operations_research::sat::SatSolver::ComputeBacktrackLevel(this, this + 110))
  {
    *(this + 120) = *(this + 119);
    *(this + 111) = *(this + 110);
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 560, *(this + 4));
    v52 = v118;
    v53 = v119;
    if (v118 == v119)
    {
      v62 = 0;
    }

    else
    {
      LODWORD(v54) = 0;
      v55 = 0;
      do
      {
        v56 = *v52 >> 1;
        v57 = *(*(*(this + 27) + 96) + 8 * v56) & 0xFFFFFFF;
        if (v57)
        {
          if (v57 > v55)
          {
            v54 = (*(this + 111) - *(this + 110)) >> 2;
            v55 = *(*(*(this + 27) + 96) + 8 * v56) & 0xFFFFFFF;
          }

          LODWORD(v117[0]) = *v52 ^ 1;
          std::vector<int>::push_back[abi:ne200100](this + 880, v117);
          LODWORD(v117[0]) = v56;
          v58 = v56 >> 6;
          v59 = *(this + 71);
          v60 = *(v59 + 8 * v58);
          if ((v60 & (1 << v56)) == 0)
          {
            *(v59 + 8 * v58) = v60 | (1 << v56);
            std::vector<int>::push_back[abi:ne200100](this + 592, v117);
          }
        }

        v52 += 4;
      }

      while (v52 != v53);
      v62 = v54;
    }

    v63 = *(this + 110);
    if (v63 == *(this + 111))
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v117, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 851);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v117);
    }

    v64 = *v63;
    *v63 = v63[v62];
    v63[v62] = v64;
    v50 = v118;
  }

  if (v50)
  {
    v119 = v50;
    operator delete(v50);
  }

LABEL_78:
  v65 = *(this + 3);
  if (v65[28] || v65[35] != v65[36])
  {
    v66 = *(*(this + 29) + 472);
    if (v66 == 4)
    {
      v70 = *(this + 27);
      v118 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(*this);
      v119 = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
      v120 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
      operations_research::sat::BinaryImplicationGraph::MinimizeConflictFirstWithTransitiveReduction(v65, v70, this + 110, &v118);
      v67 = *(this + 111);
      v68 = *(this + 110);
      v69 = *(*(this + 29) + 380);
      if (v69 <= 1)
      {
        goto LABEL_84;
      }

LABEL_88:
      if (v69 == 2)
      {
        operations_research::sat::SatSolver::MinimizeConflictRecursively(this, (this + 880));
      }

      else if (v69 == 3)
      {
        operations_research::sat::SatSolver::MinimizeConflictExperimental(this, this + 110);
      }

      goto LABEL_92;
    }

    if (v66 == 1)
    {
      operations_research::sat::BinaryImplicationGraph::MinimizeConflictFirst(*(this + 3), *(this + 27), this + 880, this + 560);
    }
  }

  v67 = *(this + 111);
  v68 = *(this + 110);
  v69 = *(*(this + 29) + 380);
  if (v69 > 1)
  {
    goto LABEL_88;
  }

LABEL_84:
  if (!v69)
  {
    goto LABEL_95;
  }

  if (v69 == 1)
  {
    operations_research::sat::SatSolver::MinimizeConflictSimple(this, this + 110);
  }

LABEL_92:
  v71 = (*(this + 111) - *(this + 110)) >> 2;
  v72 = ((v67 - v68) >> 2);
  v73 = v72 > v71;
  v74 = v72 - v71;
  if (v73)
  {
    v75.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v75.i64[1] = v74;
    *(this + 408) = vaddq_s64(v75, *(this + 408));
  }

LABEL_95:
  v76 = *(this + 3);
  if (v76[28] || v76[35] != v76[36])
  {
    v77 = *(*(this + 29) + 472);
    if (v77 == 3)
    {
      operations_research::sat::BinaryImplicationGraph::MinimizeConflictExperimental(v76, *(this + 27), this + 110);
    }

    else if (v77 == 2)
    {
      operations_research::sat::BinaryImplicationGraph::MinimizeConflictWithReachability(v76, this + 110);
    }
  }

  operations_research::sat::SatDecisionPolicy::BeforeConflict(*(this + 31), *(*(this + 27) + 12));
  v78 = *(this + 110);
  v79 = *(this + 111) - v78;
  v80 = v79 >> 2;
  *(this + 54) += v79 >> 2;
  v81 = (v79 >> 2) - 2;
  if ((v79 >> 2) < 2)
  {
    v83 = 0;
  }

  else
  {
    v82 = *(*(this + 27) + 96);
    if (v79 == 8)
    {
      v83 = 0;
      v84 = 1;
      v85 = 1;
    }

    else
    {
      v83 = 0;
      v84 = 1;
      v85 = 1;
      if (v81 <= 0x7FFFFFFD && !HIDWORD(v81))
      {
        v110 = 0;
        v111 = 0;
        v84 = (v80 - 1) | 1;
        v85 = (v80 - 1) | 1;
        v112 = (v78 + 4);
        v113 = (v80 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v114 = *v112++;
          v115 = vshrq_n_s64(vshll_n_s32(vshr_n_s32(v114, 1uLL), 0x20uLL), 0x1DuLL);
          if (v110 <= (*(v82 + v115.i64[0]) & 0xFFFFFFF))
          {
            v110 = *(v82 + v115.i64[0]) & 0xFFFFFFF;
          }

          if (v111 <= (*(v82 + v115.i64[1]) & 0xFFFFFFF))
          {
            v111 = *(v82 + v115.i64[1]) & 0xFFFFFFF;
          }

          v113 -= 2;
        }

        while (v113);
        v83 = v110 <= v111 ? v111 : v110;
        if (v80 - 1 == ((v80 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_110;
        }
      }
    }

    v86 = v85 + 1;
    do
    {
      v87 = *(v82 + 8 * (*(v78 + 4 * v84) >> 1)) & 0xFFFFFFF;
      if (v83 <= v87)
      {
        v83 = v87;
      }

      v84 = v86++;
    }

    while (v80 > v84);
  }

LABEL_110:
  operations_research::sat::SatSolver::Backtrack(this, v83);
  v88 = *(this + 149);
  if (v88)
  {
    operations_research::sat::DratProofHandler::AddClause(v88, *(this + 110), (*(this + 111) - *(this + 110)) >> 2);
  }

  v89 = *(this + 29);
  v90 = *(this + 119);
  if (*(v89 + 380) == 3)
  {
    *(this + 120) = v90;
    v91 = 1;
  }

  else
  {
    v92 = *(this + 120);
    if (v90 == v92 || *(v89 + 565) != 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = 1;
      do
      {
        v96 = 0;
        v98 = *v90;
        v99 = *(this + 4);
        _X9 = v99[41];
        __asm { PRFM            #4, [X9] }

        v106 = *v90 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v90) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v90)));
        v107 = ((v106 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v106);
        v108 = vdup_n_s8(v107 & 0x7F);
        v109 = v99[39];
        for (i = (v107 >> 7) ^ (_X9 >> 12); ; i = v96 + v93)
        {
          v93 = i & v109;
          v94 = *(_X9 + v93);
          v95 = vceq_s8(v94, v108);
          if (v95)
          {
            break;
          }

LABEL_120:
          if (vceq_s8(v94, 0x8080808080808080))
          {
            v91 = 0;
            goto LABEL_123;
          }

          v96 += 8;
        }

        while (*(v99[42] + 24 * ((v93 + (__clz(__rbit64(v95)) >> 3)) & v109)) != v98)
        {
          v95 &= ((v95 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v95)
          {
            goto LABEL_120;
          }
        }

LABEL_123:
        operations_research::sat::ClauseManager::LazyDetach(v99, v98);
        ++v90;
      }

      while (v90 != v92);
      operations_research::sat::ClauseManager::CleanUpWatchers(*(this + 4));
      *(this + 56) += (*(this + 120) - *(this + 119)) >> 3;
    }
  }

  v116 = operations_research::sat::SatSolver::AddLearnedClauseAndEnqueueUnitPropagation(this, this + 110, v91 & 1);
  operations_research::sat::RestartPolicy::OnConflict(*(this + 30), v2, v3, v116);
}

void sub_23CCCF2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SatSolver::ResetToLevelZero(operations_research::sat::SatSolver *this)
{
  if (*(this + 528))
  {
    return 0;
  }

  *(this + 83) = 0;
  *(this + 43) = *(this + 42);
  operations_research::sat::SatSolver::Backtrack(this, 0);

  return operations_research::sat::SatSolver::FinishPropagation(this);
}

uint64_t operations_research::sat::SatSolver::ResetWithGivenAssumptions(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 528))
  {
    return 0;
  }

  *(a1 + 332) = 0;
  *(a1 + 344) = *(a1 + 336);
  operations_research::sat::SatSolver::Backtrack(a1, 0);
  result = operations_research::sat::SatSolver::FinishPropagation(a1);
  if (result)
  {
    result = 1;
    if (*a2 != *(a2 + 8))
    {
      operations_research::sat::SatSolver::ProcessNewlyFixedVariables(a1);
      *(a1 + 332) = 1;
      if (a1 + 336 != a2)
      {
        std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a1 + 336), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      }

      return operations_research::sat::SatSolver::ReapplyAssumptionsIfNeeded(a1);
    }
  }

  return result;
}

double operations_research::sat::SatSolver::ProcessNewlyFixedVariables(operations_research::sat::SatSolver *this)
{
  if (*(this + 149))
  {
    if (!*(this + 74))
    {
      v14 = *(this + 94);
      for (i = *(this + 27); v14 < *(i + 12); i = *(this + 27))
      {
        v20[0] = *(*(i + 48) + 4 * v14);
        operations_research::sat::DratProofHandler::AddClause(*(this + 149), v20, 1);
        v14 = *(this + 94) + 1;
        *(this + 94) = v14;
      }
    }
  }

  v2 = *(this + 4);
  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v3 == v4)
  {
    v6 = 0;
    v5 = 0;
    operations_research::sat::ClauseManager::CleanUpWatchers(v2);
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *v3;
    v8 = **v3;
    if (v8)
    {
      if (operations_research::sat::SatClause::RemoveFixedLiteralsAndTestIfTrue(*v3, *(this + 27) + 16))
      {
        operations_research::sat::ClauseManager::LazyDetach(*(this + 4), v7);
        ++v5;
      }

      else
      {
        v9 = *v7;
        if (v9 != v8)
        {
          v10 = *(this + 149);
          if (v10)
          {
            if (!v9)
            {
              operations_research::sat::SatSolver::ProcessNewlyFixedVariables(v9, v20);
            }

            operations_research::sat::DratProofHandler::AddClause(v10, v7 + 1, *v7);
            operations_research::sat::DratProofHandler::DeleteClause(*(this + 149), v7 + 1, v8);
          }

          if (v9 == 2)
          {
            operations_research::sat::SatSolver::AddBinaryClauseInternal(this, v7[1], v7[2]);
            operations_research::sat::ClauseManager::LazyDetach(*(this + 4), v7);
            ++v6;
          }
        }
      }
    }

    ++v3;
  }

  while (v3 != v4);
  operations_research::sat::ClauseManager::CleanUpWatchers(*(this + 4));
  if (v5 <= 0)
  {
LABEL_18:
    if (v6 <= 0)
    {
      goto LABEL_20;
    }
  }

  if (dword_27E25D2F0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatSolver::ProcessNewlyFixedVariables(void)::$_0::operator() const(void)::site, dword_27E25D2F0))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v20, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1838);
    v16 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v20, 1);
    v21 = *(*(this + 27) + 12);
    v17 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v16, &v21);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, " fixed variables at level 0. ", 0x1DuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Detached ", 9uLL);
    v21 = v5;
    v18 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v17, &v21);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, " clauses. ", 0xAuLL);
    v21 = v6;
    v19 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v18, &v21);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, " converted to binary.", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v20);
  }

LABEL_20:
  if (!operations_research::sat::BinaryImplicationGraph::Propagate(*(this + 3), *(this + 27)))
  {
    operations_research::sat::SatSolver::ProcessNewlyFixedVariables(v20);
  }

  operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(*(this + 3));
  v11 = *(this + 27);
  v12 = *(v11 + 12);
  *(this + 90) = v12;
  result = (*(*(this + 3) + 400) + (*v11 + v12) * 8.0 + *(*(this + 4) + 168) * 4.0 + *(*(this + 4) + 176) + *(*(this + 5) + 368) * 20.0 + *(*(this + 5) + 384) * 2.0 + *(*(this + 5) + 376)) * 0.00000001;
  *(this + 46) = result;
  return result;
}

void sub_23CCCF734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SatSolver::ReapplyDecisionsUpTo(operations_research::sat::SatSolver *this, int a2, int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(this + 74);
  if (v3 > a2)
  {
    return 2;
  }

  if (!a3)
  {
    v14 = *(this + 74);
    do
    {
      v9 = *(*(this + 38) + 8 * v14++ + 4);
      v10 = *(this + 27);
      v15 = *(v10[3] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v15 >> v9) & 1) == 0)
      {
        if ((v15 >> (v9 & 0x3F ^ 1)))
        {
LABEL_30:
          v17[0] = v9 ^ 1;
          v17[1] = v9;
          v10[15] = 0;
          std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v10 + 9, v17, &v18, 2uLL);
          return 0;
        }

        if (*(this + 528))
        {
          return 1;
        }

        operations_research::sat::SatSolver::EnqueueNewDecision(this, v9);
        if (!operations_research::sat::SatSolver::FinishPropagation(this) || *(this + 82) == -1)
        {
          return 1;
        }

        if (*(this + 74) <= v3)
        {
          v14 = *(this + 74);
        }

        v3 = *(this + 74);
      }
    }

    while (v14 <= a2);
    return 2;
  }

  v8 = *(this + 74);
  while (1)
  {
    v9 = *(*(this + 38) + 8 * v8++ + 4);
    v10 = *(this + 27);
    v11 = *(v10[3] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if ((v11 >> v9))
    {
      goto LABEL_5;
    }

    if ((v11 >> (v9 & 0x3F ^ 1)))
    {
      goto LABEL_30;
    }

    if (*(this + 528))
    {
      break;
    }

    operations_research::sat::SatSolver::EnqueueNewDecision(this, v9);
    if ((operations_research::sat::SatSolver::FinishPropagation(this) & 1) == 0)
    {
      break;
    }

    v12 = *(this + 82);
    v13 = *a3;
    if (v12 < *a3)
    {
      v13 = *(this + 82);
    }

    *a3 = v13;
    if (v12 == -1)
    {
      return 1;
    }

    if (*(this + 74) <= v3)
    {
      v8 = *(this + 74);
    }

    v3 = *(this + 74);
LABEL_5:
    if (v8 > a2)
    {
      return 2;
    }
  }

  v16 = *a3;
  if (*a3 >= -1)
  {
    v16 = -1;
  }

  *a3 = v16;
  return 1;
}

void operations_research::sat::SatSolver::ComputeFirstUIPConflict(uint64_t a1, int a2, _DWORD **a3, void *a4, void *a5)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 560, *(a1 + 16));
  a3[1] = *a3;
  v68 = a5;
  v69 = a4;
  a4[1] = *a4;
  a5[1] = *a5;
  if (a2 != -1)
  {
    v10 = *(a1 + 216);
    v11 = *(v10[12] + 8 * (*(v10[6] + 4 * a2) >> 1)) & 0xFFFFFFF;
    if (v11)
    {
      v12 = 0;
      v13 = v10[9];
      v14 = (v10[10] - v13) >> 2;
      v75 = v10[15];
      v70 = a3;
      v71 = v11;
      if ((v14 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_6;
      }

LABEL_31:
      v32 = 0;
      if (!v75)
      {
        goto LABEL_34;
      }

LABEL_32:
      if (a3[1] - *a3 + v12 == v32)
      {
        std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v68, &v75);
      }

      while (1)
      {
        do
        {
LABEL_34:
          v33 = *(*(*(a1 + 216) + 48) + 4 * a2--);
        }

        while (((*(*(a1 + 568) + (((v33 >> 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v33 >> 1)) & 1) == 0);
        if (!--v12)
        {
          v76 = v33 ^ 1;
          std::vector<int>::push_back[abi:ne200100](a3, &v76);
          v66 = *a3;
          v65 = a3[1];
          v67 = *(v65 - 1);
          *(v65 - 1) = **a3;
          *v66 = v67;
          return;
        }

        v74 = v33;
        std::vector<int>::push_back[abi:ne200100](v69, &v74);
        v34 = (v74 >> 1);
        v35 = *(a1 + 1024);
        if ((*(v35 + (((v74 >> 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34))
        {
          v36 = (v74 >> 1);
          v34 = *(*(a1 + 992) + 4 * v34);
          v37 = *(a1 + 216);
          if (v34 != v36)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v38 = *(a1 + 984);
          if (*(*(v38 + 96) + 8 * v34) >> 28 == 3 && (v39 = *(*(v38 + 128) + 4 * v34), v34 != v39))
          {
            v62 = v39 >> 6;
            v63 = *(v35 + 8 * v62);
            v64 = 4 * v39;
            if ((v63 & (1 << v39)) != 0)
            {
              v36 = (v74 >> 1);
              v34 = *(*(a1 + 992) + 4 * v39);
              v37 = *(a1 + 216);
              if (v34 != v36)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v76 = v39;
              *(v35 + 8 * v62) = v63 | (1 << v39);
              std::vector<int>::push_back[abi:ne200100](a1 + 1048, &v76);
              *(*(a1 + 992) + v64) = v34;
              v36 = (v74 >> 1);
              v37 = *(a1 + 216);
              if (v34 != v36)
              {
LABEL_38:
                v13 = 0;
                v14 = 0;
                goto LABEL_51;
              }
            }
          }

          else
          {
            v37 = *(a1 + 216);
            v36 = (v74 >> 1);
          }
        }

        v40 = v34;
        v41 = v34 << 32;
        v42 = v37[12];
        v43 = 8 * v40;
        if (*(v42 + v43) >> 28 == 3)
        {
          v44 = *(v37[16] + (v41 >> 30));
          v41 = v44 << 32;
          v43 = 8 * v44;
        }

        v45 = (v42 + v43);
        v46 = *(v42 + v43);
        if (v46 >> 28)
        {
          v48 = v41 >> 28;
          if ((v46 >> 28) - 1 > 1)
          {
            v50 = *(v37[31] + 8 * (v46 >> 28));
            v51 = (*(*v50 + 32))(v50, v37, v45[1]);
            v52 = (v37[25] + v48);
            *v52 = v51;
            v52[1] = v53;
          }

          else
          {
            v49 = (v37[25] + v48);
            *v49 = 0;
            v49[1] = 0;
          }

          *(v37[28] + (v41 >> 30)) = *v45 >> 28;
          *(v37[12] + v43) &= 0xFFFFFFFu;
          v47 = (v37[25] + v48);
          v37 = *(a1 + 216);
          v36 = (v74 >> 1);
          a3 = v70;
        }

        else
        {
          v47 = (v37[25] + (v41 >> 28));
        }

        v13 = *v47;
        v14 = v47[1];
LABEL_51:
        v54 = v36 << 32;
        v55 = v37[12];
        v56 = 8 * v36;
        v57 = v55 + v56;
        if (*(v55 + v56) >> 28 == 3)
        {
          v58 = *(v37[16] + (v54 >> 30));
          v54 = v58 << 32;
          v59 = *(v55 + 8 * v58) >> 28;
          if (v59)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v59 = *(v55 + v56) >> 28;
          if (v59)
          {
LABEL_53:
            v11 = v71;
            v60 = *(a1 + 32);
            if (v59 == *(v60 + 8))
            {
              goto LABEL_57;
            }

            goto LABEL_5;
          }
        }

        v61 = *(v37[28] + (v54 >> 30));
        v11 = v71;
        v60 = *(a1 + 32);
        if (v61 == *(v60 + 8))
        {
LABEL_57:
          v75 = operations_research::sat::ClauseManager::ReasonClause(v60, *(v57 + 4));
          if ((v14 & 0x3FFFFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_6;
        }

LABEL_5:
        v75 = 0;
        if ((v14 & 0x3FFFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_31;
        }

LABEL_6:
        v72 = v12;
        v73 = 0;
        v15 = 0;
        v16 = 4 * v14;
        do
        {
          v17 = *v13;
          v18 = *v13 >> 1;
          v19 = *(*(*(a1 + 216) + 96) + 8 * v18) & 0xFFFFFFF;
          if (v19)
          {
            ++v15;
            v20 = v18 >> 6;
            v21 = *(a1 + 568);
            v22 = *(v21 + 8 * v20);
            if ((v22 & (1 << v18)) == 0)
            {
              v76 = *v13 >> 1;
              *(v21 + 8 * v20) = v22 | (1 << v18);
              std::vector<int>::push_back[abi:ne200100](a1 + 592, &v76);
              ++v73;
              if (v19 == v11)
              {
                ++v72;
              }

              else
              {
                v24 = a3[1];
                v23 = a3[2];
                if (v24 >= v23)
                {
                  v26 = *a3;
                  v27 = v24 - *a3;
                  v28 = (v27 >> 2) + 1;
                  if (v28 >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v29 = v23 - v26;
                  if (v29 >> 1 > v28)
                  {
                    v28 = v29 >> 1;
                  }

                  if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v30 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v30 = v28;
                  }

                  if (v30)
                  {
                    if (!(v30 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  a3 = v70;
                  v31 = (4 * (v27 >> 2));
                  *v31 = v17;
                  v25 = v31 + 1;
                  memcpy(0, v26, v27);
                  *v70 = 0;
                  v70[1] = v25;
                  v70[2] = 0;
                  if (v26)
                  {
                    operator delete(v26);
                  }

                  v11 = v71;
                }

                else
                {
                  *v24 = v17;
                  v25 = v24 + 1;
                }

                a3[1] = v25;
              }
            }
          }

          ++v13;
          v16 -= 4;
        }

        while (v16);
        v32 = v15;
        if (v73 > 0)
        {
          v68[1] = *v68;
        }

        v12 = v72;
        if (v75)
        {
          goto LABEL_32;
        }
      }
    }
  }
}

void operations_research::sat::SatSolver::ComputeUnionOfReasons(uint64_t a1, int **a2, int **a3)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 672, *(a1 + 16));
  a3[1] = *a3;
  v7 = *a2;
  v6 = a2[1];
  v63 = a2;
  if (*a2 != v6)
  {
    do
    {
      v8 = *v7;
      v66 = *v7 >> 1;
      v9 = (v8 >> 1) >> 6;
      v10 = *(a1 + 680);
      v11 = *(v10 + 8 * v9);
      if ((v11 & (1 << v66)) == 0)
      {
        *(v10 + 8 * v9) = v11 | (1 << v66);
        std::vector<int>::push_back[abi:ne200100](a1 + 704, &v66);
      }

      ++v7;
    }

    while (v7 != v6);
    v7 = *a2;
    v6 = a2[1];
  }

  if (v7 != v6)
  {
    v64 = v6;
    while (1)
    {
      v12 = *(a1 + 216);
      v13 = (*v7 >> 1);
      v14 = v13 << 32;
      v15 = v12[12];
      v16 = 8 * v13;
      if (*(v15 + v16) >> 28 == 3)
      {
        v17 = *(v12[16] + 4 * v13);
        v14 = v17 << 32;
        v16 = 8 * v17;
      }

      v18 = (v15 + v16);
      v19 = *(v15 + v16);
      v65 = v7;
      if (!(v19 >> 28))
      {
        v20 = v12[25] + (v14 >> 28);
        v21 = *(v20 + 8);
        if ((v21 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          break;
        }

        goto LABEL_9;
      }

      v22 = v19 >> 28;
      if ((v22 - 1) > 1)
      {
        v25 = *(v12[31] + 8 * v22);
        v26 = (*(*v25 + 32))(v25, v12, v18[1]);
        v23 = v14 >> 28;
        v27 = (v12[25] + (v14 >> 28));
        *v27 = v26;
        v27[1] = v28;
      }

      else
      {
        v23 = v14 >> 28;
        v24 = (v12[25] + (v14 >> 28));
        *v24 = 0;
        v24[1] = 0;
      }

      *(v12[28] + (v14 >> 30)) = *v18 >> 28;
      *(v12[12] + v16) &= 0xFFFFFFFu;
      v20 = v12[25] + v23;
      v21 = *(v20 + 8);
      if ((v21 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        break;
      }

LABEL_9:
      v7 = v65 + 1;
      if (v65 + 1 == v64)
      {
        v7 = *v63;
        v6 = v63[1];
        goto LABEL_51;
      }
    }

    v29 = *v20;
    v30 = 4 * v21;
    while (1)
    {
      v32 = *v29;
      v33 = *v29 >> 1;
      v34 = (*v29 >> 1) >> 6;
      v35 = *(a1 + 680);
      v36 = *(v35 + 8 * v34);
      if (((1 << v33) & v36) != 0)
      {
        goto LABEL_22;
      }

      *(v35 + 8 * v34) = (1 << v33) | v36;
      v37 = *(a1 + 712);
      v38 = *(a1 + 720);
      if (v37 >= v38)
      {
        v41 = *(a1 + 704);
        v42 = v37 - v41;
        v43 = (v37 - v41) >> 2;
        v44 = v43 + 1;
        if ((v43 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v45 = v38 - v41;
        if (v45 >> 1 > v44)
        {
          v44 = v45 >> 1;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v46 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          if (!(v46 >> 62))
          {
            operator new();
          }

LABEL_58:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v47 = (v37 - v41) >> 2;
        v48 = (4 * v43);
        v49 = (4 * v43 - 4 * v47);
        *v48 = v33;
        v50 = v48 + 1;
        memcpy(v49, v41, v42);
        *(a1 + 704) = v49;
        *(a1 + 712) = v50;
        *(a1 + 720) = 0;
        if (v41)
        {
          operator delete(v41);
        }

        *(a1 + 712) = v50;
        v40 = a3[1];
        v39 = a3[2];
        if (v40 >= v39)
        {
LABEL_39:
          v51 = *a3;
          v52 = v40 - *a3;
          v53 = (v52 >> 2) + 1;
          if (v53 >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v54 = v39 - v51;
          if (v54 >> 1 > v53)
          {
            v53 = v54 >> 1;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v55 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            if (!(v55 >> 62))
            {
              operator new();
            }

            goto LABEL_58;
          }

          v56 = (4 * (v52 >> 2));
          *v56 = v32;
          v31 = v56 + 1;
          memcpy(0, v51, v52);
          *a3 = 0;
          a3[1] = v31;
          a3[2] = 0;
          if (v51)
          {
            operator delete(v51);
          }

          goto LABEL_21;
        }
      }

      else
      {
        *v37 = v33;
        *(a1 + 712) = v37 + 1;
        v40 = a3[1];
        v39 = a3[2];
        if (v40 >= v39)
        {
          goto LABEL_39;
        }
      }

      *v40 = v32;
      v31 = v40 + 1;
LABEL_21:
      a3[1] = v31;
LABEL_22:
      ++v29;
      v30 -= 4;
      if (!v30)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_51:
  if (v7 != v6)
  {
    v57 = *(a1 + 680);
    do
    {
      v58 = *v7++;
      *(v57 + (((v58 >> 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << (v58 >> 1));
    }

    while (v7 != v6);
  }

  v59 = *a3;
  v60 = a3[1];
  if (*a3 != v60)
  {
    v61 = *(a1 + 680);
    do
    {
      v62 = *v59++;
      *(v61 + (((v62 >> 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << (v62 >> 1));
    }

    while (v59 != v60);
  }
}

void operations_research::sat::SatSolver::BumpReasonActivities(_DWORD *result, int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = (*v2 >> 1);
      v6 = *(result + 27);
      v7 = v6[12];
      v8 = 8 * v5;
      v9 = *(v7 + v8);
      if ((v9 & 0xFFFFFFF) == 0)
      {
        goto LABEL_4;
      }

      v10 = v5 << 32;
      v11 = v5 << 32;
      if (v9 >> 28 == 3)
      {
        v18 = *(v6[16] + (v10 >> 30));
        v11 = v18 << 32;
        v12 = *(v7 + 8 * v18) >> 28;
        if (v12)
        {
LABEL_8:
          v13 = *(result + 4);
          if (v12 != *(v13 + 8))
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v12 = *(v7 + v8) >> 28;
        if (v12)
        {
          goto LABEL_8;
        }
      }

      v13 = *(result + 4);
      if (*(v6[28] + (v11 >> 30)) != *(v13 + 8))
      {
LABEL_9:
        if (v9 >> 28 != 3)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }

LABEL_16:
      v19 = operations_research::sat::ClauseManager::ReasonClause(v13, *(v7 + v8 + 4));
      if (v19)
      {
        operations_research::sat::SatSolver::BumpClauseActivity(result, v19);
        goto LABEL_4;
      }

      v6 = *(result + 27);
      v7 = v6[12];
      if (*(v7 + v8) >> 28 != 3)
      {
LABEL_10:
        v14 = (v7 + v8);
        v15 = *(v7 + v8);
        if (v15 >> 28 != 3)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

LABEL_18:
      v20 = *(v6[16] + (v10 >> 30));
      v10 = v20 << 32;
      v14 = (v7 + 8 * v20);
      v15 = *v14;
      if (*v14 >> 28 != 3)
      {
LABEL_11:
        v16 = v15 >> 28;
        if (v15 >> 28)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

LABEL_19:
      v21 = *(v6[16] + (v10 >> 30));
      v10 = v21 << 32;
      v16 = *(v7 + 8 * v21) >> 28;
      if (v16)
      {
LABEL_12:
        v17 = *(result + 5);
        if (v16 == *(v17 + 8))
        {
          goto LABEL_21;
        }

        goto LABEL_4;
      }

LABEL_20:
      v17 = *(result + 5);
      if (*(v6[28] + (v10 >> 30)) == *(v17 + 8))
      {
LABEL_21:
        v22 = operations_research::sat::PbConstraints::ReasonPbConstraint(v17, v14[1]);
        if (v22)
        {
          operations_research::sat::PbConstraints::BumpActivity(*(result + 5), v22);
        }
      }

LABEL_4:
      ++v2;
    }

    while (v2 != v3);
  }
}

void operations_research::sat::SatSolver::ComputePBConflict(uint64_t a1, unsigned int a2, uint64_t a3, operations_research::sat::MutableUpperBoundedLinearConstraint *this, _DWORD *a5)
{
  v36 = a3;
  if ((a3 & 0x8000000000000000) == 0)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>(&v36, 0, "slack < 0");
  }

  v7 = a2;
  v9 = a2;
  do
  {
    do
    {
      v10 = *(a1 + 216);
      v11 = v10[6];
      v12 = *this;
      v13 = v7--;
      v14 = v10[3];
      for (i = v9; ; --i)
      {
        v16 = *(v11 + 4 * i);
        v17 = (v16 >> 1);
        v18 = *(v12 + 8 * v17);
        v19 = v18 >= 0 ? *(v12 + 8 * v17) : -v18;
        if (v19 > 0)
        {
          v20 = v18 < 1;
          v21 = v16 & 0x3E;
          if (v20)
          {
            ++v21;
          }

          if ((*(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21))
          {
            break;
          }
        }

        --v7;
        --v13;
      }

      v22 = *(a1 + 232);
      if (*(v22 + 270) == 1)
      {
        v23 = *(this + 3);
        v24 = *(this + 4);
        v25 = v19 - (v24 - v23);
        if (v25 >= 1)
        {
          *(this + 3) = v24 - v19;
          *(this + 4) = v24 - v25;
          if (*(v12 + 8 * v17) > 0)
          {
            v26 = v24 - v23;
          }

          else
          {
            v26 = v23 - v24;
          }

          *(v12 + 8 * v17) = v26;
          a3 = v36;
          if (v24 - v23 >= 0)
          {
            v19 = v24 - v23;
          }

          else
          {
            v19 = v23 - v24;
          }
        }
      }

      v9 = i - 1;
      a3 += v19;
      v36 = a3;
    }

    while (a3 < 0);
    if (v9 < 0)
    {
      goto LABEL_43;
    }

    v27 = v10[12];
    v28 = (v11 + 4 * v7);
    while (1)
    {
      v29 = *v28;
      v30 = *(v12 + 8 * (v29 >> 1));
      v31 = v30 >= 0 ? *(v12 + 8 * (v29 >> 1)) : -v30;
      if (v31 >= 1)
      {
        v20 = v30 < 1;
        v32 = v29 & 0x3E;
        if (v20)
        {
          ++v32;
        }

        if ((*(v14 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32))
        {
          break;
        }
      }

      --v28;
      if (--v13 <= 0)
      {
        goto LABEL_43;
      }
    }

    if ((*(v27 + 8 * (*v28 >> 1)) & 0xFFFFFFFu) < (*(v27 + 8 * v17) & 0xFFFFFFFu))
    {
LABEL_43:
      if ((*(v22 + 270) & 1) == 0)
      {
        operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceCoefficients(this);
      }

      operator new();
    }

    if (operations_research::sat::SatSolver::ResolvePBConflict(a1, v17, this, &v36))
    {
      if ((*(*(a1 + 232) + 270) & 1) == 0)
      {
        operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceCoefficients(this);
      }

      a3 = v36;
    }

    else
    {
      v33 = *(a1 + 216);
      if (*(*(a1 + 232) + 270))
      {
        v34 = operations_research::sat::MutableUpperBoundedLinearConstraint::ComputeSlackForTrailPrefix(this, v33, i);
      }

      else
      {
        v34 = operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceCoefficientsAndComputeSlackForTrailPrefix(this, v33, i);
      }

      a3 = v34;
      v36 = v34;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      operations_research::sat::SatSolver::ComputePBConflict(&v36, &v35);
    }
  }

  while ((*(this + 3) & 0x8000000000000000) == 0);
  *a5 = -1;
}

void sub_23CCD0A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v11);
  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SatSolver::ComputeBacktrackLevel(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  v4 = v3 >> 2;
  v5 = (v3 >> 2) - 2;
  if ((v3 >> 2) < 2)
  {
    return 0;
  }

  v6 = *(*(a1 + 216) + 96);
  if (v3 == 8 || ((v7 = v5 > 0x7FFFFFFD, v8 = HIDWORD(v5), !v7) ? (v9 = v8 == 0) : (v9 = 0), !v9))
  {
    LODWORD(result) = 0;
    v11 = 1;
    v12 = 1;
LABEL_8:
    v13 = v12 + 1;
    do
    {
      v14 = *(v6 + 8 * (*(v2 + 4 * v11) >> 1)) & 0xFFFFFFF;
      if (result <= v14)
      {
        result = v14;
      }

      else
      {
        result = result;
      }

      v11 = v13++;
    }

    while (v4 > v11);
    return result;
  }

  v15 = 0;
  v16 = 0;
  v11 = (v4 - 1) | 1;
  v12 = (v4 - 1) | 1;
  v17 = (v2 + 4);
  v18 = (v4 - 1) & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v19 = *v17++;
    v20 = vshrq_n_s64(vshll_n_s32(vshr_n_s32(v19, 1uLL), 0x20uLL), 0x1DuLL);
    if (v15 <= (*(v6 + v20.i64[0]) & 0xFFFFFFF))
    {
      v15 = *(v6 + v20.i64[0]) & 0xFFFFFFF;
    }

    if (v16 <= (*(v6 + v20.i64[1]) & 0xFFFFFFF))
    {
      v16 = *(v6 + v20.i64[1]) & 0xFFFFFFF;
    }

    v18 -= 2;
  }

  while (v18);
  if (v15 <= v16)
  {
    result = v16;
  }

  else
  {
    result = v15;
  }

  if (v4 - 1 != ((v4 - 1) & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t operations_research::sat::SatSolver::EnqueueDecisionAndBacktrackOnConflict(uint64_t a1, int a2, int *a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  while (v6 != v7)
  {
    v8 = *v6;
    if (((*(**v6 + 40))(*v6) & 1) == 0 && *(v8 + 36) != *(*(a1 + 216) + 12))
    {
      operations_research::sat::SatSolver::EnqueueDecisionAndBacktrackOnConflict(v13);
    }

    ++v6;
  }

  if (*(a1 + 336) != *(a1 + 344))
  {
    operations_research::sat::SatSolver::EnqueueDecisionAndBacktrackOnConflict(v13);
  }

  if (*(a1 + 528))
  {
    return 1;
  }

  *(*(a1 + 304) + 8 * *(a1 + 296) + 4) = a2;
  if (a3)
  {
    *a3 = *(*(a1 + 216) + 12);
    v10 = *(a1 + 296);
    v11 = a1;
    v12 = a3;
  }

  else
  {
    v10 = *(a1 + 296);
    v11 = a1;
    v12 = 0;
  }

  return operations_research::sat::SatSolver::ReapplyDecisionsUpTo(v11, v10, v12);
}

uint64_t operations_research::sat::SatSolver::EnqueueDecisionIfNotConflicting(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 528))
  {
    return 1;
  }

  v4 = *(a1 + 296);
  operations_research::sat::SatSolver::EnqueueNewDecision(a1, a2);
  if (operations_research::sat::SatSolver::Propagate(a1))
  {
    return 1;
  }

  operations_research::sat::SatSolver::Backtrack(a1, v4);
  return 0;
}

uint64_t operations_research::sat::SatSolver::ResetAndSolveWithGivenAssumptions(operations_research::sat::SatSolver *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 528))
  {
    return *(this + 528);
  }

  *(this + 83) = 0;
  *(this + 43) = *(this + 42);
  operations_research::sat::SatSolver::Backtrack(this, 0);
  if (!operations_research::sat::SatSolver::FinishPropagation(this))
  {
    return *(this + 528);
  }

  if (*a2 != *(a2 + 8))
  {
    operations_research::sat::SatSolver::ProcessNewlyFixedVariables(this);
    *(this + 83) = 1;
    if ((this + 336) != a2)
    {
      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(this + 42, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    }

    if ((operations_research::sat::SatSolver::ReapplyAssumptionsIfNeeded(this) & 1) == 0)
    {
      return *(this + 528);
    }
  }

  v6 = *(this + 28);
  if (a3 < 0)
  {
    a3 = *(*(this + 29) + 456);
  }

  return operations_research::sat::SatSolver::SolveInternal(this, v6, a3);
}

uint64_t operations_research::sat::SatSolver::SolveInternal(operations_research::sat::SatSolver *this, operations_research::TimeLimit *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = 1;
  if (*(this + 528))
  {
    return v3;
  }

  *(this + 65) = 0;
  *(this + 504) = 1;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  *(this + 64) = CurrentTimeNanos;
  v8 = *(this + 32);
  if (*v8 != 1)
  {
    goto LABEL_34;
  }

  __dst = "Initial memory usage: ";
  v50 = 22;
  operations_research::MemoryUsage(v42, CurrentTimeNanos);
  v9 = v43;
  if ((v43 & 0x80u) == 0)
  {
    v10 = v42;
  }

  else
  {
    v10 = v42[0];
  }

  if ((v43 & 0x80u) != 0)
  {
    v9 = v42[1];
  }

  v45 = v10;
  v46 = v9;
  absl::lts_20240722::StrCat(&__dst, &v45, &__p);
  CurrentTimeNanos = operations_research::SolverLogger::LogInfo(v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1376, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    operator delete(v42[0]);
    v12 = *(this + 32);
    if (*v12 != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_14;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v43 < 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = *(this + 32);
  if (*v12 != 1)
  {
    goto LABEL_34;
  }

LABEL_14:
  __dst = "Number of variables: ";
  v50 = 21;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 4), v47, v11);
  v45 = v47;
  v46 = v13 - v47;
  absl::lts_20240722::StrCat(&__dst, &v45, &__p);
  CurrentTimeNanos = operations_research::SolverLogger::LogInfo(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1377, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v15 = *(this + 32);
    if ((*v15 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_18:
    __dst = "Number of clauses (size > 2): ";
    v50 = 30;
    v16 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(*(this + 4) + 288) - *(*(this + 4) + 280)) >> 3, v47, v14);
    v45 = v47;
    v46 = v16 - v47;
    absl::lts_20240722::StrCat(&__dst, &v45, &__p);
    CurrentTimeNanos = operations_research::SolverLogger::LogInfo(v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1379, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v18 = *(this + 32);
    if (*v18)
    {
      __dst = "Number of binary clauses: ";
      v50 = 26;
      v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*(this + 3) + 224), v47, v17);
      v45 = v47;
      v46 = v19 - v47;
      absl::lts_20240722::StrCat(&__dst, &v45, &__p);
      CurrentTimeNanos = operations_research::SolverLogger::LogInfo(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1381, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v21 = *(this + 32);
      if (*v21)
      {
        __dst = "Number of linear constraints: ";
        v50 = 30;
        v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((*(*(this + 5) + 48) - *(*(this + 5) + 40)) >> 3), v47, v20);
        v45 = v47;
        v46 = v22 - v47;
        absl::lts_20240722::StrCat(&__dst, &v45, &__p);
        CurrentTimeNanos = operations_research::SolverLogger::LogInfo(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1383, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v24 = *(this + 32);
        if (*v24)
        {
          __dst = "Number of fixed variables: ";
          v50 = 27;
          v25 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*(this + 27) + 12), v47, v23);
          v45 = v47;
          v46 = v25 - v47;
          absl::lts_20240722::StrCat(&__dst, &v45, &__p);
          CurrentTimeNanos = operations_research::SolverLogger::LogInfo(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1384, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v27 = *(this + 32);
          if (*v27)
          {
            __dst = "Number of watched clauses: ";
            v50 = 27;
            v28 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*(this + 4) + 184), v47, v26);
            v45 = v47;
            v46 = v28 - v47;
            absl::lts_20240722::StrCat(&__dst, &v45, &__p);
            CurrentTimeNanos = operations_research::SolverLogger::LogInfo(v27, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1386, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (**(this + 32))
            {
              __dst = "Parameters: ";
              v50 = 12;
              google::protobuf::Message::ShortDebugString(v42);
            }
          }
        }
      }
    }

    goto LABEL_34;
  }

  v15 = *(this + 32);
  if (*v15)
  {
    goto LABEL_18;
  }

LABEL_34:
  v29 = *(this + 49);
  v30 = 10000 * (v29 / 10000) + 10000;
  if (*(*(this + 29) + 290))
  {
    v31 = 10000 * (v29 / 10000) + 10000;
  }

  else
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v32 = v29 + a3;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    a3 = v32;
  }

  do
  {
    while (1)
    {
      if (a2)
      {
        v33 = *(this + 5);
        v34 = (*(*(this + 3) + 400) + (**(this + 27) + *(*(this + 27) + 12)) * 8.0 + *(*(this + 4) + 168) * 4.0 + *(*(this + 4) + 176) + v33[46] * 20.0 + v33[48] * 2.0 + v33[47]) * 0.00000001;
        *(a2 + 14) = *(a2 + 14) + v34 - *(this + 147);
        *(this + 147) = v34;
        CurrentTimeNanos = operations_research::TimeLimit::LimitReached(a2);
        if (CurrentTimeNanos)
        {
          if (**(this + 32) == 1)
          {
            operator new();
          }

          goto LABEL_80;
        }
      }

      v35 = *(this + 49);
      if (v35 >= a3)
      {
        if (**(this + 32) == 1)
        {
          operator new();
        }

        goto LABEL_80;
      }

      if (v35 < v30)
      {
        goto LABEL_45;
      }

      if (operations_research::sysinfo::MemoryUsageProcess(CurrentTimeNanos) > *(*(this + 29) + 464) << 20)
      {
        if (**(this + 32) == 1)
        {
          operator new();
        }

LABEL_80:
        v3 = 3;
        goto LABEL_81;
      }

      v30 = 10000 * (v35 / 10000) + 10000;
      v35 = *(this + 49);
LABEL_45:
      if (v35 < v31)
      {
        goto LABEL_63;
      }

      v36 = *(this + 32);
      if (*v36 == 1)
      {
        operations_research::sat::SatSolver::RunningStatisticsString(&v45, this);
        if ((v48 & 0x80u) == 0)
        {
          v37 = &v45;
        }

        else
        {
          v37 = v45;
        }

        if ((v48 & 0x80u) == 0)
        {
          v38 = v48;
        }

        else
        {
          v38 = v46;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v38 >= 0x17)
        {
          operator new();
        }

        v51 = v38;
        if (v38)
        {
          memmove(&__dst, v37, v38);
        }

        *(&__dst + v38) = 0;
        operations_research::SolverLogger::LogInfo(v36, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1439, &__dst);
        if (v51 < 0)
        {
          operator delete(__dst);
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_61;
          }
        }

        else if ((v48 & 0x80000000) == 0)
        {
LABEL_61:
          v35 = *(this + 49);
          goto LABEL_62;
        }

        operator delete(v45);
        goto LABEL_61;
      }

LABEL_62:
      v31 = 10000 * (v35 / 10000) + 10000;
LABEL_63:
      v39 = *(this + 74);
      if ((operations_research::sat::SatSolver::Propagate(this) & 1) == 0)
      {
        break;
      }

      if ((operations_research::sat::SatSolver::ReapplyAssumptionsIfNeeded(this) & 1) == 0)
      {
        v3 = *(this + 528);
        goto LABEL_81;
      }

      if (*(*(this + 27) + 12) == *(this + 4))
      {
        v3 = 2;
        goto LABEL_81;
      }

      if (operations_research::sat::RestartPolicy::ShouldRestart(*(this + 30)))
      {
        operations_research::sat::SatSolver::Backtrack(this, *(this + 83));
      }

      Branch = operations_research::sat::SatDecisionPolicy::NextBranch(*(this + 31));
      CurrentTimeNanos = operations_research::sat::SatSolver::EnqueueNewDecision(this, Branch);
    }

    operations_research::sat::SatSolver::ProcessCurrentConflict(this);
    if (*(this + 528))
    {
      v3 = 1;
      goto LABEL_81;
    }
  }

  while (v39 != *(this + 74));
  if (*(this + 42) == *(this + 43))
  {
    operations_research::sat::SatSolver::SolveInternal(&__dst);
  }

  v3 = 0;
LABEL_81:
  operations_research::sat::SatSolver::StatusWithLog(this, v3);
  return v3;
}

void sub_23CCD16C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::SatSolver::StatusWithLog(operations_research::sat::SatSolver *a1, void *a2)
{
  v3 = *(a1 + 32);
  if (*v3 == 1)
  {
    operations_research::sat::SatSolver::RunningStatisticsString(&__p, a1);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (size >= 0x17)
    {
      operator new();
    }

    v13 = size;
    if (size)
    {
      memmove(&__dst, p_p, size);
    }

    *(&__dst + size) = 0;
    operations_research::SolverLogger::LogInfo(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1109, &__dst);
    if (v13 < 0)
    {
      operator delete(__dst);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        v7 = *(a1 + 32);
        if ((*v7 & 1) == 0)
        {
          return a2;
        }

LABEL_20:
        v8 = &__p;
        operations_research::sat::SatSolver::StatusString(a1, a2, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v9 = __p.__r_.__value_.__l.__size_;
          v8 = __p.__r_.__value_.__r.__words[0];
        }

        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v9 >= 0x17)
        {
          operator new();
        }

        v13 = v9;
        if (v9)
        {
          memmove(&__dst, v8, v9);
        }

        *(&__dst + v9) = 0;
        operations_research::SolverLogger::LogInfo(v7, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1110, &__dst);
        if (v13 < 0)
        {
          operator delete(__dst);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return a2;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return a2;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        return a2;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    v7 = *(a1 + 32);
    if (*v7)
    {
      goto LABEL_20;
    }
  }

  return a2;
}

void sub_23CCD19D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatSolver::RunningStatisticsString(uint64_t *__return_ptr a1@<X8>, operations_research::sat::SatSolver *this@<X0>)
{
  v2 = this;
  v15[18] = *MEMORY[0x277D85DE8];
  if (*(this + 504) == 1)
  {
    this = absl::lts_20240722::GetCurrentTimeNanos(this);
    v4 = this + *(v2 + 65) - *(v2 + 64);
  }

  else
  {
    v4 = *(this + 65);
  }

  operations_research::MemoryUsage(__p, this);
  *&v5 = *(v2 + 74);
  v6 = *(v2 + 4);
  *&v7 = v6[40] >> 1;
  *&v8 = ((v6[36] - v6[35]) >> 3) - *&v7;
  v9 = *(*(v2 + 3) + 224);
  *&v10 = *(*(v2 + 30) + 16);
  *&v11 = (*(v2 + 4) - *(v2 + 90));
  v15[0] = v4 * 0.000000001;
  *&v15[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v15[2] = __p;
  v12 = *(v2 + 49);
  *&v15[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v15[4] = v12;
  *&v15[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v15[6] = v5;
  *&v15[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v15[8] = v8;
  *&v15[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v15[10] = v7;
  *&v15[11] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v15[12] = v9;
  *&v15[13] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v15[14] = v10;
  *&v15[15] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v15[16] = v11;
  *&v15[17] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatPack("%6.2fs, mem:%s, fails:%d, depth:%d, clauses:%d, tmp:%d, bin:%u, restarts:%d, vars:%d", 84, v15, 9uLL, a1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23CCD1BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatSolver::StatusString(uint64_t a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v200[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 504) == 1)
  {
    v6 = absl::lts_20240722::GetCurrentTimeNanos(a1) - *(a1 + 512) + *(a1 + 520);
  }

  else
  {
    v6 = *(a1 + 520);
  }

  operations_research::sat::SatStatusString(a2, v144);
  v196 = COERCE_DOUBLE(v144);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("\n  status: %s\n", 14, &v196, 1uLL, &v146);
  v7 = v6 * 0.000000001;
  v196 = v7;
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  time: %fs\n", 12, &v196, 1uLL, v142);
  if ((v143 & 0x80u) == 0)
  {
    v8 = v142;
  }

  else
  {
    v8 = v142[0];
  }

  if ((v143 & 0x80u) == 0)
  {
    v9 = v143;
  }

  else
  {
    v9 = v142[1];
  }

  v10 = std::string::append(&v146, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v147.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v147.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  operations_research::MemoryUsage(v138, v10);
  v196 = COERCE_DOUBLE(v138);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("  memory: %s\n", 13, &v196, 1uLL, v140);
  if ((v141 & 0x80u) == 0)
  {
    v12 = v140;
  }

  else
  {
    v12 = v140[0];
  }

  if ((v141 & 0x80u) == 0)
  {
    v13 = v141;
  }

  else
  {
    v13 = v140[1];
  }

  v14 = std::string::append(&v147, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v148.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v148.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v196 = *(a1 + 392);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v198 = *&v196 / v7;
  v199 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  num failures: %d  (%.0f /sec)\n", 32, &v196, 2uLL, v136);
  if ((v137 & 0x80u) == 0)
  {
    v16 = v136;
  }

  else
  {
    v16 = v136[0];
  }

  if ((v137 & 0x80u) == 0)
  {
    v17 = v137;
  }

  else
  {
    v17 = v136[1];
  }

  v18 = std::string::append(&v148, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v149.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v149.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v196 = *(a1 + 384);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v198 = *&v196 / v7;
  v199 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  num branches: %d (%.0f /sec)\n", 31, &v196, 2uLL, v134);
  if ((v135 & 0x80u) == 0)
  {
    v20 = v134;
  }

  else
  {
    v20 = v134[0];
  }

  if ((v135 & 0x80u) == 0)
  {
    v21 = v135;
  }

  else
  {
    v21 = v134[1];
  }

  v22 = std::string::append(&v149, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v150.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v150.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  *&v196 = **(a1 + 216) + *(*(a1 + 216) + 12) - *(a1 + 384);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v198 = *&v196 / v7;
  v199 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  num propagations: %d  (%.0f /sec)\n", 36, &v196, 2uLL, v132);
  if ((v133 & 0x80u) == 0)
  {
    v24 = v132;
  }

  else
  {
    v24 = v132[0];
  }

  if ((v133 & 0x80u) == 0)
  {
    v25 = v133;
  }

  else
  {
    v25 = v132[1];
  }

  v26 = std::string::append(&v150, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v151.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v151.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v196 = *(*(a1 + 24) + 392);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  num binary propagations: %d\n", 30, &v196, 1uLL, v130);
  if ((v131 & 0x80u) == 0)
  {
    v28 = v130;
  }

  else
  {
    v28 = v130[0];
  }

  if ((v131 & 0x80u) == 0)
  {
    v29 = v131;
  }

  else
  {
    v29 = v130[1];
  }

  v30 = std::string::append(&v151, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v152.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v152.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v196 = *(*(a1 + 24) + 400);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  num binary inspections: %d\n", 29, &v196, 1uLL, v128);
  if ((v129 & 0x80u) == 0)
  {
    v32 = v128;
  }

  else
  {
    v32 = v128[0];
  }

  if ((v129 & 0x80u) == 0)
  {
    v33 = v129;
  }

  else
  {
    v33 = v128[1];
  }

  v34 = std::string::append(&v152, v32, v33);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v153.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v153.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v196 = *(*(a1 + 24) + 424);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  num binary redundant implications: %d\n", 40, &v196, 1uLL, v126);
  if ((v127 & 0x80u) == 0)
  {
    v36 = v126;
  }

  else
  {
    v36 = v126[0];
  }

  if ((v127 & 0x80u) == 0)
  {
    v37 = v127;
  }

  else
  {
    v37 = v126[1];
  }

  v38 = std::string::append(&v153, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = *(a1 + 416);
  v196 = *(a1 + 408);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v198 = v40;
  v199 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  num classic minimizations: %d  (literals removed: %d)\n", 56, &v196, 2uLL, v124);
  if ((v125 & 0x80u) == 0)
  {
    v41 = v124;
  }

  else
  {
    v41 = v124[0];
  }

  if ((v125 & 0x80u) == 0)
  {
    v42 = v125;
  }

  else
  {
    v42 = v124[1];
  }

  v43 = std::string::append(&v154, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v155.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v155.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = *(a1 + 24);
  v47 = *(v45 + 408);
  v46 = *(v45 + 416);
  v196 = v47;
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v198 = v46;
  v199 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  num binary minimizations: %d  (literals removed: %d)\n", 55, &v196, 2uLL, v122);
  if ((v123 & 0x80u) == 0)
  {
    v48 = v122;
  }

  else
  {
    v48 = v122[0];
  }

  if ((v123 & 0x80u) == 0)
  {
    v49 = v123;
  }

  else
  {
    v49 = v122[1];
  }

  v50 = std::string::append(&v155, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v156.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v156.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v196 = *(*(a1 + 32) + 168);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  num inspected clauses: %d\n", 28, &v196, 1uLL, v120);
  if ((v121 & 0x80u) == 0)
  {
    v52 = v120;
  }

  else
  {
    v52 = v120[0];
  }

  if ((v121 & 0x80u) == 0)
  {
    v53 = v121;
  }

  else
  {
    v53 = v120[1];
  }

  v54 = std::string::append(&v156, v52, v53);
  v55 = *&v54->__r_.__value_.__l.__data_;
  v157.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
  *&v157.__r_.__value_.__l.__data_ = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  v196 = *(*(a1 + 32) + 176);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  num inspected clause_literals: %d\n", 36, &v196, 1uLL, v118);
  if ((v119 & 0x80u) == 0)
  {
    v56 = v118;
  }

  else
  {
    v56 = v118[0];
  }

  if ((v119 & 0x80u) == 0)
  {
    v57 = v119;
  }

  else
  {
    v57 = v118[1];
  }

  v58 = std::string::append(&v157, v56, v57);
  v59 = *&v58->__r_.__value_.__l.__data_;
  v158.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
  *&v158.__r_.__value_.__l.__data_ = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  *&v59 = *(a1 + 432) / *(a1 + 392);
  v196 = *(a1 + 432);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v198 = *&v59;
  v199 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  num learned literals: %d  (avg: %.1f /clause)\n", 48, &v196, 2uLL, v116);
  if ((v117 & 0x80u) == 0)
  {
    v60 = v116;
  }

  else
  {
    v60 = v116[0];
  }

  if ((v117 & 0x80u) == 0)
  {
    v61 = v117;
  }

  else
  {
    v61 = v116[1];
  }

  v62 = std::string::append(&v158, v60, v61);
  v63 = *&v62->__r_.__value_.__l.__data_;
  v159.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
  *&v159.__r_.__value_.__l.__data_ = v63;
  v62->__r_.__value_.__l.__size_ = 0;
  v62->__r_.__value_.__r.__words[2] = 0;
  v62->__r_.__value_.__r.__words[0] = 0;
  *&v63 = *(a1 + 424) / *(a1 + 392);
  v196 = *(a1 + 424);
  v197 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v198 = *&v63;
  v199 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  num learned PB literals: %d  (avg: %.1f /clause)\n", 51, &v196, 2uLL, v114);
  if ((v115 & 0x80u) == 0)
  {
    v64 = v114;
  }

  else
  {
    v64 = v114[0];
  }

  if ((v115 & 0x80u) == 0)
  {
    v65 = v115;
  }

  else
  {
    v65 = v114[1];
  }

  v66 = std::string::append(&v159, v64, v65);
  v67 = *&v66->__r_.__value_.__l.__data_;
  v160.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
  *&v160.__r_.__value_.__l.__data_ = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  v193 = *(a1 + 448);
  v194 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  num subsumed clauses: %d\n", 27, &v193, 1uLL, &v196);
  if (v198 >= 0.0)
  {
    v68 = &v196;
  }

  else
  {
    v68 = *&v196;
  }

  if (v198 >= 0.0)
  {
    v69 = HIBYTE(v198);
  }

  else
  {
    v69 = v197;
  }

  v70 = std::string::append(&v160, v68, v69);
  v71 = *&v70->__r_.__value_.__l.__data_;
  v161.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
  *&v161.__r_.__value_.__l.__data_ = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
  v190 = *(a1 + 456);
  v191 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  minimization_num_clauses: %d\n", 31, &v190, 1uLL, &v193);
  if ((v195 & 0x80u) == 0)
  {
    v72 = &v193;
  }

  else
  {
    v72 = v193;
  }

  if ((v195 & 0x80u) == 0)
  {
    v73 = v195;
  }

  else
  {
    v73 = v194;
  }

  v74 = std::string::append(&v161, v72, v73);
  v75 = *&v74->__r_.__value_.__l.__data_;
  v162.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
  *&v162.__r_.__value_.__l.__data_ = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v187 = *(a1 + 464);
  v188 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  minimization_num_decisions: %d\n", 33, &v187, 1uLL, &v190);
  if ((v192 & 0x80u) == 0)
  {
    v76 = &v190;
  }

  else
  {
    v76 = v190;
  }

  if ((v192 & 0x80u) == 0)
  {
    v77 = v192;
  }

  else
  {
    v77 = v191;
  }

  v78 = std::string::append(&v162, v76, v77);
  v79 = *&v78->__r_.__value_.__l.__data_;
  v163.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
  *&v163.__r_.__value_.__l.__data_ = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  v184 = *(a1 + 472);
  v185 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  minimization_num_true: %d\n", 28, &v184, 1uLL, &v187);
  if ((v189 & 0x80u) == 0)
  {
    v80 = &v187;
  }

  else
  {
    v80 = v187;
  }

  if ((v189 & 0x80u) == 0)
  {
    v81 = v189;
  }

  else
  {
    v81 = v188;
  }

  v82 = std::string::append(&v163, v80, v81);
  v83 = *&v82->__r_.__value_.__l.__data_;
  v164.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
  *&v164.__r_.__value_.__l.__data_ = v83;
  v82->__r_.__value_.__l.__size_ = 0;
  v82->__r_.__value_.__r.__words[2] = 0;
  v82->__r_.__value_.__r.__words[0] = 0;
  v181 = *(a1 + 480);
  v182 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  minimization_num_subsumed: %d\n", 32, &v181, 1uLL, &v184);
  if ((v186 & 0x80u) == 0)
  {
    v84 = &v184;
  }

  else
  {
    v84 = v184;
  }

  if ((v186 & 0x80u) == 0)
  {
    v85 = v186;
  }

  else
  {
    v85 = v185;
  }

  v86 = std::string::append(&v164, v84, v85);
  v87 = *&v86->__r_.__value_.__l.__data_;
  v165.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
  *&v165.__r_.__value_.__l.__data_ = v87;
  v86->__r_.__value_.__l.__size_ = 0;
  v86->__r_.__value_.__r.__words[2] = 0;
  v86->__r_.__value_.__r.__words[0] = 0;
  v178 = *(a1 + 488);
  v179 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  minimization_num_removed_literals: %d\n", 40, &v178, 1uLL, &v181);
  if ((v183 & 0x80u) == 0)
  {
    v88 = &v181;
  }

  else
  {
    v88 = v181;
  }

  if ((v183 & 0x80u) == 0)
  {
    v89 = v183;
  }

  else
  {
    v89 = v182;
  }

  v90 = std::string::append(&v165, v88, v89);
  v91 = *&v90->__r_.__value_.__l.__data_;
  v166.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
  *&v166.__r_.__value_.__l.__data_ = v91;
  v90->__r_.__value_.__l.__size_ = 0;
  v90->__r_.__value_.__r.__words[2] = 0;
  v90->__r_.__value_.__r.__words[0] = 0;
  v175 = *(*(a1 + 40) + 384);
  v176 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  pb num threshold updates: %d\n", 31, &v175, 1uLL, &v178);
  if ((v180 & 0x80u) == 0)
  {
    v92 = &v178;
  }

  else
  {
    v92 = v178;
  }

  if ((v180 & 0x80u) == 0)
  {
    v93 = v180;
  }

  else
  {
    v93 = v179;
  }

  v94 = std::string::append(&v166, v92, v93);
  v95 = *&v94->__r_.__value_.__l.__data_;
  v167.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
  *&v167.__r_.__value_.__l.__data_ = v95;
  v94->__r_.__value_.__l.__size_ = 0;
  v94->__r_.__value_.__r.__words[2] = 0;
  v94->__r_.__value_.__r.__words[0] = 0;
  v172 = *(*(a1 + 40) + 368);
  v173 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  pb num constraint lookups: %d\n", 32, &v172, 1uLL, &v175);
  if ((v177 & 0x80u) == 0)
  {
    v96 = &v175;
  }

  else
  {
    v96 = v175;
  }

  if ((v177 & 0x80u) == 0)
  {
    v97 = v177;
  }

  else
  {
    v97 = v176;
  }

  v98 = std::string::append(&v167, v96, v97);
  v99 = *&v98->__r_.__value_.__l.__data_;
  v168.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
  *&v168.__r_.__value_.__l.__data_ = v99;
  v98->__r_.__value_.__l.__size_ = 0;
  v98->__r_.__value_.__r.__words[2] = 0;
  v98->__r_.__value_.__r.__words[0] = 0;
  v171.__r_.__value_.__r.__words[0] = *(*(a1 + 40) + 376);
  v171.__r_.__value_.__l.__size_ = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatPack("  pb num inspected constraint literals: %d\n", 43, &v171, 1uLL, &v172);
  if ((v174 & 0x80u) == 0)
  {
    v100 = &v172;
  }

  else
  {
    v100 = v172;
  }

  if ((v174 & 0x80u) == 0)
  {
    v101 = v174;
  }

  else
  {
    v101 = v173;
  }

  v102 = std::string::append(&v168, v100, v101);
  v103 = *&v102->__r_.__value_.__l.__data_;
  v169.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
  *&v169.__r_.__value_.__l.__data_ = v103;
  v102->__r_.__value_.__l.__size_ = 0;
  v102->__r_.__value_.__r.__words[2] = 0;
  v102->__r_.__value_.__r.__words[0] = 0;
  operations_research::sat::RestartPolicy::InfoString(*(a1 + 240), &v171);
  if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v104 = &v171;
  }

  else
  {
    v104 = v171.__r_.__value_.__r.__words[0];
  }

  if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v171.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v171.__r_.__value_.__l.__size_;
  }

  v106 = std::string::append(&v169, v104, size);
  v107 = *&v106->__r_.__value_.__l.__data_;
  v170.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
  *&v170.__r_.__value_.__l.__data_ = v107;
  v106->__r_.__value_.__l.__size_ = 0;
  v106->__r_.__value_.__r.__words[2] = 0;
  v106->__r_.__value_.__r.__words[0] = 0;
  v108 = *(a1 + 40);
  v200[0] = (*(*(a1 + 24) + 400) + (**(a1 + 216) + *(*(a1 + 216) + 12)) * 8.0 + *(*(a1 + 32) + 168) * 4.0 + *(*(a1 + 32) + 176) + v108[46] * 20.0 + v108[48] * 2.0 + v108[47]) * 0.00000001;
  *&v200[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  deterministic time: %f\n", 25, v200, 1uLL, __p);
  if ((v113 & 0x80u) == 0)
  {
    v109 = __p;
  }

  else
  {
    v109 = __p[0];
  }

  if ((v113 & 0x80u) == 0)
  {
    v110 = v113;
  }

  else
  {
    v110 = __p[1];
  }

  v111 = std::string::append(&v170, v109, v110);
  *a3 = *v111;
  v111->__r_.__value_.__l.__size_ = 0;
  v111->__r_.__value_.__r.__words[2] = 0;
  v111->__r_.__value_.__r.__words[0] = 0;
  if (v113 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v170.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_156:
      if ((SHIBYTE(v171.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_209;
    }
  }

  else if ((SHIBYTE(v170.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_156;
  }

  operator delete(v170.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v171.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_157:
    if ((SHIBYTE(v169.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_210;
  }

LABEL_209:
  operator delete(v171.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v169.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_158:
    if ((v174 & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_211;
  }

LABEL_210:
  operator delete(v169.__r_.__value_.__l.__data_);
  if ((v174 & 0x80000000) == 0)
  {
LABEL_159:
    if ((SHIBYTE(v168.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_212;
  }

LABEL_211:
  operator delete(v172);
  if ((SHIBYTE(v168.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_160:
    if ((v177 & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_213;
  }

LABEL_212:
  operator delete(v168.__r_.__value_.__l.__data_);
  if ((v177 & 0x80000000) == 0)
  {
LABEL_161:
    if ((SHIBYTE(v167.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_214;
  }

LABEL_213:
  operator delete(v175);
  if ((SHIBYTE(v167.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_162:
    if ((v180 & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_215;
  }

LABEL_214:
  operator delete(v167.__r_.__value_.__l.__data_);
  if ((v180 & 0x80000000) == 0)
  {
LABEL_163:
    if ((SHIBYTE(v166.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_216;
  }

LABEL_215:
  operator delete(v178);
  if ((SHIBYTE(v166.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_164:
    if ((v183 & 0x80000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_217;
  }

LABEL_216:
  operator delete(v166.__r_.__value_.__l.__data_);
  if ((v183 & 0x80000000) == 0)
  {
LABEL_165:
    if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_218;
  }

LABEL_217:
  operator delete(v181);
  if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_166:
    if ((v186 & 0x80000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_219;
  }

LABEL_218:
  operator delete(v165.__r_.__value_.__l.__data_);
  if ((v186 & 0x80000000) == 0)
  {
LABEL_167:
    if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_220;
  }

LABEL_219:
  operator delete(v184);
  if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_168:
    if ((v189 & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_221;
  }

LABEL_220:
  operator delete(v164.__r_.__value_.__l.__data_);
  if ((v189 & 0x80000000) == 0)
  {
LABEL_169:
    if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_222;
  }

LABEL_221:
  operator delete(v187);
  if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_170:
    if ((v192 & 0x80000000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_223;
  }

LABEL_222:
  operator delete(v163.__r_.__value_.__l.__data_);
  if ((v192 & 0x80000000) == 0)
  {
LABEL_171:
    if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_224;
  }

LABEL_223:
  operator delete(v190);
  if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_172:
    if ((v195 & 0x80000000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_225;
  }

LABEL_224:
  operator delete(v162.__r_.__value_.__l.__data_);
  if ((v195 & 0x80000000) == 0)
  {
LABEL_173:
    if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_226;
  }

LABEL_225:
  operator delete(v193);
  if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_174:
    if ((SHIBYTE(v198) & 0x80000000) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_227;
  }

LABEL_226:
  operator delete(v161.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v198) & 0x80000000) == 0)
  {
LABEL_175:
    if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_228;
  }

LABEL_227:
  operator delete(*&v196);
  if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_176:
    if ((v115 & 0x80000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_229;
  }

LABEL_228:
  operator delete(v160.__r_.__value_.__l.__data_);
  if ((v115 & 0x80000000) == 0)
  {
LABEL_177:
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_230;
  }

LABEL_229:
  operator delete(v114[0]);
  if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_178:
    if ((v117 & 0x80000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_231;
  }

LABEL_230:
  operator delete(v159.__r_.__value_.__l.__data_);
  if ((v117 & 0x80000000) == 0)
  {
LABEL_179:
    if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_232;
  }

LABEL_231:
  operator delete(v116[0]);
  if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_180:
    if ((v119 & 0x80000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_233;
  }

LABEL_232:
  operator delete(v158.__r_.__value_.__l.__data_);
  if ((v119 & 0x80000000) == 0)
  {
LABEL_181:
    if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_234;
  }

LABEL_233:
  operator delete(v118[0]);
  if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_182:
    if ((v121 & 0x80000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_235;
  }

LABEL_234:
  operator delete(v157.__r_.__value_.__l.__data_);
  if ((v121 & 0x80000000) == 0)
  {
LABEL_183:
    if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_236;
  }

LABEL_235:
  operator delete(v120[0]);
  if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_184:
    if ((v123 & 0x80000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_237;
  }

LABEL_236:
  operator delete(v156.__r_.__value_.__l.__data_);
  if ((v123 & 0x80000000) == 0)
  {
LABEL_185:
    if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_238;
  }

LABEL_237:
  operator delete(v122[0]);
  if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_186:
    if ((v125 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_239;
  }

LABEL_238:
  operator delete(v155.__r_.__value_.__l.__data_);
  if ((v125 & 0x80000000) == 0)
  {
LABEL_187:
    if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_240;
  }

LABEL_239:
  operator delete(v124[0]);
  if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_188:
    if ((v127 & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_241;
  }

LABEL_240:
  operator delete(v154.__r_.__value_.__l.__data_);
  if ((v127 & 0x80000000) == 0)
  {
LABEL_189:
    if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_242;
  }

LABEL_241:
  operator delete(v126[0]);
  if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_190:
    if ((v129 & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_243;
  }

LABEL_242:
  operator delete(v153.__r_.__value_.__l.__data_);
  if ((v129 & 0x80000000) == 0)
  {
LABEL_191:
    if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_244;
  }

LABEL_243:
  operator delete(v128[0]);
  if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_192:
    if ((v131 & 0x80000000) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_245;
  }

LABEL_244:
  operator delete(v152.__r_.__value_.__l.__data_);
  if ((v131 & 0x80000000) == 0)
  {
LABEL_193:
    if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_246;
  }

LABEL_245:
  operator delete(v130[0]);
  if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_194:
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_247;
  }

LABEL_246:
  operator delete(v151.__r_.__value_.__l.__data_);
  if ((v133 & 0x80000000) == 0)
  {
LABEL_195:
    if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_248;
  }

LABEL_247:
  operator delete(v132[0]);
  if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_196:
    if ((v135 & 0x80000000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_249;
  }

LABEL_248:
  operator delete(v150.__r_.__value_.__l.__data_);
  if ((v135 & 0x80000000) == 0)
  {
LABEL_197:
    if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_250;
  }

LABEL_249:
  operator delete(v134[0]);
  if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_198:
    if ((v137 & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_251;
  }

LABEL_250:
  operator delete(v149.__r_.__value_.__l.__data_);
  if ((v137 & 0x80000000) == 0)
  {
LABEL_199:
    if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_252;
  }

LABEL_251:
  operator delete(v136[0]);
  if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_200:
    if ((v141 & 0x80000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_253;
  }

LABEL_252:
  operator delete(v148.__r_.__value_.__l.__data_);
  if ((v141 & 0x80000000) == 0)
  {
LABEL_201:
    if ((v139 & 0x80000000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_254;
  }

LABEL_253:
  operator delete(v140[0]);
  if ((v139 & 0x80000000) == 0)
  {
LABEL_202:
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_255;
  }

LABEL_254:
  operator delete(v138[0]);
  if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_203:
    if ((v143 & 0x80000000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_256;
  }

LABEL_255:
  operator delete(v147.__r_.__value_.__l.__data_);
  if ((v143 & 0x80000000) == 0)
  {
LABEL_204:
    if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_257;
  }

LABEL_256:
  operator delete(v142[0]);
  if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_205:
    if ((v145 & 0x80000000) == 0)
    {
      return;
    }

LABEL_258:
    operator delete(v144[0]);
    return;
  }

LABEL_257:
  operator delete(v146.__r_.__value_.__l.__data_);
  if (v145 < 0)
  {
    goto LABEL_258;
  }
}

void sub_23CCD2D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((SLOBYTE(STACK[0x4A7]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x4C7]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((SLOBYTE(STACK[0x4A7]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x490]);
  if ((SLOBYTE(STACK[0x4C7]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x487]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(STACK[0x4B0]);
  if ((SLOBYTE(STACK[0x487]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x4DF]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  operator delete(STACK[0x470]);
  if ((SLOBYTE(STACK[0x4DF]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x467]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(STACK[0x4C8]);
  if ((SLOBYTE(STACK[0x467]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SLOBYTE(STACK[0x4F7]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  operator delete(STACK[0x450]);
  if ((SLOBYTE(STACK[0x4F7]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SLOBYTE(STACK[0x447]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  operator delete(STACK[0x4E0]);
  if ((SLOBYTE(STACK[0x447]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SLOBYTE(STACK[0x50F]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  operator delete(STACK[0x430]);
  if ((SLOBYTE(STACK[0x50F]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SLOBYTE(STACK[0x427]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  operator delete(STACK[0x4F8]);
  if ((SLOBYTE(STACK[0x427]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(v86 - 217) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  operator delete(STACK[0x410]);
  if ((*(v86 - 217) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SLOBYTE(STACK[0x407]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  operator delete(*(v86 - 240));
  if ((SLOBYTE(STACK[0x407]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((*(v86 - 193) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_66;
  }

LABEL_65:
  operator delete(STACK[0x3F0]);
  if ((*(v86 - 193) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SLOBYTE(STACK[0x3E7]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_66:
  operator delete(*(v86 - 216));
  if ((SLOBYTE(STACK[0x3E7]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((*(v86 - 169) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_68;
  }

LABEL_67:
  operator delete(STACK[0x3D0]);
  if ((*(v86 - 169) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SLOBYTE(STACK[0x3C7]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_68:
  operator delete(*(v86 - 192));
  if ((SLOBYTE(STACK[0x3C7]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((*(v86 - 145) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_70;
  }

LABEL_69:
  operator delete(STACK[0x3B0]);
  if ((*(v86 - 145) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SLOBYTE(STACK[0x3A7]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(*(v86 - 168));
  if ((SLOBYTE(STACK[0x3A7]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((*(v86 - 121) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_72;
  }

LABEL_71:
  operator delete(STACK[0x390]);
  if ((*(v86 - 121) & 0x80000000) == 0)
  {
LABEL_20:
    if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(*(v86 - 144));
  if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((*(v86 - 97) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(STACK[0x370]);
  if ((*(v86 - 97) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SLOBYTE(STACK[0x367]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(*(v86 - 120));
  if ((SLOBYTE(STACK[0x367]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(STACK[0x350]);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_24:
    if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(a15);
  if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(STACK[0x330]);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_26:
    if ((SLOBYTE(STACK[0x327]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(a21);
  if ((SLOBYTE(STACK[0x327]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  operator delete(STACK[0x310]);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_28:
    if ((SLOBYTE(STACK[0x307]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  operator delete(a27);
  if ((SLOBYTE(STACK[0x307]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  operator delete(STACK[0x2F0]);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_30:
    if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  operator delete(a33);
  if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
  {
LABEL_31:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  operator delete(STACK[0x2D0]);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_32:
    if ((SLOBYTE(STACK[0x2C7]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  operator delete(a39);
  if ((SLOBYTE(STACK[0x2C7]) & 0x80000000) == 0)
  {
LABEL_33:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  operator delete(STACK[0x2B0]);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_34:
    if ((SLOBYTE(STACK[0x2A7]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  operator delete(a45);
  if ((SLOBYTE(STACK[0x2A7]) & 0x80000000) == 0)
  {
LABEL_35:
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  operator delete(STACK[0x290]);
  if ((a56 & 0x80000000) == 0)
  {
LABEL_36:
    if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  operator delete(a51);
  if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
  {
LABEL_37:
    if ((a62 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(STACK[0x270]);
  if ((a62 & 0x80000000) == 0)
  {
LABEL_38:
    if ((SLOBYTE(STACK[0x267]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(a57);
  if ((SLOBYTE(STACK[0x267]) & 0x80000000) == 0)
  {
LABEL_39:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  operator delete(STACK[0x250]);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_40:
    if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  operator delete(a63);
  if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
  {
LABEL_41:
    if ((a67 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  operator delete(STACK[0x230]);
  if ((a67 & 0x80000000) == 0)
  {
LABEL_42:
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  operator delete(a66);
  if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
LABEL_43:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_96;
  }

LABEL_95:
  operator delete(STACK[0x210]);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_44:
    if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

LABEL_96:
  operator delete(a68);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_45:
    if ((a71 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

LABEL_97:
  operator delete(a86);
  if ((a71 & 0x80000000) == 0)
  {
LABEL_46:
    if ((a85 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_99;
  }

LABEL_98:
  operator delete(a70);
  if ((a85 & 0x80000000) == 0)
  {
LABEL_47:
    if ((a75 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_99:
  operator delete(a84);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_48:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_101;
  }

LABEL_100:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_49:
    if ((a83 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_102;
  }

LABEL_101:
  operator delete(a72);
  if ((a83 & 0x80000000) == 0)
  {
LABEL_50:
    if ((a77 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_103;
  }

LABEL_102:
  operator delete(a82);
  if ((a77 & 0x80000000) == 0)
  {
LABEL_51:
    if ((a81 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_104;
  }

LABEL_103:
  operator delete(a76);
  if ((a81 & 0x80000000) == 0)
  {
LABEL_52:
    if ((a79 & 0x80000000) == 0)
    {
LABEL_106:
      _Unwind_Resume(a1);
    }

LABEL_105:
    operator delete(a78);
    _Unwind_Resume(a1);
  }

LABEL_104:
  operator delete(a80);
  if ((a79 & 0x80000000) == 0)
  {
    goto LABEL_106;
  }

  goto LABEL_105;
}

uint64_t operations_research::sat::SatSolver::SetAssumptionLevel(uint64_t this, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::SatSolver::SetAssumptionLevel(a2, v4);
  }

  v2 = *(this + 296);
  if (v2 < a2)
  {
    operations_research::sat::SatSolver::SetAssumptionLevel(a2, v2, v4);
  }

  *(this + 332) = a2;
  v3 = *(this + 336);
  if (v3 != *(this + 344))
  {
    if (a2)
    {
      operations_research::sat::SatSolver::SetAssumptionLevel(a2, v4);
    }

    *(this + 344) = v3;
  }

  return this;
}

uint64_t operations_research::sat::SatSolver::SolveWithTimeLimit(operations_research::sat::SatSolver *this, operations_research::TimeLimit *a2)
{
  if (!a2)
  {
    a2 = *(this + 28);
  }

  return operations_research::sat::SatSolver::SolveInternal(this, a2, *(*(this + 29) + 456));
}

void operations_research::sat::SatSolver::KeepAllClauseUsedToInfer(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  if (((*(*(v2 + 24) + (((2 * a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (a2 & 0x1Fu))) & 3) == 0)
  {
    operations_research::sat::SatSolver::KeepAllClauseUsedToInfer(v5);
  }

  v3 = (*(v2 + 96) + 8 * a2);
  if ((*v3 & 0xFFFFFFF) != 0)
  {
    v4 = v3[1];
    if (v4 != -1)
    {
      if (((v4 + 1) & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    *((v4 >> 3) & 0x1FFFFFFFFFFFFFF8) = *((v4 >> 3) & 0x1FFFFFFFFFFFFFF8);

    operator delete(0);
  }
}

void sub_23CCD3B40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SatSolver::SubsumptionIsInteresting(void *a1, int a2)
{
  v2 = a1[27];
  if (((*(*(v2 + 24) + (((2 * a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (a2 & 0x1Fu))) & 3) == 0)
  {
    operations_research::sat::SatSolver::SubsumptionIsInteresting(v6);
  }

  v3 = (*(v2 + 96) + 8 * a2);
  if ((*v3 & 0xFFFFFFF) != 0)
  {
    v4 = v3[1];
    if (v4 != -1)
    {
      if (((v4 + 1) & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    *((v4 >> 3) & 0x1FFFFFFFFFFFFFF8) = *((v4 >> 3) & 0x1FFFFFFFFFFFFFF8);
    operator delete(0);
  }

  return 1;
}

void sub_23CCD4080(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatSolver::TryToMinimizeClause(uint64_t a1, int *a2)
{
  if (!a2)
  {
    operations_research::sat::SatSolver::TryToMinimizeClause(&v42);
  }

  ++*(a1 + 456);
  v46[0] = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v46[1] = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v47 = 0;
  v4 = *a2;
  v44 = 0;
  v45 = 0;
  __p = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::SatSolver::Backtrack(a1, 0);
  if (*(a1 + 528))
  {
LABEL_6:
    if (*a2 == (v44 - __p) >> 2)
    {
      goto LABEL_73;
    }

    operations_research::sat::SatSolver::Backtrack(a1, 0);
    v5 = __p;
    v6 = (v44 - __p) >> 2;
    if (v6 == 2)
    {
      *(a1 + 488) += *a2 - 2;
      operations_research::sat::SatSolver::AddBinaryClauseInternal(a1, *v5, v5[1]);
      operations_research::sat::ClauseManager::Detach(*(a1 + 32), a2);
    }

    else
    {
      if (v6 != 1)
      {
        *(a1 + 488) = *(a1 + 488) - v6 + *a2;
        if (!operations_research::sat::ClauseManager::InprocessingRewriteClause(*(a1 + 32), a2, v5, v6))
        {
          *(a1 + 528) = 1;
          v13 = __p;
          if (__p)
          {
            goto LABEL_74;
          }

          goto LABEL_75;
        }

        goto LABEL_73;
      }

      v7 = *(a1 + 1192);
      if (v7)
      {
        operations_research::sat::DratProofHandler::AddClause(v7, __p, 1);
        v5 = __p;
      }

      v8 = *(a1 + 216);
      v9 = *v5;
      v10 = *v5 >> 1;
      if (((*(*(v8 + 24) + (((2 * v10) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v10 & 0x1Fu))) & 3) != 0)
      {
LABEL_73:
        v13 = __p;
        if (__p)
        {
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      *(a1 + 488) += *a2;
      v11 = *(v8 + 12);
      *(v8 + 8) = *(v8 + 8) & 0xFFFFFFF | 0x10000000;
      *(*(v8 + 48) + 4 * v11) = v9;
      *(*(v8 + 96) + 8 * v10) = *(v8 + 8);
      *(*(v8 + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      ++*(v8 + 12);
    }

    operations_research::sat::SatSolver::FinishPropagation(a1);
    goto LABEL_73;
  }

  while (1)
  {
    v12 = operations_research::sat::MoveOneUnprocessedLiteralLast(v46, *(a1 + 296), &__p);
    if (v12 == -1)
    {
      goto LABEL_6;
    }

    operations_research::sat::SatSolver::Backtrack(a1, v12);
    v13 = __p;
    v14 = v44;
    if (*(a1 + 296) < ((v44 - __p) >> 2))
    {
      while (1)
      {
        while (1)
        {
          if (operations_research::TimeLimit::LimitReached(*(a1 + 224)))
          {
            goto LABEL_73;
          }

          v15 = *(a1 + 296);
          v16 = *(__p + v15);
          v17 = *(a1 + 216);
          v18 = *(*(v17 + 24) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8));
          if (((v18 >> (v16 & 0x3F ^ 1)) & 1) == 0)
          {
            break;
          }

          v19 = __p + 4 * v15;
          v20 = v44 - (v19 + 4);
          if (v44 != v19 + 4)
          {
            memmove(__p + 4 * v15, v19 + 4, v44 - (v19 + 4));
          }

          v14 = &v19[v20];
          v44 = &v19[v20];
          v13 = __p;
          if (*(a1 + 296) >= ((&v19[v20] - __p) >> 2))
          {
            goto LABEL_27;
          }
        }

        if ((v18 >> (v16 & 0x3F)))
        {
          break;
        }

        ++*(a1 + 464);
        if ((*(a1 + 528) & 1) == 0)
        {
          operations_research::sat::SatSolver::EnqueueNewDecision(a1, v16 ^ 1);
          operations_research::sat::SatSolver::FinishPropagation(a1);
        }

        if (!*a2)
        {
          operations_research::sat::SatSolver::Backtrack(a1, 0);
          goto LABEL_73;
        }

        if (*(a1 + 528))
        {
          goto LABEL_73;
        }

        v13 = __p;
        v14 = v44;
        if (*(a1 + 296) >= ((v44 - __p) >> 2))
        {
          goto LABEL_27;
        }
      }

      v28 = (v16 >> 1);
      v29 = *(v17 + 96);
      v30 = (v29 + 8 * v28);
      v31 = *v30 & 0xFFFFFFF;
      if ((*v30 & 0xFFFFFFF) == 0)
      {
        if (!v15)
        {
          if (*(a1 + 1192))
          {
            for (i = *(a1 + 376); i < *(v17 + 12); v17 = *(a1 + 216))
            {
              LODWORD(v42) = *(*(v17 + 48) + 4 * i);
              operations_research::sat::DratProofHandler::AddClause(*(a1 + 1192), &v42, 1);
              i = *(a1 + 376) + 1;
              *(a1 + 376) = i;
            }
          }
        }

        ++*(a1 + 472);
        *(a1 + 488) += *a2;
        goto LABEL_84;
      }

      v32 = v28 << 32;
      if (*v30 >> 28 == 3)
      {
        v35 = *(*(v17 + 128) + 4 * v28);
        v32 = v35 << 32;
        v33 = *(v29 + 8 * v35) >> 28;
        if (v33)
        {
LABEL_50:
          v34 = *(a1 + 32);
          if (v33 != *(v34 + 8))
          {
            goto LABEL_55;
          }

LABEL_51:
          if (operations_research::sat::ClauseManager::ReasonClause(v34, v30[1]) == a2)
          {
LABEL_56:
            v13 = __p;
            v14 = v44;
            if (v31 + 1 < ((v44 - __p) >> 2))
            {
              v36 = __p + 4 * v31;
              v44 = v36;
              if (v36 >= v45)
              {
                v37 = v45 - __p;
                if ((v45 - __p) >> 1 <= v31 + 1)
                {
                  v38 = v31 + 1;
                }

                else
                {
                  v38 = v37 >> 1;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v39 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v39 = v38;
                }

                if (!(v39 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *v36 = v16;
              v14 = v36 + 4;
              v44 = v14;
            }

            goto LABEL_27;
          }

LABEL_55:
          if (operations_research::sat::SatSolver::SubsumptionIsInteresting(a1, v16 >> 1))
          {
            v41.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v41.i64[1] = *a2;
            *(a1 + 480) = vaddq_s64(*(a1 + 480), v41);
            operations_research::sat::SatSolver::KeepAllClauseUsedToInfer(a1, v16 >> 1);
LABEL_84:
            operations_research::sat::SatSolver::Backtrack(a1, 0);
            operations_research::sat::ClauseManager::Detach(*(a1 + 32), a2);
            goto LABEL_73;
          }

          goto LABEL_56;
        }
      }

      else
      {
        v33 = *(v29 + 8 * v28) >> 28;
        if (v33)
        {
          goto LABEL_50;
        }
      }

      v34 = *(a1 + 32);
      if (*(*(v17 + 224) + (v32 >> 30)) != *(v34 + 8))
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

LABEL_27:
    if (v13 == v14)
    {
      break;
    }

    v21 = *(v14 - 1);
    LODWORD(v42) = v21;
    if (!v47)
    {
      operator new();
    }

    v22 = v46[0];
    v23 = *(v46[0] + 10);
    if (*(v46[0] + 10))
    {
LABEL_31:
      v24 = 0;
      do
      {
        v25 = (v23 + v24) >> 1;
        if (*&v22[4 * v25 + 12] < v21)
        {
          v24 = v25 + 1;
        }

        else
        {
          v23 = (v23 + v24) >> 1;
        }
      }

      while (v24 != v23);
    }

    while (!v22[11])
    {
      v22 = *&v22[8 * v23 + 256];
      v23 = v22[10];
      if (v22[10])
      {
        goto LABEL_31;
      }
    }

    v26 = v23;
    v27 = v22;
    while (v23 == v27[10])
    {
      LODWORD(v23) = v27[8];
      v27 = *v27;
      if (v27[11])
      {
        goto LABEL_44;
      }
    }

    if (v21 >= *&v27[4 * v23 + 12])
    {
      goto LABEL_45;
    }

LABEL_44:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>(v46, v22, v26, &v42);
LABEL_45:
    if (*(a1 + 528))
    {
      goto LABEL_6;
    }
  }

  *(a1 + 528) = 1;
  if (!v13)
  {
    goto LABEL_75;
  }

LABEL_74:
  v44 = v13;
  operator delete(v13);
LABEL_75:
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v46);
}

void sub_23CCD4A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, unsigned __int8 **a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(&a19);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SatSolver::MinimizeByPropagation(operations_research::sat::SatSolver *this, double a2)
{
  v3 = *(this + 28);
  if (!v3)
  {
    operations_research::sat::SatSolver::MinimizeByPropagation(v37);
  }

  v5 = *(this + 5);
  v6 = (*(*(this + 3) + 400) + (**(this + 27) + *(*(this + 27) + 12)) * 8.0 + *(*(this + 4) + 168) * 4.0 + *(*(this + 4) + 176) + v5[46] * 20.0 + v5[48] * 2.0 + v5[47]) * 0.00000001;
  v7 = v3[14] + v6 - *(this + 147);
  v3[14] = v7;
  *(this + 147) = v6;
  *(this + 976) = 1;
  if ((operations_research::TimeLimit::LimitReached(v3) & 1) == 0)
  {
    v9 = 0;
    v10 = v7 + a2;
    while (*(*(this + 28) + 112) < v10)
    {
      v13 = *(this + 4);
      v14 = *(v13 + 280);
      v15 = (*(v13 + 288) - v14) >> 3;
      v16 = *(v13 + 304);
      v17 = v16;
      if (v15 > v16)
      {
        while (1)
        {
          v23 = *(v14 + 8 * v17);
          if (*v23)
          {
            break;
          }

LABEL_17:
          *(v13 + 304) = ++v16;
          v17 = v16;
          if (v15 <= v16)
          {
            goto LABEL_18;
          }
        }

        v21 = 0;
        _X13 = *(v13 + 328);
        __asm { PRFM            #4, [X13] }

        v30 = v23 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23)));
        v31 = ((v30 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v30);
        v22 = (_X13 >> 12) ^ (v31 >> 7);
        v32 = vdup_n_s8(v31 & 0x7F);
        v33 = *(v13 + 312);
        while (1)
        {
          v18 = v22 & v33;
          v19 = *(_X13 + v18);
          v20 = vceq_s8(v19, v32);
          if (v20)
          {
            while (*(*(v13 + 336) + 24 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v33)) != v23)
            {
              v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v20)
              {
                goto LABEL_13;
              }
            }

            goto LABEL_17;
          }

LABEL_13:
          if (vceq_s8(v19, 0x8080808080808080))
          {
            break;
          }

          v21 += 8;
          v22 = v21 + v18;
        }

        *(v13 + 304) = v16 + 1;
        operations_research::sat::SatSolver::TryToMinimizeClause(this, v23);
        if ((*(this + 528) & 1) == 0)
        {
          v34 = *(this + 4);
          goto LABEL_6;
        }

        return 0;
      }

LABEL_18:
      if (dword_2810BD410 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatSolver::MinimizeByPropagation(double)::$_0::operator() const(void)::site, dword_2810BD410))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v37, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1490);
        v35 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v37, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "Minimized all clauses, restarting from first one.", 0x31uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v37);
      }

      ++v9;
      v34 = *(this + 4);
      *(v34 + 304) = 0;
      if (v9 > 1)
      {
        break;
      }

LABEL_6:
      v11 = *(this + 28);
      v12 = (*(*(this + 3) + 400) + (**(this + 27) + *(*(this + 27) + 12)) * 8.0 + *(v34 + 168) * 4.0 + *(v34 + 176) + *(*(this + 5) + 368) * 20.0 + *(*(this + 5) + 384) * 2.0 + *(*(this + 5) + 376)) * 0.00000001;
      v11[14] = v11[14] + v12 - *(this + 147);
      *(this + 147) = v12;
      if (operations_research::TimeLimit::LimitReached(v11))
      {
        break;
      }
    }
  }

  if (*(this + 528))
  {
    v8 = 0;
  }

  else
  {
    *(this + 83) = 0;
    *(this + 43) = *(this + 42);
    operations_research::sat::SatSolver::Backtrack(this, 0);
    v8 = operations_research::sat::SatSolver::FinishPropagation(this);
  }

  *(this + 976) = 0;
  operations_research::sat::ClauseManager::DeleteRemovedClauses(*(this + 4));
  return v8;
}

void operations_research::sat::SatSolver::GetLastIncompatibleDecisions(unint64_t *__return_ptr a1@<X8>, operations_research::sat::SatSolver *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 560, *(this + 4));
  v4 = *(this + 27);
  v5 = *(v4 + 72);
  v6 = *(v4 + 80);
  if (v5 == v6)
  {
    v8 = 0;
    if (*(this + 74) >= 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v15 = *v5;
      v16 = *(this + 27);
      v17 = *(*(v16 + 24) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v17 >> (v15 & 0x3E)) & 3) == 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v57, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 1518);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v57);
      }

      if ((v17 >> v15))
      {
        v57[0] = v15 ^ 1;
        std::vector<int>::push_back[abi:ne200100](a1, v57);
        ++v7;
      }

      else
      {
        v9 = v15 >> 1;
        v10 = *(*(v16 + 96) + 8 * (v15 >> 1) + 4);
        if (v8 <= v10)
        {
          v8 = v10;
        }

        v57[0] = v15 >> 1;
        v11 = (v15 >> 1) >> 6;
        v12 = *(this + 71);
        v13 = *(v12 + 8 * v11);
        v14 = 1 << v9;
        if ((v13 & v14) == 0)
        {
          *(v12 + 8 * v11) = v13 | v14;
          std::vector<int>::push_back[abi:ne200100](this + 592, v57);
        }
      }

      ++v5;
    }

    while (v5 != v6);
    if (v7 > 1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v7, 1, "num_true <= 1");
    }

    if (*(this + 74) >= 1)
    {
LABEL_13:
      v18 = *(this + 38);
      v19 = *(*(this + 27) + 12);
      if (v8 < v19)
      {
        goto LABEL_14;
      }

LABEL_52:
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v8, v19, "trail_index < trail_->Index()");
    }
  }

  v18 = (*(this + 27) + 12);
  v19 = *v18;
  if (v8 >= v19)
  {
    goto LABEL_52;
  }

LABEL_14:
  v20 = *v18;
  while (v8 >= v20)
  {
    v28 = *(this + 27);
    while (1)
    {
      v29 = *(v28[6] + 4 * v8);
      v30 = (v29 >> 1);
      if ((*(*(this + 71) + (((v29 >> 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v30))
      {
        break;
      }

      if (--v8 < v20)
      {
        goto LABEL_15;
      }
    }

    v56 = *(v28[6] + 4 * v8);
    v31 = v30 << 32;
    v32 = v28[12];
    v33 = 8 * v30;
    v34 = *(v32 + v33) & 0xF0000000;
    v35 = v30 << 32;
    if (v34 == 805306368)
    {
      v37 = *(v28[16] + (v31 >> 30));
      v35 = v37 << 32;
      v36 = *(v32 + 8 * v37) >> 28;
      if (v36)
      {
LABEL_30:
        if (v36 == 2)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v36 = *(v32 + v33) >> 28;
      if (v36)
      {
        goto LABEL_30;
      }
    }

    if (*(v28[28] + (v35 >> 30)) == 2)
    {
LABEL_31:
      std::vector<int>::push_back[abi:ne200100](a1, &v56);
      goto LABEL_48;
    }

LABEL_34:
    if (v34 == 805306368)
    {
      v38 = *(v28[16] + (v31 >> 30));
      v31 = v38 << 32;
      v33 = 8 * v38;
    }

    v39 = (v32 + v33);
    v40 = *(v32 + v33);
    if (v40 >> 28)
    {
      v43 = v40 >> 28;
      if ((v43 - 1) > 1)
      {
        v46 = *(v28[31] + 8 * v43);
        v47 = (*(*v46 + 32))(v46, v28, v39[1]);
        v44 = v31 >> 28;
        v48 = (v28[25] + (v31 >> 28));
        *v48 = v47;
        v48[1] = v49;
      }

      else
      {
        v44 = v31 >> 28;
        v45 = (v28[25] + (v31 >> 28));
        *v45 = 0;
        v45[1] = 0;
      }

      *(v28[28] + (v31 >> 30)) = *v39 >> 28;
      *(v28[12] + v33) &= 0xFFFFFFFu;
      v41 = v28[25] + v44;
      v42 = *(v41 + 8);
      if ((v42 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
LABEL_43:
        v50 = *v41;
        v51 = 4 * v42;
        do
        {
          v52 = *v50 >> 1;
          if ((*(*(*(this + 27) + 96) + 8 * v52) & 0xFFFFFFF) != 0)
          {
            v53 = v52 >> 6;
            v54 = *(this + 71);
            v55 = *(v54 + 8 * v53);
            if ((v55 & (1 << v52)) == 0)
            {
              v57[0] = *v50 >> 1;
              *(v54 + 8 * v53) = v55 | (1 << v52);
              std::vector<int>::push_back[abi:ne200100](this + 592, v57);
            }
          }

          ++v50;
          v51 -= 4;
        }

        while (v51);
      }
    }

    else
    {
      v41 = v28[25] + (v31 >> 28);
      v42 = *(v41 + 8);
      if ((v42 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_48:
    --v8;
  }

LABEL_15:
  v21 = *a1;
  v22 = a1[1];
  v23 = (v22 - 4);
  if (*a1 != v22 && v23 > v21)
  {
    v25 = v21 + 4;
    do
    {
      v26 = *(v25 - 4);
      *(v25 - 4) = *v23;
      *v23-- = v26;
      v27 = v25 >= v23;
      v25 += 4;
    }

    while (!v27);
  }
}

void sub_23CCD52F4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SatSolver::ComputeLbd<operations_research::sat::SatClause>(uint64_t a1, int *a2)
{
  if (*(*(a1 + 232) + 567))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 332);
  }

  v5 = a2 + 1;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 824, (*(*(*(a1 + 216) + 96) + 8 * (a2[1] >> 1)) & 0xFFFFFFF) + 1);
  v6 = *a2;
  if (v6)
  {
    v7 = 4 * v6;
    do
    {
      v8 = *(*(*(a1 + 216) + 96) + 8 * (*v5 >> 1)) & 0xFFFFFFF;
      if (v8 > v4)
      {
        v9 = *(a1 + 832);
        v10 = *(v9 + 8 * (v8 >> 6));
        v11 = 1 << *(*(*(a1 + 216) + 96) + 8 * (*v5 >> 1));
        if ((v10 & v11) == 0)
        {
          v13 = *(*(*(a1 + 216) + 96) + 8 * (*v5 >> 1)) & 0xFFFFFFF;
          *(v9 + 8 * (v8 >> 6)) = v10 | v11;
          std::vector<int>::push_back[abi:ne200100](a1 + 856, &v13);
        }
      }

      ++v5;
      v7 -= 4;
    }

    while (v7);
  }

  return (*(a1 + 864) - *(a1 + 856)) >> 2;
}

void *operations_research::sat::SatStatusString@<X0>(void *result@<X0>, char *a2@<X8>)
{
  v4 = result;
  if (result > 1)
  {
    if (result == 2)
    {
      a2[23] = 8;
      strcpy(a2, "FEASIBLE");
      return result;
    }

    if (result == 3)
    {
      a2[23] = 13;
      strcpy(a2, "LIMIT_REACHED");
      return result;
    }
  }

  else
  {
    if (!result)
    {
      a2[23] = 17;
      strcpy(a2, "ASSUMPTIONS_UNSAT");
      return result;
    }

    if (result == 1)
    {
      a2[23] = 10;
      strcpy(a2, "INFEASIBLE");
      return result;
    }
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_solver.cc", 2779, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "Invalid SatSolver::Status ", 0x1AuLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto::ConstraintCase,0>(v3, &v4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  return std::string::basic_string[abi:ne200100]<0>(a2, "UNKNOWN");
}

void sub_23CCD55AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SatSolver::ResolvePBConflict(uint64_t a1, uint64_t a2, operations_research::sat::MutableUpperBoundedLinearConstraint *a3, uint64_t *a4)
{
  v8 = *(a1 + 216);
  v9 = v8[12];
  v10 = (v9 + 8 * a2);
  if (*v10 >> 28 == 3)
  {
    v11 = *(v8[16] + 4 * a2) << 32;
    v12 = (v9 + 8 * *(v8[16] + 4 * a2));
    v13 = *v12;
    if (*v12 >> 28 != 3)
    {
LABEL_3:
      v14 = a2;
      v15 = v13 >> 28;
      if (v13 >> 28)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = a2 << 32;
    v12 = (v9 + 8 * a2);
    v13 = *v12;
    if (*v12 >> 28 != 3)
    {
      goto LABEL_3;
    }
  }

  v18 = *(v8[16] + (v11 >> 30));
  v11 = v18 << 32;
  v14 = a2;
  v15 = *(v9 + 8 * v18) >> 28;
  if (v15)
  {
LABEL_4:
    v16 = v10[1];
    v17 = *(a1 + 40);
    if (v15 != *(v17 + 8))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  v16 = v10[1];
  v17 = *(a1 + 40);
  if (*(v8[28] + (v11 >> 30)) != *(v17 + 8))
  {
    goto LABEL_11;
  }

LABEL_9:
  v19 = operations_research::sat::PbConstraints::ReasonPbConstraint(v17, v12[1]);
  v8 = *(a1 + 216);
  if (v19)
  {
    operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(v19, v8, v14, a3, a4);
    return 0;
  }

LABEL_11:
  operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceSlackTo(a3, v8, v16, *a4, 0);
  operations_research::sat::MutableUpperBoundedLinearConstraint::AddTerm(a3, ((~*(*(*(a1 + 216) + 24) + (((2 * a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v14 & 0x1Fu))) & 1 | (2 * a2)) ^ 1, 1);
  v21 = *(a1 + 216);
  v22 = v21[12];
  if (*(v22 + 8 * a2) >> 28 == 3)
  {
    a2 = *(v21[16] + 4 * a2);
  }

  v23 = a2 << 32;
  v24 = 8 * a2;
  v25 = (v22 + v24);
  v26 = *(v22 + v24);
  if (v26 >> 28)
  {
    v34 = v26 >> 28;
    if ((v34 - 1) > 1)
    {
      v37 = *(v21[31] + 8 * v34);
      v38 = (*(*v37 + 32))(v37, v21, v25[1]);
      v35 = v23 >> 28;
      v39 = (v21[25] + (v23 >> 28));
      *v39 = v38;
      v39[1] = v40;
    }

    else
    {
      v35 = v23 >> 28;
      v36 = (v21[25] + (v23 >> 28));
      *v36 = 0;
      v36[1] = 0;
    }

    *(v21[28] + (v23 >> 30)) = *v25 >> 28;
    *(v21[12] + v24) &= 0xFFFFFFFu;
    v27 = (v21[25] + v35);
    v28 = v27[1];
    if ((v28 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v27 = (v21[25] + (v23 >> 28));
    v28 = v27[1];
    if ((v28 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
LABEL_15:
      v29 = *v27;
      v30 = (v28 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v31 = 4 * v28;
      do
      {
        v32 = *v29++;
        operations_research::sat::MutableUpperBoundedLinearConstraint::AddTerm(a3, v32 ^ 1, 1);
        v31 -= 4;
      }

      while (v31);
      v33 = v30 + 1;
      goto LABEL_23;
    }
  }

  v33 = 0;
LABEL_23:
  *(a3 + 3) += v33;
  *a4 = -1;
  return 1;
}

_DWORD *operations_research::sat::SatSolver::MinimizeConflictSimple(_DWORD *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - *a2) < 5)
  {
    v30 = 4;
    v31 = v4 - (v3 + 4);
    if (v4 != v3 + 4)
    {
      goto LABEL_24;
    }

    return result;
  }

  v5 = result;
  v6 = result[74];
  v7 = 1;
  v8 = 1;
  v9 = 1;
  v35 = v6;
  do
  {
    v10 = (*(v3 + 4 * v7) >> 1);
    v11 = *(v5 + 27);
    v12 = v11[12];
    v13 = 8 * v10;
    v14 = *(v12 + v13);
    if ((v14 & 0xFFFFFFF) == v6)
    {
      goto LABEL_3;
    }

    v15 = v10 << 32;
    if (v14 >> 28 == 3)
    {
      v16 = *(v11[16] + 4 * v10);
      v15 = v16 << 32;
      v13 = 8 * v16;
    }

    v17 = (v12 + v13);
    v18 = *(v12 + v13);
    if (v18 >> 28)
    {
      v21 = v18 >> 28;
      v22 = v15 >> 28;
      if ((v21 - 1) > 1)
      {
        v24 = *(v11[31] + 8 * v21);
        result = (*(*v24 + 32))(v24, *(v5 + 27), v17[1]);
        v6 = v35;
        v25 = (v11[25] + v22);
        *v25 = result;
        v25[1] = v26;
      }

      else
      {
        v23 = (v11[25] + v22);
        *v23 = 0;
        v23[1] = 0;
      }

      *(v11[28] + (v15 >> 30)) = *v17 >> 28;
      *(v11[12] + v13) &= 0xFFFFFFFu;
      v19 = v11[25] + v22;
      v20 = *(v19 + 8);
      if (!v20)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v19 = v11[25] + (v15 >> 28);
      v20 = *(v19 + 8);
      if (!v20)
      {
        goto LABEL_3;
      }
    }

    if ((v20 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = *v19;
      v28 = 4 * v20;
      while (1)
      {
        v29 = *v27 >> 1;
        if ((*(*(*(v5 + 27) + 96) + 8 * v29) & 0xFFFFFFF) != 0 && ((*(*(v5 + 71) + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          break;
        }

        ++v27;
        v28 -= 4;
        if (!v28)
        {
          goto LABEL_4;
        }
      }

LABEL_3:
      *(*a2 + 4 * v8++) = *(*a2 + 4 * v7);
    }

LABEL_4:
    v7 = ++v9;
    v3 = *a2;
    v4 = a2[1];
  }

  while (v9 < ((v4 - *a2) >> 2));
  v30 = 4 * v8;
  v31 = v4 - (v3 + v30);
  if (v4 != v3 + v30)
  {
LABEL_24:
    v32 = v3 + v30;
    v33 = (v3 + v30 + v31);
    v34 = v4 - v33;
    if (v4 != v33)
    {
      result = memmove((v3 + v30), v33, v4 - v33);
    }

    a2[1] = v32 + v34;
  }

  return result;
}

void operations_research::sat::SatSolver::MinimizeConflictRecursively(uint64_t a1, std::vector<int> *a2)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 616, *(a1 + 16));
  v4 = *(a1 + 296);
  v5 = *(a1 + 728);
  v6 = (*(a1 + 736) - v5) >> 2;
  if (v6 <= v4)
  {
    v7 = v4 + 1;
    __x = 0x7FFFFFFF;
    if (v7 <= v6)
    {
      if (v7 < v6)
      {
        *(a1 + 736) = v5 + 4 * v7;
      }
    }

    else
    {
      std::vector<int>::__append((a1 + 728), v7 - v6, &__x);
    }
  }

  v8 = *(a1 + 592);
  v9 = *(a1 + 600);
  if (v8 != v9)
  {
    v10 = *(*(a1 + 216) + 96);
    v11 = *(a1 + 728);
    do
    {
      v12 = *v8++;
      v13 = (v10 + 8 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = v15 & 0xFFFFFFF;
      if (v14 >= *(v11 + 4 * v16))
      {
        v14 = *(v11 + 4 * v16);
      }

      *(v11 + 4 * v16) = v14;
    }

    while (v8 != v9);
  }

  begin = a2->__begin_;
  v18 = a2->__end_ - a2->__begin_;
  if (v18 >= 2)
  {
    v19 = 2;
    v20 = 1;
    v21 = 1;
    do
    {
      v22 = begin[v20] >> 1;
      v23 = *(*(a1 + 216) + 96);
      if ((operations_research::TimeLimit::LimitReached(*(a1 + 224)) & 1) != 0 || (v24 = (v23 + 8 * v22), *v24 >> 28 == 2) || v24[1] <= *(*(a1 + 728) + 4 * (*v24 & 0xFFFFFFF)) || !operations_research::sat::SatSolver::CanBeInferedFromConflictVariables(a1, v22))
      {
        v38 = v22;
        v25 = v22 >> 6;
        v26 = *(a1 + 624);
        v27 = *(v26 + 8 * v25);
        if ((v27 & (1 << v22)) == 0)
        {
          *(v26 + 8 * v25) = v27 | (1 << v22);
          std::vector<int>::push_back[abi:ne200100](a1 + 648, &v38);
        }

        begin = a2->__begin_;
        a2->__begin_[v21++] = a2->__begin_[v20];
      }

      else
      {
        begin = a2->__begin_;
      }

      v20 = v19;
      v28 = a2->__end_ - begin;
      ++v19;
    }

    while (v28 > v20);
    v29 = v21;
    v30 = v21 >= v28;
    v31 = v21 - v28;
    if (v21 <= v28)
    {
      goto LABEL_23;
    }

LABEL_26:
    std::vector<int>::__append(a2, v31);
    goto LABEL_27;
  }

  v29 = 1;
  v30 = v18 <= 1;
  v31 = 1 - v18;
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (!v30)
  {
    a2->__end_ = &begin[v29];
  }

LABEL_27:
  v32 = *(a1 + 728);
  v33 = *(a1 + 600);
  v34 = *(a1 + 592);
  if (v33 - v34 >= ((*(a1 + 736) - v32) >> 3))
  {
    *(a1 + 736) = v32;
  }

  else if (v34 != v33)
  {
    v35 = *(*(a1 + 216) + 96);
    do
    {
      v36 = *v34++;
      *(v32 + 4 * (*(v35 + 8 * v36) & 0xFFFFFFF)) = 0x7FFFFFFF;
    }

    while (v34 != v33);
  }
}

void operations_research::sat::SatSolver::MinimizeConflictExperimental(uint64_t a1, uint64_t *a2)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 560, *(a1 + 16));
  v52 = a2;
  v5 = *a2;
  v6 = a2[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 296);
    do
    {
      v9 = *v5;
      v10 = (*v5 >> 1);
      v53 = v10;
      v11 = (v9 >> 1) >> 6;
      v12 = *(a1 + 568);
      v13 = *(v12 + 8 * v11);
      if ((v13 & (1 << v10)) == 0)
      {
        *(v12 + 8 * v11) = v13 | (1 << v10);
        std::vector<int>::push_back[abi:ne200100](a1 + 592, &v53);
      }

      v14 = *(*(*(a1 + 216) + 96) + 8 * v10);
      v15 = v14 & 0xFFFFFFF;
      if ((v14 & 0xFFFFFFF) < v8)
      {
        v16 = v7;
        v17 = (v7 >> 3) + 1;
        if (v17 >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v7 >> 3 != -1)
        {
          if (!(v17 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = (8 * (v7 >> 3));
        *v18 = v10 | (v15 << 32);
        v7 = (v18 + 1);
        memcpy(0, 0, v16);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v19 = 126 - 2 * __clz(v7 >> 3);
  if (v7)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v7)
  {
    v43 = *v52;
    v42 = v52[1];
    v44 = v42 - *v52;
    if (v42 != *v52)
    {
      goto LABEL_36;
    }

LABEL_43:
    v51 = v43;
    if (v43 == v42)
    {
      return;
    }

    goto LABEL_44;
  }

  for (i = 0; i != v7; ++i)
  {
    v23 = *(a1 + 216);
    v24 = v23[12];
    v25 = *i;
    if (*(v24 + ((*i << 32) >> 29)) >> 28 == 3)
    {
      v25 = *(v23[16] + 4 * *i);
    }

    v26 = v25 << 32;
    v27 = 8 * v25;
    v28 = (v24 + v27);
    v29 = *(v24 + v27);
    if (v29 >> 28)
    {
      v32 = v29 >> 28;
      if ((v32 - 1) > 1)
      {
        v35 = *(v23[31] + 8 * v32);
        v36 = (*(*v35 + 32))(v35, v23, v28[1], v21);
        v33 = v26 >> 28;
        v37 = (v23[25] + (v26 >> 28));
        *v37 = v36;
        v37[1] = v38;
      }

      else
      {
        v33 = 16 * v25;
        v34 = (v23[25] + v33);
        *v34 = 0;
        v34[1] = 0;
      }

      *(v23[28] + (v26 >> 30)) = *v28 >> 28;
      *(v23[12] + v27) &= 0xFFFFFFFu;
      v30 = v23[25] + v33;
      v31 = *(v30 + 8);
      if (v31)
      {
LABEL_28:
        if ((v31 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = *v30;
          v40 = 4 * v31;
          do
          {
            v41 = *v39 >> 1;
            if ((*(*(*(a1 + 216) + 96) + 8 * v41) & 0xFFFFFFF) != 0 && ((*(*(a1 + 568) + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
            {
              operator new();
            }

            ++v39;
            v40 -= 4;
          }

          while (v40);
        }

        operator new();
      }
    }

    else
    {
      v30 = v23[25] + 16 * v25;
      v31 = *(v30 + 8);
      if (v31)
      {
        goto LABEL_28;
      }
    }
  }

  v43 = *v52;
  v42 = v52[1];
  v44 = v42 - *v52;
  if (v42 == *v52)
  {
    goto LABEL_43;
  }

LABEL_36:
  v45 = 0;
  v46 = 0;
  v47 = v44 >> 2;
  v48 = *(a1 + 568);
  v49 = 1;
  do
  {
    v50 = *(v43 + 4 * v45);
    if ((*(v48 + (((v50 >> 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v50 >> 1)))
    {
      *(v43 + 4 * v46++) = v50;
    }

    v45 = v49++;
  }

  while (v47 > v45);
  v51 = 4 * v46 + v43;
  if (v51 != v42)
  {
LABEL_44:
    v52[1] = v51;
  }
}

void sub_23CCD64EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::SatSolver::CanBeInferedFromConflictVariables(void *a1, int a2)
{
  v3 = a2;
  v85 = a2;
  v4 = a1[128];
  if (((*(v4 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    v6 = a1[123];
    v7 = a2;
    if (*(*(v6 + 96) + 8 * a2) >> 28 == 3)
    {
      v7 = *(*(v6 + 128) + 4 * a2);
    }

    if (a2 != v7)
    {
      v8 = v7 << 32;
      v9 = v7 >> 6;
      v10 = *(v4 + 8 * v9);
      if ((v10 & (1 << v7)) != 0)
      {
        v3 = *(a1[124] + 4 * v7);
        if (v3 != a2)
        {
          return ((*(a1[78] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) == 0;
        }
      }

      else
      {
        v86 = v7;
        *(v4 + 8 * v9) = v10 | (1 << v7);
        std::vector<int>::push_back[abi:ne200100]((a1 + 131), &v86);
        *(a1[124] + (v8 >> 30)) = v3;
        if (v3 != v85)
        {
          return ((*(a1[78] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) == 0;
        }
      }
    }

LABEL_11:
    a1[95] = a1[94];
    std::vector<int>::push_back[abi:ne200100]((a1 + 94), &v85);
    a1[98] = a1[97];
    std::vector<int>::push_back[abi:ne200100]((a1 + 97), &v85);
    v11 = a1[27];
    v12 = v85 << 32;
    v13 = v11[12];
    v14 = 8 * v85;
    if (*(v13 + v14) >> 28 == 3)
    {
      v15 = *(v11[16] + 4 * v85);
      v12 = v15 << 32;
      v14 = 8 * v15;
    }

    v16 = (v13 + v14);
    v17 = *(v13 + v14);
    if (v17 >> 28)
    {
      v20 = v17 >> 28;
      if ((v20 - 1) > 1)
      {
        v23 = *(v11[31] + 8 * v20);
        v24 = (*(*v23 + 32))(v23, a1[27], v16[1]);
        v21 = v12 >> 28;
        v25 = (v11[25] + (v12 >> 28));
        *v25 = v24;
        v25[1] = v26;
      }

      else
      {
        v21 = v12 >> 28;
        v22 = (v11[25] + (v12 >> 28));
        *v22 = 0;
        v22[1] = 0;
      }

      *(v11[28] + (v12 >> 30)) = *v16 >> 28;
      *(v11[12] + v14) &= 0xFFFFFFFu;
      v18 = (v11[25] + v21);
      v19 = v18[1];
      if ((v19 & 0x3FFFFFFFFFFFFFFFLL) == 0)
      {
LABEL_32:
        v40 = a1[98];
        if (a1[97] == v40)
        {
LABEL_71:
          v77 = a1[94];
          v78 = a1[95];
          if (v77 == v78)
          {
            v82 = a1[94];
          }

          else
          {
            do
            {
              v86 = *v77;
              v79 = v86 >> 6;
              v80 = a1[78];
              v81 = *(v80 + 8 * v79);
              if ((v81 & (1 << v86)) == 0)
              {
                *(v80 + 8 * v79) = v81 | (1 << v86);
                std::vector<int>::push_back[abi:ne200100]((a1 + 81), &v86);
              }

              ++v77;
            }

            while (v77 != v78);
            v82 = a1[94];
            v77 = a1[95];
          }

          return v82 == v77;
        }

        while (1)
        {
          v84 = *(v40 - 4);
          v41 = v84;
          v42 = a1[95];
          if (v84 == *(v42 - 4))
          {
            if ((v42 - a1[94]) >= 5)
            {
              v86 = v84;
              v43 = v84 >> 6;
              v44 = a1[71];
              v45 = *(v44 + 8 * v43);
              if ((v45 & (1 << v84)) == 0)
              {
                *(v44 + 8 * v43) = v45 | (1 << v84);
                std::vector<int>::push_back[abi:ne200100]((a1 + 74), &v86);
                v40 = a1[98];
                v42 = a1[95];
              }
            }

            a1[98] = v40 - 4;
            a1[95] = v42 - 4;
            goto LABEL_35;
          }

          v46 = v84 >> 6;
          if ((*(a1[71] + 8 * v46) & (1 << v84)) != 0)
          {
            a1[98] = v40 - 4;
            goto LABEL_35;
          }

          v47 = a1[128];
          if ((*(v47 + 8 * v46) & (1 << v84)) != 0)
          {
            v48 = *(a1[124] + 4 * v84);
            if (v48 != v84)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v49 = a1[123];
            if (*(*(v49 + 96) + 8 * v84) >> 28 == 3)
            {
              v50 = *(*(v49 + 128) + 4 * v84);
              if (v84 != v50)
              {
                v51 = v50 >> 6;
                v52 = *(v47 + 8 * v51);
                v53 = 4 * v50;
                if ((v52 & (1 << v50)) != 0)
                {
                  v48 = *(a1[124] + 4 * v50);
                  if (v48 != v84)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v86 = v50;
                  *(v47 + 8 * v51) = v52 | (1 << v50);
                  std::vector<int>::push_back[abi:ne200100]((a1 + 131), &v86);
                  *(a1[124] + v53) = v41;
                  v48 = v41;
                  if (v41 != v84)
                  {
LABEL_44:
                    if ((*(a1[78] + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v48))
                    {
                      goto LABEL_71;
                    }

                    a1[98] -= 4;
                    goto LABEL_35;
                  }
                }
              }
            }
          }

          std::vector<int>::push_back[abi:ne200100]((a1 + 94), &v84);
          v54 = a1[27];
          v55 = v84 << 32;
          v56 = v54[12];
          v57 = 8 * v84;
          if (*(v56 + v57) >> 28 == 3)
          {
            v58 = *(v54[16] + 4 * v84);
            v55 = v58 << 32;
            v57 = 8 * v58;
          }

          v59 = (v56 + v57);
          v60 = *(v56 + v57);
          if (v60 >> 28)
          {
            v63 = v60 >> 28;
            if ((v63 - 1) > 1)
            {
              v66 = *(v54[31] + 8 * v63);
              v67 = (*(*v66 + 32))(v66, a1[27], v59[1]);
              v64 = v55 >> 28;
              v68 = (v54[25] + (v55 >> 28));
              *v68 = v67;
              v68[1] = v69;
            }

            else
            {
              v64 = v55 >> 28;
              v65 = (v54[25] + (v55 >> 28));
              *v65 = 0;
              v65[1] = 0;
            }

            *(v54[28] + (v55 >> 30)) = *v59 >> 28;
            *(v54[12] + v57) &= 0xFFFFFFFu;
            v61 = v54[25] + v64;
            v62 = *(v61 + 8);
            if ((v62 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
LABEL_61:
              v70 = *v61;
              for (i = 4 * v62; i; i -= 4)
              {
                v86 = *v70 >> 1;
                v72 = (*(a1[27] + 96) + 8 * v86);
                v73 = *v72;
                if ((*v72 & 0xFFFFFFF) != 0)
                {
                  v74 = v86 >> 6;
                  if ((*(a1[71] + 8 * v74) & (1 << v86)) == 0)
                  {
                    v75 = v72[1];
                    v76 = v73 >> 28 == 2 || v75 <= *(a1[91] + 4 * (v73 & 0xFFFFFFF));
                    if (v76 || (*(a1[78] + 8 * v74) & (1 << v86)) != 0)
                    {
                      goto LABEL_71;
                    }

                    std::vector<int>::push_back[abi:ne200100]((a1 + 97), &v86);
                  }
                }

                ++v70;
              }
            }
          }

          else
          {
            v61 = v54[25] + (v55 >> 28);
            v62 = *(v61 + 8);
            if ((v62 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              goto LABEL_61;
            }
          }

LABEL_35:
          v40 = a1[98];
          if (a1[97] == v40)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else
    {
      v18 = (v11[25] + (v12 >> 28));
      v19 = v18[1];
      if ((v19 & 0x3FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_32;
      }
    }

    v27 = *v18;
    v28 = 4 * v19;
    while (1)
    {
      v31 = *v27;
      v32 = *v27 >> 1;
      v84 = v32;
      v33 = (v31 >> 1) >> 6;
      v34 = a1[71];
      v35 = *(v34 + 8 * v33);
      v36 = 1 << v32;
      if ((v35 & (1 << v32)) == 0)
      {
        v37 = (*(a1[27] + 96) + 8 * v32);
        v38 = *v37;
        if ((*v37 & 0xFFFFFFF) != 0)
        {
          v39 = v38 >> 28 == 2 || v37[1] <= *(a1[91] + 4 * (v38 & 0xFFFFFFF));
          if (v39 || (*(a1[78] + 8 * v33) & v36) != 0)
          {
            return 0;
          }

          v29 = a1 + 97;
          v30 = &v84;
        }

        else
        {
          v86 = v32;
          *(v34 + 8 * v33) = v35 | v36;
          v29 = a1 + 74;
          v30 = &v86;
        }

        std::vector<int>::push_back[abi:ne200100](v29, v30);
      }

      ++v27;
      v28 -= 4;
      if (!v28)
      {
        goto LABEL_32;
      }
    }
  }

  v3 = *(a1[124] + 4 * a2);
  if (v3 == a2)
  {
    goto LABEL_11;
  }

  return ((*(a1[78] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) == 0;
}

void absl::lts_20240722::log_internal::MakeCheckOpString<long long,operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> const&>(uint64_t a1, unsigned int *a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED91B0](&v6, a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED9180](v5, *a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CCD6DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

operations_research::sat::PbConstraints *operations_research::sat::PbConstraints::PbConstraints(operations_research::sat::PbConstraints *this, operations_research::sat::Model *a2)
{
  strcpy(this + 8, "PbConstraints");
  *(this + 11) = 0;
  *(this + 31) = 13;
  *(this + 4) = 0xFFFFFFFFLL;
  *this = &unk_284F43FD8;
  *(this + 40) = 0u;
  *(this + 88) = 0u;
  *(this + 168) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 100) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 23) = &unk_23CE31C20;
  *(this + 50) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = -1;
  *(this + 66) = 0;
  *(this + 34) = 0x3FF0000000000000;
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 311) = 13;
  *(this + 35) = v4;
  strcpy(this + 288, "PbConstraints");
  *(this + 78) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 42) = 0;
  *(this + 43) = this + 352;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 46) = 0;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  v6 = v5;
  v12 = this;
  v7 = *(v5 + 248);
  v8 = *(v5 + 256);
  v9 = v5 + 248;
  if (v7 == v8)
  {
    std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(v5 + 248, 4uLL);
    v7 = *(v6 + 248);
    v8 = *(v6 + 256);
  }

  v10 = v8 - v7;
  if ((v10 >> 3) > 0xF)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v10 >> 3, 16, "propagators_.size() < 16");
  }

  *(this + 8) = v10 >> 3;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v9, &v12);
  return this;
}

void sub_23CCD7140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v11);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(v10);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset((v7 + 112));
  std::vector<std::vector<int>>::~vector[abi:ne200100](v9);
  v13 = *(v7 + 64);
  if (v13)
  {
    *(v7 + 72) = v13;
    operator delete(v13);
    std::vector<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::__destroy_vector::operator()[abi:ne200100](va);
    *v7 = v8;
    if ((*(v7 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::__destroy_vector::operator()[abi:ne200100](va);
    *v7 = v8;
    if ((*(v7 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v7 + 8));
  _Unwind_Resume(a1);
}