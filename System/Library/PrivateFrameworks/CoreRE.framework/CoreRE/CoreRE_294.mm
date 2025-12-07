uint64_t *std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::TimelineAssetData *)>::operator()((a1 + 1), v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = a2[4];
  if (v7)
  {
    if (v7 == a2 + 1)
    {
      a1[4] = (a1 + 1);
      (*(*a2[4] + 24))(a2[4], a1 + 1);
    }

    else
    {
      a1[4] = v7;
      a2[4] = 0;
    }
  }

  else
  {
    a1[4] = 0;
  }

  return a1;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateTimelineClip(const char *a1, uint64_t a2, AssetService *a3)
{
  v7[5] = *MEMORY[0x1E69E9840];
  createClipAssetData(v7, a2, a3);
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](v7);
  v4 = v6;
  return v4;
}

uint64_t RETimelineDefinitionCreateClipSourceRef(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    *buf = 0;
    v11 = 0;
    v12 = 0;
    v6 = 80;
    if ((v3 - 3) >= 8 && v3 != 60)
    {
      if (v3 != 1)
      {
        goto LABEL_18;
      }

      v6 = 72;
    }

    re::AssetHandle::operator=(buf, (v1 + v6));
    if (v11)
    {
      v7 = atomic_load((v11 + 896));
      if (v7 == 2)
      {
        v5 = v9;
LABEL_19:
        re::AssetHandle::~AssetHandle(buf);
        return v5;
      }
    }

LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip source from timeline clips.", buf, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetClipSource(uint64_t *a1, uint64_t a2, AssetService *a3)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v6 = a1 + 6;
  v7 = a1[6];
  if (!v7)
  {
    v8 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    if (v8)
    {
      v7 = *(v8 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  var0 = a3[6].var0;
  if (!var0)
  {
    v10 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(&a3[3]);
    if (v10)
    {
      var0 = *(v10 + 8);
    }

    else
    {
      var0 = 0;
    }
  }

  v11 = *(v7 + 8);
  if (v11 > 6)
  {
    if (v11 <= 8)
    {
      if (v11 == 7)
      {
        v12 = *(var0 + 2) - 7;
      }

      else
      {
        v12 = *(var0 + 2) - 8;
      }

      goto LABEL_34;
    }

    switch(v11)
    {
      case 9:
        HIDWORD(v17) = *(var0 + 2) - 9;
        LODWORD(v17) = HIDWORD(v17);
        v16 = v17 >> 2;
        v18 = v16 > 9;
        v19 = 1 << v16;
        v20 = 725;
        goto LABEL_35;
      case 10:
        v12 = *(var0 + 2) - 10;
        goto LABEL_34;
      case 60:
        v13 = *(var0 + 2);
        v18 = v13 > 0x3D;
        v14 = (1 << v13) & 0x3804000000000000;
        if (!v18 && v14 != 0)
        {
LABEL_39:
          v25 = *(v7 + 8);
          v26 = 80;
          if ((v25 - 3) >= 8 && v25 != 60)
          {
            if (v25 != 1)
            {
              goto LABEL_41;
            }

            v26 = 72;
          }

          re::AssetHandle::operator=(v27 + v26, v31);
LABEL_41:
          re::AssetHandle::~AssetHandle(v31);
          return 1;
        }

LABEL_46:
        createClipAssetData(v31, a2, a3);
        std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::operator=[abi:nn200100](v6, v31);
        v29 = a1[3];
        if (v29)
        {

          a1[3] = 0;
        }

        a1[4] = 0;
        std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](v31);
        return 1;
    }
  }

  else
  {
    if (v11 > 3)
    {
      if (v11 == 4)
      {
        v12 = *(var0 + 2) - 4;
      }

      else if (v11 == 5)
      {
        v12 = *(var0 + 2) - 5;
      }

      else
      {
        v12 = *(var0 + 2) - 6;
      }

      goto LABEL_34;
    }

    if (v11 == 1)
    {
      goto LABEL_39;
    }

    if (v11 == 3)
    {
      v12 = *(var0 + 2) - 3;
LABEL_34:
      HIDWORD(v22) = v12;
      LODWORD(v22) = v12;
      v21 = v22 >> 2;
      v18 = v21 > 9;
      v19 = 1 << v21;
      v20 = 597;
LABEL_35:
      v23 = v19 & v20;
      if (!v18 && v23 != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_46;
    }
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v30 = CoreRELog::log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v31[0]) = 0;
    _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Can only set clip source of timeline clips.", v31, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionGetClipStart(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        v6 = *(v1 + 96);
        v7 = v1 + 104;
LABEL_20:
        if (v6)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    v6 = *(v1 + 104);
    v7 = v1 + 112;
    goto LABEL_20;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip start for timeline clips.", v8, 2u);
  }

  return 0;
}

unint64_t RETimelineDefinitionSetClipStart(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 > 10 && v4 != 60)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (v4 > 3)
    {
LABEL_15:
      if (a2)
      {
        v7 = *a2;
        if ((*(v3 + 104) & 1) == 0)
        {
          *(v3 + 104) = 1;
        }

        *(v3 + 14) = v7;
      }

      else if (*(v3 + 104))
      {
        *(v3 + 104) = 0;
      }

      return v5 & 1;
    }

    if (v4 != 1)
    {
      if (v4 != 3)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (a2)
    {
      v8 = *a2;
      if ((*(v3 + 96) & 1) == 0)
      {
        *(v3 + 96) = 1;
      }

      *(v3 + 13) = v8;
    }

    else if (*(v3 + 96))
    {
      *(v3 + 96) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip start for timeline clips.", v10, 2u);
    }
  }

  return v5 & 1;
}

uint64_t RETimelineDefinitionGetClipEnd(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        v6 = *(v1 + 112);
        v7 = v1 + 120;
LABEL_20:
        if (v6)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    v6 = *(v1 + 120);
    v7 = v1 + 128;
    goto LABEL_20;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip end for timeline clips.", v8, 2u);
  }

  return 0;
}

unint64_t RETimelineDefinitionSetClipEnd(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 > 10 && v4 != 60)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (v4 > 3)
    {
LABEL_15:
      if (a2)
      {
        v7 = *a2;
        if ((*(v3 + 120) & 1) == 0)
        {
          *(v3 + 120) = 1;
        }

        *(v3 + 16) = v7;
      }

      else if (*(v3 + 120))
      {
        *(v3 + 120) = 0;
      }

      return v5 & 1;
    }

    if (v4 != 1)
    {
      if (v4 != 3)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (a2)
    {
      v8 = *a2;
      if ((*(v3 + 112) & 1) == 0)
      {
        *(v3 + 112) = 1;
      }

      *(v3 + 15) = v8;
    }

    else if (*(v3 + 112))
    {
      *(v3 + 112) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip end for timeline clips.", v10, 2u);
    }
  }

  return v5 & 1;
}

double RETimelineDefinitionGetClipOffset(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0.0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        return *(v1 + 128);
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    return *(v1 + 136);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip offset for timeline clips.", v6, 2u);
  }

  return NAN;
}

unint64_t RETimelineDefinitionSetClipOffset(_anonymous_namespace_::TimelineDefinition *a1, double a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 <= 10 || v4 == 60)
      {
LABEL_15:
        *(v3 + 17) = a2;
      }
    }

    else
    {
      if (v4 > 3)
      {
        goto LABEL_15;
      }

      if (v4 == 1)
      {
        *(v3 + 16) = a2;
        return v5 & 1;
      }

      if (v4 == 3)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip offset for timeline clips.", v8, 2u);
    }
  }

  return v5 & 1;
}

double RETimelineDefinitionGetClipDelay(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0.0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        return *(v1 + 144);
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    return *(v1 + 152);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip delay for timeline clips.", v6, 2u);
  }

  return NAN;
}

unint64_t RETimelineDefinitionSetClipDelay(_anonymous_namespace_::TimelineDefinition *a1, double a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 <= 10 || v4 == 60)
      {
LABEL_15:
        *(v3 + 19) = a2;
      }
    }

    else
    {
      if (v4 > 3)
      {
        goto LABEL_15;
      }

      if (v4 == 1)
      {
        *(v3 + 18) = a2;
        return v5 & 1;
      }

      if (v4 == 3)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip delay for timeline clips.", v8, 2u);
    }
  }

  return v5 & 1;
}

uint64_t RETimelineDefinitionGetClipDuration(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        v6 = *(v1 + 152);
        v7 = v1 + 160;
LABEL_20:
        if (v6)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    v6 = *(v1 + 160);
    v7 = v1 + 168;
    goto LABEL_20;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip duration for timeline clips.", v8, 2u);
  }

  return 0;
}

unint64_t RETimelineDefinitionSetClipDuration(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 > 10 && v4 != 60)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (v4 > 3)
    {
LABEL_15:
      if (a2)
      {
        v7 = *a2;
        if ((*(v3 + 160) & 1) == 0)
        {
          *(v3 + 160) = 1;
        }

        *(v3 + 21) = v7;
      }

      else if (*(v3 + 160))
      {
        *(v3 + 160) = 0;
      }

      return v5 & 1;
    }

    if (v4 != 1)
    {
      if (v4 != 3)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (a2)
    {
      v8 = *a2;
      if ((*(v3 + 152) & 1) == 0)
      {
        *(v3 + 152) = 1;
      }

      *(v3 + 20) = v8;
    }

    else if (*(v3 + 152))
    {
      *(v3 + 152) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip duration for timeline clips.", v10, 2u);
    }
  }

  return v5 & 1;
}

float RETimelineDefinitionGetClipSpeed(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0.0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        result = *(v1 + 168);
        if ((*(v1 + 136) & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        if (v3 != 3)
        {
          return result;
        }

        result = *(v1 + 176);
        if (*(v1 + 144) != 1)
        {
          return result;
        }
      }

      return -result;
    }

    result = *(v1 + 176);
    if ((*(v1 + 144) & 1) == 0)
    {
      return result;
    }

    return -result;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip speed for timeline clips.", v6, 2u);
  }

  return NAN;
}

unint64_t RETimelineDefinitionSetClipSpeed(_anonymous_namespace_::TimelineDefinition *a1, float a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 > 10 && v4 != 60)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (v4 > 3)
    {
LABEL_15:
      v7 = -a2;
      if (!*(v3 + 144))
      {
        v7 = a2;
      }

      *(v3 + 44) = v7;
      return v5 & 1;
    }

    if (v4 != 1)
    {
      if (v4 != 3)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    v9 = -a2;
    if (!*(v3 + 136))
    {
      v9 = a2;
    }

    *(v3 + 42) = v9;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip speed for timeline clips.", v10, 2u);
    }
  }

  return v5 & 1;
}

uint64_t RETimelineDefinitionGetClipLoopBehavior(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if (((0x10000000000007FAuLL >> v3) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip loop behavior for timeline clips.", v7, 2u);
    }

    return -1;
  }

  v5 = -1;
  if (v3 > 6)
  {
    if (v3 > 10 && v3 != 60)
    {
      return v5;
    }

    return *(v1 + 180);
  }

  if (v3 > 3)
  {
    return *(v1 + 180);
  }

  if (v3 == 1)
  {
    return *(v1 + 172);
  }

  if (v3 == 3)
  {
    return *(v1 + 180);
  }

  return v5;
}

unint64_t RETimelineDefinitionSetClipLoopBehavior(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 <= 10 || v4 == 60)
      {
LABEL_15:
        *(v3 + 180) = a2;
      }
    }

    else
    {
      if (v4 > 3)
      {
        goto LABEL_15;
      }

      if (v4 == 1)
      {
        *(v3 + 172) = a2;
        return v5 & 1;
      }

      if (v4 == 3)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip loop behavior for timeline clips.", v8, 2u);
    }
  }

  return v5 & 1;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateTimelineGroup(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 112, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 2);
  *v4 = &unk_1F5CBE6B8;
  *(v4 + 104) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = 0;
  v8[0] = &unk_1F5D2AC00;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2AC00;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

uint64_t RETimelineDefinitionGetChildrenTimelineCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 2)
  {
    return *(v1 + 88);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get children count for timeline groups.", v4, 2u);
  }

  return 0;
}

