uint64_t FIK::GenericSolver::AddTaskToSolverInternal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4)
  {
    v5 = *(a2 + 72);
  }

  else
  {
    v5 = &unk_245A04BAE;
  }

  v6 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v5, v4, (a1 + 400));
  v7 = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(a2 + 48, a1 + 192);
  result = 0xFFFFFFFFLL;
  if (v7 == -1 && v6 != -1)
  {
    *(a2 + 96) = v6;
    if (FIK::RTGameTask::AddSolverTask(a2, *(a1 + 176)))
    {
      Segment = FIK::IKSolver::getSegment(*(a1 + 176), (a2 + 72));
      *(a2 + 512) = *(*(*Segment + 544))(Segment);
      *(a2 + 528) = *(*(*Segment + 528))(Segment);
      FIK::IKArray<FIK::GameTask>::push_back<FIK::RTGameTask &,void>(a1 + 368, a2);
      FIK::IKArray<FIK::RTGameTask>::push_back<FIK::RTGameTask,void>((a1 + 56), a2);
      return (*(a1 + 56) - 1);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL FIK::GenericSolver::RemoveTaskFromSolver(uint64_t a1, uint64_t a2)
{
  FIK::IKArray<FIK::RTGameTask>::IKArray(v12, (a1 + 56));
  FIK::IKArray<FIK::RTGameTask>::destroyBufferObjects(a1 + 64, *(a1 + 56));
  *(a1 + 56) = 0;
  FIK::IKArray<FIK::GameTask>::destroyBufferObjects(a1 + 376, *(a1 + 368));
  *(a1 + 368) = 0;
  if (v12[0])
  {
    v4 = 0;
    v5 = v12[2];
    v6 = 576 * v12[0];
    do
    {
      v7 = *(a2 + 8);
      if (v7)
      {
        v8 = *a2;
      }

      else
      {
        v8 = &unk_245A04BAE;
      }

      v9 = *(v5 + 7);
      if (v9)
      {
        v10 = *(v5 + 6);
      }

      else
      {
        v10 = &unk_245A04BAE;
      }

      if (v9 == v7 && !memcmp(v10, v8, v7))
      {
        v4 = FIK::RTGameTask::RemoveSolverTask(v5, *(a1 + 176));
      }

      else
      {
        FIK::IKArray<FIK::RTGameTask>::push_back<FIK::RTGameTask&,void>(a1 + 56, v5);
        FIK::IKArray<FIK::GameTask>::push_back<FIK::RTGameTask &,void>(a1 + 368, v5);
      }

      v5 = (v5 + 576);
      v6 -= 576;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  FIK::IKArray<FIK::RTGameTask>::~IKArray(v12);
  return v4;
}

FIK::RTGameTask *FIK::IKArray<FIK::RTGameTask>::push_back<FIK::RTGameTask&,void>(uint64_t a1, const FIK::RTGameTask *a2)
{
  FIK::IKArray<FIK::RTGameTask>::reserve(a1, *a1 + 1);
  result = FIK::RTGameTask::RTGameTask((*(a1 + 16) + 576 * *a1), a2, *(a1 + 24));
  ++*a1;
  return result;
}

void FIK::IKArray<FIK::GameTask>::push_back<FIK::RTGameTask &,void>(uint64_t a1, uint64_t a2)
{
  FIK::IKArray<FIK::GameTask>::reserve(a1, *a1 + 1);
  FIK::GameTask::GameTask((*(a1 + 16) + 240 * *a1), a2 + 48, *(a1 + 24));
  ++*a1;
}

__n128 FIK::GenericSolver::SetWorldToSolverTransform(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *a2;
  result = *(a2 + 16);
  *(a1 + 32) = result;
  return result;
}

void FIK::GenericSolver::copyTaskTargetParamsTo(uint64_t this, FIK::GenericSolver *a2)
{
  if (*(this + 56))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 9);
      v7 = *(this + 72) + v4;
      if (*(v7 + 281) == 1)
      {
        v8 = *(v7 + 420);
        v9 = 0uLL;
        FIK::RTGameTask::SetLookAtTargetParams(v6 + v4, (v7 + 368), &v9, v8, 0.0);
      }

      else
      {
        FIK::RTGameTask::SetTargetParams(v6 + v4, (v7 + 336), *(v7 + 416), *(v7 + 420));
      }

      ++v5;
      v4 += 576;
    }

    while (*(this + 56) > v5);
  }
}

uint64_t FIK::GenericSolver::configureAndSolve(uint64_t a1, uint64_t *a2)
{
  FIK::GenericSolver::ConfigureSegments(a1, a2);
  FIK::GenericSolver::ConfigureTaskTargets(a1, a2);
  v5 = 2;
  FIK::IKSolver::solve(*(a1 + 176), *(a1 + 268), &v5);
  return v5;
}

uint64_t FIK::GenericSolver::ConfigureSegments(uint64_t a1, void *a2)
{
  v4 = a2[1];
  result = FIK::IKSolver::numSegments(*(a1 + 176));
  if (v4 != result)
  {
    result = FIK::GenericSolver::ConfigureSegments(result, v6);
  }

  if (*(a1 + 400) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *a2 + v8;
      Segment = FIK::IKSolver::getSegment(*(a1 + 176), v9);
      (*(*Segment + 200))(Segment, v10 + 16);
      result = (*(*Segment + 400))(Segment);
      if ((result & 1) == 0)
      {
        result = (*(*Segment + 248))(Segment, v10);
      }

      v12 = *(a1 + 416);
      if ((*(v12 + v7 + 105) & 1) != 0 || (*(v12 + v7 + 106) & 1) != 0 || *(v12 + v7 + 107) == 1)
      {
        result = (*(*Segment + 832))(Segment);
      }

      ++v9;
      v8 += 32;
      v7 += 256;
    }

    while (v9 < *(a1 + 400));
  }

  return result;
}

uint64_t FIK::GenericSolver::ConfigureTaskTargets(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(result + 56);
  if (v3)
  {
    v5 = *(result + 72);
    v6 = 576 * v3;
    do
    {
      FIK::RTGameTask::GenerateAnimTarget(v5, *a2, a2[1], &v2[12]);
      FIK::RTGameTask::ConvertTargetSpace(v5, v2->i32[2], v2 + 1, v7);
      FIK::RTGameTask::GenerateTarget(v5, a2, &v2[12]);
      FIK::RTGameTask::DoAlphaBlend(v5, v8);
      v9.n128_u32[0] = v2[3].u32[0];
      FIK::RTGameTask::BlendTaskTarget(v5, v9);
      result = FIK::RTGameTask::SetSolverTaskTarget(v5);
      v5 += 36;
      v6 -= 576;
    }

    while (v6);
  }

  if (v2[17].i32[3] == 1)
  {
    if (v2->i32[2] == 1)
    {
      FIK::RTBalanceTask::ConvertTargetWorldToSolver(v2 + 6, v2 + 1);
    }

    return FIK::RTBalanceTask::SetSolverTaskTarget(&v2[6], a2);
  }

  return result;
}

void FIK::GenericSolver::extractEstimatedPose(uint64_t this, uint64_t a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  if (*(this + 56))
  {
    v2 = this;
    v3 = 0;
    v4 = *(this + 528);
    v5 = 320;
    do
    {
      v6 = *(v2 + 72);
      if (*(v6 + v5 - 32) == 1)
      {
        v7 = *(v4 + 72) + v5;
        v8 = *(v7 - 304);
        if ((v8 || (v8 = *(v7 - 312)) != 0) && (this = (*(*&v8[*(*v8 - 264)] + 200))(&v8[*(*v8 - 264)], a2)) != 0)
        {
          this = (*(*this + 512))(this);
          v9 = (v6 + v5);
          *(v9 - 1) = *this;
          *v9 = *(this + 16);
        }

        else
        {
          v10 = ikinemaLogObject(this, a2)[1];
          this = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
          if (this)
          {
            FIK::GenericSolver::extractEstimatedPose(v11, v12, v10);
          }
        }
      }

      ++v3;
      v5 += 576;
    }

    while (*(v2 + 56) > v3);
  }
}

uint64_t FIK::GenericSolver::Solve(FIK::GenericSolver *this, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2[1] != *(this + 100))
  {
    FIK::GenericSolver::Solve(this, a2);
  }

  v4 = *(this + 66);
  if (v4)
  {
    FIK::GenericSolver::copyTaskTargetParamsTo(this, *(this + 66));
    v5 = FIK::GenericSolver::configureAndSolve(v4, a2);
    switch(v5)
    {
      case 2:
        v8 = ikinemaLogObject(v5, v6)[1];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          FIK::GenericSolver::Solve(v8);
        }

        break;
      case 1:
        v7 = ikinemaLogObject(v5, v6)[1];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315138;
          v12 = "Solve";
          _os_log_impl(&dword_245976000, v7, OS_LOG_TYPE_DEFAULT, "%s: Estimation solver auto-tune triggered.", &v11, 0xCu);
        }

        break;
      case 0:
        FIK::GenericSolver::extractEstimatedPose(this, v6);
        break;
    }
  }

  if (!*(this + 22))
  {
    return 2;
  }

  v9 = FIK::GenericSolver::configureAndSolve(this, a2);
  FIK::GenericSolver::PopulateOutArray(this, a2);
  return v9;
}

unint64_t FIK::GenericSolver::PopulateOutArray(uint64_t a1, void *a2)
{
  result = FIK::IKSolver::numSegments(*(a1 + 176));
  if (result)
  {
    v5 = 0;
    for (i = 0; i < result; v5 = ++i)
    {
      Segment = FIK::IKSolver::getSegment(*(a1 + 176), i);
      v8 = (*(*Segment + 344))(Segment);
      *&v9 = *v8;
      DWORD2(v9) = *(v8 + 8);
      v12 = v9;
      v10 = *(*(*Segment + 312))(Segment);
      v11 = (*a2 + 32 * v5);
      *v11 = v12;
      v11[1] = v10;
      result = FIK::IKSolver::numSegments(*(a1 + 176));
    }
  }

  return result;
}

uint64_t FIK::GenericSolver::Solve(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v4[0] = a2[2];
  v4[1] = v2;
  return (*(*a1 + 32))(a1, v4);
}

uint64_t FIK::GenericSolver::SetSolverProperties(uint64_t a1, float32x4_t *a2)
{
  FIK::IKSolver::setZMP(*(a1 + 176), a2 + 2);
  FIK::IKSolver::useDefaultZMP(*(a1 + 176), a2[3].u8[5]);
  FIK::IKSolver::setMomentsWeight(*(a1 + 176), a2[3].f32[0]);
  FIK::IKSolver::setTranslationWeight(*(a1 + 176), 1.0);
  FIK::IKSolver::setPrecision(*(a1 + 176), a2[1].f32[0]);
  FIK::IKSolver::setFigureMass(*(a1 + 176), a2[3].f32[2]);
  FIK::IKSolver::setLimitsGain(*(a1 + 176), a2[1].f32[1]);
  FIK::IKSolver::setPGain(*(a1 + 176), a2->f32[0]);
  FIK::IKSolver::setSolutionTolerance(*(a1 + 176), a2->f32[1]);
  FIK::IKSolver::setRetargetingGain(*(a1 + 176), a2->f32[2]);
  FIK::IKSolver::enableShadowPosing(*(a1 + 176), a2[1].u8[9]);
  v4 = *(a1 + 176);
  v5 = a2[1].i8[10];

  return FIK::IKSolver::setAddErrors(v4, v5);
}

uint64_t FIK::GenericSolver::SetBoneProperties(FIK::GenericSolver *this, uint64_t a2, const FIK::RigBone *a3)
{
  v4 = a2;
  if ((a2 & 0x80000000) != 0 || *(this + 100) <= a2)
  {
    FIK::GenericSolver::SetBoneProperties(this, a2);
  }

  Segment = FIK::IKSolver::getSegment(*(this + 22), v4);
  v7 = Segment;
  v8 = *Segment;
  if (*(a3 + 96) == 1)
  {
    if (((*(v8 + 168))(Segment) & 1) == 0)
    {
      (*(*v7 + 144))(v7, *(a3 + 105), *(a3 + 106), *(a3 + 107));
    }

    (*(*v7 + 136))(v7, *(a3 + 97), *(a3 + 98), *(a3 + 99));
    (*(*v7 + 176))(v7, *(a3 + 96), 0);
  }

  else
  {
    (*(v8 + 176))(Segment, 0, 1);
  }

  (*(*v7 + 280))(v7, 0, 1.0 - *(a3 + 36));
  v9.n128_f32[0] = 1.0 - *(a3 + 37);
  (*(*v7 + 280))(v7, 1, v9);
  v10.n128_f32[0] = 1.0 - *(a3 + 38);
  (*(*v7 + 280))(v7, 2, v10);
  v11.n128_u32[0] = *(a3 + 28);
  (*(*v7 + 952))(v7, v11);
  (*(*v7 + 656))(v7, 1);
  (*(*v7 + 64))(v7, *(a3 + 104));
  v12.n128_u32[0] = *(a3 + 31);
  (*(*v7 + 696))(v7, v12);
  v13 = 0;
  v26[24] = *(a3 + 32);
  v14 = (a3 + 192);
  do
  {
    v15 = *(v14 - 4);
    v16 = &v26[v13];
    v17 = *v14++;
    *v16 = v15;
    v16[1] = v17;
    v13 += 8;
  }

  while (v13 != 24);
  (*(*v7 + 624))(v7, v26, 1);
  (*(*v7 + 48))(v7, *(a3 + 103));
  if ((*(this + 281) & 1) == 0)
  {
    (*(*v7 + 16))(v7, *(a3 + 100), 0);
    v18.n128_u32[0] = *(a3 + 30);
    (*(*v7 + 712))(v7, v18);
  }

  (*(*v7 + 728))(v7, 0, *(a3 + 40));
  v19.n128_u32[0] = *(a3 + 41);
  (*(*v7 + 728))(v7, 1, v19);
  v20.n128_u32[0] = *(a3 + 42);
  (*(*v7 + 728))(v7, 2, v20);
  v21.n128_u32[0] = *(a3 + 29);
  (*(*v7 + 968))(v7, v21);
  result = (*(*v7 + 392))(v7);
  if (result)
  {
    (*(*v7 + 288))(v7, 3, *(a3 + 60));
    v23.n128_u32[0] = *(a3 + 61);
    (*(*v7 + 288))(v7, 4, v23);
    v24.n128_u32[0] = *(a3 + 62);
    (*(*v7 + 288))(v7, 5, v24);
    (*(*v7 + 88))(v7, *(a3 + 101));
    (*(*v7 + 104))(v7, *(a3 + 104));
    v25.n128_u32[0] = *(a3 + 33);
    return (*(*v7 + 760))(v7, v25);
  }

  return result;
}

uint64_t FIK::GenericSolver::ResetSolver(FIK::Solver ***this)
{
  FIK::IKSolver::resetSolver(this[22]);
  v2 = this[22];

  return FIK::IKSolver::setup(v2);
}

void FIK::GenericSolver::ConstructImportBones(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_ **this@<X0>)
{
  v4 = FIK::defaultAllocator(this);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v4;
  v5 = this[50];
  if (v5)
  {
    v6 = this[52];
    v7 = (v6 + 256 * v5);
    do
    {
      v8 = (v6 + 64);
      FIK::ImportBone::setRestTransform(v10, v8);
      v9 = FIK::IKArray<FIK::ImportBone>::push_back<FIK::ImportBone&,void>(a1, v10);
      if (v13)
      {
        (*(*v14 + 24))(v14, v12, 0, 8, v9);
        v12 = 0;
        v13 = 0;
      }

      if (v10[1])
      {
        (*(*v11 + 24))(v11, v10[0], 0, 8, v9);
      }

      v6 = (v8 + 48);
    }

    while (v6 != v7);
  }
}

void anonymous namespace::CopyHierarchyInfo(FIK::ImportBone *__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X0>)
{
  FIK::ImportBone::ImportBone(a1);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 1);
  }

  else
  {
    v5 = &unk_245A04BAE;
  }

  IKString::assign(a1, v5, v4);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = *(this + 4);
  }

  else
  {
    v7 = &unk_245A04BAE;
  }

  IKString::assign(a1 + 3, v7, v6);
}

__n128 FIK::IKArray<FIK::ImportBone>::push_back<FIK::ImportBone&,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<FIK::ImportBone>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 144 * *a1;
  IKString::IKString(v4, a2);
  IKString::IKString((v4 + 24), (a2 + 24));
  v5 = *(a2 + 64);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = v5;
  result = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 128);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 128) = v8;
  *(v4 + 80) = result;
  *(v4 + 96) = v7;
  ++*a1;
  return result;
}

void FIK::GenericSolver::ConstructImportBones(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = v6;
  if (*(a1 + 400) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = (a2 + 16);
    do
    {
      v16[0] = *(v9 - 1);
      v16[1] = *v9;
      FIK::ImportBone::setRestTransform(v11, v16);
      v10 = FIK::IKArray<FIK::ImportBone>::push_back<FIK::ImportBone&,void>(a3, v11);
      if (v14)
      {
        (*(*v15 + 24))(v15, v13, 0, 8, v10);
        v13 = 0;
        v14 = 0;
      }

      if (v11[1])
      {
        (*(*v12 + 24))(v12, v11[0], 0, 8, v10);
      }

      ++v8;
      v9 += 2;
      v7 += 256;
    }

    while (v8 < *(a1 + 400));
  }
}

uint64_t FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 176);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 192);
  if (*(a1 + 8))
  {
    v4 = *a1;
  }

  else
  {
    v4 = &unk_245A04BAE;
  }

  v5 = strlen(v4);
  v6 = 0;
  for (i = (v3 + 8); ; i += 30)
  {
    v8 = *i ? *(i - 1) : &unk_245A04BAE;
    if (*i == v5 && !memcmp(v8, v4, v5))
    {
      break;
    }

    if (v2 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t FIK::IKArray<FIK::RTGameTask>::push_back<FIK::RTGameTask,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<FIK::RTGameTask>::reserve(a1, *a1 + 1);
  result = FIK::RTGameTask::RTGameTask(a1[2] + 576 * *a1, a2, a1[3]);
  ++*a1;
  return result;
}

void *FIK::IKArray<FIK::GameTask>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::GameTask>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      v10 = v8 + v7;
      IKString::IKString((v8 + v7), (v9 + v7));
      IKString::IKString((v8 + v7 + 24), (v9 + v7 + 24));
      v11 = *(v9 + v7 + 48);
      *(v10 + 64) = *(v9 + v7 + 64);
      *(v10 + 48) = v11;
      *(v10 + 80) = *(v9 + v7 + 80);
      *(v10 + 96) = *(v9 + v7 + 96);
      *(v10 + 112) = *(v9 + v7 + 112);
      *(v10 + 128) = *(v9 + v7 + 128);
      *(v10 + 144) = *(v9 + v7 + 144);
      *(v10 + 160) = *(v9 + v7 + 160);
      *(v10 + 176) = *(v9 + v7 + 176);
      *(v10 + 192) = *(v9 + v7 + 192);
      *(v10 + 208) = *(v9 + v7 + 208);
      *(v10 + 224) = *(v9 + v7 + 224);
      v7 += 240;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::GameTask>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 240 * a2;
    v6 = (*(*a3 + 16))(a3, 240 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::RigBone>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::RigBone>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a2[2];
    v8 = a1[2] + 32;
    v9 = v7 + 32;
    do
    {
      *(v8 - 32) = *(v9 - 32);
      IKString::IKString((v8 - 24), (v9 - 24));
      IKString::IKString(v8, v9);
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      v10 = *(v9 + 64);
      v11 = *(v9 + 80);
      *(v8 + 96) = *(v9 + 96);
      *(v8 + 64) = v10;
      *(v8 + 80) = v11;
      *(v8 + 112) = *(v9 + 112);
      *(v8 + 128) = *(v9 + 128);
      *(v8 + 144) = *(v9 + 144);
      *(v8 + 160) = *(v9 + 160);
      *(v8 + 176) = *(v9 + 176);
      *(v8 + 192) = *(v9 + 192);
      *(v8 + 208) = *(v9 + 208);
      v8 += 256;
      v9 += 256;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::RigBone>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = a2 << 8;
    v6 = (*(*a3 + 16))(a3, a2 << 8, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<IKString>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  v6 = FIK::IKArray<IKString>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v7 = *a2;
  if (*a2)
  {
    v8 = a1[2];
    v9 = (a2[2] + 8);
    do
    {
      v10 = FIK::defaultAllocator(v6);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = v10;
      if (*v9)
      {
        v11 = *(v9 - 1);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      IKString::assign(v8, v11, *v9);
      v8 += 3;
      v9 += 3;
      --v7;
    }

    while (v7);
  }

  return a1;
}

void *FIK::IKArray<FIK::AimSetup>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::AimSetup>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      v10 = v8 + v7;
      IKString::IKString((v8 + v7), (v9 + v7));
      *(v10 + 24) = *(v9 + v7 + 24);
      IKString::IKString((v8 + v7 + 32), (v9 + v7 + 32));
      FIK::IKArray<FIK::Item>::IKArray((v8 + v7 + 56), (v9 + v7 + 56));
      FIK::IKArray<FIK::Item>::IKArray((v8 + v7 + 88), (v9 + v7 + 88));
      *(v10 + 120) = *(v9 + v7 + 120);
      v7 += 128;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::AimSetup>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = a2 << 7;
    v6 = (*(*a3 + 16))(a3, a2 << 7, 8);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::Item>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Item>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = (a1[2] + 8);
    v8 = (a2[2] + 8);
    do
    {
      *(v7 - 2) = *(v8 - 2);
      IKString::IKString(v7, v8);
      v7 = (v9 + 32);
      v8 = (v8 + 32);
      --v6;
    }

    while (v6);
  }

  return a1;
}

FIK::ImportBone *FIK::ImportBone::ImportBone(FIK::ImportBone *this)
{
  v2 = FIK::defaultAllocator(this);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  v3 = FIK::defaultAllocator(v2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 3) = xmmword_245A01E80;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0x200000002;
  *(this + 96) = 0;
  *(this + 100) = 0;
  *(this + 27) = 0;
  *(this + 7) = xmmword_245A03A80;
  *(this + 8) = unk_245A03A90;
  return this;
}

uint64_t FIK::IKArray<FIK::ImportBone>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::ImportBone>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::ImportBone>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8) + 24;
    do
    {
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      if (*(v3 - 16))
      {
        result = (*(**(v3 - 8) + 24))(*(v3 - 8), *(v3 - 24), 0, 8);
        *(v3 - 24) = 0;
        *(v3 - 16) = 0;
      }

      v3 += 144;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *FIK::IKArray<FIK::RTGameTask>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 576 * a2;
    v6 = (*(*a3 + 16))(a3, 576 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::RTGameTask>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::RTGameTask>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

void *FIK::IKArray<FIK::RTGameTask>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::RTGameTask>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      v10 = v8 + v7;
      *v10 = &unk_28589BD98;
      *(v10 + 8) = *(v9 + v7 + 8);
      IKString::IKString((v8 + v7 + 24), (v9 + v7 + 24));
      IKString::IKString((v8 + v7 + 48), (v9 + v7 + 48));
      IKString::IKString((v8 + v7 + 72), (v9 + v7 + 72));
      v11 = *(v9 + v7 + 96);
      *(v10 + 112) = *(v9 + v7 + 112);
      *(v10 + 96) = v11;
      *(v10 + 128) = *(v9 + v7 + 128);
      *(v10 + 144) = *(v9 + v7 + 144);
      *(v10 + 160) = *(v9 + v7 + 160);
      *(v10 + 176) = *(v9 + v7 + 176);
      *(v10 + 192) = *(v9 + v7 + 192);
      *(v10 + 208) = *(v9 + v7 + 208);
      *(v10 + 224) = *(v9 + v7 + 224);
      *(v10 + 240) = *(v9 + v7 + 240);
      *(v10 + 256) = *(v9 + v7 + 256);
      *(v10 + 272) = *(v9 + v7 + 272);
      *v10 = &unk_28589C2E8;
      *(v10 + 288) = *(v9 + v7 + 288);
      *(v10 + 304) = *(v9 + v7 + 304);
      *(v10 + 320) = *(v9 + v7 + 320);
      *(v10 + 336) = *(v9 + v7 + 336);
      *(v10 + 352) = *(v9 + v7 + 352);
      *(v10 + 368) = *(v9 + v7 + 368);
      *(v10 + 384) = *(v9 + v7 + 384);
      *(v10 + 400) = *(v9 + v7 + 400);
      v12 = *(v9 + v7 + 416);
      v13 = *(v9 + v7 + 432);
      *(v10 + 446) = *(v9 + v7 + 446);
      *(v10 + 416) = v12;
      *(v10 + 432) = v13;
      *(v10 + 464) = *(v9 + v7 + 464);
      *(v10 + 480) = *(v9 + v7 + 480);
      *(v10 + 496) = *(v9 + v7 + 496);
      *(v10 + 512) = *(v9 + v7 + 512);
      *(v10 + 528) = *(v9 + v7 + 528);
      *(v10 + 544) = *(v9 + v7 + 544);
      *(v10 + 560) = *(v9 + v7 + 560);
      v7 += 576;
      --v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::RTGameTask>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8);
    v4 = v3 + 48;
    do
    {
      if (*(v4 + 32))
      {
        result = (*(**(v4 + 40) + 24))(*(v4 + 40), *(v4 + 24), 0, 8);
        *(v4 + 24) = 0;
        *(v4 + 32) = 0;
      }

      if (*(v4 + 8))
      {
        result = (*(**(v4 + 16) + 24))(*(v4 + 16), *v4, 0, 8);
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      *(v4 - 48) = &unk_28589BD98;
      if (*(v4 - 16))
      {
        result = (*(**(v4 - 8) + 24))(*(v4 - 8), *(v4 - 24), 0, 8);
        *(v4 - 24) = 0;
        *(v4 - 16) = 0;
      }

      v4 += 576;
      v3 += 576;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t *FIK::IKArray<FIK::RTGameTask>::reserve(uint64_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v23 = v2;
    v24 = v3;
    v4 = result;
    v5 = result[3];
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = v6;
    if (v6)
    {
      v7 = (*(*v5 + 16))(v5, 576 * v6, 16);
      v8 = v7;
      v21 = v7;
      v22 = v5;
      if (576 * v6)
      {
        bzero(v7, 576 * v6);
      }
    }

    else
    {
      v8 = 0;
      v21 = 0;
      v22 = v5;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      do
      {
        v12 = &v8[v11];
        *v12 = &unk_28589BD98;
        v13 = &v9[v11];
        *(v12 + 8) = *&v9[v11 + 8];
        IKString::IKString(&v8[v11 + 24], &v9[v11 + 24], *&v9[v11 + 40]);
        IKString::IKString(&v8[v11 + 48], v13 + 6, *(v13 + 8));
        IKString::IKString(&v8[v11 + 72], v13 + 9, *(v13 + 11));
        v14 = *&v9[v11 + 96];
        *(v12 + 14) = *&v9[v11 + 112];
        *(v12 + 6) = v14;
        *(v12 + 8) = *&v9[v11 + 128];
        *(v12 + 9) = *&v9[v11 + 144];
        *(v12 + 10) = *&v9[v11 + 160];
        *(v12 + 11) = *&v9[v11 + 176];
        *(v12 + 12) = *&v9[v11 + 192];
        *(v12 + 13) = *&v9[v11 + 208];
        *(v12 + 14) = *&v9[v11 + 224];
        *(v12 + 15) = *&v9[v11 + 240];
        *(v12 + 16) = *&v9[v11 + 256];
        *(v12 + 17) = *&v9[v11 + 272];
        *v12 = &unk_28589C2E8;
        v12[288] = v9[v11 + 288];
        *(v12 + 19) = *&v9[v11 + 304];
        *(v12 + 20) = *&v9[v11 + 320];
        *(v12 + 21) = *&v9[v11 + 336];
        *(v12 + 22) = *&v9[v11 + 352];
        *(v12 + 23) = *&v9[v11 + 368];
        *(v12 + 24) = *&v9[v11 + 384];
        *(v12 + 25) = *&v9[v11 + 400];
        v15 = *&v9[v11 + 416];
        v16 = *&v9[v11 + 432];
        *(v12 + 446) = *&v9[v11 + 446];
        *(v12 + 26) = v15;
        *(v12 + 27) = v16;
        *(v12 + 29) = *&v9[v11 + 464];
        *(v12 + 30) = *&v9[v11 + 480];
        *(v12 + 124) = *&v9[v11 + 496];
        *(v12 + 32) = *&v9[v11 + 512];
        *(v12 + 33) = *&v9[v11 + 528];
        *(v12 + 34) = *&v9[v11 + 544];
        *(v12 + 70) = *&v9[v11 + 560];
        v11 += 576;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v6 = v20;
      v8 = v21;
      v5 = v22;
      v17 = *v4;
    }

    else
    {
      v17 = 0;
    }

    v18 = v4[1];
    v19 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v20 = v18;
    v21 = v9;
    v22 = v19;
    result = FIK::IKArray<FIK::RTGameTask>::destroyBufferObjects(&v20, v17);
    if (v21)
    {
      return (*(*v22 + 24))(v22, v21, 0, 8);
    }
  }

  return result;
}

uint64_t *FIK::IKArray<FIK::ImportBone>::reserve(uint64_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v23 = v2;
    v24 = v3;
    v4 = result;
    v5 = result[3];
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (*(*v5 + 16))(result[3], 144 * v6, 8);
      v8 = v7;
      if (144 * v6)
      {
        bzero(v7, 144 * v6);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = v8 + 24;
      v12 = v9 + 24;
      do
      {
        IKString::IKString(v11 - 3, (v12 - 24), *(v12 - 8));
        IKString::IKString(v11, v12, *(v12 + 16));
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
        v14 = *(v12 + 56);
        v15 = *(v12 + 72);
        v16 = *(v12 + 88);
        *(v11 + 104) = *(v12 + 104);
        *(v11 + 88) = v16;
        *(v11 + 72) = v15;
        *(v11 + 56) = v14;
        v11 += 144;
        v12 += 144;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v17 = *v4;
    }

    else
    {
      v17 = 0;
    }

    v18 = v4[1];
    v19 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v20 = v18;
    v21 = v9;
    v22 = v19;
    result = FIK::IKArray<FIK::ImportBone>::destroyBufferObjects(&v20, v17);
    if (v21)
    {
      return (*(*v22 + 24))(v22, v21, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::Enrollment::Exporter::Exporter(uint64_t a1, uint64_t a2)
{
  *(a1 + 464) = 0;
  v3 = MEMORY[0x277D82860] + 24;
  v4 = MEMORY[0x277D82860] + 64;
  *(a1 + 416) = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v3;
  *(a1 + 416) = v4;
  MEMORY[0x245D77E10](a1 + 8);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  return a1;
}

void *FIK::Enrollment::Exporter::setupForNames(uint64_t a1, void *a2)
{
  *(a1 + 568) = *a2;
  result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "timeStamp,info#frame", 20);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[2];
    v7 = 16 * v5;
    do
    {
      v8 = *v6++;
      v11 = v8;
      v9 = FIK::Enrollment::operator<<(a1, &v11);
      v10 = v8;
      result = FIK::Enrollment::operator<<(v9, &v10);
      v7 -= 16;
    }

    while (v7);
  }

  *(a1 + 576) = 1;
  return result;
}

uint64_t FIK::Enrollment::Exporter::appendPoseToFile(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  if ((*(a1 + 576) & 1) == 0)
  {
    a1 = FIK::Enrollment::Exporter::appendPoseToFile(a1, a2);
  }

  if (v7[71] != a3)
  {
    FIK::Enrollment::Exporter::appendPoseToFile(a1, a2);
  }

  v12 = 10;
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, &v12, 1);
  *(v8 + *(*v8 - 24) + 16) = 8;
  v11 = a4;
  result = FIK::Enrollment::operator<<(v8, &v11);
  if (a3)
  {
    v10 = 32 * a3;
    do
    {
      result = FIK::Enrollment::operator<<(v7, v6);
      v6 += 2;
      v10 -= 32;
    }

    while (v10);
  }

  return result;
}

uint64_t FIK::Enrollment::operator<<(uint64_t a1, void *a2)
{
  v4 = std::ostream::operator<<();
  v7 = 44;
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, &v7, 1);
  MEMORY[0x245D77EA0](v5, *a2);
  return a1;
}

void *FIK::Enrollment::operator<<(void *a1, float32x4_t *a2)
{
  FIK::Enrollment::operator<<(a1, a2->f32);
  FIK::Enrollment::eulerAnglesDegreesFromQuat(a2 + 1, &v5);
  return FIK::Enrollment::operator<<(a1, &v5);
}

{
  FIK::Enrollment::operator<<(a1, a2->f32);
  FIK::Enrollment::eulerAnglesDegreesFromQuat(a2 + 1, &v9);
  v4 = FIK::Enrollment::operator<<(a1, &v9);
  v10 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, &v10, 1);
  v5 = std::ostream::operator<<();
  v10 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, &v10, 1);
  v6 = std::ostream::operator<<();
  v10 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, &v10, 1);
  v7 = std::ostream::operator<<();
  v10 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, &v10, 1);
  std::ostream::operator<<();
  return a1;
}

