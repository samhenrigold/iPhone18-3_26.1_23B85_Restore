uint64_t sub_1A21329E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132A58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A2132B80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2132C30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132C70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132CB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132CE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1A2132D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A22E5C88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A2132DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A22E5C88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A2132EB4()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132EEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132F2C()
{
  v1 = sub_1A22E5888();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A2132FF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2133028()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

void sub_1A2133060(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1A2133070(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1A2133080()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A21330B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A21330F4()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A213312C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2133164()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A21331B4()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A21331EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _s19AnimationParametersV13AnimationTypeO25SpringAnimationParametersVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s19AnimationParametersV13AnimationTypeO25SpringAnimationParametersVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1A2133270(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2133290(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_1A21332BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t lockToDeviceChanged(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a2 updateHeadTrackingSupported];
  }

  return result;
}

uint64_t monoAudioEnabledChanged(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a2 updateMonoAudioEnabled];
  }

  return result;
}

void sub_1A2135918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double MRUFlippingArtworkScale(int a1)
{
  result = 0.8;
  if (a1)
  {
    return 1.0;
  }

  return result;
}

double MRUFlippingArtworkOpacity(int a1, int a2)
{
  result = 0.5;
  if (a2 ^ 1 | a1)
  {
    return 1.0;
  }

  return result;
}

double MRUFlippingArtworkInsets(int a1, double a2, double a3)
{
  if (a1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  else
  {
    return a3 * 0.2 * 0.5;
  }
}

void sub_1A21395E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A2139DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A213BDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A213CD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A213D340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A213D9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MCLogCategoryDefault_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediacontrols", "Default");
  v1 = MCLogCategoryDefault__log;
  MCLogCategoryDefault__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MCLogCategoryRouting(uint64_t a1)
{
  if (MCLogCategoryRouting__once != -1)
  {
    MCLogCategoryRouting_cold_1();
  }

  v2 = MCLogCategoryRouting__log;

  return v2;
}

uint64_t __MCLogCategoryRouting_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediacontrols", "Routing");
  v1 = MCLogCategoryRouting__log;
  MCLogCategoryRouting__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __MCLogCategoryVolume_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediacontrols", "Volume");
  v1 = MCLogCategoryVolume__log;
  MCLogCategoryVolume__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MCLogCategoryDeviceAccess(uint64_t a1)
{
  if (MCLogCategoryDeviceAccess__once != -1)
  {
    MCLogCategoryDeviceAccess_cold_1();
  }

  v2 = MCLogCategoryDeviceAccess__log;

  return v2;
}

uint64_t __MCLogCategoryDeviceAccess_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediacontrols", "DeviceAccess");
  v1 = MCLogCategoryDeviceAccess__log;
  MCLogCategoryDeviceAccess__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MCLogCategoryImageLoading(uint64_t a1)
{
  if (MCLogCategoryImageLoading__once != -1)
  {
    MCLogCategoryImageLoading_cold_1();
  }

  v2 = MCLogCategoryImageLoading__log;

  return v2;
}

uint64_t __MCLogCategoryImageLoading_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediacontrols", "ImageLoading");
  v1 = MCLogCategoryImageLoading__log;
  MCLogCategoryImageLoading__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MCLogCategoryWaveform(uint64_t a1)
{
  if (MCLogCategoryWaveform__once != -1)
  {
    MCLogCategoryWaveform_cold_1();
  }

  v2 = MCLogCategoryWaveform__log;

  return v2;
}

uint64_t __MCLogCategoryWaveform_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediacontrols", "Waveform");
  v1 = MCLogCategoryWaveform__log;
  MCLogCategoryWaveform__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t MCLogAddStateHandlerWithName(void *a1, void *a2)
{
  v7 = a1;
  v8 = a2;
  v3 = v7;
  v4 = v8;
  v5 = os_state_add_handler();

  return v5;
}

_DWORD *__MCLogAddStateHandlerWithName_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v3 = v2;
    v4 = _MCTransformStateValue(v2);

    v16 = 0;
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v16];
    v6 = v16;
    v7 = v6;
    if (v6)
    {
      v8 = MCLogCategoryDefault(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v7;
        _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_ERROR, "Error serializing state capture: %{public}@", buf, 0xCu);
      }

      v9 = 0;
    }

    else
    {
      v10 = malloc_type_calloc(1uLL, [v5 length] + 200, 0x1000040BEF03554uLL);
      v9 = v10;
      if (!v10)
      {
LABEL_15:

        return v9;
      }

      *v10 = 1;
      v10[1] = [v5 length];
      v11 = [*(a1 + 32) dataUsingEncoding:4];
      v8 = v11;
      if (v11)
      {
        v12 = [v11 bytes];
        v13 = [v8 length];
        if (v13 >= 0x3F)
        {
          v14 = 63;
        }

        else
        {
          v14 = v13;
        }

        memcpy(v9 + 34, v12, v14);
      }

      memcpy(v9 + 50, [v5 bytes], objc_msgSend(v5, "length"));
    }

    goto LABEL_15;
  }

  return 0;
}

id _MCTransformStateValue(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_NSIsNSArray())
  {
    v2 = v1;
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = _MCTransformStateValue(*(*(&v17 + 1) + 8 * i));
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

LABEL_10:
    goto LABEL_19;
  }

  if (!_NSIsNSDictionary())
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if ([MEMORY[0x1E696AE40] propertyList:v1 isValidForFormat:200])
      {
        v13 = v1;
      }

      else
      {
        v13 = [v1 debugDescription];
      }

      v3 = v13;
      goto LABEL_19;
    }

    v4 = [v1 _stateDumpObject];
    v3 = _MCTransformStateValue(v4);
    goto LABEL_10;
  }

  v10 = MEMORY[0x1E695DF90];
  v11 = v1;
  v12 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___MCTransformStateValue_block_invoke;
  v15[3] = &unk_1E7663B88;
  v3 = v12;
  v16 = v3;
  [v11 enumerateKeysAndObjectsUsingBlock:v15];

LABEL_19:

  return v3;
}

__CFString *MRUNowPlayingLayoutDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Small";
  }

  else
  {
    return off_1E7663BA8[a1 - 1];
  }
}

void sub_1A213F870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2141590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

__CFString *MRUActivityArtworkViewLayerNameForState(uint64_t a1)
{
  if (a1)
  {
    return @"albumart-back";
  }

  else
  {
    return @"albumart-front";
  }
}

uint64_t MRUActivityArtworkViewStateNameMake(uint64_t a1, int a2, int a3)
{
  v3 = @"back";
  if (!a1)
  {
    v3 = @"front";
  }

  v4 = @"-paused";
  if (a2)
  {
    v4 = &stru_1F1445548;
  }

  if (a3)
  {
    v4 = @"-loading";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, v4];
}

void sub_1A2143930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21447F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2144D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2148710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21489EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A214902C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void luminanceForHapticImage(void *a1)
{
  v13 = *MEMORY[0x1E695F060];
  v1 = CGContextCreateForHapticLuminanceAnalysis(a1, &v13);
  if (v1)
  {
    v2 = v1;
    Data = CGBitmapContextGetData(v1);
    v7 = *&v13 * *(&v13 + 1) * 4.0;
    v8 = 0.0;
    if (v7 > 0.0)
    {
      v9 = Data + 2;
      v10 = 4;
      do
      {
        LOBYTE(v4) = *(v9 - 2);
        LOBYTE(v5) = *(v9 - 1);
        LOBYTE(v6) = *v9;
        v6 = *&v6 / 255.0;
        v11 = *&v5 / 255.0 * (*&v5 / 255.0 * 0.587) + *&v4 / 255.0 * 0.299 * (*&v4 / 255.0);
        v5 = v6 * 0.114;
        v8 = v8 + sqrt(v11 + v6 * 0.114 * v6);
        v4 = v10;
        v9 += 4;
        v12 = v7 <= v10;
        v10 += 4;
      }

      while (!v12);
    }

    CGContextRelease(v2);
  }
}

CGContext *CGContextCreateForHapticLuminanceAnalysis(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 CGImage];
  v5 = 0;
  if (v3)
  {
    v6 = v4;
    if (v4)
    {
      Width = CGImageGetWidth(v4);
      Height = CGImageGetHeight(v6);
      v5 = 0;
      if (Width)
      {
        if (Height)
        {
          if (CGContextCreateForHapticLuminanceAnalysis_onceToken != -1)
          {
            CGContextCreateForHapticLuminanceAnalysis_cold_1();
          }

          [v3 size];
          v10 = v9;
          [v3 size];
          v12 = v10 / v11 * 20.0;
          v13 = CGBitmapContextCreate(0, 0x14uLL, v12, 8uLL, 0x50uLL, CGContextCreateForHapticLuminanceAnalysis_analysisColorSpace, 0x2002u);
          v5 = v13;
          if (v13)
          {
            v15.origin.x = *MEMORY[0x1E695EFF8];
            v15.origin.y = *(MEMORY[0x1E695EFF8] + 8);
            v15.size.width = 20.0;
            v15.size.height = v12;
            CGContextDrawImage(v13, v15, v6);
            *a2 = 0x4034000000000000;
            *(a2 + 8) = v12;
          }
        }
      }
    }
  }

  return v5;
}

CGColorSpaceRef __CGContextCreateForHapticLuminanceAnalysis_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  CGContextCreateForHapticLuminanceAnalysis_analysisColorSpace = result;
  return result;
}

void sub_1A214C854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A214FD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2152534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A215B4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A215D568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A215DDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A216A4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A216BFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MRUPlayPauseStopPackageStateNameForState(uint64_t a1)
{
  v1 = @"play";
  if (a1 == 1)
  {
    v1 = @"pause";
  }

  if (a1 == 2)
  {
    return @"stop";
  }

  else
  {
    return v1;
  }
}

void sub_1A216F70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _MPAVLog(uint64_t a1)
{
  if (_MPAVLog_onceToken != -1)
  {
    _MPAVLog_cold_1();
  }

  v2 = _MPAVLog__log;

  return v2;
}

uint64_t MRUNowPlayingHeaderLayoutFromNowPlayingLayout(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 2;
  }

  else
  {
    return qword_1A2307BA0[a1 - 1];
  }
}

uint64_t MRUNowPlayingLabelViewLayoutFromNowPlayingLayout(uint64_t a1)
{
  v1 = 1;
  if (a1 != 3)
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t MRUNowPlayingTransportControlsLayoutFromNowPlayingLayout(uint64_t a1)
{
  if (a1)
  {
    return 2 * (a1 == 4);
  }

  else
  {
    return 1;
  }
}

double MRUNowPlayingTimeControlsStretchLimit(unint64_t a1)
{
  result = 2.22044605e-16;
  if (a1 <= 4 && a1 != 2)
  {
    return 8.0;
  }

  return result;
}

__CFString *MRUNowPlayingLabelViewLayoutLayoutDescription(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Small";
  }

  else
  {
    return off_1E7664520[a1 - 1];
  }
}

__CFString *MRUNowPlayingTimeControlsLayoutDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Stacked";
  }

  else
  {
    return off_1E7664548[a1];
  }
}

void sub_1A21723B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A217261C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MRUFlippingArtworkTransitionDirectionDescription(uint64_t a1)
{
  if (a1)
  {
    return @"Backward";
  }

  else
  {
    return @"Forward";
  }
}

double MRUFlippingArtworkTransitionDirectionFromValue(uint64_t a1, double a2)
{
  v2 = -1.0;
  if (!a1)
  {
    v2 = 1.0;
  }

  return a2 + v2 * 3.14159265;
}

void luminanceForImage(void *a1)
{
  v13 = *MEMORY[0x1E695F060];
  v1 = CGContextCreateForLuminanceAnalysis(a1, &v13);
  if (v1)
  {
    v2 = v1;
    Data = CGBitmapContextGetData(v1);
    v7 = *&v13 * *(&v13 + 1) * 4.0;
    v8 = 0.0;
    if (v7 > 0.0)
    {
      v9 = Data + 2;
      v10 = 4;
      do
      {
        LOBYTE(v4) = *(v9 - 2);
        LOBYTE(v5) = *(v9 - 1);
        LOBYTE(v6) = *v9;
        v6 = *&v6 / 255.0;
        v11 = *&v5 / 255.0 * (*&v5 / 255.0 * 0.587) + *&v4 / 255.0 * 0.299 * (*&v4 / 255.0);
        v5 = v6 * 0.114;
        v8 = v8 + sqrt(v11 + v6 * 0.114 * v6);
        v4 = v10;
        v9 += 4;
        v12 = v7 <= v10;
        v10 += 4;
      }

      while (!v12);
    }

    CGContextRelease(v2);
  }
}

CGContext *CGContextCreateForLuminanceAnalysis(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 CGImage];
  v5 = 0;
  if (v3)
  {
    v6 = v4;
    if (v4)
    {
      Width = CGImageGetWidth(v4);
      Height = CGImageGetHeight(v6);
      v5 = 0;
      if (Width)
      {
        if (Height)
        {
          if (CGContextCreateForLuminanceAnalysis_onceToken != -1)
          {
            CGContextCreateForLuminanceAnalysis_cold_1();
          }

          [v3 size];
          v10 = v9;
          [v3 size];
          v12 = v10 / v11 * 20.0;
          v13 = CGBitmapContextCreate(0, 0x14uLL, v12, 8uLL, 0x50uLL, CGContextCreateForLuminanceAnalysis_analysisColorSpace, 0x2002u);
          v5 = v13;
          if (v13)
          {
            v15.origin.x = *MEMORY[0x1E695EFF8];
            v15.origin.y = *(MEMORY[0x1E695EFF8] + 8);
            v15.size.width = 20.0;
            v15.size.height = v12;
            CGContextDrawImage(v13, v15, v6);
            *a2 = 0x4034000000000000;
            *(a2 + 8) = v12;
          }
        }
      }
    }
  }

  return v5;
}

CGColorSpaceRef __CGContextCreateForLuminanceAnalysis_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  CGContextCreateForLuminanceAnalysis_analysisColorSpace = result;
  return result;
}

void sub_1A21785FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A217B3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

os_log_t _MCSLogCategoryDefault()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "Default");

  return v0;
}

os_log_t _MCSLogCategoryMirroring()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "Mirroring");

  return v0;
}