BOOL RETimelineDefinitionSetChildrenTimelineCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 2)
  {
    re::DynamicArray<re::AssetHandle>::resize(v3 + 72, a2);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Can only set children count for timeline groups.", v7, 2u);
    }
  }

  return v4 == 2;
}

uint64_t RETimelineDefinitionCreateChildTimelineRef(void *a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  if (!v3)
  {
    a1 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    v3 = a1[1];
  }

  if (*(v3 + 8) != 2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(buf[0]) = 0;
    v13 = "Can only set children count for timeline groups.";
    goto LABEL_28;
  }

  if (*(v3 + 88) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = *(v3 + 88);
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = a2;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = v14;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Timeline group child index (%zu) does not exist, children count: %zu", buf, 0x16u);
    }

    return 0;
  }

  v4 = *(*(v3 + 104) + 24 * a2 + 8);
  if (!v4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(buf[0]) = 0;
    v13 = "Timeline child is not valid.";
    goto LABEL_28;
  }

  v5 = atomic_load((v4 + 896));
  if (v5 != 2)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_25:
      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        return 0;
      }

      LOWORD(buf[0]) = 0;
      v13 = "Timeline child is not loaded.";
LABEL_28:
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v13, buf, 2u);
      goto LABEL_12;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_25;
  }

  v6 = *(v3 + 88);
  if (v6 <= a2)
  {
    v19 = 0;
    memset(buf, 0, sizeof(buf));
    v15 = MEMORY[0x1E69E9C10];
    v16 = v6;
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v16;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v7 = (*(v3 + 104) + 24 * a2);
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 112, 8);
  re::AssetHandle::AssetHandle(buf, v7);
  re::AssetHandle::~AssetHandle(buf);
  return v9;
}

uint64_t RETimelineDefinitionSetChildTimeline(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, AssetService *a3, unint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) != 2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Can only set children count for timeline groups.", buf, 2u);
    }

    return 0;
  }

  v8 = v7;
  if (*(v7 + 11) > a4)
  {
    v9 = *(v8 + 88);
    if (v9 > a4)
    {
      v10 = (*(v8 + 104) + 24 * a4);
      v11 = v10[1];
      v10[1] = v21;
      v21 = v11;
      v12 = *v10;
      *v10 = 0;
      *v10 = v20;
      v20 = v12;
      v13 = v10[2];
      v10[2] = v22;
      v22 = v13;
      re::AssetHandle::~AssetHandle(&v20);
      return 1;
    }

    v23 = 0;
    memset(buf, 0, sizeof(buf));
    v8 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = a4;
    v30 = 2048;
    v31 = v9;
    _os_log_send_and_compose_impl(v19, &v23, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v20, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v16 = CoreRELog::log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *(v8 + 88);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a4;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v17;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Timeline group child index (%zu) does not exist, children count: %zu", buf, 0x16u);
  }

  return 0;
}

BOOL RETimelineDefinitionAddChildTimeline(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, AssetService *a3)
{
  v6 = *(v5 + 2);
  if (v6 == 2)
  {
    v7 = v5;
    re::DynamicArray<re::AssetHandle>::add((v7 + 72), v10);
    re::AssetHandle::~AssetHandle(v10);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Can only add children for timeline groups.", v10, 2u);
    }
  }

  return v6 == 2;
}

uint64_t RETimelineDefinitionInsertChildTimeline(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, AssetService *a3, unint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) != 2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Can only insert children for timeline groups.", &v13, 2u);
    }

    return 0;
  }

  v8 = v7;
  if (*(v7 + 11) < a4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v8 + 11);
      v13 = 134218240;
      v14 = a4;
      v15 = 2048;
      v16 = v12;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Cannot insert child index (%zu), children count: %zu", &v13, 0x16u);
    }

    return 0;
  }

  re::DynamicArray<re::AssetHandle>::insert((v8 + 72), a4, &v13);
  re::AssetHandle::~AssetHandle(&v13);
  return 1;
}

uint64_t RETimelineDefinitionRemoveChildTimeline(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(v3 + 2) == 2)
  {
    v4 = v3;
    if (*(v3 + 11) > a2)
    {
      re::DynamicArray<re::AssetHandle>::removeStableAt(v3 + 72, a2);
      return 1;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(v4 + 11);
      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Timeline group child index (%zu) does not exist, children count: %zu", &v9, 0x16u);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only remove children from timeline groups.", &v9, 2u);
    }
  }

  return 0;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateOrbitAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 160, 16);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 37);
  *(v4 + 72) = 0;
  *v4 = &unk_1F5CC0998;
  *(v4 + 76) = 1065353216;
  *(v4 + 80) = xmmword_1E3047680;
  *(v4 + 96) = 0x3F8000003F800000;
  *(v4 + 104) = 1065353216;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0x3F80000000000000;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 1;
  *(v4 + 148) = 1065353216;
  v8[0] = &unk_1F5D2AC80;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2AC80;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

double RETimelineDefinitionGetAxis(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (v1->i32[2] == 37)
  {
    v2 = v1[5];
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get axis for orbit animations.", v6, 2u);
    }

    v4 = 0x3F0000003FLL;
    v2.i64[1] = 0x3F0000003FLL;
    v2.i64[0] = vnegq_f32(v2).u64[0];
  }

  return *v2.i64;
}

BOOL RETimelineDefinitionSetAxis(_anonymous_namespace_::TimelineDefinition *a1, __n128 a2)
{
  v3 = v2->n128_u32[2];
  if (v3 == 37)
  {
    v2[5] = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only set axis for orbit animations.", buf, 2u);
    }
  }

  return v3 == 37;
}

double RETimelineDefinitionGetStartTransform(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (v1->i32[2] == 37)
  {
    v2 = v1[6];
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get start transform for orbit animations.", v6, 2u);
    }

    v4 = 0x3F0000003FLL;
    v2.i64[1] = 0x3F0000003FLL;
    v2.i64[0] = vnegq_f32(v2).u64[0];
  }

  return *v2.i64;
}

BOOL RETimelineDefinitionSetStartTransform(_anonymous_namespace_::TimelineDefinition *a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4->n128_u32[2];
  if (v5 == 37)
  {
    v4[6] = a2;
    v4[7] = a3;
    v4[8] = a4;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set start transform for orbit animations.", buf, 2u);
    }
  }

  return v5 == 37;
}

uint64_t RETimelineDefinitionGetSpinClockwise(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 37)
  {
    v2 = *(v1 + 144);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get spin clockwise state for orbit animations.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

BOOL RETimelineDefinitionSetSpinClockwise(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if (v4 == 37)
  {
    *(v3 + 144) = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Can only set spin clockwise state for orbit animations.", v7, 2u);
    }
  }

  return v4 == 37;
}

uint64_t RETimelineDefinitionGetOrientToPath(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 37)
  {
    v2 = *(v1 + 145);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get orient to path for orbit animations.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

BOOL RETimelineDefinitionSetOrientToPath(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if (v4 == 37)
  {
    *(v3 + 145) = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Can only set orient to path for orbit animations.", v7, 2u);
    }
  }

  return v4 == 37;
}

float RETimelineDefinitionGetRotationCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 37)
  {
    return *(v1 + 148);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get rotation count for orbit animations.", v4, 2u);
  }

  return NAN;
}

BOOL RETimelineDefinitionSetRotationCount(_anonymous_namespace_::TimelineDefinition *a1, float a2)
{
  v4 = *(v3 + 2);
  if (v4 == 37)
  {
    *(v3 + 37) = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Can only set rotation count for orbit animations.", v7, 2u);
    }
  }

  return v4 == 37;
}

uint64_t RETimelineDefinitionCreateFloatBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 39);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0A60;
  v11[0] = &unk_1F5D2AD00;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2AD00;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2AD80;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateDoubleBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 40);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0B10;
  v11[0] = &unk_1F5D2ADC8;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2ADC8;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2AE48;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateFloat2BlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 41);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0BC0;
  v11[0] = &unk_1F5D2AE90;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2AE90;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2AF10;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateFloat3BlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 42);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0C70;
  v11[0] = &unk_1F5D2AF58;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2AF58;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2AFD8;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateFloat4BlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 43);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0D20;
  v11[0] = &unk_1F5D2B020;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2B020;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2B0A0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateQuaternionBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 44);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0DD0;
  v11[0] = &unk_1F5D2B0E8;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2B0E8;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2B168;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateSRTBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 45);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0E80;
  v11[0] = &unk_1F5D2B1B0;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2B1B0;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2B230;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateSkeletalPoseBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 46);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0F30;
  v11[0] = &unk_1F5D2B278;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2B278;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2B2F8;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionBlendTreeAddRigNode(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, const char *a4, float a5)
{
  v12 = -1;
  if (v10 > 42)
  {
    if (v10 <= 45 || v10 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v10 > 40 || v10 == 39 || v10 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddRigNode(a1, a2, a3, a4, &v12, a5);
  }

  return v12;
}

void TimelineDefinitionForBlendTree<float>::doAddRigNode(_anonymous_namespace_ *a1, const char *a2, const char *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  *&v17.var0 = 0;
  v17.var1 = &str_67;
  *&v16.var0 = 0;
  v16.var1 = &str_67;
  *&v15.var0 = 0;
  if (a4)
  {
    v15.var1 = &str_67;
  }

  else
  {
    v15.var1 = "";
  }

  v14 = re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v17, &v16, &v15, a6);
  *a5 = v14;
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }

  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddBlend(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, float a4)
{
  v10 = -1;
  if (v8 > 42)
  {
    if (v8 <= 45 || v8 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v8 > 40 || v8 == 39 || v8 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddBlendNode(a1, a2, a3, &v10, a4);
  }

  return v10;
}

void TimelineDefinitionForBlendTree<float>::doAddBlendNode(_anonymous_namespace_ *a1, const char *a2, const char *a3, _anonymous_namespace_ **a4, float a5)
{
  *&v13.var0 = 0;
  v13.var1 = &str_67;
  *&v12.var0 = 0;
  if (a3)
  {
    v12.var1 = &str_67;
  }

  else
  {
    v12.var1 = "";
  }

  *&v14.var0 = 128540770;
  v14.var1 = "Blend";
  v11 = re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v14, &v13, &v12, a5);
  *a4 = v11;
  if (*&v12.var0)
  {
    if (*&v12.var0)
    {
    }
  }

  if (*&v13.var0)
  {
    if (*&v13.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddAdditiveBlend(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, float a4)
{
  v10 = -1;
  if (v8 > 42)
  {
    if (v8 <= 45 || v8 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v8 > 40 || v8 == 39 || v8 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddAdditiveBlendNode(a1, a2, a3, &v10, a4);
  }

  return v10;
}

void TimelineDefinitionForBlendTree<float>::doAddAdditiveBlendNode(_anonymous_namespace_ *a1, const char *a2, const char *a3, _anonymous_namespace_ **a4, float a5)
{
  *&v13.var0 = 0;
  v13.var1 = &str_67;
  *&v12.var0 = 0;
  if (a3)
  {
    v12.var1 = &str_67;
  }

  else
  {
    v12.var1 = "";
  }

  *&v14.var0 = 0xF17087402FF81E3ALL;
  v14.var1 = "BlendAdditive";
  v11 = re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v14, &v13, &v12, a5);
  *a4 = v11;
  if (*&v12.var0)
  {
    if (*&v12.var0)
    {
    }
  }

  if (*&v13.var0)
  {
    if (*&v13.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddTimelineSource(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, const char *a3, AssetService *a4, const char *a5, float a6)
{
  v10 = -1;
  v22 = -1;
  if (v11 > 42)
  {
    if (v11 <= 44)
    {
      if (v11 == 43)
      {
        v12 = v17;
        re::AssetHandle::AssetHandle(v17, v23);
        TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(a1, a3, v17, a5, &v22, a6);
      }

      else
      {
        v12 = v16;
        re::AssetHandle::AssetHandle(v16, v23);
        TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(a1, a3, v16, a5, &v22, a6);
      }

      goto LABEL_18;
    }

    if (v11 == 45)
    {
      v12 = v15;
      re::AssetHandle::AssetHandle(v15, v23);
      TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(a1, a3, v15, a5, &v22, a6);
      goto LABEL_18;
    }

    if (v11 == 46)
    {
      v12 = v14;
      re::AssetHandle::AssetHandle(v14, v23);
      TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(a1, a3, v14, a5, &v22, a6);
      goto LABEL_18;
    }
  }

  else
  {
    if (v11 > 40)
    {
      if (v11 == 41)
      {
        v12 = v19;
        re::AssetHandle::AssetHandle(v19, v23);
        TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(a1, a3, v19, a5, &v22, a6);
      }

      else
      {
        v12 = v18;
        re::AssetHandle::AssetHandle(v18, v23);
        TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(a1, a3, v18, a5, &v22, a6);
      }

      goto LABEL_18;
    }

    if (v11 == 39)
    {
      v12 = v21;
      re::AssetHandle::AssetHandle(v21, v23);
      TimelineDefinitionForBlendTree<float>::doAddTimeline(a1, a3, v21, a5, &v22, a6);
      goto LABEL_18;
    }

    if (v11 == 40)
    {
      v12 = v20;
      re::AssetHandle::AssetHandle(v20, v23);
      TimelineDefinitionForBlendTree<double>::doAddTimeline(a1, a3, v20, a5, &v22, a6);
LABEL_18:
      re::AssetHandle::~AssetHandle(v12);
      v10 = v22;
    }
  }

  re::AssetHandle::~AssetHandle(v23);
  return v10;
}

void TimelineDefinitionForBlendTree<float>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<float>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 3;
  LODWORD(v17) = v14 - 3;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<double>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<double>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 4;
  LODWORD(v17) = v14 - 4;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 5;
  LODWORD(v17) = v14 - 5;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 6;
  LODWORD(v17) = v14 - 6;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 7;
  LODWORD(v17) = v14 - 7;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 8;
  LODWORD(v17) = v14 - 8;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *&buf.var0 = 0;
    v19 = "Cannot add empty timeline to blend tree.";
    goto LABEL_28;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 > 0x2D)
  {
    goto LABEL_23;
  }

  if (((1 << v14) & 0x201202020200) != 0)
  {
    *&buf.var0 = 0;
    buf.var1 = &str_67;
    *&v21.var0 = 0;
    if (a4)
    {
      v21.var1 = &str_67;
    }

    else
    {
      v21.var1 = "";
    }

    *&v20.var0 = 0;
    v20.var1 = "";
    v17 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v21, &v20, a6);
    *a5 = v17;
    if (*&v21.var0)
    {
      if (*&v21.var0)
      {
      }
    }

    if (*&buf.var0)
    {
      if (*&buf.var0)
      {
      }
    }

    re::DynamicArray<re::AssetHandle>::add((v18 + 248), a3);
    return;
  }

  if (v14 != 2)
  {
LABEL_23:
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *&buf.var0 = 0;
    v19 = "Cannot add incompatible timeline type to blend tree.";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v19, &buf, 2u);
LABEL_10:

    return;
  }

  if (*(v13 + 88) == 1)
  {
    re::AssetHandle::AssetHandle(v23, *(v13 + 104));
    TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(a1, a2, v23, a4, a5, a6);
    re::AssetHandle::~AssetHandle(v23);
  }
}

void TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *&buf.var0 = 0;
    v19 = "Cannot add empty timeline to blend tree.";
    goto LABEL_28;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 > 0x2E)
  {
    goto LABEL_23;
  }

  if (((1 << v14) & 0x400C04040400) != 0)
  {
    *&buf.var0 = 0;
    buf.var1 = &str_67;
    *&v21.var0 = 0;
    if (a4)
    {
      v21.var1 = &str_67;
    }

    else
    {
      v21.var1 = "";
    }

    *&v20.var0 = 0;
    v20.var1 = "";
    v17 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v21, &v20, a6);
    *a5 = v17;
    if (*&v21.var0)
    {
      if (*&v21.var0)
      {
      }
    }

    if (*&buf.var0)
    {
      if (*&buf.var0)
      {
      }
    }

    re::DynamicArray<re::AssetHandle>::add((v18 + 248), a3);
    return;
  }

  if (v14 != 2)
  {
LABEL_23:
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *&buf.var0 = 0;
    v19 = "Cannot add incompatible timeline type to blend tree.";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v19, &buf, 2u);