uint64_t FIK::Enrollment::Exporter::appendPoseToFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  if ((*(a1 + 576) & 1) == 0)
  {
    a1 = FIK::Enrollment::Exporter::appendPoseToFile(a1, a2);
  }

  if (v7[71] != a3)
  {
    FIK::Enrollment::Exporter::appendPoseToFile(a1, a2);
  }

  v13[0].i8[0] = 10;
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v13, 1);
  *(v8 + *(*v8 - 24) + 16) = 8;
  v13[0].i64[0] = a4;
  result = FIK::Enrollment::operator<<(v8, v13);
  if (a3)
  {
    v10 = 16 * a3;
    do
    {
      v11 = *v6++;
      v12 = v11;
      v12.i32[3] = 0;
      v13[0] = v12;
      v13[1] = xmmword_245A01E80;
      result = FIK::Enrollment::operator<<(v7, v13);
      v10 -= 16;
    }

    while (v10);
  }

  return result;
}

uint64_t FIK::Enrollment::DataLogger::DataLogger(uint64_t a1, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::to_string(&v31, v5.__d_.__rep_ / 1000000.0);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v31;
  }

  else
  {
    v6 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  FIK::Enrollment::combinePath(&v33, v6, size, &__dst);
  FIK::Enrollment::createPath(&v33, a1, v8);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *a1, *(a1 + 8));
  }

  else
  {
    v30 = *a1;
  }

  FIK::Enrollment::combinePath(&v31, "task_targets.csv", 0x10uLL, &v30);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v31;
  }

  else
  {
    v9 = v31.__r_.__value_.__r.__words[0];
  }

  FIK::Enrollment::Exporter::Exporter(a1 + 24, v9);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  FIK::Enrollment::combinePath(&v31, "solved_pose.csv", 0xFuLL, &__p);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31.__r_.__value_.__r.__words[0];
  }

  v11 = FIK::Enrollment::Exporter::Exporter(a1 + 608, v10);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!*(a1 + 152))
  {
    v13 = *ikinemaLogObject(v11, v12);
    v11 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      FIK::Enrollment::DataLogger::DataLogger(v13, v12, v14, v15, v16, v17, v18, v19);
    }
  }

  if (!*(a1 + 736))
  {
    v20 = *ikinemaLogObject(v11, v12);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::DataLogger(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  return a1;
}

__n128 FIK::Enrollment::createPath@<Q0>(std::string *this@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    FIK::Enrollment::createPath(this, a3);
  }

  v6 = 0;
  do
  {
    v6 = std::string::find(this, 47, v6 + 1);
    std::string::basic_string(&v9, this, 0, v6, &v10);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!*(&v9.__r_.__value_.__s + 23))
      {
        continue;
      }

      v7 = &v9;
LABEL_11:
      mkdir(v7, 0xFFFu);
      if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_12;
    }

    if (v9.__r_.__value_.__l.__size_)
    {
      v7 = v9.__r_.__value_.__r.__words[0];
      goto LABEL_11;
    }

LABEL_12:
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  while (v6 != -1);
  result = *&this->__r_.__value_.__l.__data_;
  *a2 = *&this->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void FIK::Enrollment::combinePath(std::string *__return_ptr a1@<X8>, const std::string::value_type *__src@<X1>, size_t __len@<X2>, std::string *a4@<X0>)
{
  size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a4->__r_.__value_.__l.__size_;
    if (size)
    {
      v8 = a4->__r_.__value_.__r.__words[0];
LABEL_6:
      if (v8->__r_.__value_.__s.__data_[size - 1] == 47)
      {
        v9 = std::string::append(a4, __src, __len);
        if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
        {
          v13 = v9->__r_.__value_.__r.__words[0];
          v14 = v9->__r_.__value_.__l.__size_;

          std::string::__init_copy_ctor_external(a1, v13, v14);
        }

        else
        {
          v10 = *&v9->__r_.__value_.__l.__data_;
          a1->__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
          *&a1->__r_.__value_.__l.__data_ = v10;
        }
      }

      else
      {
        std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&a4->__r_.__value_.__l.__data_, 47, &v15);
        v11 = std::string::append(&v15, __src, __len);
        if (SHIBYTE(v11->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(a1, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
        }

        else
        {
          v12 = *&v11->__r_.__value_.__l.__data_;
          a1->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
          *&a1->__r_.__value_.__l.__data_ = v12;
        }

        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      return;
    }
  }

  else if (*(&a4->__r_.__value_.__s + 23))
  {
    v8 = a4;
    goto LABEL_6;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&a1->__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(a1, __src, __len);
  }

  a1->__r_.__value_.__s.__data_[__len] = 0;
}

uint64_t FIK::Enrollment::DataLogger::exportSources(uint64_t a1, void *a2, uint64_t a3)
{
  v22[21] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a1, *(a1 + 8));
  }

  else
  {
    v18 = *a1;
  }

  FIK::Enrollment::combinePath(&__p, "original_sources.csv", 0x14uLL, &v18);
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

  v7 = FIK::Enrollment::SourceExporter::SourceExporter(&v20, p_p, size, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v21[15])
  {
    FIK::Enrollment::SourceExporter::exportSourceData(&v20, a2, *(a3 + 24), *(a3 + 8));
  }

  else
  {
    v9 = *ikinemaLogObject(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::exportSources(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v20 = *MEMORY[0x277D82810];
  *(&v21[-1] + *(v20 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245D77E20](v21);
  std::ostream::~ostream();
  return MEMORY[0x245D77F30](v22);
}

void *FIK::Enrollment::SourceExporter::exportSourceData(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v32 = *MEMORY[0x277D85DE8];
  if (result[71] != a4 * a3)
  {
    result = FIK::Enrollment::SourceExporter::exportSourceData(result, a2);
  }

  v8 = a2[1];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v27 = (*a2 + 160 * i);
      v28 = 1;
      v29.n128_u8[0] = 10;
      v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, &v29, 1);
      *(v10 + *(*v10 - 24) + 16) = 8;
      v11 = FIK::Enrollment::FrameAdaptor::ID(&v27);
      FIK::Enrollment::FrameAdaptor::getVioPose(&v27, v26);
      FIK::Enrollment::FrameAdaptor::getHeadPose(&v27, &v29);
      v23 = 0uLL;
      v12 = &v29;
      if (!v31)
      {
        v12 = &v23;
      }

      v25 = *v12;
      if (v31)
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }

      v21 = vbslq_s8(vdupq_n_s32(v13), v30, xmmword_245A01E80);
      v22 = v11;
      v14 = FIK::Enrollment::operator<<(v7, &v22);
      v29 = v26[0];
      v30 = v26[1];
      v15 = FIK::Enrollment::operator<<(v14, &v29);
      v23 = v25;
      v24 = v21;
      result = FIK::Enrollment::operator<<(v15, &v23);
      if (a3)
      {
        v16 = 0;
        do
        {
          FIK::Enrollment::FrameAdaptor::getCameraPoseForIndex(&v29, &v27, v16);
          v23 = v29;
          v24 = v30;
          result = FIK::Enrollment::operator<<(v7, &v23);
          if (a4)
          {
            v17 = 0;
            do
            {
              FIK::Enrollment::FrameAdaptor::getLiftedPositionForJoint(&v23, &v27, v16, v17);
              v18 = FIK::Enrollment::operator<<(v7, &v23);
              v23.n128_u8[0] = 44;
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, &v23, 1);
              FIK::Enrollment::FrameAdaptor::getConfidenceForLiftedJoint(&v27, v16, v17);
              std::ostream::operator<<();
              v23.n128_u8[0] = 44;
              v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, &v23, 1);
              isLiftedValid = FIK::Enrollment::FrameAdaptor::isLiftedValid(&v27, v16, v17);
              MEMORY[0x245D77E90](v19, isLiftedValid);
              FIK::Enrollment::FrameAdaptor::getRayDirectionForJoint(&v23, &v27, v16, v17);
              FIK::Enrollment::operator<<(v7, &v23);
              if (FIK::Enrollment::FrameAdaptor::isRayDirValid(&v27, v16, v17))
              {
                FIK::Enrollment::FrameAdaptor::getRayEndForJoint(&v23, &v27, 1.0, v16, v17);
              }

              else
              {
                v23 = 0uLL;
              }

              result = FIK::Enrollment::operator<<(v7, &v23);
              ++v17;
            }

            while (a4 != v17);
          }

          ++v16;
        }

        while (v16 != a3);
      }
    }
  }

  return result;
}

uint64_t FIK::Enrollment::DataLogger::exportEnrollment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a1, *(a1 + 8));
  }

  else
  {
    v24 = *a1;
  }

  FIK::Enrollment::combinePath(&__p, "enrollment.csv", 0xEuLL, &v24);
  v28[6] = 0;
  v5 = MEMORY[0x277D82860] + 24;
  v6 = MEMORY[0x277D82860] + 64;
  v28[0] = MEMORY[0x277D82860] + 64;
  v7 = MEMORY[0x277D82810];
  v8 = *(MEMORY[0x277D82810] + 16);
  v26 = *(MEMORY[0x277D82810] + 8);
  *(&v27[-1] + *(v26 - 24)) = v8;
  v9 = (&v27[-1] + *(v26 - 24));
  std::ios_base::init(v9, v27);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v26 = v5;
  v28[0] = v6;
  MEMORY[0x245D77E10](v27);
  v10 = std::filebuf::open();
  if (!v10)
  {
    std::ios_base::clear((&v27[-1] + *(v26 - 24)), *(&v27[3] + *(v26 - 24)) | 4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v27[15])
  {
    if (a3)
    {
      v12 = a2 + 24 * a3;
      do
      {
        v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, *(a2 + 8), *(a2 + 16));
        __p.__r_.__value_.__s.__data_[0] = 44;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, &__p, 1);
        v14 = std::ostream::operator<<();
        __p.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, &__p, 1);
        a2 += 24;
      }

      while (a2 != v12);
    }
  }

  else
  {
    v15 = *ikinemaLogObject(v10, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::exportEnrollment(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v26 = *v7;
  *(&v27[-1] + *(v26 - 24)) = v7[3];
  MEMORY[0x245D77E20](v27);
  std::ostream::~ostream();
  return MEMORY[0x245D77F30](v28);
}

uint64_t FIK::Enrollment::DataLogger::exportComputedSources(uint64_t a1, void *a2, uint64_t a3, FIK *a4)
{
  v50[21] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *a1, *(a1 + 8));
  }

  else
  {
    v31 = *a1;
  }

  FIK::Enrollment::combinePath(&__p, "computed_sources.csv", 0x14uLL, &v31);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = FIK::Enrollment::Exporter::Exporter(&v48, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v49[15])
  {
    FIK::Enrollment::queryNames<FIK::RigBoneBase>(a4, &__p);
    FIK::Enrollment::Exporter::setupForNames(&v48, &__p);
    __p.__r_.__value_.__r.__words[0] = 0;
    if (__p.__r_.__value_.__r.__words[2])
    {
      (*(*v33 + 24))(v33, __p.__r_.__value_.__r.__words[2], 0, 8);
    }

    *&__p.__r_.__value_.__l.__data_ = *a3;
    FIK::IKArray<FIK::Transform>::IKArray(&__p.__r_.__value_.__r.__words[2], (a3 + 16));
    FIK::IKArray<BOOL>::IKArray(v34, (a3 + 48));
    FIK::IKArray<FIK::Enrollment::LiftedSource>::IKArray(v35, (a3 + 80));
    FIK::IKArray<FIK::Enrollment::RaySource>::IKArray(v36, (a3 + 112));
    FIK::IKArray<FIK::Enrollment::LiftedSource>::IKArray(v37, (a3 + 144));
    LOBYTE(v38) = 0;
    v46 = 0;
    if (*(a3 + 320) == 1)
    {
      v38 = *(a3 + 176);
      v39 = *(a3 + 192);
      v10 = *(a3 + 224);
      v40 = *(a3 + 208);
      v41 = v10;
      v42 = *(a3 + 240);
      v11 = *(a3 + 272);
      v43 = *(a3 + 256);
      v44 = v11;
      FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::IKArray(v45, (a3 + 288));
      v46 = 1;
    }

    v47 = *(a3 + 336);
    v30 = 0;
    v12 = a2[1];
    if (v12)
    {
      v13 = 0;
      do
      {
        v28 = v13 + *a2;
        v29 = 1;
        v14 = FIK::Enrollment::FrameAdaptor::ID(&v28);
        v15 = FIK::Enrollment::DataPreprocessor::generateSolverSources(&__p, a2, v14, &v30);
        v17 = v16;
        v18 = FIK::Enrollment::FrameAdaptor::ID(&v28);
        FIK::Enrollment::Exporter::appendPoseToFile(&v48, v15, v17, v18);
        v13 += 160;
        --v12;
      }

      while (v12);
    }

    FIK::Enrollment::DataPreprocessor::~DataPreprocessor(&__p);
  }

  else
  {
    v19 = *ikinemaLogObject(v8, v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::DataLogger::exportComputedSources(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  v48 = *MEMORY[0x277D82810];
  *(&v49[-1] + *(v48 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245D77E20](v49);
  std::ostream::~ostream();
  return MEMORY[0x245D77F30](v50);
}

void *FIK::Enrollment::queryNames<FIK::RigBoneBase>@<X0>(FIK *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = FIK::defaultAllocator(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  result = FIK::IKArray<std::string_view>::reserve(a2, *a1);
  if (*a1)
  {
    v6 = *(a1 + 2);
    v7 = *a2;
    v8 = 96 * *a1;
    v9 = (v6 + 16);
    do
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v9 - 1);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      result = FIK::IKArray<std::string_view>::reserve(a2, v7 + 1);
      v12 = (a2[2] + 16 * *a2);
      *v12 = v11;
      v12[1] = v10;
      v7 = *a2 + 1;
      *a2 = v7;
      v9 += 12;
      v8 -= 96;
    }

    while (v8);
  }

  return result;
}

void *FIK::Enrollment::DataLogger::setupTaskExporter(void *result, FIK *a2)
{
  if (result[19])
  {
    v2 = result;
    FIK::Enrollment::queryNames<FIK::MoCapTask>(a2, v3);
    result = FIK::Enrollment::Exporter::setupForNames((v2 + 3), v3);
    v3[0] = 0;
    if (v4)
    {
      return (*(*v5 + 24))(v5, v4, 0, 8);
    }
  }

  return result;
}

void *FIK::Enrollment::queryNames<FIK::MoCapTask>@<X0>(FIK *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = FIK::defaultAllocator(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  result = FIK::IKArray<std::string_view>::reserve(a2, *a1);
  if (*a1)
  {
    v6 = *(a1 + 2);
    v7 = *a2;
    v8 = *a1 << 8;
    v9 = (v6 + 8);
    do
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v9 - 1);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      result = FIK::IKArray<std::string_view>::reserve(a2, v7 + 1);
      v12 = (a2[2] + 16 * *a2);
      *v12 = v11;
      v12[1] = v10;
      v7 = *a2 + 1;
      *a2 = v7;
      v9 += 32;
      v8 -= 256;
    }

    while (v8);
  }

  return result;
}

uint64_t FIK::Enrollment::DataLogger::exportTasksFrame(uint64_t result, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 152))
  {
    return FIK::Enrollment::Exporter::appendPoseToFile(result + 24, a2, a3, a4);
  }

  return result;
}

void *FIK::Enrollment::DataLogger::setupSolveExporter(void *result, FIK *a2)
{
  if (result[92])
  {
    v2 = result;
    FIK::Enrollment::queryNames<FIK::MoCapBone>(a2, v3);
    FIK::IKArray<std::string_view>::push_back<char const(&)[4],void>(v3, "vio");
    result = FIK::Enrollment::Exporter::setupForNames((v2 + 76), v3);
    v3[0] = 0;
    if (v4)
    {
      return (*(*v5 + 24))(v5, v4, 0, 8);
    }
  }

  return result;
}

void *FIK::Enrollment::queryNames<FIK::MoCapBone>@<X0>(FIK *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = FIK::defaultAllocator(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  result = FIK::IKArray<std::string_view>::reserve(a2, *a1);
  if (*a1)
  {
    v6 = *(a1 + 2);
    v7 = *a2;
    v8 = 544 * *a1;
    v9 = (v6 + 16);
    do
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v9 - 1);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      result = FIK::IKArray<std::string_view>::reserve(a2, v7 + 1);
      v12 = (a2[2] + 16 * *a2);
      *v12 = v11;
      v12[1] = v10;
      v7 = *a2 + 1;
      *a2 = v7;
      v9 += 68;
      v8 -= 544;
    }

    while (v8);
  }

  return result;
}

size_t FIK::IKArray<std::string_view>::push_back<char const(&)[4],void>(uint64_t *a1, const char *a2)
{
  FIK::IKArray<std::string_view>::reserve(a1, *a1 + 1);
  v4 = *a1;
  v5 = (a1[2] + 16 * *a1);
  *v5 = a2;
  result = strlen(a2);
  v5[1] = result;
  *a1 = v4 + 1;
  return result;
}

FIK *FIK::Enrollment::DataLogger::exportSolvedFrame(FIK *result, float32x4_t *a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  if (*(result + 92))
  {
    v9 = result;
    v10 = FIK::defaultAllocator(result);
    FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform,void>(&v14, a3 + 1, v10);
    v11 = v15;
    if (a3)
    {
      v12 = &a2[2 * a3];
      do
      {
        *v11 = *a2;
        v11[1] = a2[1];
        a2 += 2;
        v11 += 2;
      }

      while (a2 != v12);
      v11 = v15;
    }

    v13 = &v11[2 * v14];
    v13[-2] = *a4;
    v13[-1] = a4[1];
    result = FIK::Enrollment::Exporter::appendPoseToFile(v9 + 608, v15, v14, a5);
    v14 = 0;
    if (v15)
    {
      return (*(*v16 + 24))(v16, v15, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::Enrollment::SourceAndTargetDataLogger::SourceAndTargetDataLogger(uint64_t a1, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::to_string(&v10, v5.__d_.__rep_ / 1000000.0);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v10;
  }

  else
  {
    v6 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  FIK::Enrollment::combinePath(&__p, v6, size, &__dst);
  FIK::Enrollment::createPath(&__p, a1, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return a1;
}

BOOL FIK::Enrollment::SourceAndTargetDataLogger::exportOriginalSources(uint64_t a1, const char **a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v29[21] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a1, *(a1 + 8));
  }

  else
  {
    v25 = *a1;
  }

  FIK::Enrollment::combinePath(&__p, "original_sources.csv", 0x14uLL, &v25);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v10 = FIK::Enrollment::Exporter::Exporter(&v26, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v12 = v28;
  if (v28)
  {
    v13 = FIK::defaultAllocator(v10);
    FIK::IKArray<std::string_view>::IKArray<char const* const,void>(&__p, a2, a3, v13);
    FIK::Enrollment::Exporter::setupForNames(&v26, &__p);
    __p.__r_.__value_.__r.__words[0] = 0;
    if (__p.__r_.__value_.__r.__words[2])
    {
      (*(*v24 + 24))(v24, __p.__r_.__value_.__r.__words[2], 0, 8);
    }

    FIK::Enrollment::Exporter::appendPoseToFile(&v26, a4, a5, 0);
  }

  else
  {
    v14 = *ikinemaLogObject(v10, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::SourceAndTargetDataLogger::exportOriginalSources(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v26 = *MEMORY[0x277D82810];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245D77E20](&v27);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v29);
  return v12 != 0;
}

BOOL FIK::Enrollment::SourceAndTargetDataLogger::exportToFile(uint64_t a1, const char **a2, uint64_t a3, float32x4_t *a4, uint64_t a5, const std::string::value_type *__src, size_t __len)
{
  v33[21] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a1, *(a1 + 8));
  }

  else
  {
    v29 = *a1;
  }

  FIK::Enrollment::combinePath(&__p, __src, __len, &v29);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v14 = FIK::Enrollment::Exporter::Exporter(&v30, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v16 = v32;
  if (v32)
  {
    v17 = FIK::defaultAllocator(v14);
    FIK::IKArray<std::string_view>::IKArray<char const* const,void>(&__p, a2, a3, v17);
    FIK::Enrollment::Exporter::setupForNames(&v30, &__p);
    __p.__r_.__value_.__r.__words[0] = 0;
    if (__p.__r_.__value_.__r.__words[2])
    {
      (*(*v28 + 24))(v28, __p.__r_.__value_.__r.__words[2], 0, 8);
    }

    FIK::Enrollment::Exporter::appendPoseToFile(&v30, a4, a5, 0);
  }

  else
  {
    v18 = *ikinemaLogObject(v14, v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::SourceAndTargetDataLogger::exportToFile(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  v30 = *MEMORY[0x277D82810];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x245D77E20](&v31);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v33);
  return v16 != 0;
}

BOOL FIK::Enrollment::SourceAndTargetDataLogger::exportEnrollmentData(uint64_t a1, const char **a2, uint64_t a3, _DWORD *a4)
{
  v33[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a1, *(a1 + 8));
  }

  else
  {
    v28 = *a1;
  }

  FIK::Enrollment::combinePath(&__p, "enrollment.csv", 0xEuLL, &v28);
  v33[6] = 0;
  v7 = MEMORY[0x277D82860] + 24;
  v8 = MEMORY[0x277D82860] + 64;
  v33[0] = MEMORY[0x277D82860] + 64;
  v9 = MEMORY[0x277D82810];
  v10 = *(MEMORY[0x277D82810] + 16);
  v30 = *(MEMORY[0x277D82810] + 8);
  *&v31[*(v30 - 24) - 8] = v10;
  v11 = &v31[*(v30 - 24) - 8];
  std::ios_base::init(v11, v31);
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v30 = v7;
  v33[0] = v8;
  MEMORY[0x245D77E10](v31);
  v12 = std::filebuf::open();
  if (!v12)
  {
    std::ios_base::clear(&v31[*(v30 - 24) - 8], *&v31[*(v30 - 24) + 24] | 4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v14 = v32;
  if (v32)
  {
    for (; a3; --a3)
    {
      v15 = *a2++;
      v16 = strlen(v15);
      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v30, v15, v16);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ",", 1);
      ++a4;
      v18 = std::ostream::operator<<();
      __p.__r_.__value_.__s.__data_[0] = 10;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, &__p, 1);
    }
  }

  else
  {
    v19 = *ikinemaLogObject(v12, v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::SourceAndTargetDataLogger::exportEnrollmentData(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  v30 = *v9;
  *&v31[*(v30 - 24) - 8] = v9[3];
  MEMORY[0x245D77E20](v31);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v33);
  return v14 != 0;
}

BOOL FIK::Enrollment::SourceAndTargetDataLogger::exportAtlasData(std::string *this, const FIK::Transform *a2)
{
  v30[19] = *MEMORY[0x277D85DE8];
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = *this;
  }

  FIK::Enrollment::combinePath(__p, "atlas_pose.csv", 0xEuLL, &v26);
  v30[6] = 0;
  v3 = MEMORY[0x277D82860] + 24;
  v4 = MEMORY[0x277D82860] + 64;
  v30[0] = MEMORY[0x277D82860] + 64;
  v5 = MEMORY[0x277D82810];
  v6 = *(MEMORY[0x277D82810] + 16);
  v27 = *(MEMORY[0x277D82810] + 8);
  *&v28[*(v27 - 24) - 8] = v6;
  v7 = &v28[*(v27 - 24) - 8];
  std::ios_base::init(v7, v28);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v27 = v3;
  v30[0] = v4;
  MEMORY[0x245D77E10](v28);
  v8 = std::filebuf::open();
  if (!v8)
  {
    std::ios_base::clear(&v28[*(v27 - 24) - 8], *&v28[*(v27 - 24) + 24] | 4);
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v10 = v29;
  if (v29)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "timeStamp,info#frame", 20);
    __p[0] = "Atlas";
    __p[1] = 5;
    v11 = FIK::Enrollment::operator<<(&v27, __p);
    LOBYTE(v25) = 10;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, &v25, 1);
    v25 = 0;
    v12 = FIK::Enrollment::operator<<(&v27, &v25);
    v13 = *(a2 + 1);
    *__p = *a2;
    v24 = v13;
    FIK::Enrollment::operator<<(v12, __p);
  }

  else
  {
    v14 = *ikinemaLogObject(v8, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      FIK::Enrollment::SourceAndTargetDataLogger::exportAtlasData(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v27 = *v5;
  *&v28[*(v27 - 24) - 8] = v5[3];
  MEMORY[0x245D77E20](v28);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v30);
  return v10 != 0;
}

void *FIK::Enrollment::operator<<(void *a1, __int128 *a2)
{
  v9 = *a2;
  v4 = FIK::Enrollment::operator<<(a1, &v9);
  v8 = *a2;
  v5 = FIK::Enrollment::operator<<(v4, &v8);
  v7 = *a2;
  FIK::Enrollment::operator<<(v5, &v7);
  return a1;
}

void *FIK::Enrollment::operator<<(void *a1, uint64_t *a2)
{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, *a2, a2[1]);
  v8 = 35;
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, &v8, 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, a2[2], a2[3]);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, "#translateX", 11);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "#translateY", 11);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "#translateZ", 11);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, "#rotateX", 8);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "#rotateY", 8);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "#rotateZ", 8);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, "#rotateQX", 9);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "#rotateQY", 9);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "#rotateQZ", 9);
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, *a2, a2[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "#rotateQW", 9);
  return a1;
}

