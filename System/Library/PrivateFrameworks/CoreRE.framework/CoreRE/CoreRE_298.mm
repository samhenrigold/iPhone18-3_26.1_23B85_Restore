uint64_t REStateMachineAssetSingleGraphCreate(re *a1, uint64_t a2, uint64_t a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  REStateMachineAssetStateGraphGroupCreate(a1);
  v7 = v6;
  re::DynamicArray<re::SMAssetStateGraph>::add((v6 + 24), a2 + 24);
  REStateMachineAssetStateGraphGroupCollectionCreate(v8);
  v10 = v9;
  re::DynamicArray<re::SMAssetStateGraphGroup>::add((v9 + 24), (v7 + 24));
  v12[0] = "";
  v12[1] = "";
  v12[2] = a3;
  return REStateMachineAssetCreate(a1, 1, v12, v10);
}

void REStateMachineAssetStateGraphGroupCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 64, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 24) = 0;
  *v2 = &unk_1F5D2D0F8;
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

void REStateMachineAssetStateGraphGroupCollectionCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 64, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 24) = 0;
  *v2 = &unk_1F5D2D140;
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

uint64_t REStateMachineAssetStateGraphCreate(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 192, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 64) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D0B0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 64) = 0;
  *(v3 + 56) = 0;
  *(v3 + 72) = &str_67;
  *(v3 + 80) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = &str_67;
  *(v3 + 184) = 0;
  v7 = 0;
  v8 = &str_67;
  v5 = re::StringID::operator=((v3 + 64), &v7);
  if (v7)
  {
    if (v7)
    {
    }
  }

  return v3;
}

uint64_t REStateMachineAssetStateCreate(const char *a1)
{
  v2 = v8;
  v6 = 0;
  v7 = &str_67;
  v4 = re::StringID::operator=((v2 + 104), &v6);
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v2;
}

uint64_t REStateMachineAssetTransitionCreate(const char *a1, const char *a2, const char *a3, char a4, float a5)
{
  v10 = v22;
  v20 = 0;
  v21 = &str_67;
  v18 = 0;
  v19 = &str_67;
  v16 = 0;
  v17 = &str_67;
  re::StringID::operator=((v10 + 64), &v20);
  re::StringID::operator=((v10 + 80), &v18);
  v14 = re::StringID::operator=((v10 + 96), &v16);
  *(v10 + 112) = a5;
  *(v10 + 116) = a4;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  return v10;
}

uint64_t REStateMachineAssetIntConditionCreate(const char *a1, char a2, uint64_t a3)
{
  v10 = 0;
  v11 = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14[0] = 0;
  *&v14[8] = 0;
  *&v14[14] = 0;
  re::StringID::operator=(&v12, &v10);
  v14[0] = 1;
  *&v14[8] = a3;
  v14[21] = a2;
  v7 = v15;
  v8 = re::StringID::operator=((v15 + 24), &v12);
  *(v7 + 40) = *v14;
  *(v7 + 54) = *&v14[14];
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v10)
  {
    if (v10)
    {
    }
  }

  return v7;
}

uint64_t REStateMachineAssetFloatConditionCreate(const char *a1, char a2, float a3)
{
  v10 = 0;
  v11 = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14[0] = 0;
  *&v14[8] = 0;
  *&v14[14] = 0;
  re::StringID::operator=(&v12, &v10);
  v14[0] = 2;
  *&v14[16] = a3;
  v14[21] = a2;
  v7 = v15;
  v8 = re::StringID::operator=((v15 + 24), &v12);
  *(v7 + 40) = *v14;
  *(v7 + 54) = *&v14[14];
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v10)
  {
    if (v10)
    {
    }
  }

  return v7;
}

uint64_t REStateMachineAssetBoolConditionCreate(const char *a1, char a2, char a3)
{
  v10 = 0;
  v11 = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14[0] = 0;
  *&v14[8] = 0;
  *&v14[14] = 0;
  re::StringID::operator=(&v12, &v10);
  v14[0] = 3;
  v14[20] = a3;
  v14[21] = a2;
  v7 = v15;
  v8 = re::StringID::operator=((v15 + 24), &v12);
  *(v7 + 40) = *v14;
  *(v7 + 54) = *&v14[14];
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v10)
  {
    if (v10)
    {
    }
  }

  return v7;
}

uint64_t REStateMachineAssetTriggerConditionCreate(const char *a1)
{
  v6 = 0;
  v7 = &str_67;
  v8 = 0;
  v9 = &str_67;
  v10[0] = 0;
  *&v10[8] = 0;
  *&v10[14] = 0;
  re::StringID::operator=(&v8, &v6);
  v10[0] = 4;
  *&v10[20] = 1;
  v3 = v11;
  v4 = re::StringID::operator=((v11 + 24), &v8);
  *(v3 + 40) = *v10;
  *(v3 + 54) = *&v10[14];
  if (v8)
  {
    if (v8)
    {
    }
  }

  v8 = 0;
  v9 = &str_67;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v3;
}

uint64_t REStateMachineAssetCommandCreate(_anonymous_namespace_ *a1, const char *a2)
{
  v12 = 0;
  v13 = &str_67;
  CommandIDFromCommandName = re::ecs2::StateCommandFactoryECS::getCommandIDFromCommandName(&v12, v4);
  v6 = CommandIDFromCommandName;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v7 = v11;
  v12 = 0;
  v13 = &str_67;
  *(v7 + 424) = v6;
  v9 = re::StringID::operator=((v7 + 432), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  return v7;
}

__n128 REStateMachineAssetTransitionAddCondition(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 32))
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::growCapacity((a1 + 24), v4 + 1);
    v4 = *(a1 + 40);
  }

  v5 = re::StringID::StringID((*(a1 + 56) + 40 * v4), (a2 + 24));
  result = *(a2 + 40);
  *(v5 + 30) = *(a2 + 54);
  *(v5 + 1) = result;
  ++*(a1 + 40);
  ++*(a1 + 48);
  return result;
}

re::StringID *REStateMachineAssetStateAddTransition(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 32))
  {
    re::DynamicArray<re::SMAssetStateTransition>::growCapacity((a1 + 24), v4 + 1);
    v4 = *(a1 + 40);
  }

  v5 = *(a1 + 56) + 96 * v4;
  re::DynamicArray<re::SMAssetTransitionCondition>::DynamicArray(v5, (a2 + 24));
  re::StringID::StringID((v5 + 40), (a2 + 64));
  re::StringID::StringID((v5 + 56), (a2 + 80));
  result = re::StringID::StringID((v5 + 72), (a2 + 96));
  v7 = *(a2 + 112);
  *(v5 + 92) = *(a2 + 116);
  *(v5 + 88) = v7;
  ++*(a1 + 40);
  ++*(a1 + 48);
  return result;
}

re::StringID *REStateMachineAssetStateAddCommand(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4 >= *(a1 + 72))
  {
    re::DynamicArray<re::SMAssetStateCommand>::growCapacity((a1 + 64), v4 + 1);
    v4 = *(a1 + 80);
  }

  v5 = *(a1 + 96) + 424 * v4;
  re::DynamicArray<re::StringID>::DynamicArray(v5, (a2 + 24));
  re::DynamicArray<char const*>::DynamicArray(v5 + 40, (a2 + 64));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 80, (a2 + 104));
  re::DynamicArray<float>::DynamicArray(v5 + 120, (a2 + 144));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 160, (a2 + 184));
  re::DynamicArray<char const*>::DynamicArray(v5 + 200, (a2 + 224));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 240, (a2 + 264));
  re::DynamicArray<BOOL>::DynamicArray(v5 + 280, (a2 + 304));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 320, (a2 + 344));
  re::DynamicArray<re::StringID>::DynamicArray(v5 + 360, (a2 + 384));
  *(v5 + 400) = *(a2 + 424);
  result = re::StringID::StringID((v5 + 408), (a2 + 432));
  ++*(a1 + 80);
  ++*(a1 + 88);
  return result;
}

void REStateMachineAssetCommandAddParameterInt(uint64_t a1, const char *a2, uint64_t a3)
{
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  v6 = re::DynamicArray<re::StringID>::add((a1 + 24), &v8);
  v7 = *(a1 + 80);
  if (v7 >= *(a1 + 72))
  {
    v6 = re::DynamicArray<float *>::growCapacity((a1 + 64), v7 + 1);
    v7 = *(a1 + 80);
  }

  *(*(a1 + 96) + 8 * v7) = a3;
  *(a1 + 80) = v7 + 1;
  ++*(a1 + 88);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

void REStateMachineAssetCommandAddParameterFloat(uint64_t a1, const char *a2, float a3)
{
  *&v7.var0 = 0;
  v7.var1 = &str_67;
  v8 = a3;
  re::DynamicArray<re::StringID>::add((a1 + 104), &v7);
  re::DynamicArray<float>::add((a1 + 144), &v8);
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }
}

void REStateMachineAssetCommandAddParameterDouble(uint64_t a1, const char *a2, double a3)
{
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  v6 = re::DynamicArray<re::StringID>::add((a1 + 184), &v8);
  v7 = *(a1 + 240);
  if (v7 >= *(a1 + 232))
  {
    v6 = re::DynamicArray<float *>::growCapacity((a1 + 224), v7 + 1);
    v7 = *(a1 + 240);
  }

  *(*(a1 + 256) + 8 * v7) = a3;
  *(a1 + 240) = v7 + 1;
  ++*(a1 + 248);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

void REStateMachineAssetCommandAddParameterBool(uint64_t a1, const char *a2, char a3)
{
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  v6 = re::DynamicArray<re::StringID>::add((a1 + 264), &v8);
  v7 = *(a1 + 320);
  if (v7 >= *(a1 + 312))
  {
    v6 = re::DynamicArray<BOOL>::growCapacity((a1 + 304), v7 + 1);
    v7 = *(a1 + 320);
  }

  *(*(a1 + 336) + v7) = a3;
  *(a1 + 320) = v7 + 1;
  ++*(a1 + 328);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

void REStateMachineAssetCommandAddParameterString(uint64_t a1, const char *a2, const char *a3)
{
  *&v9.var0 = 0;
  v9.var1 = &str_67;
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  re::DynamicArray<re::StringID>::add((a1 + 344), &v9);
  v7 = re::DynamicArray<re::StringID>::add((a1 + 384), &v8);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }

  if (*&v9.var0)
  {
    if (*&v9.var0)
    {
    }
  }
}

_anonymous_namespace_ *REStateMachineAssetCommandGetParameterInt(uint64_t a1, const char *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = &str_67;
  IntParameter = re::SMAssetStateCommand::getIntParameter((a1 + 24), &v9, a3);
  v7 = IntParameter;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

_anonymous_namespace_ *REStateMachineAssetCommandGetParameterFloat(uint64_t a1, const char *a2, float *a3)
{
  v9 = 0;
  v10 = &str_67;
  FloatParameter = re::SMAssetStateCommand::getFloatParameter((a1 + 24), &v9, a3);
  v7 = FloatParameter;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

_anonymous_namespace_ *REStateMachineAssetCommandGetParameterDouble(uint64_t a1, const char *a2, double *a3)
{
  v9 = 0;
  v10 = &str_67;
  DoubleParameter = re::SMAssetStateCommand::getDoubleParameter((a1 + 24), &v9, a3);
  v7 = DoubleParameter;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

_anonymous_namespace_ *REStateMachineAssetCommandGetParameterBool(uint64_t a1, const char *a2, BOOL *a3)
{
  v9 = 0;
  v10 = &str_67;
  BoolParameter = re::SMAssetStateCommand::getBoolParameter((a1 + 24), &v9, a3);
  v7 = BoolParameter;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

BOOL REStateMachineAssetCommandGetParameterString(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v10 = 0;
  v11 = &str_67;
  StringParameter = re::SMAssetStateCommand::getStringParameter((a1 + 24), &v10);
  v7 = StringParameter;
  if (v10)
  {
    if (v10)
    {
    }
  }

  if (v7)
  {
    v8 = CFStringCreateWithCString(0, *(v7 + 1), 0x8000100u);
    *a3 = CFAutorelease(v8);
  }

  return v7 != 0;
}

uint64_t REStateMachineAssetCommandGetParameterStringAsChars(uint64_t a1, const char *a2)
{
  v7 = 0;
  v8 = &str_67;
  StringParameter = re::SMAssetStateCommand::getStringParameter((a1 + 24), &v7);
  v5 = StringParameter;
  if (v7)
  {
    if (v7)
    {
    }
  }

  if (v5)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

float REStateMachineAssetStateGraphAddState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 32))
  {
    re::DynamicArray<re::SMAssetState>::growCapacity((a1 + 24), v4 + 1);
    v4 = *(a1 + 40);
  }

  v5 = *(a1 + 56) + 104 * v4;
  re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(v5, (a2 + 24));
  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v5 + 40, (a2 + 64));
  re::StringID::StringID((v5 + 80), (a2 + 104));
  result = *(a2 + 120);
  *(v5 + 96) = result;
  ++*(a1 + 40);
  ++*(a1 + 48);
  return result;
}

float REStateMachineAssetStateGraphAddAnyState(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::SMAssetStateTransition>::operator=(a1 + 88, (a2 + 24));
  re::DynamicArray<re::SMAssetStateCommand>::operator=(a1 + 128, (a2 + 64));
  re::StringID::operator=((a1 + 168), (a2 + 104));
  result = *(a2 + 120);
  *(a1 + 184) = result;
  *(a1 + 80) = 1;
  return result;
}

float re::DynamicArray<re::SMAssetStateGraph>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateGraph>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 168 * v4;
  re::DynamicArray<re::SMAssetState>::DynamicArray(v5, a2);
  re::StringID::StringID((v5 + 40), (a2 + 40));
  *(v5 + 56) = *(a2 + 56);
  re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(v5 + 64, (a2 + 64));
  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v5 + 104, (a2 + 104));
  re::StringID::StringID((v5 + 144), (a2 + 144));
  result = *(a2 + 160);
  *(v5 + 160) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateGraphGroup>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::DynamicArray<re::SMAssetStateGraph>::DynamicArray(*(this + 4) + 40 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t REStateMachineAssetGetStateCount(uint64_t a1)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t anonymous namespace::firstGraphInAsset(uint64_t a1)
{
  if (result)
  {
    if (*(result + 56) && (v2 = *(result + 72), *(v2 + 16)))
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REStateMachineAssetGetStateAtIndex(uint64_t a1, unint64_t a2)
{
  if (!GraphInAsset || *(GraphInAsset + 16) <= a2)
  {
    return 0;
  }

  v4 = *(GraphInAsset + 32) + 104 * a2;
  v5 = v7;
  re::DynamicArray<re::SMAssetStateTransition>::operator=(v7 + 24, v4);
  re::DynamicArray<re::SMAssetStateCommand>::operator=(v5 + 64, (v4 + 40));
  re::StringID::operator=((v5 + 104), (v4 + 80));
  *(v5 + 120) = *(v4 + 96);
  return v5;
}

uint64_t REStateMachineAssetGetAnyState(uint64_t a1)
{
  if (!GraphInAsset)
  {
    return 0;
  }

  v2 = GraphInAsset;
  if (*(GraphInAsset + 56) != 1)
  {
    return 0;
  }

  v3 = v5;
  re::DynamicArray<re::SMAssetStateTransition>::operator=(v5 + 24, (v2 + 64));
  re::DynamicArray<re::SMAssetStateCommand>::operator=(v3 + 64, (v2 + 104));
  re::StringID::operator=((v3 + 104), (v2 + 144));
  *(v3 + 120) = *(v2 + 160);
  return v3;
}

const char *REStateMachineAssetGetInitialStateName(uint64_t a1)
{
  if (v1 && *(v1 + 16))
  {
    return *(*(v1 + 32) + 40);
  }

  else
  {
    return "";
  }
}

uint64_t anonymous namespace::stateMachineAssetFromREAssetRef(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = re::AssetHandle::blockUntilLoaded<re::StateMachineAsset>(v3);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

uint64_t REStateMachineAssetStateGetTransitionAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  v2 = *(a1 + 56) + 96 * a2;
  v3 = v6;
  re::DynamicArray<re::SMAssetTransitionCondition>::operator=(v6 + 24, v2);
  re::StringID::operator=((v3 + 64), (v2 + 40));
  re::StringID::operator=((v3 + 80), (v2 + 56));
  re::StringID::operator=((v3 + 96), (v2 + 72));
  v4 = *(v2 + 88);
  *(v3 + 116) = *(v2 + 92);
  *(v3 + 112) = v4;
  return v3;
}

uint64_t REStateMachineAssetStateGetCommandCount(uint64_t a1)
{
  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v3, (a1 + 64));
  v1 = v3[2];
  re::DynamicArray<re::SMAssetStateCommand>::deinit(v3);
  return v1;
}

uint64_t REStateMachineAssetStateGetCommandAtIndex(uint64_t a1, unint64_t a2)
{
  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v7, (a1 + 64));
  if (v7[2] <= a2)
  {
    v4 = 0;
  }

  else
  {
    v3 = v7[4] + 424 * a2;
    v4 = v6;
    re::DynamicArray<re::StringID>::operator=(v6 + 24, v3);
    re::DynamicArray<unsigned long long>::operator=(v4 + 64, (v3 + 40));
    re::DynamicArray<re::StringID>::operator=(v4 + 104, (v3 + 80));
    re::DynamicArray<float>::operator=(v4 + 144, (v3 + 120));
    re::DynamicArray<re::StringID>::operator=(v4 + 184, (v3 + 160));
    re::DynamicArray<unsigned long long>::operator=(v4 + 224, (v3 + 200));
    re::DynamicArray<re::StringID>::operator=(v4 + 264, (v3 + 240));
    re::DynamicArray<BOOL>::operator=(v4 + 304, (v3 + 280));
    re::DynamicArray<re::StringID>::operator=(v4 + 344, (v3 + 320));
    re::DynamicArray<re::StringID>::operator=(v4 + 384, (v3 + 360));
    *(v4 + 424) = *(v3 + 400);
    re::StringID::operator=((v4 + 432), (v3 + 408));
  }

  re::DynamicArray<re::SMAssetStateCommand>::deinit(v7);
  return v4;
}

uint64_t REStateMachineAssetTransitionGetConditionAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  v2 = *(a1 + 56) + 40 * a2;
  v3 = v6;
  re::StringID::operator=((v6 + 24), v2);
  v4 = *(v2 + 16);
  *(v3 + 54) = *(v2 + 30);
  *(v3 + 40) = v4;
  return v3;
}

uint64_t REStateMachineAssetTransitionConditionGetParameterType(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 5)
  {
    v2 = 1;
  }

  else
  {
    v2 = 0x303020101uLL >> (8 * v1);
  }

  return v2 & 3;
}