LABEL_10:

    return;
  }

  if (*(v13 + 88) == 1)
  {
    re::AssetHandle::AssetHandle(v23, *(v13 + 104));
    TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(a1, a2, v23, a4, a5, a6);
    re::AssetHandle::~AssetHandle(v23);
  }
}

void RETimelineDefinitionBlendTreeAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, uint64_t a3, const char *a4, float a5)
{
  if (v10 > 42)
  {
    if (v10 > 44)
    {
      if (v10 == 45)
      {
        v11 = v13;
        re::AssetAPIHelper::assetHandleCreate(a3, v13);
        TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(a1, a2, v13, a4, &v20, a5);
      }

      else
      {
        if (v10 != 46)
        {
          return;
        }

        v11 = v12;
        re::AssetAPIHelper::assetHandleCreate(a3, v12);
        TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(a1, a2, v12, a4, &v20, a5);
      }
    }

    else if (v10 == 43)
    {
      v11 = v15;
      re::AssetAPIHelper::assetHandleCreate(a3, v15);
      TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(a1, a2, v15, a4, &v20, a5);
    }

    else
    {
      v11 = v14;
      re::AssetAPIHelper::assetHandleCreate(a3, v14);
      TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(a1, a2, v14, a4, &v20, a5);
    }
  }

  else if (v10 > 40)
  {
    if (v10 == 41)
    {
      v11 = v17;
      re::AssetAPIHelper::assetHandleCreate(a3, v17);
      TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(a1, a2, v17, a4, &v20, a5);
    }

    else
    {
      v11 = v16;
      re::AssetAPIHelper::assetHandleCreate(a3, v16);
      TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(a1, a2, v16, a4, &v20, a5);
    }
  }

  else if (v10 == 39)
  {
    v11 = v19;
    re::AssetAPIHelper::assetHandleCreate(a3, v19);
    TimelineDefinitionForBlendTree<float>::doAddTimeline(a1, a2, v19, a4, &v20, a5);
  }

  else
  {
    if (v10 != 40)
    {
      return;
    }

    v11 = v18;
    re::AssetAPIHelper::assetHandleCreate(a3, v18);
    TimelineDefinitionForBlendTree<double>::doAddTimeline(a1, a2, v18, a4, &v20, a5);
  }

  re::AssetHandle::~AssetHandle(v11);
}