void *FIK::Enrollment::operator<<(void *a1, float *a2)
{
  v6 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, &v6, 1);
  v3 = std::ostream::operator<<();
  v7 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3, &v7, 1);
  v4 = std::ostream::operator<<();
  v8 = 44;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, &v8, 1);
  std::ostream::operator<<();
  return a1;
}

void FIK::Enrollment::eulerAnglesDegreesFromQuat(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  LODWORD(v4) = HIDWORD(a1->i64[0]);
  v5 = COERCE_FLOAT(a1->i64[1]);
  v6 = -v5;
  LODWORD(v7) = HIDWORD(*a1);
  v8 = vmuls_lane_f32(v4, *a1, 3);
  v9 = -COERCE_FLOAT(*a1);
  v10 = vmuls_lane_f32(v3.f32[0], v3, 3);
  v19 = *a1;
  v11 = (v8 + (v5 * v3.f32[0])) + (v8 + (v5 * v3.f32[0]));
  v12 = 1.0;
  if (v11 <= 1.0)
  {
    v12 = v11;
  }

  if (v11 < -1.0)
  {
    v12 = -1.0;
  }

  v21 = asinf(v12);
  if (fabsf(v11) >= 0.9999)
  {
    v18 = atan2f((v10 + (v4 * v5)) + (v10 + (v4 * v5)), (((v5 * v6) + (v4 * v4)) + (v7 * v7)) + (v9 * v19.f32[0]));
    DWORD2(v17) = 0;
    *&v17 = __PAIR64__(LODWORD(v21), LODWORD(v18));
  }

  else
  {
    v13 = (v7 * v6) + (v19.f32[0] * v4);
    v14 = (((v7 * v7) + (v5 * v5)) + (v9 * v19.f32[0])) - (v4 * v4);
    v15 = (((v19.f32[0] * v19.f32[0]) - (v4 * v4)) + (v6 * v5)) + (v7 * v7);
    v20 = atan2f(-(v10 - (v4 * v5)) * -2.0, v14);
    v16 = atan2f(v13 * -2.0, v15);
    *&v17 = __PAIR64__(LODWORD(v21), LODWORD(v20));
    *(&v17 + 2) = v16;
  }

  HIDWORD(v17) = 0;
  *a2 = v17;
}

char *std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = std::string::basic_string[abi:nn200100](a3, v5 + 1);
  if (result[23] >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *FIK::Enrollment::SourceExporter::SourceExporter(void *a1, char *__s, uint64_t a3, uint64_t a4)
{
  strlen(__s);
  FIK::Enrollment::Exporter::Exporter(a1, __s);
  a1[71] = *(a4 + 8) * *(a4 + 24);
  if (a1[16])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "timeStamp,info#frame", 20);
    __p[0] = "hmd2world";
    __p[1] = 9;
    v7 = FIK::Enrollment::operator<<(a1, __p);
    v35.__r_.__value_.__r.__words[0] = "Atlas";
    v35.__r_.__value_.__l.__size_ = 5;
    FIK::Enrollment::operator<<(v7, &v35);
    v32 = *(a4 + 24);
    if (v32)
    {
      v8 = 0;
      do
      {
        v33 = v8;
        v9 = *(*(a4 + 16) + 4 * v8) - 1;
        v10 = "mcam_l";
        if (v9 <= 2)
        {
          v10 = off_278E8A130[v9];
        }

        v42 = 6;
        v11 = *v10;
        WORD2(v40) = *(v10 + 2);
        LODWORD(v40) = v11;
        BYTE6(v40) = 0;
        __p[0] = &v40;
        __p[1] = 6;
        FIK::Enrollment::operator<<(a1, __p);
        v12 = *(a4 + 8);
        if (v12)
        {
          v13 = *a4;
          v14 = 8 * v12;
          do
          {
            v34.__r_.__value_.__r.__words[0] = *v13;
            v34.__r_.__value_.__l.__size_ = strlen(v34.__r_.__value_.__l.__data_);
            v15 = FIK::Enrollment::operator<<(a1, &v34);
            __p[0] = *v13;
            __p[1] = strlen(__p[0]);
            v38 = "confidence";
            v39 = 10;
            v16 = FIK::Enrollment::operator<<(v15, __p);
            v35.__r_.__value_.__r.__words[0] = *v13;
            v35.__r_.__value_.__l.__size_ = strlen(v35.__r_.__value_.__l.__data_);
            v35.__r_.__value_.__r.__words[2] = "valid";
            v36 = 5;
            FIK::Enrollment::operator<<(v16, &v35);
            if (v42 >= 0)
            {
              v17 = v42;
            }

            else
            {
              v17 = v41;
            }

            std::string::basic_string[abi:nn200100](&v35, v17 + 5);
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = &v35;
            }

            else
            {
              v18 = v35.__r_.__value_.__r.__words[0];
            }

            if (v17)
            {
              if (v42 >= 0)
              {
                v19 = &v40;
              }

              else
              {
                v19 = v40;
              }

              memmove(v18, v19, v17);
            }

            strcpy(v18 + v17, "_ray_");
            v20 = std::string::append(&v35, *v13);
            v21 = v20->__r_.__value_.__r.__words[2];
            *__p = *&v20->__r_.__value_.__l.__data_;
            v38 = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            v22 = HIBYTE(v38);
            v23 = __p;
            if (SHIBYTE(v38) < 0)
            {
              v23 = __p[0];
              v22 = __p[1];
            }

            v35.__r_.__value_.__r.__words[0] = v23;
            v35.__r_.__value_.__l.__size_ = v22;
            FIK::Enrollment::operator<<(a1, &v35);
            if (v42 >= 0)
            {
              v24 = v42;
            }

            else
            {
              v24 = v41;
            }

            std::string::basic_string[abi:nn200100](&v34, v24 + 8);
            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v34;
            }

            else
            {
              v25 = v34.__r_.__value_.__r.__words[0];
            }

            if (v24)
            {
              if (v42 >= 0)
              {
                v26 = &v40;
              }

              else
              {
                v26 = v40;
              }

              memmove(v25, v26, v24);
            }

            strcpy(v25 + v24, "_rayEnd_");
            v27 = std::string::append(&v34, *v13);
            v28 = v27->__r_.__value_.__r.__words[2];
            *&v35.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
            v35.__r_.__value_.__r.__words[2] = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v35;
            }

            else
            {
              v30 = v35.__r_.__value_.__r.__words[0];
            }

            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v35.__r_.__value_.__l.__size_;
            }

            v34.__r_.__value_.__r.__words[0] = v30;
            v34.__r_.__value_.__l.__size_ = size;
            FIK::Enrollment::operator<<(a1, &v34);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v38) < 0)
            {
              operator delete(__p[0]);
            }

            ++v13;
            v14 -= 8;
          }

          while (v14);
        }

        if (v42 < 0)
        {
          operator delete(v40);
        }

        v8 = v33 + 1;
      }

      while (v33 + 1 != v32);
    }
  }

  return a1;
}

uint64_t *FIK::IKArray<BOOL>::IKArray(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *a1 = *a2;
  a1[1] = v5;
  if (v5)
  {
    v7 = (*(*v6 + 16))(v6, v5, 1);
    a1[2] = v7;
    a1[3] = v6;
    bzero(v7, v5);
    v4 = *a2;
    v8 = a1[2];
    if (!*a2)
    {
      return a1;
    }
  }

  else
  {
    v8 = 0;
    a1[2] = 0;
    a1[3] = v6;
    if (!v4)
    {
      return a1;
    }
  }

  v9 = a2[2];
  do
  {
    v10 = *v9++;
    *v8++ = v10;
    --v4;
  }

  while (v4);
  return a1;
}

void *FIK::IKArray<FIK::Enrollment::LiftedSource>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Enrollment::LiftedSource>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      v9 = *v8;
      *(v7 + 8) = *(v8 + 8);
      *v7 = v9;
      v7 += 12;
      v8 += 12;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::LiftedSource>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 12 * a2;
    v6 = (*(*a3 + 16))(a3, 12 * a2, 4);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::RaySource>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<IKString>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      v9 = *v8;
      *(v7 + 16) = *(v8 + 16);
      *v7 = v9;
      v7 += 24;
      v8 += 24;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      *v7 = *v8;
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 32) = *(v8 + 32);
      v8 += 48;
      v7 += 48;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::Enrollment::VirtualSourceHierarchy::VirtualSourceDescriptor>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 48 * a2;
    v6 = (*(*a3 + 16))(a3, 48 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void FIK::Enrollment::DataPreprocessor::~DataPreprocessor(FIK::Enrollment::DataPreprocessor *this)
{
  std::__optional_destruct_base<FIK::Enrollment::VirtualSourceController,false>::~__optional_destruct_base[abi:nn200100](this + 176);
  *(this + 18) = 0;
  v2 = *(this + 20);
  if (v2)
  {
    (*(**(this + 21) + 24))(*(this + 21), v2, 0, 8);
  }

  *(this + 14) = 0;
  v3 = *(this + 16);
  if (v3)
  {
    (*(**(this + 17) + 24))(*(this + 17), v3, 0, 8);
  }

  *(this + 10) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    (*(**(this + 13) + 24))(*(this + 13), v4, 0, 8);
  }

  *(this + 6) = 0;
  v5 = *(this + 8);
  if (v5)
  {
    (*(**(this + 9) + 24))(*(this + 9), v5, 0, 8);
  }

  *(this + 2) = 0;
  v6 = *(this + 4);
  if (v6)
  {
    (*(**(this + 5) + 24))(*(this + 5), v6, 0, 8);
  }
}

uint64_t std::__optional_destruct_base<FIK::Enrollment::VirtualSourceController,false>::~__optional_destruct_base[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    *(a1 + 112) = 0;
    v2 = *(a1 + 128);
    if (v2)
    {
      (*(**(a1 + 136) + 24))(*(a1 + 136), v2, 0, 8);
    }
  }

  return a1;
}

void *FIK::IKArray<std::string_view>::IKArray<char const* const,void>(void *a1, const char **a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  FIK::IKArray<std::string_view>::MemoryBlock::MemoryBlock(a1 + 1, (a3 + 7) & 0xFFFFFFFFFFFFFFF8, a4);
  if (a3)
  {
    v7 = a1[2];
    v8 = 8 * a3;
    do
    {
      v9 = *a2++;
      *v7 = v9;
      v7[1] = strlen(v9);
      v7 += 2;
      v8 -= 8;
    }

    while (v8);
  }

  return a1;
}

uint64_t FIK::FilterNode::FilteringTask::FilteringTask(uint64_t a1, IKString *a2, uint64_t a3, float32x4_t *a4, float a5)
{
  IKString::operator+(a2, "_Task", 5, &v31);
  *a1 = &unk_28589BD98;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  IKString::IKString((a1 + 24), &v31, v33);
  if (v32)
  {
    (*(*v33 + 24))(v33, v31, 0, 8);
    v31 = 0;
    v32 = 0;
  }

  *a1 = &unk_28589C090;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_245A01E80;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  v9 = *(a1 + 8) + *(**(a1 + 8) - 264);
  v10 = (*(*v9 + 200))(v9);
  v11 = (*(*v10 + 776))() * 0.3;
  if (v11 <= 1.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  if (v11 >= 0.3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.3;
  }

  *(a1 + 144) = v13;
  *(a1 + 128) = vmulq_n_f32(*a4, v13);
  v30 = *(*(*v10 + 544))(v10);
  v14 = (*(*v10 + 528))(v10);
  v15 = *(a1 + 128);
  v16 = vextq_s8(vuzp1q_s32(*v14, *v14), *v14, 0xCuLL);
  v17 = vnegq_f32(*v14);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v17), v15, v16);
  v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v17), v19, v16);
  v21.i64[0] = 0x4000000040000000;
  v21.i64[1] = 0x4000000040000000;
  v22 = vaddq_f32(v30, vmlaq_f32(v15, v21, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v19, *v14, 3)));
  v23 = 0.999;
  if ((1.0 - a5) <= 0.999)
  {
    v23 = 1.0 - a5;
  }

  v24 = 0.0;
  if ((1.0 - a5) >= 0.0)
  {
    v24 = v23;
  }

  *(a1 + 80) = v22;
  *(a1 + 96) = v22;
  *(a1 + 112) = v24;
  *(a1 + 116) = (v24 * 0.016667) / (1.0 - v24);
  *(a1 + 120) = v24;
  *(a1 + 124) = 1114636288;
  v25 = *(a1 + 8) + *(**(a1 + 8) - 264);
  (*(*v25 + 72))(v25, 1.0);
  v26.n128_u32[0] = *(a1 + 128);
  v27.n128_u32[0] = *(a1 + 132);
  v28.n128_u32[0] = *(a1 + 136);
  (*(**(a1 + 8) + 272))(v26, v27, v28);
  return a1;
}

float32x4_t *FIK::FilterNode::FilteringTask::setTarget(float32x4_t *result, float32x4_t *a2)
{
  if (result->i64[1])
  {
    v2 = a2[1];
    v3 = result[8];
    v4 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
    v5 = vnegq_f32(v2);
    v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), v5), v3, v4);
    v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
    v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v5), v7, v4);
    v9 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v7, v2, 3);
    v2.i64[0] = 0x4000000040000000;
    v2.i64[1] = 0x4000000040000000;
    v10 = vaddq_f32(*a2, vmlaq_f32(v3, v2, v9));
    return (*(result->i64[0] + 8))(result, &v10);
  }

  return result;
}

uint64_t FIK::FilterNode::FilteringTask::setPositionTarget(float32x4_t *a1, float32x4_t *a2)
{
  result = a1->i64[1];
  if (result)
  {
    v4 = a1[7].f32[0];
    v5 = a1[7].f32[1];
    v6 = vaddq_f32(vmulq_n_f32(*a2, v4), vmulq_n_f32(a1[5], 1.0 - v4));
    v7 = vaddq_f32(vmulq_n_f32(a1[6], 1.0 - v4), vmulq_n_f32(v6, v4));
    a1[5] = v6;
    a1[6] = v7;
    v8 = vsubq_f32(vmulq_n_f32(v6, v5 + 2.0), vmulq_n_f32(v7, v5 + 1.0));
    return (*(*result + 248))(result, &v8);
  }

  return result;
}

__n128 FIK::FilterNode::FilteringTask::setOffset(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *a2;
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

uint64_t FIK::FilterNode::Solve(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 16))(a1);
  FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(v16, a1[46], a1[44], a2);
  if (FIK::IKSolver::numSegments((a1 + 2)))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      GlobalTransform = FIK::PoseConverter::GetGlobalTransform(v16, v6);
      v9 = GlobalTransform[1];
      v15[0] = *GlobalTransform;
      v15[1] = v9;
      v10 = 3;
      v11 = v5;
      do
      {
        v12 = (a1[62] + 160 * v11);
        (**v12)(v12, v15);
        ++v11;
        --v10;
      }

      while (v10);
      v5 += 3;
      v6 = ++v7;
    }

    while (FIK::IKSolver::numSegments((a1 + 2)) > v7);
  }

  updated = FIK::AnimNode::SolveAndUpdatePose(a1, a2);
  FIK::PoseConverter::~PoseConverter(v16);
  return updated;
}

float FIK::FilterNode::SetFilterAlpha(FIK::FilterNode *this, float result)
{
  *(this + 118) = result;
  v2 = *(this + 60);
  if (v2)
  {
    v3 = 0.99;
    if (result <= 0.99)
    {
      v3 = result;
    }

    v4 = result < 0.0;
    result = 0.0;
    if (!v4)
    {
      result = v3;
    }

    v5 = (*(this + 62) + 124);
    v6 = 160 * v2;
    do
    {
      v7 = (result * (1.0 / *v5)) / (1.0 - result);
      *(v5 - 3) = result;
      *(v5 - 2) = v7;
      *(v5 - 1) = result;
      v5 += 40;
      v6 -= 160;
    }

    while (v6);
  }

  return result;
}

uint64_t FIK::FilterNode::FilterNode(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = FIK::AnimNode::AnimNode(a1, a2);
  *v3 = &unk_28589C0C8;
  *(v3 + 118) = 0;
  v4 = FIK::defaultAllocator(v3);
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = v4;
  if (FIK::IKSolver::numSegments((a1 + 16)))
  {
    LODWORD(v5) = 0;
    do
    {
      Segment = FIK::IKSolver::getSegment((a1 + 16), v5);
      v7 = (*(*Segment + 936))(Segment);
      v8 = &FIK::FilterNode::FilterNode(FIK::MoCapRig const&)::markerlocalPositions;
      v9 = 48;
      do
      {
        v10 = FIK::IKSolver::addPositionTask((a1 + 16), Segment);
        v11 = FIK::defaultAllocator(v10);
        v14 = 0;
        v15 = 0;
        v16 = v11;
        v12 = strlen(v7);
        IKString::assign(&v14, v7, v12);
        FIK::FilterNode::FilteringTask::FilteringTask(v17, &v14, v10, v8, *(a1 + 472));
        if (v15)
        {
          (*(*v16 + 3))(v16, v14, 0, 8);
        }

        FIK::IKArray<FIK::FilterNode::FilteringTask>::push_back<FIK::FilterNode::FilteringTask&,void>((a1 + 480), v17);
        FIK::FeetSliding::SlidingTask::~SlidingTask(v17);
        ++v8;
        v9 -= 16;
      }

      while (v9);
      v5 = (v5 + 1);
    }

    while (FIK::IKSolver::numSegments((a1 + 16)) > v5);
  }

  return a1;
}

float FIK::IKArray<FIK::FilterNode::FilteringTask>::push_back<FIK::FilterNode::FilteringTask&,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<FIK::FilterNode::FilteringTask>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 160 * *a1;
  *v4 = &unk_28589BD98;
  *(v4 + 8) = *(a2 + 8);
  IKString::IKString((v4 + 24), (a2 + 24));
  *v4 = &unk_28589C090;
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 128) = *(a2 + 128);
  result = *(a2 + 144);
  *(v4 + 144) = result;
  ++*a1;
  return result;
}

unint64_t FIK::FilterNode::constraintByIndex(FIK::FilterNode *this, unint64_t a2)
{
  if (*(this + 60) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 62) + 160 * a2;
  }
}

void FIK::FilterNode::~FilterNode(FIK::FilterNode *this)
{
  *this = &unk_28589C0C8;
  FIK::IKArray<FIK::FilterNode::FilteringTask>::~IKArray(this + 60);

  FIK::AnimNode::~AnimNode(this);
}

{
  *this = &unk_28589C0C8;
  FIK::IKArray<FIK::FilterNode::FilteringTask>::~IKArray(this + 60);
  FIK::AnimNode::~AnimNode(this);

  FIK::AnimNode::operator delete(v2);
}

uint64_t *FIK::IKArray<FIK::FilterNode::FilteringTask>::~IKArray(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    do
    {
      FIK::FeetSliding::SlidingTask::~SlidingTask(v3);
      v3 = (v4 + 160);
      --v2;
    }

    while (v2);
  }

  *a1 = 0;
  v5 = a1[2];
  if (v5)
  {
    (*(*a1[3] + 24))(a1[3], v5, 0, 8);
  }

  return a1;
}

void FIK::IKArray<FIK::FilterNode::FilteringTask>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a1[1] < a2)
  {
    v3 = a1[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(a1[3], 160 * v4, 16);
      v6 = v5;
      if (160 * v4)
      {
        bzero(v5, 160 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2];
    v8 = *a1;
    if (*a1)
    {
      v9 = 0;
      do
      {
        v10 = v6 + v9;
        *v10 = &unk_28589BD98;
        *(v10 + 8) = *(v7 + v9 + 8);
        IKString::IKString((v6 + v9 + 24), (v7 + v9 + 24));
        *v10 = &unk_28589C090;
        *(v10 + 48) = *(v7 + v9 + 48);
        *(v10 + 64) = *(v7 + v9 + 64);
        *(v10 + 80) = *(v7 + v9 + 80);
        *(v10 + 96) = *(v7 + v9 + 96);
        *(v10 + 112) = *(v7 + v9 + 112);
        *(v10 + 128) = *(v7 + v9 + 128);
        *(v10 + 144) = *(v7 + v9 + 144);
        v9 += 160;
        --v8;
      }

      while (v8);
      v7 = a1[2];
      v11 = *a1;
    }

    else
    {
      v11 = 0;
    }

    v12 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (v11)
    {
      v13 = v7;
      do
      {
        FIK::FeetSliding::SlidingTask::~SlidingTask(v13);
        v13 = (v14 + 160);
        --v11;
      }

      while (v11);
    }

    if (v7)
    {
      v15 = *(*v12 + 24);

      v15(v12, v7, 0, 8);
    }
  }
}

void FIK::RetargetingNode::createTasks(FIK::RetargetingNode *this)
{
  FIK::IKArray<FIK::RetargetingNode::RetargetTask>::reserve(this + 215, *(this + 40));
  v2 = *(this + 40);
  if (v2)
  {
    v3 = *(this + 42);
    v4 = v2 << 8;
    do
    {
      if (v3[52] == 1)
      {
        v5 = FIK::IKSolver::addPositionTask(this + 2, (v3 + 24));
      }

      else
      {
        v5 = 0;
      }

      if (v3[53] == 1)
      {
        v6 = FIK::IKSolver::addOrientationTask(this + 2, (v3 + 24));
      }

      else
      {
        v6 = 0;
      }

      FIK::RetargetingNode::RetargetTask::RetargetTask(v9, v5, v6, v3);
      v8 = FIK::IKArray<FIK::RetargetingNode::RetargetTask>::push_back<FIK::RetargetingNode::RetargetTask,void>(this + 215, v9);
      v9[0] = &unk_28589BD98;
      if (v9[4])
      {
        (*(*v10 + 24))(v10, v9[3], 0, 8, v8);
      }

      FIK::AnimNode::updateConstraintSettings(*(this + 217) + 112 * *(this + 215) - 112, v3, v7);
      v3 += 256;
      v4 -= 256;
    }

    while (v4);
  }
}

void FIK::IKArray<FIK::RetargetingNode::RetargetTask>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a1[1] < a2)
  {
    v3 = a1[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(a1[3], 112 * v4, 16);
      v6 = v5;
      if (112 * v4)
      {
        bzero(v5, 112 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2];
    v8 = *a1;
    if (*a1)
    {
      v9 = (v6 + 24);
      v10 = (v7 + 48);
      v11 = v6;
      do
      {
        *(v9 - 3) = &unk_28589BD98;
        *(v9 - 1) = *(v10 - 5);
        v12 = IKString::IKString(v9, v10 - 3, *(v10 - 1));
        *(v12 - 3) = &unk_28589C1B8;
        *(v12 + 3) = *v10;
        *(v12 + 5) = *(v10 + 1);
        *(v12 + 7) = *(v10 + 2);
        *(v12 + 9) = *(v10 + 3);
        v9 = v12 + 14;
        v11 += 112;
        v10 += 14;
        --v8;
      }

      while (v8);
      v7 = a1[2];
      v13 = *a1;
    }

    else
    {
      v13 = 0;
    }

    v14 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (v13)
    {
      v15 = v7;
      do
      {
        std::__destroy_at[abi:nn200100]<FIK::RetargetingNode::RetargetTask,0>(v15);
        v15 += 112;
        --v13;
      }

      while (v13);
    }

    if (v7)
    {
      v16 = *(*v14 + 24);

      v16(v14, v7, 0, 8);
    }
  }
}

__n128 FIK::IKArray<FIK::RetargetingNode::RetargetTask>::push_back<FIK::RetargetingNode::RetargetTask,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<FIK::RetargetingNode::RetargetTask>::reserve(a1, *a1 + 1);
  v4 = a1[2] + 112 * *a1;
  *v4 = &unk_28589BD98;
  *(v4 + 8) = *(a2 + 8);
  IKString::IKString((v4 + 24), (a2 + 24), *(a2 + 40));
  *v4 = &unk_28589C1B8;
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  result = *(a2 + 96);
  *(v4 + 96) = result;
  ++*a1;
  return result;
}