uint64_t MRUMediaSuggestionsVisibleItemCount(uint64_t a1)
{
  if (a1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

double MRUMediaSuggestionsMaxItemWidthCompact()
{
  v0 = +[MRUFeatureFlagProvider isAutobahnEnabled];
  result = 90.0;
  if (v0)
  {
    return 80.0;
  }

  return result;
}

double MRUMediaSuggestionsIconSize(uint64_t a1)
{
  result = 24.0;
  if (a1 == 1)
  {
    return 16.0;
  }

  return result;
}

double MRUMediaSuggestionsIconCornerRadius(uint64_t a1)
{
  result = 2.0;
  if (!a1)
  {
    return 6.0;
  }

  return result;
}

double MRUMediaSuggestionsIconShadowRadius(uint64_t a1)
{
  result = 3.0;
  if (!a1)
  {
    return 6.0;
  }

  return result;
}

void sub_1A218336C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21897D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A218BFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A218E114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1A2190278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_1A2192680(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1A21951A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MRUMediaSuggestionsLayoutDescription(uint64_t a1)
{
  if (a1)
  {
    return @"Compact";
  }

  else
  {
    return @"Default";
  }
}

void sub_1A2197DC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A2198454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A219ECA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21A7B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A21A7E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A21A90E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21A9480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __MRUIsSmallScreen_block_invoke()
{
  v1 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v1 userInterfaceIdiom])
  {
    v0 = 0;
  }

  else
  {
    CCUIReferenceScreenBounds();
    v0 = CGRectGetHeight(v3) <= 736.0;
  }

  MRUIsSmallScreen___isSmallScreen = v0;
}

BOOL MRUIsSmallScreenWithScale(double a1)
{
  if (MRUIsSmallScreenWithScale_onceToken != -1)
  {
    MRUIsSmallScreenWithScale_cold_1();
  }

  if (MRUIsSmallScreenWithScale___isPhone != 1)
  {
    return 0;
  }

  *&v3.origin.x = MRUIsSmallScreenWithScale___referenceScreenBounds_0;
  *&v3.origin.y = MRUIsSmallScreenWithScale___referenceScreenBounds_1;
  *&v3.size.width = MRUIsSmallScreenWithScale___referenceScreenBounds_2;
  *&v3.size.height = MRUIsSmallScreenWithScale___referenceScreenBounds_3;
  return CGRectGetHeight(v3) <= a1 * 736.0;
}

void __MRUIsSmallScreenWithScale_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  MRUIsSmallScreenWithScale___isPhone = [v0 userInterfaceIdiom] == 0;

  CCUIReferenceScreenBounds();
  MRUIsSmallScreenWithScale___referenceScreenBounds_0 = v1;
  MRUIsSmallScreenWithScale___referenceScreenBounds_1 = v2;
  MRUIsSmallScreenWithScale___referenceScreenBounds_2 = v3;
  MRUIsSmallScreenWithScale___referenceScreenBounds_3 = v4;
}

double MRUExpandedTallWidth(__n128 a1, __n128 a2)
{
  v2 = CCUINumberOfColumnsForGridSizeClass();
  v3 = MEMORY[0x1A58DB6D0]();
  CCUILayoutGutter();
  v5 = v3 + v4;
  CCUILayoutGutter();
  return -(v6 - v5 * v2);
}

double MRUExpandedWideWidth(__n128 a1, __n128 a2)
{
  v2 = CCUINumberOfColumnsForGridSizeClass();
  v3 = MEMORY[0x1A58DB6D0]();
  CCUILayoutGutter();
  v5 = v3 + v4;
  CCUILayoutGutter();
  return -(v6 - v5 * v2);
}

uint64_t MRUHortizonalScreenInset(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  if (CGRectIsEmpty(v27))
  {
    CCUIScreenBounds();
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  MidY = CGRectGetMidY(v28);
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  Width = CGRectGetWidth(v29);
  v17 = [v1 window];

  [v17 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{0.0, MidY, Width, 1.0}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  CGRectGetMinX(v30);
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  CGRectGetWidth(v31);
  v32.origin.x = v19;
  v32.origin.y = v21;
  v32.size.width = v23;
  v32.size.height = v25;
  CGRectGetWidth(v32);
  return CGFloatIsValid();
}

double MRURectByApplyingUserInterfaceLayoutDirectionInRect(uint64_t a1, double result, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a1 == 1)
  {
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  }

  return v9;
}

void sub_1A21AD978(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x488], 8);
  _Block_object_dispose(&STACK[0x530], 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1A21B4D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21B513C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A21B6DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21B71A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21B8E44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A21B95C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21B9B88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A21C5120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21CAF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21CB8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21CD4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21D1504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getSBSRequestPasscodeUnlockAlertUISymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7665C10;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBSRequestPasscodeUnlockAlertUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSRequestPasscodeUnlockAlertUISymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t UISliderStyleForMRUSliderStyle(uint64_t a1)
{
  if (a1)
  {
    return 111;
  }

  else
  {
    return 110;
  }
}

void sub_1A21DA5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21DCAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1A21DCED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21DE274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21DE924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MRUImageLoaderStateString(uint64_t a1)
{
  if ((a1 - 2) > 4)
  {
    return @"initial";
  }

  else
  {
    return off_1E7665E68[a1 - 2];
  }
}

void sub_1A21E34D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A21E469C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A21E490C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A21E4A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A21E4BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A21E53C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21E5580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A21E5738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21E7A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47)
{
  objc_destroyWeak(&a47);
  objc_destroyWeak((v47 - 248));
  _Unwind_Resume(a1);
}

void sub_1A21ECD18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A21EDB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MRUNowPlayingContextDescription(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E76662D8[a1 - 1];
  }
}

BOOL MRUArtworkIsSquare(double a1, double a2)
{
  if (a1 * a2 <= 0.0)
  {
    return 1;
  }

  v2 = 1.0 - a1 / a2;
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  return v2 < 0.03;
}

double MRUArtworkCornerRadius(uint64_t a1, double a2, double a3)
{
  if (a2 * a3 <= 0.0)
  {
    v6 = 1;
  }

  else
  {
    v5 = 1.0 - a2 / a3;
    if (v5 < 0.0)
    {
      v5 = -v5;
    }

    v6 = v5 < 0.03;
  }

  if (a2 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  if (a2 >= a3)
  {
    a3 = a2;
  }

  result = 7.0;
  v9 = v7 / a3;
  if (a1 > 7)
  {
    if (a1 > 11)
    {
      if ((a1 - 12) < 2)
      {
        result = 14.0;
LABEL_42:
        v14 = v9 * result;
        if (!v6)
        {
          return v14;
        }

        return result;
      }

      v12 = a1 == 14;
      v11 = 6.0;
    }

    else
    {
      v11 = 7.0;
      if (v6)
      {
        v11 = 13.0;
      }

      if (a1 == 11)
      {
        result = 10.0;
      }

      if (a1 == 10)
      {
        result = 16.0;
      }

      v12 = a1 == 8;
    }
  }

  else
  {
    if (a1 <= 4)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
            v10 = [MRUFeatureFlagProvider isMotionOnLockScreenEnabled:7.0];
            result = 23.5;
            if (!v10)
            {
              return 7.0;
            }
          }

          return result;
        }

        result = 10.0;
        goto LABEL_42;
      }

      return 7.5;
    }

    if (a1 == 5)
    {
      return 7.5;
    }

    v11 = 4.0;
    v13 = 3.0;
    if (v6)
    {
      v13 = 5.5;
    }

    if (a1 == 7)
    {
      result = v13;
    }

    v12 = a1 == 6;
  }

  if (v12)
  {
    return v11;
  }

  return result;
}

double MRUArtworkShadowInset(unint64_t a1)
{
  if (a1 - 4 >= 0xB && a1 > 2)
  {
    return 16.0;
  }

  else
  {
    return *MEMORY[0x1E69DDCE0];
  }
}

double MRUArtworkShadowRadius(uint64_t a1)
{
  result = 6.0;
  if ((a1 - 1) <= 0xD)
  {
    return dbl_1A23083C0[a1 - 1];
  }

  return result;
}

double MRUArtworkShadowOpacity(uint64_t a1, uint64_t a2)
{
  result = 0.24;
  if (a1 > 8)
  {
    if (a1 == 9)
    {
      return 0.0;
    }

    if (a1 != 10)
    {
      if (a1 == 14)
      {
        return 0.3;
      }

      return result;
    }

    return 0.45;
  }

  if (a1 == 1)
  {
    return dbl_1A2308360[a2 == 2];
  }

  if (a1 == 3)
  {
    return 0.45;
  }

  return result;
}

char *MRUArtworkShadowColor(char *a1)
{
  if ((a1 - 2) < 0xD)
  {
    goto LABEL_2;
  }

  if (a1 == 1)
  {
    a1 = [MEMORY[0x1E69DC888] colorWithRed:0.396078431 green:0.396078431 blue:0.396078431 alpha:1.0];
  }

  else if (!a1)
  {
LABEL_2:
    a1 = [MEMORY[0x1E69DC888] blackColor];
  }

  return a1;
}

id MRUArtworkShadowFilter(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = *MEMORY[0x1E6979CE8];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id MRUArtworkPlaceholderSymbolConfiguration(uint64_t a1)
{
  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v1 = MEMORY[0x1E69DCAD8];
      v2 = 96.0;
      v3 = 7;
      goto LABEL_13;
    }

    if (a1 == 11)
    {
      v1 = MEMORY[0x1E69DCAD8];
      v2 = 23.0;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if ((a1 - 7) < 2)
  {
    v1 = MEMORY[0x1E69DCAD8];
    v2 = 28.0;
LABEL_7:
    v3 = 6;
    goto LABEL_13;
  }

  if (a1 != 2)
  {
LABEL_11:
    v1 = MEMORY[0x1E69DCAD8];
    v2 = 28.0;
    goto LABEL_12;
  }

  v1 = MEMORY[0x1E69DCAD8];
  v2 = 48.0;
LABEL_12:
  v3 = 4;
LABEL_13:
  v4 = [v1 configurationWithPointSize:v3 weight:-1 scale:v2];

  return v4;
}

double MRUFlippingArtworkPlaceholderSizeRatio(uint64_t a1)
{
  if ((a1 - 7) > 3)
  {
    return 0.33;
  }

  else
  {
    return dbl_1A2308430[a1 - 7];
  }
}

void sub_1A21FD9B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A21FE9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A21FF248(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t MRUDeviceSupportsVariableFrameRate(uint64_t a1, uint64_t a2)
{
  if (MRUDeviceSupportsVariableFrameRate_onceToken[0] != -1)
  {
    MRUDeviceSupportsVariableFrameRate_cold_1();
  }

  return MRUDeviceSupportsVariableFrameRate___supports;
}

uint64_t __MRUDeviceSupportsVariableFrameRate_block_invoke()
{
  result = MGGetBoolAnswer();
  MRUDeviceSupportsVariableFrameRate___supports = result;
  return result;
}

void sub_1A220635C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

double MRUVolumeSliderGlyphScale()
{
  v0 = +[MRUFeatureFlagProvider isNewControlsEnabled];
  result = 1.16;
  if (v0)
  {
    return 1.0;
  }

  return result;
}

id sub_1A2209334(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A22E5528();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v9 = *sub_1A21268A4();
  v10 = sub_1A22E6598();

  v11 = sub_1A22E6598();
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (!v12)
  {
    return 0;
  }

  sub_1A22E5508();

  (*(v3 + 32))(v8, v6, v2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_1A22E54F8();
  v15 = *MEMORY[0x1E6979EF8];
  v21[0] = 0;
  v16 = [ObjCClassFromMetadata packageWithContentsOfURL:v14 type:v15 options:0 error:v21];

  if (v16)
  {
    v17 = *(v3 + 8);
    v18 = v21[0];
    v17(v8, v2);
  }

  else
  {
    v16 = v21[0];
    sub_1A22E54E8();

    swift_willThrow();
    (*(v3 + 8))(v8, v2);
  }

  return v16;
}

void sub_1A22095AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6997250]) init];
  v1 = sub_1A2114DFC();

  v2 = objc_opt_self();
  v3 = sub_1A22E6598();
  v4 = [v2 packageDescriptionWithName_];

  if (v4)
  {
    [v1 setPackageDescription_];

    [v1 setScale_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1A220968C(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1A2209718(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1A2209788(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaControlsModulePreviewView(a1, a2);
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v2 bounds];
  return [*&v2[OBJC_IVAR____TtC13MediaControls30MediaControlsModulePreviewView_previewView] setFrame_];
}

id sub_1A220985C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaControlsModulePreviewView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A22098A0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E6997250]) init];
  v3 = sub_1A2114DFC();

  v4 = objc_opt_self();
  v5 = sub_1A22E6598();
  v6 = [v4 packageDescriptionWithName_];

  if (v6)
  {
    v7 = OBJC_IVAR____TtC13MediaControls30MediaControlsModulePreviewView_previewView;
    [v3 setPackageDescription_];

    v8 = [v3 setScale_];
    *&v1[v7] = v3;
    v11.receiver = v1;
    v11.super_class = type metadata accessor for MediaControlsModulePreviewView(v8, v9);
    v10 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v10 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A22099E4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E6997250]) init];
  v3 = sub_1A2114DFC();

  v4 = objc_opt_self();
  v5 = sub_1A22E6598();
  v6 = [v4 packageDescriptionWithName_];

  if (!v6)
  {
    __break(1u);
  }

  v7 = OBJC_IVAR____TtC13MediaControls30MediaControlsModulePreviewView_previewView;
  [v3 setPackageDescription_];

  [v3 setScale_];
  *(v1 + v7) = v3;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A2209B90(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A2209BFC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

void sub_1A2209C9C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

float sub_1A2209D2C()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_value;
  swift_beginAccess();
  return *v1;
}

void sub_1A2209D74(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_value);
  v4 = swift_beginAccess();
  v5 = *v3;
  *v3 = a1;
  if (v5 != a1)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(v4);
    if (v7 > (*((*v6 & *v1) + 0xF8))())
    {
      __break(1u);
    }

    else
    {
      sub_1A2209E94();
      sub_1A22E64A8();
      *v3 = v8;
      [v1 setNeedsLayout];
    }
  }
}

unint64_t sub_1A2209E94()
{
  result = qword_1ED94EB10;
  if (!qword_1ED94EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EB10);
  }

  return result;
}

void (*sub_1A2209EE8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_value;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 48) = *v6;
  return sub_1A2209F80;
}