uint64_t RETimelineDefinitionBlendTreeAddInput(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, const char *a4, const char *a5, float a6)
{
  v14 = -1;
  if (v12 > 42)
  {
    if (v12 <= 45 || v12 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v12 > 40 || v12 == 39 || v12 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddInput(a1, a2, a3, a4, a5, &v14, a6);
  }

  return v14;
}

void TimelineDefinitionForBlendTree<float>::doAddInput(_anonymous_namespace_ **a1, const char *a2, const char *a3, const char *a4, const char *a5, void *a6, float a7)
{
  *&v21.var0 = 0;
  v21.var1 = &str_67;
  *&v20.var0 = 0;
  v20.var1 = &str_67;
  *&v19.var0 = 0;
  if (a4)
  {
    v19.var1 = &str_67;
  }

  else
  {
    v19.var1 = "";
  }

  *&v18.var0 = 0;
  if (a5)
  {
    v18.var1 = &str_67;
  }

  else
  {
    v18.var1 = "";
  }

  v16 = a1[63];
  re::StringID::StringID(&v22, &v21);
  v24 = 141610836;
  v25 = "Input";
  if (*&v20.var0 <= 1uLL && v20.var1 && !*v20.var1)
  {
    v26 = 0x19BD80BACLL;
    v27 = "unused";
  }

  else
  {
    re::StringID::StringID(&v26, &v20);
  }

  re::StringID::StringID(&v28, &v19);
  re::StringID::StringID(&v30, &v18);
  v32 = a7;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::add(v16, &v22);
  if (v30)
  {
    if (v30)
    {
    }
  }

  v30 = 0;
  v31 = &str_67;
  if (v28)
  {
    if (v28)
    {
    }
  }

  v28 = 0;
  v29 = &str_67;
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0;
  v27 = &str_67;
  if (v24)
  {
    if (v24)
    {
    }
  }

  v24 = 0;
  v25 = &str_67;
  if (v22)
  {
    if (v22)
    {
    }
  }

  *a6 = *(a1[63] + 2) - 1;
  if (*&v18.var0)
  {
    if (*&v18.var0)
    {
    }
  }

  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  if (*&v20.var0)
  {
    if (*&v20.var0)
    {
    }
  }

  if (*&v21.var0)
  {
    if (*&v21.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddConnection(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3)
{
  v8 = -1;
  if (v6 > 42)
  {
    if (v6 <= 45 || v6 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v6 > 40 || v6 == 39 || v6 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddConnection(a1, a2, a3, 0, 0, &v8);
  }

  return v8;
}

void TimelineDefinitionForBlendTree<float>::doAddConnection(_anonymous_namespace_ *a1, const char *a2, const char *a3, const char *a4, const char *a5, _anonymous_namespace_ **a6)
{
  *&v18.var0 = 0;
  v18.var1 = &str_67;
  *&v17.var0 = 0;
  v17.var1 = &str_67;
  *&v16.var0 = 0;
  if (a4)
  {
    v16.var1 = &str_67;
  }

  else
  {
    v16.var1 = "";
  }

  *&v15.var0 = 0;
  if (a5)
  {
    v15.var1 = &str_67;
  }

  else
  {
    v15.var1 = "";
  }

  v14 = re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, &v18, &v17, &v16, &v15);
  *a6 = v14;
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }

  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }

  if (*&v18.var0)
  {
    if (*&v18.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddBlendSpace(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, AssetService **a3, const char **a4, uint64_t a5, uint64_t a6)
{
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v119 = 0x7FFFFFFFLL;
  if (a5)
  {
    v6 = a5;
    do
    {
      v10 = *a4;
      *&v122.var0 = 0;
      v122.var1 = &str_67;
      *&v120.var0 = 0;
      v120.var1 = 0;
      v121 = 0;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v122.var0 >> 31) ^ (*&v122.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v122.var0 >> 31) ^ (*&v122.var0 >> 1))) >> 27));
      v13 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, &v122, v12 ^ (v12 >> 31), &v120);
      if (HIDWORD(v120.var1) == 0x7FFFFFFF)
      {
        v13 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::AssetHandle const&>(&v116, &v120, &v122, &v115);
      }

      if (*&v122.var0)
      {
        if (*&v122.var0)
        {
        }
      }

      re::AssetHandle::~AssetHandle(&v115);
      ++a3;
      ++a4;
      --v6;
    }

    while (v6);
  }

  v14 = 0;
  if (v15 > 42)
  {
    if (v15 > 44)
    {
      if (v15 == 45)
      {
        v100 = *(a6 + 24);
        if (!v100)
        {
          goto LABEL_83;
        }

        v101 = *(a1 + 63);
        *(v101 + 80) = v100;
        re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v101 + 88, (a6 + 32));
        re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v101 + 128, (a6 + 72));
        *&v115.var0 = 7012804;
        v115.var1 = "root";
        *&v122.var0 = 0;
        v122.var1 = "";
        *&v120.var0 = 128540770;
        v120.var1 = "Blend";
        re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
        v102 = *(a6 + 88);
        if (!v102)
        {
          goto LABEL_82;
        }

        v103 = *(a6 + 104);
        v104 = v102 << 6;
        do
        {
          *&v120.var0 = 0;
          v120.var1 = "";
          re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v103, &v120, v103, 0.0);
          *&v120.var0 = 7012804;
          v120.var1 = "root";
          *&v115.var0 = 0;
          v115.var1 = "";
          *&v122.var0 = 0;
          v122.var1 = "";
          re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v103, &v120, &v115, &v122);
          v103 += 4;
          v104 -= 64;
        }

        while (v104);
        v105 = *(a6 + 88);
        if (!v105)
        {
          goto LABEL_82;
        }

        v106 = *(a6 + 104);
        v107 = v105 << 6;
        v108 = v106;
        do
        {
          v110 = *v108;
          v108 += 8;
          v111 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v110 >> 31) ^ (v110 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v110 >> 31) ^ (v110 >> 1))) >> 27));
          re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v106, v111 ^ (v111 >> 31), &v120);
          re::DynamicArray<re::AssetHandle>::add((v109 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
          v14 = 1;
          v106 = v108;
          v107 -= 64;
        }

        while (v107);
      }

      else
      {
        if (v15 != 46)
        {
          goto LABEL_84;
        }

        v52 = *(a6 + 24);
        if (!v52)
        {
          goto LABEL_83;
        }

        v53 = *(a1 + 63);
        *(v53 + 80) = v52;
        re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v53 + 88, (a6 + 32));
        re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v53 + 128, (a6 + 72));
        *&v115.var0 = 7012804;
        v115.var1 = "root";
        *&v122.var0 = 0;
        v122.var1 = "";
        *&v120.var0 = 128540770;
        v120.var1 = "Blend";
        re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
        v54 = *(a6 + 88);
        if (!v54)
        {
          goto LABEL_82;
        }

        v55 = *(a6 + 104);
        v56 = v54 << 6;
        do
        {
          *&v120.var0 = 0;
          v120.var1 = "";
          re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v55, &v120, v55, 0.0);
          *&v120.var0 = 7012804;
          v120.var1 = "root";
          *&v115.var0 = 0;
          v115.var1 = "";
          *&v122.var0 = 0;
          v122.var1 = "";
          re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v55, &v120, &v115, &v122);
          v55 += 4;
          v56 -= 64;
        }

        while (v56);
        v57 = *(a6 + 88);
        if (!v57)
        {
          goto LABEL_82;
        }

        v58 = *(a6 + 104);
        v59 = v57 << 6;
        v60 = v58;
        do
        {
          v62 = *v60;
          v60 += 8;
          v63 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v62 >> 31) ^ (v62 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v62 >> 31) ^ (v62 >> 1))) >> 27));
          re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v58, v63 ^ (v63 >> 31), &v120);
          re::DynamicArray<re::AssetHandle>::add((v61 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
          v14 = 1;
          v58 = v60;
          v59 -= 64;
        }

        while (v59);
      }
    }

    else if (v15 == 43)
    {
      v76 = *(a6 + 24);
      if (!v76)
      {
        goto LABEL_83;
      }

      v77 = *(a1 + 63);
      *(v77 + 80) = v76;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v77 + 88, (a6 + 32));
      re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v77 + 128, (a6 + 72));
      *&v115.var0 = 7012804;
      v115.var1 = "root";
      *&v122.var0 = 0;
      v122.var1 = "";
      *&v120.var0 = 128540770;
      v120.var1 = "Blend";
      re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
      v78 = *(a6 + 88);
      if (!v78)
      {
        goto LABEL_82;
      }

      v79 = *(a6 + 104);
      v80 = v78 << 6;
      do
      {
        *&v120.var0 = 0;
        v120.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v79, &v120, v79, 0.0);
        *&v120.var0 = 7012804;
        v120.var1 = "root";
        *&v115.var0 = 0;
        v115.var1 = "";
        *&v122.var0 = 0;
        v122.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v79, &v120, &v115, &v122);
        v79 += 4;
        v80 -= 64;
      }

      while (v80);
      v81 = *(a6 + 88);
      if (!v81)
      {
        goto LABEL_82;
      }

      v82 = *(a6 + 104);
      v83 = v81 << 6;
      v84 = v82;
      do
      {
        v86 = *v84;
        v84 += 8;
        v87 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v86 >> 31) ^ (v86 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v86 >> 31) ^ (v86 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v82, v87 ^ (v87 >> 31), &v120);
        re::DynamicArray<re::AssetHandle>::add((v85 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
        v14 = 1;
        v82 = v84;
        v83 -= 64;
      }

      while (v83);
    }

    else
    {
      v28 = *(a6 + 24);
      if (!v28)
      {
        goto LABEL_83;
      }

      v29 = *(a1 + 63);
      *(v29 + 80) = v28;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v29 + 88, (a6 + 32));
      re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v29 + 128, (a6 + 72));
      *&v115.var0 = 7012804;
      v115.var1 = "root";
      *&v122.var0 = 0;
      v122.var1 = "";
      *&v120.var0 = 128540770;
      v120.var1 = "Blend";
      re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
      v30 = *(a6 + 88);
      if (!v30)
      {
        goto LABEL_82;
      }

      v31 = *(a6 + 104);
      v32 = v30 << 6;
      do
      {
        *&v120.var0 = 0;
        v120.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v31, &v120, v31, 0.0);
        *&v120.var0 = 7012804;
        v120.var1 = "root";
        *&v115.var0 = 0;
        v115.var1 = "";
        *&v122.var0 = 0;
        v122.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v31, &v120, &v115, &v122);
        v31 += 4;
        v32 -= 64;
      }

      while (v32);
      v33 = *(a6 + 88);
      if (!v33)
      {
        goto LABEL_82;
      }

      v34 = *(a6 + 104);
      v35 = v33 << 6;
      v36 = v34;
      do
      {
        v38 = *v36;
        v36 += 8;
        v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v38 >> 31) ^ (v38 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v38 >> 31) ^ (v38 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v34, v39 ^ (v39 >> 31), &v120);
        re::DynamicArray<re::AssetHandle>::add((v37 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
        v14 = 1;
        v34 = v36;
        v35 -= 64;
      }

      while (v35);
    }
  }

  else if (v15 > 40)
  {
    if (v15 == 41)
    {
      v88 = *(a6 + 24);
      if (!v88)
      {
        goto LABEL_83;
      }

      v89 = *(a1 + 63);
      *(v89 + 80) = v88;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v89 + 88, (a6 + 32));
      re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v89 + 128, (a6 + 72));
      *&v115.var0 = 7012804;
      v115.var1 = "root";
      *&v122.var0 = 0;
      v122.var1 = "";
      *&v120.var0 = 128540770;
      v120.var1 = "Blend";
      re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
      v90 = *(a6 + 88);
      if (!v90)
      {
        goto LABEL_82;
      }

      v91 = *(a6 + 104);
      v92 = v90 << 6;
      do
      {
        *&v120.var0 = 0;
        v120.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v91, &v120, v91, 0.0);
        *&v120.var0 = 7012804;
        v120.var1 = "root";
        *&v115.var0 = 0;
        v115.var1 = "";
        *&v122.var0 = 0;
        v122.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v91, &v120, &v115, &v122);
        v91 += 4;
        v92 -= 64;
      }

      while (v92);
      v93 = *(a6 + 88);
      if (!v93)
      {
        goto LABEL_82;
      }

      v94 = *(a6 + 104);
      v95 = v93 << 6;
      v96 = v94;
      do
      {
        v98 = *v96;
        v96 += 8;
        v99 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v98 >> 31) ^ (v98 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v98 >> 31) ^ (v98 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v94, v99 ^ (v99 >> 31), &v120);
        re::DynamicArray<re::AssetHandle>::add((v97 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
        v14 = 1;
        v94 = v96;
        v95 -= 64;
      }

      while (v95);
    }

    else
    {
      v40 = *(a6 + 24);
      if (!v40)
      {
        goto LABEL_83;
      }

      v41 = *(a1 + 63);
      *(v41 + 80) = v40;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v41 + 88, (a6 + 32));
      re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v41 + 128, (a6 + 72));
      *&v115.var0 = 7012804;
      v115.var1 = "root";
      *&v122.var0 = 0;
      v122.var1 = "";
      *&v120.var0 = 128540770;
      v120.var1 = "Blend";
      re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
      v42 = *(a6 + 88);
      if (!v42)
      {
        goto LABEL_82;
      }

      v43 = *(a6 + 104);
      v44 = v42 << 6;
      do
      {
        *&v120.var0 = 0;
        v120.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v43, &v120, v43, 0.0);
        *&v120.var0 = 7012804;
        v120.var1 = "root";
        *&v115.var0 = 0;
        v115.var1 = "";
        *&v122.var0 = 0;
        v122.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v43, &v120, &v115, &v122);
        v43 += 4;
        v44 -= 64;
      }

      while (v44);
      v45 = *(a6 + 88);
      if (!v45)
      {
        goto LABEL_82;
      }

      v46 = *(a6 + 104);
      v47 = v45 << 6;
      v48 = v46;
      do
      {
        v50 = *v48;
        v48 += 8;
        v51 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v50 >> 31) ^ (v50 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v50 >> 31) ^ (v50 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v46, v51 ^ (v51 >> 31), &v120);
        re::DynamicArray<re::AssetHandle>::add((v49 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
        v14 = 1;
        v46 = v48;
        v47 -= 64;
      }

      while (v47);
    }
  }

  else
  {
    if (v15 != 39)
    {
      if (v15 != 40)
      {
        goto LABEL_84;
      }

      v16 = *(a6 + 24);
      if (v16)
      {
        v17 = *(a1 + 63);
        *(v17 + 80) = v16;
        re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v17 + 88, (a6 + 32));
        re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v17 + 128, (a6 + 72));
        *&v115.var0 = 7012804;
        v115.var1 = "root";
        *&v122.var0 = 0;
        v122.var1 = "";
        *&v120.var0 = 128540770;
        v120.var1 = "Blend";
        re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
        v18 = *(a6 + 88);
        if (v18)
        {
          v19 = *(a6 + 104);
          v20 = v18 << 6;
          do
          {
            *&v120.var0 = 0;
            v120.var1 = "";
            re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v19, &v120, v19, 0.0);
            *&v120.var0 = 7012804;
            v120.var1 = "root";
            *&v115.var0 = 0;
            v115.var1 = "";
            *&v122.var0 = 0;
            v122.var1 = "";
            re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v19, &v120, &v115, &v122);
            v19 += 4;
            v20 -= 64;
          }

          while (v20);
          v21 = *(a6 + 88);
          if (v21)
          {
            v22 = *(a6 + 104);
            v23 = v21 << 6;
            v24 = v22;
            do
            {
              v26 = *v24;
              v24 += 8;
              v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v26 >> 31) ^ (v26 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v26 >> 31) ^ (v26 >> 1))) >> 27));
              re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v22, v27 ^ (v27 >> 31), &v120);
              re::DynamicArray<re::AssetHandle>::add((v25 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
              v14 = 1;
              v22 = v24;
              v23 -= 64;
            }

            while (v23);
            goto LABEL_84;
          }
        }

LABEL_82:
        v14 = 1;
        goto LABEL_84;
      }

LABEL_83:
      v14 = 0;
      goto LABEL_84;
    }

    v64 = *(a6 + 24);
    if (!v64)
    {
      goto LABEL_83;
    }

    v65 = *(a1 + 63);
    *(v65 + 80) = v64;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v65 + 88, (a6 + 32));
    re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v65 + 128, (a6 + 72));
    *&v115.var0 = 7012804;
    v115.var1 = "root";
    *&v122.var0 = 0;
    v122.var1 = "";
    *&v120.var0 = 128540770;
    v120.var1 = "Blend";
    re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
    v66 = *(a6 + 88);
    if (!v66)
    {
      goto LABEL_82;
    }

    v67 = *(a6 + 104);
    v68 = v66 << 6;
    do
    {
      *&v120.var0 = 0;
      v120.var1 = "";
      re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v67, &v120, v67, 0.0);
      *&v120.var0 = 7012804;
      v120.var1 = "root";
      *&v115.var0 = 0;
      v115.var1 = "";
      *&v122.var0 = 0;
      v122.var1 = "";
      re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v67, &v120, &v115, &v122);
      v67 += 4;
      v68 -= 64;
    }

    while (v68);
    v69 = *(a6 + 88);
    if (!v69)
    {
      goto LABEL_82;
    }

    v70 = *(a6 + 104);
    v71 = v69 << 6;
    v72 = v70;
    do
    {
      v74 = *v72;
      v72 += 8;
      v75 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v74 >> 31) ^ (v74 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v74 >> 31) ^ (v74 >> 1))) >> 27));
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v70, v75 ^ (v75 >> 31), &v120);
      re::DynamicArray<re::AssetHandle>::add((v73 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
      v14 = 1;
      v70 = v72;
      v71 -= 64;
    }

    while (v71);
  }

LABEL_84:
  re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v116);
  return v14;
}