uint64_t FIK::RetargetingNode::createAlgorithmBlocks(FIK::RetargetingNode *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v14 = FIK::defaultAllocator(this);
  IKString::assign(&v12, "sources", 7);
  v2 = FIK::AnimNode::registerBuffer<FIK::Transform>(this, &v12, *(this + 48));
  *(this + 208) = v2;
  if (v13)
  {
    v2 = (*(*v14 + 3))(v14, v12, 0, 8);
  }

  v3 = FIK::defaultAllocator(v2);
  v12 = 0;
  v13 = 0;
  v14 = v3;
  IKString::assign(&v12, "output", 6);
  v4 = FIK::AnimNode::registerBuffer<FIK::Transform>(this, &v12, *(this + 44));
  *(this + 210) = v4;
  if (v13)
  {
    v4 = (*(*v14 + 3))(v14, v12, 0, 8);
  }

  v5 = FIK::defaultAllocator(v4);
  v12 = 0;
  v13 = 0;
  v14 = v5;
  IKString::assign(&v12, "targets", 7);
  *(this + 209) = FIK::AnimNode::registerBuffer<FIK::Transform>(this, &v12, *(this + 40));
  if (v13)
  {
    (*(*v14 + 3))(v14, v12, 0, 8);
  }

  *(this + 213) = FIK::AnimNode::appendAlgorithm<ikinema::GenerateMocapConstraintTargetsAlgorithm,FIK::MoCapRig &,ikinema::BufferKey &,ikinema::BufferKey &>(this, this + 144, this + 208, this + 209);
  if (*(this + 448) == 1)
  {
    v6 = *(this + 40);
    if (v6)
    {
      v7 = v6 << 8;
      v8 = (*(this + 42) + 160);
      while (*v8 == 0.0)
      {
        v8 += 64;
        v7 -= 256;
        if (!v7)
        {
          goto LABEL_14;
        }
      }

      LODWORD(v12) = 100;
      FIK::AnimNode::appendAlgorithm<ikinema::TaskFilterAlgorithm,FIK::MoCapRig &,int,ikinema::BufferKey &>(this, this + 144, &v12, this + 209);
    }
  }

LABEL_14:
  v16 = *(this + 104);
  makeKeyArray(&v16, 2uLL, &v12);
  *(this + 211) = FIK::AnimNode::appendAlgorithm<ikinema::ScalePipeDataAlgorithm,char const(&)[17],float &,FIK::IKArray<ikinema::BufferKey>>(this, "applySourceScale", this + 113, &v12);
  v12 = 0;
  if (v14)
  {
    (*(*v15 + 24))(v15, v14, 0, 8);
  }

  *(this + 214) = FIK::AnimNode::appendAlgorithm<ikinema::SetMocapTargetAlgorithm,FIK::MoCapRig &,ikinema::BufferKey &,ikinema::BufferKey &>(this, this + 144, this + 208, this + 209);
  *(this + 58) = FIK::AnimNode::appendAlgorithm<ikinema::DoSolveAlgorithm,FIK::IKSolver &,unsigned int &,ikinema::BufferKey &>(this, this + 16, this + 2, this + 210);
  v11 = 1065353216;
  *&v16 = *(this + 210);
  makeKeyArray(&v16, 1uLL, &v12);
  *(this + 212) = FIK::AnimNode::appendAlgorithm<ikinema::ScalePipeDataAlgorithm,char const(&)[17],float &,FIK::IKArray<ikinema::BufferKey>>(this, "applyOutputScale", &v11, &v12);
  v12 = 0;
  if (v14)
  {
    (*(*v15 + 24))(v15, v14, 0, 8);
  }

  result = FIK::AnimNode::validateAlgorithms(this);
  if ((result & 1) == 0)
  {
    return FIK::RetargetingNode::createAlgorithmBlocks(result, v10);
  }

  return result;
}

uint64_t FIK::AnimNode::registerBuffer<FIK::Transform>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v4 = *a2;
  }

  else
  {
    v4 = &unk_245A04BAE;
  }

  ikinema::BufferDescriptor::create<FIK::Transform>(v4, *(a2 + 8), a3, v7);
  ikinema::BufferContainer::createBuffer((a1 + 104), v7);
  v5 = v9;
  if (v7[1])
  {
    (*(*v8 + 24))(v8, v7[0], 0, 8);
  }

  return v5;
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::GenerateMocapConstraintTargetsAlgorithm,FIK::MoCapRig &,ikinema::BufferKey &,ikinema::BufferKey &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4))(void)
{
  ikinema::GenerateMocapConstraintTargetsAlgorithm::create(a2, *a3, *a4, &v11);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v11;
  v11 = 0;
  *(v5 + 8 * v6) = v7;
  v8 = v6 + 1;
  *(a1 + 72) = v8;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    FIK::FIKFree(v11, v9);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
  }

  return ikinema::AlgorithmBlock::as<ikinema::GenerateMocapConstraintTargetsAlgorithm>(*(v5 + 8 * v8 - 8));
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::TaskFilterAlgorithm,FIK::MoCapRig &,int,ikinema::BufferKey &>(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4))(void)
{
  ikinema::TaskFilterAlgorithm::create(a2, *a3, *a4, &v11);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v11;
  v11 = 0;
  *(v5 + 8 * v6) = v7;
  v8 = v6 + 1;
  *(a1 + 72) = v8;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    FIK::FIKFree(v11, v9);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
  }

  return ikinema::AlgorithmBlock::as<ikinema::TaskFilterAlgorithm>(*(v5 + 8 * v8 - 8));
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::ScalePipeDataAlgorithm,char const(&)[17],float &,FIK::IKArray<ikinema::BufferKey>>(uint64_t a1, char *__s, float *a3, uint64_t a4))(void)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a4;
  v11 = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v17 = v10;
  v18 = v11;
  ikinema::ScalePipeDataAlgorithm::create(__s, v8, v9, &v17, &v19);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v12 = *(a1 + 88);
  v13 = *(a1 + 72);
  v14 = v19;
  v19 = 0;
  *(v12 + 8 * v13) = v14;
  *(a1 + 72) = v13 + 1;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    FIK::FIKFree(v19, v15);
  }

  *&v17 = 0;
  if (v18)
  {
    (*(**(&v18 + 1) + 24))(*(&v18 + 1), v18, 0, 8);
  }

  return ikinema::AlgorithmBlock::as<ikinema::ScalePipeDataAlgorithm>(*(*(a1 + 88) + 8 * *(a1 + 72) - 8));
}

void *makeKeyArray@<X0>(FIK *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1;
  v6 = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = v6;
  result = FIK::IKArray<FIK::Segment *>::reserve(a3, a2);
  if (a2)
  {
    v8 = *a3;
    v9 = 8 * a2;
    do
    {
      result = FIK::IKArray<FIK::Segment *>::reserve(a3, v8 + 1);
      v10 = *v4;
      v4 = (v4 + 8);
      *(a3[2] + 8 * *a3) = v10;
      v8 = *a3 + 1;
      *a3 = v8;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::SetMocapTargetAlgorithm,FIK::MoCapRig &,ikinema::BufferKey &,ikinema::BufferKey &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4))(void)
{
  ikinema::SetMocapTargetAlgorithm::create(a2, *a3, *a4, &v11);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v11;
  v11 = 0;
  *(v5 + 8 * v6) = v7;
  v8 = v6 + 1;
  *(a1 + 72) = v8;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    FIK::FIKFree(v11, v9);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
  }

  return ikinema::AlgorithmBlock::as<ikinema::SetMocapTargetAlgorithm>(*(v5 + 8 * v8 - 8));
}

uint64_t (***FIK::AnimNode::appendAlgorithm<ikinema::DoSolveAlgorithm,FIK::IKSolver &,unsigned int &,ikinema::BufferKey &>(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4))(void)
{
  ikinema::DoSolveAlgorithm::create(a2, *a3, *a4, &v11);
  FIK::IKArray<ikinema::AlgorithmHandle>::reserve((a1 + 72), *(a1 + 72) + 1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v11;
  v11 = 0;
  *(v5 + 8 * v6) = v7;
  v8 = v6 + 1;
  *(a1 + 72) = v8;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    FIK::FIKFree(v11, v9);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
  }

  return ikinema::AlgorithmBlock::as<ikinema::DoSolveAlgorithm>(*(v5 + 8 * v8 - 8));
}

uint64_t FIK::RetargetingNode::RetargetingNode(uint64_t a1, uint64_t a2)
{
  v3 = FIK::AnimNode::AnimNode(a1, a2);
  *v3 = &unk_28589C158;
  *(v3 + 472) = 0;
  *(v3 + 1056) = 0;
  *(v3 + 1064) = 0;
  *(v3 + 1648) = 0;
  *(v3 + 1656) = 0;
  *(v3 + 1664) = -1;
  *(v3 + 1672) = -1;
  *(v3 + 1680) = -1;
  v4 = FIK::defaultAllocator(v3);
  *(a1 + 1720) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1744) = v4;
  *(a1 + 1752) = 0;
  *(a1 + 1784) = 0;
  FIK::RetargetingNode::createTasks(a1);
  FIK::RetargetingNode::createAlgorithmBlocks(a1);
  return a1;
}

uint64_t FIK::RetargetingNode::setupPoseConverter(FIK::RetargetingNode *this)
{
  memset(v7, 0, sizeof(v7));
  v8 = FIK::defaultAllocator(this);
  memset(v6, 0, 24);
  v6[3] = FIK::defaultAllocator(v8);
  FIK::IKRigUtils::getRigBoneNames<FIK::MoCapRig>(this + 144, v7, v6);
  FIK::FKConverter::FKConverter(&v3, v7, v7, v6);
  std::optional<FIK::FKConverter>::operator=[abi:nn200100]<FIK::FKConverter,void>(this + 1752, &v3);
  *&v3 = 0;
  if (v4)
  {
    (*(*v5 + 24))(v5, v4, 0, 8);
  }

  FIK::IKArray<IKString>::~IKArray(v6);
  return FIK::IKArray<IKString>::~IKArray(v7);
}

void FIK::IKRigUtils::getRigBoneNames<FIK::MoCapRig>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    v6 = *(a1 + 224) + 32;
    v7 = 544 * v3;
    do
    {
      FIK::IKArray<IKString>::push_back<IKString&,void>(a2, v6 - 24);
      FIK::IKArray<IKString>::push_back<IKString&,void>(a3, v6);
      v6 += 544;
      v7 -= 544;
    }

    while (v7);
  }
}

uint64_t std::optional<FIK::FKConverter>::operator=[abi:nn200100]<FIK::FKConverter,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 32) == 1)
  {
    FIK::IKArray<unsigned int>::operator=(a1, a2);
  }

  else
  {
    v3 = *a2;
    *a2 = 0;
    *a1 = v3;
    v4 = *(a2 + 1);
    v5 = a2[1];
    *(a2 + 1) = 0;
    *(a1 + 8) = v4;
    *(a2 + 2) = 0;
    *(a1 + 16) = v5;
    *(a1 + 32) = 1;
  }

  return a1;
}

unint64_t FIK::RetargetingNode::PassFKPose(uint64_t a1, uint64_t a2)
{
  result = FIK::IKSolver::numSegments((a1 + 16));
  if (result)
  {
    v5 = 0;
    for (i = 0; i < result; v5 = ++i)
    {
      v7 = *(a1 + 368) + 544 * v5;
      v8 = *(v7 + 280);
      if ((v8 & 0x80000000) == 0)
      {
        v9 = *(a2 + 32 * v8 + 16);
        v10 = *(v7 + 336);
        v11 = vnegq_f32(v9);
        v12 = vtrn2q_s32(v9, vtrn1q_s32(v9, v11));
        v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v9, v11, 8uLL), *v10.f32, 1), vextq_s8(v12, v12, 8uLL), v10.f32[0]);
        v14 = vrev64q_s32(v9);
        v14.i32[0] = v11.i32[1];
        v14.i32[3] = v11.i32[2];
        v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v9, v10, 3), v14, v10, 2), v13);
        v16 = *(v7 + 304);
        v17 = vnegq_f32(v16);
        v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
        v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *v15.f32, 1), vextq_s8(v18, v18, 8uLL), v15.f32[0]);
        v20 = vrev64q_s32(v16);
        v20.i32[0] = v17.i32[1];
        v20.i32[3] = v17.i32[2];
        v22 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v15, 3), v20, v15, 2), v19);
        Segment = FIK::IKSolver::getSegment((a1 + 16), i);
        (*(*Segment + 200))(Segment, &v22);
      }

      result = FIK::IKSolver::numSegments((a1 + 16));
    }
  }

  return result;
}

uint64_t FIK::RetargetingNode::Solve(uint64_t a1, uint64_t a2)
{
  v2 = ikinemaLogObject(a1, a2);
  ikinemaAssertHandler(*v2, 0, "Solve", "(false) Inout pose solve not supported by retargeting node");
  return 2;
}

uint64_t FIK::RetargetingNode::solveInternal(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4)
{
  v6 = a2;
  if ((*(a1 + 64) & 1) == 0)
  {
    FIK::RetargetingNode::solveInternal(a1, a2);
  }

  v8 = ikinema::BufferContainer::buffer((a1 + 104), *(a1 + 1664));
  v10 = ikinema::Buffer::arrayView<FIK::Transform>(v8, v9);
  if (a3)
  {
    v11 = &v6[2 * a3];
    do
    {
      *v10 = *v6;
      v10[1] = v6[1];
      v6 += 2;
      v10 += 2;
    }

    while (v6 != v11);
  }

  v21[0] = a1;
  v21[1] = a1;
  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 88);
    v14 = 8 * v12;
    while (!(*(**v13 + 24))(*v13, v21, a1 + 104))
    {
      ++v13;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_10;
      }
    }

    return 2;
  }

  else
  {
LABEL_10:
    v15 = ikinema::BufferContainer::buffer((a1 + 104), *(a1 + 1680));
    v17 = ikinema::Buffer::arrayView<FIK::Transform>(v15, v16);
    if (v18)
    {
      v19 = &v17[2 * v18];
      do
      {
        *a4 = *v17;
        a4[1] = v17[1];
        v17 += 2;
        a4 += 2;
      }

      while (v17 != v19);
    }

    return *(*(a1 + 464) + 8);
  }
}

uint64_t FIK::RetargetingNode::Solve(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  *(*(a1 + 1704) + 48) = 1;
  v6 = *(a1 + 1712);
  *(v6 + 48) = 1;
  *(v6 + 16) = *a6;
  *(v6 + 32) = a6[1];
  return FIK::RetargetingNode::solveInternal(a1, a2, a3, a4);
}

uint64_t FIK::RetargetingNode::SolveModel(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  *(*(a1 + 1704) + 48) = 0;
  v6 = *(a1 + 1712);
  *(v6 + 48) = 0;
  *(v6 + 16) = *a6;
  *(v6 + 32) = a6[1];
  return FIK::RetargetingNode::solveInternal(a1, a2, a3, a4);
}

void *FIK::RetargetingNode::GetModelSpacePose(FIK::RetargetingNode *this, uint64_t a2)
{
  if ((*(this + 1784) & 1) == 0)
  {
    FIK::RetargetingNode::setupPoseConverter(this);
  }

  v4 = ikinema::BufferContainer::buffer(this + 13, *(this + 210));
  v7 = ikinema::Buffer::arrayView<FIK::Transform>(v4, v5);

  return FIK::FKConverter::convertToGlobal(this + 219, v7, v6, a2);
}

__n128 FIK::RetargetingNode::GetTaskPosDebug(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == *(a1 + 1720) && a3 != 0)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(a1 + 1736) + 112 * v4;
      v7 = a2 + 32 * v4;
      *v7 = *(v6 + 80);
      result = *(v6 + 96);
      *(v7 + 16) = result;
      v4 = v5;
    }

    while (*(a1 + 1720) > v5++);
  }

  return result;
}

uint64_t FIK::RetargetingNode::RetargetTask::RetargetTask(uint64_t a1, uint64_t a2, uint64_t a3, IKString *a4)
{
  IKString::IKString(v9, a4);
  *a1 = &unk_28589BD98;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  IKString::IKString((a1 + 24), v9, v10);
  if (v9[1])
  {
    (*(*v10 + 24))(v10, v9[0], 0, 8);
  }

  *a1 = &unk_28589C1B8;
  *(a1 + 48) = *(a4 + 13);
  *(a1 + 64) = *(a4 + 14);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = xmmword_245A01E80;
  return a1;
}

uint64_t FIK::RetargetingNode::RetargetTask::setTarget(uint64_t a1, _OWORD *a2)
{
  *(a1 + 80) = *a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 248))(v4, a2);
  }

  *(a1 + 96) = a2[1];
  result = *(a1 + 16);
  if (result)
  {
    v6 = *(*result + 248);

    return v6();
  }

  return result;
}

uint64_t FIK::RetargetingNode::RetargetTask::setPositionTarget(uint64_t a1, _OWORD *a2)
{
  *(a1 + 80) = *a2;
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t FIK::RetargetingNode::RetargetTask::setOrientationTarget(uint64_t a1, _OWORD *a2)
{
  *(a1 + 96) = *a2;
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

__n128 FIK::RetargetingNode::RetargetTask::setOffset(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *a2;
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

uint64_t FIK::RetargetingNode::adjustTaskOffset(void *a1, unint64_t a2, _OWORD *a3)
{
  if (a2 == -1 || a1[40] <= a2)
  {
    FIK::RetargetingNode::adjustTaskOffset(a1, a2);
  }

  v6 = a1[42] + (a2 << 8);
  *(v6 + 208) = *a3;
  *(v6 + 224) = a3[1];
  v7 = *(*(*(*a1 + 48))(a1, a2) + 24);

  return v7();
}

unint64_t FIK::RetargetingNode::constraintByIndex(FIK::RetargetingNode *this, unint64_t a2)
{
  if (*(this + 215) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 217) + 112 * a2;
  }
}

uint64_t FIK::RetargetingNode::setSourceScale(uint64_t this, float a2)
{
  if (a2 > 0.0)
  {
    *(*(this + 1688) + 8) = a2;
  }

  return this;
}

uint64_t FIK::RetargetingNode::setOutputScale(uint64_t this, float a2)
{
  if (a2 > 0.0)
  {
    *(*(this + 1696) + 8) = a2;
  }

  return this;
}

void FIK::RetargetingNode::~RetargetingNode(FIK::RetargetingNode *this)
{
  FIK::RetargetingNode::~RetargetingNode(this);

  FIK::AnimNode::operator delete(v1);
}

{
  *this = &unk_28589C158;
  std::__optional_destruct_base<FIK::FKConverter,false>::~__optional_destruct_base[abi:nn200100](this + 1752);
  FIK::IKArray<FIK::RetargetingNode::RetargetTask>::~IKArray(this + 215);
  v2 = MEMORY[0x277D82810];
  if (*(this + 1648) == 1)
  {
    v3 = *MEMORY[0x277D82810];
    *(this + 133) = *MEMORY[0x277D82810];
    *(this + *(v3 - 24) + 1064) = v2[3];
    MEMORY[0x245D77E20](this + 1072);
    std::ostream::~ostream();
    MEMORY[0x245D77F30](this + 1480);
  }

  if (*(this + 1056) == 1)
  {
    v4 = *v2;
    *(this + 59) = *v2;
    *(this + *(v4 - 24) + 472) = v2[3];
    MEMORY[0x245D77E20](this + 480);
    std::ostream::~ostream();
    MEMORY[0x245D77F30](this + 888);
  }

  FIK::AnimNode::~AnimNode(this);
}

uint64_t std::__optional_destruct_base<FIK::FKConverter,false>::~__optional_destruct_base[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    *a1 = 0;
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
    }
  }

  return a1;
}