uint64_t REStateMachineAssetCommandGetParameterCount(uint64_t a1, unsigned int a2)
{
  if (a2 > 4)
  {
    return 0;
  }

  else
  {
    return *(a1 + qword_1E311D5F8[a2]);
  }
}

uint64_t REStateMachineAssetCommandGetParameterNameAtIndex(void *a1, int a2, unint64_t a3)
{
  v4 = 0;
  v46 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = a1[5];
        if (v7 > a3)
        {
          v6 = 7;
          return *(a1[v6] + 16 * a3 + 8);
        }

LABEL_35:
        v32 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v27 = MEMORY[0x1E69E9C10];
        v28 = v7;
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "operator[]";
        v35 = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v36 = 797;
        v37 = 2048;
        v38 = a3;
        v39 = 2048;
        v40 = v28;
        _os_log_send_and_compose_impl(v30, &v32, &v41, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
        _os_crash_msg();
        __break(1u);
      }

      return v4;
    }

    v10 = a1[45];
    if (v10 > a3)
    {
      v6 = 47;
      return *(a1[v6] + 16 * a3 + 8);
    }

LABEL_27:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = v10;
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = a3;
    v39 = 2048;
    v40 = v20;
    _os_log_send_and_compose_impl(v22, &v32, &v41, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = v5;
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = a3;
    v39 = 2048;
    v40 = v24;
    _os_log_send_and_compose_impl(v26, &v32, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  switch(a2)
  {
    case 2:
      v8 = a1[15];
      if (v8 > a3)
      {
        v6 = 17;
        return *(a1[v6] + 16 * a3 + 8);
      }

      v32 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v12 = MEMORY[0x1E69E9C10];
      v13 = v8;
      v33 = 136315906;
      v34 = "operator[]";
      v35 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v36 = 797;
      v37 = 2048;
      v38 = a3;
      v39 = 2048;
      v40 = v13;
      _os_log_send_and_compose_impl(v14, &v32, &v41, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
      _os_crash_msg();
      __break(1u);
      goto LABEL_23;
    case 3:
      v9 = a1[25];
      if (v9 > a3)
      {
        v6 = 27;
        return *(a1[v6] + 16 * a3 + 8);
      }

LABEL_23:
      v32 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = v9;
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v33 = 136315906;
      v34 = "operator[]";
      v35 = 1024;
      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v36 = 797;
      v37 = 2048;
      v38 = a3;
      v39 = 2048;
      v40 = v16;
      _os_log_send_and_compose_impl(v18, &v32, &v41, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
      _os_crash_msg();
      __break(1u);
      goto LABEL_27;
    case 4:
      v5 = a1[35];
      if (v5 > a3)
      {
        v6 = 37;
        return *(a1[v6] + 16 * a3 + 8);
      }

      goto LABEL_31;
  }

  return v4;
}

void anonymous namespace::AssetStateGraph::~AssetStateGraph(_anonymous_namespace_::AssetStateGraph *this)
{
  *this = &unk_1F5D2D0B0;
  v2 = (this + 64);
  re::StringID::destroyString((this + 168));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(this + 16);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(this + 88);
  re::StringID::destroyString(v2);
  re::DynamicArray<re::SMAssetState>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D0B0;
  v2 = (this + 64);
  re::StringID::destroyString((this + 168));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(this + 16);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(this + 88);
  re::StringID::destroyString(v2);
  re::DynamicArray<re::SMAssetState>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::AssetStateGraphGroup::~AssetStateGraphGroup(_anonymous_namespace_::AssetStateGraphGroup *this)
{
  *this = &unk_1F5D2D0F8;
  re::DynamicArray<re::SMAssetStateGraph>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D0F8;
  re::DynamicArray<re::SMAssetStateGraph>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::AssetStateGraphGroupCollection::~AssetStateGraphGroupCollection(_anonymous_namespace_::AssetStateGraphGroupCollection *this)
{
  *this = &unk_1F5D2D140;
  re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D140;
  re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::object<anonymous namespace::AssetState>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D188;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = &str_67;
  *(v3 + 120) = 0;
  *a1 = v3;
  return result;
}

void anonymous namespace::AssetState::~AssetState(_anonymous_namespace_::AssetState *this)
{
  *this = &unk_1F5D2D188;
  v2 = (this + 64);
  re::StringID::destroyString((this + 104));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(v2);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D188;
  v2 = (this + 64);
  re::StringID::destroyString((this + 104));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(v2);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::make::shared::object<anonymous namespace::AssetTransition>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 120, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D1D0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = &str_67;
  *(v3 + 80) = 0;
  *(v3 + 88) = &str_67;
  *(v3 + 96) = 0;
  *(v3 + 104) = &str_67;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0;
  *a1 = v3;
}

void anonymous namespace::AssetTransition::~AssetTransition(_anonymous_namespace_::AssetTransition *this)
{
  *this = &unk_1F5D2D1D0;
  v2 = (this + 64);
  re::StringID::destroyString((this + 96));
  re::StringID::destroyString((this + 80));
  re::StringID::destroyString(v2);
  re::DynamicArray<re::SMAssetTransitionCondition>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D1D0;
  v2 = (this + 64);
  re::StringID::destroyString((this + 96));
  re::StringID::destroyString((this + 80));
  re::StringID::destroyString(v2);
  re::DynamicArray<re::SMAssetTransitionCondition>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::make::shared::object<anonymous namespace::AssetCondition>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D218;
  *(v3 + 32) = &str_67;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 54) = 0;
  *a1 = v3;
}

void anonymous namespace::AssetCondition::~AssetCondition(_anonymous_namespace_::AssetCondition *this)
{
  *this = &unk_1F5D2D218;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D218;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::object<anonymous namespace::AssetCommand>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 448, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2D260;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 416) = 0;
  *(v3 + 424) = 0;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0;
  *(v3 + 208) = 0;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 248) = 0;
  *(v3 + 232) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0;
  *(v3 + 432) = 0;
  *(v3 + 440) = &str_67;
  *a1 = v3;
  return result;
}

void anonymous namespace::AssetCommand::~AssetCommand(_anonymous_namespace_::AssetCommand *this)
{
  *this = &unk_1F5D2D260;
  v2 = this + 64;
  re::StringID::destroyString((this + 432));
  re::DynamicArray<re::StringID>::deinit(this + 384);
  re::DynamicArray<re::StringID>::deinit(this + 344);
  re::DynamicArray<unsigned long>::deinit(this + 304);
  re::DynamicArray<re::StringID>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::DynamicArray<unsigned long>::deinit(this + 144);
  re::DynamicArray<re::StringID>::deinit(this + 104);
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::StringID>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D260;
  v2 = this + 64;
  re::StringID::destroyString((this + 432));
  re::DynamicArray<re::StringID>::deinit(this + 384);
  re::DynamicArray<re::StringID>::deinit(this + 344);
  re::DynamicArray<unsigned long>::deinit(this + 304);
  re::DynamicArray<re::StringID>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::DynamicArray<unsigned long>::deinit(this + 144);
  re::DynamicArray<re::StringID>::deinit(this + 104);
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::StringID>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t REGeomMeshGetFaceVertexCount(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2 <= a2)
  {
    return 0;
  }

  else
  {
    v3 = a2;
    if (v2 <= a2)
    {
      v9 = 0;
      memset(v18, 0, sizeof(v18));
      v6 = MEMORY[0x1E69E9C10];
      v10 = 136315906;
      v11 = "operator[]";
      v12 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      v13 = 797;
      v14 = 2048;
      v15 = v3;
      v16 = 2048;
      v17 = v2;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(a1 + 80) + 16 * a2 + 12) == -1)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t REGeomMeshGetFaceVertexIndices(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    v4 = a2;
    if (v3 <= a2)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v9 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 797;
      v17 = 2048;
      v18 = v4;
      v19 = 2048;
      v20 = v3;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    v5 = 0;
    v6 = *(a1 + 80) + 16 * a2;
    do
    {
      *(a3 + v5) = *(v6 + v5);
      v5 += 4;
    }

    while (v5 != 16);
    if (*(a3 + 12) == -1)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t REGeomMeshGetAttributeIndex(uint64_t a1, char *a2)
{
  v5 = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find((a1 + 688), &v5);
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 696) + 16 * v3 + 8);
  }
}

uint64_t REGeomMeshGetAttributeValueCount(uint64_t a1, unsigned int a2)
{
  v2 = *(*re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2) + 16);

  return v2();
}

uint64_t REGeomMeshGetAttributeName(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  else
  {
    return *(re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2) + 8);
  }
}

uint64_t REGeomMeshGetAttributeRate(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 664) <= a2)
  {
    return 255;
  }

  else
  {
    return *(re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2) + 16);
  }
}

uint64_t REGeomMeshGetAttributeType(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 664) <= a2)
  {
    return 255;
  }

  else
  {
    return *(re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2) + 17);
  }
}

uint64_t REGeomMeshCreateFromPolygon(unsigned int a1, __int128 *a2)
{
  LODWORD(v2) = a1;
  v74 = *MEMORY[0x1E69E9840];
  v3 = a1 - 2;
  if (a1 > 2)
  {
    bzero(buf, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(v48, 1uLL);
    ++v50;
    re::internal::GeomAttributeManager::GeomAttributeManager(v52);
    v8 = re::internal::GeomAttributeManager::addAttribute(v52, "vertexPosition", 1, 7);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v40 = 0;
    v9 = v2;
    v38[0] = a2;
    v38[1] = v2;
    memset(v39, 0, sizeof(v39));
    if (v47 > v2 && v49 && (v49 - 1) > v49)
    {
        ;
      }
    }

    LODWORD(v47) = v2;
    v53 = v2;
    if (v54)
    {
      v10 = v55;
      v11 = 8 * v54;
      do
      {
        v12 = *v10++;
        (*(*v12 + 80))(v12, v53);
        v11 -= 8;
      }

      while (v11);
    }

    if (v3 < v49)
    {
      v13 = v60;
      if (v60)
      {
        v14 = 0;
        do
        {
          v15 = re::internal::GeomAttributeContainer::attributeByIndex(&v59, v14);
          re::internal::accessFaceVaryingAttributeSubmesh(v15, v16);
          ++v14;
        }

        while (v13 != v14);
      }
    }

    re::DynamicArray<re::GeomCell4>::resize(v48, v3);
    v56 = v3;
    if (v57)
    {
      v17 = v58;
      v18 = 8 * v57;
      do
      {
        v19 = *v17++;
        (*(*v19 + 80))(v19, v56);
        v18 -= 8;
      }

      while (v18);
    }

    v20 = 0;
    v2 = v43;
    v21 = v44;
    do
    {
      if (v2 == v20)
      {
        v45 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v64 = 468;
        v65 = 2048;
        v66 = v2;
        v67 = 2048;
        v68 = v2;
        _os_log_send_and_compose_impl(v33, &v45, &v69, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v37, v38[0]);
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v45 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v64 = 621;
        v65 = 2048;
        v66 = v2;
        v67 = 2048;
        v68 = v2;
        _os_log_send_and_compose_impl(v36, &v45, &v69, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v37, v38[0]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_48;
      }

      *(v21 + 4 * v20) = v20;
      ++v20;
    }

    while (v9 != v20);
    *&v69 = v21;
    *(&v69 + 1) = v2;
    v22 = re::triangulatePolygon(v38, &v69, v39);
    if (v3)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        re::GeomMeshBuilder::setFaceVertices(buf, v23++, 3, (v41 + 4 * v24));
        v24 += 3;
      }

      while (v3 != v23);
    }

    re::make::shared::object<re::Shareable<re::GeomMesh>>(v22, &v69);
    v25 = v69;
    re::GeomMesh::operator=(v69 + 24, &v47);
    re::GeomMesh::setName((v25 + 24), *buf);
    re::GeomMesh::freeName(buf);
    v5 = v69;
    if (v69)
    {
      v26 = re::GeomMesh::modifyVertexPositions((v69 + 24));
      v2 = v27;
      v28 = v27;
      while (v28)
      {
        v29 = *a2++;
        *v26++ = v29;
        --v28;
        if (!--v9)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_44;
    }

LABEL_30:
    if (v39[0] && v41)
    {
      (*(*v39[0] + 40))();
    }

    if (v42 && v43)
    {
      (*(*v42 + 40))();
    }

    re::GeomMesh::freeName(buf);
    re::internal::GeomAttributeManager::~GeomAttributeManager(v52);
    if (v48[0] && v51)
    {
      (*(*v48[0] + 40))();
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
LABEL_48:
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v2;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "REGeomMeshCreateFromPolygon - called with a degenerate polygon vertex count of %d.  This value must be greater than 2.", buf, 8u);
    }

    return 0;
  }

  return v5;
}