uint64_t RETimelineDefinitionBlendTreeAddRigConnection(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v12 = -1;
  if (v10 > 42)
  {
    if (v10 <= 45 || v10 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v10 > 40 || v10 == 39 || v10 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddConnection(a1, a2, a4, a3, a5, &v12);
  }

  return v12;
}

uint64_t RETimelineDefinitionCreateBlendTreeNodeSourceRef(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 44)
    {
      if (v5 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          goto LABEL_29;
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v5 != 46)
      {
LABEL_31:
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v7 = CoreRELog::log;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", buf, 2u);
        }

        goto LABEL_69;
      }

      if (*(v3 + 96) <= a2)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    else if (v5 == 43)
    {
      if (*(v3 + 96) <= a2)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    else if (*(v3 + 96) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v8 = CoreRELog::log;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else if (v5 > 40)
  {
    if (v5 == 41)
    {
      if (*(v3 + 96) <= a2)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    else if (*(v3 + 96) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v8 = CoreRELog::log;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else
  {
    if (v5 != 39)
    {
      if (v5 == 40)
      {
        if (*(v3 + 96) > a2)
        {
          goto LABEL_29;
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

LABEL_67:
        v9 = *(v3 + 96);
        *buf = 134218240;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = v9;
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", buf, 0x16u);
LABEL_68:

LABEL_69:
        v6 = 0;
        goto LABEL_70;
      }

      goto LABEL_31;
    }

    if (*(v3 + 96) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v8 = CoreRELog::log;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

LABEL_29:
  getBlendTreeClip<float>(buf, v3, a2);
  v6 = *&buf[8];
  v11 = *buf;
  v12 = *&buf[8];
  memset(buf, 0, sizeof(buf));
  v13 = *&buf[16];
  re::AssetHandle::~AssetHandle(buf);
  if (v6)
  {
    v6 = *buf;
  }

LABEL_70:
  re::AssetHandle::~AssetHandle(&v11);
  return v6;
}

unint64_t getBlendTreeClip<float>(re::AssetHandle *a1, void *a2, unint64_t a3)
{
  result = re::AnimationBlendTreeDefinition::findClipIndex((a2 + 10), a3);
  if (result >= a2[33])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }

  else
  {
    v6 = (a2[35] + 24 * result);

    return re::AssetHandle::AssetHandle(a1, v6);
  }

  return result;
}

uint64_t RETimelineDefinitionBlendTreeNodeCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v2 = *(v1 + 8);
  if (v2 > 42)
  {
    if (v2 > 45 && v2 != 46)
    {
      goto LABEL_13;
    }

    return *(v1 + 96);
  }

  if (v2 > 40 || v2 == 39 || v2 == 40)
  {
    return *(v1 + 96);
  }

LABEL_13:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", v5, 2u);
  }

  return -1;
}

BOOL RETimelineDefinitionBlendTreeNodeReplaceClip(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v58 = *MEMORY[0x1E69E9840];
  result = RETimelineDefinitionBlendTreeNodeIsClipSource(a1, a2);
  if (result)
  {
    v8 = v7;
    v9 = *(v7 + 2);
    if (v9 <= 42)
    {
      if (v9 > 40)
      {
        goto LABEL_21;
      }

      if (v9 == 39)
      {
LABEL_37:
        ClipIndex = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
        if (ClipIndex >= *(v8 + 33))
        {
          return 0;
        }

        v4 = ClipIndex;
        re::AssetAPIHelper::assetHandleCreate(a3, &v41);
        a3 = *(v8 + 33);
        if (a3 > v4)
        {
          goto LABEL_57;
        }

        v44 = 0;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        *buf = 0u;
        v8 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45 = 136315906;
        v46 = "operator[]";
        v47 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v48 = 789;
        v49 = 2048;
        v50 = v4;
        v51 = 2048;
        v52 = a3;
        _os_log_send_and_compose_impl(v24, &v44, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
        _os_crash_msg();
        __break(1u);
        goto LABEL_43;
      }

      if (v9 != 40)
      {
LABEL_58:
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v37 = CoreRELog::log;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", buf, 2u);
        }

        return 0;
      }

      v10 = re::AnimationBlendTreeDefinition::findClipIndex((v7 + 80), v4);
      if (v10 >= *(v8 + 33))
      {
        return 0;
      }

      v4 = v10;
      re::AssetAPIHelper::assetHandleCreate(a3, &v41);
      a3 = *(v8 + 33);
      if (a3 > v4)
      {
        goto LABEL_57;
      }

      v44 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *buf = 0u;
      v8 = MEMORY[0x1E69E9C10];
      v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v45 = 136315906;
      v46 = "operator[]";
      v47 = 1024;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v48 = 789;
      v49 = 2048;
      v50 = v4;
      v51 = 2048;
      v52 = a3;
      _os_log_send_and_compose_impl(v12, &v44, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
      _os_crash_msg();
      __break(1u);
    }

    if (v9 > 44)
    {
LABEL_29:
      if (v9 == 45)
      {
        goto LABEL_55;
      }

      if (v9 == 46)
      {
        v19 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
        if (v19 >= *(v8 + 33))
        {
          return 0;
        }

        v4 = v19;
        re::AssetAPIHelper::assetHandleCreate(a3, &v41);
        a3 = *(v8 + 33);
        if (a3 > v4)
        {
          goto LABEL_57;
        }

        v44 = 0;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        *buf = 0u;
        v8 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45 = 136315906;
        v46 = "operator[]";
        v47 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v48 = 789;
        v49 = 2048;
        v50 = v4;
        v51 = 2048;
        v52 = a3;
        _os_log_send_and_compose_impl(v21, &v44, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
        _os_crash_msg();
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_58;
    }

    if (v9 == 43)
    {
LABEL_43:
      v25 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
      if (v25 >= *(v8 + 33))
      {
        return 0;
      }

      v4 = v25;
      re::AssetAPIHelper::assetHandleCreate(a3, &v41);
      a3 = *(v8 + 33);
      if (a3 > v4)
      {
        goto LABEL_57;
      }

      v44 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *buf = 0u;
      v8 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v45 = 136315906;
      v46 = "operator[]";
      v47 = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v48 = 789;
      v49 = 2048;
      v50 = v4;
      v51 = 2048;
      v52 = a3;
      _os_log_send_and_compose_impl(v27, &v44, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
      _os_crash_msg();
      __break(1u);
      goto LABEL_49;
    }

    if (v9 != 44)
    {
      goto LABEL_58;
    }

    v13 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
    if (v13 >= *(v8 + 33))
    {
      return 0;
    }

    v4 = v13;
    re::AssetAPIHelper::assetHandleCreate(a3, &v41);
    a3 = *(v8 + 33);
    if (a3 > v4)
    {
      goto LABEL_57;
    }

    v44 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *buf = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v45 = 136315906;
    v46 = "operator[]";
    v47 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v48 = 789;
    v49 = 2048;
    v50 = v4;
    v51 = 2048;
    v52 = a3;
    _os_log_send_and_compose_impl(v15, &v44, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
LABEL_21:
    if (v9 == 41)
    {
LABEL_49:
      v28 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
      if (v28 < *(v8 + 33))
      {
        v4 = v28;
        re::AssetAPIHelper::assetHandleCreate(a3, &v41);
        a3 = *(v8 + 33);
        if (a3 <= v4)
        {
          v44 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          *buf = 0u;
          v8 = MEMORY[0x1E69E9C10];
          v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v45 = 136315906;
          v46 = "operator[]";
          v47 = 1024;
          if (v29)
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          v48 = 789;
          v49 = 2048;
          v50 = v4;
          v51 = 2048;
          v52 = a3;
          _os_log_send_and_compose_impl(v30, &v44, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
          _os_crash_msg();
          __break(1u);
LABEL_55:
          v31 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
          if (v31 < *(v8 + 33))
          {
            v4 = v31;
            re::AssetAPIHelper::assetHandleCreate(a3, &v41);
            v32 = *(v8 + 33);
            if (v32 <= v4)
            {
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              *buf = 0u;
              v38 = MEMORY[0x1E69E9C10];
              v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              if (v39)
              {
                v40 = 3;
              }

              else
              {
                v40 = 2;
              }

              v48 = 789;
              v49 = 2048;
              v50 = v4;
              v51 = 2048;
              v52 = v32;
              _os_log_send_and_compose_impl(v40, &v44, buf, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
              _os_crash_msg();
              __break(1u);
            }

            goto LABEL_57;
          }

          return 0;
        }

LABEL_57:
        v33 = (*(v8 + 35) + 24 * v4);
        v34 = v33[1];
        v33[1] = v42;
        v42 = v34;
        v35 = *v33;
        *v33 = 0;
        *v33 = v41;
        v41 = v35;
        v36 = v33[2];
        v33[2] = v43;
        v43 = v36;
        re::AssetHandle::~AssetHandle(&v41);
        return 1;
      }

      return 0;
    }

    if (v9 != 42)
    {
      goto LABEL_58;
    }

    v16 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
    if (v16 >= *(v8 + 33))
    {
      return 0;
    }

    v4 = v16;
    re::AssetAPIHelper::assetHandleCreate(a3, &v41);
    a3 = *(v8 + 33);
    if (a3 > v4)
    {
      goto LABEL_57;
    }

    v44 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *buf = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v45 = 136315906;
    v46 = "operator[]";
    v47 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v48 = 789;
    v49 = 2048;
    v50 = v4;
    v51 = 2048;
    v52 = a3;
    _os_log_send_and_compose_impl(v18, &v44, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

BOOL RETimelineDefinitionBlendTreeNodeIsClipSource(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 45 && v5 != 46)
    {
      return 0;
    }
  }

  else if (v5 <= 40 && v5 != 39 && v5 != 40)
  {
    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    return 0;
  }

  v6 = (*(v3 + 112) + 88 * a2 + 16);

  return re::StringID::operator==(v6, re::AnimationBlendTreeNodeDescription::kClip);
}

uint64_t RETimelineDefinitionBlendTreeNodeGetName(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 8);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 8);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 96) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 112) + 88 * a2 + 8);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return 0;
    }

    if (*(v3 + 96) > a2)
    {
      return *(*(v3 + 112) + 88 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 96);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return 0;
}

BOOL RETimelineDefinitionBlendTreeNodeIsBlend(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 45 && v5 != 46)
    {
      return 0;
    }
  }

  else if (v5 <= 40 && v5 != 39 && v5 != 40)
  {
    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    return 0;
  }

  v6 = (*(v3 + 112) + 88 * a2);

  return re::AnimationBlendTreeNodeDescription::isBlend(v6);
}

BOOL RETimelineDefinitionBlendTreeNodeIsBlendAdditive(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 45 && v5 != 46)
    {
      return 0;
    }
  }

  else if (v5 <= 40 && v5 != 39 && v5 != 40)
  {
    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    return 0;
  }

  v6 = (*(v3 + 112) + 88 * a2 + 16);

  return re::StringID::operator==(v6, re::AnimationBlendTreeNodeDescription::kBlendAdditive);
}

BOOL RETimelineDefinitionBlendTreeNodeIsInput(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 45 && v5 != 46)
    {
      return 0;
    }
  }

  else if (v5 <= 40 && v5 != 39 && v5 != 40)
  {
    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    return 0;
  }

  v6 = (*(v3 + 112) + 88 * a2 + 16);

  return re::StringID::operator==(v6, re::AnimationBlendTreeNodeDescription::kInput);
}

float RETimelineDefinitionBlendTreeNodeGetWeight(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 80);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 80);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 80);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 80);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 80);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 80);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 96) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 112) + 88 * a2 + 80);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return NAN;
    }

    if (*(v3 + 96) > a2)
    {
      return *(*(v3 + 112) + 88 * a2 + 80);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 96);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return NAN;
}

uint64_t RETimelineDefinitionBlendTreeNodeGetWeightPath(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 72);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 72);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 72);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 72);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 72);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 72);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 96) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 112) + 88 * a2 + 72);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return 0;
    }

    if (*(v3 + 96) > a2)
    {
      return *(*(v3 + 112) + 88 * a2 + 72);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 96);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return 0;
}