uint64_t *FIK::IKArray<FIK::RetargetingNode::RetargetTask>::~IKArray(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    do
    {
      std::__destroy_at[abi:nn200100]<FIK::RetargetingNode::RetargetTask,0>(v3);
      v3 += 112;
      --v2;
    }

    while (v2);
  }

  *a1 = 0;
  v4 = a1[2];
  if (v4)
  {
    (*(*a1[3] + 24))(a1[3], v4, 0, 8);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:nn200100]<FIK::RetargetingNode::RetargetTask,0>(uint64_t result)
{
  *result = &unk_28589BD98;
  if (*(result + 32))
  {
    v1 = result;
    result = (*(**(result + 40) + 24))(*(result + 40), *(result + 24), 0, 8);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

char **ikinema::BufferDescriptor::create<FIK::Transform>@<X0>(FIK *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = "N3FIK9TransformE";
  if (("N3FIK9TransformE" & 0x8000000000000000) != 0)
  {
    v9 = ("N3FIK9TransformE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  v15 = 0;
  v16 = 0;
  v17 = FIK::defaultAllocator(a1);
  v12 = strlen(a1);
  IKString::assign(&v15, a1, v12);
  v13 = (33 * ((33 * std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v18, a1, a2)) ^ v8)) ^ a3;
  result = IKString::IKString(a4, &v15, v17);
  *(a4 + 24) = xmmword_245A03B30;
  *(a4 + 40) = a3;
  *(a4 + 48) = v8;
  *(a4 + 56) = v13;
  if (v16)
  {
    return (*(*v17 + 3))(v17, v15, 0, 8);
  }

  return result;
}

uint64_t ikinema::BufferContainer::createBuffer(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = 72 * *a1;
    v4 = (a1[2] + 56);
    while (1)
    {
      v5 = *v4;
      v4 += 9;
      if (v5 == a2[7])
      {
        break;
      }

      v3 -= 72;
      if (!v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    ikinema::Buffer::create(a2, a2, v10);
    if (v12)
    {
      v7 = v11 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      FIK::IKArray<ikinema::Buffer>::push_back<ikinema::Buffer,void>(a1, v10);
      ikinema::Buffer::~Buffer(v10, v8);
      return 1;
    }

    ikinema::Buffer::~Buffer(v10, v6);
  }

  return 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

__n128 ikinema::Buffer::create@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  if (!v5)
  {
    v11 = ikinemaLogObject(a1, a2);
    ikinemaAssertHandler(*v11, 0, "create", "(descriptor.elementCount()) Can't create a buffer with no elements.");
    v5 = a1[5];
  }

  v6 = (a1 + 3);
  v8 = FIK::FIKAlloc((v5 * a1[4]), a1[3]);
  if (!v8)
  {
    ikinema::Buffer::create(0, v7);
  }

  IKString::IKString(a3, a1);
  result = *v6;
  v10 = *(a1 + 5);
  *(a3 + 24) = *v6;
  *(a3 + 40) = v10;
  *(a3 + 56) = a1[7];
  *(a3 + 64) = v8;
  return result;
}

__n128 FIK::IKArray<ikinema::Buffer>::push_back<ikinema::Buffer,void>(uint64_t *a1, uint64_t a2)
{
  FIK::IKArray<ikinema::Buffer>::reserve(a1, (*a1 + 1));
  IKString::IKString((a1[2] + 72 * *a1), a2);
  result = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 40) = v5;
  *(v6 + 24) = result;
  v7 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v6 + 64) = v7;
  ++*a1;
  return result;
}

void FIK::IKArray<ikinema::Buffer>::reserve(uint64_t *a1, void *a2)
{
  if (a1[1] < a2)
  {
    v3 = a1[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(a1[3], 72 * v4, 8);
      v6 = v5;
      if (72 * v4)
      {
        bzero(v5, 72 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2];
    v8 = *a1;
    if (*a1)
    {
      v9 = v6;
      do
      {
        IKString::IKString(v9, v7);
        v10 = *(v7 + 24);
        v11 = *(v7 + 40);
        *(v12 + 56) = *(v7 + 56);
        *(v12 + 40) = v11;
        *(v12 + 24) = v10;
        v13 = *(v7 + 64);
        *(v7 + 64) = 0;
        *(v12 + 64) = v13;
        v9 = (v12 + 72);
        v7 += 72;
        --v8;
      }

      while (v8);
      v7 = a1[2];
      v14 = *a1;
    }

    else
    {
      v14 = 0;
    }

    v15 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (v14)
    {
      v16 = v7;
      do
      {
        ikinema::Buffer::~Buffer(v16, a2);
        v16 = (v17 + 72);
        --v14;
      }

      while (v14);
    }

    if (v7)
    {
      v18 = *(*v15 + 24);

      v18(v15, v7, 0, 8);
    }
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::GenerateMocapConstraintTargetsAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema39GenerateMocapConstraintTargetsAlgorithmE";
  if (("N7ikinema39GenerateMocapConstraintTargetsAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema39GenerateMocapConstraintTargetsAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void FIK::IKArray<ikinema::AlgorithmHandle>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a1[1] >= a2)
  {
    return;
  }

  v3 = a1[3];
  v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (*(*v3 + 16))(a1[3], 8 * v4, 8);
    v6 = v5;
    if (8 * v4)
    {
      bzero(v5, 8 * v4);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[2];
  v8 = *a1;
  if (!*a1)
  {
    v11 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (!v7)
    {
      return;
    }

    goto LABEL_13;
  }

  v9 = 0;
  do
  {
    v10 = *(v7 + 8 * v9);
    *(v7 + 8 * v9) = 0;
    *(v6 + 8 * v9++) = v10;
  }

  while (v8 != v9);
  v7 = a1[2];
  v11 = a1[3];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v3;
  if (v8)
  {
    v12 = v7;
    do
    {
      ikinema::AlgorithmHandle::~AlgorithmHandle(v12);
      v12 = (v13 + 8);
      --v8;
    }

    while (v8);
  }

  if (v7)
  {
LABEL_13:
    v14 = *(*v11 + 24);

    v14(v11, v7, 0, 8);
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::TaskFilterAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema19TaskFilterAlgorithmE";
  if (("N7ikinema19TaskFilterAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema19TaskFilterAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::ScalePipeDataAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema22ScalePipeDataAlgorithmE";
  if (("N7ikinema22ScalePipeDataAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema22ScalePipeDataAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::SetMocapTargetAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema23SetMocapTargetAlgorithmE";
  if (("N7ikinema23SetMocapTargetAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema23SetMocapTargetAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t (***ikinema::AlgorithmBlock::as<ikinema::DoSolveAlgorithm>(uint64_t (***a1)(void)))(void)
{
  v2 = "N7ikinema16DoSolveAlgorithmE";
  if (("N7ikinema16DoSolveAlgorithmE" & 0x8000000000000000) != 0)
  {
    v3 = ("N7ikinema16DoSolveAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (v2 == (**a1)(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t *FIK::SourceToTargetMapper::mapSourceToTarget@<X0>(FIK *a1@<X0>, void *a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v14 = FIK::defaultAllocator(a1);
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  a7[3] = v14;
  v15 = *a1;
  v51[0] = -1;
  result = FIK::IKArray<unsigned long>::resize(a7, v15, v51);
  v17 = a7[2];
  if (a4)
  {
    v18 = &a3[a4];
    v19 = (a1 + 56);
    v20 = *(a1 + 7);
    v21 = a2[7];
    do
    {
      v22 = *a3;
      if (!v20)
      {
        goto LABEL_10;
      }

      v23 = (a1 + 56);
      v24 = v20;
      do
      {
        if (*(v24 + 32) >= v22)
        {
          v23 = v24;
        }

        v24 = *(v24 + 8 * (*(v24 + 32) < v22));
      }

      while (v24);
      if (v23 == v19 || v22 < *(v23 + 8))
      {
LABEL_10:
        v23 = (a1 + 56);
      }

      if (v21)
      {
        v25 = a2 + 7;
        v26 = v21;
        do
        {
          if (*(v26 + 32) >= v22)
          {
            v25 = v26;
          }

          v26 = *(v26 + 8 * (*(v26 + 32) < v22));
        }

        while (v26);
        if (v25 != a2 + 7 && v22 >= *(v25 + 8) && v23 != v19)
        {
          *(v17 + 8 * v23[5]) = v25[5];
        }
      }

      ++a3;
    }

    while (a3 != v18);
  }

  if (a6)
  {
    v28 = (a1 + 80);
    v29 = a2 + 10;
    v30 = &a5[a6];
    do
    {
      v31 = *a5;
      v32 = *v28;
      if (!*v28)
      {
        goto LABEL_32;
      }

      v33 = (a1 + 80);
      do
      {
        if (*(v32 + 32) >= v31)
        {
          v33 = v32;
        }

        v32 = *(v32 + 8 * (*(v32 + 32) < v31));
      }

      while (v32);
      if (v33 == v28 || v31 < *(v33 + 8))
      {
LABEL_32:
        v33 = (a1 + 80);
      }

      v34 = *v29;
      if (!*v29)
      {
        goto LABEL_61;
      }

      v35 = a2 + 10;
      do
      {
        if (*(v34 + 32) >= v31)
        {
          v35 = v34;
        }

        v34 = *(v34 + 8 * (*(v34 + 32) < v31));
      }

      while (v34);
      if (v35 == v29)
      {
        goto LABEL_61;
      }

      if (v31 < *(v35 + 8) || v33 == v28)
      {
        goto LABEL_61;
      }

      if (v31 == 14)
      {
        v37 = a1;
        v38 = a2;
        v39 = 14;
      }

      else
      {
        if (v31 != 8)
        {
          FIK::IKArray<FIK::Task *>::IKArray(v51, v33 + 5);
          result = FIK::IKArray<FIK::Task *>::IKArray(v48, v35 + 5);
          v40 = v51[0];
          v41 = v48[0];
          if (v51[0] > v48[0])
          {
            v54 = -1;
            result = FIK::IKArray<unsigned long>::insert(v48, v49 + ((4 * v48[0] + 4) & 0xFFFFFFFFFFFFFFF8), v51[0] - v48[0], &v54);
          }

          if (v41 > v40)
          {
            v54 = -1;
            result = FIK::IKArray<unsigned long>::insert(v51, v52 + ((4 * v40 + 4) & 0xFFFFFFFFFFFFFFF8), v41 - v40, &v54);
          }

          v42 = v51[0];
          v43 = v49;
          if (v51[0])
          {
            v44 = v52;
            v45 = v49;
            do
            {
              v47 = *v44++;
              v46 = v47;
              if (v47 != -1)
              {
                *(v17 + 8 * v46) = *v45;
              }

              ++v45;
              --v42;
            }

            while (v42);
          }

          v48[0] = 0;
          if (v43)
          {
            result = (*(*v50 + 24))(v50, v43, 0, 8);
          }

          v51[0] = 0;
          if (v52)
          {
            result = (*(*v53 + 24))(v53, v52, 0, 8);
          }

          goto LABEL_61;
        }

        v37 = a1;
        v38 = a2;
        v39 = 8;
      }

LABEL_61:
      ++a5;
    }

    while (a5 != v30);
  }

  return result;
}

uint64_t *FIK::anonymous namespace::mapFingers<FIK::BipedIdentifiers::Group>(uint64_t *this, FIK::Hierarchy *a2, int a3, uint64_t a4)
{
  v6 = this;
  v7 = this + 10;
  v8 = this[10];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = this + 10;
  do
  {
    if (*(v8 + 32) >= a3)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < a3));
  }

  while (v8);
  if (v9 == v7 || *(v9 + 8) > a3)
  {
LABEL_8:
    v9 = this + 10;
  }

  v10 = *(a2 + 10);
  if (v10)
  {
    v11 = a2 + 80;
    do
    {
      if (*(v10 + 8) >= a3)
      {
        v11 = v10;
      }

      v10 = *&v10[8 * (*(v10 + 8) < a3)];
    }

    while (v10);
    if (v11 != a2 + 80 && *(v11 + 8) <= a3 && v9 != v7)
    {
      v13 = v9[5];
      v14 = *(v11 + 5) >= v13 ? v9[5] : *(v11 + 5);
      if (v13)
      {
        for (i = 0; i < v13; ++i)
        {
          if (i < v14)
          {
            v16 = *(v9[7] + 8 * i);
            v17 = *(*(v11 + 7) + 8 * i);
            *(a4 + 8 * v16) = v17;
            FIK::Hierarchy::descendentIndicesOf(&v34, v6, v16);
            this = FIK::Hierarchy::descendentIndicesOf(&v31, a2, v17);
            v18 = v35;
            if (v34)
            {
              v19 = (v35 + 8 * v34 - 8);
              if (v19 > v35)
              {
                v20 = v35 + 8;
                do
                {
                  v21 = *(v20 - 8);
                  *(v20 - 8) = *v19;
                  *v19-- = v21;
                  v22 = v20 >= v19;
                  v20 += 8;
                }

                while (!v22);
              }
            }

            v23 = v32;
            v24 = v31;
            v25 = (v32 + 8 * v31 - 8);
            if (v31)
            {
              v26 = v25 > v32;
            }

            else
            {
              v26 = 0;
            }

            if (v26)
            {
              v27 = v32 + 8;
              do
              {
                v28 = *(v27 - 8);
                *(v27 - 8) = *v25;
                *v25-- = v28;
                v22 = v27 >= v25;
                v27 += 8;
              }

              while (!v22);
              v24 = v31;
            }

            v29 = v34;
            if (v24 >= v34)
            {
              v24 = v34;
            }

            if (v34)
            {
              v30 = 0;
              do
              {
                if (v30 < v24)
                {
                  *(a4 + 8 * *(v18 + 8 * v30)) = *(v23 + 8 * v30);
                }

                ++v30;
              }

              while (v30 < v29);
            }

            v31 = 0;
            if (v23)
            {
              this = (*(*v33 + 24))(v33, v23, 0, 8);
              v18 = v35;
            }

            v34 = 0;
            if (v18)
            {
              this = (*(*v36 + 24))(v36, v18, 0, 8);
            }

            v13 = v9[5];
          }
        }
      }
    }
  }

  return this;
}

uint64_t FIK::IKArray<unsigned long>::insert(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = a1[2];
  v9 = a2 - v8;
  v10 = v8 + 8 * *a1;
  FIK::IKArray<FIK::Segment *>::reserve(a1, *a1 + a3);
  v11 = a1[2];
  if (v10 != a2)
  {
    memmove((v11 + v9 + 8 * a3), (v11 + v9), v10 - a2);
  }

  if (a3)
  {
    v12 = 0;
    v13 = *a4;
    v14 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = v14 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = (v9 + v11 + 8);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_245A020B0)));
      if (v18.i8[0])
      {
        *(v17 - 1) = v13;
      }

      if (v18.i8[4])
      {
        *v17 = v13;
      }

      v12 += 2;
      v17 += 2;
    }

    while (v15 != v12);
  }

  *a1 += a3;
  return a1[2] + v9;
}

uint64_t FIK::GameRigBuilder::createGameRig@<X0>(FIK::Hierarchy *a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, int *a5@<X3>, uint64_t a6@<X4>, int *a7@<X5>, uint64_t a8@<X6>)
{
  v13 = a2;
  v69 = *MEMORY[0x277D85DE8];
  result = FIK::RigBuilderUtils::hasAllExpectedJoints<FIK::BipedIdentifiers::Joint>(a1 + 32, a2, a3);
  if (result)
  {
    v37 = a5;
    v38 = a8;
    v51 = 0;
    v52 = 0;
    v53 = FIK::defaultAllocator(result);
    *v54 = 1065353216;
    *&v54[4] = xmmword_245A02320;
    v54[20] = 1;
    *&v55 = 0x3727C5AC3E4CCCCDLL;
    *(&v55 + 1) = 0x1E3F800000;
    *v56 = 0x3F80000040800000;
    *&v56[8] = 1;
    v56[10] = 0;
    *&v56[12] = 0uLL;
    *&v56[28] = 0x3F80000000000000;
    *&v56[36] = 0;
    v57 = 1117782016;
    *v58 = 1;
    *&v58[4] = 257;
    v58[6] = 1;
    v59 = xmmword_245A022C0;
    *v60 = 0x4000000040000000;
    memset(&v60[12], 0, 28);
    *&v60[8] = 0x40000000;
    *&v60[40] = v53;
    v61 = 0uLL;
    v62 = __PAIR128__(v53, 0);
    v63 = 0uLL;
    v64 = __PAIR128__(v53, 0);
    v65 = 0uLL;
    v66 = __PAIR128__(v53, 0);
    v67 = 0uLL;
    v68 = __PAIR128__(v53, 0);
    *&v54[24] = 2;
    FIK::RigBuilderUtils::addTargetsToRig<FIK::GameRig>(a1, &v51);
    FIK::IKArray<FIK::GameTask>::reserve(&v60[16], a3);
    if (a3)
    {
      v18 = &v13[a3];
      v19 = (a1 + 56);
      while (1)
      {
        v20 = *v13;
        v21 = *v19;
        if (!*v19)
        {
          goto LABEL_11;
        }

        v22 = (a1 + 56);
        do
        {
          if (*(v21 + 8) >= v20)
          {
            v22 = v21;
          }

          v21 = *&v21[8 * (*(v21 + 8) < v20)];
        }

        while (v21);
        if (v22 == v19 || v20 < *(v22 + 8))
        {
LABEL_11:
          v22 = (a1 + 56);
        }

        if (v20 <= 27)
        {
          break;
        }

        if (v20 <= 33)
        {
          if (v20 != 28)
          {
            if (v20 != 32)
            {
LABEL_52:
              FIK::GameRigBuilder::createGameRig(v53, v17);
            }

LABEL_27:
            FIK::GameRigTaskFactory::kneeTask(v53, v17, v45);
            goto LABEL_31;
          }

          goto LABEL_21;
        }

        if (v20 != 34)
        {
          if (v20 == 41)
          {
            goto LABEL_27;
          }

          if (v20 != 43)
          {
            goto LABEL_52;
          }
        }

        FIK::GameRigTaskFactory::ankleTask(v53, v45);
LABEL_31:
        v23 = FIK::Hierarchy::nameOf(a1, v22[5]);
        v24 = *(v23 + 8);
        if (v24)
        {
          v25 = *v23;
        }

        else
        {
          v25 = &unk_245A04BAE;
        }

        IKString::assign(&v47, v25, v24);
        v27 = FIK::defaultAllocator(v26);
        v39 = 0;
        v40 = 0;
        v41 = v27;
        IKString::assign(&v39, "_Task", 5);
        if (v40)
        {
          v28 = v39;
        }

        else
        {
          v28 = &unk_245A04BAE;
        }

        IKString::operator+(&v47, v28, v40, &v42);
        IKString::operator=(v45, &v42);
        if (v43)
        {
          (*(*v44 + 24))(v44, v42, 0, 8);
          v42 = 0;
          v43 = 0;
        }

        if (v40)
        {
          (*(*v41 + 3))(v41, v39, 0, 8);
        }

        v50 = -1;
        FIK::IKArray<FIK::GameTask>::push_back<FIK::GameTask&,void>(&v60[16], v45);
        if (v48)
        {
          (*(*v49 + 24))(v49, v47, 0, 8);
          v47 = 0;
          v48 = 0;
        }

        if (v45[1])
        {
          (*(*v46 + 24))(v46, v45[0], 0, 8);
        }

        if (++v13 == v18)
        {
          goto LABEL_46;
        }
      }

      if (v20 > 13)
      {
        if (v20 == 14)
        {
          FIK::GameRigTaskFactory::headTask(v53, v17, v45);
          goto LABEL_31;
        }

        if (v20 != 21)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (!v20)
        {
          FIK::GameRigTaskFactory::hipsTask(v53, v45);
          goto LABEL_31;
        }

        if (v20 != 8)
        {
          goto LABEL_52;
        }
      }

LABEL_21:
      FIK::GameRigTaskFactory::chestTask(v53, v17, v45);
      goto LABEL_31;
    }

LABEL_46:
    FIK::RigBuilderUtils::cullJointsFromRig<FIK::GameRig,FIK::RigBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(a1, 0, v37, a6, a7, v38, &v51);
    IKString::IKString(a4, &v51, v53);
    *(a4 + 24) = *v54;
    *(a4 + 36) = *&v54[12];
    v29 = *v56;
    *(a4 + 64) = v55;
    *(a4 + 80) = v29;
    *(a4 + 96) = *&v56[16];
    *(a4 + 112) = *&v56[32];
    *(a4 + 120) = v57;
    *(a4 + 131) = *&v58[3];
    *(a4 + 128) = *v58;
    v30 = *v60;
    *(a4 + 144) = v59;
    *(a4 + 160) = v30;
    v31 = *&v60[32];
    *(a4 + 176) = *&v60[16];
    *(a4 + 192) = v31;
    v32 = v62;
    *(a4 + 208) = v61;
    *(a4 + 224) = v32;
    v33 = v64;
    *(a4 + 240) = v63;
    *(a4 + 256) = v33;
    v34 = v66;
    v35 = v67;
    *(a4 + 272) = v65;
    *(a4 + 288) = v34;
    memset(&v60[16], 0, 24);
    v61 = 0u;
    *&v62 = 0;
    v63 = 0u;
    *&v64 = 0;
    v65 = 0u;
    *&v66 = 0;
    v67 = 0u;
    v36 = v68;
    *&v68 = 0;
    *(a4 + 304) = v35;
    *(a4 + 320) = v36;
    *(a4 + 336) = 1;
    FIK::IKArray<FIK::AimSetup>::~IKArray(&v67);
    *&v65 = 0;
    if (v66)
    {
      (*(**(&v66 + 1) + 24))(*(&v66 + 1), v66, 0, 8);
    }

    FIK::IKArray<IKString>::~IKArray(&v63);
    FIK::IKArray<FIK::RigBone>::~IKArray(&v61);
    result = FIK::IKArray<FIK::GameTask>::~IKArray(&v60[16]);
    if (v52)
    {
      return (*(*v53 + 24))(v53, v51, 0, 8);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 336) = 0;
  }

  return result;
}

void FIK::RigBuilderUtils::cullJointsFromRig<FIK::GameRig,FIK::RigBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::Hierarchy *this, int a2, int *a3, uint64_t a4, int *a5, uint64_t a6, void *a7)
{
  v42 = a7[2];
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v14 = this + 56;
  v13 = *(this + 7);
  if (v13)
  {
    v15 = this + 56;
    do
    {
      if (*(v13 + 8) >= a2)
      {
        v15 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < a2)];
    }

    while (v13);
    if (v15 != v14 && *(v15 + 8) <= a2)
    {
      v16 = FIK::Hierarchy::nameOf(this, *(v15 + 5));
      IKString::IKString(&v43, v16);
      if (v44)
      {
        v17 = v43;
      }

      else
      {
        v17 = &unk_245A04BAE;
      }

      FIK::Hierarchy::ancestorsOf(this, v17, v44, v49);
      if (v49[0])
      {
        v18 = v50;
        v19 = 24 * v49[0];
        do
        {
          std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v18, v18);
          v18 = (v18 + 24);
          v19 -= 24;
        }

        while (v19);
      }

      FIK::IKArray<IKString>::~IKArray(v49);
      if (v44)
      {
        (*(*v45 + 24))(v45, v43, 0, 8);
      }
    }
  }

  if (a4)
  {
    v20 = &a3[a4];
    do
    {
      v21 = *v14;
      if (*v14)
      {
        v22 = *a3;
        v23 = v14;
        do
        {
          if (*(v21 + 32) >= v22)
          {
            v23 = v21;
          }

          v21 = *(v21 + 8 * (*(v21 + 32) < v22));
        }

        while (v21);
        if (v23 != v14 && v22 >= *(v23 + 8))
        {
          v24 = FIK::Hierarchy::nameOf(this, *(v23 + 5));
          IKString::IKString(&v43, v24);
          std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, &v43, &v43);
          if (v44)
          {
            v25 = v43;
          }

          else
          {
            v25 = &unk_245A04BAE;
          }

          FIK::Hierarchy::descendentsOf(this, v25, v44, v49);
          if (v49[0])
          {
            v26 = v50;
            v27 = 24 * v49[0];
            do
            {
              std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v26, v26);
              v26 = (v26 + 24);
              v27 -= 24;
            }

            while (v27);
          }

          FIK::IKArray<IKString>::~IKArray(v49);
          if (v44)
          {
            (*(*v45 + 24))(v45, v43, 0, 8);
          }
        }
      }

      ++a3;
    }

    while (a3 != v20);
  }

  if (a6)
  {
    v28 = &a5[a6];
    v29 = (this + 80);
    do
    {
      v30 = *v29;
      if (*v29)
      {
        v31 = *a5;
        v32 = (this + 80);
        do
        {
          if (*(v30 + 8) >= v31)
          {
            v32 = v30;
          }

          v30 = *&v30[8 * (*(v30 + 8) < v31)];
        }

        while (v30);
        if (v32 != v29 && v31 >= *(v32 + 8))
        {
          v33 = v32[5];
          if (v33)
          {
            v34 = v32[7];
            v35 = &v34[v33];
            do
            {
              v36 = FIK::Hierarchy::nameOf(this, *v34);
              IKString::IKString(&v43, v36);
              std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, &v43, &v43);
              if (v44)
              {
                v37 = v43;
              }

              else
              {
                v37 = &unk_245A04BAE;
              }

              FIK::Hierarchy::descendentsOf(this, v37, v44, v49);
              if (v49[0])
              {
                v38 = v50;
                v39 = 24 * v49[0];
                do
                {
                  std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v38, v38);
                  v38 = (v38 + 24);
                  v39 -= 24;
                }

                while (v39);
              }

              FIK::IKArray<IKString>::~IKArray(v49);
              if (v44)
              {
                (*(*v45 + 24))(v45, v43, 0, 8);
              }

              ++v34;
            }

            while (v34 != v35);
          }
        }
      }

      ++a5;
    }

    while (a5 != v28);
  }

  if (v48)
  {
    FIK::IKArray<FIK::RigBone>::IKArray<FIK::RigBone,void>(v49, a7[26] - v48, v42);
    v40 = a7[28];
    v41 = v40 + (a7[26] << 8);
    v43 = &v46;
    std::__copy_if[abi:nn200100]<FIK::IKArrayIterator<FIK::RigBone const>,FIK::IKArrayIterator<FIK::RigBone const>,FIK::IKArrayIterator<FIK::RigBone>,std::__identity,void FIK::RigBuilderUtils::cullJointsFromRig<FIK::GameRig,FIK::RigBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::CharacterisedHierarchy const&,FIK::BipedIdentifiers::Joint,FIK::IKArrayView<FIK::BipedIdentifiers::Joint const>,FIK::IKArrayView<FIK::BipedIdentifiers::Group const>,FIK::GameRig &)::{lambda(FIK::RigBone const&)#1}>(v40, v41, v50, &v43);
    if (v49[0])
    {
      IKString::assign(v50 + 4, &unk_245A04BAE, 0);
    }

    FIK::IKArray<FIK::RigBone>::operator=(a7 + 26, v49);
    FIK::Serialisation::fixUpRigIndices(a7);
    FIK::IKArray<FIK::RigBone>::~IKArray(v49);
  }

  std::__tree<IKString>::destroy(&v46, v47);
}

uint64_t FIK::RigBuilderUtils::hasAllExpectedJoints<FIK::BipedIdentifiers::Joint>(uint64_t a1, int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = &a2[a3];
  v6 = *(a1 + 24);
  v4 = a1 + 24;
  v5 = v6;
  while (v5)
  {
    v7 = *a2;
    v8 = v4;
    v9 = v5;
    do
    {
      if (*(v9 + 32) >= v7)
      {
        v8 = v9;
      }

      v9 = *(v9 + 8 * (*(v9 + 32) < v7));
    }

    while (v9);
    if (v8 == v4 || v7 < *(v8 + 32))
    {
      break;
    }

    if (++a2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

void *FIK::IKArray<FIK::RigBone>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = (result[2] + 24);
    do
    {
      if (v3[2])
      {
        result = (*(*v3[3] + 24))(v3[3], v3[1], 0, 8);
        v3[1] = 0;
        v3[2] = 0;
      }

      if (*(v3 - 1))
      {
        result = (*(**v3 + 24))(*v3, *(v3 - 2), 0, 8);
        *(v3 - 2) = 0;
        *(v3 - 1) = 0;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

uint64_t *FIK::IKArray<FIK::RigBone>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v9 = a2[1];
    v10 = a1[3];
    if (v9)
    {
      v11 = (*(*v10 + 16))(a1[3], v9 << 8, 16);
      v12 = v11;
      if (v9 << 8)
      {
        bzero(v11, v9 << 8);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *a2;
    if (*a2)
    {
      v14 = v12 + 32;
      v15 = a2[2] + 32;
      do
      {
        *(v14 - 32) = *(v15 - 32);
        IKString::IKString((v14 - 24), (v15 - 24));
        IKString::IKString(v14, v15);
        *(v14 + 32) = *(v15 + 32);
        *(v14 + 48) = *(v15 + 48);
        v16 = *(v15 + 64);
        v17 = *(v15 + 80);
        *(v14 + 96) = *(v15 + 96);
        *(v14 + 64) = v16;
        *(v14 + 80) = v17;
        *(v14 + 112) = *(v15 + 112);
        *(v14 + 128) = *(v15 + 128);
        *(v14 + 144) = *(v15 + 144);
        *(v14 + 160) = *(v15 + 160);
        *(v14 + 176) = *(v15 + 176);
        *(v14 + 192) = *(v15 + 192);
        *(v14 + 208) = *(v15 + 208);
        v14 += 256;
        v15 += 256;
        --v13;
      }

      while (v13);
    }

    v19 = a1[2];
    v18 = a1[3];
    a1[1] = v9;
    a1[2] = v12;
    a1[3] = v10;
    if (v19)
    {
      (*(*v18 + 24))(v18, v19, 0, 8);
    }
  }

  else
  {
    FIK::IKArray<FIK::RigBone>::clear(a1);
    v4 = *a2;
    if (*a2)
    {
      v5 = a1[2] + 32;
      v6 = a2[2] + 32;
      do
      {
        *(v5 - 32) = *(v6 - 32);
        IKString::IKString((v5 - 24), (v6 - 24));
        IKString::IKString(v5, v6);
        *(v5 + 32) = *(v6 + 32);
        *(v5 + 48) = *(v6 + 48);
        v7 = *(v6 + 64);
        v8 = *(v6 + 80);
        *(v5 + 96) = *(v6 + 96);
        *(v5 + 64) = v7;
        *(v5 + 80) = v8;
        *(v5 + 112) = *(v6 + 112);
        *(v5 + 128) = *(v6 + 128);
        *(v5 + 144) = *(v6 + 144);
        *(v5 + 160) = *(v6 + 160);
        *(v5 + 176) = *(v6 + 176);
        *(v5 + 192) = *(v6 + 192);
        *(v5 + 208) = *(v6 + 208);
        v5 += 256;
        v6 += 256;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

uint64_t *std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(uint64_t **a1, uint64_t a2, const IKString *a3)
{
  v3 = *std::__tree<IKString>::__find_equal<IKString>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<IKString>::__find_equal<IKString>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!IKString::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!IKString::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void *FIK::IKArray<FIK::RigBone>::IKArray<FIK::RigBone,void>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *a1 = a2;
  FIK::IKArray<FIK::RigBone>::MemoryBlock::MemoryBlock(a1 + 1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, a3);
  v6 = a1[2];
  v11 = 0;
  v12 = 0;
  v13 = a3;
  v14 = 0;
  v15 = 0;
  v16 = a3;
  v17 = 0uLL;
  v18 = xmmword_245A01E80;
  LODWORD(v19) = 16843009;
  BYTE4(v19) = 1;
  *(&v19 + 5) = 0;
  v20 = xmmword_245A022E0;
  v21 = 0x3F80000000000000;
  v22 = xmmword_245A01EF0;
  v23 = xmmword_245A01EF0;
  v24 = xmmword_245A022F0;
  *v25 = vdup_n_s32(0x43B40000u);
  *&v25[8] = 1135869952;
  memset(&v25[12], 0, 52);
  if (v4)
  {
    v7 = v6 + 32;
    do
    {
      *(v7 - 32) = -1;
      IKString::IKString((v7 - 24), &v11);
      IKString::IKString(v7, &v14);
      *(v7 + 32) = v17;
      *(v7 + 48) = v18;
      v8 = v19;
      v9 = v20;
      *(v7 + 96) = v21;
      *(v7 + 64) = v8;
      *(v7 + 80) = v9;
      *(v7 + 112) = v22;
      *(v7 + 128) = v23;
      *(v7 + 144) = v24;
      *(v7 + 160) = *v25;
      *(v7 + 176) = *&v25[16];
      *(v7 + 192) = *&v25[32];
      *(v7 + 208) = *&v25[48];
      v7 += 256;
      --v4;
    }

    while (v4);
    if (v15)
    {
      (*(*v16 + 24))(v16, v14, 0, 8);
      v14 = 0;
      v15 = 0;
    }
  }

  if (v12)
  {
    (*(*v13 + 24))(v13, v11, 0, 8);
  }

  return a1;
}

uint64_t std::__copy_if[abi:nn200100]<FIK::IKArrayIterator<FIK::RigBone const>,FIK::IKArrayIterator<FIK::RigBone const>,FIK::IKArrayIterator<FIK::RigBone>,std::__identity,void FIK::RigBuilderUtils::cullJointsFromRig<FIK::GameRig,FIK::RigBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::CharacterisedHierarchy const&,FIK::BipedIdentifiers::Joint,FIK::IKArrayView<FIK::BipedIdentifiers::Joint const>,FIK::IKArrayView<FIK::BipedIdentifiers::Group const>,FIK::GameRig &)::{lambda(FIK::RigBone const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v6 = a2;
  do
  {
    if (*a4 + 1 == std::__find[abi:nn200100]<std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,IKString,std::__identity>(**a4, *a4 + 1, v5 + 8))
    {
      *a3 = *v5;
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 8);
      }

      else
      {
        v9 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 8), v9, v8);
      v10 = *(v5 + 40);
      if (v10)
      {
        v11 = *(v5 + 32);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 32), v11, v10);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 80) = *(v5 + 80);
      v12 = *(v5 + 96);
      v13 = *(v5 + 112);
      *(a3 + 128) = *(v5 + 128);
      *(a3 + 96) = v12;
      *(a3 + 112) = v13;
      *(a3 + 144) = *(v5 + 144);
      *(a3 + 160) = *(v5 + 160);
      *(a3 + 176) = *(v5 + 176);
      *(a3 + 192) = *(v5 + 192);
      *(a3 + 208) = *(v5 + 208);
      *(a3 + 224) = *(v5 + 224);
      *(a3 + 240) = *(v5 + 240);
      a3 += 256;
    }

    v5 += 256;
  }

  while (v5 != v6);
  return v6;
}

void *std::__find[abi:nn200100]<std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,IKString,std::__identity>(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 8);
    if (v5)
    {
      v6 = *a3;
    }

    else
    {
      v6 = &unk_245A04BAE;
    }

    while (1)
    {
      v7 = v3[5];
      v8 = v7 ? v3[4] : &unk_245A04BAE;
      if (v7 == v5 && !memcmp(v8, v6, v5))
      {
        break;
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
      if (v10 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void std::__tree<IKString>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<IKString>::destroy(a1, *a2);
    std::__tree<IKString>::destroy(a1, a2[1]);
    if (a2[5])
    {
      (*(*a2[6] + 24))(a2[6], a2[4], 0, 8);
    }

    operator delete(a2);
  }
}

void FIK::RigBuilderUtils::addTargetsToRig<FIK::MoCapRig>(FIK::Hierarchy *a1, uint64_t a2)
{
  v4 = *a1;
  FIK::IKArray<FIK::MoCapBone>::resize(a2 + 208, *a1);
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a2 + 224);
      v8 = v7 + v5;
      *(v7 + v5) = i;
      v9 = FIK::Hierarchy::localSpaceRestPose(a1, i);
      *(v8 + 64) = *v9;
      *(v8 + 80) = v9[1];
      v10 = FIK::Hierarchy::nameOf(a1, i);
      v11 = *(v10 + 8);
      if (v11)
      {
        v12 = *v10;
      }

      else
      {
        v12 = &unk_245A04BAE;
      }

      IKString::assign((v8 + 8), v12, v11);
      v13 = FIK::Hierarchy::parentIndexOf(a1, i);
      v14 = v13;
      v16 = v15;
      if (v15)
      {
        v17 = FIK::Hierarchy::nameOf(a1, v13);
        IKString::IKString(&v22, v17);
      }

      else
      {
        v18 = FIK::defaultAllocator(v13);
        v22 = 0;
        v23 = 0;
        v24 = v18;
        IKString::assign(&v22, &unk_245A04BAE, 0);
      }

      v19 = v7 + v5;
      if (v23)
      {
        v20 = v22;
      }

      else
      {
        v20 = &unk_245A04BAE;
      }

      IKString::assign((v19 + 32), v20, v23);
      if (v23)
      {
        (*(*v24 + 3))(v24, v22, 0, 8);
      }

      if (v16)
      {
        v21 = v14;
      }

      else
      {
        v21 = -1;
      }

      *(v19 + 4) = v21;
      v5 += 544;
    }
  }
}

uint64_t FIK::IKArray<FIK::MoCapBone>::resize(uint64_t a1, unint64_t a2)
{
  FIK::MoCapBone::MoCapBone(v5, *(a1 + 24));
  FIK::IKArray<FIK::MoCapBone>::resize(a1, a2, v5);
  result = FIK::IKArray<IKString>::~IKArray(&v13);
  if (v11)
  {
    result = (*(*v12 + 24))(v12, v10, 0, 8);
    v10 = 0;
    v11 = 0;
  }

  if (v8)
  {
    result = (*(*v9 + 24))(v9, v7, 0, 8);
    v7 = 0;
    v8 = 0;
  }

  if (v5[2])
  {
    return (*(*v6 + 24))(v6, v5[1], 0, 8);
  }

  return result;
}

void FIK::RigBuilderUtils::addTargetsToRig<FIK::GameRig>(FIK::Hierarchy *a1, uint64_t a2)
{
  v4 = *a1;
  FIK::IKArray<FIK::RigBone>::resize((a2 + 208), *a1);
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a2 + 224);
      v8 = v7 + v5;
      *(v7 + v5) = i;
      v9 = FIK::Hierarchy::localSpaceRestPose(a1, i);
      *(v8 + 64) = *v9;
      *(v8 + 80) = v9[1];
      v10 = FIK::Hierarchy::nameOf(a1, i);
      v11 = *(v10 + 8);
      if (v11)
      {
        v12 = *v10;
      }

      else
      {
        v12 = &unk_245A04BAE;
      }

      IKString::assign((v8 + 8), v12, v11);
      v13 = FIK::Hierarchy::parentIndexOf(a1, i);
      v14 = v13;
      v16 = v15;
      if (v15)
      {
        v17 = FIK::Hierarchy::nameOf(a1, v13);
        IKString::IKString(&v22, v17);
      }

      else
      {
        v18 = FIK::defaultAllocator(v13);
        v22 = 0;
        v23 = 0;
        v24 = v18;
        IKString::assign(&v22, &unk_245A04BAE, 0);
      }

      v19 = v7 + v5;
      if (v23)
      {
        v20 = v22;
      }

      else
      {
        v20 = &unk_245A04BAE;
      }

      IKString::assign((v19 + 32), v20, v23);
      if (v23)
      {
        (*(*v24 + 3))(v24, v22, 0, 8);
      }

      if (v16)
      {
        v21 = v14;
      }

      else
      {
        v21 = -1;
      }

      *(v19 + 4) = v21;
      v5 += 256;
    }
  }
}

void FIK::IKArray<FIK::RigBone>::resize(unint64_t *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = -1;
  v4 = 0;
  v5 = 0;
  v6 = v2;
  v7 = 0;
  v8 = 0;
  v9 = v2;
  v10 = 0;
  v11 = 0;
  v12 = xmmword_245A01E80;
  v13 = 16843009;
  v14 = 1;
  v15 = 0;
  v16 = xmmword_245A022E0;
  v17 = 0x3F80000000000000;
  v18 = xmmword_245A01EF0;
  v19 = xmmword_245A01EF0;
  v20 = xmmword_245A022F0;
  v21 = vdup_n_s32(0x43B40000u);
  v22 = 1135869952;
  v26 = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  FIK::IKArray<FIK::RigBone>::resize(a1, a2, &v3);
  if (v8)
  {
    (*(*v9 + 24))(v9, v7, 0, 8);
    v7 = 0;
    v8 = 0;
  }

  if (v5)
  {
    (*(*v6 + 24))(v6, v4, 0, 8);
  }
}

double FIK::RigBuilderUtils::shiftHipsToOrigin<FIK::BipedIdentifiers::Joint>(FIK::Hierarchy *this, int a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    v4 = this + 56;
    do
    {
      if (*(v2 + 8) >= a2)
      {
        v4 = v2;
      }

      v2 = *&v2[8 * (*(v2 + 8) < a2)];
    }

    while (v2);
    if (v4 != this + 56 && *(v4 + 8) <= a2)
    {
      v5 = FIK::Hierarchy::parentIndexOf(this, *(v4 + 5));
      if ((v7 & 1) != 0 && *(this + 36) == 1)
      {
        v8 = v5;
        FIK::IKRigUtils::getUnitVecForAxis(*(this + 11), v26);
        v9 = vmulq_f32(v26[0], v28);
        v10 = *(v4 + 5);
        v11 = vmulq_f32(v27[1], xmmword_245A01F10);
        v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
        v13 = vnegq_f32(v11);
        v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27[0], v27[0]), v27[0], 0xCuLL), v13), v27[0], v12);
        v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v13), v15, v12);
        v17 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v15, v11, 3);
        v15.i64[0] = 0x4000000040000000;
        v15.i64[1] = 0x4000000040000000;
        v18 = vmlaq_f32(v27[0], v15, v17);
        v19 = vnegq_f32(v29);
        v20 = vtrn2q_s32(v29, vtrn1q_s32(v29, v19));
        v21 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v29, v19, 8uLL), *v11.f32, 1), vextq_s8(v20, v20, 8uLL), v11.f32[0]);
        v22 = vrev64q_s32(v29);
        v22.i32[0] = v19.i32[1];
        v22.i32[3] = v19.i32[2];
        v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v13), v9, v12);
        v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
        v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v13), v24, v12);
        v26[0] = vsubq_f32(vmlaq_f32(v9, v15, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v24, v11, 3)), v18);
        v26[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v29, v11, 3), v22, v11, 2), v21);
        *&result = FIK::Hierarchy::setLocalSpaceRestPose(this, v10, v26).n128_u64[0];
      }
    }
  }

  return result;
}