void sub_1A2209F80(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    sub_1A2209D74(v3);
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = *(v2 + 32);
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = *(v2 + 24);
      *(v2 + 56) = v3;
      v8 = MEMORY[0x1E69E7D40];
      v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xE0))();
      v10 = (*((*v8 & *v7) + 0xF8))();
      if (v9 > v10)
      {
        __break(1u);
        return;
      }

      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      *(v2 + 40) = v9;
      *(v2 + 44) = v10;
      sub_1A2209E94();
      sub_1A22E64A8();
      *&v11[v12] = *(v2 + 52);
      [v11 setNeedsLayout];
    }
  }

  free(v2);
}

float sub_1A220A0A8()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_minimumValue;
  swift_beginAccess();
  return *v1;
}

void sub_1A220A0F0(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_minimumValue);
  v4 = swift_beginAccess();
  v5 = *v3;
  *v3 = a1;
  if (v5 != a1)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
    v8 = (v7)(v4);
    if ((LODWORD(v8) & 0x7FFFFF) != 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = v8;
    }

    if ((~LODWORD(v8) & 0x7F800000) != 0)
    {
      v9 = v8;
    }

    if (v8 >= a1)
    {
      v10 = a1;
    }

    else
    {
      v10 = v9;
    }

    *v3 = v10;
    (*((*v6 & *v1) + 0xC8))();
    v11 = *v3;
    if (v11 > v7())
    {
      __break(1u);
    }

    else
    {
      sub_1A2209E94();
      v12 = sub_1A22E64A8();
      (*((*v6 & *v1) + 0xD0))(v12);
      [v1 setNeedsLayout];
    }
  }
}

void (*sub_1A220A274(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = (v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_minimumValue);
  swift_beginAccess();
  *(v4 + 32) = *v5;
  return sub_1A220A30C;
}

void sub_1A220A30C(uint64_t a1)
{
  v1 = *a1;
  sub_1A220A0F0(*(*a1 + 32));

  free(v1);
}

void sub_1A220A354(float a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  if (v3() != a1)
  {
    v4 = v3();
    v5 = (v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_maximumValue);
    v6 = swift_beginAccess();
    v7.n128_u32[0] = *v5;
    if (*v5 >= v4)
    {
      if ((v7.n128_u32[0] & 0x7FFFFF) != 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = *v5;
      }

      if ((~v7.n128_u32[0] & 0x7F800000) != 0)
      {
        v4 = *v5;
      }

      else
      {
        v4 = v8;
      }
    }

    v9 = (*((*v2 & *v1) + 0xE8))(v6, v4, v7);
    (*((*v2 & *v1) + 0xC8))(v9);
    if (v3() > *v5)
    {
      __break(1u);
    }

    else
    {
      sub_1A2209E94();
      v10 = sub_1A22E64A8();
      (*((*v2 & *v1) + 0xD0))(v10);
      [v1 setNeedsLayout];
    }
  }
}

float sub_1A220A514()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_maximumValue;
  swift_beginAccess();
  return *v1;
}

void sub_1A220A55C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_maximumValue);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  sub_1A220A354(v4);
}

void (*sub_1A220A5B8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_maximumValue;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return sub_1A220A650;
}

void sub_1A220A650(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  *(v3 + v2) = *(*a1 + 40);
  sub_1A220A354(v4);

  free(v1);
}

uint64_t sub_1A220A698()
{
  v1 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A220A6DC(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isEnabled;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = *(v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer);
    v8 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(result))
    {
      v9 = (*((*v8 & *v1) + 0x160))();
    }

    else
    {
      v9 = 0;
    }

    [v7 setEnabled_];
    v10 = *(v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView);
    v11 = [v7 isEnabled];
    v12 = 0.5;
    if (v11)
    {
      v12 = 1.0;
    }

    return [v10 setAlpha_];
  }

  return result;
}

void (*sub_1A220A814(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A220A8A8;
}

void sub_1A220A8A8(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = v1[3];
    v7 = *(v6 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer);
    v8 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v6) + 0x110))())
    {
      v9 = (*((*v8 & *v1[3]) + 0x160))();
    }

    else
    {
      v9 = 0;
    }

    v10 = v1[3];
    [v7 setEnabled_];
    v11 = *(v10 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView);
    v12 = [v7 isEnabled];
    v13 = 0.5;
    if (v12)
    {
      v13 = 1.0;
    }

    [v11 setAlpha_];
  }

  free(v1);
}

uint64_t sub_1A220A9E4()
{
  v1 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A220AA28(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isTracking;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A220AADC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v0 init];
}

id sub_1A220AB24()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCAE8]);

  return [v0 initWithStyle_];
}

id sub_1A220AB60()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCD28]);

  return [v0 init];
}

id sub_1A220AB98()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCC48]);

  return [v0 init];
}

char *sub_1A220ABD0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_value] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_minimumValue] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_maximumValue] = 1065353216;
  v4[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isEnabled] = 1;
  v4[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isTracking] = 0;
  v9 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_feedbackGenerator;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
  v11 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v12 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_longPressGesture;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) init];
  *&v4[v12] = v13;
  v4[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_coordinatedIsEnabled] = 1;
  *&v4[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_preTrackedValue] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for RoutePickerItemSlider(v13, v14);
  v15 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1A225CA7C();
  v16 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_longPressGesture;
  [*&v15[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_longPressGesture] addTarget:v15 action:sel_longGestureDidChangeWithSender_];
  [*&v15[v16] setMinimumPressDuration_];
  [*&v15[v16] setAllowableMovement_];
  [*&v15[v16] setDelegate_];
  [*&v15[v16] setCancelsTouchesInView_];
  [v15 addGestureRecognizer_];
  v17 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer;
  [*&v15[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer] addTarget:v15 action:sel_panGestureDidChangeWithSender_];
  [v15 addGestureRecognizer_];
  v18 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView;
  [*&v15[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView] setUserInteractionEnabled_];
  [v15 addSubview_];

  return v15;
}

id sub_1A220AEBC(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for RoutePickerItemSlider(a1, a2);
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  sub_1A220BA04();
  [v2 bounds];
  CGRectGetHeight(v6);
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView];
  [v2 effectiveUserInterfaceLayoutDirection];
  [v2 bounds];
  sub_1A22E6BB8();
  return [v3 setFrame_];
}

uint64_t sub_1A220B050(char a1, float a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))();
  result = (*((*v5 & *v2) + 0xD0))(a2);
  if (a1)
  {
    sub_1A220C0E8(0, v8);
    sub_1A211A390(v11);
    sub_1A211A3F4(v12, fmax(vabds_f32(v6, a2) * 0.25, 0.1));
    sub_1A2116928(v11);
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    v10 = v2;
    sub_1A21179EC(v12, sub_1A220C134, v9, 0, 0);

    return sub_1A2116928(v12);
  }

  return result;
}

unint64_t sub_1A220B1A0(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && v4 == *&v2[OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer])
  {
    v7 = v4;
    v8 = a1;
    [v7 translationInView_];
    v10 = v9;
    v12 = v11;
    [v7 velocityInView_];
    v14 = v13;
    v16 = v15;

    v17 = fabs(v12) < fabs(v10);
    return fabs(v16) < fabs(v14) || v17;
  }

  else
  {
    v18.receiver = v2;
    v18.super_class = type metadata accessor for RoutePickerItemSlider(v4, v5);
    return objc_msgSendSuper2(&v18, sel_gestureRecognizerShouldBegin_, a1);
  }
}

uint64_t sub_1A220B2E8()
{
  v1 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_coordinatedIsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A220B32C(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_coordinatedIsEnabled;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = *(v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer);
  v6 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v4))
  {
    v7 = (*((*v6 & *v1) + 0x160))();
  }

  else
  {
    v7 = 0;
  }

  [v5 setEnabled_];
  sub_1A220C0E8(0, v8);
  sub_1A211A390(v12);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = v1;
  sub_1A21179EC(v12, sub_1A220C144, v9, 0, 0);

  return sub_1A2116928(v12);
}

void (*sub_1A220B494(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 88) = v1;
  swift_beginAccess();
  return sub_1A220B520;
}

void sub_1A220B520(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(v3 + 88);
    v6 = *(v5 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer);
    v7 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v5) + 0x110))(v4))
    {
      v8 = (*((*v7 & **(v3 + 88)) + 0x160))();
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v3 + 88);
    [v6 setEnabled_];
    sub_1A220C0E8(0, v10);
    sub_1A211A390(v3);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v12 = v9;
    sub_1A21179EC(v3, sub_1A220C208, v11, 0, 0);

    sub_1A2116928(v3);
  }

  free(v3);
}

void sub_1A220B6C0(void *a1)
{
  v3 = [a1 state];
  if (v3 == 3 || v3 == 2)
  {
    [a1 translationInView_];

    sub_1A220BACC(v4);
  }

  else if (v3 == 1)
  {
    *(v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_preTrackedValue) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))();
  }
}

char *sub_1A220B7DC(void *a1)
{
  result = [a1 state];
  if ((result - 3) >= 2)
  {
    if (result != 1)
    {
      return result;
    }

    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))();
    result = (*((*v8 & *v1) + 0xB0))([*(v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_feedbackGenerator) prepare]);
    if (!result)
    {
      return result;
    }

    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v1, ObjectType, v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(0);
    result = (*((*v3 & *v1) + 0xB0))(v4);
    if (!result)
    {
      return result;
    }

    v6 = v5;
    v7 = swift_getObjectType();
    (*(v6 + 24))(v1, v7, v6);
  }

  return swift_unknownObjectRelease();
}

void sub_1A220BA04()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
  (*((*v1 & *v0) + 0xF8))();
  [v0 bounds];
  CGRectGetWidth(v2);
}

void sub_1A220BACC(double a1)
{
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 bounds];
  CGRectGetWidth(v17);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  v4 = v3();
  v5 = *((*v2 & *v1) + 0xF8);
  v6 = v5();
  if (v4 > v6)
  {
    __break(1u);
  }

  else
  {
    v15 = __PAIR64__(LODWORD(v6), LODWORD(v4));
    sub_1A2209E94();
    v7 = sub_1A22E64A8();
    if ((*((*v2 & *v1) + 0xC8))(v7) != v16)
    {
      if (v16 == (v5)(v8) || v16 == (v3)(v9))
      {
        v10 = [*(v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_feedbackGenerator) impactOccurred];
      }

      v11 = (*((*v2 & *v1) + 0xD0))(v10);
      if ((*((*v2 & *v1) + 0xB0))(v11))
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        (*(v13 + 16))(v1, ObjectType, v13);
        swift_unknownObjectRelease();
      }

      [v1 layoutIfNeeded];
    }
  }
}

id sub_1A220BD28(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoutePickerItemSlider(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*sub_1A220BE50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))();
  return sub_1A220BEF8;
}

void sub_1A220BEF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1A220BF84()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_value) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_minimumValue) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_maximumValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_isTracking) = 0;
  v1 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_feedbackGenerator;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
  v3 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v4 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_longPressGesture;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC48]) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_coordinatedIsEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_preTrackedValue) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A220C0E8(uint64_t a1, uint64_t a2)
{
  result = qword_1ED94E980;
  if (!qword_1ED94E980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E980);
  }

  return result;
}

id sub_1A220C148()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView);
  v3 = [*(v1 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_panGestureRecognizer) isEnabled];
  v4 = 0.5;
  if (v3)
  {
    v4 = 1.0;
  }

  return [v2 setAlpha_];
}

id sub_1A220C20C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = [objc_opt_self() textAttachmentWithImage_];
    v4 = [objc_opt_self() attributedStringWithAttachment_];
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v3 = sub_1A22E6598();
    v4 = [v5 initWithString_];
  }

  v6 = v4;

  return v6;
}

void *sub_1A220C2D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v29 = MEMORY[0x1E69E7CC0];
  sub_1A22E6F38();
  v7 = (a1 + 48);
  do
  {
    v10 = *(v7 - 2);
    v11 = *(v7 - 1);
    v12 = *v7;
    if (*v7)
    {
      v8 = [objc_opt_self() textAttachmentWithImage_];
      v9 = [objc_opt_self() attributedStringWithAttachment_];
    }

    else
    {
      v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

      v8 = sub_1A22E6598();
      [v13 initWithString_];
    }

    sub_1A220C5F8(v10, v11, v12);

    sub_1A22E6F08();
    sub_1A22E6F48();
    sub_1A22E6F58();
    sub_1A22E6F18();
    v7 += 24;
    --v4;
  }

  while (v4);
  v14 = v29;
  if ([a4 layoutDirection] == 1)
  {
    sub_1A220C608();
    v14 = v29;
  }

  v15 = a3;
  v16 = v28;
  if (v14 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A22E6DE8())
  {

    if (!i)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1A58DB0F0](v18, v14);
      }

      else
      {
        if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v19 = *(v14 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v16 appendAttributedString_];
      if (v15)
      {
        if (v14 >> 62)
        {
          v22 = sub_1A22E6DE8();
        }

        else
        {
          v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFSUB__(v22, 1))
        {
          goto LABEL_31;
        }

        if (v18 != v22 - 1)
        {
          v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v24 = sub_1A22E6598();
          v25 = [v23 initWithString_];

          v15 = a3;
          [v28 appendAttributedString_];

          v16 = v28;
        }
      }

      ++v18;
      if (v21 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_26:
  swift_bridgeObjectRelease_n();
  return v16;
}

double sub_1A220C5F8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

void sub_1A220C608()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1A58DB0F0](v4, v1);
          v10 = MEMORY[0x1A58DB0F0](v2 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v2 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1A220C880(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = sub_1A220C880(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v2;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v2 - 2;
        --v2;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!sub_1A22E6DE8())
      {
        return;
      }

      v2 = sub_1A22E6DE8();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A220C7D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A220C820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A220C880(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1A22E6DE8();
  }

  return sub_1A22E6EC8();
}

uint64_t sub_1A220C8E4(char a1)
{
  if (a1)
  {
    return 0x4F7265646165682ELL;
  }

  else
  {
    return 0x65646E617078652ELL;
  }
}

uint64_t sub_1A220C960(char a1)
{
  sub_1A22E72A8();
  MEMORY[0x1A58DB4F0](a1 & 1);
  return sub_1A22E72F8();
}

uint64_t sub_1A220C9C0()
{
  v1 = *v0;
  sub_1A22E72A8();
  MEMORY[0x1A58DB4F0](v1);
  return sub_1A22E72F8();
}

uint64_t sub_1A220CA34(uint64_t a1)
{
  v2 = *v1;
  sub_1A22E72A8();
  MEMORY[0x1A58DB4F0](v2);
  return sub_1A22E72F8();
}

uint64_t sub_1A220CA78()
{
  if (*v0)
  {
    return 0x4F7265646165682ELL;
  }

  else
  {
    return 0x65646E617078652ELL;
  }
}

uint64_t sub_1A220CC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v15 = BYTE6(a3);
  v14 = WORD2(a3);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v12 - v3);
  swift_setAtWritableKeyPath();
  v5 = 0x1000000000000;
  if (!v15)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if (!HIBYTE(v14))
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if (!v14)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!HIBYTE(v13))
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!BYTE2(v13))
  {
    v9 = 0;
  }

  v10 = 256;
  if (!BYTE1(v13))
  {
    v10 = 0;
  }

  return v10 | v13 | v9 | v8 | v7 | v6 | v5;
}