BOOL RETimelineDefinitionBlendTreeNodeIsAdditive(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          goto LABEL_48;
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_51;
        }

        if (*(v3 + 96) > a2)
        {
          goto LABEL_48;
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      if (v4 == 43)
      {
        v6 = *(v3 + 96);
        if (v6 > a2)
        {
          goto LABEL_48;
        }

        v14 = 0;
        memset(buf, 0, sizeof(buf));
        v7 = MEMORY[0x1E69E9C10];
        v3 = v6;
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v18 = 797;
        v19 = 2048;
        v20 = a2;
        v21 = 2048;
        v22 = v3;
        _os_log_send_and_compose_impl(v8, &v14, buf, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
        _os_crash_msg();
        __break(1u);
        goto LABEL_42;
      }

      if (*(v3 + 96) > a2)
      {
        goto LABEL_48;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }
    }

LABEL_59:
    v12 = *(v3 + 96);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a2;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v12;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", buf, 0x16u);
LABEL_60:

    return 0;
  }

  if (v4 > 40)
  {
    if (v4 != 41)
    {
      if (*(v3 + 96) > a2)
      {
        goto LABEL_48;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

LABEL_42:
    if (*(v3 + 96) > a2)
    {
      goto LABEL_48;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v4 == 39)
  {
    if (*(v3 + 96) > a2)
    {
      goto LABEL_48;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v4 != 40)
  {
LABEL_51:
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", buf, 2u);
    }

    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_48:
  v9 = (*(v3 + 112) + 88 * a2 + 16);

  return re::StringID::operator==(v9, re::AnimationBlendTreeNodeDescription::kBlendAdditive);
}

uint64_t RETimelineDefinitionBlendTreeConnectionCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v2 = *(v1 + 8);
  if (v2 > 42)
  {
    if (v2 > 45 && v2 != 46)
    {
      goto LABEL_13;
    }

    return *(v1 + 136);
  }

  if (v2 > 40 || v2 == 39 || v2 == 40)
  {
    return *(v1 + 136);
  }

LABEL_13:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", v5, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionBlendTreeConnectionGetSource(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 136) > a2)
        {
          return *(*(v3 + 152) + 160 * a2 + 8);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 136) > a2)
        {
          return *(*(v3 + 152) + 160 * a2 + 8);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 136) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 152) + 160 * a2 + 8);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return 0;
    }

    if (*(v3 + 136) > a2)
    {
      return *(*(v3 + 152) + 160 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 136);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid connection index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return 0;
}

uint64_t RETimelineDefinitionBlendTreeConnectionGetTarget(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 136) > a2)
        {
          return *(*(v3 + 152) + 160 * a2 + 88);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 136) > a2)
        {
          return *(*(v3 + 152) + 160 * a2 + 88);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 88);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 88);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 88);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 88);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 136) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 152) + 160 * a2 + 88);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return 0;
    }

    if (*(v3 + 136) > a2)
    {
      return *(*(v3 + 152) + 160 * a2 + 88);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 136);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid connection index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return 0;
}

uint64_t RETimelineDefinitionBlendTreeAddNodeFromSource(void *a1, uint64_t a2, unint64_t a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = a1[6];
  if (!v6)
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    if (v7)
    {
      v6 = *(v7 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(a2 + 48);
  if (!v8)
  {
    v8 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24)) + 8);
  }

  v9 = *(v6 + 8);
  if (v9 != *(v8 + 8))
  {
    return 0;
  }

  result = 0;
  if (v9 <= 42)
  {
    if (v9 > 40)
    {
      if (v9 != 41)
      {
        v15 = *(a2 + 48);
        if (!v15)
        {
          v16 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
          if (v16)
          {
            v15 = *(v16 + 8);
          }

          else
          {
            v15 = 0;
          }
        }

        v27 = v15[12];
        if (v27 > a3)
        {
          v28 = v15[14] + 88 * a3;
          v72 = -1;
          if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
          {
            v44 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            v30 = *(v28 + 8);
            v31 = *(v28 + 80);
            v32 = *(v28 + 72);
            if (v44)
            {
              goto LABEL_123;
            }

            goto LABEL_131;
          }

          if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
          {
            getBlendTreeClip<float>(&v81, v15, a3);
            if (*(&v81 + 1))
            {
              v45 = *(v28 + 8);
              re::AssetHandle::AssetHandle(&v73, &v81);
              TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(a1, v45, &v73, *(v28 + 72), &v72, *(v28 + 80));
              goto LABEL_127;
            }

            goto LABEL_128;
          }

          if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
          {
            goto LABEL_133;
          }

          goto LABEL_134;
        }

        goto LABEL_164;
      }

      v23 = *(a2 + 48);
      if (!v23)
      {
        v24 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v24)
        {
          v23 = *(v24 + 8);
        }

        else
        {
          v23 = 0;
        }
      }

      v27 = v23[12];
      if (v27 > a3)
      {
        v28 = v23[14] + 88 * a3;
        v72 = -1;
        if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
        {
          v36 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
          v30 = *(v28 + 8);
          v31 = *(v28 + 80);
          v32 = *(v28 + 72);
          if (!v36)
          {
            goto LABEL_131;
          }

          goto LABEL_123;
        }

        if (!re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
        {
          if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
          {
            goto LABEL_133;
          }

          goto LABEL_134;
        }

        getBlendTreeClip<float>(&v81, v23, a3);
        if (!*(&v81 + 1))
        {
          goto LABEL_128;
        }

        v37 = *(v28 + 8);
        re::AssetHandle::AssetHandle(&v73, &v81);
        TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(a1, v37, &v73, *(v28 + 72), &v72, *(v28 + 80));
        goto LABEL_127;
      }

      goto LABEL_148;
    }

    if (v9 != 39)
    {
      if (v9 != 40)
      {
        return result;
      }

      v11 = *(a2 + 48);
      if (!v11)
      {
        v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v12)
        {
          v11 = *(v12 + 8);
        }

        else
        {
          v11 = 0;
        }
      }

      v27 = v11[12];
      if (v27 > a3)
      {
        v28 = v11[14] + 88 * a3;
        v72 = -1;
        if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
        {
          v40 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
          v30 = *(v28 + 8);
          v31 = *(v28 + 80);
          v32 = *(v28 + 72);
          if (v40)
          {
            goto LABEL_123;
          }

LABEL_131:
          TimelineDefinitionForBlendTree<float>::doAddBlendNode(a1, v30, v32, &v72, v31);
          return v72;
        }

        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
        {
          getBlendTreeClip<float>(&v81, v11, a3);
          if (*(&v81 + 1))
          {
            v41 = *(v28 + 8);
            re::AssetHandle::AssetHandle(&v73, &v81);
            TimelineDefinitionForBlendTree<double>::doAddTimeline(a1, v41, &v73, *(v28 + 72), &v72, *(v28 + 80));
            goto LABEL_127;
          }

LABEL_128:
          re::AssetHandle::~AssetHandle(&v81);
          return v72;
        }

        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      goto LABEL_156;
    }

    v19 = *(a2 + 48);
    if (!v19)
    {
      v20 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v20)
      {
        v19 = *(v20 + 8);
      }

      else
      {
        v19 = 0;
      }
    }

    v27 = v19[12];
    if (v27 > a3)
    {
      v28 = v19[14] + 88 * a3;
      v72 = -1;
      if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
      {
        v29 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
        v30 = *(v28 + 8);
        v31 = *(v28 + 80);
        v32 = *(v28 + 72);
        if (!v29)
        {
          goto LABEL_131;
        }

        goto LABEL_123;
      }

      if (!re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      getBlendTreeClip<float>(&v81, v19, a3);
      if (!*(&v81 + 1))
      {
        goto LABEL_128;
      }

      v33 = *(v28 + 8);
      re::AssetHandle::AssetHandle(&v73, &v81);
      TimelineDefinitionForBlendTree<float>::doAddTimeline(a1, v33, &v73, *(v28 + 72), &v72, *(v28 + 80));
LABEL_127:
      re::AssetHandle::~AssetHandle(&v73);
      goto LABEL_128;
    }

    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v76 = 797;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = v27;
    _os_log_send_and_compose_impl(v49, &v72, &v81, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v73, 38, v71);
    _os_crash_msg();
    __break(1u);
LABEL_144:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v76 = 797;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = v27;
    _os_log_send_and_compose_impl(v52, &v72, &v81, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v73, 38, v71);
    _os_crash_msg();
    __break(1u);
LABEL_148:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v76 = 797;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = v27;
    _os_log_send_and_compose_impl(v55, &v72, &v81, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v73, 38, v71);
    _os_crash_msg();
    __break(1u);
    goto LABEL_152;
  }

  if (v9 <= 44)
  {
    if (v9 != 43)
    {
      v13 = *(a2 + 48);
      if (!v13)
      {
        v14 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v14)
        {
          v13 = *(v14 + 8);
        }

        else
        {
          v13 = 0;
        }
      }

      v27 = v13[12];
      if (v27 > a3)
      {
        v28 = v13[14] + 88 * a3;
        v72 = -1;
        if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
        {
          v42 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
          v30 = *(v28 + 8);
          v31 = *(v28 + 80);
          v32 = *(v28 + 72);
          if (v42)
          {
            goto LABEL_123;
          }

          goto LABEL_131;
        }

        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
        {
          getBlendTreeClip<float>(&v81, v13, a3);
          if (*(&v81 + 1))
          {
            v43 = *(v28 + 8);
            re::AssetHandle::AssetHandle(&v73, &v81);
            TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(a1, v43, &v73, *(v28 + 72), &v72, *(v28 + 80));
            goto LABEL_127;
          }

          goto LABEL_128;
        }

        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
LABEL_133:
          TimelineDefinitionForBlendTree<float>::doAddInput(a1, *(v28 + 8), *(v28 + 40), *(v28 + 56), *(v28 + 72), &v72, *(v28 + 80));
          return v72;
        }

LABEL_134:
        TimelineDefinitionForBlendTree<float>::doAddRigNode(a1, *(v28 + 24), *(v28 + 8), *(v28 + 72), &v72, *(v28 + 80));
        return v72;
      }

      goto LABEL_160;
    }

    v21 = *(a2 + 48);
    if (!v21)
    {
      v22 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v22)
      {
        v21 = *(v22 + 8);
      }

      else
      {
        v21 = 0;
      }
    }

    v27 = v21[12];
    if (v27 > a3)
    {
      v28 = v21[14] + 88 * a3;
      v72 = -1;
      if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
      {
        v34 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
        v30 = *(v28 + 8);
        v31 = *(v28 + 80);
        v32 = *(v28 + 72);
        if (!v34)
        {
          goto LABEL_131;
        }

        goto LABEL_123;
      }

      if (!re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      getBlendTreeClip<float>(&v81, v21, a3);
      if (!*(&v81 + 1))
      {
        goto LABEL_128;
      }

      v35 = *(v28 + 8);
      re::AssetHandle::AssetHandle(&v73, &v81);
      TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(a1, v35, &v73, *(v28 + 72), &v72, *(v28 + 80));
      goto LABEL_127;
    }

    goto LABEL_144;
  }

  if (v9 == 45)
  {
    v25 = *(a2 + 48);
    if (!v25)
    {
      v26 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v26)
      {
        v25 = *(v26 + 8);
      }

      else
      {
        v25 = 0;
      }
    }

    v27 = v25[12];
    if (v27 > a3)
    {
      v28 = v25[14] + 88 * a3;
      v72 = -1;
      if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
      {
        v38 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
        v30 = *(v28 + 8);
        v31 = *(v28 + 80);
        v32 = *(v28 + 72);
        if (!v38)
        {
          goto LABEL_131;
        }

        goto LABEL_123;
      }

      if (!re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      getBlendTreeClip<float>(&v81, v25, a3);
      if (!*(&v81 + 1))
      {
        goto LABEL_128;
      }

      v39 = *(v28 + 8);
      re::AssetHandle::AssetHandle(&v73, &v81);
      TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(a1, v39, &v73, *(v28 + 72), &v72, *(v28 + 80));
      goto LABEL_127;
    }

LABEL_152:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v76 = 797;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = v27;
    _os_log_send_and_compose_impl(v58, &v72, &v81, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v73, 38, v71);
    _os_crash_msg();
    __break(1u);
LABEL_156:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v76 = 797;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = v27;
    _os_log_send_and_compose_impl(v61, &v72, &v81, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v73, 38, v71);
    _os_crash_msg();
    __break(1u);
LABEL_160:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v76 = 797;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = v27;
    _os_log_send_and_compose_impl(v64, &v72, &v81, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v73, 38, v71);
    _os_crash_msg();
    __break(1u);
LABEL_164:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v76 = 797;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = v27;
    _os_log_send_and_compose_impl(v67, &v72, &v81, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v73, 38, v71);
    _os_crash_msg();
    __break(1u);
    goto LABEL_168;
  }

  if (v9 != 46)
  {
    return result;
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    v18 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
    if (v18)
    {
      v17 = *(v18 + 8);
    }

    else
    {
      v17 = 0;
    }
  }

  v27 = v17[12];
  if (v27 <= a3)
  {
LABEL_168:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    v76 = 797;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = v27;
    _os_log_send_and_compose_impl(v70, &v72, &v81, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v73, 38, v71);
    _os_crash_msg();
    __break(1u);
  }

  v28 = v17[14] + 88 * a3;
  v72 = -1;
  if (!re::AnimationBlendTreeNodeDescription::isBlend(v28))
  {
    if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
    {
      getBlendTreeClip<float>(&v81, v17, a3);
      if (*(&v81 + 1))
      {
        v47 = *(v28 + 8);
        re::AssetHandle::AssetHandle(&v73, &v81);
        TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(a1, v47, &v73, *(v28 + 72), &v72, *(v28 + 80));
        goto LABEL_127;
      }

      goto LABEL_128;
    }

    if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
    {
      goto LABEL_133;
    }

    goto LABEL_134;
  }

  v46 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
  v30 = *(v28 + 8);
  v31 = *(v28 + 80);
  v32 = *(v28 + 72);
  if (!v46)
  {
    goto LABEL_131;
  }