__n128 anonymous namespace::getModelSpaceForJointIndex@<Q0>(FIK::Hierarchy *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v6 = FIK::Hierarchy::localSpaceRestPose(a1, a2);
  v25 = *(v6 + 16);
  *a3 = *v6;
  v7 = FIK::Hierarchy::parentIndexOf(a1, a2);
  if (v8)
  {
    v9 = v7;
    v24 = *a3;
    do
    {
      v10 = FIK::Hierarchy::localSpaceRestPose(a1, v9);
      v11 = *(v10 + 16);
      v12 = vnegq_f32(v25);
      v13 = vtrn2q_s32(v25, vtrn1q_s32(v25, v12));
      v14 = vrev64q_s32(v25);
      v14.i32[0] = v12.i32[1];
      v14.i32[3] = v12.i32[2];
      v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v25, v11, 3), v14, v11, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v25, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]));
      v16 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
      v17 = vnegq_f32(v11);
      v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v17), v24, v16);
      v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v17), v19, v16);
      v21 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v19, v11, 3);
      v11.i64[0] = 0x4000000040000000;
      v11.i64[1] = 0x4000000040000000;
      v24 = vaddq_f32(*v10, vmlaq_f32(v24, v11, v21));
      v25 = v15;
      v9 = FIK::Hierarchy::parentIndexOf(a1, v9);
    }

    while ((v22 & 1) != 0);
    *a3 = v24;
  }

  result = v25;
  a3[1] = v25;
  return result;
}

void FIK::RigBuilderUtils::alignToTPose(FIK::Hierarchy *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) != 1)
  {
    FIK::AutoRig::createGameRigForBiped(a1, v36);
    if (v47)
    {
      v39 = 0x963DCCCCCDLL;
      v38 = 1065353216;
      FIK::GenericSolver::GenericSolver(v35, v36);
      TaskInstance = FIK::GenericSolver::GetTaskInstance(v35, RigTaskIndexForJointID);
      FIK::RTGameTask::SetAlpha(TaskInstance, 1.0, 1.0);
      (**TaskInstance)(TaskInstance, v31);
      v5 = FIK::GenericSolver::GetTaskInstance(v35, v3);
      FIK::RTGameTask::SetAlpha(v5, 1.0, 1.0);
      v6 = (**v5)(v5, v30);
      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      v29 = FIK::defaultAllocator(v6);
      FIK::IKArray<FIK::Transform>::reserve(v27, v41);
      if (v41)
      {
        v7 = v27[0];
        v8 = v41 << 8;
        v9 = (v42 + 80);
        do
        {
          FIK::IKArray<FIK::Transform>::reserve(v27, v7 + 1);
          v10 = (v28 + 32 * v27[0]);
          *v10 = *(v9 - 1);
          v10[1] = *v9;
          v7 = ++v27[0];
          v9 += 16;
          v8 -= 256;
        }

        while (v8);
      }

      v11 = FIK::GenericSolver::Solve(v35, v27);
      if (v11 == 1)
      {
        FIK::GenericSolver::ResetSolver(v35);
        v11 = FIK::GenericSolver::Solve(v35, v27);
      }

      *(a1 + 8) = 1;
      v24[0] = 0;
      v24[1] = 0;
      v25 = 0;
      v26 = FIK::defaultAllocator(v11);
      FIK::IKArray<FIK::Segment *>::reserve(v24, v41);
      if (v41)
      {
        v12 = v41 << 8;
        v13 = (v42 + 8);
        do
        {
          IKString::IKString(&v32, v13);
          if (v33)
          {
            v14 = v32;
          }

          else
          {
            v14 = &unk_245A04BAE;
          }

          v15 = FIK::Hierarchy::indexOf(a1, v14, v33);
          FIK::IKArray<FIK::Segment *>::reserve(v24, v24[0] + 1);
          v25[v24[0]++] = v15;
          if (v33)
          {
            (*(*v34 + 24))(v34, v32, 0, 8);
          }

          v13 = (v13 + 256);
          v12 -= 256;
        }

        while (v12);
      }

      v16 = v25;
      v17 = v24[0];
      if (v24[0])
      {
        v18 = v28;
        do
        {
          v19 = *v16++;
          FIK::Hierarchy::setLocalSpaceRestPose(a1, v19, v18);
          v18 += 32;
          --v17;
        }

        while (v17);
        v16 = v25;
      }

      v24[0] = 0;
      if (v16)
      {
        (*(*v26 + 3))(v26, v16, 0, 8);
      }

      v27[0] = 0;
      if (v28)
      {
        (*(*v29 + 3))(v29, v28, 0, 8);
      }

      FIK::GenericSolver::~GenericSolver(v35);
      if (v47 == 1)
      {
        FIK::IKArray<FIK::AimSetup>::~IKArray(&v46);
        v43[4] = 0;
        if (v44)
        {
          (*(*v45 + 24))(v45, v44, 0, 8);
        }

        FIK::IKArray<IKString>::~IKArray(v43);
        FIK::IKArray<FIK::RigBone>::~IKArray(&v41);
        FIK::IKArray<FIK::GameTask>::~IKArray(&v40);
        if (v36[1])
        {
          (*(*v37 + 24))(v37, v36[0], 0, 8);
        }
      }
    }

    else
    {
      v20 = std::__throw_bad_optional_access[abi:nn200100]();
    }
  }
}

void anonymous namespace::getWristTarget(FIK::Hierarchy *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  if (a3)
  {
    v8 = 21;
  }

  else
  {
    v8 = 28;
  }

  if (a3)
  {
    v9 = 17;
  }

  else
  {
    v9 = 24;
  }

  FIK::PoseConverter::PoseConverter<FIK::RigBone>(v75, *(a2 + 224), *(a2 + 208));
  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(v75, RigIndexForJointID);
  v13 = FIK::PoseConverter::GetGlobalTransform(v75, v11);
  v70 = *GlobalTransform;
  v71 = *v13;
  v72 = *FIK::PoseConverter::GetGlobalTransform(v75, v14);
  v74 = vsubq_f32(*FIK::PoseConverter::GetGlobalTransform(v75, v15), v72);
  v16 = FIK::IKRigUtils::highestMagnitudeAxis(&v74);
  if ((v16 & 0x100000000) != 0)
  {
    FIK::IKRigUtils::getUnitVecForAxis(v16, &v73);
    v17 = v73;
    if (a3)
    {
      v17 = vnegq_f32(v73);
      v73 = v17;
    }

    v18 = *(*(a2 + 224) + (v11 << 8) + 64);
    v19 = vmulq_f32(v18, v18);
    v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
    v20 = 1.0 / v19.f32[0];
    v21 = v19.f32[0] == 0.0;
    v22 = 0.0;
    if (v21)
    {
      v20 = 0.0;
    }

    v23 = vmulq_n_f32(v18, v20);
    v24 = v23;
    v24.i32[3] = 0;
    v25 = v13[1];
    v26 = vmulq_f32(v25, xmmword_245A01F10);
    v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
    v28 = vnegq_f32(v26);
    v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v28), v17, v27);
    v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
    v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v28), v30, v27);
    v32 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v30, v26, 3);
    v26.i64[0] = 0x4000000040000000;
    v26.i64[1] = 0x4000000040000000;
    v33 = vmlaq_f32(v17, v26, v32);
    v34 = v33;
    v34.i32[3] = 0;
    v35 = vmulq_f32(v24, v24);
    v36 = vmulq_f32(v34, v34);
    *v32.f32 = vadd_f32(vzip1_s32(*v36.i8, *v35.i8), vzip2_s32(*v36.i8, *v35.i8));
    v38 = vextq_s8(v36, v36, 8uLL).u64[0];
    v37 = vsqrt_f32(vadd_f32(vzip1_s32(v38, *&vextq_s8(v35, v35, 8uLL)), *v32.f32));
    *v38.i32 = 1.0 / v37.f32[1];
    v39 = vmvn_s8(vceqz_f32(v37));
    if ((v39.i8[4] & 1) == 0)
    {
      *v38.i32 = 0.0;
    }

    v40 = vmulq_n_f32(v23, *v38.i32);
    v41 = 1.0 / v37.f32[0];
    if (v39.i8[0])
    {
      v22 = v41;
    }

    v42 = vmulq_n_f32(v33, v22);
    v43 = vmulq_f32(v40, v42);
    *v38.i32 = v43.f32[2] + vaddv_f32(*v43.f32);
    v44 = xmmword_245A01E80;
    if (*v38.i32 < 1.0)
    {
      if (*v38.i32 >= -0.999999)
      {
        *v38.i32 = sqrtf((*v38.i32 + 1.0) + (*v38.i32 + 1.0));
        v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v40)), v42, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
        v53 = vdivq_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), vdupq_lane_s32(v38, 0));
        v53.f32[3] = *v38.i32 * 0.5;
        v54 = vmulq_f32(v53, v53);
        v55 = vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
        if (vaddv_f32(v55) != 0.0)
        {
          v56 = vadd_f32(v55, vdup_lane_s32(v55, 1)).u32[0];
          v57 = vrsqrte_f32(v56);
          v58 = vmul_f32(v57, vrsqrts_f32(v56, vmul_f32(v57, v57)));
          v44 = vmulq_n_f32(v53, vmul_f32(v58, vrsqrts_f32(v56, vmul_f32(v58, v58))).f32[0]);
        }
      }

      else
      {
        v45 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
        v46 = vmlaq_f32(vmulq_f32(v45, xmmword_245A01E90), xmmword_245A01EA0, v40);
        v47 = vmulq_f32(v46, v46);
        v48 = sqrtf(v47.f32[1] + (v47.f32[2] + v47.f32[0]));
        if (fabsf(v48) >= 0.000000001)
        {
          v50 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
          v50.i32[3] = 0;
        }

        else
        {
          v49 = vmlaq_f32(vmulq_f32(v45, xmmword_245A01EB0), xmmword_245A01EC0, v40);
          v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
          v51 = vmulq_f32(v49, v49);
          v48 = sqrtf(v51.f32[1] + (v51.f32[2] + v51.f32[0]));
        }

        v59 = 1.0 / v48;
        v21 = v48 == 0.0;
        v60 = 0.0;
        if (!v21)
        {
          v60 = v59;
        }

        v44 = vmulq_n_f32(v50, v60);
        v44.i32[3] = 0;
      }
    }

    v61 = vsubq_f32(v71, v70);
    v62 = vmulq_f32(v61, v61);
    v63 = vaddq_f32(*GlobalTransform, vmulq_n_f32(v17, sqrtf(v62.f32[2] + vaddv_f32(*v62.f32))));
    v64 = vnegq_f32(v44);
    v65 = vtrn2q_s32(v44, vtrn1q_s32(v44, v64));
    v66 = vrev64q_s32(v44);
    v66.i32[0] = v64.i32[1];
    v66.i32[3] = v64.i32[2];
    *a4 = v63;
    a4[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v44, v25, 3), v66, v25, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v44, v64, 8uLL), *v25.f32, 1), vextq_s8(v65, v65, 8uLL), v25.f32[0]));
    FIK::PoseConverter::~PoseConverter(v75);
  }

  else
  {
    v67 = std::__throw_bad_optional_access[abi:nn200100]();
  }
}

uint64_t anonymous namespace::getRigTaskIndexForJointID(FIK::Hierarchy *a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 7);
  if (!v3)
  {
    return -1;
  }

  v5 = a1 + 56;
  do
  {
    if (*(v3 + 8) >= a3)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a3)];
  }

  while (v3);
  if (v5 == a1 + 56 || *(v5 + 8) > a3)
  {
    return -1;
  }

  v7 = FIK::Hierarchy::nameOf(a1, *(v5 + 5));
  IKString::IKString(v10, v7);
  IKString::operator+(v10, "_Task", 5, v8);
  LODWORD(a2) = FIK::IKRigUtils::GetTaskIndexByName<FIK::GameRig>(v8, a2);
  if (v8[1])
  {
    (*(*v9 + 24))(v9, v8[0], 0, 8);
  }

  a2 = a2;
  if (v10[1])
  {
    (*(*v11 + 24))(v11, v10[0], 0, 8);
  }

  return a2;
}

uint64_t FIK::RigBuilderUtils::stringContains(char *__s, int64_t a2, const void **a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a3;
  v7 = &a3[2 * a4];
  v8 = &__s[a2];
  while (1)
  {
    v9 = v4[1];
    if (!v9)
    {
      return 1;
    }

    if (a2 >= v9)
    {
      v10 = *v4;
      v11 = **v4;
      v12 = a2;
      v13 = __s;
      do
      {
        v14 = v12 - v9;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v13, v11, v14 + 1);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (!memcmp(v15, v10, v9))
        {
          if (v16 == v8 || v16 - __s == -1)
          {
            break;
          }

          return 1;
        }

        v13 = v16 + 1;
        v12 = v8 - (v16 + 1);
      }

      while (v12 >= v9);
    }

    v4 += 2;
    if (v4 == v7)
    {
      return 0;
    }
  }
}

unint64_t FIK::RigBuilderUtils::getShortJointName(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = result - 1;
    v4 = result - 1 - 2 * result;
    while (a2 != v2)
    {
      v5 = *(v3 + a2);
      ++v2;
      ++v4;
      --v3;
      if (v5 == 47)
      {
        if (a2 + 1 != v2)
        {
          if (a2 <= a2 - v2)
          {
            abort();
          }

          return a2 - v4;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::getRigIndexForJointID(FIK::Hierarchy *a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 7);
  if (!v3)
  {
    return -1;
  }

  v5 = a1 + 56;
  do
  {
    if (*(v3 + 8) >= a3)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a3)];
  }

  while (v3);
  if (v5 == a1 + 56 || *(v5 + 8) > a3)
  {
    return -1;
  }

  v8 = FIK::Hierarchy::nameOf(a1, *(v5 + 5));
  IKString::IKString(&v10, v8);
  if (v11)
  {
    v9 = v10;
  }

  else
  {
    v9 = &unk_245A04BAE;
  }

  v6 = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v9, v11, (a2 + 208));
  if (v11)
  {
    (*(*v12 + 24))(v12, v10, 0, 8);
  }

  return v6;
}

uint64_t *FIK::PoseConverter::PoseConverter<FIK::RigBone>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = FIK::defaultAllocator(a1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v6;
  v7 = FIK::defaultAllocator(v6);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = v7;
  v8 = FIK::defaultAllocator(v7);
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v8;
  v9 = FIK::defaultAllocator(v8);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = v9;
  v10 = FIK::defaultAllocator(v9);
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = v10;
  FIK::IKArray<FIK::Transform>::reserve(a1 + 12, a3);
  FIK::IKArray<unsigned int>::reserve(a1, a3);
  if (a3)
  {
    v11 = (a2 + 64);
    v12 = a3 << 8;
    do
    {
      FIK::IKArray<FIK::Transform>::reserve(a1 + 12, a1[12] + 1);
      v13 = (a1[14] + 32 * a1[12]);
      *v13 = *v11;
      v13[1] = v11[1];
      ++a1[12];
      FIK::IKArray<unsigned int>::reserve(a1, *a1 + 1);
      v14 = *a1;
      *(a1[2] + 4 * *a1) = *(v11 - 15);
      *a1 = v14 + 1;
      v11 += 16;
      v12 -= 256;
    }

    while (v12);
  }

  FIK::PoseConverter::resetGlobalFlag(a1);
  return a1;
}

uint64_t std::destroy_n[abi:nn200100]<FIK::RigBone *,unsigned long>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      if (*(a1 + 40))
      {
        (*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 32), 0, 8);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
      }

      if (*(a1 + 16))
      {
        (*(**(a1 + 24) + 24))(*(a1 + 24), *(a1 + 8), 0, 8);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      a1 += 256;
      --v3;
    }

    while (v3);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::MoCapBone>::resize(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1 >= a2;
  v6 = *a1 - a2;
  if (v6 != 0 && v5)
  {
    result = std::destroy_n[abi:nn200100]<FIK::MoCapBone *,unsigned long>(a1[2] + 544 * a2, v6);
  }

  else
  {
    result = FIK::IKArray<FIK::MoCapBone>::reserve(a1, a2);
    v9 = *a1;
    if (a2 != *a1)
    {
      v10 = a1[2] + 544 * v9 + 256;
      v11 = v9 - a2;
      do
      {
        *(v10 - 256) = *a3;
        IKString::IKString((v10 - 248), (a3 + 8));
        IKString::IKString((v10 - 224), (a3 + 32));
        *(v10 - 192) = *(a3 + 64);
        *(v10 - 176) = *(a3 + 80);
        v12 = *(a3 + 96);
        v13 = *(a3 + 112);
        *(v10 - 128) = *(a3 + 128);
        *(v10 - 160) = v12;
        *(v10 - 144) = v13;
        *(v10 - 112) = *(a3 + 144);
        *(v10 - 96) = *(a3 + 160);
        *(v10 - 80) = *(a3 + 176);
        *(v10 - 64) = *(a3 + 192);
        *(v10 - 48) = *(a3 + 208);
        *(v10 - 32) = *(a3 + 224);
        *(v10 - 16) = *(a3 + 240);
        IKString::IKString(v10, (a3 + 256));
        *(v10 + 24) = *(a3 + 280);
        *(v10 + 32) = *(a3 + 288);
        *(v10 + 48) = *(a3 + 304);
        *(v10 + 64) = *(a3 + 320);
        *(v10 + 80) = *(a3 + 336);
        v14 = *(a3 + 352);
        *(v10 + 112) = *(a3 + 368);
        *(v10 + 96) = v14;
        *(v10 + 128) = *(a3 + 384);
        *(v10 + 144) = *(a3 + 400);
        result = FIK::IKArray<IKString>::IKArray((v10 + 160), (a3 + 416));
        *(v10 + 192) = *(a3 + 448);
        *(v10 + 208) = *(a3 + 464);
        *(v10 + 224) = *(a3 + 480);
        *(v10 + 240) = *(a3 + 496);
        *(v10 + 256) = *(a3 + 512);
        *(v10 + 272) = *(a3 + 528);
        v10 += 544;
        v5 = __CFADD__(v11++, 1);
      }

      while (!v5);
    }
  }

  *a1 = a2;
  return result;
}

uint64_t std::destroy_n[abi:nn200100]<FIK::MoCapBone *,unsigned long>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      FIK::IKArray<IKString>::~IKArray(a1 + 416);
      if (*(a1 + 264))
      {
        (*(**(a1 + 272) + 24))(*(a1 + 272), *(a1 + 256), 0, 8);
        *(a1 + 256) = 0;
        *(a1 + 264) = 0;
      }

      if (*(a1 + 40))
      {
        (*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 32), 0, 8);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
      }

      if (*(a1 + 16))
      {
        (*(**(a1 + 24) + 24))(*(a1 + 24), *(a1 + 8), 0, 8);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      a1 += 544;
      --v3;
    }

    while (v3);
  }

  return a1;
}

void FIK::IKArray<FIK::RigBone>::resize(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1 >= a2;
  v6 = *a1 - a2;
  if (v6 != 0 && v5)
  {
    std::destroy_n[abi:nn200100]<FIK::RigBone *,unsigned long>(a1[2] + (a2 << 8), v6);
  }

  else
  {
    FIK::IKArray<FIK::RigBone>::reserve(a1, a2);
    v8 = *a1;
    if (a2 != *a1)
    {
      v9 = a1[2] + (v8 << 8) + 32;
      v10 = v8 - a2;
      do
      {
        *(v9 - 32) = *a3;
        IKString::IKString((v9 - 24), (a3 + 8));
        IKString::IKString(v9, (a3 + 32));
        *(v9 + 32) = *(a3 + 64);
        *(v9 + 48) = *(a3 + 80);
        v11 = *(a3 + 96);
        v12 = *(a3 + 112);
        *(v9 + 96) = *(a3 + 128);
        *(v9 + 64) = v11;
        *(v9 + 80) = v12;
        *(v9 + 112) = *(a3 + 144);
        *(v9 + 128) = *(a3 + 160);
        *(v9 + 144) = *(a3 + 176);
        *(v9 + 160) = *(a3 + 192);
        *(v9 + 176) = *(a3 + 208);
        *(v9 + 192) = *(a3 + 224);
        *(v9 + 208) = *(a3 + 240);
        v9 += 256;
        v5 = __CFADD__(v10++, 1);
      }

      while (!v5);
    }
  }

  *a1 = a2;
}

FIK::PoseConverter *FIK::PoseConverter::PoseConverter(FIK::PoseConverter *this, const FIK::Hierarchy *a2)
{
  v4 = FIK::defaultAllocator(this);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v4;
  v5 = FIK::defaultAllocator(v4);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = v5;
  v6 = FIK::defaultAllocator(v5);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = v6;
  v7 = FIK::defaultAllocator(v6);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = v7;
  v8 = FIK::defaultAllocator(v7);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = v8;
  v9 = *a2;
  FIK::IKArray<FIK::Transform>::reserve(this + 12, *a2);
  FIK::IKArray<unsigned int>::reserve(this, v9);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = FIK::Hierarchy::localSpaceRestPose(a2, i);
      FIK::IKArray<FIK::Transform>::reserve(this + 12, *(this + 12) + 1);
      v12 = (*(this + 14) + 32 * *(this + 12));
      *v12 = *v11;
      v12[1] = v11[1];
      ++*(this + 12);
      v13 = FIK::Hierarchy::parentIndexOf(a2, i);
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = -1;
      }

      FIK::IKArray<unsigned int>::reserve(this, *this + 1);
      v16 = *this;
      *(*(this + 2) + 4 * *this) = v15;
      *this = v16 + 1;
    }
  }

  FIK::PoseConverter::resetGlobalFlag(this);
  return this;
}