unint64_t sub_1A220CDA4(char a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  v7 = 0x1000000000000;
  if ((a7 & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x10000000000;
  if ((a6 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x100000000;
  if ((a5 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x1000000;
  if ((a4 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 256;
  if ((a2 & 1) == 0)
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFFFFFFFFFELL | a1 & 1 | v11 | v10 | v9 | v8 | v7;
}

BOOL sub_1A220CE08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = v9 == 0;
  v18 = 0x1000000000000;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0x1000000000000;
  }

  v17 = v8 == 0;
  v20 = 0x10000000000;
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x10000000000;
  }

  v17 = v7 == 0;
  v22 = 0x100000000;
  if (v17)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0x100000000;
  }

  v17 = v6 == 0;
  v24 = 0x1000000;
  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x1000000;
  }

  v17 = v5 == 0;
  v26 = 0x10000;
  if (v17)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0x10000;
  }

  v17 = v4 == 0;
  v28 = 256;
  if (v17)
  {
    v29 = 0;
  }

  else
  {
    v29 = 256;
  }

  v30 = v29 | v3 | v27 | v25;
  v31 = v23 | v21 | v19;
  if (!v16)
  {
    v18 = 0;
  }

  if (!v15)
  {
    v20 = 0;
  }

  if (!v14)
  {
    v22 = 0;
  }

  if (!v13)
  {
    v24 = 0;
  }

  if (!v12)
  {
    v26 = 0;
  }

  if (!v11)
  {
    v28 = 0;
  }

  return sub_1A22145C8(v30 | v31, v28 | v10 | v26 | v24 | v22 | v20 | v18);
}

unint64_t sub_1A220CF2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4() & 0x10000000000) != 0)
  {
    return ((v4)(a1, a2) >> 32) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A220CF98(char a1)
{
  if (!a1)
  {
    return 0x6C616D726F6E2ELL;
  }

  if (a1 == 1)
  {
    return 0x7473696C2ELL;
  }

  return 0x4F6576697463612ELL;
}

uint64_t sub_1A220D01C(unsigned __int8 a1)
{
  sub_1A22E72A8();
  MEMORY[0x1A58DB4F0](a1);
  return sub_1A22E72F8();
}

uint64_t sub_1A220D064()
{
  v1 = 0x7473696C2ELL;
  if (*v0 != 1)
  {
    v1 = 0x4F6576697463612ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6E2ELL;
  }
}

uint64_t sub_1A220D0FC()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_1A220D12C(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_1A220D198()
{
  v1 = v0[3];
  sub_1A2214638(v1, v0[4], v0[5], v0[6]);
  return v1;
}

void sub_1A220D1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A221467C(v4[3], v4[4], v4[5], v4[6]);
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

double sub_1A220D25C@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t sub_1A220D27C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

BOOL sub_1A220D290(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1A220D258(v5, v7);
}

void (*sub_1A220D2EC(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 248) = v1;
  v5 = (v1 + qword_1ED94F358);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v4[14] = v7;
  v4[15] = v6;
  v4 += 14;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;

  sub_1A2214638(v9, v10, v11, v12);
  return sub_1A220D3CC;
}

void sub_1A220D3CC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    *v2 = *(v2 + 7);
    *(v2 + 1) = v3;
    *(v2 + 2) = *(v2 + 9);
    *(v2 + 6) = *(v2 + 20);
    sub_1A2111C48(v2, (v2 + 168));
    sub_1A2111D8C(v2);
    v4 = *(v2 + 17);
    v5 = *(v2 + 18);
    v6 = *(v2 + 19);
    v7 = *(v2 + 20);

    sub_1A221467C(v4, v5, v6, v7);
  }

  else
  {
    *(v2 + 56) = *(v2 + 7);
    *(v2 + 72) = v3;
    *(v2 + 88) = *(v2 + 9);
    *(v2 + 13) = *(v2 + 20);
    sub_1A2111D8C((v2 + 56));
  }

  free(v2);
}

uint64_t sub_1A220D4A0(uint64_t *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v5 = v4[21];
  (v5)(v26);
  v45 = v27;
  v46 = v28;
  sub_1A2214CF8(&v45, &v36, &qword_1EB088740, &qword_1A2308750);
  v6 = sub_1A2111C80(v26);
  if (*(&v45 + 1))
  {
    sub_1A22124A8(v45, *(&v45 + 1), v46, *(&v46 + 1));
  }

  if ((*((*v3 & *v1) + 0xC8))(v6) == 2)
  {
    if (*a1)
    {
      v7 = a1[2];
      if (v7)
      {
        v8 = a1[1];

        v5(&v29, v9);
        v44 = v30;
        sub_1A2214CF8(&v44, &v36, &qword_1EB088750, &unk_1A2308760);
        sub_1A2111C80(&v29);
        if (*(&v44 + 1))
        {
          if (__PAIR128__(v7, v8) == v44 || (sub_1A22E71E8() & 1) != 0)
          {
            sub_1A210D9B0(&v44, &qword_1EB088750, &unk_1A2308760);
          }

          else
          {
            nullsub_1();
            sub_1A22124A8(v10, v11, v12, v13);
          }
        }
      }
    }
  }

  sub_1A2210658(1);
  sub_1A2210AB8(a1);
  sub_1A2211AB4();
  (v5)(v31);
  v15 = v31[1];
  v14 = v31[2];

  sub_1A2111C80(v31);
  v16 = *a1;
  if (!*a1)
  {
    if (v14)
    {
      goto LABEL_19;
    }

    v17 = 0;
LABEL_21:
    v18 = v17 == 0;
    goto LABEL_23;
  }

  v17 = a1[2];
  if (!v14)
  {
    goto LABEL_21;
  }

  if (!v17)
  {
LABEL_19:

    v18 = 0;
    goto LABEL_23;
  }

  if (v15 == a1[1] && v14 == v17)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_1A22E71E8();
  }

LABEL_23:
  v19 = sub_1A220DDA0(v18 & 1, 0);
  v5(&v32, v19);
  v21 = v4[10];
  v20 = v4[11];
  v37 = v33;
  v38 = v34;
  v39 = v35;
  v36 = v32;
  v40 = v16;
  v41 = *(a1 + 1);
  v42 = *(a1 + 3);
  v43 = *(a1 + 5);
  sub_1A2214CF8(a1, v25, &qword_1EB088748, &qword_1A2308758);
  sub_1A22148B4(1, "updateViewModel(oldValue:)", 26);
  updated = type metadata accessor for RoutePickerSessionsView.UpdateStateContext(0, v21, v20, v22);
  return (*(*(updated - 8) + 8))(&v36, updated);
}

uint64_t sub_1A220D838(char a1)
{
  v3 = qword_1ED94F370;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A220D894(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v41 = a2;
  swift_getObjectType();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = sub_1A22E6248();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v8 + 200))(v11);
  if (result != a1)
  {
    v40 = a3;
    v15 = sub_1A2104EA0();
    (*(v10 + 16))(v13, v15, v9);
    v16 = sub_1A22E6238();
    v17 = sub_1A22E6A58();
    if (os_log_type_enabled(v16, v17))
    {
      v39 = v8;
      v18 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v18 = 136315650;
      v19 = sub_1A22E7388();
      v21 = sub_1A2103450(v19, v20, &v46);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      if (a1)
      {
        if (a1 == 1)
        {
          v22 = 0x7473696C2ELL;
        }

        else
        {
          v22 = 0x4F6576697463612ELL;
        }

        if (a1 == 1)
        {
          v23 = 0xE500000000000000;
        }

        else
        {
          v23 = 0xEB00000000796C6ELL;
        }
      }

      else
      {
        v23 = 0xE700000000000000;
        v22 = 0x6C616D726F6E2ELL;
      }

      v25 = sub_1A2103450(v22, v23, &v46);

      *(v18 + 14) = v25;
      *(v18 + 22) = 1024;
      v24 = v41;
      *(v18 + 24) = v41 & 1;
      _os_log_impl(&dword_1A20FC000, v16, v17, "[%s] setState(%s) runUpdates(%{BOOL}d)", v18, 0x1Cu);
      v26 = v38;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v26, -1, -1);
      MEMORY[0x1A58DCD00](v18, -1, -1);

      (*(v10 + 8))(v13, v9);
      v7 = MEMORY[0x1E69E7D40];
      v8 = v39;
    }

    else
    {

      (*(v10 + 8))(v13, v9);
      v24 = v41;
    }

    v27 = qword_1ED94F370;
    v28 = swift_beginAccess();
    *(v4 + v27) = a1;
    v29 = *(v4 + qword_1ED94F368);
    MEMORY[0x1EEE9AC00](v28);
    *(&v38 - 16) = a1;
    v30 = (*(*v29 + 120))(sub_1A2216A08);
    if (v24)
    {
      (*((*v7 & *v4) + 0xA8))(&v42, v30);
      v31 = *(v8 + 80);
      v32 = *(v8 + 88);
      v46 = v42;
      v47 = v43;
      v48 = v44;
      v49 = v45;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0;
      sub_1A22148B4(v40 & 1, "_setState(_:runUpdates:animated:)", 33);
      updated = type metadata accessor for RoutePickerSessionsView.UpdateStateContext(0, v31, v32, v33);
      v30 = (*(*(updated - 8) + 8))(&v46, updated);
    }

    result = (*((*v7 & *v4) + 0x180))(v30);
    if (result)
    {
      v36 = v35;
      ObjectType = swift_getObjectType();
      (*(v36 + 72))(v4, a1, ObjectType, v36);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A220DDA0(char a1, char a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xC8);
  result = v5();
  if (result != 2)
  {
    if ((a1 & 1) == 0 || (result = v5(), result != 1))
    {

      return sub_1A220D894(0, a2 & 1, 1);
    }
  }

  return result;
}

double sub_1A220DE60(void *a1)
{
  sub_1A220DEC4();
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1C8))();
  return sub_1A220F0D0();
}

void sub_1A220DEC4()
{
  v1 = sub_1A2210204();
  v9 = *(v1 + 16);
  v10 = v1;
  if (v9)
  {
    v2 = 0;
    v3 = (v1 + 48);
    while (v2 < *(v10 + 16))
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v3 - 2);
      v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);
      v8 = swift_bridgeObjectRetain_n();
      v7(v8);
      sub_1A22E6518();

      if (v11)
      {
        sub_1A220E034(v11, v6, v5, v4, "updateSessionViewStates()", 25, 2u);
      }

      ++v2;

      v3 += 3;
      if (v9 == v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    sub_1A2212344();
  }
}

uint64_t sub_1A220E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = v7;
  v48 = a7;
  v46 = a5;
  v47 = a6;
  ObjectType = swift_getObjectType();
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40] & *v8;
  v50 = sub_1A22E6248();
  v15 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v51 = sub_1A2214708(a2, a3, a4);
  sub_1A2298A60(v17);

  v18 = sub_1A22E6238();
  v19 = sub_1A22E6A68();

  v20 = os_log_type_enabled(v18, v19);
  v49 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = a4;
    v22 = a3;
    v23 = v21;
    v41 = swift_slowAlloc();
    v52 = v41;
    *v23 = 136316162;
    v24 = sub_1A22E7388();
    ObjectType = a1;
    v26 = sub_1A2103450(v24, v25, &v52);
    v42 = v14;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    if (v51)
    {
      v28 = 0x4F7265646165682ELL;
    }

    else
    {
      v28 = 0x65646E617078652ELL;
    }

    if (v51)
    {
      v29 = 0xEB00000000796C6ELL;
    }

    else
    {
      v29 = 0xE900000000000064;
    }

    v30 = sub_1A2103450(v28, v29, &v52);

    *(v23 + 14) = v30;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v45;
    *(v23 + 32) = 2080;
    v31 = v22;
    a4 = v43;
    *(v23 + 34) = sub_1A2103450(v31, v43, &v52);
    *(v23 + 42) = 2080;
    v13 = MEMORY[0x1E69E7D40];
    v32 = sub_1A22E6E98();
    v34 = sub_1A2103450(v32, v33, &v52);
    a1 = ObjectType;

    *(v23 + 44) = v34;
    v14 = v42;
    _os_log_impl(&dword_1A20FC000, v18, v19, "[%s] updateState of SessionView to %s at %ld identifier: %s reason: %s", v23, 0x34u);
    v35 = v41;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v35, -1, -1);
    MEMORY[0x1A58DCD00](v23, -1, -1);
  }

  (*(v15 + 8))(v17, v50);
  v36 = (*(*(v14 + 88) + 48))(v51 & 0x101010101 | ((v51 >> 40 != 0) << 40), *(v14 + 80));
  result = (*((*v13 & *v8) + 0x180))(v36);
  if (result)
  {
    v39 = v38;
    v40 = swift_getObjectType();
    (*(v39 + 88))(v8, a1, v49, a4, v40, v39);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1A220E434(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v3 = sub_1A22E6778();
  v4 = sub_1A2214D60(v3, v2, a1, MEMORY[0x1E69E6168]);

  return v4;
}

double sub_1A220E4B0(uint64_t a1)
{
  v3 = qword_1ED94F388;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1A220E508()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v3(v11);
  v4 = v11[0];
  v14 = v11[0];

  sub_1A2111C80(v11);
  v5 = *(v4 + 16);
  v6 = sub_1A210D9B0(&v14, &qword_1EB088758, &qword_1A23105F0);
  if (!v5)
  {
    return 0;
  }

  v8 = (*((*v2 & *v1) + 0xC8))(v6);
  if (v8)
  {
    if (v8 == 1)
    {
      v3(v12);
      v13 = v12[0];

      sub_1A2111C80(v12);
      sub_1A210D9B0(&v13, &qword_1EB088758, &qword_1A23105F0);
    }

    return 0;
  }

  type metadata accessor for RoutePickerSessionsViewLayout(0, v7);
  result = sub_1A22539E8();
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v3(v12);
    v13 = v12[0];

    sub_1A2111C80(v12);
    sub_1A210D9B0(&v13, &qword_1EB088758, &qword_1A23105F0);
    if (v10 < 0)
    {
      __break(1u);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A220E6C4()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))(v3);
  v4 = v3[0];

  sub_1A2111C80(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088758, &qword_1A23105F0);
  swift_getTupleTypeMetadata2();
  sub_1A2112930(&qword_1ED94EAE8, &qword_1EB088758, &qword_1A23105F0, MEMORY[0x1E69E6328]);
  v1 = sub_1A22E6708();
  sub_1A210D9B0(&v4, &qword_1EB088758, &qword_1A23105F0);
  return v1;
}