double re::GeomMeshBuilder::setFaceVertices(re::GeomMeshBuilder *this, unsigned int a2, int a3, double *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(this + 4);
  if (v6 <= a2)
  {
    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v31 = 797;
    v32 = 2048;
    v33 = v5;
    v34 = 2048;
    v35 = v6;
    _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v10 = (*(this + 6) + 16 * a2);
  if (*v10 != -1)
  {
    v11 = v10[3] == -1;
    v12 = a3 == 3 || *(a4 + 3) == -1;
    if (v12 != v11)
    {
      v13 = *(this + 104);
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          v15 = re::internal::GeomAttributeContainer::attributeByIndex((this + 392), i);
          re::internal::accessFaceVaryingAttributeSubmesh(v15, v16);
        }
      }
    }
  }

  if (a3 == 4)
  {
    v17 = *(a4 + 3);
  }

  else
  {
    v17 = -1;
  }

  v4 = *(this + 4);
  if (v4 <= v5)
  {
LABEL_19:
    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = v5;
    v34 = 2048;
    v35 = v4;
    _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
  }

  result = *a4;
  v19 = *(a4 + 2);
  v20 = *(this + 6) + 16 * v5;
  *v20 = *a4;
  *(v20 + 8) = v19;
  *(v20 + 12) = v17;
  return result;
}

uint64_t REGeomMeshCreateFromCoreAttributes(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, __int128 *a7, __int128 *a8, __int128 *a9, char *a10)
{
  v11 = a3;
  v12 = a2;
  v87[11] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = 0;
    do
    {
      v17 = *(v14 + a3);
      v18 = v17 - 2;
      if (v17 <= 2)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_67;
        }

        goto LABEL_50;
      }

      if (v17 < 5)
      {
        v18 = 1;
      }

      v16 += v18;
      v15 = v15 + v17;
      v14 = (v14 + 1);
    }

    while (a2 != v14);
    if (!v15)
    {
LABEL_11:
      v61 = a6;
      v62 = a5;
      v59 = a8;
      v60 = a7;
      goto LABEL_13;
    }

    v19 = 0;
    while (*(a4 + 4 * v19) < a1)
    {
      if (v15 == ++v19)
      {
        goto LABEL_11;
      }
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v49 = CoreRELog::log;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v54 = *(a4 + 4 * v19);
      *buf = 67109632;
      *&buf[4] = v19;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = v54;
      HIWORD(v65) = 1024;
      LODWORD(v66[0]) = a1;
      v51 = "REGeomMeshCreateFromCoreAttributes - vertexIndicesPerPolygon[%d] specifies an invalid vertex index (%d) which is larger than the specified vertex count of %d.";
      v52 = v49;
      v53 = 20;
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v61 = a6;
  v62 = a5;
  v59 = a8;
  v60 = a7;
  v16 = 0;
LABEL_13:
  bzero(buf, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(v66, 1uLL);
  ++v68;
  re::internal::GeomAttributeManager::GeomAttributeManager(v70);
  re::internal::GeomAttributeManager::addAttribute(v70, "vertexPosition", 1, 7);
  if (v16 < v67)
  {
    v21 = v78;
    if (v78)
    {
      v22 = 0;
      do
      {
        v23 = re::internal::GeomAttributeContainer::attributeByIndex(&v77, v22);
        re::internal::accessFaceVaryingAttributeSubmesh(v23, v24);
        ++v22;
      }

      while (v21 != v22);
    }
  }

  v25 = re::DynamicArray<re::GeomCell4>::resize(v66, v16);
  v74 = v16;
  if (v75)
  {
    v26 = v76;
    v27 = 8 * v75;
    do
    {
      v28 = *v26++;
      v25 = (*(*v28 + 80))(v28, v74);
      v27 -= 8;
    }

    while (v27);
  }

  if (v65 > a1 && v67 && (v67 - 1) > v67)
  {
      ;
    }
  }

  LODWORD(v65) = a1;
  v71 = a1;
  if (v72)
  {
    v29 = v73;
    v30 = 8 * v72;
    do
    {
      v31 = *v29++;
      v25 = (*(*v31 + 80))(v31, v71);
      v30 -= 8;
    }

    while (v30);
  }

  if (a10)
  {
    v25 = re::GeomMesh::setName(buf, a10);
  }

  if (v12)
  {
    v32 = 0;
    v33 = 0;
    v34 = v12;
    do
    {
      v35 = *(v11 + v32);
      v36 = v33;
      v37 = (a4 + 4 * v33);
      if (v35 > 4)
      {
        v25 = re::GeomMeshBuilder::setFaceVertices(buf, v32, *v37, v37[1], v37[2]);
        if (v12 < v12 + v35 - 3)
        {
          v38 = v35 - 2 - 1;
          v39 = (a4 + 12 + 4 * v36);
          do
          {
            v25 = re::GeomMeshBuilder::setFaceVertices(buf, v12++, *v37, *(v39 - 1), *v39);
            ++v39;
            --v38;
          }

          while (v38);
        }
      }

      else
      {
        re::GeomMeshBuilder::setFaceVertices(buf, v32, *(v11 + v32), (a4 + 4 * v33));
      }

      ++v32;
      v33 = v36 + v35;
    }

    while (v32 != v34);
  }

  re::make::shared::object<re::Shareable<re::GeomMesh>>(v25, v87);
  v40 = v87[0];
  re::GeomMesh::operator=(v87[0] + 24, &v65);
  re::GeomMesh::setName((v40 + 24), *buf);
  re::GeomMesh::freeName(buf);
  v41 = v87[0];
  if (!v87[0])
  {
    goto LABEL_59;
  }

  if (!_ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(v87[0] + 24, "vertexPosition", v62))
  {
LABEL_48:
    v41 = 0;
    goto LABEL_59;
  }

  v42 = v61;
  if (v61)
  {
    v43 = re::GeomMesh::addAttribute(v41 + 24, "vertexUV", 1, 6);
    if (!v43)
    {
LABEL_58:
      v41 = 0;
      goto LABEL_59;
    }

    v44 = *(v41 + 40);
    v45 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v43);
    if (v44)
    {
      v14 = &v79;
      v11 = v46;
      v47 = v46;
      while (v47)
      {
        v48 = *v42++;
        *v45++ = v48;
        --v47;
        if (!--v44)
        {
          goto LABEL_45;
        }
      }

      v63 = 0;
      memset(v87, 0, 80);
      v56 = MEMORY[0x1E69E9C10];
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v79 = 136315906;
      v80 = "operator[]";
      v81 = 1024;
      if (v57)
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v82 = 621;
      v83 = 2048;
      v84 = v11;
      v85 = 2048;
      v86 = v11;
      _os_log_send_and_compose_impl(v58, &v63, v87, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v79, 38, v59, v60);
      _os_crash_msg();
      __break(1u);
LABEL_67:
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_50:
      v49 = CoreRELog::log;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = *(v14 + v11);
        *buf = 67109376;
        *&buf[4] = v14;
        LOWORD(v65) = 1024;
        *(&v65 + 2) = v50;
        v51 = "REGeomMeshCreateFromCoreAttributes - vertexCountPerPolygon[%d] contains a degenerate polygon that is only %d-sided.";
        v52 = v49;
        v53 = 14;
LABEL_56:
        _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);
      }

LABEL_57:

      return 0;
    }
  }

LABEL_45:
  if (!_ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(v41 + 24, "vertexNormal", v60))
  {
    goto LABEL_58;
  }

  if (!_ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(v41 + 24, "vertexTangent", v59) || !_ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(v41 + 24, "vertexBitangent", a9))
  {
    goto LABEL_48;
  }

LABEL_59:
  re::GeomMesh::freeName(buf);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v70);
  if (v66[0] && v69)
  {
    (*(*v66[0] + 40))();
  }

  return v41;
}

uint64_t _ZN12_GLOBAL__N_131addAndCopyVertexAttributeHelperIN2re7Vector3IfEEDv3_fEEbRNS1_8GeomMeshEPKcNS1_17GeomAttributeTypeEPKT0_(uint64_t a1, char *a2, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    result = re::GeomMesh::addAttribute(a1, a2, 1, 7);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
    v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(result);
    if (v6)
    {
      v9 = v8;
      v10 = v8;
      do
      {
        if (!v10)
        {
          v15 = 0;
          memset(v24, 0, sizeof(v24));
          v12 = MEMORY[0x1E69E9C10];
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v13 = 3;
          }

          else
          {
            v13 = 2;
          }

          v19 = 621;
          v20 = 2048;
          v21 = v9;
          v22 = 2048;
          v23 = v9;
          _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
          _os_crash_msg();
          __break(1u);
        }

        v11 = *v3++;
        *v7++ = v11;
        --v10;
        --v6;
      }

      while (v6);
    }
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeInt16(uint64_t a1, char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeInt16";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 0)) == 0 || (v7 = v6, *(v6 + 17)) || *(v6 + 16) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeInt16";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!*(v7 + 5))
    {
      v21 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = MEMORY[0x1E69E9C10];
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v25 = 789;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0;
      _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(v7 + 7);
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 2 * v15) = *(a3 + 2 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v21 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    v16 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 621;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v17, &v21, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeUInt16(uint64_t a1, char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeUInt16";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 1)) == 0 || (v7 = v6, *(v6 + 17) != 1) || *(v6 + 16) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeUInt16";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!*(v7 + 5))
    {
      v21 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = MEMORY[0x1E69E9C10];
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v25 = 789;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0;
      _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(v7 + 7);
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 2 * v15) = *(a3 + 2 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v21 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    v16 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 621;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v17, &v21, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeInt32(uint64_t a1, char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeInt32";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 2)) == 0 || (v7 = v6, *(v6 + 17) != 2) || *(v6 + 16) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeInt32";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!*(v7 + 5))
    {
      v21 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = MEMORY[0x1E69E9C10];
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v25 = 789;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0;
      _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(v7 + 7);
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 4 * v15) = *(a3 + 4 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v21 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    v16 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 621;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v17, &v21, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeUInt32(uint64_t a1, char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeUInt32";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 3)) == 0 || (v7 = v6, *(v6 + 17) != 3) || *(v6 + 16) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeUInt32";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!*(v7 + 5))
    {
      v21 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = MEMORY[0x1E69E9C10];
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v25 = 789;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0;
      _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(v7 + 7);
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 4 * v15) = *(a3 + 4 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v21 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    v16 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 621;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v17, &v21, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeFloat(uint64_t a1, char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeFloat";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 4)) == 0 || (v7 = v6, *(v6 + 17) != 4) || *(v6 + 16) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeFloat";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!*(v7 + 5))
    {
      v21 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = MEMORY[0x1E69E9C10];
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v25 = 789;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0;
      _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(v7 + 7);
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 4 * v15) = *(a3 + 4 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v21 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    v16 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 621;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v17, &v21, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeDouble(uint64_t a1, char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeDouble";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 5)) == 0 || (v7 = v6, *(v6 + 17) != 5) || *(v6 + 16) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeDouble";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!*(v7 + 5))
    {
      v21 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = MEMORY[0x1E69E9C10];
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v25 = 789;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0;
      _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(v7 + 7);
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    v15 = 0;
    while (v4 != v15)
    {
      *(v9 + 8 * v15) = *(a3 + 8 * v15);
      if (v8 == ++v15)
      {
        return 1;
      }
    }

    v21 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    v16 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 621;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v17, &v21, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  return 1;
}

uint64_t REGeomMeshAddVertexAttributeVector2F(uint64_t a1, char *a2, uint64_t *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "REGeomMeshAddVertexAttributeVector2F";
    v14 = "%s - attempt to add an attribute with no name.";
    v15 = v13;
    v16 = 12;
    goto LABEL_19;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if ((v6 || (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 6)) != 0) && *(v6 + 17) == 6 && *(v6 + 16) == 1)
  {
    v7 = *(a1 + 40);
    v8 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v6);
    if (!v7)
    {
      return 1;
    }

    v4 = v9;
    for (i = v9; i; --i)
    {
      v11 = *a3++;
      *v8++ = v11;
      if (!--v7)
      {
        return 1;
      }
    }

    v20 = 0;
    memset(buf, 0, sizeof(buf));
    v17 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 621;
    v25 = 2048;
    v26 = v4;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  else if (CoreRELog::onceToken == -1)
  {
    goto LABEL_12;
  }

  dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_12:
  v13 = CoreRELog::log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "REGeomMeshAddVertexAttributeVector2F";
    WORD6(buf[0]) = 2080;
    *(buf + 14) = v4;
    v14 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
    v15 = v13;
    v16 = 22;
LABEL_19:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
  }

LABEL_17:

  return 0;
}

uint64_t REGeomMeshAddVertexAttributeVector3F(uint64_t a1, char *a2, __int128 *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "REGeomMeshAddVertexAttributeVector3F";
    v14 = "%s - attempt to add an attribute with no name.";
    v15 = v13;
    v16 = 12;
    goto LABEL_19;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if ((v6 || (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 7)) != 0) && *(v6 + 17) == 7 && *(v6 + 16) == 1)
  {
    v7 = *(a1 + 40);
    v8 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v6);
    if (!v7)
    {
      return 1;
    }

    v4 = v9;
    for (i = v9; i; --i)
    {
      v11 = *a3++;
      *v8++ = v11;
      if (!--v7)
      {
        return 1;
      }
    }

    v20 = 0;
    memset(buf, 0, sizeof(buf));
    v17 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 621;
    v25 = 2048;
    v26 = v4;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  else if (CoreRELog::onceToken == -1)
  {
    goto LABEL_12;
  }

  dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_12:
  v13 = CoreRELog::log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "REGeomMeshAddVertexAttributeVector3F";
    WORD6(buf[0]) = 2080;
    *(buf + 14) = v4;
    v14 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
    v15 = v13;
    v16 = 22;
LABEL_19:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
  }

LABEL_17:

  return 0;
}

uint64_t REGeomMeshAddVertexAttributeVector4F(uint64_t a1, char *a2, __int128 *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "REGeomMeshAddVertexAttributeVector4F";
    v11 = "%s - attempt to add an attribute with no name.";
    v12 = v10;
    v13 = 12;
    goto LABEL_23;
  }

  v4 = a2;
  v6 = re::internal::GeomAttributeManager::attributeByName((a1 + 88), a2);
  if (!v6 && (v6 = re::GeomMesh::addAttribute(a1 + 24, v4, 1, 8)) == 0 || (v7 = v6, *(v6 + 17) != 8) || *(v6 + 16) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_11:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "REGeomMeshAddVertexAttributeVector4F";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      v11 = "%s - attempt to add a attribute named %s which conflicts in type/name of an existing attribute of the same name.";
      v12 = v10;
      v13 = 22;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_16;
    }

LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  if ((*(*v6 + 16))(v6))
  {
    if (!*(v7 + 5))
    {
      v22 = 0;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      memset(buf, 0, sizeof(buf));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 789;
      v27 = 2048;
      v28 = 0;
      v29 = 2048;
      v30 = 0;
      _os_log_send_and_compose_impl(v20, &v22, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(v7 + 7);
    v4 = (*(*v7 + 16))(v7);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
  if (v8)
  {
LABEL_18:
    for (i = v4; i; --i)
    {
      v16 = *a3++;
      *v9++ = v16;
      if (!--v8)
      {
        return 1;
      }
    }

    v22 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(buf, 0, sizeof(buf));
    v17 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v26 = 621;
    v27 = 2048;
    v28 = v4;
    v29 = 2048;
    v30 = v4;
    _os_log_send_and_compose_impl(v18, &v22, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesInt16(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17))
  {
    return 0;
  }

  v6 = v4;
  v7 = re::GeomAttribute::accessValues<int>(v4);
  v9 = v8;
  v10 = (*(*v6 + 16))(v6);
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    do
    {
      if (!v12)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v9;
        v24 = 2048;
        v25 = v9;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v13 = *v7++;
      *a3++ = v13;
      --v12;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesUInt16(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 1)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v8;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesInt32(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 2)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v8;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesUInt32(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 3)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v8;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesFloat(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 4)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v8;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesDouble(uint64_t a1, unsigned int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 5)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v8;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesVector2F(uint64_t a1, unsigned int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 6)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v8;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesVector3F(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 7)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v8;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValuesVector4F(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (*(v4 + 17) != 8)
  {
    return 0;
  }

  v5 = v4;
  v6 = re::GeomAttribute::accessValues<int>(v4);
  v8 = v7;
  v9 = (*(*v5 + 16))(v5);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    do
    {
      if (!v11)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 613;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v8;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *v6++;
      *a3++ = v12;
      --v11;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t REGeomMeshGetAttributeValueInt16(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17])
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 2 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueUInt16(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 1)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 2 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueInt32(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 2)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 4 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueUInt32(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 3)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 4 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueFloat(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 4)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 4 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueDouble(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 5)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 8 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueVector2F(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 6)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 8 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueVector3F(uint64_t a1, unsigned int a2, unsigned int a3, _OWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 7)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 16 * a3);
  return 1;
}

uint64_t REGeomMeshGetAttributeValueVector4F(uint64_t a1, unsigned int a2, unsigned int a3, _OWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v6 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v6[17] != 8)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 16))(v6) <= a3)
  {
    return 0;
  }

  v8 = re::GeomAttribute::accessValues<int>(v7);
  if (v9 <= a3)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v9;
    v16 = 136315906;
    v17 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 1024;
    v19 = 613;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *a4 = *(v8 + 16 * a3);
  return 1;
}

BOOL REGeomMeshGetAttributeValuesByIndicesInt16(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _WORD *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17])
  {
    return 0;
  }

  v11 = v8;
  v12 = (*(*v8 + 16))(v8);
  v13 = re::GeomAttribute::accessValues<int>(v11);
  if (!a3)
  {
    return 1;
  }

  v15 = v14;
  v16 = a3;
  do
  {
    v18 = *a4++;
    v17 = v18;
    v9 = v18 < v12;
    if (v18 >= v12)
    {
      break;
    }

    if (v17 >= v14)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v17;
      v29 = 2048;
      v30 = v15;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v13 + 2 * v17);
    --v16;
  }

  while (v16);
  return v9;
}