void FIK::PoseConverter::resetGlobalFlag(FIK::PoseConverter *this)
{
  FIK::IKArray<FIK::Transform>::operator=(this + 8, this + 12);
  v2 = (this + 128);
  v3 = *(this + 8);
  v4 = v3;
  if (*(this + 16) <= v3)
  {
    FIK::IKArray<BOOL>::reserve(this + 16, *(this + 8));
    if (v3 != *v2)
    {
      bzero((*(this + 18) + *v2), v3 - *v2);
    }

    v4 = *(this + 8);
  }

  *v2 = v3;
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 2);
    do
    {
      if (*(v6 + 4 * v5) == -1)
      {
        *(*(this + 18) + v5) = 1;
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

void *FIK::PoseConverter::updatePose(FIK::PoseConverter *this, uint64_t a2, const FIK::Transform *a3)
{
  v5 = (*(this + 10) + 32 * a2);
  v6 = *a3;
  *v5 = *a3;
  v5[1] = *(a3 + 1);
  v7 = (*(this + 14) + 32 * a2);
  *v7 = v6;
  v7[1] = v5[1];
  v8 = FIK::PoseConverter::evaluateChildIndices(this);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v22 = FIK::defaultAllocator(v8);
  FIK::IKArray<FIK::Segment *>::reserve(v20, *(this + 12));
  result = FIK::IKArray<FIK::Segment *>::reserve(v20, v20[0] + 1);
  *(v21 + 8 * v20[0]) = a2;
  v10 = __CFADD__(v20[0], 1);
  v11 = ++v20[0];
  if (!v10)
  {
    v12 = 0;
    do
    {
      v13 = *(v21 + 8 * v12);
      v14 = *(this + 18);
      if (*(v14 + v13) == 1)
      {
        *(v14 + v13) = *(*(this + 2) + 4 * v13) == -1;
        v15 = (*(this + 14) + 32 * v13);
        v16 = (*(this + 10) + 32 * v13);
        *v16 = *v15;
        v16[1] = v15[1];
        v17 = (*(this + 6) + 32 * v13);
        v11 = v20[0];
        if (*v17)
        {
          v18 = 0;
          do
          {
            v19 = v17[2];
            result = FIK::IKArray<FIK::Segment *>::reserve(v20, v11 + 1);
            *(v21 + 8 * v20[0]) = *(v19 + 8 * v18);
            v11 = ++v20[0];
            ++v18;
          }

          while (v18 < *v17);
        }
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v20[0] = 0;
  if (v21)
  {
    return (*(*v22 + 3))(v22, v21, 0, 8);
  }

  return result;
}

unint64_t *FIK::PoseConverter::evaluateChildIndices(FIK::PoseConverter *this)
{
  v3 = *(this + 4);
  result = (this + 32);
  if (!v3)
  {
    result = FIK::IKArray<FIK::IKArray<unsigned long>>::resize(result, *(this + 8));
    v4 = *(this + 12);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = *(*(this + 2) + 4 * i);
        if ((v6 & 0x80000000) == 0 && v4 > v6)
        {
          v7 = (*(this + 6) + 32 * v6);
          result = FIK::IKArray<FIK::Segment *>::reserve(v7, *v7 + 1);
          *(v7[2] + 8 * (*v7)++) = i;
        }
      }
    }
  }

  return result;
}

void *FIK::PoseConverter::CalculateGlobalTransform(void *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this[2] + 4 * a2);
  if (this[16] > v4 && (*(this[18] + v4) & 1) == 0)
  {
    this = FIK::PoseConverter::CalculateGlobalTransform(this, *(this[2] + 4 * a2));
  }

  if ((v4 & 0x80000000) == 0)
  {
    v5 = v3[10];
    v6 = (v5 + 32 * v4);
    v7 = v3[14] + 32 * a2;
    v8 = *(v7 + 16);
    v9 = vnegq_f32(v8);
    v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
    v11 = v6[1];
    v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v11.f32, 1), vextq_s8(v10, v10, 8uLL), v11.f32[0]);
    v13 = vrev64q_s32(v8);
    v13.i32[0] = v9.i32[1];
    v13.i32[3] = v9.i32[2];
    v14 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, v11, 3), v13, v11, 2), v12);
    v15 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
    v16 = vnegq_f32(v11);
    v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v7, *v7), *v7, 0xCuLL), v16), *v7, v15);
    v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
    v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v16), v18, v15);
    v20 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, v11, 3);
    v18.i64[0] = 0x4000000040000000;
    v18.i64[1] = 0x4000000040000000;
    v21 = (v5 + 32 * a2);
    *v21 = vaddq_f32(*v6, vmlaq_f32(*v7, v18, v20));
    v21[1] = v14;
  }

  *(v3[18] + a2) = 1;
  return this;
}

unint64_t FIK::PoseConverter::GetGlobalTransform(FIK::PoseConverter *this, unint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    FIK::PoseConverter::GetGlobalTransform(this, a2);
  }

  if ((*(*(this + 18) + a2) & 1) == 0)
  {
    FIK::PoseConverter::CalculateGlobalTransform(this, a2);
  }

  return *(this + 10) + 32 * a2;
}

void *FIK::PoseConverter::getGlobalTransforms@<X0>(FIK::PoseConverter *this@<X0>, void *a2@<X8>)
{
  v3 = (this + 64);
  v4 = *(this + 8);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((*(*(this + 18) + i) & 1) == 0)
      {
        FIK::PoseConverter::CalculateGlobalTransform(this, i);
      }
    }
  }

  return FIK::IKArray<FIK::Transform>::IKArray(a2, v3);
}

uint64_t *FIK::IKArray<FIK::Transform>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v7 = a2[1];
    v8 = a1[3];
    if (v7)
    {
      v9 = (*(*v8 + 16))(a1[3], 32 * v7, 16);
      v10 = v9;
      if (32 * v7)
      {
        bzero(v9, 32 * v7);
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *a2;
    if (*a2)
    {
      v12 = a2[2];
      v13 = v10;
      do
      {
        *v13 = *v12;
        v13[1] = v12[1];
        v12 += 2;
        v13 += 2;
        --v11;
      }

      while (v11);
    }

    v15 = a1[2];
    v14 = a1[3];
    a1[1] = v7;
    a1[2] = v10;
    a1[3] = v8;
    if (v15)
    {
      (*(*v14 + 24))(v14, v15, 0, 8);
    }
  }

  else
  {
    *a1 = 0;
    v4 = *a2;
    if (*a2)
    {
      v5 = a1[2];
      v6 = a2[2];
      do
      {
        *v5 = *v6;
        v5[1] = v6[1];
        v6 += 2;
        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

void *FIK::IKArray<FIK::IKArray<unsigned long>>::resize(unint64_t *a1, unint64_t a2)
{
  v2 = a1[3];
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v6 = v2;
  result = FIK::IKArray<FIK::IKArray<unsigned long>>::resize(a1, a2, v4);
  v4[0] = 0;
  if (v5)
  {
    return (*(*v6 + 24))(v6, v5, 0, 8);
  }

  return result;
}

void *FIK::IKArray<FIK::IKArray<unsigned long>>::resize(unint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a1 >= a2;
  v6 = *a1 - a2;
  if (v6 != 0 && v5)
  {
    result = std::destroy_n[abi:nn200100]<FIK::IKArray<unsigned long> *,unsigned long>(a1[2] + 32 * a2, v6);
  }

  else
  {
    result = FIK::IKArray<FIK::IKArray<unsigned long>>::reserve(a1, a2);
    v9 = *a1;
    if (a2 != *a1)
    {
      result = (a1[2] + 32 * v9);
      v10 = v9 - a2;
      do
      {
        result = FIK::IKArray<FIK::Task *>::IKArray(result, a3) + 4;
        v5 = __CFADD__(v10++, 1);
      }

      while (!v5);
    }
  }

  *a1 = a2;
  return result;
}

FIK *FIK::MoCapRigBuilder::createMoCapRig@<X0>(FIK::Hierarchy *a1@<X0>, FIK::Hierarchy *a2@<X1>, int *a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>, int *x6_0@<X6>, uint64_t x7_0@<X7>, int *a8, uint64_t a9)
{
  v14 = a5;
  v145 = *MEMORY[0x277D85DE8];
  result = FIK::RigBuilderUtils::hasAllExpectedJoints<FIK::BipedIdentifiers::Joint>(a1 + 32, a5, a6);
  if (result && (*(a1 + 36) & 1) != 0 && (result = FIK::RigBuilderUtils::hasAllExpectedJoints<FIK::BipedIdentifiers::Joint>(a2 + 32, v14, a6), result) && (*(a2 + 36) & 1) != 0)
  {
    v99 = a7;
    v100 = a6;
    v97 = x6_0;
    v98 = x7_0;
    v129 = 0;
    v128 = 0;
    v130 = FIK::defaultAllocator(result);
    *v131 = 1065353216;
    *&v131[4] = xmmword_245A02320;
    v131[20] = 1;
    *v133 = 0x3F80000040800000;
    *&v133[8] = 1;
    v133[10] = 0;
    *&v133[12] = 0uLL;
    *&v133[28] = 0x3F80000000000000;
    *&v133[36] = 0;
    v134 = 1117782016;
    *v135 = 1;
    *&v135[4] = 257;
    v135[6] = 1;
    v136 = xmmword_245A022C0;
    *v137 = 0x4000000040000000;
    memset(&v137[12], 0, 28);
    *&v137[8] = 0x40000000;
    *&v137[40] = v130;
    v138 = 0uLL;
    v139 = __PAIR128__(v130, 0);
    v140 = 0uLL;
    v141 = __PAIR128__(v130, 0);
    v142 = 0uLL;
    v143 = xmmword_245A01E80;
    LOBYTE(v144) = 0;
    HIDWORD(v144) = 1065353216;
    *&v131[24] = 1;
    *&v132 = 0x3727C5AC3D4CCCCDLL;
    *(&v132 + 1) = 0x3C3F800000;
    v101 = a1;
    FIK::RigBuilderUtils::addTargetsToRig<FIK::MoCapRig>(a1, &v128);
    v20 = *a2;
    if (*a2)
    {
      v21 = 0;
      while (1)
      {
        v102 = -1;
        v103 = 0;
        v104 = 0;
        v106 = 0;
        v107 = 0;
        v105 = *(&v141 + 1);
        v108 = *(&v141 + 1);
        v109 = 0uLL;
        v110 = xmmword_245A01E80;
        v22 = FIK::Hierarchy::localSpaceRestPose(a2, v21);
        v109 = *v22;
        v110 = v22[1];
        v23 = FIK::Hierarchy::nameOf(a2, v21);
        v24 = v23[1];
        v25 = v24 ? *v23 : &unk_245A04BAE;
        IKString::assign(&v103, v25, v24);
        v26 = FIK::Hierarchy::parentIndexOf(a2, v21);
        v27 = v26;
        v29 = v28;
        if ((v28 & 1) == 0)
        {
          break;
        }

        v30 = FIK::Hierarchy::nameOf(a2, v26);
        IKString::IKString(&v125, v30);
        v31 = v126;
        if (!v126)
        {
          goto LABEL_14;
        }

        v32 = v125;
LABEL_15:
        IKString::assign(&v106, v32, v31);
        if (v126)
        {
          (*(*v127 + 3))(v127, v125, 0, 8);
        }

        if (v29)
        {
          v34 = v27;
        }

        else
        {
          v34 = -1;
        }

        HIDWORD(v102) = v34;
        FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase&,void>(&v140, &v102);
        if (v107)
        {
          (*(*v108 + 24))(v108, v106, 0, 8);
          v106 = 0;
          v107 = 0;
        }

        if (v104)
        {
          (*(*v105 + 24))(v105, v103, 0, 8);
        }

        if (v20 == ++v21)
        {
          goto LABEL_25;
        }
      }

      v33 = FIK::defaultAllocator(v26);
      v31 = 0;
      v126 = 0;
      v125 = 0;
      v127 = v33;
LABEL_14:
      v32 = &unk_245A04BAE;
      goto LABEL_15;
    }

LABEL_25:
    if (v100)
    {
      v35 = &v14[v100];
      v36 = (a1 + 56);
      v37 = (a2 + 56);
      do
      {
        v38 = *v14;
        v39 = *v36;
        if (!*v36)
        {
          goto LABEL_34;
        }

        v40 = v36;
        do
        {
          if (*(v39 + 32) >= v38)
          {
            v40 = v39;
          }

          v39 = *(v39 + 8 * (*(v39 + 32) < v38));
        }

        while (v39);
        if (v40 == v36 || v38 < *(v40 + 8))
        {
LABEL_34:
          v40 = v36;
        }

        v41 = *v37;
        if (!*v37)
        {
          goto LABEL_42;
        }

        v42 = (a2 + 56);
        do
        {
          if (*(v41 + 32) >= v38)
          {
            v42 = v41;
          }

          v41 = *(v41 + 8 * (*(v41 + 32) < v38));
        }

        while (v41);
        if (v42 == v37 || v38 < *(v42 + 8))
        {
LABEL_42:
          v42 = (a2 + 56);
        }

        if (v38 <= 31)
        {
          if (v38)
          {
            if (v38 == 8)
            {
              FIK::MoCapTaskFactory::chestTask(v130, v19, &v102);
            }

            else
            {
              if (v38 != 14)
              {
                goto LABEL_105;
              }

              FIK::MoCapTaskFactory::headTask(v130, v19, &v102);
            }

            goto LABEL_58;
          }

          goto LABEL_57;
        }

        if (v38 > 40)
        {
          if (v38 != 41)
          {
            if (v38 != 43)
            {
LABEL_105:
              FIK::GameRigBuilder::createGameRig(v130, v19);
            }

            goto LABEL_57;
          }
        }

        else if (v38 != 32)
        {
          if (v38 != 34)
          {
            goto LABEL_105;
          }

LABEL_57:
          FIK::MoCapTaskFactory::hipsTask(v130, v19, &v102);
          goto LABEL_58;
        }

        FIK::MoCapTaskFactory::kneeTask(v130, v19, &v102);
LABEL_58:
        v43 = v40[5];
        v44 = FIK::Hierarchy::nameOf(v101, v43);
        v45 = *(v44 + 8);
        if (v45)
        {
          v46 = *v44;
        }

        else
        {
          v46 = &unk_245A04BAE;
        }

        IKString::assign(&v105, v46, v45);
        IKString::operator+(&v105, "_Task", 5, &v125);
        IKString::operator=(&v102, &v125);
        if (v126)
        {
          (*(*v127 + 3))(v127, v125, 0, 8);
        }

        LODWORD(v108) = v43;
        v47 = v42[5];
        v48 = FIK::Hierarchy::nameOf(a2, v47);
        v49 = *(v48 + 8);
        if (v49)
        {
          v50 = *v48;
        }

        else
        {
          v50 = &unk_245A04BAE;
        }

        IKString::assign(&v111, v50, v49);
        v114 = v47;
        FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask&,void>(&v137[16], &v102);
        if (v112)
        {
          (*(*v113 + 24))(v113, v111, 0, 8);
          v111 = 0;
          v112 = 0;
        }

        if (v106)
        {
          (*(*v107 + 24))(v107, v105, 0, 8);
          v105 = 0;
          v106 = 0;
        }

        if (v103)
        {
          (*(*v104 + 24))(v104, v102, 0, 8);
        }

        ++v14;
      }

      while (v14 != v35);
    }

    v51 = v104;
    v52 = v102;
    if (v102)
    {
      v53 = 280;
      do
      {
        v55 = *v51++;
        v54 = v55;
        if (v55 != -1)
        {
          v56 = v139;
          v57 = FIK::Hierarchy::nameOf(a2, v54);
          v58 = (v56 + v53);
          v59 = *(v57 + 8);
          if (v59)
          {
            v60 = *v57;
          }

          else
          {
            v60 = &unk_245A04BAE;
          }

          IKString::assign(v58 - 3, v60, v59);
          *v58 = v54;
        }

        v53 += 544;
        --v52;
      }

      while (v52);
      v51 = v104;
    }

    v102 = 0;
    if (v51)
    {
      (*(*v105 + 24))(v105, v51, 0, 8);
    }

    FIK::PoseConverter::PoseConverter(&v102, v101);
    FIK::PoseConverter::PoseConverter(&v125, a2);
    HIDWORD(v144) = FIK::AutoMatch::calculateSourceScale(&v124, &v122, &v123, &v121).u32[0];
    FIK::AutoMatch::calculateSourceTransform((v101 + 8), a2 + 32, &v124, &v123, v120);
    v61 = FIK::CharacterisedHierarchy::getHierarchyIndexFromJointID<FIK::BipedIdentifiers::Joint>(v101, 0);
    v62 = FIK::Hierarchy::localSpaceRestPose(v101, v61);
    v63 = vmulq_f32(*v62, *v62);
    if ((v63.f32[2] + vaddv_f32(*v63.f32)) <= 0.01)
    {
      v64 = v120[0];
    }

    else
    {
      v118 = v120[0];
      v118.i32[FIK::IKRigUtils::getIndexForAxis(v101[11])] = 0;
      v64 = v118;
      v120[0] = v118;
    }

    v142 = v64;
    v143 = v120[1];
    if (*&v137[16])
    {
      v65 = *&v137[16] << 8;
      v66 = (*&v137[32] + 224);
      do
      {
        GlobalTransform = FIK::PoseConverter::GetGlobalTransform(&v102, *(v66 - 44));
        v68 = FIK::PoseConverter::GetGlobalTransform(&v125, *(v66 - 6));
        LODWORD(v69) = HIDWORD(v144);
        FIK::AutoMatch::calculateTaskOffset(GlobalTransform, v68, &v142, &v118, v69);
        *(v66 - 1) = v118;
        *v66 = v119;
        v66 += 16;
        v65 -= 256;
      }

      while (v65);
    }

    v70 = v138;
    if (v138)
    {
      v71 = 0;
      v72 = 336;
      do
      {
        v73 = v139;
        v74 = v139 + v72;
        v75 = *(v139 + v72 - 56);
        if (v75 != -1)
        {
          v76 = FIK::PoseConverter::GetGlobalTransform(&v102, v71);
          v77 = FIK::PoseConverter::GetGlobalTransform(&v125, v75);
          FIK::AutoMatch::calculateSourceOffset(v76, v77, &v142, &v118);
          v78 = v119;
          *(v74 - 48) = 0u;
          *(v74 - 32) = v78;
          v79 = *(v141 + 96 * v75 + 4);
          v80 = *(v74 - 332);
          if (v80 == -1)
          {
            v117[0] = 0uLL;
            v82 = xmmword_245A01E80;
          }

          else
          {
            v81 = FIK::PoseConverter::GetGlobalTransform(&v102, v80);
            v82 = v81[1];
            v117[0] = *v81;
          }

          v117[1] = v82;
          if (v79 == -1)
          {
            v116[0] = 0uLL;
            v84 = xmmword_245A01E80;
          }

          else
          {
            v83 = FIK::PoseConverter::GetGlobalTransform(&v125, v79);
            v84 = v83[1];
            v116[0] = *v83;
          }

          v116[1] = v84;
          FIK::AutoMatch::calculateSourceParentOffset(v117, v116, &v142, v115);
          v85 = v115[1];
          v86 = (v73 + v72);
          v86[-1] = 0u;
          *v86 = v85;
          v70 = v138;
        }

        ++v71;
        v72 += 544;
      }

      while (v71 < v70);
    }

    FIK::PoseConverter::~PoseConverter(&v125);
    FIK::PoseConverter::~PoseConverter(&v102);
    FIK::RigBuilderUtils::cullJointsFromRig<FIK::MoCapRig,FIK::MoCapBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(v101, 0, v97, v98, a8, a9, &v128);
    v87 = IKString::IKString(v99, &v128, v130);
    *(v87 + 3) = *v131;
    *(v87 + 36) = *&v131[12];
    v88 = *v133;
    *(v87 + 4) = v132;
    *(v87 + 5) = v88;
    v89 = *&v137[16];
    *(v87 + 6) = *&v133[16];
    v87[14] = *&v133[32];
    *(v87 + 30) = v134;
    *(v87 + 131) = *&v135[3];
    *(v87 + 32) = *v135;
    v90 = *v137;
    *(v87 + 9) = v136;
    *(v87 + 10) = v90;
    memset(&v137[16], 0, 24);
    v91 = *&v137[32];
    v92 = v138;
    *(v87 + 11) = v89;
    *(v87 + 12) = v91;
    v138 = 0u;
    v93 = v139;
    v94 = v140;
    *&v139 = 0;
    *(v87 + 13) = v92;
    *(v87 + 14) = v93;
    v140 = 0u;
    v95 = v141;
    v96 = v143;
    *&v141 = 0;
    *(v87 + 15) = v94;
    *(v87 + 16) = v95;
    *(v87 + 17) = v142;
    *(v87 + 18) = v96;
    v87[38] = v144;
    *(v87 + 320) = 1;
    FIK::IKArray<FIK::RigBoneBase>::~IKArray(&v140);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(&v138);
    result = FIK::IKArray<FIK::MoCapTask>::~IKArray(&v137[16]);
    if (v129)
    {
      return (*(*v130 + 24))(v130, v128, 0, 8);
    }
  }

  else
  {
    *a7 = 0;
    *(a7 + 320) = 0;
  }

  return result;
}

uint64_t *FIK::anonymous namespace::disableUnmatchedJointsInGroupAndDescendents<FIK::BipedIdentifiers::Group>(uint64_t *this, int a2, uint64_t a3)
{
  v3 = this[10];
  if (v3)
  {
    v5 = this;
    v6 = this + 10;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v6 != this + 10 && *(v6 + 8) <= a2)
    {
      v7 = v6[5];
      if (v7)
      {
        v8 = v6[7];
        v9 = &v8[v7];
        do
        {
          v10 = *v8;
          v11 = *(a3 + 224) + 544 * *v8;
          if (*(v11 + 280) == -1)
          {
            *(v11 + 96) = 0;
          }

          this = FIK::Hierarchy::descendentIndicesOf(&v17, v5, v10);
          v12 = v18;
          if (v17)
          {
            v13 = *(a3 + 224);
            v14 = 8 * v17;
            v15 = v18;
            do
            {
              v16 = v13 + 544 * *v15;
              if (*(v16 + 280) == -1)
              {
                *(v16 + 96) = 0;
              }

              ++v15;
              v14 -= 8;
            }

            while (v14);
          }

          v17 = 0;
          if (v12)
          {
            this = (*(*v19 + 24))(v19, v12, 0, 8);
          }

          ++v8;
        }

        while (v8 != v9);
      }
    }
  }

  return this;
}

void FIK::RigBuilderUtils::cullJointsFromRig<FIK::MoCapRig,FIK::MoCapBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::Hierarchy *this, int a2, int *a3, uint64_t a4, int *a5, uint64_t a6, void *a7)
{
  v42 = a7[2];
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v14 = this + 56;
  v13 = *(this + 7);
  if (v13)
  {
    v15 = this + 56;
    do
    {
      if (*(v13 + 8) >= a2)
      {
        v15 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < a2)];
    }

    while (v13);
    if (v15 != v14 && *(v15 + 8) <= a2)
    {
      v16 = FIK::Hierarchy::nameOf(this, *(v15 + 5));
      IKString::IKString(&v43, v16);
      if (v44)
      {
        v17 = v43;
      }

      else
      {
        v17 = &unk_245A04BAE;
      }

      FIK::Hierarchy::ancestorsOf(this, v17, v44, v49);
      if (v49[0])
      {
        v18 = v50;
        v19 = 24 * v49[0];
        do
        {
          std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v18, v18);
          v18 = (v18 + 24);
          v19 -= 24;
        }

        while (v19);
      }

      FIK::IKArray<IKString>::~IKArray(v49);
      if (v44)
      {
        (*(*v45 + 24))(v45, v43, 0, 8);
      }
    }
  }

  if (a4)
  {
    v20 = &a3[a4];
    do
    {
      v21 = *v14;
      if (*v14)
      {
        v22 = *a3;
        v23 = v14;
        do
        {
          if (*(v21 + 32) >= v22)
          {
            v23 = v21;
          }

          v21 = *(v21 + 8 * (*(v21 + 32) < v22));
        }

        while (v21);
        if (v23 != v14 && v22 >= *(v23 + 8))
        {
          v24 = FIK::Hierarchy::nameOf(this, *(v23 + 5));
          IKString::IKString(&v43, v24);
          std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, &v43, &v43);
          if (v44)
          {
            v25 = v43;
          }

          else
          {
            v25 = &unk_245A04BAE;
          }

          FIK::Hierarchy::descendentsOf(this, v25, v44, v49);
          if (v49[0])
          {
            v26 = v50;
            v27 = 24 * v49[0];
            do
            {
              std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v26, v26);
              v26 = (v26 + 24);
              v27 -= 24;
            }

            while (v27);
          }

          FIK::IKArray<IKString>::~IKArray(v49);
          if (v44)
          {
            (*(*v45 + 24))(v45, v43, 0, 8);
          }
        }
      }

      ++a3;
    }

    while (a3 != v20);
  }

  if (a6)
  {
    v28 = &a5[a6];
    v29 = (this + 80);
    do
    {
      v30 = *v29;
      if (*v29)
      {
        v31 = *a5;
        v32 = (this + 80);
        do
        {
          if (*(v30 + 8) >= v31)
          {
            v32 = v30;
          }

          v30 = *&v30[8 * (*(v30 + 8) < v31)];
        }

        while (v30);
        if (v32 != v29 && v31 >= *(v32 + 8))
        {
          v33 = v32[5];
          if (v33)
          {
            v34 = v32[7];
            v35 = &v34[v33];
            do
            {
              v36 = FIK::Hierarchy::nameOf(this, *v34);
              IKString::IKString(&v43, v36);
              std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, &v43, &v43);
              if (v44)
              {
                v37 = v43;
              }

              else
              {
                v37 = &unk_245A04BAE;
              }

              FIK::Hierarchy::descendentsOf(this, v37, v44, v49);
              if (v49[0])
              {
                v38 = v50;
                v39 = 24 * v49[0];
                do
                {
                  std::__tree<IKString>::__emplace_unique_key_args<IKString,IKString const&>(&v46, v38, v38);
                  v38 = (v38 + 24);
                  v39 -= 24;
                }

                while (v39);
              }

              FIK::IKArray<IKString>::~IKArray(v49);
              if (v44)
              {
                (*(*v45 + 24))(v45, v43, 0, 8);
              }

              ++v34;
            }

            while (v34 != v35);
          }
        }
      }

      ++a5;
    }

    while (a5 != v28);
  }

  if (v48)
  {
    FIK::IKArray<FIK::MoCapBone>::IKArray<FIK::MoCapBone,void>(v49, a7[26] - v48, v42);
    v40 = a7[28];
    v41 = v40 + 544 * a7[26];
    v43 = &v46;
    std::__copy_if[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone const>,FIK::IKArrayIterator<FIK::MoCapBone const>,FIK::IKArrayIterator<FIK::MoCapBone>,std::__identity,void FIK::RigBuilderUtils::cullJointsFromRig<FIK::MoCapRig,FIK::MoCapBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::CharacterisedHierarchy const&,FIK::BipedIdentifiers::Joint,FIK::IKArrayView<FIK::BipedIdentifiers::Joint const>,FIK::IKArrayView<FIK::BipedIdentifiers::Group const>,FIK::MoCapRig &)::{lambda(FIK::MoCapBone const&)#1}>(v40, v41, v50, &v43);
    if (v49[0])
    {
      IKString::assign(v50 + 4, &unk_245A04BAE, 0);
    }

    FIK::IKArray<FIK::MoCapBone>::operator=(a7 + 26, v49);
    FIK::Serialisation::fixUpRigIndices(a7);
    FIK::IKArray<FIK::MoCapBone>::~IKArray(v49);
  }

  std::__tree<IKString>::destroy(&v46, v47);
}