void sub_1A220E800()
{
  isUniquelyReferenced_nonNull_native = sub_1A220E508();
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E6158];
    v7 = v2 & ~(v2 >> 63);
    while (v7 != v4)
    {
      (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))(v15, isUniquelyReferenced_nonNull_native);

      sub_1A2111C80(v15);
      sub_1A225D76C(v4, v6, &v13);

      v9 = v14;
      if (v14)
      {
        v10 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1A22130F0(0, *(v5 + 16) + 1, 1, v5);
          v5 = isUniquelyReferenced_nonNull_native;
        }

        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1A22130F0((v11 > 1), v12 + 1, 1, v5);
          v5 = isUniquelyReferenced_nonNull_native;
        }

        *(v5 + 16) = v12 + 1;
        v8 = v5 + 16 * v12;
        *(v8 + 32) = v10;
        *(v8 + 40) = v9;
      }

      if (v3 == ++v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v15[0] = v5;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088758, &qword_1A23105F0);
    swift_getTupleTypeMetadata2();
    sub_1A2112930(&qword_1ED94EAE8, &qword_1EB088758, &qword_1A23105F0, MEMORY[0x1E69E6328]);
    sub_1A22E6708();
  }
}

uint64_t sub_1A220EA7C()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0) + 168;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))(&v8);
  v10 = v9;
  sub_1A2214CF8(&v10, &v6, &qword_1EB088750, &unk_1A2308760);
  sub_1A2111C80(&v8);
  v6 = v10;
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088750, &unk_1A2308760);
  sub_1A220EB80(sub_1A2215198, &v4, MEMORY[0x1E69E73E0], *(v1 - 88), v2, &v7);
  sub_1A210D9B0(&v10, &qword_1EB088750, &unk_1A2308760);
  return v7;
}

uint64_t sub_1A220EB80@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t sub_1A220EE28()
{
  v1 = qword_1ED94F360;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A220EE6C(char a1)
{
  v3 = qword_1ED94F360;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = qword_1ED94F360;
  result = swift_beginAccess();
  if (v4 != *(v1 + v7))
  {
    v9 = [objc_opt_self() _isInAnimationBlock];
    (*((*v5 & *v1) + 0xA8))(&v14);
    v11 = *(v6 + 80);
    v10 = *(v6 + 88);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    sub_1A22148B4(v9, "onScreen", 8);
    updated = type metadata accessor for RoutePickerSessionsView.UpdateStateContext(0, v11, v10, v12);
    return (*(*(updated - 8) + 8))(&v18, updated);
  }

  return result;
}

void (*sub_1A220EFFC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = qword_1ED94F360;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1A220F090;
}

void sub_1A220F090(uint64_t a1)
{
  v1 = *a1;
  sub_1A220EE6C(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1A220F0FC(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))() & 1) == 0)
  {
    return 0;
  }

  v4 = *((*v3 & *v1) + 0x178);

  return v4(a1);
}

BOOL sub_1A220F1BC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 8))(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50));
  v4 = v3;
  (*((*v1 & *v0) + 0xA8))(v12);
  v5 = v12[0];
  v13 = v12[0];

  sub_1A2111C80(v12);
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_10:

LABEL_11:
    sub_1A210D9B0(&v13, &qword_1EB088758, &qword_1A23105F0);
    return 0;
  }

  v7 = 0;
  v8 = (v5 + 40);
  while (1)
  {
    v9 = *(v8 - 1) == v2 && v4 == *v8;
    if (v9 || (sub_1A22E71E8() & 1) != 0)
    {
      break;
    }

    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_10;
    }
  }

  sub_1A210D9B0(&v13, &qword_1EB088758, &qword_1A23105F0);
  sub_1A220E508();
  return v7 < v11;
}

uint64_t sub_1A220F348(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1ED94F390;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A220F3B4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1ED94F390;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

double sub_1A220F454(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x118))(a1, a2);
  sub_1A22E6508();
  swift_getWitnessTable();
  sub_1A22E6718();

  return result;
}

uint64_t sub_1A220F5C8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1ED94F380;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1A220F454(sub_1A2216924, sub_1A2216B94);
  return swift_unknownObjectRelease();
}

void (*sub_1A220F660(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1ED94F380;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A220F700;
}

void sub_1A220F700(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1A220F454(sub_1A2216924, sub_1A2216B94);
  }

  free(v3);
}

uint64_t sub_1A220F7B8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RoutePickerSessionsViewLayout(0, a2);
  sub_1A22549D4(v3);
  return sub_1A2253A90(v3);
}

char *sub_1A220F808(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = *MEMORY[0x1E69E7D40];
  v12 = v4 + qword_1ED94F358;
  *v12 = MEMORY[0x1E69E7CC0];
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v4 + qword_1ED94F370) = 0;
  v13 = qword_1ED94F398;
  *(v4 + v13) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v14 = qword_1ED94F388;
  v15 = *((v11 & v10) + 0x50);
  v16 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v17 = sub_1A22E6778();
  v18 = sub_1A2214D60(v17, v16, v15, MEMORY[0x1E69E6168]);

  *&v5[v14] = v18;
  v5[qword_1ED94F360] = 0;
  *&v5[qword_1ED94F390 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_1ED94F380 + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = qword_1ED94F368;
  type metadata accessor for RoutePickerSessionsViewLayout(0, v20);
  sub_1A22549D4(v34);
  *&v5[v19] = sub_1A2253A90(v34);
  *&v5[qword_1ED94F378] = MEMORY[0x1E69E7CD0];
  v21 = *((v11 & v10) + 0x58);
  v23 = type metadata accessor for RoutePickerSessionsView(0, v15, v21, v22);
  v33.receiver = v5;
  v33.super_class = v23;
  v24 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  [v24 _setHiddenPocketEdges_];
  [v24 setClipsToBounds_];
  [v24 addSubview_];
  v25 = &v24[qword_1ED94F358];
  swift_beginAccess();
  v26 = *(v25 + 6);
  v28 = *(v25 + 1);
  v27 = *(v25 + 2);
  *v43 = *v25;
  *&v43[16] = v28;
  *&v43[32] = v27;
  *&v43[48] = v26;
  v36 = *&v43[8];
  v37 = *&v43[24];
  v38 = *&v43[40];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v35 = *v43;
  v42 = 0;
  sub_1A2111C48(v43, v32);
  sub_1A22148B4(0, "init(frame:)", 12);
  updated = type metadata accessor for RoutePickerSessionsView.UpdateStateContext(0, v15, v21, v29);
  (*(*(updated - 8) + 8))(&v35, updated);

  return v24;
}

double sub_1A220FB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for RoutePickerSessionsView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v12.receiver = v4;
  v12.super_class = v6;
  v7 = objc_msgSendSuper2(&v12, sel_layoutSubviews);
  (*((*v5 & *v4) + 0x1C8))(v7);
  v8 = *(v4 + qword_1ED94F398);
  [v4 contentSize];
  [v8 setFrame_];
  return sub_1A221000C();
}

void sub_1A220FC74(void *a1)
{
  v4 = a1;
  sub_1A220FB7C(v4, v1, v2, v3);
}

CGFloat sub_1A220FCBC()
{
  [v0 contentInset];
  v2 = v1;
  v3 = [v0 contentInset];
  v5 = v4;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))(v3) > 1u)
  {
    [v0 bounds];

    return CGRectGetWidth(*&v7);
  }

  else
  {
    [v0 bounds];
    return CGRectGetWidth(v12) - (v2 + v5);
  }
}

double sub_1A220FD90()
{
  v1 = sub_1A220FCBC();
  [v0 contentSize];
  return v1;
}

uint64_t sub_1A220FDC8()
{
  v1 = sub_1A220FCBC();
  [v0 contentSize];
  v2 = *&v0[qword_1ED94F368];
  v6 = v0;
  v7 = v1;
  v8 = v3;
  return (*(*v2 + 120))(sub_1A2216490, &v5);
}

id sub_1A220FE60()
{
  v1 = v0;
  v2 = *&v0[qword_1ED94F368];
  v3 = *(*v2 + 96);
  v3(v21);
  sub_1A220FDC8();
  v4 = sub_1A220FCBC();
  v5 = (*(*v2 + 208))();
  v3(v19);
  v16 = v21[4];
  v17 = v21[5];
  LOBYTE(v18) = v22;
  v12 = v21[0];
  v13 = v21[1];
  v14 = v21[2];
  v15 = v21[3];
  sub_1A2112C30();
  v6 = sub_1A22E6568();
  v23[4] = v19[4];
  v23[5] = v19[5];
  v24 = v20;
  v23[0] = v19[0];
  v23[1] = v19[1];
  v23[2] = v19[2];
  v23[3] = v19[3];
  sub_1A2112BDC(v23);
  sub_1A2112BDC(v21);
  if ((v6 & 1) == 0 || ([v1 contentSize], v4 != v8) || v5 != v7)
  {
    [v1 setNeedsLayout];
  }

  result = [v1 contentSize];
  if (v11 != v4 || v10 != v5)
  {
    return [v1 setContentSize_];
  }

  return result;
}

double sub_1A221000C()
{
  sub_1A22103A8();
  swift_getTupleTypeMetadata2();
  sub_1A22E67D8();
  swift_getWitnessTable();
  sub_1A22E6718();

  return result;
}

id sub_1A221011C(void *a1, uint64_t a2)
{
  (*(**(v2 + qword_1ED94F368) + 136))(v10, a2);
  v4 = v13;
  v5 = v14;
  [a1 setBounds_];
  sub_1A22E6BC8();
  [a1 setCenter_];
  v7[0] = v11;
  v7[1] = v12;
  v8 = v4;
  v9 = v5;
  return [a1 setTransform_];
}

uint64_t sub_1A2210204()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))(v15);
  v1 = v15[0];
  v16 = v15[0];

  sub_1A2111C80(v15);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1A2213AC8(0, v2, 0);
    v4 = 0;
    v5 = v14;
    v13 = *(v1 + 16);
    v6 = (v1 + 40);
    while (v13 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_12;
      }

      v7 = v2;
      v9 = *(v6 - 1);
      v8 = *v6;
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);

      if (v11 >= v10 >> 1)
      {
        result = sub_1A2213AC8((v10 > 1), v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      v12 = (v14 + 24 * v11);
      v12[4] = v4;
      v12[5] = v9;
      v12[6] = v8;
      v6 += 2;
      ++v4;
      v2 = v7;
      if (v7 == v4)
      {
        sub_1A210D9B0(&v16, &qword_1EB088758, &qword_1A23105F0);
        return v5;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    sub_1A210D9B0(&v16, &qword_1EB088758, &qword_1A23105F0);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A22103A8()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v13 = sub_1A2210504();
  v11 = *((v2 & v1) + 0x50);
  v12 = *((v2 & v1) + 0x58);
  v9[2] = v11;
  v9[3] = v12;
  v9[4] = sub_1A2216314;
  v9[5] = &v10;
  swift_getTupleTypeMetadata3();
  v3 = sub_1A22E67D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1A210DD08(sub_1A2216344, v9, v3, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  return v7;
}

uint64_t sub_1A2210504()
{
  sub_1A2210204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088768, &qword_1A2308C20);
  swift_getTupleTypeMetadata3();
  sub_1A2112930(&qword_1ED94EAD8, &qword_1EB088768, &qword_1A2308C20, MEMORY[0x1E69E6328]);
  v0 = sub_1A22E6708();

  return v0;
}

double sub_1A2210658(char a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v12[0] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x118))();
  v3 = MEMORY[0x1E69E6158];
  v4 = MEMORY[0x1E69E6168];
  sub_1A22E64F8();
  swift_getWitnessTable();
  v5 = sub_1A22E6988();
  (*((*v2 & *v1) + 0xA8))(v12);
  v6 = v12[0];
  v13 = v12[0];

  sub_1A2111C80(v12);
  v11 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088758, &qword_1A23105F0);
  v8 = sub_1A2112930(&qword_1ED94EAE8, &qword_1EB088758, &qword_1A23105F0, MEMORY[0x1E69E6328]);
  v9 = MEMORY[0x1A58DAB80](&v11, v5, v3, v7, v4, v8);
  sub_1A210D9B0(&v13, &qword_1EB088758, &qword_1A23105F0);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088790, &qword_1A2308C48);
  sub_1A2112930(&qword_1ED94EAB8, &qword_1EB088790, &qword_1A2308C48, MEMORY[0x1E69E6508]);
  sub_1A22E6718();

  return result;
}

void sub_1A2210894(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  swift_beginAccess();
  v8 = *((v6 & v5) + 0x50);
  sub_1A22E6508();
  sub_1A22E64E8();
  swift_endAccess();
  if (v16)
  {
    v9 = swift_allocObject();
    v9[2] = v8;
    v10 = *(v7 + 88);
    v9[3] = v10;
    v9[4] = v16;
    v11 = v16;
    [v11 setZPosition_];

    if (a3)
    {
      sub_1A220C0E8(0, v12);
      sub_1A211A390(v17);
      v13 = swift_allocObject();
      v13[2] = v8;
      v13[3] = v10;
      v13[4] = v11;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A22160F4;
      *(v14 + 24) = v9;
      v15 = v11;

      sub_1A21179EC(v17, sub_1A2216104, v13, sub_1A22154EC, v14);

      sub_1A2116928(v17);
    }

    else
    {
      [v11 removeFromSuperview];
    }
  }
}