LABEL_123:
  TimelineDefinitionForBlendTree<float>::doAddAdditiveBlendNode(a1, v30, v32, &v72, v31);
  return v72;
}

uint64_t RETimelineDefinitionBlendTreeAddConnectionFromSource(void *a1, uint64_t a2, unint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a1[6];
  if (!v6)
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    if (v7)
    {
      v6 = *(v7 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(a2 + 48);
  if (!v8)
  {
    v8 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24)) + 8);
  }

  v9 = *(v6 + 8);
  if (v9 != *(v8 + 8))
  {
    return 0;
  }

  result = 0;
  if (v9 > 42)
  {
    if (v9 > 44)
    {
      if (v9 != 45)
      {
        if (v9 != 46)
        {
          return result;
        }

        v11 = *(a2 + 48);
        if (!v11)
        {
          v15 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
          if (v15)
          {
            v11 = *(v15 + 8);
          }

          else
          {
            v11 = 0;
          }
        }

        v20 = *(v11 + 136);
        if (v20 <= a3)
        {
LABEL_95:
          v46 = 0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v55 = 0u;
          v42 = MEMORY[0x1E69E9C10];
          v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v47 = 136315906;
          v48 = "operator[]";
          v49 = 1024;
          if (v43)
          {
            v44 = 3;
          }

          else
          {
            v44 = 2;
          }

          v50 = 797;
          v51 = 2048;
          v52 = a3;
          v53 = 2048;
          v54 = v20;
          _os_log_send_and_compose_impl(v44, &v46, &v55, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
          _os_crash_msg();
          __break(1u);
        }

        goto LABEL_65;
      }

      v11 = *(a2 + 48);
      if (!v11)
      {
        v19 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v19)
        {
          v11 = *(v19 + 8);
        }

        else
        {
          v11 = 0;
        }
      }

      v20 = *(v11 + 136);
      if (v20 > a3)
      {
        goto LABEL_65;
      }

LABEL_79:
      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v30 = MEMORY[0x1E69E9C10];
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v47 = 136315906;
      v48 = "operator[]";
      v49 = 1024;
      if (v31)
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v50 = 797;
      v51 = 2048;
      v52 = a3;
      v53 = 2048;
      v54 = v20;
      _os_log_send_and_compose_impl(v32, &v46, &v55, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
      _os_crash_msg();
      __break(1u);
LABEL_83:
      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v47 = 136315906;
      v48 = "operator[]";
      v49 = 1024;
      if (v34)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v50 = 797;
      v51 = 2048;
      v52 = a3;
      v53 = 2048;
      v54 = v20;
      _os_log_send_and_compose_impl(v35, &v46, &v55, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
      _os_crash_msg();
      __break(1u);
LABEL_87:
      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v36 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v47 = 136315906;
      v48 = "operator[]";
      v49 = 1024;
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v50 = 797;
      v51 = 2048;
      v52 = a3;
      v53 = 2048;
      v54 = v20;
      _os_log_send_and_compose_impl(v38, &v46, &v55, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
      _os_crash_msg();
      __break(1u);
LABEL_91:
      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v47 = 136315906;
      v48 = "operator[]";
      v49 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v50 = 797;
      v51 = 2048;
      v52 = a3;
      v53 = 2048;
      v54 = v20;
      _os_log_send_and_compose_impl(v41, &v46, &v55, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
      _os_crash_msg();
      __break(1u);
      goto LABEL_95;
    }

    if (v9 != 43)
    {
      v11 = *(a2 + 48);
      if (!v11)
      {
        v13 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v13)
        {
          v11 = *(v13 + 8);
        }

        else
        {
          v11 = 0;
        }
      }

      v20 = *(v11 + 136);
      if (v20 <= a3)
      {
        goto LABEL_87;
      }

      goto LABEL_65;
    }

    v11 = *(a2 + 48);
    if (!v11)
    {
      v17 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v17)
      {
        v11 = *(v17 + 8);
      }

      else
      {
        v11 = 0;
      }
    }

    v20 = *(v11 + 136);
    if (v20 > a3)
    {
      goto LABEL_65;
    }

    goto LABEL_71;
  }

  if (v9 > 40)
  {
    if (v9 != 41)
    {
      v11 = *(a2 + 48);
      if (!v11)
      {
        v14 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v14)
        {
          v11 = *(v14 + 8);
        }

        else
        {
          v11 = 0;
        }
      }

      v20 = *(v11 + 136);
      if (v20 <= a3)
      {
        goto LABEL_91;
      }

      goto LABEL_65;
    }

    v11 = *(a2 + 48);
    if (!v11)
    {
      v18 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v18)
      {
        v11 = *(v18 + 8);
      }

      else
      {
        v11 = 0;
      }
    }

    v20 = *(v11 + 136);
    if (v20 > a3)
    {
      goto LABEL_65;
    }

    goto LABEL_75;
  }

  if (v9 != 39)
  {
    if (v9 != 40)
    {
      return result;
    }

    v11 = *(a2 + 48);
    if (!v11)
    {
      v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v12)
      {
        v11 = *(v12 + 8);
      }

      else
      {
        v11 = 0;
      }
    }

    v20 = *(v11 + 136);
    if (v20 > a3)
    {
      goto LABEL_65;
    }

    goto LABEL_83;
  }

  v11 = *(a2 + 48);
  if (!v11)
  {
    v16 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
    if (v16)
    {
      v11 = *(v16 + 8);
    }

    else
    {
      v11 = 0;
    }
  }

  v20 = *(v11 + 136);
  if (v20 <= a3)
  {
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = a3;
    v53 = 2048;
    v54 = v20;
    _os_log_send_and_compose_impl(v23, &v46, &v55, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = a3;
    v53 = 2048;
    v54 = v20;
    _os_log_send_and_compose_impl(v26, &v46, &v55, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
LABEL_75:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = a3;
    v53 = 2048;
    v54 = v20;
    _os_log_send_and_compose_impl(v29, &v46, &v55, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_79;
  }

LABEL_65:
  v21 = (*(v11 + 152) + 160 * a3);
  *&v55 = -1;
  TimelineDefinitionForBlendTree<float>::doAddConnection(a1, v21[1], v21[11], v21[9], v21[19], &v55);
  return v55;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateTypedEventTimeline(re *a1, const char *a2, char a3)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 640, 8);
  re::EventTimelineAssetData::EventTimelineAssetData(v7);
  v14[0] = &unk_1F5D2B340;
  v14[3] = v14;
  v15 = v8;
  v16[3] = v16;
  v16[0] = &unk_1F5D2B340;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v15);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v14);
  v9 = v13;
  v15 = 0;
  v16[0] = &str_67;
  v11 = re::StringID::operator=(v10 + 10, &v15);
  if (v15)
  {
    if (v15)
    {
    }
  }

  *(v10 + 552) = a3;
  return v9;
}

uint64_t RETimelineDefinitionEventTimelineGetAnimatableType(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 48)
  {
    return *(v1 + 552);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetAnimatableType - Wrong timeline type. Expected an event timeline.", v5, 2u);
    }

    return -1;
  }
}

uint64_t RETimelineDefinitionEventTimelineGetEventTypeName(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 48)
  {
    return *(v1 + 88);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetAnimatableType - Wrong timeline type. Expected an event timeline.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionEventTimelineGetReversible(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 48)
  {
    v2 = *(v1 + 592);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetAnimatableType - Wrong timeline type. Expected an event timeline.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

void RETimelineDefinitionEventTimelineSetReversible(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  if (*(v3 + 2) == 48)
  {
    *(v3 + 592) = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetAnimatableType - Wrong timeline type. Expected an event timeline.", v5, 2u);
    }
  }
}

BOOL RETimelineDefinitionEventTimelineSetConstantData(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 48)
  {
    v7 = v5;
    v11[0] = a2;
    v11[1] = a3;
    re::FixedArray<unsigned char>::FixedArray(buf, v11);
    re::FixedArray<unsigned char>::operator=(v7 + 70, buf);
    v8 = *(v7 + 73);
    *(v7 + 73) = 0;

    if (*buf && v13)
    {
      (*(**buf + 40))();
    }
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
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }
  }

  return v6 == 48;
}

BOOL RETimelineDefinitionEventTimelineSetAndRetainSwiftConstantData(_anonymous_namespace_::TimelineDefinition *a1, void *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 48)
  {
    v5 = v3;
    v6 = a2;
    v8 = v6;
    re::FixedArray<CoreIKTransform>::deinit(v5 + 70);
    re::ObjCObject::operator=(v5 + 73, &v8);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }
  }

  return v4 == 48;
}