BOOL REGeomMeshGetAttributeValuesByIndicesUInt16(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _WORD *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 1)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = v12;
  v14 = a3;
  do
  {
    v16 = *a4++;
    v15 = v16;
    v17 = v16 < v10;
    if (v16 >= v10)
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 2 * v15);
    --v14;
  }

  while (v14);
  return v17;
}

BOOL REGeomMeshGetAttributeValuesByIndicesInt32(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 2)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = v12;
  v14 = a3;
  do
  {
    v16 = *a4++;
    v15 = v16;
    v17 = v16 < v10;
    if (v16 >= v10)
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 4 * v15);
    --v14;
  }

  while (v14);
  return v17;
}

BOOL REGeomMeshGetAttributeValuesByIndicesUInt32(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 3)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = v12;
  v14 = a3;
  do
  {
    v16 = *a4++;
    v15 = v16;
    v17 = v16 < v10;
    if (v16 >= v10)
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 4 * v15);
    --v14;
  }

  while (v14);
  return v17;
}

BOOL REGeomMeshGetAttributeValuesByIndicesFloat(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 4)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = v12;
  v14 = a3;
  do
  {
    v16 = *a4++;
    v15 = v16;
    v17 = v16 < v10;
    if (v16 >= v10)
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 4 * v15);
    --v14;
  }

  while (v14);
  return v17;
}

BOOL REGeomMeshGetAttributeValuesByIndicesDouble(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 5)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = v12;
  v14 = a3;
  do
  {
    v16 = *a4++;
    v15 = v16;
    v17 = v16 < v10;
    if (v16 >= v10)
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 8 * v15);
    --v14;
  }

  while (v14);
  return v17;
}

BOOL REGeomMeshGetAttributeValuesByIndicesVector2F(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 6)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = v12;
  v14 = a3;
  do
  {
    v16 = *a4++;
    v15 = v16;
    v17 = v16 < v10;
    if (v16 >= v10)
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 8 * v15);
    --v14;
  }

  while (v14);
  return v17;
}

BOOL REGeomMeshGetAttributeValuesByIndicesVector3F(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _OWORD *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 7)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = v12;
  v14 = a3;
  do
  {
    v16 = *a4++;
    v15 = v16;
    v17 = v16 < v10;
    if (v16 >= v10)
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 16 * v15);
    --v14;
  }

  while (v14);
  return v17;
}

BOOL REGeomMeshGetAttributeValuesByIndicesVector4F(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, _OWORD *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 664) <= a2)
  {
    return 0;
  }

  v8 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 88), a2);
  if (v8[17] != 8)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 16))(v8);
  v11 = re::GeomAttribute::accessValues<int>(v9);
  if (!a3)
  {
    return 1;
  }

  v13 = v12;
  v14 = a3;
  do
  {
    v16 = *a4++;
    v15 = v16;
    v17 = v16 < v10;
    if (v16 >= v10)
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 613;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    *a5++ = *(v11 + 16 * v15);
    --v14;
  }

  while (v14);
  return v17;
}

uint64_t REGeomCompareMeshes(uint64_t a1, uint64_t a2, const re::GeomMesh *a3, float a4)
{
  re::internal::compareMeshes((a1 + 24), (a2 + 24), a3, a4, v13);
  v4 = re::GeomMeshBuilder::GeomMeshBuilder(&v8, v13);
  re::make::shared::object<re::Shareable<re::GeomMesh>>(v4, &v14);
  v5 = v14;
  re::GeomMesh::operator=(v14 + 24, &v9);
  re::GeomMesh::setName((v5 + 24), v8);
  re::GeomMesh::freeName(&v8);
  v6 = v14;
  re::GeomMesh::freeName(&v8);
  re::internal::GeomAttributeManager::~GeomAttributeManager(&v12);
  if (v10 && v11)
  {
    (*(*v10 + 40))();
  }

  re::GeomMesh::~GeomMesh(v13);
  return v6;
}

void *re::make::shared::object<re::Shareable<re::GeomMesh>>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 760, 8);
  result = re::Shareable<re::GeomMesh>::Shareable<>(v4);
  *a2 = result;
  return result;
}

void *re::Shareable<re::GeomMesh>::Shareable<>(void *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D2D2A8;
  re::GeomMesh::GeomMesh((a1 + 3), 0);
  return a1;
}

uint64_t re::Shareable<re::GeomMesh>::~Shareable(uint64_t a1)
{
  *a1 = &unk_1F5D2D2A8;
  re::GeomMesh::~GeomMesh((a1 + 24));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance((a1 + 8));
  return a1;
}

void re::Shareable<re::GeomMesh>::~Shareable(uint64_t a1)
{
  *a1 = &unk_1F5D2D2A8;
  re::GeomMesh::~GeomMesh((a1 + 24));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance((a1 + 8));

  JUMPOUT(0x1E6906520);
}

void *RESubsceneComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SubsceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void RESubsceneComponentSetSubscene(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v3);
  re::ecs2::SubsceneComponent::setSubscene(a1, v3);
  re::AssetHandle::~AssetHandle(v3);
}

void RESubsceneComponentLoad(uint64_t a1)
{
  re::AssetHandle::AssetHandle(v2, (a1 + 32));
  re::ecs2::SubsceneComponent::setSubscene(a1, v2);
  re::AssetHandle::~AssetHandle(v2);
}

void *RESkyboxComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void RESkyboxComponentSetTexture()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "Please use RESkyboxComponentSetMaterial(). Will be deleted in M9.", v1, 2u);
  }
}

uint64_t RESkyboxComponentGetTexture()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "Please use RESkyboxComponentGetMaterial(). Will be deleted in M9.", v2, 2u);
  }

  return 0;
}

void RESkyboxComponentSetMaterial(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v5);
  v3 = *(a1 + 32);
  *(a1 + 32) = v5;
  v5 = v3;
  v4 = *(a1 + 48);
  *(a1 + 48) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

void RESkyboxComponentSetMaterialBlockParameter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = a2;
  if (v5)
  {
  }
}

void *REConstraintListComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void *REDeferredActivationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *RECameraMovementComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::CameraMovementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REClientWorldOriginOverrideComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

__CFArray *REAssetManagerGetRegisteredAssetTypeNames(uint64_t a1)
{
  v1 = *(a1 + 1808);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = 0;
    v5 = *(v1 + 16);
    while (1)
    {
      v6 = *v5;
      v5 += 16;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(v1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(v1 + 16);
    do
    {
      v8 = CFStringCreateWithCString(0, **(v7 + (v4 << 6) + 8), 0x8000100u);
      CFArrayAppendValue(Mutable, v8);
      CFRelease(v8);
      if (*(v1 + 32) <= (v4 + 1))
      {
        v9 = v4 + 1;
      }

      else
      {
        v9 = *(v1 + 32);
      }

      v7 = *(v1 + 16);
      while (v9 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + (v4 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v4) = v9;
LABEL_18:
      ;
    }

    while (v4 != v3);
  }

  return Mutable;
}

uint64_t REAssetManagerCreateSampleAsset(void *a1, char *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a1[226];
  v7 = re::internal::AssetTypeRegistry::assetTypeWithName(v6, a2);
  if (!v7)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *v16 = 136315138;
    *&v16[4] = a2;
    v14 = "%s is not the name of a registered asset type.";
    goto LABEL_18;
  }

  v8 = v7;
  *v16 = v7;
  v9 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, v16);
  (*(**v9 + 128))(*v9);
  v10 = (*(**v9 + 168))();
  if (!v10)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *v16 = 136315138;
    *&v16[4] = a2;
    v14 = "Failed to create a default AssetPointer for asset type %s.";
LABEL_18:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, v16, 0xCu);
LABEL_15:

    return 0;
  }

  (*(*a1 + 424))(v16, a1, v10, v8, 0, 0, 0);
  v11 = *v16;
  v12 = (*v16 + 8);
  re::AssetHandle::~AssetHandle(v16);
  return v11;
}

uint64_t REAssetManagerGetAssetTypeInitialRelease(uint64_t a1, char *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1808);
  v6 = re::internal::AssetTypeRegistry::assetTypeWithName(v5, a2);
  if (v6)
  {
    *buf = v6;
    v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v5, buf);
    (*(**v7 + 128))(*v7);
    v13 = *((*(**v7 + 128))() + 32);
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v12);
    if (buf[0] == 1)
    {
      v8 = *(v15 + 64);
    }

    else
    {
      v8 = -1;
    }

    v10 = re::TypeAvailabilityUtilities::convertToMajorVersion(v8);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v12);
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "%s is not the name of a registered asset type.", buf, 0xCu);
    }

    return 0;
  }

  return v10;
}

BOOL REAssetManagerRunTaskInBackgroundLoadingGroup(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v9 = a2;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __REAssetManagerRunTaskInBackgroundLoadingGroup_block_invoke;
    v7[3] = &unk_1E8722BD8;
    v8 = v5;
    re::AssetManager::runTaskInBackgroundLoadingGroup(a1, &v9, v7);
  }

  return v5 != 0;
}

void *REProjectiveShadowReceiverComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *addShadowReceiverToEntitySubtree(void *result, int a2)
{
  v3 = result;
  if (result[24])
  {
    result = re::ecs2::EntityComponentCollection::getOrAdd((result + 6), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  if (v3[30])
  {
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = re::ecs2::EntityComponentCollection::add((v3 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!a2)
    {
      return result;
    }
  }

  v4 = v3[43];
  if (v4)
  {
    v5 = v3[45];
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      result = addShadowReceiverToEntitySubtree(v7, 1);
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void removeShadowReceiverFromEntitySubtree(re::ecs2::Entity *a1, int a2)
{
  re::ecs2::EntityComponentCollection::remove((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(a1 + 49);
  if (!*(a1 + 49))
  {
    goto LABEL_7;
  }

  v5 = (re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
  v6 = *(a1 + 13);
  v7 = vld1q_dup_s16(v5);
  v8 = 1;
  while (1)
  {
    v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
    v9.i16[0] = vmaxvq_u16(v9);
    if (v9.i32[0])
    {
      break;
    }

    v8 -= 8;
    ++v6;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }

  if (v9.u16[0] - v8 >= *(a1 + 48))
  {
LABEL_7:
    re::ecs2::EntityComponentCollection::remove((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  if (a2)
  {
    v10 = *(a1 + 43);
    if (v10)
    {
      v11 = *(a1 + 45);
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        removeShadowReceiverFromEntitySubtree(v13, 1);
        v12 -= 8;
      }

      while (v12);
    }
  }
}

void REProjectiveShadowReceiverSystemSetShadowClusterExtentDiscrepancy(float a1)
{
  if ((re::ShadowManager::getMutableDeprecatedShadowParams(void)::deprecatedShadowParams & 1) == 0)
  {
    re::ShadowManager::getMutableDeprecatedShadowParams(void)::deprecatedShadowParams = 1;
  }

  dword_1ECF1C4AC = LODWORD(a1);
}

float REProjectiveShadowReceiverSystemGetShadowClusterExtentDiscrepancy()
{
  result = *&dword_1ECF1C4AC;
  if (!re::ShadowManager::getMutableDeprecatedShadowParams(void)::deprecatedShadowParams)
  {
    return 0.0;
  }

  return result;
}

void REProjectiveShadowReceiverSystemSetShadowClusteringFudgeFactor(float a1)
{
  if ((byte_1ECF1C4B0 & 1) == 0)
  {
    byte_1ECF1C4B0 = 1;
  }

  dword_1ECF1C4B4 = LODWORD(a1);
}

float REProjectiveShadowReceiverSystemGetShadowClusteringFudgeFactor()
{
  result = *&dword_1ECF1C4B4;
  if (!byte_1ECF1C4B0)
  {
    return 1.0;
  }

  return result;
}

BOOL REEntityGetProjectiveShadowClusterID(uint64_t a1, void *a2)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    v2 = *(v2 + 64);
    result = v2 != 0;
  }

  else
  {
    result = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t re::convert(int a1)
{
  if (a1 > 47)
  {
    if (a1 <= 49)
    {
      if (a1 == 48)
      {
        return 6;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      switch(a1)
      {
        case 50:
          return 8;
        case 64:
          return 1;
        case 128:
          return 10;
        default:
          return 0;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = 2;
        break;
      case 2:
        result = 9;
        break;
      case 3:
        result = 11;
        break;
      case 4:
        result = 13;
        break;
      case 5:
        result = 15;
        break;
      case 6:
        result = 17;
        break;
      case 7:
        result = 12;
        break;
      case 8:
        result = 14;
        break;
      case 9:
        result = 16;
        break;
      case 10:
        result = 18;
        break;
      case 20:
        result = 19;
        break;
      case 21:
        result = 20;
        break;
      case 32:
        result = 3;
        break;
      case 33:
        result = 4;
        break;
      case 34:
        result = 5;
        break;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t RETypeRegistryCreateTestData(re::TypeRegistry *a1)
{
  *&v47 = 6059476;
  *(&v47 + 1) = "BOOL";
  re::TypeBuilderHelper::registerBasic<BOOL>(a1, &v47, &v44);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 208862;
  *(&v47 + 1) = "int";
  re::TypeBuilderHelper::registerBasic<int>(a1, &v47, &v43);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 0x161EEF7A2;
  *(&v47 + 1) = "double";
  re::TypeBuilderHelper::registerBasic<double>(a1, &v47, &v42);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 0x971D12FA97F764A2;
  *(&v47 + 1) = "Optional<double>";
  re::TypeBuilderHelper::registerOptional<double>(a1, &v47, &v42, &v41);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 0x172E213ACLL;
  *(&v47 + 1) = "int[3]";
  re::TypeBuilderHelper::registerArray(a1, &v47, &v43, 3uLL, &v40);
  if (v47)
  {
    if (v47)
    {
    }
  }

  *&v47 = 0x67A219376628FE62;
  *(&v47 + 1) = "DynamicArray<int>";
  re::TypeBuilderHelper::registerDynamicArray<int>(a1, &v47, &v43, &v39);
  if (v47)
  {
    if (v47)
    {
    }
  }

  v37[0] = 0xE7E18952C29E6A8;
  v37[1] = "HashTable<int,double>";
  v8 = re::TypeRegistry::typeID(&v55, a1, v37);
  if (v55)
  {
    v38 = v55;
  }

  else
  {
    *&v47 = 0x449AD97C4B77BED4;
    *(&v47 + 1) = "_CompareFunc";
    v9 = re::TypeRegistry::typeID(&v54, a1, &v47);
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (!v54)
    {
      v49[0] = 0x449AD97C4B77BED4;
      v49[1] = "_CompareFunc";
      re::TypeRegistry::declareType(&v47, v49, a1, 8, 1u, 0);
      v54 = v47;
      if (v49[0])
      {
        if (v49[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, &v43, &v47);
    re::TypeInfo::TypeInfo(&v52, &v47 + 8);
    if (!v54 || (v11 = *v53, *&v47 = *(&v54 + 1), *(&v47 + 1) = v11, v48 = -1, (v12 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v52 + 768, &v47)) == 0) || !*v12)
    {
      v50 = v54;
      v51 = v43;
      re::TypeRegistry::addAttribute(a1, &v51, 0xFFFFFFFFLL, &v50, re::internal::less<int>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v49);
    re::TypeBuilder::TypeBuilder(&v47, v49);
    v45 = v42;
    v46 = v43;
    re::TypeBuilder::beginDictionaryType(&v47, v37, 1, 0x30uLL, 8uLL, &v46, &v45);
    re::TypeBuilder::setConstructor(&v47, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v47, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v47, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v47, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(&v38, &v47, a1);
    re::TypeBuilder::~TypeBuilder(&v47, v13);
    re::StackScratchAllocator::~StackScratchAllocator(v49);
  }

  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  re::TypeBuilderHelper::registerDynamicString(&v52, a1);
  re::TypeBuilderHelper::registerStringID(&v55, a1);
  re::StackScratchAllocator::StackScratchAllocator(v49);
  re::TypeBuilder::TypeBuilder(&v47, v49);
  *&v54 = 0x45F7EF0E6F8;
  *(&v54 + 1) = "TestData";
  v36[0] = 0;
  v36[1] = 0xFFFFFFFFLL;
  v14 = re::TypeBuilder::beginObjectType(&v47, &v54, 1, 1, 0xB8uLL, 8uLL, v36);
  if (v54)
  {
    if (v54)
    {
    }
  }

  re::TypeBuilder::setConstructor(&v47, RETypeRegistryCreateTestData::$_0::__invoke);
  re::TypeBuilder::setDestructor(&v47, RETypeRegistryCreateTestData::$_1::__invoke);
  v35 = v44;
  *&v54 = 196;
  *(&v54 + 1) = "b";
  v15 = re::TypeBuilder::addObjectMember(&v47, 1, &v35, &v54, 0);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v34 = v43;
  *&v54 = 210;
  *(&v54 + 1) = "i";
  v16 = re::TypeBuilder::addObjectMember(&v47, 2, &v34, &v54, 4);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v33 = v42;
  *&v54 = 200;
  *(&v54 + 1) = "d";
  v17 = re::TypeBuilder::addObjectMember(&v47, 3, &v33, &v54, 8);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v32 = v41;
  *&v54 = 0x5BDF69496C0;
  *(&v54 + 1) = "optional";
  v18 = re::TypeBuilder::addObjectMember(&v47, 4, &v32, &v54, 16);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v31 = v40;
  *&v54 = 0x13D298C84A468ALL;
  *(&v54 + 1) = "fixedArray";
  v19 = re::TypeBuilder::addObjectMember(&v47, 5, &v31, &v54, 32);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v30 = v39;
  *&v54 = 0x495BC3BA4202E2B4;
  *(&v54 + 1) = "dynamicArray";
  v20 = re::TypeBuilder::addObjectMember(&v47, 6, &v30, &v54, 48);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v29 = v38;
  *&v54 = 0xA66423A206C0;
  *(&v54 + 1) = "hashTable";
  v21 = re::TypeBuilder::addObjectMember(&v47, 7, &v29, &v54, 88);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v28 = v52;
  *&v54 = 0xE21CB38E3C008260;
  *(&v54 + 1) = "dynamicString";
  v22 = re::TypeBuilder::addObjectMember(&v47, 8, &v28, &v54, 136);
  if (v54)
  {
    if (v54)
    {
    }
  }

  v27 = v55;
  *&v54 = 0x5F2D5FB51D8;
  *(&v54 + 1) = "stringID";
  v23 = re::TypeBuilder::addObjectMember(&v47, 9, &v27, &v54, 168);
  if (v54)
  {
    if (v54)
    {
    }
  }

  re::TypeBuilder::commitTo(&v54, &v47, a1);
  v24 = v54;
  re::TypeBuilder::~TypeBuilder(&v47, v25);
  re::StackScratchAllocator::~StackScratchAllocator(v49);
  return v24;
}

uint64_t RETypeRegistryCreateTestData::$_0::__invoke(RETypeRegistryCreateTestData::$_0 *this, void *a2, const re::TypeInfo *a3, re::Allocator *a4, void *a5)
{
  *(this + 16) = 0;
  *(this + 6) = 0;
  v6 = (this + 48);
  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0x7FFFFFFFLL;
  *(this + 136) = 0u;
  v7 = (this + 136);
  *(this + 152) = 0u;
  re::DynamicString::setCapacity(v7, 0);
  *(this + 21) = 0;
  *(this + 22) = &str_67;
  *this = 1;
  *(this + 1) = -123;
  *(this + 1) = 0x405EDD2F1A9FBE77;
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 16) = 1;
  }

  *(this + 3) = 0x3FBF7CED916872B0;
  *(this + 4) = 0xFFFFFFFEFFFFFFFFLL;
  *(this + 10) = -3;
  for (i = 1; i != 6; ++i)
  {
    LODWORD(v13) = i;
    re::DynamicArray<int>::add(v6, &v13);
  }

  for (j = 1; j != 3; ++j)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (j ^ (j >> 30))) ^ ((0xBF58476D1CE4E5B9 * (j ^ (j >> 30))) >> 27));
    re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v13, this + 88, j, v10 ^ (v10 >> 31));
    if (HIDWORD(v14) == 0x7FFFFFFF)
    {
      v11 = re::HashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(this + 88, v14, v13);
      *(v11 + 4) = j;
      *(v11 + 8) = j / 10.0;
      ++*(this + 32);
    }
  }

  v13 = "DynamicString Test";
  v14 = 18;
  re::DynamicString::operator=(v7, &v13);
  re::StringID::destroyString((this + 168));
  result = re::internal::compileTimeHornerHash<15ul>(31, "StringID Test", 0, 0, 13);
  *(this + 21) = 2 * result;
  *(this + 22) = "StringID Test";
  return result;
}

uint64_t re::HashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = re::HashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                *(v18 + 4) = *(v17 - 1);
                *(v18 + 8) = *v17;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

uint64_t RETypeRegistryCreateTestData::$_1::__invoke(uint64_t *a1)
{
  re::StringID::destroyString((a1 + 21));
  re::DynamicString::deinit((a1 + 17));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1 + 11);

  return re::DynamicArray<unsigned long>::deinit((a1 + 6));
}

void re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1);

  return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {
    if (*(a1 + 28))
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v5);
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(a1 + 16);
        do
        {
          if ((*v7 & 0x80000000) != 0)
          {
            *v7 &= ~0x80000000;
          }

          v7 += 6;
          --v6;
        }

        while (v6);
      }

      *(a1 + 28) = 0;
      *(a1 + 32) = 0;
      v8 = *(a1 + 40) + 1;
      *(a1 + 36) = 0x7FFFFFFF;
      *(a1 + 40) = v8;
    }
  }

  else
  {
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1);

    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, int *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], &v18);
  re::TypeInfo::TypeInfo(v17, v19);
  Instance = re::TypeInfo::createInstance(v17, a3, 0);
  v18 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v9 = *a4;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v18, a1, v9, v10 ^ (v10 >> 31));
  v11 = HIDWORD(v19[0]);
  if (HIDWORD(v19[0]) == 0x7FFFFFFF)
  {
    v12 = re::HashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, v19[0], v18);
    v13 = *a4;
    *(v12 + 8) = *Instance;
    v14 = v12 + 8;
    *(v12 + 4) = v13;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v15 = *(a1 + 16) + 24 * v11;
    *(v15 + 8) = *Instance;
    v14 = v15 + 8;
  }

  re::TypeRegistry::typeInfo(*a2, a2[2][11], &v18);
  re::TypeInfo::TypeInfo(v17, v19);
  re::TypeInfo::releaseInstance(v17, Instance, a3, 0);
  return v14;
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v6, a1, v3, v4 ^ (v4 >> 31));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v7 + 8;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 24 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 6;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 24 * *(a1 + 32) + 4;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 24 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<int,double,re::Hash<int>,re::EqualTo<int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *REBillboardComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

double REAudioFileAssetConfigurationCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 88, 8);
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 24) = 0xC028000000000000;
  return result;
}

re *REAudioFileAssetConfigurationDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    if (*(v1 + 32) == 1)
    {
      v3.n128_f64[0] = re::DynamicString::deinit((v1 + 40));
    }

    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

uint64_t REAudioFileAssetConfigurationSetLayoutTag(uint64_t result, int a2)
{
  if ((*(result + 72) & 1) == 0)
  {
    *(result + 72) = 1;
  }

  *(result + 76) = a2;
  return result;
}

uint64_t REAudioFileAssetConfigurationSetMixGroupName(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = [a2 UTF8String];
    v9[0] = 1;
    re::DynamicString::DynamicString(&v10, &v6);
    re::Optional<re::DynamicString>::operator=(a1 + 32, v9);
    if (v9[0] == 1 && v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }

    result = v6;
    if (v6 && (v7 & 1) != 0)
    {
      v5 = v8;
      return (*(*result + 40))(result, v5);
    }
  }

  else
  {
    v9[0] = 0;
    result = re::Optional<re::DynamicString>::operator=(a1 + 32, v9);
    if (v9[0] == 1)
    {
      result = v10;
      if (v10)
      {
        if (v11)
        {
          v5 = v12;
          return (*(*result + 40))(result, v5);
        }
      }
    }
  }

  return result;
}

id REAudioFileAssetConfigurationGetMixGroupName(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 48))
    {
      v3 = *(a1 + 56);
    }

    else
    {
      v3 = a1 + 49;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v3, v1}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id REAssetManagerGetEngineQueue(uint64_t a1)
{
  v1 = *(a1 + 776);
  v2 = v1;

  return v1;
}

CFStringRef REAssetManagerCopyResolvedAssetPath(os_unfair_lock_s **a1, char *a2)
{
  if (v16 != 1)
  {
    v6 = 0;
LABEL_24:
    v4 = &v19;
    goto LABEL_25;
  }

  v4 = &v18;
  v12 = v17;
  re::DynamicString::DynamicString(&v13, &v18);
  re::DynamicString::DynamicString(v15, v20);
  v15[4] = v20[4];
  re::AssetProviderRegistry::getPathFromResolver(&v8, a1[238], &v13, v15);
  if (v8 == 1)
  {
    if (v10)
    {
      v5 = *&v11[7];
    }

    else
    {
      v5 = v11;
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
    if (v8 & 1) != 0 && v9 && (v10)
    {
      (*(*v9 + 40))();
    }
  }

  else
  {
    v6 = 0;
  }

  if (v15[0])
  {
    if (v15[1])
    {
      (*(*v15[0] + 40))();
    }

    memset(v15, 0, 32);
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v20[0])
  {
    if (v20[1])
    {
      (*(*v20[0] + 40))();
    }

    memset(v20, 0, 32);
  }

LABEL_25:
  re::DynamicString::deinit(v4);
  return v6;
}

uint64_t REAssetDeduplicationOperationCreate(_anonymous_namespace_ *a1, uint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      re::AssetAPIHelper::assetHandleCreate(*(a2 + 8 * v8), &v21);
      v9 = v25;
      if (v25 <= v8)
      {
        v27 = 0;
        memset(v33, 0, sizeof(v33));
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v28 = 136315906;
        *&v28[4] = "operator[]";
        *&v28[12] = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        *&v28[14] = 468;
        v29 = 2048;
        v30 = v8;
        v31 = 2048;
        v32 = v9;
        _os_log_send_and_compose_impl(v19, &v27, v33, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v28, 38, v20, v21);
        _os_crash_msg();
        __break(1u);
      }

      v10 = (v26 + v7);
      v11 = *(v26 + v7 + 8);
      v10[1] = v22;
      v22 = v11;
      v12 = *v10;
      *v10 = 0;
      *v10 = v21;
      v21 = v12;
      v13 = v10[2];
      v10[2] = v23;
      v23 = v13;
      re::AssetHandle::~AssetHandle(&v21);
      ++v8;
      v7 += 24;
    }

    while (a3 != v8);
  }

  v14 = re::globalAllocators(v6);
  v15 = (*(*v14[2] + 32))(v14[2], 72, 8);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v15, 0);
  *v15 = &unk_1F5D2D358;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0;
  *(v15 + 24) = 0u;
  *(v15 + 60) = 0x7FFFFFFFLL;
  *v28 = v26;
  *&v28[8] = v25;
  re::AssetDeduplication::deduplicate(v28, a1, v33);
  re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::operator=(v15 + 24, v33);
  re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v33);
  re::FixedArray<re::AssetHandle>::deinit(&v24);
  return v15;
}