void sub_1A2210AB8(uint64_t *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = sub_1A220E508();
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v15 = sub_1A210E724(v7);

    v72[0] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x118))(v16);
    v17 = MEMORY[0x1E69E6158];
    v18 = MEMORY[0x1E69E6168];
    v19 = sub_1A22E64F8();
    WitnessTable = swift_getWitnessTable();
    v21 = MEMORY[0x1A58DAB80](v72, v15, v17, v19, v18, WitnessTable);

    if (!*(v21 + 16))
    {

      return;
    }

    v22 = v21 + 56;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v21 + 56);
    v26 = (v23 + 63) >> 6;

    v5 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v67 = v21;
    if (!v25)
    {
      while (1)
      {
LABEL_25:
        v31 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_70;
        }

        if (v31 >= v26)
        {
          break;
        }

        v25 = *(v22 + 8 * v31);
        ++v5;
        if (v25)
        {
          v5 = v31;
          goto LABEL_29;
        }
      }

      v72[0] = v63;

      sub_1A2213C30(v72);

      v68 = v72[0];
      v43 = *a1;
      if (*a1)
      {
      }

      else
      {
        v43 = MEMORY[0x1E69E7CC0];
      }

      (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))(&v69, v42);
      v44 = v69;
      v71[0] = v69;

      sub_1A2111C80(&v69);
      v5 = *(v43 + 16);
      if (v5)
      {
        v45 = 0;
        v46 = (v43 + 40);
        v47 = (v44 + 40);
        do
        {
          v48 = *(v44 + 16);
          if (v45 == v48)
          {
            break;
          }

          if (v45 >= v48)
          {
            goto LABEL_72;
          }

          v49 = *(v46 - 1) == *(v47 - 1) && *v46 == *v47;
          if (!v49 && (sub_1A22E71E8() & 1) == 0)
          {
            v66 = 1;
            goto LABEL_56;
          }

          ++v45;
          v46 += 2;
          v47 += 2;
        }

        while (v5 != v45);
      }

      v66 = 0;
LABEL_56:

      sub_1A210D9B0(v71, &qword_1EB088758, &qword_1A23105F0);
      v64 = *(v68 + 16);
      if (!v64)
      {
LABEL_68:

        sub_1A220FDC8();
        v72[0] = sub_1A22103A8();
        v62 = MEMORY[0x1EEE9AC00](v72[0]);
        MEMORY[0x1EEE9AC00](v62);
        swift_getTupleTypeMetadata2();
        sub_1A22E67D8();
        swift_getWitnessTable();
        sub_1A22E6718();

        return;
      }

      v50 = 0;
      v51 = (v68 + 48);
      while (1)
      {
        if (v50 >= *(v68 + 16))
        {
          goto LABEL_71;
        }

        v55 = *(v51 - 1);
        v54 = *v51;
        v56 = *(v51 - 2);
        v57 = *v2;
        v58 = *MEMORY[0x1E69E7D40];

        v59 = *((v58 & v57) + 0xA8);
        v60 = swift_bridgeObjectRetain_n();
        v59(v72, v60);
        v5 = v72[1];
        v61 = v72[2];

        sub_1A2111C80(v72);
        if (!v61)
        {
          break;
        }

        if (v5 == v55 && v61 == v54)
        {

          v52 = 0.0;
        }

        else
        {
          v5 = sub_1A22E71E8();

          v52 = 0.0;
          if ((v5 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

LABEL_59:
        ++v50;
        v53 = sub_1A2211448(v55, v54, v56, v66, v52);
        v71[5] = v54;
        v71[6] = v53;
        v71[4] = v55;
        swift_beginAccess();
        sub_1A22E6508();
        sub_1A22E6528();
        swift_endAccess();

        v51 += 3;
        if (v64 == v50)
        {
          goto LABEL_68;
        }
      }

LABEL_67:
      v52 = v50 * 0.07 + 0.03;
      goto LABEL_59;
    }

    while (1)
    {
LABEL_29:
      while (1)
      {
        v32 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v33 = (*(v21 + 48) + ((v5 << 10) | (16 * v32)));
        v35 = *v33;
        v34 = v33[1];

        (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))(v72, v36);
        v37 = v72[0];
        v69 = v72[0];

        sub_1A2111C80(v72);
        v38 = *(v37 + 16);
        if (v38)
        {
          break;
        }

LABEL_37:
        sub_1A210D9B0(&v69, &qword_1EB088758, &qword_1A23105F0);

LABEL_38:
        v21 = v67;
        if (!v25)
        {
          goto LABEL_25;
        }
      }

      v39 = 0;
      v40 = (v37 + 40);
      while (1)
      {
        v41 = *(v40 - 1) == v35 && *v40 == v34;
        if (v41 || (sub_1A22E71E8() & 1) != 0)
        {
          break;
        }

        ++v39;
        v40 += 2;
        if (v38 == v39)
        {
          goto LABEL_37;
        }
      }

      sub_1A210D9B0(&v69, &qword_1EB088758, &qword_1A23105F0);

      v21 = v67;
      if (v34)
      {
        v27 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1A2212FA8(0, v63[2] + 1, 1, v63);
        }

        v63 = v27;
        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          v63 = sub_1A2212FA8((v28 > 1), v29 + 1, 1, v27);
        }

        v63[2] = v29 + 1;
        v30 = &v63[3 * v29];
        v30[4] = v39;
        v30[5] = v35;
        v30[6] = v34;
        goto LABEL_38;
      }

      if (!v25)
      {
        goto LABEL_25;
      }
    }
  }

  v5 = v4;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E6158];
  v9 = v4 & ~(v4 >> 63);
  while (v9 != v6)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v72, isUniquelyReferenced_nonNull_native);

    sub_1A2111C80(v72);
    sub_1A225D76C(v6, v8, &v69);

    v11 = v70;
    if (v70)
    {
      v12 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1A22130F0(0, *(v7 + 16) + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1A22130F0((v13 > 1), v14 + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

      *(v7 + 16) = v14 + 1;
      v10 = v7 + 16 * v14;
      *(v10 + 32) = v12;
      *(v10 + 40) = v11;
    }

    if (v5 == ++v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);

  __break(1u);
}

id sub_1A2211448(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v11 = *MEMORY[0x1E69E7D40] & *v5;
  if ((*(v11 + 0x180))())
  {
    v47 = v12;
    ObjectType = swift_getObjectType();
    *&v50.a = (*(v47 + 32))(v5, a1, a2);
    *&v51.a = a1;
    *&v51.b = a2;
    swift_beginAccess();
    v13 = *(v11 + 80);
    sub_1A22E6508();

    v14 = *&v50.a;
    sub_1A22E6528();
    swift_endAccess();
    v45 = a3;
    v48 = a1;
    v15 = sub_1A2214708(a3, a1, a2);
    v16 = *(v11 + 88);
    v17 = (*(v16 + 48))(v15 & 0x100000101 | ((v15 >> 40 != 0) << 40), v13, v16);
    v18 = MEMORY[0x1E69E7D40];
    if (!(*((*MEMORY[0x1E69E7D40] & *v5) + 0x198))(v17))
    {
      swift_unknownObjectRetain();
    }

    (*(v16 + 24))();
    v19 = *(v5 + qword_1ED94F398);
    v20 = v14;
    v21 = [v19 addSubview_];
    v22 = *((*v18 & *v6) + 0xC8);
    if (v22(v21) == 2)
    {
      v23 = xmmword_1A2308710;
      v24 = xmmword_1A2308720;
      v25 = 0uLL;
LABEL_16:
      v33 = vdupq_n_s64(v15);
      v44 = vshlq_u64(v33, xmmword_1A2308730);
      v43 = vshlq_u64(v33, xmmword_1A2308740);
      *&v52.a = v24;
      *&v52.c = v23;
      *&v52.tx = v25;
      [v20 setTransform_];

      sub_1A220C0E8(0, v34);
      sub_1A229C304(v49);
      sub_1A211A328(&v50, a5);
      sub_1A2116928(v49);
      v35 = swift_allocObject();
      *(v35 + 16) = v13;
      *(v35 + 24) = v16;
      *(v35 + 32) = v20;
      *(v35 + 40) = v15 & 1;
      v36 = vand_s8(vmovn_s32(vuzp1q_s32(v43, v44)), 0x1000100010001);
      *(v35 + 41) = vuzp1_s8(v36, v36).u32[0];
      *(v35 + 45) = v15 >> 40 != 0;
      *(v35 + 46) = 0;
      v37 = v20;
      sub_1A21179EC(&v50.a, sub_1A2215FB8, v35, 0, 0);

      sub_1A2116928(&v50);
      sub_1A229C3D8(&v51);
      sub_1A211A328(&v52, a5);
      sub_1A2116928(&v51);
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = v6;
      v38[4] = v45;
      v39 = v37;
      v40 = v6;
      sub_1A21179EC(&v52.a, sub_1A2216070, v38, 0, 0);

      sub_1A2116928(&v52);
      (*(v47 + 80))(v40, v39, v48, a2, ObjectType);
      [v40 setNeedsLayout];
      swift_unknownObjectRelease();
      return v39;
    }

    if (a4)
    {
      CGAffineTransformMakeScale(&v52, 0.8, 0.8);
      v24 = *&v52.a;
      v23 = *&v52.c;
      v25 = *&v52.tx;
      goto LABEL_16;
    }

    (*((*MEMORY[0x1E69E7D40] & *v6) + 0xA8))(&v52);
    b = v52.b;
    c = v52.c;

    sub_1A2111C80(&v52);
    if (c == 0.0)
    {
      goto LABEL_14;
    }

    if (*&b == v48 && *&c == a2)
    {
    }

    else
    {
      v29 = sub_1A22E71E8();

      if ((v29 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (!v22(v28))
    {
      v30 = 1.3;
      v31 = 0.8;
      v32 = 200.0;
      goto LABEL_15;
    }

LABEL_14:
    v30 = 1.15;
    v31 = 0.7;
    v32 = 50.0;
LABEL_15:
    CGAffineTransformMakeTranslation(&v51, 0.0, v32);
    CGAffineTransformScale(&v50, &v51, v31, v30);
    v24 = *&v50.a;
    v23 = *&v50.c;
    v25 = *&v50.tx;
    goto LABEL_16;
  }

  result = sub_1A22E7028();
  __break(1u);
  return result;
}

void sub_1A2211AB4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1A2210204();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v2 + 48);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v6 - 2);

      sub_1A2211B78(v9, v8, v7, v0, ObjectType);

      v6 += 3;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_1A2211B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29[1] = a5;
  v30 = a1;
  v7 = *a4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *a4;
  v10 = sub_1A22E6248();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 280);

  v12(v13);
  v33[0] = a2;
  v33[1] = a3;
  v14 = *((v8 & v7) + 0x50);
  sub_1A22E6518();

  v15 = v34;
  if (v34)
  {
    sub_1A2212B04(a2, a3);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v14;
    v18 = *(v9 + 88);
    v17[3] = v18;
    v17[4] = v16;
    v17[5] = a2;
    v17[6] = a3;
    v32 = a2;
    v19 = v30;
    v17[7] = v30;
    v20 = *(v18 + 72);

    v20(sub_1A2216A1C, v17, v14, v18);

    sub_1A220E034(v15, v19, v32, a3, "updateSessionViews()", 20, 2u);
  }

  else
  {
    v21 = sub_1A2104EA0();
    (*(v32 + 16))(v31, v21, v10);

    v22 = sub_1A22E6238();
    v23 = sub_1A22E6A88();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v24 = 136315394;
      v26 = sub_1A22E7388();
      v28 = sub_1A2103450(v26, v27, v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1A2103450(a2, a3, v33);
      _os_log_impl(&dword_1A20FC000, v22, v23, "[%s] SessionView was not created for id:%s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v25, -1, -1);
      MEMORY[0x1A58DCD00](v24, -1, -1);
    }

    (*(v32 + 8))(v31, v10);
  }
}

void sub_1A2211F24(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1ED94F378;
  swift_beginAccess();

  v10 = sub_1A2112E98(v9, a1);

  if ((v10 & 1) == 0)
  {
    v11 = sub_1A2104EA0();
    (*(v5 + 16))(v7, v11, v4);
    v12 = v2;

    v13 = sub_1A22E6238();
    v14 = sub_1A22E6A58();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v40 = v4;
      v16 = v15;
      v39 = swift_slowAlloc();
      v41 = v39;
      *v16 = 136315650;
      v17 = sub_1A22E7388();
      v19 = sub_1A2103450(v17, v18, &v41);
      v38 = v14;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;

      v21 = sub_1A22E6938();
      v37 = v13;
      v22 = v8;
      v24 = v23;

      v25 = sub_1A2103450(v21, v24, &v41);
      v8 = v22;

      *(v16 + 14) = v25;
      *(v16 + 22) = 2080;
      v26 = sub_1A22E6938();
      v28 = sub_1A2103450(v26, v27, &v41);

      *(v16 + 24) = v28;
      v29 = v37;
      _os_log_impl(&dword_1A20FC000, v37, v38, "[%s] Set expandedSessionIdentifiers:%s old:%s", v16, 0x20u);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v30, -1, -1);
      MEMORY[0x1A58DCD00](v16, -1, -1);

      v31 = (*(v5 + 8))(v7, v40);
    }

    else
    {

      v31 = (*(v5 + 8))(v7, v4);
    }

    if ((*((*MEMORY[0x1E69E7D40] & *v12) + 0x180))(v31))
    {
      v33 = v32;
      ObjectType = swift_getObjectType();
      v35 = *&v2[v8];
      v36 = *(v33 + 48);

      v36(v12, v35, ObjectType, v33);

      swift_unknownObjectRelease();
    }
  }
}

double sub_1A22122E0(uint64_t a1)
{
  v3 = qword_1ED94F378;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1A2211F24(v4);

  return result;
}

double sub_1A2212344()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  sub_1A22E6508();
  swift_getWitnessTable();
  v1 = sub_1A22E6708();

  v2 = sub_1A210E724(v1);

  return sub_1A22122E0(v2);
}