id RETimelineDefinitionEventTimelineGetSwiftConstantData(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 48)
  {
    v2 = *(v1 + 73);
    v3 = v2;

    return v2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionEventTimelineGetConstantDataSize(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 48)
  {
    return *(v1 + 71);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionEventTimelineGetConstantData(_anonymous_namespace_::TimelineDefinition *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(v1 + 2) == 48)
  {
    if (*(v1 + 71))
    {
      return *(v1 + 72);
    }

    v7 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *buf = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v11 = 476;
    v12 = 2048;
    v13 = 0;
    v14 = 2048;
    v15 = 0;
    _os_log_send_and_compose_impl(v5, &v7, buf, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_12:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", buf, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionEventTimelineAddEvent(_anonymous_namespace_::TimelineDefinition *a1, float a2, float a3)
{
  if (*(v5 + 2) != 48)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = 0;
    v9 = "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.";
    v10 = &v12;
    goto LABEL_13;
  }

  re::TimelineEventData::addEvent((v5 + 80), a2, a3, v6, &v12);
  if (v12 == 1)
  {
    return v13;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v8 = CoreRELog::log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 0;
    v9 = "Cannot set event on timline. Check that time and duration does not overlap with existing event.";
    v10 = &v11;
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
  }

LABEL_11:

  return -1;
}

BOOL RETimelineDefinitionEventTimelineAddParameter(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, int a3)
{
  if (*(v5 + 2) == 48)
  {
    v6 = v5;
    *&v11.var0 = 0;
    v11.var1 = &str_67;
    v7 = re::TimelineEventData::addParameterDescription(v6 + 10, &v11, a3);
    v8 = v7;
    if (*&v11.var0)
    {
      if (*&v11.var0)
      {
      }
    }
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
      *&v11.var0 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddParameter - Wrong timeline type. Expected an event timeline.", &v11, 2u);
    }

    return 0;
  }

  return v8;
}

BOOL RETimelineDefinitionEventTimelineSetParameterData(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(v9 + 2) == 48)
  {
    v10 = v9;
    *buf = a4;
    *&buf[8] = a5;
    re::FixedArray<unsigned char>::FixedArray(v27, buf);
    if (a2)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = a2[1];
        if (v12)
        {
          v13 = a2 + 2;
          do
          {
            v11 = 31 * v11 + v12;
            v14 = *v13++;
            v12 = v14;
          }

          while (v14);
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v25 = 2 * v11;
    v26 = a2;
    v17 = re::TimelineEventData::parameterDescription((v10 + 80), &v25);
    v16 = v18 == 5;
    if (v18 == 5)
    {
      v19 = v17 + *(v10 + 57) * a3;
      v20 = *(v10 + 60);
      if (v20 <= v19)
      {
        v28 = 0;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        *buf = 0u;
        v22 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v29 = 136315906;
        v30 = "operator[]";
        v31 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v32 = 789;
        v33 = 2048;
        v34 = v19;
        v35 = 2048;
        v36 = v20;
        _os_log_send_and_compose_impl(v24, &v28, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v25, v26);
        _os_crash_msg();
        __break(1u);
      }

      v17 = re::FixedArray<unsigned char>::operator=((*(v10 + 62) + 24 * v19), v27);
    }

    if (v25)
    {
      if (v25)
      {
      }
    }

    if (v27[0] && v27[1])
    {
      (*(*v27[0] + 40))();
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterData - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v16;
}

BOOL RETimelineDefinitionEventTimelineSetAndRetainSwiftParameter(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 48)
  {
    v8 = v7;
    if (a2)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2[1];
        if (v10)
        {
          v11 = a2 + 2;
          do
          {
            v9 = 31 * v9 + v10;
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v28[0] = 2 * v9;
    v28[1] = a2;
    v15 = a4;
    v27 = v15;
    v16 = re::TimelineEventData::parameterDescription((v8 + 80), v28);
    v14 = v17 == 6;
    if (v17 == 6)
    {
      v18 = v16 + *(v8 + 63) * a3;
      v19 = *(v8 + 66);
      if (v19 <= v18)
      {
        v29 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        *buf = 0u;
        v22 = MEMORY[0x1E69E9C10];
        v23 = v18;
        v24 = v19;
        v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v30 = 136315906;
        v31 = "operator[]";
        v32 = 1024;
        if (v25)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        v33 = 789;
        v34 = 2048;
        v35 = v23;
        v36 = 2048;
        v37 = v24;
        _os_log_send_and_compose_impl(v26, &v29, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28[0]);
        _os_crash_msg();
        __break(1u);
      }

      re::ObjCObject::operator=((*(v8 + 68) + 8 * v18), &v27);
    }

    if (v28[0])
    {
      if (v28[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterData - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v14;
}

BOOL RETimelineDefinitionEventTimelineSetParameterInt(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 48)
  {
    v8 = v7;
    if (a2)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2[1];
        if (v10)
        {
          v11 = a2 + 2;
          do
          {
            v9 = 31 * v9 + v10;
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v25[0] = 2 * v9;
    v25[1] = a2;
    v15 = re::TimelineEventData::parameterDescription((v7 + 80), v25);
    v14 = v16 == 2;
    if (v16 == 2)
    {
      v17 = v15 + *(v8 + 39) * a3;
      v18 = *(v8 + 42);
      if (v18 <= v17)
      {
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *buf = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = v18;
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v30 = 789;
        v31 = 2048;
        v32 = v17;
        v33 = 2048;
        v34 = v21;
        _os_log_send_and_compose_impl(v23, &v26, buf, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v24, v25[0]);
        _os_crash_msg();
        __break(1u);
      }

      *(*(v8 + 44) + 4 * v17) = a4;
    }

    if (v25[0])
    {
      if (v25[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterInt - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v14;
}

BOOL RETimelineDefinitionEventTimelineSetParameterFloat(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, float a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 48)
  {
    v8 = v7;
    if (a2)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2[1];
        if (v10)
        {
          v11 = a2 + 2;
          do
          {
            v9 = 31 * v9 + v10;
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v26[0] = 2 * v9;
    v26[1] = a2;
    v15 = re::TimelineEventData::parameterDescription((v7 + 80), v26);
    v14 = v16 == 1;
    if (v16 == 1)
    {
      v17 = v15 + *(v8 + 33) * a3;
      v18 = *(v8 + 36);
      if (v18 <= v17)
      {
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *buf = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = v17;
        v22 = v18;
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v31 = 789;
        v32 = 2048;
        v33 = v21;
        v34 = 2048;
        v35 = v22;
        _os_log_send_and_compose_impl(v24, &v27, buf, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v25, v26[0]);
        _os_crash_msg();
        __break(1u);
      }

      *(*(v8 + 38) + 4 * v17) = a4;
    }

    if (v26[0])
    {
      if (v26[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterFloat - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v14;
}

BOOL RETimelineDefinitionEventTimelineSetParameterString(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, const char *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 48)
  {
    v8 = v7;
    if (a2)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2[1];
        if (v10)
        {
          v11 = a2 + 2;
          do
          {
            v9 = 31 * v9 + v10;
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v28 = 2 * v9;
    v29 = a2;
    v26 = 0;
    v27 = &str_67;
    v15 = re::TimelineEventData::parameterDescription((v8 + 80), &v28);
    v14 = v16 == 3;
    if (v16 == 3)
    {
      v17 = v15 + *(v8 + 45) * a3;
      v18 = *(v8 + 48);
      if (v18 <= v17)
      {
        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        *buf = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = v17;
        v22 = v18;
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v34 = 789;
        v35 = 2048;
        v36 = v21;
        v37 = 2048;
        v38 = v22;
        _os_log_send_and_compose_impl(v24, &v30, buf, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v25, v26);
        _os_crash_msg();
        __break(1u);
      }

      v15 = re::StringID::operator=((*(v8 + 50) + 16 * v17), &v26);
    }

    if (v26)
    {
      if (v26)
      {
      }
    }

    if (v28)
    {
      if (v28)
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterString - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v14;
}

BOOL RETimelineDefinitionEventTimelineSetParameterVector4(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, __n128 a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(v6 + 2) == 48)
  {
    v7 = v6;
    if (a2)
    {
      v8 = *a2;
      if (*a2)
      {
        v9 = a2[1];
        if (v9)
        {
          v10 = a2 + 2;
          do
          {
            v8 = 31 * v8 + v9;
            v11 = *v10++;
            v9 = v11;
          }

          while (v11);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v25[0] = 2 * v8;
    v25[1] = a2;
    v14 = re::TimelineEventData::parameterDescription((v6 + 80), v25);
    v13 = v15 == 4;
    if (v15 == 4)
    {
      v16 = v14 + *(v7 + 51) * a3;
      v17 = *(v7 + 54);
      if (v17 <= v16)
      {
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *buf = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = v16;
        v21 = v17;
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v30 = 789;
        v31 = 2048;
        v32 = v20;
        v33 = 2048;
        v34 = v21;
        _os_log_send_and_compose_impl(v23, &v26, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, a4.n128_u64[0], a4.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
      }

      *(*(v7 + 56) + 16 * v16) = a4;
    }

    if (v25[0])
    {
      if (v25[0])
      {
      }
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
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterVector4 - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v13;
}

uint64_t RETimelineDefinitionEventTimelineGetEventCount(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 48)
  {
    return *(v1 + 24) + *(v1 + 14);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetEventCount - Wrong timeline type. Expected an event timeline.", v4, 2u);
  }

  return 0x7FFFFFFFLL;
}

float RETimelineDefinitionEventTimelineGetEventStartTime(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  if (*(v3 + 2) != 48)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetEventStartTime. - Wrong timeline type. Expected an event timeline.", v9, 2u);
    }

    return NAN;
  }

  v4 = *(v3 + 14);
  v5 = a2 - v4;
  if (a2 >= v4)
  {
    if (v5 < *(v3 + 24))
    {
      v6 = 128;
      a2 = v5;
      return *(*(v3 + v6 + 80) + 4 * a2);
    }

    return NAN;
  }

  v6 = 48;
  return *(*(v3 + v6 + 80) + 4 * a2);
}

float RETimelineDefinitionEventTimelineGetEventDuration(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  if (*(v3 + 2) == 48)
  {
    v4 = *(v3 + 19);
    v5 = a2 >= v4;
    v6 = a2 - v4;
    if (v5)
    {
      result = NAN;
      if (v6 < *(v3 + 24))
      {
        return 0.0;
      }
    }

    else
    {
      return *(*(v3 + 21) + 4 * a2);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetEventDuration - Wrong timeline type. Expected an event timeline.", v9, 2u);
    }

    return NAN;
  }

  return result;
}

uint64_t RETimelineDefinitionEventTimelineGetParameterCount(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 48)
  {
    return *(v1 + 61);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterCount - Wrong timeline type. Expected an event timeline.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionEventTimelineGetParameterName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  if (*(v3 + 2) == 48)
  {
    v4 = (v3 + 80);

    return re::TimelineEventData::parameterName(v4, a2);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterName - Wrong timeline type. Expected an event timeline.", v7, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionEventTimelineGetParameterType(_anonymous_namespace_::TimelineDefinition *a1, char *a2)
{
  if (*(v3 + 2) == 48)
  {
    if (a2)
    {
      v4 = *a2;
      if (*a2)
      {
        v5 = a2[1];
        if (v5)
        {
          v6 = a2 + 2;
          do
          {
            v4 = 31 * v4 + v5;
            v7 = *v6++;
            v5 = v7;
          }

          while (v7);
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v13[0] = 2 * v4;
    v13[1] = a2;
    v10 = re::TimelineEventData::parameterDescription((v3 + 80), v13);
    v9 = v11;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterType - Wrong timeline type. Expected an event timeline.", v13, 2u);
    }

    return 0;
  }

  return v9;
}

uint64_t re::TimelineEventData::parameterDescription(re::TimelineEventData *this, const re::StringID *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 136, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(*(this + 19) + 40 * v6 + 24);
  }
}

uint64_t RETimelineDefinitionEventTimelineGetEventParameterData(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 48)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterData - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  *buf = 2 * v6;
  *&buf[8] = a2;
  v11 = re::TimelineEventData::parameter<re::FixedArray<unsigned char>>((v5 + 80), a3, buf);
  v12 = v11;
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  if (!v12)
  {
    return 0;
  }

  if (!*(v12 + 1))
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
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

    v21 = 476;
    v22 = 2048;
    v23 = 0;
    v24 = 2048;
    v25 = 0;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  return *(v12 + 2);
}

uint64_t re::TimelineEventData::parameter<re::FixedArray<unsigned char>>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 5)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 47) * a2;
  v8 = *(a1 + 50);
  if (v8 <= v7)
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

    v17 = 797;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 52) + 24 * v7;
}

id RETimelineDefinitionEventTimelineGetEventSwiftParameter(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) != 48)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterData - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }

  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v14[0] = 2 * v6;
  v14[1] = a2;
  v11 = re::TimelineEventData::parameter<re::ObjCObject>((v5 + 80), a3, v14);
  v12 = v11;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if (!v12)
  {
    return 0;
  }

  result = *v12;
  if (*v12)
  {
    return result;
  }

  return result;
}

uint64_t re::TimelineEventData::parameter<re::ObjCObject>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 6)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 53) * a2;
  v8 = *(a1 + 56);
  if (v8 <= v7)
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

    v17 = 797;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 58) + 8 * v7;
}

uint64_t RETimelineDefinitionEventTimelineGetEventParameterDataSize(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
  {
    if (a2)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = a2[1];
        if (v7)
        {
          v8 = a2 + 2;
          do
          {
            v6 = 31 * v6 + v7;
            v9 = *v8++;
            v7 = v9;
          }

          while (v9);
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v11 = re::TimelineEventData::parameter<re::FixedArray<unsigned char>>((v5 + 80), a3, v14);
    v12 = v11;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    if (v12)
    {
      return *(v12 + 1);
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
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterData - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }
  }

  return 0;
}

_anonymous_namespace_ *RETimelineDefinitionEventTimelineGetParameterInt(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
  {
    if (a2)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = a2[1];
        if (v7)
        {
          v8 = a2 + 2;
          do
          {
            v6 = 31 * v6 + v7;
            v9 = *v8++;
            v7 = v9;
          }

          while (v9);
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v12 = re::TimelineEventData::parameter<int>((v5 + 80), a3, v14);
    v11 = v12;
    if (v14[0])
    {
      if (v14[0])
      {
      }
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
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterInt - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }

  return v11;
}