uint64_t REAssetDeduplicationOperationGetDeduplicatedAsset(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  re::AssetAPIHelper::assetHandleCreate(a2, &v9);
  if (v10)
  {
    v4 = *(v10 + 792);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1 + 24, &v9, v4 ^ (v5 >> 31) ^ v5, &v11);
  if (v12 != 0x7FFFFFFF)
  {
    if (v10)
    {
      v6 = *(v10 + 792);
    }

    else
    {
      v6 = 0;
    }

    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1 + 24, &v9, v6 ^ (v7 >> 31) ^ v7, &v11);
    re::AssetHandle::AssetHandle(&v11, (*(a1 + 40) + (v12 << 6) + 32));
    v2 = v11;
    re::AssetHandle::~AssetHandle(&v11);
  }

  re::AssetHandle::~AssetHandle(&v9);
  return v2;
}

uint64_t REAssetDeduplicationOperationCreateAssetPathMapping(uint64_t a1, uint64_t a2)
{
  re::AssetDeduplication::remap(a1 + 24, a2 + 24, v9);
  re::make::shared::object<re::Shareable<re::AssetPathMapping>>(v2, &v8);
  v3 = v8;
  v4 = (v8 + 24);
  if ((v8 + 24) != v9)
  {
    if (*v4)
    {
      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(v8 + 24);
      if (v9[0])
      {
        if (*(v3 + 48) < v10)
        {
          re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(v4, v10);
        }

        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::copy(v4, v9);
        ++*(v3 + 64);
      }
    }

    else if (v9[0])
    {
      if (v10 <= 3)
      {
        v5 = 3;
      }

      else
      {
        v5 = v10;
      }

      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(v8 + 24, v9[0], v5);
      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::copy(v4, v9);
    }
  }

  v6 = v8;
  re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v9);
  return v6;
}

uint64_t REAssetManagerCustomMemoryAssetCreate(re *a1, uint64_t a2, const void *a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 16, 8);
  *v7 = &unk_1F5CB8378;
  *(v7 + 1) = 0;
  re::CustomAsset::setRuntimeObject(v7, a3);
  (*(*a1 + 424))(v11, a1, v7, a2, 0, 0, 0);
  v8 = v11[0];
  v9 = (v11[0] + 8);
  re::AssetHandle::~AssetHandle(v11);
  return v8;
}

uint64_t REAssetManagerAddCleanupCallback(uint64_t a1, void *aBlock)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D2D3A0;
  v4[1] = _Block_copy(aBlock);
  v4[3] = v4;
  re::AssetManager::addCleanupBlock(a1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

uint64_t REAssetHandleCreateFromAssetRegistrationOptions(os_unfair_lock_s *a1, uint64_t *a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  re::DynamicString::DynamicString(&v12, (a2 + 3));
  re::DynamicArray<BOOL>::DynamicArray(v14, a2 + 7);
  re::DynamicArray<BOOL>::DynamicArray(v17, a2 + 12);
  re::DynamicString::DynamicString(v20, (a2 + 17));
  if (*(a3 + 24) == 1)
  {
    re::AssetManager::createNewMutableAssetHandle(a1, &v12, 0, 1, &v9);
  }

  else
  {
    os_unfair_lock_lock(a1 + 32);
    re::AssetManager::assetHandle_assetTablesLocked(&v9, a1, &v12);
    os_unfair_lock_unlock(a1 + 32);
  }

  v6 = v9;
  v21 = v9;
  v22 = v10;
  v9 = 0;
  v10 = 0;
  v23 = v11;
  v11 = 0;
  re::AssetHandle::~AssetHandle(&v9);
  v7 = (v6 + 8);
  if (v20[0])
  {
    if (v20[1])
    {
      (*(*v20[0] + 40))();
    }

    memset(v20, 0, sizeof(v20));
  }

  if (v17[0])
  {
    if (v19)
    {
      (*(*v17[0] + 40))();
    }

    v19 = 0;
    memset(v17, 0, sizeof(v17));
    ++v18;
  }

  if (v14[0])
  {
    if (v16)
    {
      (*(*v14[0] + 40))();
    }

    v16 = 0;
    memset(v14, 0, sizeof(v14));
    ++v15;
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  re::AssetHandle::~AssetHandle(&v21);
  return v6;
}

uint64_t REAssetHandleCreateNewFromAssetRegistrationOptions(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v26 = 0uLL;
  v27 = 0;
  re::DynamicString::DynamicString(&v15, (a2 + 3));
  re::DynamicArray<BOOL>::DynamicArray(v18, a2 + 7);
  re::DynamicArray<BOOL>::DynamicArray(v21, a2 + 12);
  re::DynamicString::DynamicString(&v24, (a2 + 17));
  if (*(a3 + 24) == 1)
  {
    re::AssetManager::createNewMutableAssetHandle(a1, &v15, 0, 1, &v13);
    v6 = v26;
    v26 = v13;
    v13 = v6;
    v7 = v27;
    v27 = v14;
    v14 = v7;
    v8 = &v13;
    goto LABEL_3;
  }

  re::AssetManager::createNewImmutableAssetHandle(a1, &v15, 0, &v13);
  if (v13 == 1)
  {
    re::AssetHandle::operator=(&v26, &v13 + 1);
    if (v13 != 1)
    {
      goto LABEL_4;
    }

    v8 = (&v13 + 8);
LABEL_3:
    re::AssetHandle::~AssetHandle(v8);
LABEL_4:
    v9 = v26;
    v10 = (v26 + 8);
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:
  if (v24)
  {
    if (BYTE8(v24))
    {
      (*(*v24 + 40))(v24, v25, v11);
    }

    v24 = 0u;
    v25 = 0u;
  }

  if (v21[0])
  {
    if (v23)
    {
      (*(*v21[0] + 40))(v21[0], v23, v11);
    }

    v23 = 0;
    memset(v21, 0, sizeof(v21));
    ++v22;
  }

  if (v18[0])
  {
    if (v20)
    {
      (*(*v18[0] + 40))(v18[0], v20, v11);
    }

    v20 = 0;
    memset(v18, 0, sizeof(v18));
    ++v19;
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))(v15, v17, v11);
  }

  re::AssetHandle::~AssetHandle(&v26);
  return v9;
}

uint64_t REAssetHandleIsMutable(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(v3[1] + 257);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

uint64_t REAssetHandleIsMutated(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(v3[1] + 256);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

uint64_t REAssetHandleConvertToMutable(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v4);
  if (v5 && (v1 = *(v5 + 24)) != 0)
  {
    v2 = re::AssetManager::convertToMutable(v1, &v4);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(&v4);
  return v2;
}

uint64_t REAssetManagerCreateFileAssetDescriptor(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isFileURL] & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v18 = CoreRELog::log;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 138412290;
    *&buf[4] = v3;
    v19 = "URL passed to REAssetManagerCreateFileAssetDescriptor must be a file URL: %@";
    goto LABEL_35;
  }

  v4 = [v3 fileSystemRepresentation];
  AssetTypeFromFilePath = re::AssetPath::getAssetTypeFromFilePath(v4, *(a1 + 1808), v5);
  if (!AssetTypeFromFilePath)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v18 = CoreRELog::log;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 138412290;
    *&buf[4] = v3;
    v19 = "Asset path has an unknown extension: %@";
LABEL_35:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
LABEL_32:

    v17 = 0;
    goto LABEL_33;
  }

  v7 = AssetTypeFromFilePath;
  v8 = [v3 fileSystemRepresentation];
  v10 = *v7;
  re::FileAssetProvider::makeDescriptor(&v22, v21, buf);
  if (*&v21[0])
  {
    if (BYTE8(v21[0]))
    {
      (*(**&v21[0] + 40))();
    }

    memset(v21, 0, sizeof(v21));
  }

  v13 = v22;
  if (v22 && (v23 & 1) != 0)
  {
    v13 = (*(*v22 + 40))(v22, v24, v11, v12);
  }

  re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>(v13, &v22);
  v14 = v22;
  re::DynamicString::operator=((v22 + 24), buf);
  re::DynamicArray<BOOL>::operator=(v14 + 56, v27);
  re::DynamicArray<BOOL>::operator=(v14 + 96, v30);
  re::DynamicString::operator=((v14 + 136), &v33);
  v17 = v22;
  if (v33)
  {
    if (BYTE8(v33))
    {
      (*(*v33 + 40))(v33, v34, v15, v16);
    }

    v33 = 0u;
    v34 = 0u;
  }

  if (v30[0])
  {
    if (v32)
    {
      (*(*v30[0] + 40))(v30[0], v32, v15, v16);
    }

    v32 = 0;
    memset(v30, 0, sizeof(v30));
    ++v31;
  }

  if (v27[0])
  {
    if (v29)
    {
      (*(*v27[0] + 40))(v27[0], v29, v15, v16);
    }

    v29 = 0;
    memset(v27, 0, sizeof(v27));
    ++v28;
  }

  if (*buf && (buf[8] & 1) != 0)
  {
    (*(**buf + 40))(*buf, v26, v15, v16);
  }

LABEL_33:

  return v17;
}

uint64_t REAssetManagerGetAssetDescriptorCount(os_unfair_lock_s *a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v9);
  v3 = re::AssetHandle::assetInfo(v9);
  if (v3[10] == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3[10];
  }

  re::AssetManager::loadDescriptorsFromAssetId(a1, v4, v7);
  v5 = 0;
  if (v7[0] == 1)
  {
    v5 = v8[2];
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(v8);
  }

  re::AssetHandle::~AssetHandle(v9);
  return v5;
}

uint64_t REAssetManagerCopyAssetDescriptor(os_unfair_lock_s *a1, uint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a2, v23);
  v5 = re::AssetHandle::assetInfo(v23);
  if (v5[10] == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[10];
  }

  re::AssetManager::loadDescriptorsFromAssetId(a1, v6, v19);
  if (v19[0] == 1 && v21 > a3)
  {
    re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>(v7, &v18);
    v11 = v21;
    if (v21 <= a3)
    {
      v24 = 0;
      memset(v33, 0, 80);
      v14 = MEMORY[0x1E69E9C10];
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v28 = 789;
      v29 = 2048;
      v30 = a3;
      v31 = 2048;
      v32 = v11;
      _os_log_send_and_compose_impl(v16, &v24, v33, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v17, v18);
      _os_crash_msg();
      __break(1u);
    }

    v12 = (v22 + 144 * a3);
    v13 = v18;
    re::DynamicString::operator=((v18 + 24), v12);
    re::DynamicArray<BOOL>::operator=(v13 + 56, v12 + 4);
    re::DynamicArray<BOOL>::operator=(v13 + 96, v12 + 9);
    re::DynamicString::operator=((v13 + 136), (v12 + 14));
    v9 = v18;
    if (v19[0])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    if (v19[0])
    {
LABEL_9:
      re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v20);
    }
  }

  re::AssetHandle::~AssetHandle(v23);
  return v9;
}

uint64_t (***REAssetManagerRegisterAssetUnloadCompleteCallback(uint64_t a1, void *aBlock))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(aBlock);
  v4 = re::globalAllocators(v3)[2];
  v6[0] = &unk_1F5D2D2F0;
  v6[1] = v3;
  v6[3] = v4;
  v6[4] = v6;
  re::DynamicArray<re::Function<void ()(re::DynamicArray<unsigned long long>)>>::add((a1 + 2352), v6);
  return re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(v6);
}

void REAssetManagerReplaceAssetRefDataWith(re::AssetManager *a1, uint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v6);
  re::AssetAPIHelper::assetHandleCreate(a3, v5);
  re::AssetManager::transferAssetHandleDataToEmptyAssetHandle(a1, v6, v5);
  re::AssetHandle::~AssetHandle(v5);
  re::AssetHandle::~AssetHandle(v6);
}

uint64_t REAssetManagerCreateNewImmutableAssetRefFromExistingWithRegister(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v21);
  {
    v27 = 0;
    v25 = 0;
    buf = 0uLL;
    v26 = 0;
    re::DynamicArray<re::AssetLoadDescriptor>::add(&buf, (a2 + 24));
    re::AssetHandle::AssetHandle(v18, v21);
    re::AssetManager::createNewImmutableAssetHandleFromExistingAssetData(a1, &buf, 0, v18, a4, v19);
    re::AssetHandle::~AssetHandle(v18);
    if (v19[0])
    {
      v9 = v20[0];
      if (v20[0])
      {
        v10 = (v20[0] + 8);
      }
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = re::AssetHandle::assetInfo(v21);
        if (v16[17])
        {
          v17 = v16[18];
        }

        else
        {
          v17 = v16 + 137;
        }

        *v22 = 136315138;
        v23 = v17;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "failed to create immutable asset from existing '%s'", v22, 0xCu);
      }

      v9 = 0;
    }

    if (v19[0] == 1)
    {
      re::AssetHandle::~AssetHandle(v20);
    }

    re::DynamicArray<re::AssetLoadDescriptor>::deinit(&buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = re::AssetHandle::assetInfo(v21);
      if (v14[17])
      {
        v15 = v14[18];
      }

      else
      {
        v15 = v14 + 137;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v15;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "failed to create immutable asset from existing '%s'", &buf, 0xCu);
    }

    v9 = 0;
  }

  re::AssetHandle::~AssetHandle(v21);
  return v9;
}

BOOL anonymous namespace::ensureExistingAssetIsLoaded(_anonymous_namespace_ *this, re::AssetHandle *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  if (!v3 || (v4 = atomic_load((v3 + 896)), v4 != 2))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = re::AssetHandle::assetInfo(this);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v11 = 136315138;
      v12 = v7;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "existing asset is not loaded: '%s'", &v11, 0xCu);
    }

    re::AssetHandle::loadNow(*(this + 1), 0);
  }

  v8 = *(this + 1);
  if (!v8)
  {
    return 0;
  }

  v9 = atomic_load((v8 + 896));
  return v9 == 2;
}

void anonymous namespace::checkProvider(os_unfair_lock_s *this, re::AssetManager *a2, const re::AssetLoadDescriptor *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2 + 9;
  if (*(a2 + 1))
  {
    v5 = *(a2 + 2);
  }

  else
  {
    v5 = a2 + 9;
  }

  if (!re::AssetProviderRegistry::tryGetRawProviderForScheme(this, v5))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 1))
      {
        v7 = *(a2 + 2);
      }

      else
      {
        v7 = v4;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Creating an asset for unknown scheme '%s'.", &v8, 0xCu);
    }
  }
}