double sub_1A22124A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x118);
  v8 = swift_bridgeObjectRetain_n();
  v7(v8);
  sub_1A22E6518();

  if (v15)
  {
    sub_1A2210894(a3, a4, 1);
    swift_beginAccess();
    sub_1A22E6508();

    v9 = v15;
    sub_1A22E6528();
    sub_1A22E6528();
    v10 = swift_endAccess();
    if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x180))(v10))
    {
      v12 = v11;
      ObjectType = swift_getObjectType();
      (*(v12 + 40))(v4, v9, a3, a4, ObjectType, v12);
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1A22126E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_1A22E6248();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A2104EA0();
  v15 = *(v11 + 16);
  v45 = v10;
  v15(v13, v14, v10);

  v16 = sub_1A22E6238();
  v17 = sub_1A22E6A58();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = a1;
    v19 = v18;
    v43 = swift_slowAlloc();
    v46[0] = v43;
    *v19 = 136315650;
    v20 = sub_1A22E7388();
    v22 = sub_1A2103450(v20, v21, v46);
    v42 = a4;
    v23 = a2;
    v24 = a3;
    v25 = v22;

    *(v19 + 4) = v25;
    a3 = v24;
    a2 = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1A2103450(v23, a3, v46);
    *(v19 + 22) = 2048;
    v26 = v42;
    *(v19 + 24) = v42;
    _os_log_impl(&dword_1A20FC000, v16, v17, "[%s] Did select SessionView with id:%s at index:%ld", v19, 0x20u);
    v27 = v43;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v27, -1, -1);
    v28 = v19;
    a1 = v44;
    MEMORY[0x1A58DCD00](v28, -1, -1);

    v29 = (*(v11 + 8))(v13, v45);
    v30 = v26;
  }

  else
  {

    v29 = (*(v11 + 8))(v13, v45);
    v30 = a4;
  }

  v31 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xA8))(v46, v29);
  v33 = v46[1];
  v32 = v46[2];

  sub_1A2111C80(v46);
  if (v32)
  {
    if (v33 == a2 && v32 == a3)
    {
      v34 = 1;
    }

    else
    {
      v34 = sub_1A22E71E8();
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = (*(**(v5 + qword_1ED94F368) + 144))(v30);
  if (v34)
  {
    if ((*((*v31 & *v5) + 0xC8))(v35) == 1)
    {
      v36 = 0;
      return sub_1A220D894(v36, 1, 1);
    }
  }

  else if (v35)
  {
    v36 = 1;
    return sub_1A220D894(v36, 1, 1);
  }

  result = (*((*v31 & *v5) + 0x180))();
  if (result)
  {
    v39 = v38;
    ObjectType = swift_getObjectType();
    (*(v39 + 56))(v5, a1, a2, a3, ObjectType, v39);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A2212B04(uint64_t a1, uint64_t a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);

  v3(v4);
  sub_1A22E6518();

  if (v5)
  {
    [*(v2 + qword_1ED94F398) sendSubviewToBack_];
  }
}

id sub_1A2212C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RoutePickerSessionsView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_1A2212C70(uint64_t a1)
{
  v2 = *(a1 + qword_1ED94F358 + 24);
  v3 = *(a1 + qword_1ED94F358 + 32);
  v4 = *(a1 + qword_1ED94F358 + 40);
  v5 = *(a1 + qword_1ED94F358 + 48);

  sub_1A221467C(v2, v3, v4, v5);

  sub_1A210DA3C(a1 + qword_1ED94F390);
  sub_1A210DA3C(a1 + qword_1ED94F380);

  return result;
}

uint64_t sub_1A2212D48(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1A220C0E8(0, a2);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v5;

  v12 = v5;
  sub_1A21179EC(a1, sub_1A2215434, v11, a4, a5);
}

uint64_t sub_1A2212E08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1A229C070(v9);
  sub_1A2212D48(v9, a1, a2, a3, a4);
  return sub_1A2116928(v9);
}

char *sub_1A2212EA4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088788, &qword_1A2308C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1A2212FA8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088770, &qword_1A2308C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088778, &unk_1A2308C30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A22130F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088780, &unk_1A230B150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A22131FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB08A0E0, &unk_1A2308C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A22132F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0899B0, &qword_1A230A3F0);
  result = sub_1A22E6E48();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1A22E72A8();
      sub_1A22E6658();
      result = sub_1A22E72F8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *sub_1A2213550()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0899B0, &qword_1A230A3F0);
  v2 = *v0;
  v3 = sub_1A22E6E38();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A22136AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0899B0, &qword_1A230A3F0);
  result = sub_1A22E6E48();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A22E72A8();

      sub_1A22E6658();
      result = sub_1A22E72F8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1A22138E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A22E6538();

  return sub_1A2213940(a1, v6, a2, a3);
}

unint64_t sub_1A2213940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1A22E6568();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void *sub_1A2213AC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A2213AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A2213AE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088770, &qword_1A2308C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088778, &unk_1A2308C30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A2213C30(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A22145B4(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  v4 = sub_1A22E71C8();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 4];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          *(v13 + 1) = *(v13 - 1);
          v13[4] = v13[1];
          *(v13 - 1) = v11;
          *v13 = v14;
          v13[1] = v15;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088778, &unk_1A2308C30);
      v7 = sub_1A22E6788();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = (v7 + 32);
    v17[1] = v6;
    sub_1A2213D9C(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1A2213D9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1A22145A0(v7);
    }

    v85 = v7 + 16;
    v86 = *(v7 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1A2214364((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A2212EA4(0, *(v7 + 2) + 1, 1, v7);
    }

    v38 = *(v7 + 2);
    v37 = *(v7 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v7 = sub_1A2212EA4((v37 > 1), v38 + 1, 1, v7);
    }

    *(v7 + 2) = v39;
    v40 = v7 + 32;
    v41 = &v7[16 * v38 + 32];
    *v41 = v8;
    *(v41 + 1) = v6;
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 4);
          v44 = *(v7 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[16 * v42];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[16 * v42 - 16];
        v81 = *v80;
        v82 = &v40[16 * v42];
        v83 = *(v82 + 1);
        sub_1A2214364((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *(v7 + 2);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        memmove(&v40[16 * v42], v82 + 16, 16 * (v84 - 1 - v42));
        *(v7 + 2) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[16 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[16 * v42];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1A2214364(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

void sub_1A2214638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_1A221467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A2214708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 16843008;
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xC8))();
  if (v9)
  {
    if (v9 == 1)
    {
      v7 = 16843009;
    }
  }

  else
  {
    (*((*v8 & *v3) + 0xA8))(v19);
    v11 = v19[1];
    v10 = v19[2];

    sub_1A2111C80(v19);
    if (!v10)
    {
      goto LABEL_10;
    }

    if (v11 == a2 && v10 == a3)
    {

      goto LABEL_11;
    }

    v12 = sub_1A22E71E8();

    if ((v12 & 1) == 0)
    {
LABEL_10:
      v7 = 16843009;
    }
  }

LABEL_11:
  v13 = *(v3 + qword_1ED94F368);
  v14 = (*(*v13 + 168))(a1);
  v15 = (*(*v13 + 144))(a1);
  v16 = 0x10000000000;
  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 0x100000000;
  if ((v14 & 1) == 0)
  {
    v17 = 0;
  }

  return v7 | v17 | v16;
}

uint64_t sub_1A22148B4(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  LODWORD(v5) = a1;
  swift_getObjectType();
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v11);
  v12 = sub_1A22E6238();
  v13 = sub_1A22E6A68();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v44 = v5;
    v5 = v14;
    v15 = swift_slowAlloc();
    v45 = v15;
    *v5 = 136315650;
    v16 = sub_1A22E7388();
    v18 = sub_1A2103450(v16, v17, &v45);
    v41 = v8;
    v19 = v7;
    v20 = v18;

    *(v5 + 4) = v20;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v44 & 1;
    *(v5 + 18) = 2080;
    v21 = sub_1A22E6E98();
    v23 = sub_1A2103450(v21, v22, &v45);

    *(v5 + 20) = v23;
    v7 = v19;
    _os_log_impl(&dword_1A20FC000, v12, v13, "[%s] SHMR updateState animated: %{BOOL}d reason: %s", v5, 0x1Cu);
    swift_arrayDestroy();
    v24 = v15;
    v6 = MEMORY[0x1E69E7D40];
    MEMORY[0x1A58DCD00](v24, -1, -1);
    v25 = v5;
    LOBYTE(v5) = v44;
    MEMORY[0x1A58DCD00](v25, -1, -1);

    (*(v9 + 8))(v11, v41);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v4;
  if (v5)
  {
    v27 = *((*v6 & *v4) + 0x198);
    v28 = v4;
    if (v27())
    {
      v31 = v29;
      ObjectType = swift_getObjectType();
      sub_1A22CD1DC(sub_1A2216A14, v26, ObjectType, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = type metadata accessor for RoutePickerSessionsView(0, *(v7 + 80), *(v7 + 88), v30);
      sub_1A22CD1DC(sub_1A2216A14, v26, v34, &off_1F143C568);
    }
  }

  else
  {
    v33 = v4;
    [v33 setNeedsLayout];
  }

  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], 0);
  if ((*((*v6 & *v4) + 0x180))())
  {
    v36 = v35;
    v37 = swift_getObjectType();
    v38 = (*((*v6 & *v4) + 0xC8))();
    (*(v36 + 64))(v4, v38, v37, v36);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A2214CF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A2214D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1A22E67B8())
  {
    sub_1A22E7088();
    v13 = sub_1A22E7078();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1A22E67B8();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A22E6798())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A22E6EA8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A22138E4(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_1A221504C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x118);

  v6(v7);
  sub_1A22E6518();

  if (v8)
  {
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v8;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1A2215198()
{
  v3 = *((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x118);

  v3(v4);
  sub_1A22E6518();
}

void sub_1A2215278()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = v1 + qword_1ED94F358;
  *v4 = MEMORY[0x1E69E7CC0];
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v1 + qword_1ED94F370) = 0;
  v5 = qword_1ED94F398;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v6 = qword_1ED94F388;
  v7 = *((v3 & v2) + 0x50);
  v8 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v9 = sub_1A22E6778();
  v10 = sub_1A2214D60(v9, v8, v7, MEMORY[0x1E69E6168]);

  *(v1 + v6) = v10;
  *(v1 + qword_1ED94F360) = 0;
  *(v1 + qword_1ED94F390 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1ED94F380 + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = qword_1ED94F368;
  type metadata accessor for RoutePickerSessionsViewLayout(0, v12);
  sub_1A22549D4(v13);
  *(v1 + v11) = sub_1A2253A90(v13);
  *(v1 + qword_1ED94F378) = MEMORY[0x1E69E7CD0];
  sub_1A22E7028();
  __break(1u);
}

id sub_1A2215434()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

id sub_1A2215490()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 contentInset];

  return [v1 setContentInset_];
}

unint64_t sub_1A2215518()
{
  result = qword_1EB088760;
  if (!qword_1EB088760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088760);
  }

  return result;
}

unint64_t sub_1A2215570()
{
  result = qword_1EB088E50;
  if (!qword_1EB088E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088E50);
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RoutePickerSessionViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutePickerSessionViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoutePickerSessionViewState.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutePickerSessionViewState.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoutePickerSessionsViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutePickerSessionsViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13MediaControls19RoutePickerSnapshotV10TransitionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A2215B7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A2215BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A2215CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13MediaControls28RoutePickerSessionsViewModelVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1A2215D2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A2215D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A2215DD0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = MEMORY[0x1E69E7D40];
  if (((*(*((*MEMORY[0x1E69E7D40] & *v5) + 0x58) + 40))(*((*MEMORY[0x1E69E7D40] & *v5) + 0x50)) & 1) == 0)
  {
    v7 = *((*v6 & *v5) + 0xC8);
    if (!v7())
    {
LABEL_9:

      return a1;
    }

    if (v7() == 2)
    {
      (*((*v6 & *v5) + 0xA8))(v12);
      v9 = v12[1];
      v8 = v12[2];

      sub_1A2111C80(v12);
      if (v8)
      {
        if (v9 == a1 && v8 == a2)
        {

          goto LABEL_9;
        }

        v10 = sub_1A22E71E8();

        if (v10)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1A2215F6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A2215FB8()
{
  v1 = 0x1000000000000;
  if (!*(v0 + 46))
  {
    v1 = 0;
  }

  v2 = 0x10000000000;
  if (!*(v0 + 45))
  {
    v2 = 0;
  }

  v3 = 0x100000000;
  if (!*(v0 + 44))
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!*(v0 + 43))
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (!*(v0 + 42))
  {
    v5 = 0;
  }

  v6 = 256;
  if (!*(v0 + 41))
  {
    v6 = 0;
  }

  return (*(*(v0 + 24) + 48))(v6 | *(v0 + 40) | v5 | v4 | v3 | v2 | v1, *(v0 + 16));
}

id sub_1A2216070()
{
  v1 = v0[2];
  (*(**(v0[3] + qword_1ED94F368) + 200))(v4, v0[4]);
  v3[0] = v4[0];
  v3[1] = v4[1];
  v3[2] = v4[2];
  return [v1 setTransform_];
}

id sub_1A2216104()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (*(v2 + 40))(v1, v2);
  (*(v2 + 48))(v4 & 0x1010100000101, v1, v2);
  CGAffineTransformMakeScale(&v6, 0.8, 0.8);
  return [v3 setTransform_];
}

uint64_t sub_1A22161B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *((*MEMORY[0x1E69E7D40] & **(v3 + 16)) + 0x118);

  v5(v6);
  sub_1A22E6518();

  if (!v8)
  {
    return 0;
  }

  return a1;
}

uint64_t sub_1A22162C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1A2216344@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A2216390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x170))(a3, a2);
  v8 = (*(*((v6 & v5) + 0x58) + 56))(v11, *((v6 & v5) + 0x50));
  *(v9 + 1) = v7 & 1;
  return v8(v11, 0);
}

void sub_1A2216490(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v9 = (*MEMORY[0x1E69E7D40] & *v4) + 168;
  v8(&v30);
  v34[0] = v31;
  sub_1A2214CF8(v34, v32, &qword_1EB088750, &unk_1A2308760);
  sub_1A2111C80(&v30);
  sub_1A21128C0(v34, a1);
  v10 = [v4 bounds];
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 24) = (*((*v7 & *v4) + 0xC8))(v10);
  v8(v32);
  v13 = v32[0];
  v33 = v32[0];

  sub_1A2111C80(v32);
  v26[0] = v13;
  v28 = v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088758, &qword_1A23105F0);
  v15 = *(v9 - 88);
  sub_1A22E6D68();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1A2112930(&qword_1ED94EAE0, &qword_1EB088758, &qword_1A23105F0, MEMORY[0x1E69E6340]);
  v19 = sub_1A210DD08(sub_1A2216744, v27, v14, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  sub_1A210D9B0(&v33, &qword_1EB088758, &qword_1A23105F0);
  v29 = v19;
  v20 = *(v9 - 80);
  v26[2] = v15;
  v26[3] = v20;
  v26[4] = v5;
  v26[5] = v6;
  v25[2] = v15;
  v25[3] = v20;
  v25[4] = sub_1A2216834;
  v25[5] = v26;
  v21 = sub_1A22E67D8();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1A210DD08(sub_1A21129C8, v25, v21, &type metadata for RoutePickerSessionsViewLayout.SessionModel, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);

  *(a1 + 16) = v24;
}