void *FIK::IKArray<FIK::MoCapBone>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 544 * a2;
    v6 = (*(*a3 + 16))(a3, 544 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::MoCapBone>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = result[2] + 256;
    do
    {
      result = FIK::IKArray<IKString>::~IKArray(v3 + 160);
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      if (*(v3 - 216))
      {
        result = (*(**(v3 - 208) + 24))(*(v3 - 208), *(v3 - 224), 0, 8);
        *(v3 - 224) = 0;
        *(v3 - 216) = 0;
      }

      if (*(v3 - 240))
      {
        result = (*(**(v3 - 232) + 24))(*(v3 - 232), *(v3 - 248), 0, 8);
        *(v3 - 248) = 0;
        *(v3 - 240) = 0;
      }

      v3 += 544;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

void *FIK::IKArray<IKString>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = result[2];
    do
    {
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
  }

  *v1 = 0;
  return result;
}

__n128 FIK::anonymous namespace::getGlobalJointPosition<FIK::BipedIdentifiers::Joint>@<Q0>(uint64_t a1@<X0>, FIK::PoseConverter *a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v7 = FIK::CharacterisedHierarchy::getHierarchyIndexFromJointID<FIK::BipedIdentifiers::Joint>(a1, a3);
  if (v7 == -1)
  {
  }

  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(a2, v7);
  result = *GlobalTransform;
  *a4 = *GlobalTransform;
  return result;
}

uint64_t *FIK::IKArray<FIK::MoCapBone>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v12 = a2[1];
    v13 = a1[3];
    if (v12)
    {
      v14 = (*(*v13 + 16))(a1[3], 544 * v12, 16);
      v15 = v14;
      if (544 * v12)
      {
        bzero(v14, 544 * v12);
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = *a2;
    if (*a2)
    {
      v17 = 0;
      v18 = a2[2];
      do
      {
        v19 = v15 + v17;
        *(v15 + v17) = *(v18 + v17);
        IKString::IKString((v15 + v17 + 8), (v18 + v17 + 8));
        IKString::IKString((v15 + v17 + 32), (v18 + v17 + 32));
        *(v19 + 64) = *(v18 + v17 + 64);
        *(v19 + 80) = *(v18 + v17 + 80);
        v20 = *(v18 + v17 + 96);
        v21 = *(v18 + v17 + 112);
        *(v19 + 128) = *(v18 + v17 + 128);
        *(v19 + 96) = v20;
        *(v19 + 112) = v21;
        *(v19 + 144) = *(v18 + v17 + 144);
        *(v19 + 160) = *(v18 + v17 + 160);
        *(v19 + 176) = *(v18 + v17 + 176);
        *(v19 + 192) = *(v18 + v17 + 192);
        *(v19 + 208) = *(v18 + v17 + 208);
        *(v19 + 224) = *(v18 + v17 + 224);
        *(v19 + 240) = *(v18 + v17 + 240);
        IKString::IKString((v15 + v17 + 256), (v18 + v17 + 256));
        *(v19 + 280) = *(v18 + v17 + 280);
        *(v19 + 288) = *(v18 + v17 + 288);
        *(v19 + 304) = *(v18 + v17 + 304);
        *(v19 + 320) = *(v18 + v17 + 320);
        *(v19 + 336) = *(v18 + v17 + 336);
        v22 = *(v18 + v17 + 352);
        *(v19 + 368) = *(v18 + v17 + 368);
        *(v19 + 352) = v22;
        *(v19 + 384) = *(v18 + v17 + 384);
        *(v19 + 400) = *(v18 + v17 + 400);
        FIK::IKArray<IKString>::IKArray((v15 + v17 + 416), (v18 + v17 + 416));
        *(v19 + 448) = *(v18 + v17 + 448);
        *(v19 + 464) = *(v18 + v17 + 464);
        *(v19 + 480) = *(v18 + v17 + 480);
        *(v19 + 496) = *(v18 + v17 + 496);
        *(v19 + 512) = *(v18 + v17 + 512);
        *(v19 + 528) = *(v18 + v17 + 528);
        v17 += 544;
        --v16;
      }

      while (v16);
    }

    v24 = a1[2];
    v23 = a1[3];
    a1[1] = v12;
    a1[2] = v15;
    a1[3] = v13;
    if (v24)
    {
      (*(*v23 + 24))(v23, v24, 0, 8);
    }
  }

  else
  {
    FIK::IKArray<FIK::MoCapBone>::clear(a1);
    v4 = *a2;
    if (*a2)
    {
      v5 = 0;
      v6 = a1[2];
      v7 = a2[2];
      do
      {
        v8 = v6 + v5;
        *(v6 + v5) = *(v7 + v5);
        IKString::IKString((v6 + v5 + 8), (v7 + v5 + 8));
        IKString::IKString((v6 + v5 + 32), (v7 + v5 + 32));
        *(v8 + 64) = *(v7 + v5 + 64);
        *(v8 + 80) = *(v7 + v5 + 80);
        v9 = *(v7 + v5 + 96);
        v10 = *(v7 + v5 + 112);
        *(v8 + 128) = *(v7 + v5 + 128);
        *(v8 + 96) = v9;
        *(v8 + 112) = v10;
        *(v8 + 144) = *(v7 + v5 + 144);
        *(v8 + 160) = *(v7 + v5 + 160);
        *(v8 + 176) = *(v7 + v5 + 176);
        *(v8 + 192) = *(v7 + v5 + 192);
        *(v8 + 208) = *(v7 + v5 + 208);
        *(v8 + 224) = *(v7 + v5 + 224);
        *(v8 + 240) = *(v7 + v5 + 240);
        IKString::IKString((v6 + v5 + 256), (v7 + v5 + 256));
        *(v8 + 280) = *(v7 + v5 + 280);
        *(v8 + 288) = *(v7 + v5 + 288);
        *(v8 + 304) = *(v7 + v5 + 304);
        *(v8 + 320) = *(v7 + v5 + 320);
        *(v8 + 336) = *(v7 + v5 + 336);
        v11 = *(v7 + v5 + 352);
        *(v8 + 368) = *(v7 + v5 + 368);
        *(v8 + 352) = v11;
        *(v8 + 384) = *(v7 + v5 + 384);
        *(v8 + 400) = *(v7 + v5 + 400);
        FIK::IKArray<IKString>::IKArray((v6 + v5 + 416), (v7 + v5 + 416));
        *(v8 + 448) = *(v7 + v5 + 448);
        *(v8 + 464) = *(v7 + v5 + 464);
        *(v8 + 480) = *(v7 + v5 + 480);
        *(v8 + 496) = *(v7 + v5 + 496);
        *(v8 + 512) = *(v7 + v5 + 512);
        *(v8 + 528) = *(v7 + v5 + 528);
        v5 += 544;
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

void *FIK::IKArray<FIK::MoCapBone>::IKArray<FIK::MoCapBone,void>(void *a1, uint64_t a2, FIK::Allocator *a3)
{
  v4 = a2;
  *a1 = a2;
  FIK::IKArray<FIK::MoCapBone>::MemoryBlock::MemoryBlock(a1 + 1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, a3);
  v6 = a1[2];
  FIK::MoCapBone::MoCapBone(&v12, a3);
  if (v4)
  {
    v7 = v6 + 256;
    do
    {
      *(v7 - 256) = v12;
      IKString::IKString((v7 - 248), v13);
      IKString::IKString((v7 - 224), &v15);
      *(v7 - 192) = v18;
      *(v7 - 176) = v19;
      v8 = v20;
      v9 = v21;
      *(v7 - 128) = v22;
      *(v7 - 160) = v8;
      *(v7 - 144) = v9;
      *(v7 - 112) = v23;
      *(v7 - 96) = v24;
      *(v7 - 80) = v25;
      *(v7 - 64) = v26;
      *(v7 - 48) = v27;
      *(v7 - 32) = v28;
      *(v7 - 16) = v29;
      IKString::IKString(v7, &v30);
      *(v7 + 24) = v33;
      *(v7 + 32) = v34;
      *(v7 + 48) = v35;
      *(v7 + 64) = v36;
      *(v7 + 80) = v37;
      v10 = v38;
      *(v7 + 112) = v39;
      *(v7 + 96) = v10;
      *(v7 + 128) = v40;
      *(v7 + 144) = v41;
      FIK::IKArray<IKString>::IKArray((v7 + 160), v42);
      *(v7 + 192) = v43;
      *(v7 + 208) = v44;
      *(v7 + 224) = v45;
      *(v7 + 240) = v46;
      *(v7 + 256) = v47;
      *(v7 + 272) = v48;
      v7 += 544;
      --v4;
    }

    while (v4);
  }

  FIK::IKArray<IKString>::~IKArray(v42);
  if (v31)
  {
    (*(*v32 + 24))(v32, v30, 0, 8);
    v30 = 0;
    v31 = 0;
  }

  if (v16)
  {
    (*(*v17 + 24))(v17, v15, 0, 8);
    v15 = 0;
    v16 = 0;
  }

  if (v13[1])
  {
    (*(*v14 + 24))(v14, v13[0], 0, 8);
  }

  return a1;
}

uint64_t std::__copy_if[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone const>,FIK::IKArrayIterator<FIK::MoCapBone const>,FIK::IKArrayIterator<FIK::MoCapBone>,std::__identity,void FIK::RigBuilderUtils::cullJointsFromRig<FIK::MoCapRig,FIK::MoCapBone,FIK::BipedIdentifiers::Joint,FIK::BipedIdentifiers::Group>(FIK::CharacterisedHierarchy const&,FIK::BipedIdentifiers::Joint,FIK::IKArrayView<FIK::BipedIdentifiers::Joint const>,FIK::IKArrayView<FIK::BipedIdentifiers::Group const>,FIK::MoCapRig &)::{lambda(FIK::MoCapBone const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, void ***a4)
{
  v5 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v6 = a2;
  do
  {
    if (*a4 + 1 == std::__find[abi:nn200100]<std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,std::__tree_const_iterator<IKString,std::__tree_node<IKString,void *> *,long>,IKString,std::__identity>(**a4, *a4 + 1, v5 + 8))
    {
      *a3 = *v5;
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 8);
      }

      else
      {
        v9 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 8), v9, v8);
      v10 = *(v5 + 40);
      if (v10)
      {
        v11 = *(v5 + 32);
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 32), v11, v10);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 80) = *(v5 + 80);
      v12 = *(v5 + 96);
      v13 = *(v5 + 112);
      *(a3 + 128) = *(v5 + 128);
      *(a3 + 96) = v12;
      *(a3 + 112) = v13;
      *(a3 + 144) = *(v5 + 144);
      *(a3 + 160) = *(v5 + 160);
      *(a3 + 176) = *(v5 + 176);
      *(a3 + 192) = *(v5 + 192);
      *(a3 + 208) = *(v5 + 208);
      *(a3 + 224) = *(v5 + 224);
      *(a3 + 240) = *(v5 + 240);
      v14 = *(v5 + 264);
      if (v14)
      {
        v15 = *(v5 + 256);
      }

      else
      {
        v15 = &unk_245A04BAE;
      }

      IKString::assign((a3 + 256), v15, v14);
      *(a3 + 280) = *(v5 + 280);
      *(a3 + 288) = *(v5 + 288);
      *(a3 + 304) = *(v5 + 304);
      *(a3 + 320) = *(v5 + 320);
      *(a3 + 336) = *(v5 + 336);
      v16 = *(v5 + 352);
      *(a3 + 368) = *(v5 + 368);
      *(a3 + 352) = v16;
      *(a3 + 384) = *(v5 + 384);
      *(a3 + 400) = *(v5 + 400);
      FIK::IKArray<IKString>::operator=((a3 + 416), (v5 + 416));
      *(a3 + 448) = *(v5 + 448);
      *(a3 + 464) = *(v5 + 464);
      *(a3 + 480) = *(v5 + 480);
      *(a3 + 496) = *(v5 + 496);
      *(a3 + 512) = *(v5 + 512);
      *(a3 + 528) = *(v5 + 528);
      a3 += 544;
    }

    v5 += 544;
  }

  while (v5 != v6);
  return v6;
}

uint64_t *FIK::IKArray<IKString>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  if (*a2 >= a1[1])
  {
    v10 = a2[1];
    v11 = a1[3];
    if (v10)
    {
      a1 = (*(*v11 + 16))(a1[3], 24 * v10, 8);
      v12 = a1;
      if (24 * v10)
      {
        bzero(a1, 24 * v10);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *a2;
    if (*a2)
    {
      v14 = (a2[2] + 8);
      v15 = v12;
      do
      {
        v16 = FIK::defaultAllocator(a1);
        *v15 = 0;
        v15[1] = 0;
        v15[2] = v16;
        if (*v14)
        {
          v17 = *(v14 - 1);
        }

        else
        {
          v17 = &unk_245A04BAE;
        }

        IKString::assign(v15, v17, *v14);
        v15 += 3;
        v14 += 3;
        --v13;
      }

      while (v13);
    }

    v19 = v3[2];
    v18 = v3[3];
    v3[1] = v10;
    v3[2] = v12;
    v3[3] = v11;
    if (v19)
    {
      (*(*v18 + 24))(v18, v19, 0, 8);
    }
  }

  else
  {
    v4 = FIK::IKArray<IKString>::clear(a1);
    v5 = *a2;
    if (*a2)
    {
      v6 = v3[2];
      v7 = (a2[2] + 8);
      do
      {
        v8 = FIK::defaultAllocator(v4);
        *v6 = 0;
        v6[1] = 0;
        v6[2] = v8;
        if (*v7)
        {
          v9 = *(v7 - 1);
        }

        else
        {
          v9 = &unk_245A04BAE;
        }

        IKString::assign(v6, v9, *v7);
        v6 += 3;
        v7 += 3;
        --v5;
      }

      while (v5);
    }
  }

  *v3 = *a2;
  return v3;
}

uint64_t FIK::IKRigUtils::rebalanceTaskWeights(uint64_t result, uint64_t a2)
{
  v2 = *(result + 176);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 192);
    v5 = &v4[3].i8[4];
    v6 = 240 * v2;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      if (*v5 == 1)
      {
        v10 = *(v5 + 28);
        v7 = v7 + (COERCE_FLOAT(*(v5 + 36)) + vaddv_f32(*v10.f32));
        v10.f32[3] = v8;
        v8 = vmaxvq_f32(v10);
      }

      if (v5[1] == 1)
      {
        v9 = v9 + (COERCE_FLOAT(*(v5 + 52)) + vaddv_f32(*(v5 + 44)));
      }

      v5 += 240;
      v6 -= 240;
    }

    while (v6);
    v11 = v9 + v7;
    if ((v9 + v7) > 0.0 && v8 > 0.0 || (v17 = v8, v16 = ikinemaLogObject(result, a2), result = ikinemaAssertHandler(*v16, 0, "rebalanceTaskWeights", "(totalWeight > 0 && pMax > 0) No active tasks"), v8 = v17, v4 = *(v3 + 192), (v2 = *(v3 + 176)) != 0))
    {
      v12 = 10.0 / v8;
      if ((10.0 / v8) >= (100.0 / v11))
      {
        v12 = 100.0 / v11;
      }

      v13 = fminf(v12, 1.0);
      v14 = v4 + 6;
      v15 = 240 * v2;
      do
      {
        if (v14[-3].i8[4] == 1)
        {
          v14[-1] = vmulq_n_f32(v14[-1], v13);
        }

        if (v14[-3].i8[5] == 1)
        {
          *v14 = vmulq_n_f32(*v14, v13);
        }

        v14 += 15;
        v15 -= 240;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t FIK::IKRigUtils::getIndexForAxis(uint64_t result)
{
  if (result <= 2)
  {
    return result;
  }

  else
  {
    return (result - 3);
  }
}

float FIK::IKRigUtils::getUnitVecForAxis@<S0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 5)
  {
    result = flt_245A03C1C[a1];
    v3 = dword_245A03C34[a1];
    v4 = dword_245A03C4C[a1];
    *a2 = result;
    *(a2 + 4) = v3;
    *(a2 + 8) = v4;
    *(a2 + 12) = 0;
  }

  return result;
}

uint64_t FIK::IKRigUtils::highestMagnitudeAxis(float32x4_t *a1)
{
  v1 = *a1;
  v2 = vabsq_f32(*a1);
  if (v2.f32[0] == v2.f32[1] && v2.f32[0] == v2.f32[2])
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = v2.f32[0] < v2.f32[1];
    if (v2.f32[0] < v2.f32[1])
    {
      v2.f32[0] = v2.f32[1];
    }

    if (v2.f32[0] < v2.f32[2])
    {
      v4 = 2;
    }

    if (v4 == 2)
    {
      v5 = 2;
      if (v1.f32[2] < 0.0)
      {
        v5 = 5;
      }
    }

    else if (v4 == 1)
    {
      v5 = 4;
      if (v1.f32[1] >= 0.0)
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 3;
      if (v1.f32[0] >= 0.0)
      {
        v5 = 0;
      }
    }

    v6 = 0x100000000;
  }

  return v5 | v6;
}

void FIK::Characteriser::Characteriser(FIK::Characteriser *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  FIK::Characterisation::Characterisation((this + 24), "undefined");
  *(this + 3) = &unk_28589C410;
  operator new();
}

uint64_t FIK::Characteriser::registerCharacterisation(uint64_t **a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 16);
  if (v5)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = &unk_245A04BAE;
  }

  v10 = v2;
  v11 = v3;
  v8[0] = v6;
  v8[1] = v5;
  *a2 = 0;
  v9 = v4;
  std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,std::unique_ptr<FIK::Characterisation>>>(a1, v8, v8);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t FIK::Characteriser::operator[](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::find<std::string_view>(a1, v6);
  if (a1 + 8 == v4)
  {
    return a1 + 24;
  }

  else
  {
    return *(v4 + 48);
  }
}

FIK *FIK::Characterisation::Characterisation(FIK *a1, char *a2)
{
  *a1 = &unk_28589C010;
  v4 = FIK::defaultAllocator(a1);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = v4;
  v5 = strlen(a2);
  IKString::assign(a1 + 1, a2, v5);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,std::unique_ptr<FIK::Characterisation>>>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::__find_equal<std::string_view>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::__find_equal<std::string_view>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string_view>::operator()[abi:nn200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string_view>::operator()[abi:nn200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::less<std::string_view>::operator()[abi:nn200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t std::__tree<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::unique_ptr<FIK::Characterisation>>>>::find<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string_view>::operator()[abi:nn200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string_view>::operator()[abi:nn200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t FIK::AnimNode::updateSolverBoneSettings(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 136))(a1, *(a2 + 97), *(a2 + 98), *(a2 + 99));
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    (*(*a1 + 144))(a1, *(a2 + 105), *(a2 + 106), *(a2 + 107));
  }

  (*(*a1 + 176))(a1, *(a2 + 96), 0);
  v4.n128_u32[0] = *(a2 + 116);
  (*(*a1 + 968))(a1, v4);
  (*(*a1 + 64))(a1, *(a2 + 104));
  v5.n128_u32[0] = *(a2 + 124);
  (*(*a1 + 696))(a1, v5);
  v6 = 0;
  v20[24] = *(a2 + 128);
  v7 = (a2 + 192);
  do
  {
    v8 = *(v7 - 4);
    v9 = &v20[v6];
    v10 = *v7++;
    *v9 = v8;
    v9[1] = v10;
    v6 += 8;
  }

  while (v6 != 24);
  (*(*a1 + 624))(a1, v20, 1);
  (*(*a1 + 48))(a1, *(a2 + 103));
  (*(*a1 + 16))(a1, *(a2 + 100), 0);
  v11.n128_u32[0] = *(a2 + 120);
  (*(*a1 + 712))(a1, v11);
  v12.n128_u32[0] = *(a2 + 160);
  (*(*a1 + 728))(a1, 0, v12);
  v13.n128_u32[0] = *(a2 + 164);
  (*(*a1 + 728))(a1, 1, v13);
  v14.n128_u32[0] = *(a2 + 168);
  (*(*a1 + 728))(a1, 2, v14);
  (*(*a1 + 656))(a1, 0);
  v15.n128_f32[0] = 1.0 - *(a2 + 144);
  (*(*a1 + 280))(a1, 0, v15);
  v16.n128_f32[0] = 1.0 - *(a2 + 148);
  (*(*a1 + 280))(a1, 1, v16);
  v17.n128_f32[0] = 1.0 - *(a2 + 152);
  (*(*a1 + 280))(a1, 2, v17);
  if ((*(a2 + 105) & 1) != 0 || (*(a2 + 106) & 1) != 0 || *(a2 + 107) == 1)
  {
    v18 = *(a2 + 101);
  }

  else
  {
    v18 = 0;
  }

  (*(*a1 + 88))(a1, v18 & 1);
  return (*(*a1 + 104))(a1, 0);
}

uint64_t FIK::AnimNode::updateSolverSettings(FIK::IKSolver *a1, uint64_t a2)
{
  FIK::IKSolver::enableShadowPosing(a1, *(a2 + 25));
  FIK::IKSolver::setLimitsGain(a1, *(a2 + 20));
  FIK::IKSolver::setRetargetingGain(a1, *(a2 + 8));
  FIK::IKSolver::setAddErrors(a1, *(a2 + 26));
  FIK::IKSolver::setTranslationWeight(a1, 1.0);
  FIK::IKSolver::setSolutionTolerance(a1, *(a2 + 4));
  FIK::IKSolver::setPrecision(a1, *(a2 + 16));
  result = FIK::IKSolver::setPGain(a1, *a2);
  if (*(a2 + 24) == 1)
  {
    RootSegment = FIK::IKSolver::getRootSegment(a1);
    (*(*RootSegment + 136))(RootSegment, 1, 1, 1);
    FIK::IKSolver::translateRoot(a1, 1);
    (*(*RootSegment + 160))(RootSegment, 1, 0);
    v6 = *(*RootSegment + 120);

    return v6(RootSegment, 0);
  }

  return result;
}

uint64_t FIK::AnimNode::updateConstraintSettings(uint64_t this, ikinema::Constraint *a2, const FIK::RigTask *a3)
{
  v4 = this;
  if (*(a2 + 52) == 1)
  {
    v5 = *(this + 8);
    if (!v5)
    {
      v15 = ikinemaLogObject(this, a2);
      ikinemaAssertHandler(*v15, 0, "updateConstraintSettings", "(constraint.positionTask) Position task should have been created.");
      v5 = *(v4 + 8);
    }

    v6 = (a2 + 112);
    v7 = -3;
    do
    {
      (*(*(v5 + *(*v5 - 264)) + 80))(v5 + *(*v5 - 264), (v7 + 3), a3, *(v6 - 8));
      v8 = *v6++;
      (*(*(v5 + *(*v5 - 264)) + 104))(v5 + *(*v5 - 264), (v7 + 3), v8);
      v9 = __CFADD__(v7++, 1);
    }

    while (!v9);
    (*(*(v5 + *(*v5 - 264)) + 144))(v5 + *(*v5 - 264), *(a2 + 55), *(a2 + 56), *(a2 + 57));
    (*(*(v5 + *(*v5 - 264)) + 56))(v5 + *(*v5 - 264), *(a2 + 16));
    (*(*v5 + 392))(v5, *(a2 + 54));
    this = (*(*v5 + 280))(v5, a2 + 144);
  }

  if (*(a2 + 53) == 1)
  {
    v10 = *(v4 + 16);
    if (!v10)
    {
      v16 = ikinemaLogObject(this, a2);
      ikinemaAssertHandler(*v16, 0, "updateConstraintSettings", "(constraint.orientationTask) Orientation task should have been created.");
      v10 = *(v4 + 16);
    }

    v11 = (a2 + 128);
    v12 = -3;
    do
    {
      (*(*&v10[*(*v10 - 264)] + 80))(&v10[*(*v10 - 264)], (v12 + 3), *(v11 - 8));
      v13 = *v11++;
      (*(*&v10[*(*v10 - 264)] + 104))(&v10[*(*v10 - 264)], (v12 + 3), v13);
      v9 = __CFADD__(v12++, 1);
    }

    while (!v9);
    (*(*&v10[*(*v10 - 264)] + 144))(&v10[*(*v10 - 264)], *(a2 + 58), *(a2 + 59), *(a2 + 60));
    v14 = *(*&v10[*(*v10 - 264)] + 56);

    return v14();
  }

  return this;
}

uint64_t FIK::AnimNode::loadSolverSkeletonFromRig(__n128 **this)
{
  FIK::IKRigUtils::generateImportBonesFromRig<FIK::MoCapRig,void>((this + 18), v7);
  FIK::IKSolver::importBones(this + 2, v7);
  FIK::AnimNode::updateSolverSettings((this + 2), (this + 26));
  v2 = this[44];
  if (v2)
  {
    v3 = this[46];
    v4 = 544 * v2;
    do
    {
      Segment = FIK::IKSolver::getSegment((this + 2), v3->n128_u32[0]);
      FIK::AnimNode::updateSolverBoneSettings(Segment, v3);
      v3 += 34;
      v4 -= 544;
    }

    while (v4);
  }

  FIK::IKSolver::setup(this + 2);
  return FIK::IKArray<FIK::ImportBone>::~IKArray(v7);
}

uint64_t *FIK::IKRigUtils::generateImportBonesFromRig<FIK::MoCapRig,void>@<X0>(FIK *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = FIK::defaultAllocator(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  FIK::IKArray<FIK::ImportBone>::reserve(a2, *(a1 + 26));
  v5 = *(a1 + 28);
  v6 = &v5[136 * *(a1 + 26)];

  return std::transform[abi:nn200100]<FIK::IKArrayIterator<FIK::MoCapBone const>,std::back_insert_iterator<FIK::IKArray<FIK::ImportBone>>,FIK::IKArray<FIK::ImportBone> FIK::IKRigUtils::generateImportBonesFromRig<FIK::MoCapRig,void>(FIK::MoCapRig const&)::{lambda(FIK::RigBoneBase const&)#1}>(v5, v6, a2);
}

uint64_t FIK::AnimNode::AnimNode(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28589C220;
  *(a1 + 8) = *(a2 + 76);
  *(a1 + 12) = 1114636288;
  v4 = FIK::defaultAllocator(a1);
  v5 = FIK::IKSolver::IKSolver((a1 + 16), v4);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_245A01E80;
  *(a1 + 64) = 0;
  v6 = FIK::defaultAllocator(v5);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = v6;
  v7 = FIK::defaultAllocator(v6);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = v7;
  IKString::IKString((a1 + 144), a2);
  v8 = *(a2 + 24);
  *(a1 + 180) = *(a2 + 36);
  *(a1 + 168) = v8;
  v9 = *(a2 + 80);
  *(a1 + 208) = *(a2 + 64);
  *(a1 + 224) = v9;
  *(a1 + 240) = *(a2 + 96);
  v10 = *(a2 + 120);
  *(a1 + 256) = *(a2 + 112);
  *(a1 + 264) = v10;
  v11 = *(a2 + 128);
  *(a1 + 275) = *(a2 + 131);
  *(a1 + 272) = v11;
  *(a1 + 288) = *(a2 + 144);
  *(a1 + 304) = *(a2 + 160);
  FIK::IKArray<FIK::MoCapTask>::IKArray((a1 + 320), (a2 + 176));
  FIK::IKArray<FIK::MoCapBone>::IKArray((a1 + 352), (a2 + 208));
  FIK::IKArray<FIK::RigBoneBase>::IKArray((a1 + 384), (a2 + 240));
  *(a1 + 416) = *(a2 + 272);
  *(a1 + 432) = *(a2 + 288);
  *(a1 + 448) = *(a2 + 304);
  *(a1 + 464) = 0;
  FIK::AnimNode::loadSolverSkeletonFromRig(a1);
  v12 = *FIK::IKSolver::getRootSegment((a1 + 16));
  (*(v12 + 864))(v15);
  v13 = v15[1];
  *(a1 + 32) = v15[0];
  *(a1 + 48) = v13;
  return a1;
}