uint64_t REAssetManagerCreateNewImmutableAssetRefFromCloning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v19);
  {
    v25 = 0;
    v23 = 0;
    buf = 0uLL;
    v24 = 0;
    re::DynamicArray<re::AssetLoadDescriptor>::add(&buf, (a2 + 24));
    re::AssetHandle::AssetHandle(v16, v19);
    re::AssetManager::copyNewImmutableAssetHandleFromExistingAssetData(a1, &buf, 0, v16, v17);
    re::AssetHandle::~AssetHandle(v16);
    if (v17[0])
    {
      v7 = v18[0];
      if (v18[0])
      {
        v8 = (v18[0] + 8);
      }
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v10 = CoreRELog::log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = re::AssetHandle::assetInfo(v19);
        if (v14[17])
        {
          v15 = v14[18];
        }

        else
        {
          v15 = v14 + 137;
        }

        *v20 = 136315138;
        v21 = v15;
        _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "failed to copy immutable asset from existing '%s'", v20, 0xCu);
      }

      v7 = 0;
    }

    if (v17[0] == 1)
    {
      re::AssetHandle::~AssetHandle(v18);
    }

    re::DynamicArray<re::AssetLoadDescriptor>::deinit(&buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = re::AssetHandle::assetInfo(v19);
      if (v12[17])
      {
        v13 = v12[18];
      }

      else
      {
        v13 = v12 + 137;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v13;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "failed to copy immutable asset from existing '%s'", &buf, 0xCu);
    }

    v7 = 0;
  }

  re::AssetHandle::~AssetHandle(v19);
  return v7;
}

uint64_t REAssetManagerCreateNewMutableAssetRefFromExisting(os_unfair_lock_s **a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v15);
  {
    v19 = 0;
    v17 = 0;
    buf = 0uLL;
    v18 = 0;
    re::DynamicArray<re::AssetLoadDescriptor>::add(&buf, (a2 + 24));
    re::AssetHandle::AssetHandle(v13, v15);
    re::AssetManager::createNewMutableAssetHandleFromExistingAssetData(a1, &buf, 0, v13, v14);
    re::AssetHandle::~AssetHandle(v13);
    v7 = v14[0];
    if (v14[0])
    {
      v8 = (v14[0] + 8);
    }

    re::AssetHandle::~AssetHandle(v14);
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(&buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = re::AssetHandle::assetInfo(v15);
      if (v11[17])
      {
        v12 = v11[18];
      }

      else
      {
        v12 = v11 + 137;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v12;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "failed to create mutable asset from existing '%s'", &buf, 0xCu);
    }

    v7 = 0;
  }

  re::AssetHandle::~AssetHandle(v15);
  return v7;
}

void *RECancellationTokenSourceCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 56, 8);
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2D468;
  re::CancellationTokenSource::CancellationTokenSource((v2 + 3));
  return v2;
}

uint64_t RECancellationTokenSourceCancel(uint64_t result)
{
  if (result)
  {
    atomic_store(1u, (*(result + 48) + 24));
  }

  return result;
}

void *RECancellationTokenSourceGetToken(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + 8);
  v3 = (v1 + 8);

  return v2;
}

uint64_t RECancellationTokenIsCancellationRequested(uint64_t a1)
{
  if (a1)
  {
    v1 = atomic_load((a1 + 16));
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t REAssetManagerPeerAssetStateIsKnown(uint64_t a1)
{
  if (NetworkAssetService)
  {
    (*(*NetworkAssetService + 168))(&v4);
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t anonymous namespace::getNetworkAssetService(uint64_t a1)
{
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v2 = CoreRELog::log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Cannot query asset state because there is no NetworkAssetService.", v4, 2u);
    }
  }

  return a1;
}

uint64_t REAssetManagerPeerAssetIsLoading(uint64_t a1)
{
  if (result)
  {
    (*(*result + 168))(&v2);
    if (HIDWORD(v2) == 1)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REAssetManagerPeerAssetIsLoaded(uint64_t a1)
{
  if (result)
  {
    (*(*result + 168))(&v2);
    if (HIDWORD(v2) == 2)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REAssetManagerPeerAssetIsLoadFailed(uint64_t a1)
{
  if (result)
  {
    (*(*result + 168))(&v2);
    if (HIDWORD(v2) == 3)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFDataRef REAssetManagerCreateJsonDataByReserializingIntrospectedCompiledAssetContents(uint64_t a1, void *a2, const char *a3, CFDataRef *a4, char **a5)
{
  v53[2] = 0;
  v54 = a2;
  v53[0] = *(a1 + 1808);
  v53[1] = 0;
  v9 = re::internal::AssetTypeRegistry::assetTypeWithCompiledExtension(v53[0], a3);
  if (v9)
  {
    v11 = v9;
    v52 = 0;
    v48[0] = 0;
    re::AssetUtilities::loadCompiledAssetFromData(&v54, v53, v9, 0, &v52, v48, v49);
    if ((v49[0] & 1) == 0)
    {
      if (a5)
      {
        v24 = (v50 & 1) != 0 ? *&v51[7] : v51;
        re::DynamicString::format(&v37, "Failed to load asset pointer from compiled asset data due to error: %s.", v12, v24);
        v25 = (v38.__val_ & 1) != 0 ? v38.__cat_ : (&v38.__val_ + 1);
        re::WrappedError::make(v41, @"REAssetRefErrorDomain", 4, v25);
        v26 = v41[0];
        *a5 = v26;
        CFRetain(v26);

        if (v37)
        {
          if (v38.__val_)
          {
            (*(*v37 + 5))();
          }
        }
      }

      v23 = 0;
      goto LABEL_52;
    }

    re::IntrospectionSharedLock::IntrospectionSharedLock(&v47);
    v13 = *(a1 + 1808);
    v37 = v11;
    v14 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v13, &v37);
    (*(**v14 + 128))(*v14);
    v46 = *((*(**v14 + 128))() + 32);
    re::TypeRegistry::typeInfo(v46, &v46, &v37);
    v15 = re::TypeInfo::TypeInfo(v45, &v38);
    bytes = 0;
    v41[1] = 0;
    length = 0;
    v43 = 0;
    v16 = re::DynamicArray<char>::setCapacity(v41, 0);
    ++v43;
    v17 = v49[1];
    if (v37)
    {
      if (a4)
      {
        if (v52)
        {
          v18 = [v52 bytes];
          v19 = [v52 length];
          v20 = v18;
        }

        else
        {
          v20 = 0;
          v19 = 0;
        }

        *a4 = CFDataCreate(0, v20, v19);
      }

      v23 = CFDataCreate(0, bytes, length);
      if (v23)
      {
        goto LABEL_44;
      }

      if (a5)
      {
        re::WrappedError::make(&v34, @"REAssetRefErrorDomain", 4, "Failed to create CFData object to hold serialized json data.");
        v31 = v34;
        *a5 = v31;
        CFRetain(v31);
      }
    }

    else if (a5)
    {
      std::error_code::message(&v33, &v38);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v33;
      }

      else
      {
        v28 = v33.__r_.__value_.__r.__words[0];
      }

      re::DynamicString::format(&v34, "Failed to serialize asset to json due to error: %s.", v27, v28);
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (v35)
      {
        v29 = *&v36[7];
      }

      else
      {
        v29 = v36;
      }

      re::WrappedError::make(&v33, @"REAssetRefErrorDomain", 4, v29);
      v30 = v33.__r_.__value_.__l.__data_;
      *a5 = v30;
      CFRetain(v30);

      if (v34 && (v35 & 1) != 0)
      {
        (*(*v34 + 40))();
      }
    }

    v23 = 0;
LABEL_44:
    if (v37 & 1) == 0 && v39 && (v40)
    {
      (*(*v39 + 40))();
    }

    if (v41[0] && bytes)
    {
      (*(*v41[0] + 40))();
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v47);
LABEL_52:
    re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(v49);

    goto LABEL_53;
  }

  if (a5)
  {
    re::DynamicString::format(&v37, "Could not find a registered asset type with compiled extension '%s'.", v10, a3);
    v21 = (v38.__val_ & 1) != 0 ? v38.__cat_ : (&v38.__val_ + 1);
    re::WrappedError::make(v49, @"REAssetRefErrorDomain", 4, v21);
    v22 = v49[0];
    *a5 = v22;
    CFRetain(v22);

    if (v37)
    {
      if (v38.__val_)
      {
        (*(*v37 + 5))();
      }
    }
  }

  v23 = 0;
LABEL_53:

  return v23;
}

uint64_t REPeerAssetDescriptorCreate(_anonymous_namespace_ *a1, const char *a2, const re::DynamicString *a3)
{
  if (!a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v10 = "Invalid assetIdentifierString passed to REPeerAssetDescriptorCreate";
    goto LABEL_31;
  }

  if (!a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v10 = "Invalid assetType passed to REPeerAssetDescriptorCreate";
LABEL_31:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
LABEL_28:

    return 0;
  }

  re::PeerAssetProvider::makeDescriptor(buf, a1, a3, &v12);
  v6 = v12;
  if (v12 && (v13 & 1) != 0)
  {
    v6 = (*(*v12 + 40))();
  }

  re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>(v6, &v12);
  v7 = v12;
  re::DynamicString::operator=((v12 + 24), buf);
  re::DynamicArray<BOOL>::operator=(v7 + 56, v16);
  re::DynamicArray<BOOL>::operator=(v7 + 96, v19);
  re::DynamicString::operator=((v7 + 136), v22);
  v8 = v12;
  if (v22[0])
  {
    if (v22[1])
    {
      (*(*v22[0] + 40))();
    }

    memset(v22, 0, sizeof(v22));
  }

  if (v19[0])
  {
    if (v21)
    {
      (*(*v19[0] + 40))();
    }

    v21 = 0;
    memset(v19, 0, sizeof(v19));
    ++v20;
  }

  if (v16[0])
  {
    if (v18)
    {
      (*(*v16[0] + 40))();
    }

    v18 = 0;
    memset(v16, 0, sizeof(v16));
    ++v17;
  }

  if (*buf && (v15 & 1) != 0)
  {
    (*(**buf + 40))();
  }

  return v8;
}

uint64_t REPeerAssetDescriptorGetSourcePeerId(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
  }

  else
  {
    v2 = a1 + 33;
  }

  v3 = strcmp(v2, "PeerAsset");
  if (v3)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::DynamicString::setCapacity(&v10, 0);
  Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::PeerAssetLoadDescriptorParameters>((a1 + 3), &v9, 0);
  if (Descriptor)
  {
    v4 = v9;
  }

  else
  {
    v7 = *re::assetsLogObjects(Descriptor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to deserialize PeerAssetDescriptor parameters", v8, 2u);
    }

    v4 = 0;
  }

  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  return v4;
}

CFStringRef REPeerAssetDescriptorGetAssetIdentifierStringOnPeer(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
  }

  else
  {
    v2 = a1 + 33;
  }

  v3 = strcmp(v2, "PeerAsset");
  if (v3)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::DynamicString::setCapacity(&v11, 0);
  Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::PeerAssetLoadDescriptorParameters>((a1 + 3), v10, 0);
  if (Descriptor)
  {
    if (v12)
    {
      v7 = v13;
    }

    else
    {
      v7 = &v12 + 1;
    }

    v4 = CFStringCreateWithCString(0, v7, 0x8000100u);
  }

  else
  {
    v8 = *re::assetsLogObjects(Descriptor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Failed to deserialize PeerAssetDescriptor parameters", v9, 2u);
    }

    v4 = 0;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  return v4;
}

uint64_t REAssetManagerRegisterAndCreateFileNameAliasAssetDescriptor(uint64_t a1, void *a2, const char *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (([v5 isFileURL] & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v23 = CoreRELog::log;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    *&buf[4] = v5;
    v24 = "URL passed to REAssetManagerCreateFileAssetDescriptor must be a file URL: %@";
    goto LABEL_50;
  }

  v6 = [v5 fileSystemRepresentation];
  AssetTypeFromFilePath = re::AssetPath::getAssetTypeFromFilePath(v6, *(a1 + 1808), v7);
  if (!AssetTypeFromFilePath)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v23 = CoreRELog::log;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    *&buf[4] = v5;
    v24 = "Asset path has an unknown extension: %@";
LABEL_50:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
LABEL_41:

LABEL_42:
    v22 = 0;
    goto LABEL_43;
  }

  v9 = AssetTypeFromFilePath;
  v10 = *(a1 + 2008);
  v11 = [v5 fileSystemRepresentation];
  v12 = re::NamedFileRegistry::registerFileNameAlias(v10, v32, v31);
  if (*&v31[0])
  {
    if (BYTE8(v31[0]))
    {
      (*(**&v31[0] + 40))();
    }

    memset(v31, 0, sizeof(v31));
  }

  v13 = *&v32[0];
  if (*&v32[0])
  {
    if (BYTE8(v32[0]))
    {
      v13 = (*(**&v32[0] + 40))();
    }

    memset(v32, 0, sizeof(v32));
  }

  if ((v12 & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v26 = CoreRELog::log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v5;
      v34 = 2080;
      *v35 = a3;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to register file '%@' with alias '%s'", buf, 0x16u);
    }

    goto LABEL_42;
  }

  v15 = *v9;
  re::NamedFileAssetProvider::makeDescriptor(&v28, v27, buf);
  if (*&v27[0])
  {
    if (BYTE8(v27[0]))
    {
      (*(**&v27[0] + 40))();
    }

    memset(v27, 0, sizeof(v27));
  }

  v18 = v28;
  if (v28 && (v29 & 1) != 0)
  {
    v18 = (*(*v28 + 40))(v28, v30, v16, v17);
  }

  re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>(v18, &v28);
  v19 = v28;
  re::DynamicString::operator=((v28 + 24), buf);
  re::DynamicArray<BOOL>::operator=(v19 + 56, v36);
  re::DynamicArray<BOOL>::operator=(v19 + 96, v39);
  re::DynamicString::operator=((v19 + 136), &v42);
  v22 = v28;
  if (v42)
  {
    if (BYTE8(v42))
    {
      (*(*v42 + 40))(v42, v43, v20, v21);
    }

    v42 = 0u;
    v43 = 0u;
  }

  if (v39[0])
  {
    if (v41)
    {
      (*(*v39[0] + 40))(v39[0], v41, v20, v21);
    }

    v41 = 0;
    memset(v39, 0, sizeof(v39));
    ++v40;
  }

  if (v36[0])
  {
    if (v38)
    {
      (*(*v36[0] + 40))(v36[0], v38, v20, v21);
    }

    v38 = 0;
    memset(v36, 0, sizeof(v36));
    ++v37;
  }

  if (*buf && (buf[8] & 1) != 0)
  {
    (*(**buf + 40))(*buf, *&v35[2], v20, v21);
  }

LABEL_43:

  return v22;
}

uint64_t REAssetManagerRegisterBundleURL(uint64_t a1, const char *a2, CFURLRef anURL)
{
  v5 = CFURLCopyPath(anURL);
  CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
  v7 = *(a1 + 2016);
  v11 = re::BundleFilePathRegistry::registerBundleFilePath(v7, &v14, v13);
  if (*&v13[0])
  {
    if (BYTE8(v13[0]))
    {
      (*(**&v13[0] + 40))();
    }

    memset(v13, 0, sizeof(v13));
  }

  if (v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))(v14, v15, v9, v10);
    }

    v14 = 0u;
    v15 = 0u;
  }

  CFRelease(v5);
  return v11;
}

uint64_t REAssetManagerRegisterBundle(uint64_t a1, CFBundleRef bundle)
{
  Identifier = CFBundleGetIdentifier(bundle);
  CStringPtr = CFStringGetCStringPtr(Identifier, 0x8000100u);
  v6 = CFBundleCopyBundleURL(bundle);
  v7 = REAssetManagerRegisterBundleURL(a1, CStringPtr, v6);
  CFRelease(v6);
  return v7;
}

BOOL REAssetManagerUnregisterBundle(_anonymous_namespace_ *a1, const char *a2)
{
  v3 = *(a1 + 252);
  os_unfair_lock_lock(v3);
  v4 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(&v3[2], &v6);
  os_unfair_lock_unlock(v3);
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return v4;
}

uint64_t REMemoryAssetParametersCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 64, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2D4B0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  re::DynamicString::setCapacity((v2 + 24), 0);
  *(v2 + 56) = 0;
  return v2;
}

re::DynamicString *REMemoryAssetParametersSetAssetName(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=((a1 + 24), v4);
}

void re::internal::Callable<REAssetManagerRegisterAssetUnloadCompleteCallback::$_0,void ()(re::DynamicArray<unsigned long long>)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<REAssetManagerRegisterAssetUnloadCompleteCallback::$_0,void ()(re::DynamicArray<unsigned long long>)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  a2[1] = 0;
  v3 = a2[2];
  a2[2] = 0;
  v4 = a2[4];
  a2[4] = 0;
  ++*(a2 + 6);
  if (v3)
  {
    v5 = result;
    v6 = 8 * v3;
    v7 = v4;
    do
    {
      v7 += 8;
      result = (*(*(v5 + 8) + 16))();
      v6 -= 8;
    }

    while (v6);
  }

  if (v2 && v4)
  {
    v8 = *(*v2 + 40);

    return v8(v2, v4);
  }

  return result;
}