double sub_1A2216744@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = **(v2 + 16);
  v4 = *MEMORY[0x1E69E7D40];
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  v6 = *((v4 & v3) + 0x118);
  v7 = swift_bridgeObjectRetain_n();
  v6(v7);
  sub_1A22E6518();

  return result;
}

void sub_1A2216834(int a1, uint64_t a2, id a3)
{
  if (a3)
  {
    [a3 sizeThatFits_];
  }

  nullsub_1();
}

uint64_t sub_1A2216924()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))();
  return (*(*((v3 & v2) + 0x58) + 24))(v4);
}

void sub_1A2216A1C(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1A22126E0(a1, v3, v4, v5);
  }
}

id sub_1A2216A9C(uint64_t a1, void *a2)
{
  sub_1A221011C(a2, a1);

  return [a2 layoutIfNeeded];
}

unint64_t sub_1A2216B24()
{
  result = qword_1EB088798;
  if (!qword_1EB088798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088798);
  }

  return result;
}

uint64_t sub_1A2216BFC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A2216C68(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

uint64_t sub_1A2216D10(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_presenter;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  if (!v6)
  {
    if (!a1)
    {
      return result;
    }

LABEL_6:
    (*(*a1 + 184))(0, 0);
    v6 = *(v2 + v4);
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v6 == a1)
  {
    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = *(*v6 + 184);

  v8 = v2;
  v7(v2, &off_1F143CA68);

  v9 = *(v2 + v4);
  if (v9)
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x248);

    v12 = (v10(v11) >> 8) & 1;
    (*(*v9 + 336))(v12);

    v13 = *(v2 + v4);
    v14 = *(v8 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView);
    if (v13)
    {
      v15 = *(*v13 + 200);

      v17 = v15(v16);
      v19 = v18;

      v20 = v19;
      v21 = v17;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
  v20 = 0;
  v14 = *(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView);
LABEL_12:
  v22 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x138))(v21, v20);
  v23 = *(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);
  v24 = *(v2 + v4);
  if (v24)
  {
    v25 = *(*v24 + 200);

    v27 = v25(v26);
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  (*((*v22 & *v23) + 0xE8))(v27, v29);
  v30 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView;
  v31 = *(*(*(v14 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView) + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView);
  v32 = *(v2 + v4);
  if (v32)
  {
    v33 = *(*v32 + 232);
    v34 = v31;

    v36 = v33(v35);
  }

  else
  {
    v37 = v31;
    v36 = 0;
  }

  (*((*v22 & *v31) + 0xB8))(v36);

  v38 = *(*(*(v14 + v30) + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView) + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView);
  v39 = *(v2 + v4);
  if (v39)
  {
    v40 = *(v39 + 32);
  }

  else
  {
    v40 = 0;
  }

  v41 = *((*v22 & *v38) + 0x70);
  v42 = v38;
  v41(v40);

  v43 = *(v2 + v4);
  if (v43)
  {
    v44 = *(*v43 + 208);

    v46 = v44(v45);
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter);
  *(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter) = v46;
  v48 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter;
  v49 = *(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter);
  v50 = v46;
  if (v49)
  {
    if (v49 != v47)
    {
      if (!v47)
      {
LABEL_30:
        v52 = *((*v22 & *v49) + 0x88);
        v53 = v49;
        v54 = v2;
        v52(v2, &off_1F143CA88);

LABEL_31:
        v55 = (*((*v22 & *v2) + 0x130))(v51);
        if (sub_1A229DB6C(v55))
        {
          sub_1A2219A78();
          v56 = *(*(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView) + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
          v57 = *(v2 + v48);
          if (v57)
          {
            v58 = *((*v22 & *v57) + 0xA0);
            v59 = v56;
            v60 = v57;
            v57 = v58();
          }

          else
          {
            v61 = v56;
          }

          (*((*v22 & *v56) + 0xC8))(v57);
        }

        goto LABEL_36;
      }

LABEL_29:
      v51 = (*((*v22 & *v47) + 0x88))(0, 0);
      v49 = *(v2 + v48);
      if (!v49)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if (v47)
  {
    goto LABEL_29;
  }

LABEL_36:

  result = (*((*v22 & *v2) + 0x248))();
  if ((result & 0x100000000) != 0)
  {
    sub_1A21261E0();
    sub_1A22196FC();
    return sub_1A2219278();
  }

  return result;
}

uint64_t sub_1A221738C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_presenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_1A2216D10(v4);
}

void (*sub_1A2217400(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_presenter;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1A221749C;
}

void sub_1A221749C(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_1A2216D10(v6);
  }

  else
  {
    sub_1A2216D10(v6);
  }

  free(v3);
}

id sub_1A2217590(uint64_t (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

void sub_1A22175D4(char a1)
{
  v2 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_moduleLayout;
  swift_beginAccess();
  sub_1A221B9F4();
  if ((sub_1A22E6568() & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView);
    v4 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x150))(*(v1 + v2));
    sub_1A2219A78();
    v5 = *(v3 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
    v6 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter);
    if (v6)
    {
      v7 = *((*v4 & *v6) + 0xA0);
      v8 = v5;
      v9 = v6;
      v6 = v7();
    }

    else
    {
      v10 = v5;
    }

    (*((*v4 & *v5) + 0xC8))(v6);
  }
}

void (*sub_1A2217774(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_moduleLayout;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2217808;
}

void sub_1A2217808(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_1A22175D4(v5);

  free(v1);
}

uint64_t sub_1A2217850(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_layout;
  swift_beginAccess();
  LOBYTE(v35[0]) = *(v2 + v4);
  v36 = a1;
  sub_1A221B9A0();
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_backgroundView)) + 0x88))(*(v2 + v4));
    v7 = (*((*v6 & **(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView)) + 0x168))(*(v2 + v4));
    v8 = *(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);
    v9 = (*((*v6 & *v8) + 0x148))(v7);
    v10 = *((*v6 & *v2) + 0x130);
    v11 = v10(v9);
    v12 = sub_1A229D9D8(v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = *((*v6 & *v8) + 0xA0);
    v20 = v19(v35);
    *v21 = v12;
    *(v21 + 1) = v14;
    *(v21 + 2) = v16;
    *(v21 + 3) = v18;
    v22 = v20(v35, 0);
    v23 = v10(v22);
    v24 = v23;
    v25 = (*((*v6 & *v2) + 0x178))(v23);
    v26 = sub_1A229DA04(v24, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v19(v35);
    v34[4] = v26;
    *(v34 + 5) = v28;
    *(v34 + 6) = v30;
    *(v34 + 7) = v32;
    v33(v35, 0);
    sub_1A2219278();
    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1A2217B64(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1A2217C10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView)) + 0x180))(a1);
}

uint64_t (*sub_1A2217CCC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2217D54;
}

void sub_1A2217D54(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView)) + 0x180);

    v4(v5);
  }

  free(v3);
}

void sub_1A2217DF4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_contentMetrics;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = a1;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    v6 = 0;
    a1 = 0;
    goto LABEL_9;
  }

  if (!v5)
  {
    v6 = a1;
LABEL_9:
    v9 = *((*MEMORY[0x1E69E7D40] & **&v2[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView]) + 0x198);
    v10 = a1;
    v9(a1);
    [v2 setNeedsLayout];

    goto LABEL_10;
  }

  sub_1A22E6B98();
  v6 = a1;
  v7 = v5;
  v8 = sub_1A22E6C88();

  if ((v8 & 1) == 0)
  {
    a1 = *&v2[v4];
    goto LABEL_9;
  }

  v5 = v7;
LABEL_10:
}

void (*sub_1A2217F30(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_contentMetrics;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A2217FCC;
}

void sub_1A2217FCC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_1A22E6B98();
        v5 = v3;
        v9 = v8;
        v10 = sub_1A22E6C88();

        if (v10)
        {

          goto LABEL_12;
        }

        v3 = *(v2[4] + v2[5]);
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v5 = 0;
      v3 = 0;
    }

    v11 = v2[4];
    v12 = *((*MEMORY[0x1E69E7D40] & **&v11[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView]) + 0x198);
    v13 = v3;
    v12(v3);
    [v11 setNeedsLayout];

    v5 = v8;
    goto LABEL_12;
  }

  v4 = v3;
  sub_1A2217DF4(v3);
  v5 = v2[3];
LABEL_12:

LABEL_13:

  free(v2);
}

double sub_1A2218124()
{
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2218168(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_cornerRadius;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = [v1 _setContinuousCornerRadius_];
    v7 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);
    v8 = MEMORY[0x1E69E7D40];
    v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x130);
    v10 = v9(v6);
    v11 = sub_1A229D9D8(v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = *((*v8 & *v7) + 0xA0);
    v19 = v18(v33);
    *v20 = v11;
    *(v20 + 1) = v13;
    *(v20 + 2) = v15;
    *(v20 + 3) = v17;
    v21 = v19(v33, 0);
    v22 = v9(v21);
    v23 = (*((*v8 & *v1) + 0x178))();
    v24 = sub_1A229DA04(v22, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = v18(v33);
    v32[4] = v24;
    *(v32 + 5) = v26;
    *(v32 + 6) = v28;
    *(v32 + 7) = v30;
    return v31(v33, 0);
  }

  return result;
}

void (*sub_1A2218364(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_cornerRadius;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  swift_beginAccess();
  *(v4 + 56) = *(v1 + v5);
  return sub_1A22183F8;
}

void sub_1A22183F8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    v6 = v1[8];
    v7 = [v6 _setContinuousCornerRadius_];
    v8 = *(v6 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x130);
    v11 = v10(v7);
    v12 = sub_1A229D9D8(v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = *((*v9 & *v8) + 0xA0);
    v20 = v19(v1);
    *v21 = v12;
    *(v21 + 1) = v14;
    *(v21 + 2) = v16;
    *(v21 + 3) = v18;
    v22 = v20(v1, 0);
    v23 = v10(v22);
    v24 = (*((*v9 & *v6) + 0x178))();
    v25 = sub_1A229DA04(v23, v24);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = v19(v1);
    v33[4] = v25;
    *(v33 + 5) = v27;
    *(v33 + 6) = v29;
    *(v33 + 7) = v31;
    v32(v1, 0);
  }

  free(v1);
}

uint64_t sub_1A22185EC()
{
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_isResizing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2218630(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_isResizing;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView)) + 0x1D0))(v3);
  }

  return result;
}

void (*sub_1A22186DC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_isResizing;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2218770;
}

void sub_1A2218770(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v1[3] + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView)) + 0x1D0))();
  }

  free(v1);
}

id sub_1A2218808()
{
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_tapGestureHandler_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1A221888C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_presenter] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter] = 0;
  v9 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_backgroundView;
  type metadata accessor for MediaControlsModuleBackgroundView(0, v10);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView;
  type metadata accessor for MediaControlsModuleNowPlayingView(0);
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView;
  type metadata accessor for RoutePickerItemsView(0, v13);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_moduleLayout] = 1;
  v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_layout] = 1;
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_visualStylingProvider] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_contentMetrics] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_isResizing] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView____lazy_storage___tapGestureRecognizer] = 0;
  v14 = &v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_animationCoordinator];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_sessionViewState];
  LOBYTE(v12) = sub_1A211A6BC();
  v16 = sub_1A2113050();
  v17 = sub_1A2113050();
  v18 = sub_1A211A6BC();
  v19 = sub_1A2113050();
  v20 = sub_1A2113050();
  v21 = sub_1A220CDA4(1, v12 & 1, v16 & 1, v17 & 1, v18 & 1, v19 & 1, v20 & 1);
  *v15 = v21 & 1;
  v22 = vdupq_n_s64(v21);
  *v22.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v22, xmmword_1A2308740), vshlq_u64(v22, xmmword_1A2308730))), 0x1000100010001);
  *(v15 + 1) = vuzp1_s8(*v22.i8, *v22.i8).u32[0];
  v15[5] = BYTE5(v21) & 1;
  v15[6] = BYTE6(v21) & 1;
  v23 = &v4[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_selectionHandler];
  v25 = type metadata accessor for MediaControlsModuleSessionView(v21, v24);
  *v23 = 0;
  v23[1] = 0;
  v72.receiver = v4;
  v72.super_class = v25;
  v26 = objc_msgSendSuper2(&v72, sel_initWithFrame_, a1, a2, a3, a4);
  [v26 setClipsToBounds_];
  [v26 addSubview_];
  v27 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView;
  [*&v26[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView] setOverrideUserInterfaceStyle_];
  v28 = *&v26[v27];
  v29 = MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0xF0);
  v31 = v26;
  v32 = v28;
  v30(v26, &off_1F143CA98);

  v33 = *(*(*&v26[v27] + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
  v34 = *((*v29 & *v33) + 0xC8);
  v35 = v31;
  v36 = v33;
  v34(v26, &off_1F143CAB8);

  v37 = *(*&v26[v27] + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
  v38 = *((*v29 & *v37) + 0xB0);
  v39 = v37;
  v38(v26, &off_1F143CAD0);

  [v35 addSubview_];
  v40 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView;
  [*&v35[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView] setOverrideUserInterfaceStyle_];
  [v35 addSubview_];
  v41 = sub_1A2218808();
  [v35 addGestureRecognizer_];

  v42 = *&v35[v40];
  v43 = *((*v29 & *v35) + 0x130);
  v44 = v43();
  v45 = sub_1A229D9D8(v44);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = (*((*v29 & *v42) + 0xA0))(v71);
  *v53 = v45;
  *(v53 + 1) = v47;
  *(v53 + 2) = v49;
  *(v53 + 3) = v51;
  v54 = v52(v71, 0);
  v55 = *&v35[v40];
  v56 = (v43)(v54);
  v57 = (*((*v29 & *v35) + 0x178))();
  v58 = sub_1A229DA04(v56, v57);
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = (*((*v29 & *v55) + 0xA0))(v71);
  v66[4] = v58;
  *(v66 + 5) = v60;
  *(v66 + 6) = v62;
  *(v66 + 7) = v64;
  v65(v71, 0);
  sub_1A2219A78();
  v67 = *((*v29 & *v35) + 0x248);
  v68 = *&v35[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView____lazy_storage___tapGestureRecognizer];
  v69 = v67();
  [v68 setEnabled_];

  return v35;
}