void *re::internal::Callable<REAssetManagerRegisterAssetUnloadCompleteCallback::$_0,void ()(re::DynamicArray<unsigned long long>)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2D2F0;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<REAssetManagerRegisterAssetUnloadCompleteCallback::$_0,void ()(re::DynamicArray<unsigned long long>)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2D2F0;
  a2[1] = v2;
  return a2;
}

void REAssetDeduplicationOperationImpl::~REAssetDeduplicationOperationImpl(REAssetDeduplicationOperationImpl *this)
{
  *this = &unk_1F5D2D358;
  re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D358;
  re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::object<re::Shareable<re::AssetPathMapping>>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 72, 8);
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D2D4F8;
  result = 0.0;
  *(v4 + 56) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 60) = 0x7FFFFFFF;
  *a2 = v4;
  return result;
}

void *re::Shareable<re::AssetPathMapping>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2D4F8;
  re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 3);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::AssetPathMapping>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2D4F8;
  re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 3);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<REAssetManagerAddCleanupCallback::$_0,std::allocator<REAssetManagerAddCleanupCallback::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REAssetManagerAddCleanupCallback::$_0,std::allocator<REAssetManagerAddCleanupCallback::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2D3A0;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REAssetManagerAddCleanupCallback::$_0,std::allocator<REAssetManagerAddCleanupCallback::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REAssetManagerAddCleanupCallback::$_0,std::allocator<REAssetManagerAddCleanupCallback::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::make::shared::object<re::Shareable<AssetRegistrationOptions>>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 32, 8);
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D2D420;
  *(v4 + 24) = 0;
  *a2 = v4;
}

void *re::Shareable<AssetRegistrationOptions>::~Shareable(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<AssetRegistrationOptions>::~Shareable(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 168, 8);
  result = re::Shareable<re::AssetLoadDescriptor>::Shareable<>(v4);
  *a2 = result;
  return result;
}

uint64_t re::Shareable<re::AssetLoadDescriptor>::Shareable<>(uint64_t a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB7F50;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 24) = 0u;
  v3 = re::DynamicString::setCapacity((a1 + 24), 0);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  re::DynamicString::setCapacity((a1 + 136), 0);
  return a1;
}

void *re::Shareable<re::CancellationTokenSource>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2D468;
  a1[3] = &unk_1F5CB8E80;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  a1[3] = &unk_1F5CCF868;
  objc_destructInstance(a1 + 4);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::CancellationTokenSource>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2D468;
  a1[3] = &unk_1F5CB8E80;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  a1[3] = &unk_1F5CCF868;
  objc_destructInstance(a1 + 4);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::MemoryAssetParameters::~MemoryAssetParameters(re::MemoryAssetParameters *this)
{
  *this = &unk_1F5D2D4B0;
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D4B0;
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *RESkeletalPoseComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t RESkeletalPoseComponentSetSkeletalPoseDefinition(void *a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v9);
  v3 = *(a1 + 2);
  *(a1 + 2) = v9;
  v9 = v3;
  v4 = a1[6];
  a1[6] = v10;
  v10 = v4;
  re::AssetHandle::~AssetHandle(&v9);
  v5 = a1[5];
  if (v5)
  {
    v6 = atomic_load((v5 + 896));
    if (v6 == 2)
    {
      v7 = re::AssetHandle::blockUntilLoaded<re::SkeletalPoseDefinitionAsset>((a1 + 4));
    }
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

void RESkeletalPoseComponentEnsureSkeletalPosesInitialized(uint64_t *a1)
{
  v2 = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((a1 + 4));
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = (a1 + 19);
  }

  if (*(v3 + 15) || (v4 = a1[2]) != 0 && (v5 = *(v4 + 192)) != 0 && (v6 = *(v5 + 5)) != 0 && (v7 = atomic_load((v6 + 896)), v7 == 2) && (v8 = 0, v2 = re::ecs2::SkeletalPoseComponent::skeletalPoseDefinitionAsset(a1, v5, &v8), (v3 = v2) != 0))
  {
    if (a1[18] != v3)
    {
      a1[18] = v3;
    }
  }
}

uint64_t re::AssetHandle::blockUntilLoaded<re::SkeletalPoseDefinitionAsset>(re::SkeletalPoseDefinitionAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::SkeletalPoseDefinitionAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

uint64_t RESkeletalPoseComponentGetPoseName(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 88) + 88 * a2 + 8);
}

void RESkeletalPoseComponentSetPoseName(_anonymous_namespace_ *a1, unint64_t a2, const char *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &str_67;
  v6 = *(a1 + 9);
  if (v6 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v6;
    _os_log_send_and_compose_impl(v10, &v14, v23, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v7 = re::StringID::operator=((*(a1 + 11) + 88 * a2), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }
}

uint64_t RESkeletalPoseComponentGetJointCount(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 88) + 88 * a2 + 24);
}

uint64_t RESkeletalPoseComponentGetJointName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 72);
  if (v4 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 476;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3;
  v6 = *(*(a1 + 88) + 88 * a2 + 80);
  v4 = *(v6 + 216);
  if (v4 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(v6 + 224) + 16 * a3 + 8);
}

__n128 RESkeletalPoseComponentGetJointTransform(re::ecs2::SkeletalPoseComponent *a1, unint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::SkeletalPoseComponent::skeletalPose(a1, a2, 1);
  v5 = *(v4 + 24);
  if (v5 <= a3)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 476;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v4 + 32) + 48 * a3);
}

void *RESkeletalPoseComponentGetJointTransforms(re::ecs2::SkeletalPoseComponent *a1, unint64_t a2, void *a3)
{
  v4 = re::ecs2::SkeletalPoseComponent::skeletalPose(a1, a2, 1);
  v5 = *(v4 + 32);
  v6 = 48 * *(v4 + 24);

  return memcpy(a3, v5, v6);
}

uint64_t RESkeletalPoseComponentSetJointTransform(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 72);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v21 = 789;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v8;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  v8 = a3;
  v9 = *(a1 + 88) + 88 * a2;
  v7 = *(v9 + 24);
  if (v7 <= a3)
  {
    goto LABEL_10;
  }

  v10 = (*(v9 + 32) + 48 * a3);
  *v10 = a4;
  v10[1] = a5;
  v10[2] = a6;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RESkeletalPoseComponentSetJointTransforms(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 72);
  if (v4 <= a2)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(a1 + 88) + 88 * a2;
  v7 = *(v6 + 24);
  *&v21[0] = a3;
  *(&v21[0] + 1) = v7;
  re::FixedArray<re::GenericSRT<float>>::operator=((v6 + 16), v21);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RESkeletalPoseComponentSetJointRotations(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 72);
  if (v4 <= a2)
  {
    goto LABEL_18;
  }

  v5 = *(*(a1 + 88) + 88 * a2 + 24);
  if (v5)
  {
    v6 = 0;
    v7 = 16;
    while (1)
    {
      v4 = *(a1 + 72);
      if (v4 <= a2)
      {
        break;
      }

      v8 = *(a1 + 88) + 88 * a2;
      v4 = *(v8 + 24);
      if (v4 <= v6)
      {
        goto LABEL_14;
      }

      *(*(v8 + 32) + v7) = *(a3 + v7);
      ++v6;
      v7 += 48;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v21 = 789;
    v22 = 2048;
    v23 = v3;
    v24 = 2048;
    v25 = v4;
    _os_log_send_and_compose_impl(v10, &v17, &v26, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v4;
    _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 789;
    v22 = 2048;
    v23 = v3;
    v24 = 2048;
    v25 = v4;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RESkeletalPoseComponentGetModelSpacePoseName(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((a1 + 32));
  v5 = a1 + 152;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 96);
  if (v6 <= a2)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v6;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v5 + 112) + 16 * a2 + 8);
}

uint64_t RESkeletalPoseComponentGetModelSpaceJointCount(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 112);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 128) + 40 * a2 + 16);
}

uint64_t RESkeletalPoseComponentGetModelSpaceJointName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((a1 + 32));
  v7 = a1 + 152;
  if (v6)
  {
    v7 = v6;
  }

  v8 = *(v7 + 176);
  if (v8 <= a2)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    a3 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 797;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, a3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 476;
    v21 = 2048;
    v22 = a3;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(v7 + 192) + 24 * a2;
  v8 = *(v9 + 8);
  if (v8 <= a3)
  {
    goto LABEL_10;
  }

  return *(*(v9 + 16) + 16 * a3 + 8);
}

__n128 RESkeletalPoseComponentGetModelSpaceJointTransform(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  if (v4 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3;
  v6 = *(a1 + 128) + 40 * a2;
  v4 = *(v6 + 16);
  if (v4 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(v6 + 32) + (a3 << 6));
}

void *RESkeletalPoseComponentGetModelSpaceJointTransforms(uint64_t a1, unint64_t a2, void *__dst)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  if (v4 <= a2)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(a1 + 128) + 40 * a2;
  v6 = *(v5 + 32);
  v8 = *(v5 + 16) << 6;

  return memcpy(__dst, v6, v8);
}

uint64_t RESkeletalPoseComponentSetModelSpaceJointTransform(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 112);
  if (v8 <= a2)
  {
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  v9 = a3;
  v10 = *(a1 + 128) + 40 * a2;
  v8 = *(v10 + 16);
  if (v8 <= a3)
  {
    goto LABEL_10;
  }

  v11 = (*(v10 + 32) + (a3 << 6));
  *v11 = a4;
  v11[1] = a5;
  v11[2] = a6;
  v11[3] = a7;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RESkeletalPoseComponentSetModelSpaceJointTransforms(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  if (v4 <= a2)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(a1 + 128) + 40 * a2);
  v7 = *(v6 + 2);
  *&v21[0] = a3;
  *(&v21[0] + 1) = v7;
  re::DynamicArray<re::Matrix4x4<float>>::operator=(v6, v21);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RESkeletalPoseComponentPostUpdatePoseCount(re::ecs2::SkeletalPoseComponent *a1, uint64_t a2)
{
  if (re::ecs2::SkeletalPoseComponent::ensurePostUpdatePoses(a1, a2))
  {
    return *(a1 + 491);
  }

  else
  {
    return 0;
  }
}

uint64_t RESkeletalPoseComponentPostUpdatePoseJointCount(re::ecs2::SkeletalPoseComponent *a1, unint64_t a2)
{
  re::ecs2::SkeletalPoseComponent::ensurePostUpdatePoses(a1, a2);
  if (*(a1 + 491) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 493) + 88 * a2 + 24);
  }
}

uint64_t RESkeletalPoseComponentGetPostUpdatePoseJoints(re::ecs2::SkeletalPoseComponent *a1, unint64_t a2)
{
  re::ecs2::SkeletalPoseComponent::ensurePostUpdatePoses(a1, a2);
  if (*(a1 + 491) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 493) + 88 * a2 + 32);
  }
}

void RESkeletalPoseComponentSetPostUpdatePoseJoints(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::SkeletalPoseComponent::ensurePostUpdatePoses(a1, a2);
  v6 = *(a1 + 3928);
  if (v6 >= a2)
  {
    if (v6 <= a2)
    {
      *v25 = 0;
      memset(v23, 0, sizeof(v23));
      *buf = 0u;
      v14 = MEMORY[0x1E69E9C10];
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v32[0]) = 136315906;
      *(v32 + 4) = "operator[]";
      WORD2(v32[1]) = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      *(&v32[1] + 6) = 797;
      WORD1(v32[2]) = 2048;
      *(&v32[2] + 4) = a2;
      WORD2(v32[3]) = 2048;
      *(&v32[3] + 6) = v6;
      _os_log_send_and_compose_impl(v16, v25, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v32, 38, v20, v21);
      _os_crash_msg();
      __break(1u);
      goto LABEL_23;
    }

    v8 = *(a1 + 3944) + 88 * a2;
    re::StringID::StringID(buf, v8);
    re::FixedArray<re::GenericSRT<float>>::FixedArray(v23, (v8 + 16));
    re::DynamicArray<BOOL>::DynamicArray(&v23[1] + 8, (v8 + 40));
    v9 = *(v8 + 80);
    v24 = v9;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    v32[0] = a3;
    v32[1] = *(&v23[0] + 1);
    re::FixedArray<re::GenericSRT<float>>::operator=(v23, v32);
    if (re::ecs2::SkeletalPoseComponent::ensurePostUpdatePoses(a1, v11) && *(a1 + 3928) > a2)
    {
      a3 = a2 >> 6;
      v6 = *(a1 + 3832);
      if (v6 <= a2 >> 6)
      {
LABEL_23:
        v21 = 0;
        v33 = 0u;
        v34 = 0u;
        memset(v32, 0, sizeof(v32));
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v25 = 136315906;
        *&v25[4] = "operator[]";
        v26 = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v27 = 858;
        v28 = 2048;
        v29 = a3;
        v30 = 2048;
        v31 = v6;
        _os_log_send_and_compose_impl(v19, &v21, v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v20);
        _os_crash_msg();
        __break(1u);
      }

      if (*(a1 + 3840))
      {
        v12 = a1 + 3848;
      }

      else
      {
        v12 = *(a1 + 3856);
      }

      *(v12 + 8 * a3) |= 1 << a2;
      v13 = *(a1 + 3944) + 88 * a2;
      re::StringID::operator=(v13, buf);
      re::FixedArray<re::GenericSRT<float>>::operator=((v13 + 16), v23);
      re::DynamicArray<BOOL>::operator=(v13 + 40, &v23[1] + 1);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 80), v24);
    }

    re::SkeletalPose::~SkeletalPose(buf);
    return;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Invalid post update pose index for skeletal pose component.", buf, 2u);
  }
}