uint64_t H16ISP::H16ISPFrameReceiver::SetMetaDataOptions(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 984) = *(a2 + 4);
  *(a1 + 952) = v2;
  *(a1 + 968) = v3;
  return 0;
}

uint64_t H16ISP::H16ISPFilterGraphNode::EnqueueMessage(H16ISP::H16ISPFilterGraphNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  if (*(this + 16) != 1)
  {
    return 3758097112;
  }

  v11[12] = v2;
  v11[13] = v3;
  pthread_mutex_lock((a2 + 8));
  ++*a2;
  pthread_mutex_unlock((a2 + 8));
  v6 = (*(*this + 72))(this);
  if (v6)
  {
    v7 = v6;
    if (*(this + 18) >= v6)
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFilterGraphNode::EnqueueMessage(this, v7, v10);
      }

      goto LABEL_11;
    }
  }

  v8 = *(this + 1);
  if (!v8)
  {
LABEL_11:
    H16ISP::H16ISPFilterGraphMessage::Release(a2);
    return 0;
  }

  ++*(this + 18);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = ___ZN6H16ISP21H16ISPFilterGraphNode14EnqueueMessageEPNS_24H16ISPFilterGraphMessageE_block_invoke;
  v11[3] = &__block_descriptor_tmp_3_1;
  v11[4] = this;
  v11[5] = a2;
  dispatch_async(v8, v11);
  return 0;
}

uint64_t H16ISP::H16ISPDevice::SetBufferPoolConfiguration(H16ISP::H16ISPDevice *a1, int a2, __int16 a3, __int16 a4, int a5, unsigned int a6, const void *a7)
{
  bzero(v15, 0x9CuLL);
  v16 = 279;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v21 = a5;
  v20[66] = a6;
  memcpy(v20, a7, 32 * a6);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v15, 0x9Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPGraphNullNode::EnqueueMessage(H16ISP::H16ISPGraphNullNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  if (*(this + 16) != 1)
  {
    return 3758097112;
  }

  v4 = *(this + 4);
  v5 = *(this + 5);
  v6 = (v4 + 8 * (*(this + 7) >> 9));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 8 * (*(this + 7) & 0x1FFLL));
  }

  while (1)
  {
    if (v5 == v4)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(this + 8) + *(this + 7);
      v12 = *(v4 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF);
    }

    if (v7 == v12)
    {
      break;
    }

    v9 = *v7++;
    (*(*v9 + 32))(v9, a2);
    if ((v7 - *v6) == 4096)
    {
      v10 = v6[1];
      ++v6;
      v7 = v10;
    }

    v4 = *(this + 4);
    v5 = *(this + 5);
  }

  return 0;
}

uint64_t resizeStillMetaPool(uint64_t a1, int a2, int *a3, int *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (*(a1 + 1388))
  {
    v8 = 1392;
LABEL_7:
    v9 = 2 * *(a1 + v8) + 5;
    goto LABEL_8;
  }

  if (*(a1 + 2588))
  {
    v8 = 2592;
    goto LABEL_7;
  }

  if (*(a1 + 1588) == 1)
  {
    v8 = 1592;
    goto LABEL_7;
  }

  v9 = 3;
LABEL_8:
  *a3 = v9;
  v10 = *(a1 + 1368);
  v11 = *a4;
  if (v10 > *a4)
  {
    *a4 = v10;
    v11 = v10;
  }

  v12 = *(a1 + 1568);
  if (v12 > v11)
  {
    *a4 = v12;
    v11 = v12;
  }

  v13 = *(a1 + 2568);
  if (v13 > v11)
  {
    *a4 = v13;
    v11 = v13;
  }

  if (*(a1 + 4816) || *(a1 + 4824))
  {
    v14 = *(a1 + 4832);
    if (v14 > v11)
    {
      *a4 = v14;
    }
  }

  SensorRawComputeRetainedCountForCompanionPools(a1, a4);
  if (!a2)
  {
    return 0;
  }

  v15 = *a4;
  v16 = *a3;
  if (!H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 8))
  {
    return 0;
  }

  v17 = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a1 + 160), 8, v16 + v15);
  if (v17)
  {
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      resizeStillMetaPool();
    }
  }

  return v17;
}

uint64_t H16ISP::H16ISPFilterGraphManager::EnqueueMessage(H16ISP::H16ISPFilterGraphManager *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = (v4 + 8 * (*(this + 5) >> 9));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 8 * (*(this + 5) & 0x1FFLL));
  }

  for (result = 3758097084; ; result = 0)
  {
    if (v5 == v4)
    {
      v10 = 0;
    }

    else
    {
      v9 = *(this + 6) + *(this + 5);
      v10 = *(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF);
    }

    if (v7 == v10)
    {
      break;
    }

    result = (*(**v7 + 32))(*v7, a2);
    if (result)
    {
      break;
    }

    if ((++v7 - *v6) == 4096)
    {
      v11 = v6[1];
      ++v6;
      v7 = v11;
    }

    v4 = *(this + 2);
    v5 = *(this + 3);
  }

  return result;
}

uint64_t SensorRawComputeRetainedCountForCompanionPools(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 4936);
  if (*(result + 4816) || v2 && (*v2 || v2[7] || v2[14]))
  {
    v3 = 0;
    v4 = 3;
    v5 = *(result + 4936);
    do
    {
      if (v2 && *v5)
      {
        v3 += *(v5 + 44) & ~(*(v5 + 44) >> 31);
      }

      v5 += 56;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 0;
    v3 = 0;
    v7 = 1;
    do
    {
      v8 = v7;
      v9 = result + 4840 + 48 * v6;
      if (*v9)
      {
        v3 += *(v9 + 40) & ~(*(v9 + 40) >> 31);
      }

      v7 = 0;
      v6 = 1;
    }

    while ((v8 & 1) != 0);
  }

  if (v3 > *a2)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t H16ISP::H16ISPFilterGraphMessage::Release(H16ISP::H16ISPFilterGraphMessage *this)
{
  pthread_mutex_lock((this + 8));
  if ((*this)-- == 1)
  {
    H16ISP::H16ISPFilterGraphMessage::~H16ISPFilterGraphMessage(this);

    JUMPOUT(0x22AA55B60);
  }

  return pthread_mutex_unlock((this + 8));
}

void ActivateStillImageRawOutputInFrameReceiver(uint64_t result, uint64_t a2)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!*(result + 160))
  {
    return;
  }

  v4 = *(result + 48);
  v5 = *(result + 192);
  if (v4 < v5)
  {
    v5 = 0;
  }

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(result + 156), *(*(result + 184) + 120 * (v4 - v5) + 16), v48, v73))
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageRawOutputInFrameReceiver();
    }

    return;
  }

  if ((*(result + 1304) & 1) == 0)
  {
    bzero(v43, 0x1CuLL);
    v45 = *(result + 156);
    v44 = 2827;
    v46 = vmovn_s64(vcvtq_s64_f64(*(result + 2536)));
    v47 = vmovn_s64(vcvtq_u64_f64(*(result + 2552)));
    if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a2 + 24), v43, 0x1Cu, 0, 0xFFFFFFFF))
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageRawOutputInFrameReceiver();
      }

      return;
    }

    v10 = *(result + 2568);
    bzero(v58, 0x38uLL);
    v11 = *(result + 156);
    *&v58[4] = 2823;
    *&v58[12] = *(result + 2524);
    DWORD2(v59) = 0;
    v12 = *(result + 2520);
    v14 = v12 == 2037741171 || v12 == 2037741158;
    *&v58[8] = v11;
    *&v58[24] = v14;
    v15 = ColorRangeForOutputWithMatrix(result, result + 2504, *(result + 172));
    v16 = *(result + 2524);
    DWORD1(v60) = v16;
    v17 = *(result + 2528);
    *&v58[20] = v15;
    HIDWORD(v59) = v17;
    if (*&v58[24] == 1)
    {
      v18 = (2 * v16 + 63) & 0xFFFFFFC0;
    }

    else
    {
      v18 = (v16 + 63) & 0xFFFFFFC0;
      LODWORD(v59) = v18;
    }

    *&v58[28] = v18;
    if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a2 + 24), v58, 0x38u, 0, 0xFFFFFFFF))
    {
      v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v24 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageRawOutputInFrameReceiver();
      }

      return;
    }

    v26 = *(result + 160);
    v27 = *(result + 2524);
    v28 = *(result + 2528);
    v29 = *(result + 2520);
    v30 = v29 == 2037741158 || v29 == 2037741171;
    v31 = v29 == 2037741158 || v29 == 875704422;
    *buf = 0u;
    v72 = 0u;
    HIDWORD(v42) = *(result + 4516);
    LOBYTE(v42) = 1;
    HIDWORD(v40) = v10;
    LODWORD(v40) = 128;
    H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v26, 7, SDWORD2(v49), v27, v28, 0, 0, v30, 0.0, buf, v31, v40, 0, 0x100000000, 0, @"STILL", 0, 0, 0, v42);
    v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v32 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v10;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      _os_log_impl(&dword_2247DB000, v32, OS_LOG_TYPE_INFO, "ActivateStillImageRawOutputInFrameReceiver STILL pool size=%d,prime=%d\n\n", buf, 0xEu);
    }
  }

  v7 = *(result + 160);
  if ((*(v7 + 533) & 1) == 0)
  {
    v67 = v54;
    v68 = v55;
    v69 = v56;
    v63 = v50;
    v64 = v51;
    v70 = v57;
    v65 = v52;
    v66 = v53;
    v59 = v48[2];
    v60 = v48[3];
    v61 = v48[4];
    v62 = v49;
    *v58 = v48[0];
    *&v58[16] = v48[1];
    if (AddRawPoolToFrameReceiver(result, a2, v58, *(result + 2520)))
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageRawOutputInFrameReceiver();
      }

      return;
    }

    v7 = *(result + 160);
  }

  if (!H16ISP::H16ISPFrameReceiver::HasPool(v7, 30) && *(result + 2577) == 1 && AddThumbnailRawPoolToFrameReceiver(result, a2))
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else if (*(result + 4256) == 1 && (*(result + 2520) | 2) == 0x4C303132 && H16ISP::H16ISPDevice::SetSensorInterfacePixelFormat(*(a2 + 24), *(result + 156), 15, 1, 0, 0))
  {
    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v20 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageRawOutputInFrameReceiver();
    }
  }

  else if (*(result + 2504) == 1 && *(result + 2624) == 1 && AddSushiRawPoolToFrameReceiver(result, a2, result + 2504))
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageRawOutputInFrameReceiver();
    }
  }

  else if (*(result + 2628) && AddSashimiRawPoolToFrameReceiver(result, a2, result + 2504))
  {
    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v22 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageRawOutputInFrameReceiver();
    }
  }

  else if (*(result + 2632) && AddFocusPixelDataToFrameReceiver(result, a2, result + 2504))
  {
    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v23 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageRawOutputInFrameReceiver();
    }
  }

  else if (*(result + 2600) == 1 && AddSplitPixelDataToFrameReceiver(result, a2, result + 2504))
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v25 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageRawOutputInFrameReceiver();
    }
  }

  else
  {
    if (!H16ISP::H16ISPFrameReceiver::HasPool(*(result + 160), 8))
    {
      *buf = 0;
      *v43 = 0;
      v33 = resizeStillMetaPool(result, 0, buf, v43);
      if (v33)
      {
        v34 = v33;
        v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v35 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 136315394;
          *&v58[4] = "ActivateStillImageRawOutputInFrameReceiver";
          *&v58[12] = 1024;
          *&v58[14] = v34;
          _os_log_impl(&dword_2247DB000, v35, OS_LOG_TYPE_DEFAULT, "%s - resize still meta pool failed err=%d\n", v58, 0x12u);
        }
      }

      v36 = *v43 + *buf;
      if (*buf >= 0x10u)
      {
        v37 = 16;
      }

      else
      {
        v37 = *buf;
      }

      v38 = *(result + 160);
      memset(v58, 0, sizeof(v58));
      HIDWORD(v42) = *(result + 4516);
      LOBYTE(v42) = 1;
      HIDWORD(v41) = *v43 + *buf;
      LODWORD(v41) = 128;
      H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v38, 8, v75, (v74 >> 4) + 1, 8, 0, 0, 1, 0.0, v58, 1u, v41, 0, v37, 0, @"STILLMETA", 0, 0, 0, v42);
      v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v39 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *v58 = 67109376;
        *&v58[4] = v36;
        *&v58[8] = 1024;
        *&v58[10] = v37;
        _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_INFO, "ActivateStillImageRawOutputInFrameReceiver STILLMETA pool size=%d,prime=%d\n\n", v58, 0xEu);
      }
    }

    SetMetaDataOptionsOnFrameReceiver(result, a2);
  }
}

uint64_t std::deque<__CVBuffer *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<__CVBuffer **>::~__split_buffer(a1);
}

uint64_t AddThumbnailRawPoolToFrameReceiver(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0;
  if (*(a1 + 1377) & 1) != 0 || (*(a1 + 1577) & 1) != 0 || (*(a1 + 2577))
  {
    H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a2 + 24), *(a1 + 156), 33, &v22);
    if (v3)
    {
      v4 = v3;
      v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v5 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        AddThumbnailRawPoolToFrameReceiver();
      }
    }

    else
    {
      if (v25 != 35)
      {
        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v6 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          AddThumbnailRawPoolToFrameReceiver();
        }
      }

      v7 = ((v23 + 15) & 0xFFFFFFF0) - v23;
      v8 = ((v24 + 3) & 0xFFFFFFFC) - v24;
      if (HIWORD(v22) <= 3u)
      {
        v9 = 3;
      }

      else
      {
        v9 = HIWORD(v22);
      }

      v10 = resizeThumbnailRawPool(a1, 0, HIWORD(v22), &v21);
      if (v10)
      {
        v11 = v10;
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v12 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AddThumbnailRawPoolToFrameReceiver";
          *&buf[12] = 1024;
          *&buf[14] = v11;
          _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, "%s - resize thumbnail raw pool failed err=%d\n", buf, 0x12u);
        }
      }

      v13 = v9 + v21 + 1;
      v14 = *(a1 + 160);
      memset(buf, 0, 32);
      LOBYTE(v20) = 1;
      HIDWORD(v19) = v13;
      LODWORD(v19) = 128;
      v15 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v14, 30, WORD1(v22), v23, v24, v8, v7, 37, 0.0, buf, 0, v19, 0x70000000000, v9, 0, @"THUMBRAW", -1, 0, 0, v20);
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (v15)
      {
        v4 = v15;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          AddThumbnailRawPoolToFrameReceiver();
        }
      }

      else
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          *&buf[4] = "AddThumbnailRawPoolToFrameReceiver";
          *&buf[12] = 1024;
          *&buf[14] = v13;
          *&buf[18] = 1024;
          *&buf[20] = v9;
          *&buf[24] = 1024;
          *&buf[26] = 0;
          _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_INFO, "%s - RAW pool size=%d,prime=%d (res=0x%08X)\n", buf, 0x1Eu);
        }

        return 0;
      }
    }
  }

  else
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    v4 = 3758097084;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      AddThumbnailRawPoolToFrameReceiver();
    }
  }

  return v4;
}

__n128 H16ISP::H16ISPDevice::GetPoolInfoExtended(H16ISP::H16ISPDevice *a1, int a2, int a3, _OWORD *a4)
{
  if (a3 <= 49)
  {
    bzero(v12, 0x650uLL);
    v13 = 278;
    v14 = a2;
    v15 = 50;
    if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v12, 0x650u, 0, 0xFFFFFFFF))
    {
      v9 = v15;
      if (v15)
      {
        for (i = &v16; *i != a3; i += 16)
        {
          if (!--v9)
          {
            return result;
          }
        }

        result = *i;
        v11 = *(i + 1);
        *a4 = *i;
        a4[1] = v11;
      }
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPFrameReceiver::tickleNoDataTimer(H16ISP::H16ISPFrameReceiver *this)
{
  v2 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableISPBringup", @"com.apple.coremedia", 0);
  pthread_mutex_lock((this + 224));
  v3 = *(this + 36);
  if (v3)
  {
    v4 = CFAbsoluteTimeGetCurrent() + *(this + 124);
    v5 = 200.0;
    if (!v2)
    {
      v5 = 0.0;
    }

    CFRunLoopTimerSetNextFireDate(v3, v5 + v4);
  }

  return pthread_mutex_unlock((this + 224));
}

uint64_t ___ZN6H16ISP21H16ISPFilterGraphNode14EnqueueMessageEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  kdebug_trace();
  if ((*(*v2 + 64))(v2, *(a1 + 40)) != -536870166)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = (v3 + 8 * (*(v2 + 56) >> 9));
    if (v4 == v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = (*v5 + 8 * (*(v2 + 56) & 0x1FFLL));
    }

    while (1)
    {
      if (v4 == v3)
      {
        v10 = 0;
      }

      else
      {
        v9 = *(v2 + 64) + *(v2 + 56);
        v10 = *(v3 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF);
      }

      if (v6 == v10)
      {
        break;
      }

      v7 = *v6++;
      (*(*v7 + 32))(v7, *(a1 + 40));
      if ((v6 - *v5) == 4096)
      {
        v8 = v5[1];
        ++v5;
        v6 = v8;
      }

      v3 = *(v2 + 32);
      v4 = *(v2 + 40);
    }
  }

  H16ISP::H16ISPFilterGraphMessage::Release(*(a1 + 40));
  --*(v2 + 72);

  return kdebug_trace();
}

uint64_t resizeThumbnailRawPool(uint64_t a1, int a2, unsigned int FirmwarePrimeCount, int *a4)
{
  *a4 = 0;
  if (*(a1 + 1377) == 1 && (v8 = *(a1 + 1368), v8 >= 1))
  {
    *a4 = v8;
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 1577) == 1)
  {
    v9 = *(a1 + 1568);
    if (v9 > v8)
    {
      *a4 = v9;
      v8 = v9;
    }
  }

  if (*(a1 + 2577) == 1)
  {
    v10 = *(a1 + 2568);
    if (v10 > v8)
    {
      *a4 = v10;
      v8 = v10;
    }
  }

  if (*(a1 + 4816) || *(a1 + 4824))
  {
    v11 = *(a1 + 4832);
    if (v11 > v8)
    {
      *a4 = v11;
    }
  }

  SensorRawComputeRetainedCountForCompanionPools(a1, a4);
  if (FirmwarePrimeCount)
  {
    if (FirmwarePrimeCount <= 3)
    {
      FirmwarePrimeCount = 3;
    }

    if (!a2)
    {
      return 0;
    }
  }

  else
  {
    FirmwarePrimeCount = H16ISP::H16ISPFrameReceiver::getFirmwarePrimeCount(*(a1 + 160), 30);
    if (!a2)
    {
      return 0;
    }
  }

  v12 = *a4;
  if (!H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 30))
  {
    return 0;
  }

  v13 = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a1 + 160), 30, FirmwarePrimeCount + 2 * v12 + 1);
  if (v13)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      resizeThumbnailRawPool();
    }
  }

  return v13;
}

uint64_t H16ISP::H16ISPMetadataDictCreatorGraphNode::onMessageProcessing(H16ISP::H16ISPMetadataDictCreatorGraphNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v4 = 0;
  v31 = *MEMORY[0x277D85DE8];
  v20 = a2 + 80;
  key = *MEMORY[0x277CF3F70];
  v5 = a2 + 104;
  do
  {
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    texture = 0;
    pthread_mutex_lock((a2 + 8));
    v6 = &v20[344 * v4];
    if (!*(v6 + 5))
    {
      pthread_mutex_unlock((a2 + 8));
      goto LABEL_61;
    }

    v7 = 0;
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = *(v9 + 2);
      if (v10 <= 6)
      {
        if (!v10)
        {
          v11 = *v9;
          v30 = *v9;
          goto LABEL_22;
        }

        if (v10 == 6)
        {
          v11 = *v9;
          v29 = *v9;
          goto LABEL_22;
        }
      }

      else
      {
        switch(v10)
        {
          case 7:
            v11 = *v9;
            v28 = *v9;
            goto LABEL_22;
          case 9:
            v11 = *v9;
            v27 = *v9;
            goto LABEL_22;
          case 10:
            v11 = *v9;
            texture = *v9;
            goto LABEL_22;
        }
      }

      if (v10 == 1 && v25 == 0)
      {
        v11 = *v9;
        v25 = *v9;
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_23;
        }

        v11 = *v9;
        v8 = *v9;
      }

LABEL_22:
      CVPixelBufferRetain(v11);
LABEL_23:
      v9 += 16;
      ++v7;
    }

    while (v7 < *(v6 + 5));
    v13 = *(v6 + 4);
    pthread_mutex_unlock((a2 + 8));
    H16ISP::H16ISPDevice::ISP_GetCameraTime(*(this + 10), outputStruct);
    v14.n128_u64[1] = 0;
    v23 = 0u;
    memset(v22, 0, sizeof(v22));
    if (v8)
    {
      if (v30)
      {
        std::deque<__CVBuffer *>::push_back(v22, &v30);
      }

      if (texture)
      {
        std::deque<__CVBuffer *>::push_back(v22, &texture);
      }

      if (v29)
      {
        std::deque<__CVBuffer *>::push_back(v22, &v29);
      }
    }

    else
    {
      if (v28)
      {
        std::deque<__CVBuffer *>::push_back(v22, &v28);
      }

      if (v27)
      {
        std::deque<__CVBuffer *>::push_back(v22, &v27);
      }
    }

    if (v25)
    {
      std::deque<__CVBuffer *>::push_back(v22, &v25);
    }

    if (*(&v23 + 1))
    {
      v15 = *(this + 10);
      v16 = *(v15 + 104);
      if (v16)
      {
        H16ISP::H16ISPMotionManager::GetOscarTimeSyncInfo(v16, &v21);
        v15 = *(this + 10);
      }

      else
      {
        v21 = 0uLL;
      }

      v14.n128_u64[0] = *(this + 13);
      H16ISP::GenerateAndAttachCoreMediaMetaDataDictionary(*(v15 + 88), *(*(*(&v22[0] + 1) + ((v23 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v23 & 0x1FF)), v22, *(this + 11) + 40 * v13, v14);
      Attachment = CVBufferGetAttachment(*(*(*(&v22[0] + 1) + ((v23 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v23 & 0x1FF)), key, 0);
      if (v8 && Attachment)
      {
        operator new();
      }
    }

    else
    {
      printf("H16ISPMetadataDictCreatorGraphNodeMessageProcessingProc - (chan=%d) Did not identify source buffer\n", v13);
    }

    if (v30)
    {
      CVPixelBufferRelease(v30);
    }

    if (v29)
    {
      CVPixelBufferRelease(v29);
    }

    if (texture)
    {
      CVPixelBufferRelease(texture);
    }

    if (v28)
    {
      CVPixelBufferRelease(v28);
    }

    if (v27)
    {
      CVPixelBufferRelease(v27);
    }

    if (v25)
    {
      CVPixelBufferRelease(v25);
    }

    if (v8)
    {
      CVPixelBufferRelease(v8);
    }

    std::deque<__CVBuffer *>::~deque[abi:ne200100](v22);
LABEL_61:
    ++v4;
    v5 += 344;
  }

  while (v4 != 3);
  return 0;
}

void sub_2248326B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6H16ISP19H16ISPFrameReceiver20ProcessFrameMetadataEP10__CVBufferPyNS_33H16ISPFrameReceiverBufferPoolTypeEbPh_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 556), *(a1 + 40));
  v2 = *(v1 + 544);

  return notify_post(v2);
}

void sub_22484DBC4(_Unwind_Exception *a1)
{
  Matrix<float>::~Matrix(&STACK[0x52B0]);
  Matrix<float>::~Matrix(&STACK[0x10A8]);
  Matrix<float>::~Matrix(&STACK[0x10C8]);
  Matrix<float>::~Matrix(&STACK[0x5290]);
  _Unwind_Resume(a1);
}

uint64_t H16ISP::H16ISPMotionManager::GetOscarTimeSyncInfo(uint64_t a1, _OWORD *a2)
{
  if (!*(a1 + 48))
  {
    return 3758097112;
  }

  result = 0;
  *a2 = *(a1 + 32);
  return result;
}

uint64_t H16ISP::H16ISPFrameReceiver::tickleTailspinTimer(H16ISP::H16ISPFrameReceiver *this)
{
  pthread_mutex_lock((this + 296));
  v2 = *(this + 45);
  if (v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v2, Current + 0.5);
  }

  return pthread_mutex_unlock((this + 296));
}

uint64_t std::__split_buffer<__CVBuffer **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

long double H16ISP::CalculateAdditionalMetadataParameters(H16ISP *this, int a2, int a3, int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, double a9, double a10, double a11, double a12, double a13, unsigned int a14, unsigned __int16 a15, int a16, unsigned int a17, long double *a18, double *a19, double *a20, double *a21, double *a22)
{
  v29 = a14;
  if (a9 <= 0.0)
  {
    a9 = 0.0001;
  }

  if (a8)
  {
    v30 = a8;
  }

  else
  {
    v30 = 128;
  }

  if (!a14)
  {
    v29 = 128;
  }

  if (a7 <= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = a7;
  }

  v32 = v31;
  *&v33 = vcvtd_n_f64_u32(v30, 8uLL) * a15 * 0.00390625 * v29;
  v34 = *&v33 * 0.00390625;
  LODWORD(v33) = a16;
  *a18 = log2(v31 / (a9 * (v34 * v33 * 0.00390625) * a13) / 67.2);
  *a19 = v34 * a17 / vcvtd_n_f64_u32(HIWORD(a17), 8uLL);
  v35 = ((8 * v30 - 2048) * a12 + (2048 - v30) * a11) / (7 * v30);
  if (v30 > 0x800)
  {
    v35 = a12;
  }

  if (v30 < 0x100)
  {
    v35 = a11;
  }

  v36 = log10(v32 / v34 / a10 / sqrt(v32 / v34 / a10 + v35 * v35)) * 20.0;
  result = v36 + log10(sqrt((a3 * a2) / (a5 * a4))) * -20.0;
  *a20 = result;
  *a21 = v36;
  return result;
}

void H16ISP::FastDictionarySetValueNoRetain(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  if (a3)
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](a1[1], &v5);
    std::vector<void const*>::push_back[abi:ne200100](*a1, &v4);
  }
}

void H16ISP::FastDictionarySetValue(uint64_t *a1, uint64_t a2, const void *a3)
{
  v18 = a2;
  if (a3)
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](a1[1], &v18);
    v5 = *a1;
    v6 = CFRetain(a3);
    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    if (v8 >= v7)
    {
      v10 = (v8 - *v5) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }

      v11 = v7 - *v5;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::allocator<void const*>::allocate_at_least[abi:ne200100](v5, v13);
      }

      v14 = (8 * v10);
      *v14 = v6;
      v9 = 8 * v10 + 8;
      v15 = *(v5 + 8) - *v5;
      v16 = v14 - v15;
      memcpy(v14 - v15, *v5, v15);
      v17 = *v5;
      *v5 = v16;
      *(v5 + 8) = v9;
      *(v5 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = v6;
      v9 = (v8 + 1);
    }

    *(v5 + 8) = v9;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(void *a1, unsigned int *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

unint64_t std::unordered_map<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>::unordered_map(unint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(a1, a2, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t H16ISP::H16ISPDevice::EnableDPM(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 20486;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

void std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t H16ISP::H16ISPDevice::EnableDPMAssistedAE(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 585;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t *std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::piecewise_construct_t const&,std::tuple<eCIspDpcTypes const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AttachIntrinsicMatrix(__CVBuffer *a1, void *a2, int a3, int a4, uint64_t a5)
{
  v40 = *MEMORY[0x277CBF348];
  v39 = 1.0;
  v10 = [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x277CF5068]), "intValue"}];
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = (v11 * a3);
  v13 = (v11 * a4);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v16 = Height;
  FigMotionComputeLensPositionScalingFactor(a2, Width, Height, v12, v13, &v39);
  v17 = v39;
  v41 = 0;
  v18 = [a2 objectForKeyedSubscript:*MEMORY[0x277CF5010]];
  if (!v18)
  {
    time_16[0] = *(a5 + 2);
    *&time_16[24] = *(a5 + 24);
    *&time_16[4] = *(a5 + 4);
    *&time_16[20] = *(a5 + 20);
    if ((*a5 & 1) != 0 || *(a5 + 1) == 1)
    {
      GravityZ = FigMotionGetGravityZ(a2, &v41 + 1);
      v22 = *(&v41 + 1);
      if (!GravityZ)
      {
        if (!FigMotionCalculateAdjustedLensPosition(a2, &time, &v41, *(&v41 + 1), v17))
        {
LABEL_10:
          v20 = *&v41;
          goto LABEL_11;
        }

        v22 = *(&v41 + 1);
      }

      v37 = v22;
    }

    else
    {
      [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x277CF5030]), "floatValue"}];
      *&v41 = v17 * ((v36 * 1000.0) * *(a5 + 28));
      if (*&v41 != 0.0 || !FigMotionCalculateAdjustedLensPosition(a2, &time, &v41, 0.0, v17))
      {
        goto LABEL_10;
      }

      v37 = 0.0;
    }

    NSLog(&cfstr_FocalLengthCal.isa, *&v37, v17);
    goto LABEL_10;
  }

  [v18 floatValue];
  v20 = v17 * (v19 * *(a5 + 28));
LABEL_11:
  v38 = v20;
  if (v20 == 0.0 || (v23 = CVBufferCopyAttachment(a1, *MEMORY[0x277CF3F80], 0)) == 0 || (v24 = v23, CMTimeMakeFromDictionary(&time, v23), Seconds = CMTimeGetSeconds(&time), v26 = FigMotionComputePrincipalPoint(a2, *(a5 + 28), v39, Seconds, Width, v16, v12, v13, *(a5 + 1), &v40), CFRelease(v24), v26))
  {
    NSLog(&cfstr_OpticalCenterC.isa, v38);
    return 3758097131;
  }

  else
  {
    *&v27 = vcvt_f32_f64(v40);
    LODWORD(v28) = 0;
    *(&v28 + 1) = v38;
    __asm { FMOV            V3.2S, #1.0 }

    *(&v27 + 1) = _D3;
    time = LODWORD(v38);
    *time_16 = v28;
    *&time_16[16] = v27;
    v34 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&time length:48];
    CVBufferSetAttachment(a1, @"CameraIntrinsicMatrixPrivate", v34, kCVAttachmentMode_ShouldPropagate);

    return 0;
  }
}

uint64_t FigMotionComputeLensPositionScalingFactor(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v34.origin = *MEMORY[0x277CBF3A0];
  v34.size = v7;
  if (a1)
  {
    if (a6)
    {
      v9 = a5;
      v10 = a4;
      v11 = a3;
      v12 = a2;
      FigMotionGetSensorValidCropRect(a1, &v34);
      if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF5318]))
      {
        v14 = v6[1];
        *buf = *v6;
        *&buf[16] = v14;
        FigCFDictionaryGetCGRectIfPresent();
        if (*&buf[16] > 0.0 && *&buf[24] > 0.0)
        {
          v11 = *&buf[24];
          v12 = *&buf[16];
        }
      }

      width = v34.size.width;
      if (width <= 0.0)
      {
        FigMotionComputeLensPositionScalingFactor();
      }

      else if (v10 <= 0)
      {
        FigMotionComputeLensPositionScalingFactor();
      }

      else
      {
        v16 = v12 / (v10 * width);
        *a6 = v16;
        height = v34.size.height;
        if (height <= 0.0)
        {
          FigMotionComputeLensPositionScalingFactor();
        }

        else if (v9 <= 0)
        {
          FigMotionComputeLensPositionScalingFactor();
        }

        else
        {
          v18 = v11 / (v9 * height);
          v19 = fabsf((v16 / v18) + -1.0);
          if (v19 > 0.01)
          {
            valuePtr = 0.0;
            Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4CF0]);
            if (Value)
            {
              CFNumberGetValue(Value, kCFNumberCGFloatType, &valuePtr);
            }

            v32 = 0.0;
            v21 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4D00]);
            if (v21)
            {
              CFNumberGetValue(v21, kCFNumberDoubleType, &v32);
              v22 = v32;
            }

            else
            {
              v22 = 0.0;
            }

            v23 = valuePtr > 2.39;
            if (valuePtr >= 2.41)
            {
              v23 = 0;
            }

            v24 = v22 > 1.649;
            if (v22 >= 1.651)
            {
              v24 = 0;
            }

            v25 = v23 && v24;
            if (CFDictionaryGetValue(a1, *MEMORY[0x277CF5020]))
            {
              v26 = FigCFEqual() != 0;
            }

            else
            {
              v26 = 0;
            }

            if (((v25 | v26) & 1) == 0)
            {
              mach_absolute_time();
              v27 = FigHostTimeToNanoseconds();
              if ((v27 - FigMotionComputeLensPositionScalingFactor(__CFDictionary const*,int,int,int,int,float *)::lastLogTime) >= 0x3B9ACA00)
              {
                v28 = v27;
                v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                {
                  v29 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v29;
                }

                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v31 = *a6;
                  *buf = 136315906;
                  *&buf[4] = "FigMotionComputeLensPositionScalingFactor";
                  *&buf[12] = 2048;
                  *&buf[14] = (v19 * 100.0);
                  *&buf[22] = 2048;
                  *&buf[24] = v31;
                  v36 = 2048;
                  v37 = v18;
                  _os_log_error_impl(&dword_2247DB000, v29, OS_LOG_TYPE_ERROR, "%s - LensPositionScalingFactor disagrees by %.2f%% in horizontal (%f) and vertical (%f)\n", buf, 0x2Au);
                }

                FigMotionComputeLensPositionScalingFactor(__CFDictionary const*,int,int,int,int,float *)::lastLogTime = v28;
              }
            }
          }
        }
      }
    }

    else
    {
      FigMotionComputeLensPositionScalingFactor();
    }
  }

  else
  {
    FigMotionComputeLensPositionScalingFactor();
  }

  return 0;
}

void FigMotionGetSensorValidCropRect(const __CFDictionary *a1, CGRect *a2)
{
  if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF5178]))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        FigMotionGetSensorValidCropRect(v3, v4, v5);
      }
    }
  }

  else if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF5300]))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        FigMotionGetSensorValidCropRect(v6, v7, v8);
      }
    }
  }

  else if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF5080]))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        FigMotionGetSensorValidCropRect(v9, v10, v11);
      }
    }
  }

  else
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      FigMotionGetSensorValidCropRect(v12, v13, v14);
    }
  }
}

uint64_t FigMotionComputePrincipalPoint(const __CFDictionary *a1, float a2, float a3, double a4, int a5, int a6, int a7, int a8, int a9, CGPoint *a10)
{
  v29 = *MEMORY[0x277D85DE8];
  value = 0;
  v25 = *MEMORY[0x277CBF348];
  if (a1 && a10)
  {
    v18 = (a5 + -1.0) * 0.5;
    v19 = (a6 + -1.0) * 0.5;
    v27.x = v18;
    v27.y = v19;
    if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF5000], &value) && CGPointMakeWithDictionaryRepresentation(value, &v25))
    {
      v20 = *(MEMORY[0x277CBF3A0] + 16);
      v28.origin = *MEMORY[0x277CBF3A0];
      v28.size = v20;
      FigMotionGetSensorValidCropRect(a1, &v28);
      v27.x = v18 + (v25.x - (v28.origin.x + (v28.size.width + -1.0) * 0.5)) * a3 * a7;
      v27.y = v19 + (v25.y - (v28.origin.y + (v28.size.height + -1.0) * 0.5)) * a3 * a8;
    }

    if (!a9 || (result = FigMotionAdjustPointForSphereMovement(a1, a2, a3, a4, &v27), !result))
    {
      result = 0;
      *a10 = v27;
    }
  }

  else
  {
    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v23 = os_log_create("com.apple.isp", "general");
      OUTLINED_FUNCTION_4_1(v23);
    }

    result = OUTLINED_FUNCTION_4();
    if (result)
    {
      LODWORD(v28.origin.x) = 136315138;
      *(&v28.origin.x + 4) = "FigMotionComputePrincipalPoint";
      OUTLINED_FUNCTION_6_0(&dword_2247DB000, v22, v24, "%s - metadataDict or adjustedPrincipalPointOut is null!\n", &v28);
      return 0;
    }
  }

  return result;
}

uint64_t FigMotionAdjustPointForSphereMovement(const __CFDictionary *a1, float a2, float a3, double a4, float64x2_t *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = FigMotionComputeAverageSpherePosition(a1);
    if (!result)
    {
      *a5 = vaddq_f64(*a5, vcvtq_f64_f32(vmul_n_f32(0, a2 * a3)));
    }
  }

  else
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "general");
      OUTLINED_FUNCTION_4_1(v10);
    }

    result = OUTLINED_FUNCTION_4();
    if (result)
    {
      v12 = 136315138;
      v13 = "FigMotionAdjustPointForSphereMovement";
      OUTLINED_FUNCTION_6_0(&dword_2247DB000, v9, v11, "%s - metadataDict is null!\n", &v12);
      return 0;
    }
  }

  return result;
}

uint64_t FigMotionComputeAverageSpherePosition(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v54[1530] = *MEMORY[0x277D85DE8];
  v47 = 0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(v1, *MEMORY[0x277CF4C58]);
  if (!Value)
  {
    FigMotionComputeAverageSpherePosition(v54);
    return LODWORD(v54[0]);
  }

  CFNumberGetValue(Value, kCFNumberFloat64Type, &valuePtr);
  v8 = CFDictionaryGetValue(v6, *MEMORY[0x277CF4D60]);
  if (!v8)
  {
    FigMotionComputeAverageSpherePosition(v54);
    return LODWORD(v54[0]);
  }

  CFNumberGetValue(v8, kCFNumberSInt32Type, &v47);
  v9 = v47;
  v10 = valuePtr;
  *v3 = 0;
  result = CFDictionaryGetValue(v6, *MEMORY[0x277CF4E00]);
  if (!result)
  {
    return result;
  }

  v12 = result;
  Length = CFDataGetLength(result);
  if (Length <= 7)
  {
    FigMotionComputeAverageSpherePosition();
LABEL_55:
    v16 = *&v54[0];
    goto LABEL_9;
  }

  v14 = Length;
  BytePtr = CFDataGetBytePtr(v12);
  if (*BytePtr >= 2u)
  {
    FigMotionComputeAverageSpherePosition();
    goto LABEL_55;
  }

  v16 = BytePtr;
  v17 = 16;
  if (*BytePtr == 1)
  {
    v17 = 24;
  }

  if (v14 != v17 * *(BytePtr + 1) + 8)
  {
    FigMotionComputeAverageSpherePosition();
    goto LABEL_55;
  }

LABEL_9:
  v18 = *(v16 + 1);
  if (v18 >= 510)
  {
    v19 = 510;
  }

  else
  {
    v19 = v18;
  }

  if (v18 >= 511)
  {
    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v20 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      FigMotionComputeAverageSpherePosition(v19, v20);
    }
  }

  if (*v16 == 1)
  {
    if (v18 >= 1)
    {
      v27 = v16 + 16;
      v28 = &v54[1];
      v45 = vdupq_n_s32(0x3B800000u);
      v29 = v19;
      do
      {
        v30 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v30, 1000000000);
        *&v28[-1].i64[1] = CMTimeGetSeconds(&time);
        v31 = *v27;
        v27 = (v27 + 24);
        *v28 = vmulq_f32(vcvtq_f32_s32(v31), v45);
        v28 = (v28 + 24);
        --v29;
      }

      while (v29);
      goto LABEL_26;
    }

    return 0;
  }

  if (*v16)
  {
    v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v39 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v39;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      FigMotionComputeAverageSpherePosition(v16, v39);
    }

    return 4294954515;
  }

  if (v18 < 1)
  {
    return 0;
  }

  v21 = (v16 + 16);
  v22 = &v54[2];
  v23 = vdup_n_s32(0x3B800000u);
  v24 = v19;
  do
  {
    v25 = FigHostTimeToNanoseconds();
    CMTimeMake(&time, v25, 1000000000);
    *(v22 - 2) = CMTimeGetSeconds(&time);
    v26 = *v21;
    v21 += 2;
    *(v22 - 1) = vmul_f32(vcvt_f32_s32(v26), v23);
    *v22 = 0.0;
    v22 += 3;
    --v24;
  }

  while (v24);
LABEL_26:
  v32 = 0;
  v33 = v5 + v10 * -0.5;
  v34 = v9 / 1000000.0 + v33;
  v35 = &v54[1];
  v36 = v19;
  do
  {
    v37 = *&v35[-1];
    if (v37 >= v33 && v37 <= v34)
    {
      v37 = COERCE_DOUBLE(vadd_f32(*v35, *v3));
      *v3 = v37;
      ++v32;
    }

    v35 += 3;
    --v36;
  }

  while (v36);
  if (v32)
  {
    result = 0;
    *&v37 = v32;
    *v3 = vdiv_f32(*v3, vdup_lane_s32(*&v37, 0));
    return result;
  }

  v40 = v54[0];
  v41 = v19 - 1;
  if (v54[0] <= v34)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  *v3 = *&v54[3 * v42 + 1];
  v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v43 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v43;
  }

  result = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v44 = v54[3 * v41];
    LODWORD(time.value) = 136316162;
    *(&time.value + 4) = "FigMotionComputeAverageSpherePositionForTimes";
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = v33;
    HIWORD(time.epoch) = 2048;
    v49 = v9 / 1000000.0 + v33;
    v50 = 2048;
    v51 = v40;
    v52 = 2048;
    v53 = v44;
    _os_log_error_impl(&dword_2247DB000, v43, OS_LOG_TYPE_ERROR, "%s - Could not find Hall samples in given time range [%f, %f]. Use the closest Hall sample in actual time range [%f, %f].\n", &time, 0x34u);
    return 0;
  }

  return result;
}

double SetOptionsForMetadataNode(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  memset(v14, 0, sizeof(v14));
  v9[0] = 1;
  v7 = a3 + 4096;
  v9[1] = *(a3 + 4208) == 0;
  v10 = *(a3 + 4149);
  v11 = a4;
  v12 = a5;
  v13 = *(a3 + 4146);
  LOBYTE(v14[0]) = *(a3 + 4148);
  BYTE2(v14[0]) = H16ISP::H16ISPDevice::hasSensorType(*(a2 + 24), 1785950322);
  BYTE3(v14[0]) = *(v7 + 57);
  BYTE4(v14[0]) = *(v7 + 510);
  *(v14 + 5) = *(v7 + 55);
  BYTE8(v14[0]) = *(v7 + 224);
  *(v14 + 12) = *(a3 + 4732);
  DWORD1(v14[1]) = *(a3 + 4740);
  BYTE7(v14[0]) = *(v7 + 58);
  BYTE9(v14[0]) = *(v7 + 59);
  if (byte_28100338C == 1)
  {
    BYTE10(v14[0]) = 1;
  }

  if (byte_28100338D == 1)
  {
    BYTE11(v14[0]) = byte_28100338D;
  }

  *(&v14[1] + 1) = 0;
  BYTE1(v14[0]) = *(a3 + 672) != 0;
  *&result = H16ISP::H16ISPMetadataDictCreatorGraphNode::setMetaDataOptions(a1, *(a3 + 156), v9).n128_u64[0];
  return result;
}

__n128 H16ISP::H16ISPMetadataDictCreatorGraphNode::setMetaDataOptions(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 88) + 40 * a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(v3 + 32) = *(a3 + 32);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

uint64_t H16ISP::H16ISPJasperColorNode::EnqueueMessage(H16ISP::H16ISPJasperColorNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v4 = *(this + 10);
  if (v4 && *(v4 + 8) == 1)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::pushColorMessage(v4, a2);
  }

  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = (v5 + 8 * (*(this + 7) >> 9));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*v7 + 8 * (*(this + 7) & 0x1FFLL));
  }

  while (1)
  {
    if (v6 == v5)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(this + 8) + *(this + 7);
      v12 = *(v5 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF);
    }

    if (v8 == v12)
    {
      break;
    }

    v9 = *v8++;
    (*(*v9 + 32))(v9, a2);
    if ((v8 - *v7) == 4096)
    {
      v10 = v7[1];
      ++v7;
      v8 = v10;
    }

    v5 = *(this + 4);
    v6 = *(this + 5);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExitNode::RegisterH16ISPFrameReceivedProcForChannel(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16) != 1)
  {
    return 3758097112;
  }

  v9 = v3;
  v10 = v4;
  v5 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN6H16ISP19H16ISPGraphExitNode41RegisterH16ISPFrameReceivedProcForChannelEjPFiPvyjjPNS_36H16ISPFrameReceiverImageBufferStructEE_block_invoke;
  block[3] = &__block_descriptor_tmp_3_0;
  block[4] = a1;
  block[5] = a3;
  v8 = a2;
  dispatch_async(v5, block);
  return 0;
}

void FigMotionComputeLensPositionScalingFactor()
{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - Invalid parameter!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - binningFactorVertical is not strictly positive!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - Sensor crop rect height is not strictly positive!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - binningFactorHorizontal is not strictly positive!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - Sensor crop rect width is not strictly positive!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - metadataDict is null!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

uint64_t H16ISP::H16ISPGraphExitNode::onMessageProcessing(H16ISP::H16ISPGraphExitNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v3 = 0;
  v4 = a2 + 80;
  do
  {
    pthread_mutex_lock((a2 + 8));
    if (*&v4[344 * v3 + 20])
    {
      operator new();
    }

    pthread_mutex_unlock((a2 + 8));
    ++v3;
  }

  while (v3 != 3);
  return 0;
}

void H16ISP::H16ISPFilterGraphMessage::~H16ISPFilterGraphMessage(H16ISP::H16ISPFilterGraphMessage *this)
{
  v2 = 0;
  v3 = this + 80;
  v4 = (this + 104);
  do
  {
    v5 = &v3[344 * v2];
    v6 = *(v5 + 36);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(v5 + 37);
    if (v7)
    {
      MEMORY[0x22AA55B60](v7, 0x1000C406DBD42B9);
      *(v5 + 37) = 0;
    }

    if (*(v5 + 5))
    {
      v8 = 0;
      v9 = v4;
      do
      {
        CVPixelBufferRelease(*v9);
        ++v8;
        v9 += 2;
      }

      while (v8 < *(v5 + 5));
    }

    ++v2;
    v4 += 43;
  }

  while (v2 != 3);
  pthread_mutex_destroy((this + 8));
  std::__list_imp<H16ISP::H16ISPFilterGraphNode *>::clear(this + 139);
}

void *std::__list_imp<H16ISP::H16ISPFilterGraphNode *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void ___ZN6H16ISP19H16ISPGraphExitNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 24 * *(a1 + 48) + 96))(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 20), v2 + 24);
  v3 = *(a1 + 40);
  if (*(v3 + 20))
  {
    v4 = 0;
    v5 = 24;
    do
    {
      CVPixelBufferRelease(*(v3 + v5));
      ++v4;
      v3 = *(a1 + 40);
      v5 += 16;
    }

    while (v4 < *(v3 + 20));
  }

  JUMPOUT(0x22AA55B60);
}

unint64_t *std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::operator=(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a2[4];
    v5 = a2[1];
    v6 = a2[2];
    v7 = (v5 + 8 * (v4 >> 9));
    if (v6 == v5)
    {
      v8 = 0;
      v11 = 0;
      v10 = (v5 + 8 * ((a2[5] + v4) >> 9));
    }

    else
    {
      v8 = (*v7 + 8 * (v4 & 0x1FF));
      v9 = a2[5] + v4;
      v10 = (v5 + 8 * (v9 >> 9));
      v11 = (*v10 + 8 * (v9 & 0x1FF));
    }

    std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::assign<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool * const*,H16ISP::H16ISPFrameReceiverBufferPool * const&,H16ISP::H16ISPFrameReceiverBufferPool * const* const*,long,512l>,0>(a1, v7, v8, v10, v11);
  }

  return a1;
}

uint64_t MyH16ISPFrameReceivedProc(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v276 = v4;
  v247 = v5;
  v284 = v1;
  v345 = *MEMORY[0x277D85DE8];
  v343 = 0u;
  v342 = 0u;
  mach_timebase_info(&info);
  valuePtr = 0.0;
  v307 = 0.0;
  v306 = 0;
  v341 = 0u;
  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v336 = 0u;
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v331 = 0u;
  v332 = 0u;
  v329 = 0u;
  v330 = 0u;
  v327 = 0u;
  v328 = 0u;
  *__s = 0u;
  v324 = 0u;
  memset(v325, 0, sizeof(v325));
  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  v318 = 0u;
  v319 = 0u;
  v316 = 0u;
  v317 = 0u;
  v315 = 0u;
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v297 = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  pthread_mutex_lock((DerivedStorage + 328));
  if ((qword_2810032E8 & 0x20000) != 0)
  {
    LogCaptureDeviceEvent(0x11u, v297, DerivedStorage, 0, 0, 0, 0);
    theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 10, MEMORY[0x277CBF128]);
  }

  else
  {
    theArray = 0;
  }

  v258 = 1;
  if (v276)
  {
    v294 = 0;
    v295 = 0;
    v292 = 0;
    v6 = v276;
    v7 = v276;
    v8 = v3;
    do
    {
      v9 = *(v8 + 8);
      if (v9 <= 0x19 && ((1 << v9) & 0x2000104) != 0)
      {
        IOSurface = CVPixelBufferGetIOSurface(*v8);
        IOSurfaceGetID(IOSurface);
        kdebug_trace();
        v9 = *(v8 + 8);
      }

      if (v9 > 24)
      {
        if (v9 == 25)
        {
          v292 = *v8;
          *&__s[strlen(__s)] = 2116944;
        }

        else if (v9 == 38)
        {
          v12 = *v8;
          *&__s[strlen(__s)] = 2116933;
          EnqueueExclaveSensorMetadata(DerivedStorage, v12);
        }
      }

      else if (v9 == 2)
      {
        v294 = *v8;
        strcat(__s, "M ");
      }

      else if (v9 == 8)
      {
        v295 = *v8;
        *&__s[strlen(__s)] = 2116947;
      }

      v8 += 16;
      --v7;
    }

    while (v7);
    if (v294 || v295 || (v296 = 0, v292))
    {
      operator new();
    }

    v29 = v297;
    pixelBuffer = 0;
    allocator = 0;
    texture = 0;
    v282 = 0;
    v275 = 0;
    v290 = 0uLL;
    v252 = 0;
    v253 = 0;
    v26 = 0;
    v27 = 0;
    v250 = 0;
    v251 = 0;
    sourceBuffer = 0;
    v255 = 0;
    v268 = 0;
    v269 = 0;
    v249 = 0;
    buffer = 0;
    v272 = 0;
    v273 = 0;
    v270 = 0;
    v271 = 0;
    theDict = 0;
    v25 = 0;
    v274 = 0;
    v256 = 0;
    v257 = 0;
    v266 = 0;
    v263 = 0;
    v259 = *(&v342 + 1);
    cf = v343;
    do
    {
      v13 = *(v3 + 8);
      *(&v315 + v13) = *(v3 + 12);
      switch(v13)
      {
        case 0:
          pixelBuffer = *v3;
          v14 = &__s[strlen(__s)];
          v15 = 8271;
          goto LABEL_54;
        case 1:
          strcat(__s, "R ");
          v282 = *v3;
          break;
        case 3:
          v253 = *v3;
          v14 = &__s[strlen(__s)];
          v15 = 8262;
          goto LABEL_54;
        case 4:
          v18 = strlen(__s);
          v19 = 2118977;
          goto LABEL_66;
        case 5:
          v25 = *v3;
          v18 = strlen(__s);
          v19 = 2117715;
          goto LABEL_66;
        case 6:
          v26 = *v3;
          v14 = &__s[strlen(__s)];
          v15 = 8259;
          goto LABEL_54;
        case 7:
          v27 = *v3;
          v14 = &__s[strlen(__s)];
          v15 = 8275;
          goto LABEL_54;
        case 9:
          allocator = *v3;
          v18 = strlen(__s);
          v19 = 2115923;
          goto LABEL_66;
        case 10:
          texture = *v3;
          v14 = &__s[strlen(__s)];
          v15 = 8242;
          goto LABEL_54;
        case 12:
          v257 = *v3;
          v18 = strlen(__s);
          v19 = 2119748;
          goto LABEL_66;
        case 13:
          v256 = *v3;
          v18 = strlen(__s);
          v19 = 2120004;
          goto LABEL_66;
        case 14:
          v255 = *v3;
          v18 = strlen(__s);
          v19 = 2116935;
          goto LABEL_66;
        case 15:
          v270 = *v3;
          v18 = strlen(__s);
          v19 = 2119758;
          goto LABEL_66;
        case 17:
          v274 = *v3;
          v14 = &__s[strlen(__s)];
          v15 = 8260;
LABEL_54:
          *v14 = v15;
          v14[2] = 0;
          break;
        case 19:
          v268 = *v3;
          v18 = strlen(__s);
          v19 = 2110034;
          goto LABEL_66;
        case 20:
          v250 = *v3;
          v18 = strlen(__s);
          v19 = 2118226;
          goto LABEL_66;
        case 21:
          v251 = *v3;
          v18 = strlen(__s);
          v19 = 2110030;
          goto LABEL_66;
        case 22:
          v252 = *v3;
          v18 = strlen(__s);
          v19 = 2118224;
          goto LABEL_66;
        case 23:
          v18 = strlen(__s);
          v19 = 2117702;
          goto LABEL_66;
        case 24:
          v249 = *v3;
          v18 = strlen(__s);
          v19 = 2115926;
          goto LABEL_66;
        case 26:
          v263 = *v3;
          v20 = &__s[strlen(__s)];
          v21 = 20563;
          goto LABEL_32;
        case 29:
          *&__s[strlen(__s)] = 2118227;
          v275 = *v3;
          break;
        case 30:
          *&__s[strlen(__s)] = 2118228;
          *(&v290 + 1) = *v3;
          break;
        case 31:
          sourceBuffer = *v3;
          v18 = strlen(__s);
          v19 = 2119747;
          goto LABEL_66;
        case 32:
          v23 = &__s[strlen(__s)];
          v24 = 1297368659;
          goto LABEL_62;
        case 33:
          v20 = &__s[strlen(__s)];
          v21 = 20555;
LABEL_32:
          v22 = v21 | 0x20440000;
          goto LABEL_64;
        case 34:
          v296 = *v3;
          v23 = &__s[strlen(__s)];
          v24 = 1347833171;
          goto LABEL_62;
        case 35:
          v259 = *v3;
          v16 = &__s[strlen(__s)];
          *v16 = 1398164819;
          v17 = 19283;
          goto LABEL_60;
        case 36:
          *&cf = *v3;
          v23 = &__s[strlen(__s)];
          v24 = 1213615443;
          goto LABEL_62;
        case 37:
          *(&cf + 1) = *v3;
          v23 = &__s[strlen(__s)];
          v24 = 1398164819;
          goto LABEL_62;
        case 39:
          v269 = *v3;
          v20 = &__s[strlen(__s)];
          v22 = 542265936;
          goto LABEL_64;
        case 40:
          buffer = *v3;
          v23 = &__s[strlen(__s)];
          v24 = 1213483336;
          goto LABEL_62;
        case 41:
          v271 = *v3;
          v18 = strlen(__s);
          v19 = 2108242;
LABEL_66:
          *&__s[v18] = v19;
          break;
        case 42:
          v272 = *v3;
          *&__s[strlen(__s)] = 0x20485454534E41;
          break;
        case 44:
          v273 = *v3;
          v23 = &__s[strlen(__s)];
          v24 = 1195725655;
LABEL_62:
          *v23 = v24;
          *(v23 + 2) = 32;
          break;
        case 45:
          v266 = *v3;
          v20 = &__s[strlen(__s)];
          v22 = 542461257;
LABEL_64:
          *v20 = v22;
          v20[4] = 0;
          break;
        case 46:
          theDict = *v3;
          v16 = &__s[strlen(__s)];
          *v16 = 1314079556;
          v17 = 22094;
LABEL_60:
          *(v16 + 3) = v17 | 0x200000;
          break;
        default:
          break;
      }

      if (theArray)
      {
        v28 = *(v3 + 8);
        if (v28 <= 0x1C)
        {
          CFArrayAppendValue(theArray, kCMEventLogger_BufferPoolTypeString[v28]);
          v29 = v297;
        }
      }

      v3 += 16;
      --v6;
    }

    while (v6);
    v343 = cf;
    *(&v342 + 1) = v259;
    v258 = v25 == 0;
    v30 = v27;
    v31 = v296;
  }

  else
  {
    v31 = 0;
    theDict = 0;
    v266 = 0;
    v251 = 0;
    v252 = 0;
    v270 = 0;
    v271 = 0;
    v255 = 0;
    v256 = 0;
    v257 = 0;
    v273 = 0;
    v274 = 0;
    v272 = 0;
    buffer = 0;
    texture = 0;
    v268 = 0;
    v269 = 0;
    v263 = 0;
    v249 = 0;
    allocator = 0;
    sourceBuffer = 0;
    v250 = 0;
    v30 = 0;
    v26 = 0;
    v253 = 0;
    v290 = 0uLL;
    v275 = 0;
    v282 = 0;
    pixelBuffer = 0;
    v29 = v297;
  }

  v32 = v26;
  *&v342 = v31;
  v33 = DerivedStorage;
  v34 = v30;
  if (v30 || allocator)
  {
    v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v39 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(DerivedStorage + 156);
      LODWORD(buf[0].value) = 136315906;
      *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
      LOWORD(buf[0].flags) = 1024;
      *(&buf[0].flags + 2) = v40;
      WORD1(buf[0].epoch) = 1024;
      HIDWORD(buf[0].epoch) = v276;
      LOWORD(buf[1].value) = 2080;
      *(&buf[1].value + 2) = __s;
      v37 = v39;
      v38 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_86;
    }
  }

  else if (dword_2810032C4)
  {
    v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v35 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = *(DerivedStorage + 156);
      LODWORD(buf[0].value) = 136315906;
      *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
      LOWORD(buf[0].flags) = 1024;
      *(&buf[0].flags + 2) = v36;
      WORD1(buf[0].epoch) = 1024;
      HIDWORD(buf[0].epoch) = v276;
      LOWORD(buf[1].value) = 2080;
      *(&buf[1].value + 2) = __s;
      v37 = v35;
      v38 = OS_LOG_TYPE_INFO;
LABEL_86:
      _os_log_impl(&dword_2247DB000, v37, v38, "%s - (channel %d): (count=%d) %s\n", buf, 0x22u);
    }
  }

  if (sourceBuffer && !v34)
  {
    if (*(DerivedStorage + 2504))
    {
      v34 = 0;
    }

    else
    {
      LOBYTE(v241) = 0;
      v34 = H16ISP::H16ISPCreateCVBuffer(0x40u, 0x40u, 0, 0, 0, 1, 0.0, 64, 64, 0, v241, 0, 0, -1);
      CVBufferPropagateAttachments(sourceBuffer, v34);
      CVBufferRemoveAllAttachments(sourceBuffer);
      v33 = DerivedStorage;
      v29 = v297;
    }
  }

  v277 = v34;
  v245 = (v34 | allocator) != 0;
  v41 = texture;
  if (v34 | allocator)
  {
    v41 = 0;
  }

  v254 = v41;
  if (v34 | allocator)
  {
    v42 = 0;
  }

  else
  {
    v42 = v32;
  }

  v248 = v42;
  if (*(v33 + 698) == 1)
  {
    if (v34 | allocator || pixelBuffer | v254 | v42 | v268)
    {
      v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v43 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v43;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        MyH16ISPFrameReceivedProc();
      }

LABEL_106:
      MyH16ISPFrameReceiverMessageProc(5, 0, 0, 0, 0, v284);
      pthread_mutex_unlock((DerivedStorage + 328));
      kdebug_trace();
      return 0;
    }
  }

  else if (pixelBuffer)
  {
    v46 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v46 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v46;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      MyH16ISPFrameReceivedProc();
    }

    goto LABEL_106;
  }

  v44 = v33 + 4096;
  if ((*(v29 + 107) & 0x40) != 0 && *(v33 + 4968) == 1)
  {
    if (*(v33 + 4960))
    {
      if (snprintf(buf, 0x80uLL, "H16ISPCaptureDevice: [ch%d] Time from stream start to first frame", *(v33 + 156)) <= 0x7F)
      {
        v45 = buf;
      }

      else
      {
        v45 = "H16ISPCaptureDevice: Time from stream start to first frame";
      }

      H16ISP::H16ISPTimeLogger::end(*(v33 + 4960), v45, 0, 1);
      *(v33 + 4968) = 0;
      goto LABEL_124;
    }

    v47 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v47 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v47;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      MyH16ISPFrameReceivedProc();
LABEL_124:
      v33 = DerivedStorage;
    }
  }

  if ((*(v44 + 873) & 1) == 0)
  {
    *(v44 + 873) = 1;
    v48 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v48 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v48;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = *(v33 + 156);
      LODWORD(buf[0].value) = 136315394;
      *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
      LOWORD(buf[0].flags) = 1024;
      *(&buf[0].flags + 2) = v49;
      _os_log_impl(&dword_2247DB000, v48, OS_LOG_TYPE_INFO, "%s - First frame received on channel %d\n", buf, 0x12u);
    }

    v50 = *(v33 + 56);
    v51 = 5.0;
    if (v50 > 2.0)
    {
      v51 = 2.0;
      if (v50 <= 3.0)
      {
        v51 = 3.0;
      }
    }

    H16ISP::H16ISPFrameReceiver::SetFrameDoneTimeoutDuration(*(v33 + 160), v51);
  }

  v246 = v44;
  v52 = MEMORY[0x277CF3F70];
  v53 = pixelBuffer;
  if (pixelBuffer)
  {
    goto LABEL_136;
  }

  v53 = v254;
  if (v254)
  {
    goto LABEL_136;
  }

  v56 = allocator;
  if (v34)
  {
    v56 = v34;
  }

  v53 = v248 ? v248 : v56;
  if (v248 || v34 || allocator || (v53 = v282) != 0 || (v53 = v275) != 0 || (v53 = v268) != 0)
  {
LABEL_136:
    cf_8 = CVBufferGetAttachment(v53, *MEMORY[0x277CF3F70], 0);
  }

  else
  {
    cf_8 = 0;
  }

  sampleBufferOut = 0;
  v54 = FigHostTimeToNanoseconds();
  CMTimeMake(&v303, v54, 1000000000);
  v55 = v297;
  v57 = DerivedStorage;
  if (v266 && *(DerivedStorage + 2904) == 1 && *(DerivedStorage + 2912))
  {
    if (H16ISP::H16ISPDevice::ISP_GetCameraTime(*(v297 + 24), &outputStruct))
    {
      v58 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v58 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v58;
      }

      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        MyH16ISPFrameReceivedProc();
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      ParseDCSIMUDataBuffer(v266, Mutable, outputStruct, *(&outputStruct + 1));
      v60 = *(DerivedStorage + 2912);
      buf[0] = v303;
      (*(v60 + 16))();
      CFRelease(Mutable);
    }

    v57 = DerivedStorage;
    v55 = v297;
  }

  if (theDict && *(v57 + 2904) == 1 && *(v57 + 2912))
  {
    if (H16ISP::H16ISPDevice::ISP_GetCameraTime(*(v55 + 24), &outputStruct))
    {
      v61 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v61 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v61;
      }

      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        MyH16ISPFrameReceivedProc();
      }
    }

    else
    {
      v62 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      ParseDCSNonVisionDataBuffer(theDict, v62, outputStruct, *(&outputStruct + 1));
      v63 = *(DerivedStorage + 2912);
      buf[0] = v303;
      (*(v63 + 16))();
      CFRelease(v62);
    }

    v57 = DerivedStorage;
    v55 = v297;
  }

  if (*(*(*(v55 + 24) + 4304) + 104 * v247 + 16) == 1919246706)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::isWideForcedToStream(*(v55 + 272));
    v57 = DerivedStorage;
  }

  if ((*(v57 + 698) & 1) == 0)
  {
    v64 = CMBufferQueueGetBufferCount(*(v57 + 24)) > 1;
    v57 = DerivedStorage;
    if (v64 && v258)
    {
      v65 = *MEMORY[0x277CBECE8];
      v66 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v66)
      {
        v67 = FigHostTimeToNanoseconds();
        CMTimeMake(buf, v67, 1000000000);
        v68 = CMTimeCopyAsDictionary(buf, v65);
        if (v68)
        {
          CFDictionarySetValue(v66, *MEMORY[0x277CF53B8], v68);
          CFRelease(v68);
        }

        H16ISPPostNotification(*MEMORY[0x277CF53C8], v284, v66);
        CFRelease(v66);
      }

      else
      {
        H16ISPPostNotification(*MEMORY[0x277CF53C8], v284, 0);
      }

      kdebug_trace();
      pthread_mutex_unlock((DerivedStorage + 328));
      return 0;
    }
  }

  *&sampleTiming.duration.value = *MEMORY[0x277CC0898];
  sampleTiming.duration.epoch = *(MEMORY[0x277CC0898] + 16);
  sampleTiming.presentationTimeStamp = v303;
  sampleTiming.decodeTimeStamp = sampleTiming.duration;
  if (!pixelBuffer || (*(v57 + 698) & 1) != 0)
  {
LABEL_192:
    if (!*(v57 + 104) && (*(v57 + 698) != 1 || (*(v57 + 776) & 1) == 0 && (*(v57 + 976) & 1) == 0 && (*(v57 + 1176) & 1) == 0 && (*(v57 + 1376) & 1) == 0 && (*(v57 + 1576) & 1) == 0 && (*(v57 + 1904) & 1) == 0 && *(v57 + 4080) != 1))
    {
      texturea = 0;
      v79 = 0;
LABEL_218:
      v80 = cf_8;
      goto LABEL_219;
    }

    v77 = *MEMORY[0x277CBECE8];
    v78 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v79 = v78;
    v80 = cf_8;
    if (v78)
    {
      if (cf_8)
      {
        CFDictionarySetValue(v78, *MEMORY[0x277CF3F10], cf_8);
        v80 = cf_8;
      }

      v81 = MEMORY[0x277CF3F08];
      if (v282)
      {
        CFDictionarySetValue(v79, *MEMORY[0x277CF3F08], v282);
        v80 = cf_8;
      }

      if (v271)
      {
        CFDictionarySetValue(v79, *v81, v271);
        v80 = cf_8;
      }
    }

    if (v275 != 0)
    {
      texturea = CFDictionaryCreateMutable(v77, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!texturea)
      {
        texturea = 0;
        goto LABEL_218;
      }

      v80 = cf_8;
      if (cf_8)
      {
        CFDictionarySetValue(texturea, *MEMORY[0x277CF3F10], cf_8);
        v80 = cf_8;
      }

      if (v275)
      {
        CFDictionarySetValue(texturea, *MEMORY[0x277CF3F08], v275);
        v80 = cf_8;
      }
    }

    else
    {
      texturea = 0;
    }

LABEL_219:
    if (pixelBuffer && sampleBufferOut)
    {
      if (v80)
      {
        CMSetAttachment(sampleBufferOut, *v52, v80, 1u);
      }

      if (v79)
      {
        CMSetAttachment(sampleBufferOut, *MEMORY[0x277CF3F88], v79, 1u);
      }

      if (texturea)
      {
        CMSetAttachment(sampleBufferOut, *MEMORY[0x277CF3F98], texturea, 1u);
      }
    }

    if (v263 && (v82 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (theDicta = v82) != 0))
    {
      CFDictionarySetValue(v82, @"SPD", v263);
    }

    else
    {
      theDicta = 0;
    }

    buf[0].value = v282;
    *&buf[0].timescale = v275;
    buf[0].epoch = *(&v290 + 1);
    buf[1].value = v290;
    *&buf[1].timescale = sourceBuffer;
    buf[1].epoch = v269;
    buf[2].value = v271;
    *&buf[2].timescale = 0;
    v301 = 0;
    v302 = 0;
    __p = 0;
    std::vector<__CVBuffer *>::__init_with_size[abi:ne200100]<__CVBuffer * const*,__CVBuffer * const*>(&__p, &buf[0].value, &buf[2].epoch, 8uLL);
    cfa = v79;
    v84 = __p;
    v83 = v301;
    if (__p != v301)
    {
      v85 = *MEMORY[0x277CBECE8];
      v86 = *MEMORY[0x277CC4EC0];
      do
      {
        if (*v84)
        {
          LODWORD(buf[0].value) = 3;
          v87 = CFNumberCreate(v85, kCFNumberSInt32Type, buf);
          if (v87)
          {
            CVBufferSetAttachment(*v84, v86, v87, kCVAttachmentMode_ShouldNotPropagate);
            CFRelease(v87);
          }

          v83 = v301;
        }

        ++v84;
      }

      while (v84 != v83);
    }

    v88 = DerivedStorage;
    v89 = v297;
    if (v290 != 0)
    {
      v90 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v90)
      {
        if (v266)
        {
          v346.size.width = v266;
          v346.size.height = v242;
          v346.origin.y = v243;
          v346.origin.x = v244;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v346);
          if (DictionaryRepresentation)
          {
            CFDictionarySetValue(v90, *MEMORY[0x277CF5318], DictionaryRepresentation);
            if (*(&v290 + 1))
            {
              CVBufferSetAttachment(*(&v290 + 1), *MEMORY[0x277CF3F70], v90, kCVAttachmentMode_ShouldPropagate);
            }

            if (v290)
            {
              CVBufferSetAttachment(v290, *MEMORY[0x277CF3F70], v90, kCVAttachmentMode_ShouldPropagate);
            }

            CFRelease(DictionaryRepresentation);
          }
        }

        CFRelease(v90);
      }
    }

    v92 = *(DerivedStorage + 100);
    if (*(DerivedStorage + 698) != 1)
    {
      if (!dword_281003320 && CMBufferQueueEnqueue(*(DerivedStorage + 24), sampleBufferOut))
      {
        v105 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v105 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v105;
        }

        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          MyH16ISPFrameReceivedProc();
        }
      }

      v267 = 0;
      goto LABEL_747;
    }

    if (v92)
    {
      v93 = v245;
      if (v282)
      {
        v93 = 1;
      }

      if (v275)
      {
        v93 = 1;
      }

      if (v271)
      {
        v93 = 1;
      }

      if (v93 & 1) != 0 || sourceBuffer && (*(DerivedStorage + 2504))
      {
        if (v277 && (*(DerivedStorage + 1304) & 1) != 0 || (v94 = *(DerivedStorage + 1504), v94 == 1) && allocator || (v95 = *(DerivedStorage + 1704), v95 == 1) && v282 || (((v94 | *(DerivedStorage + 1304)) | v95) & 1) == 0 && pixelBuffer | v254 || *(DerivedStorage + 2504) == 1 && (sourceBuffer || v282 || v275 || v271))
        {
          v96 = v92 - 1;
          *(DerivedStorage + 100) = v92 - 1;
          v97 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          v98 = MEMORY[0x277D86220];
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v97 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v97;
            v96 = *(DerivedStorage + 100);
          }

          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v99 = *(DerivedStorage + 156);
            LODWORD(buf[0].value) = 136315906;
            *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
            LOWORD(buf[0].flags) = 1024;
            *(&buf[0].flags + 2) = v99;
            WORD1(buf[0].epoch) = 1024;
            HIDWORD(buf[0].epoch) = 0;
            LOWORD(buf[1].value) = 1024;
            *(&buf[1].value + 2) = v96;
            _os_log_impl(&dword_2247DB000, v97, OS_LOG_TYPE_DEFAULT, "%s - (channel %d): Still frame received: prebracket=%d, (%d pending)\n", buf, 0x1Eu);
            v96 = *(DerivedStorage + 100);
          }

          if (!v96)
          {
            v100 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v98)
            {
              v100 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v100;
            }

            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              v101 = *(DerivedStorage + 156);
              LODWORD(buf[0].value) = 136315394;
              *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
              LOWORD(buf[0].flags) = 1024;
              *(&buf[0].flags + 2) = v101;
              _os_log_impl(&dword_2247DB000, v100, OS_LOG_TYPE_DEFAULT, "%s - (channel %d): Capture complete\n", buf, 0x12u);
            }

            dispatch_source_set_timer(*(DerivedStorage + 4248), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            v102 = *(DerivedStorage + 56);
            v103 = 5.0;
            if (v102 > 2.0)
            {
              v103 = 2.0;
              if (v102 <= 3.0)
              {
                v103 = 3.0;
              }
            }

            H16ISP::H16ISPFrameReceiver::SetFrameDoneTimeoutDuration(*(DerivedStorage + 160), v103);
            v104 = *(v297 + 232);
            if (v104)
            {
              LODWORD(buf[0].value) = 101;
              LOBYTE(buf[0].timescale) = 0;
              H16ISP::H16ISPServicesRemote::SetPropertyAsync(v104, buf);
            }

            else
            {
              v106 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v98)
              {
                v106 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v106;
              }

              if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf[0].value) = 136315138;
                *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
                _os_log_impl(&dword_2247DB000, v106, OS_LOG_TYPE_INFO, "%s - Could not set strobe state\n", buf, 0xCu);
              }
            }
          }
        }
      }
    }

    if (!(v274 | v257) && !v256 && !v255 && !v270)
    {
      goto LABEL_329;
    }

    if (dword_281003308 >= 1)
    {
      H16ISPDebugDepthFrameFileWriter(dword_281003308, v274, v270, cf_8, valuePtr, v307);
    }

    v107 = *MEMORY[0x277CBECE8];
    v267 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v267)
    {
      if (v274)
      {
        CFDictionarySetValue(v267, *MEMORY[0x277CF4298], v274);
      }

      if (v257)
      {
        CFDictionarySetValue(v267, *MEMORY[0x277CF4280], v257);
      }

      if (v256)
      {
        CFDictionarySetValue(v267, *MEMORY[0x277CF4290], v256);
      }

      if (v255)
      {
        CFDictionarySetValue(v267, *MEMORY[0x277CF42B0], v255);
      }

      if (v270)
      {
        CFDictionarySetValue(v267, *MEMORY[0x277CF42B8], v270);
      }

      if (v251)
      {
        CFDictionarySetValue(v267, @"NormDX2", v251);
      }

      if (valuePtr != 0.0 || v307 != 0.0)
      {
        v108 = CFNumberCreate(v107, kCFNumberFloat64Type, &valuePtr);
        if (v108)
        {
          CFDictionarySetValue(v267, *MEMORY[0x277CF42A8], v108);
          CFRelease(v108);
        }

        v109 = CFNumberCreate(v107, kCFNumberFloat64Type, &v307);
        if (v109)
        {
          CFDictionarySetValue(v267, *MEMORY[0x277CF42A0], v109);
          CFRelease(v109);
        }
      }

      if (v257)
      {
        v110 = CFNumberCreate(v107, kCFNumberSInt32Type, &v306);
        if (v110)
        {
          CFDictionarySetValue(v267, *MEMORY[0x277CF4288], v110);
          CFRelease(v110);
        }
      }
    }

    else
    {
LABEL_329:
      v267 = 0;
    }

    v111 = *(v297 + 24);
    v112 = *(DerivedStorage + 156);
    v113 = *(*(v111 + 4304) + 104 * v112 + 16);
    if (v113 == 1718186595 || v113 == 1769110115 || v113 == 1785950322)
    {
      if (v277)
      {
        HIDWORD(v316) = DWORD1(v315);
        v277 = v282;
      }

      else
      {
        v277 = 0;
      }

      if (pixelBuffer || H16ISP::H16ISPDevice::isSensorType(v111, v112, 1785950322))
      {
        LODWORD(v315) = DWORD1(v315);
        v116 = v282;
        pixelBuffer = v282;
      }

      else
      {
        pixelBuffer = 0;
        v116 = v282;
      }

      v117 = 1;
      if (v116 && cf_8)
      {
        CVBufferSetAttachment(v282, *MEMORY[0x277CF3F70], cf_8, kCVAttachmentMode_ShouldPropagate);
      }
    }

    else
    {
      v117 = 0;
    }

    if (pixelBuffer && *(DerivedStorage + 704) == 1 && *(DerivedStorage + 808))
    {
      if (v79 && !(v117 & 1 | ((*(DerivedStorage + 776) & 1) == 0)))
      {
        CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
      }

      if (texturea && !(v117 & 1 | ((*(DerivedStorage + 776) & 1) == 0)))
      {
        CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
      }

      if (v267)
      {
        CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CF3F40], v267, kCVAttachmentMode_ShouldPropagate);
      }

      if (v249)
      {
        CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CF3FD0], v249, kCVAttachmentMode_ShouldPropagate);
      }

      if (v272 && *(DerivedStorage + 3833) == 1)
      {
        v118 = *(DerivedStorage + 3840) ? *(DerivedStorage + 3840) : *MEMORY[0x277CF6630];
        if (CFStringCompare(v118, *MEMORY[0x277CF6640], 0) == kCFCompareEqualTo)
        {
          CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CF4890], v272, kCVAttachmentMode_ShouldPropagate);
        }
      }

      if (buffer)
      {
        if (*(DerivedStorage + 3737) == 1)
        {
          v119 = *(DerivedStorage + 3744) ? *(DerivedStorage + 3744) : *MEMORY[0x277CF6630];
          if (CFStringCompare(v119, *MEMORY[0x277CF6640], 0) == kCFCompareEqualTo)
          {
            CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CF4898], buffer, kCVAttachmentMode_ShouldPropagate);
          }
        }

        if (*(DerivedStorage + 3945) == 1)
        {
          v120 = *(DerivedStorage + 3952) ? *(DerivedStorage + 3952) : *MEMORY[0x277CF6630];
          if (CFStringCompare(v120, *MEMORY[0x277CF6640], 0) == kCFCompareEqualTo)
          {
            CVBufferSetAttachment(pixelBuffer, *(*(DerivedStorage + 3936) + 16), buffer, kCVAttachmentMode_ShouldPropagate);
          }
        }
      }

      if (v273 && *(DerivedStorage + 4057) == 1)
      {
        v121 = *(DerivedStorage + 4064) ? *(DerivedStorage + 4064) : *MEMORY[0x277CF6630];
        if (CFStringCompare(v121, *MEMORY[0x277CF6640], 0) == kCFCompareEqualTo)
        {
          CVBufferSetAttachment(pixelBuffer, *(*(DerivedStorage + 4048) + 16), v273, kCVAttachmentMode_ShouldPropagate);
        }
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
      H16ISP::getFrameFormatMetaInfo(PixelFormatType, &outputStruct);
      if (!dword_281003320)
      {
        if (!*(DerivedStorage + 4760))
        {
          v123 = mach_absolute_time();
          *(DerivedStorage + 4760) = v123;
          v124 = *(DerivedStorage + 4752);
          numer = info.numer;
          denom = info.denom;
          v127 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v127 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v127;
          }

          v89 = v297;
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            v128 = *(DerivedStorage + 156);
            LODWORD(buf[0].value) = 136315650;
            *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
            LOWORD(buf[0].flags) = 1024;
            *(&buf[0].flags + 2) = v128;
            WORD1(buf[0].epoch) = 2048;
            *(&buf[0].epoch + 4) = (numer / denom * (v123 - v124)) / 1000000.0;
            _os_log_impl(&dword_2247DB000, v127, OS_LOG_TYPE_DEFAULT, "%s - First channel %d PrimaryScaler frame delivered to client after %8.3f msec\n\n", buf, 0x1Cu);
          }
        }

        v129 = *(DerivedStorage + 808);
        buf[0] = v303;
        (*(v129 + 16))();
        v79 = cfa;
        v130 = *(DerivedStorage + 160);
        v131 = CVPixelBufferGetIOSurface(pixelBuffer);
        IOSurfaceGetID(v131);
        H16ISP::H16ISPFrameReceiver::updateTrackingExternal(v130);
      }
    }

    if (v254 && *(DerivedStorage + 904) == 1 && *(DerivedStorage + 1008))
    {
      if (v79 && *(DerivedStorage + 976) == 1)
      {
        CVBufferSetAttachment(v254, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
      }

      if (texturea && *(DerivedStorage + 976) == 1)
      {
        CVBufferSetAttachment(v254, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
      }

      if (v267)
      {
        CVBufferSetAttachment(v254, *MEMORY[0x277CF3F40], v267, kCVAttachmentMode_ShouldPropagate);
      }

      if (v272 && *(DerivedStorage + 3833) == 1)
      {
        v132 = *(DerivedStorage + 3840) ? *(DerivedStorage + 3840) : *MEMORY[0x277CF6630];
        if (CFStringCompare(v132, *MEMORY[0x277CF6658], 0) == kCFCompareEqualTo)
        {
          CVBufferSetAttachment(v254, *MEMORY[0x277CF4890], v272, kCVAttachmentMode_ShouldPropagate);
        }
      }

      if (buffer)
      {
        if (*(DerivedStorage + 3737) == 1)
        {
          v133 = *(DerivedStorage + 3744) ? *(DerivedStorage + 3744) : *MEMORY[0x277CF6630];
          if (CFStringCompare(v133, *MEMORY[0x277CF6658], 0) == kCFCompareEqualTo)
          {
            CVBufferSetAttachment(v254, *MEMORY[0x277CF4898], buffer, kCVAttachmentMode_ShouldPropagate);
          }
        }

        if (*(DerivedStorage + 3945) == 1)
        {
          v134 = *(DerivedStorage + 3952) ? *(DerivedStorage + 3952) : *MEMORY[0x277CF6630];
          if (CFStringCompare(v134, *MEMORY[0x277CF6658], 0) == kCFCompareEqualTo)
          {
            CVBufferSetAttachment(v254, *(*(DerivedStorage + 3936) + 16), buffer, kCVAttachmentMode_ShouldPropagate);
          }
        }
      }

      if (v273 && *(DerivedStorage + 4057) == 1)
      {
        v135 = *(DerivedStorage + 4064) ? *(DerivedStorage + 4064) : *MEMORY[0x277CF6630];
        if (CFStringCompare(v135, *MEMORY[0x277CF6658], 0) == kCFCompareEqualTo)
        {
          CVBufferSetAttachment(v254, *(*(DerivedStorage + 4048) + 16), v273, kCVAttachmentMode_ShouldPropagate);
        }
      }

      v136 = CVPixelBufferGetPixelFormatType(v254);
      H16ISP::getFrameFormatMetaInfo(v136, &outputStruct);
      if (!dword_281003320)
      {
        if (!*(DerivedStorage + 4768))
        {
          v137 = mach_absolute_time();
          *(DerivedStorage + 4768) = v137;
          v138 = *(DerivedStorage + 4752);
          v139 = info.numer;
          v140 = info.denom;
          v141 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v141 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v141;
          }

          v89 = v297;
          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            v142 = *(DerivedStorage + 156);
            LODWORD(buf[0].value) = 136315650;
            *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
            LOWORD(buf[0].flags) = 1024;
            *(&buf[0].flags + 2) = v142;
            WORD1(buf[0].epoch) = 2048;
            *(&buf[0].epoch + 4) = (v139 / v140 * (v137 - v138)) / 1000000.0;
            _os_log_impl(&dword_2247DB000, v141, OS_LOG_TYPE_DEFAULT, "%s - First channel %d SecondaryScaler frame delivered to client after %8.3f msec\n\n", buf, 0x1Cu);
          }
        }

        v143 = *(DerivedStorage + 1008);
        buf[0] = v303;
        (*(v143 + 16))();
        v79 = cfa;
        v144 = *(DerivedStorage + 160);
        v145 = CVPixelBufferGetIOSurface(v254);
        IOSurfaceGetID(v145);
        H16ISP::H16ISPFrameReceiver::updateTrackingExternal(v144);
      }
    }

    if (v248 && *(DerivedStorage + 1104) == 1 && *(DerivedStorage + 1208))
    {
      if (cf_8)
      {
        CVBufferSetAttachment(v248, *MEMORY[0x277CF3F70], cf_8, kCVAttachmentMode_ShouldPropagate);
      }

      if (v267)
      {
        CVBufferSetAttachment(v248, *MEMORY[0x277CF3F40], v267, kCVAttachmentMode_ShouldPropagate);
      }

      if (v79 && *(DerivedStorage + 1176) == 1)
      {
        CVBufferSetAttachment(v248, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
      }

      if (texturea && *(DerivedStorage + 1176) == 1)
      {
        CVBufferSetAttachment(v248, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
      }

      if (v272 && *(DerivedStorage + 3833) == 1)
      {
        v146 = *(DerivedStorage + 3840) ? *(DerivedStorage + 3840) : *MEMORY[0x277CF6630];
        if (CFStringCompare(v146, *MEMORY[0x277CF6628], 0) == kCFCompareEqualTo)
        {
          CVBufferSetAttachment(v248, *MEMORY[0x277CF4890], v272, kCVAttachmentMode_ShouldPropagate);
        }
      }

      if (buffer)
      {
        if (*(DerivedStorage + 3737) == 1)
        {
          v147 = *(DerivedStorage + 3744) ? *(DerivedStorage + 3744) : *MEMORY[0x277CF6630];
          if (CFStringCompare(v147, *MEMORY[0x277CF6628], 0) == kCFCompareEqualTo)
          {
            CVBufferSetAttachment(v248, *MEMORY[0x277CF4898], buffer, kCVAttachmentMode_ShouldPropagate);
          }
        }

        if (*(DerivedStorage + 3945) == 1)
        {
          v148 = *(DerivedStorage + 3952) ? *(DerivedStorage + 3952) : *MEMORY[0x277CF6630];
          if (CFStringCompare(v148, *MEMORY[0x277CF6628], 0) == kCFCompareEqualTo)
          {
            CVBufferSetAttachment(v248, *(*(DerivedStorage + 3936) + 16), buffer, kCVAttachmentMode_ShouldPropagate);
          }
        }
      }

      if (v273 && *(DerivedStorage + 4057) == 1)
      {
        v149 = *(DerivedStorage + 4064) ? *(DerivedStorage + 4064) : *MEMORY[0x277CF6630];
        if (CFStringCompare(v149, *MEMORY[0x277CF6628], 0) == kCFCompareEqualTo)
        {
          CVBufferSetAttachment(v248, *(*(DerivedStorage + 4048) + 16), v273, kCVAttachmentMode_ShouldPropagate);
        }
      }

      v150 = CVPixelBufferGetPixelFormatType(v248);
      H16ISP::getFrameFormatMetaInfo(v150, &outputStruct);
      if (!dword_281003320)
      {
        if (!*(DerivedStorage + 4776))
        {
          v151 = mach_absolute_time();
          *(DerivedStorage + 4776) = v151;
          v152 = *(DerivedStorage + 4752);
          v153 = info.numer;
          v154 = info.denom;
          v155 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v155 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v155;
          }

          v89 = v297;
          if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
          {
            v156 = *(DerivedStorage + 156);
            LODWORD(buf[0].value) = 136315650;
            *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
            LOWORD(buf[0].flags) = 1024;
            *(&buf[0].flags + 2) = v156;
            WORD1(buf[0].epoch) = 2048;
            *(&buf[0].epoch + 4) = (v153 / v154 * (v151 - v152)) / 1000000.0;
            _os_log_impl(&dword_2247DB000, v155, OS_LOG_TYPE_DEFAULT, "%s - First channel %d IntermediateTap frame delivered to client after %8.3f msec\n\n", buf, 0x1Cu);
          }
        }

        v157 = *(DerivedStorage + 1208);
        buf[0] = v303;
        (*(v157 + 16))();
        v79 = cfa;
        v158 = *(DerivedStorage + 160);
        v159 = CVPixelBufferGetIOSurface(v248);
        IOSurfaceGetID(v159);
        H16ISP::H16ISPFrameReceiver::updateTrackingExternal(v158);
      }
    }

    if (v277 && *(DerivedStorage + 1304) == 1 && *(DerivedStorage + 1408))
    {
      if (v79 && *(DerivedStorage + 1376) == 1)
      {
        CVBufferSetAttachment(v277, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
      }

      if (texturea && *(DerivedStorage + 1376) == 1)
      {
        CVBufferSetAttachment(v277, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
      }

      if (*(&v290 + 1) && (*(DerivedStorage + 1377) & 1) != 0)
      {
        CVBufferSetAttachment(v277, *MEMORY[0x277CF3F90], *(&v290 + 1), kCVAttachmentMode_ShouldPropagate);
      }

      if (v250 && *(DerivedStorage + 1424) == 1)
      {
        CVBufferSetAttachment(v277, *MEMORY[0x277CF3FB8], v250, kCVAttachmentMode_ShouldPropagate);
      }

      if (v252 && *(DerivedStorage + 1428))
      {
        CVBufferSetAttachment(v277, *MEMORY[0x277CF3FA8], v252, kCVAttachmentMode_ShouldPropagate);
      }

      v160 = v117 ^ 1;
      if (!v267)
      {
        v160 = 1;
      }

      if ((v160 & 1) == 0)
      {
        CVBufferSetAttachment(v277, *MEMORY[0x277CF3F40], v267, kCVAttachmentMode_ShouldPropagate);
      }

      if (theDicta && *(DerivedStorage + 1400) == 1)
      {
        CVBufferSetAttachment(v277, *MEMORY[0x277CF3F38], theDicta, kCVAttachmentMode_ShouldPropagate);
      }

      if (!dword_281003320)
      {
        v161 = *(DerivedStorage + 1408);
        buf[0] = v303;
        (*(v161 + 16))();
        v162 = *(DerivedStorage + 160);
        v163 = CVPixelBufferGetIOSurface(v277);
        IOSurfaceGetID(v163);
        H16ISP::H16ISPFrameReceiver::updateTrackingExternal(v162);
      }
    }

    if (allocator && *(DerivedStorage + 1504) == 1 && *(DerivedStorage + 1608))
    {
      if (v79 && *(DerivedStorage + 1576) == 1)
      {
        CVBufferSetAttachment(allocator, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
      }

      if (texturea && *(DerivedStorage + 1576) == 1)
      {
        CVBufferSetAttachment(allocator, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
      }

      if (*(&v290 + 1) && (*(DerivedStorage + 1577) & 1) != 0)
      {
        CVBufferSetAttachment(allocator, *MEMORY[0x277CF3F90], *(&v290 + 1), kCVAttachmentMode_ShouldPropagate);
      }

      if (v250 && (*(DerivedStorage + 1304) == 1 && (*(DerivedStorage + 1424) & 1) != 0 || *(DerivedStorage + 1504) == 1 && *(DerivedStorage + 1624) == 1))
      {
        CVBufferSetAttachment(allocator, *MEMORY[0x277CF3FB8], v250, kCVAttachmentMode_ShouldPropagate);
      }

      if (v252 && *(DerivedStorage + 1428))
      {
        CVBufferSetAttachment(v277, *MEMORY[0x277CF3FA8], v252, kCVAttachmentMode_ShouldPropagate);
      }

      v164 = v117 ^ 1;
      if (!v267)
      {
        v164 = 1;
      }

      if ((v164 & 1) == 0)
      {
        CVBufferSetAttachment(allocator, *MEMORY[0x277CF3F40], v267, kCVAttachmentMode_ShouldPropagate);
      }

      if (theDicta && *(DerivedStorage + 1600) == 1)
      {
        CVBufferSetAttachment(allocator, *MEMORY[0x277CF3F38], theDicta, kCVAttachmentMode_ShouldPropagate);
      }

      if (!dword_281003320)
      {
        v165 = *(DerivedStorage + 1608);
        buf[0] = v303;
        (*(v165 + 16))();
        v166 = *(DerivedStorage + 160);
        v167 = CVPixelBufferGetIOSurface(allocator);
        IOSurfaceGetID(v167);
        H16ISP::H16ISPFrameReceiver::updateTrackingExternal(v166);
      }
    }

    if (v267 && *(DerivedStorage + 1904) == 1)
    {
      if (v277 | allocator)
      {
        v168 = 1;
      }

      else
      {
        v168 = *(DerivedStorage + 2008) == 0;
      }

      v169 = v168;
      if (v270)
      {
        v170 = 1;
      }

      else
      {
        v170 = (v274 | v257) != 0;
      }

      if (v256)
      {
        v170 = 1;
      }

      if ((v169 & 1) == 0 && v170)
      {
        if (v274)
        {
          CFDictionaryRemoveValue(v267, *MEMORY[0x277CF4298]);
          v171 = v274;
        }

        else if (v270)
        {
          CFDictionaryRemoveValue(v267, *MEMORY[0x277CF42B8]);
          v171 = v270;
        }

        else if (v257)
        {
          CFDictionaryRemoveValue(v267, *MEMORY[0x277CF4280]);
          v171 = v257;
        }

        else
        {
          CFDictionaryRemoveValue(v267, *MEMORY[0x277CF4290]);
          v171 = v256;
        }

        v172 = v171;
        CVBufferSetAttachment(v171, *MEMORY[0x277CF3F40], v267, kCVAttachmentMode_ShouldPropagate);
        if (v79 && *(DerivedStorage + 1976) == 1)
        {
          CVBufferSetAttachment(v172, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
        }

        if (texturea && *(DerivedStorage + 1976) == 1)
        {
          CVBufferSetAttachment(v172, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
        }

        if (!dword_281003320)
        {
          if (!*(DerivedStorage + 4784))
          {
            v173 = mach_absolute_time();
            *(DerivedStorage + 4784) = v173;
            v174 = *(DerivedStorage + 4752);
            v175 = info.numer;
            v176 = info.denom;
            v177 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v177 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v177;
            }

            v89 = v297;
            if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
            {
              v178 = *(DerivedStorage + 156);
              LODWORD(buf[0].value) = 136315650;
              *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
              LOWORD(buf[0].flags) = 1024;
              *(&buf[0].flags + 2) = v178;
              WORD1(buf[0].epoch) = 2048;
              *(&buf[0].epoch + 4) = (v175 / v176 * (v173 - v174)) / 1000000.0;
              _os_log_impl(&dword_2247DB000, v177, OS_LOG_TYPE_DEFAULT, "%s - first channel %d Depth frame delivered to client after %8.3f msec\n\n", buf, 0x1Cu);
            }
          }

          v179 = *(DerivedStorage + 2008);
          buf[0] = v303;
          (*(v179 + 16))();
          v79 = cfa;
          v180 = *(DerivedStorage + 160);
          v181 = CVPixelBufferGetIOSurface(v172);
          IOSurfaceGetID(v181);
          H16ISP::H16ISPFrameReceiver::updateTrackingExternal(v180);
        }
      }
    }

    if (v282 && *(DerivedStorage + 2104) == 1 && *(DerivedStorage + 2208))
    {
      if (v267)
      {
        CVBufferSetAttachment(v282, *MEMORY[0x277CF3F40], v267, kCVAttachmentMode_ShouldPropagate);
      }

      if (cf_8)
      {
        CVBufferSetAttachment(v282, *MEMORY[0x277CF3F70], cf_8, kCVAttachmentMode_ShouldPropagate);
      }

      pixelBuffer = v282;
      if (!dword_281003320)
      {
        v182 = *(DerivedStorage + 2208);
        buf[0] = v303;
        (*(v182 + 16))();
        v183 = *(DerivedStorage + 160);
        v184 = CVPixelBufferGetIOSurface(v282);
        IOSurfaceGetID(v184);
        H16ISP::H16ISPFrameReceiver::updateTrackingExternal(v183);
        pixelBuffer = v282;
      }
    }

    if (v269 && *(DerivedStorage + 2304) == 1 && *(DerivedStorage + 2408))
    {
      if (cf_8)
      {
        CVBufferSetAttachment(v269, *MEMORY[0x277CF3F70], cf_8, kCVAttachmentMode_ShouldPropagate);
      }

      if (v79 && *(DerivedStorage + 2376) == 1)
      {
        CVBufferSetAttachment(v269, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
      }

      if (texturea && *(DerivedStorage + 2376) == 1)
      {
        CVBufferSetAttachment(v269, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
      }

      v185 = H16ISPAddProResRawBuffersMetadata(0, v269, pixelBuffer);
      if (v185)
      {
        v186 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v186 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v186;
        }

        if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].value) = 136315650;
          *(&buf[0].value + 4) = "MyH16ISPFrameReceivedProc";
          LOWORD(buf[0].flags) = 2080;
          *(&buf[0].flags + 2) = "MyH16ISPFrameReceivedProc";
          HIWORD(buf[0].epoch) = 1024;
          LODWORD(buf[1].value) = v185;
          _os_log_impl(&dword_2247DB000, v186, OS_LOG_TYPE_DEFAULT, "%s - %s - H16ISPAddProResRawBuffersMetadata failed, error: %d\n\n", buf, 0x1Cu);
        }
      }

      if (!dword_281003320)
      {
        v187 = *(DerivedStorage + 2408);
        buf[0] = v303;
        (*(v187 + 16))();
      }
    }

    if (v268 && *(DerivedStorage + 2704) == 1 && *(DerivedStorage + 2808))
    {
      if (v79 && !(v117 & 1 | ((*(DerivedStorage + 2776) & 1) == 0)))
      {
        CVBufferSetAttachment(v268, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
      }

      if (texturea && !(v117 & 1 | ((*(DerivedStorage + 2776) & 1) == 0)))
      {
        CVBufferSetAttachment(v268, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
      }

      if (cf_8)
      {
        CVBufferSetAttachment(v268, *MEMORY[0x277CF3F70], cf_8, kCVAttachmentMode_ShouldPropagate);
      }

      if (v267)
      {
        CVBufferSetAttachment(v268, *MEMORY[0x277CF3F40], v267, kCVAttachmentMode_ShouldPropagate);
      }

      if (!dword_281003320)
      {
        v188 = *(DerivedStorage + 2808);
        buf[0] = v303;
        (*(v188 + 16))();
        v189 = *(DerivedStorage + 160);
        v190 = CVPixelBufferGetIOSurface(v268);
        IOSurfaceGetID(v190);
        H16ISP::H16ISPFrameReceiver::updateTrackingExternal(v189);
      }
    }

    if (v282)
    {
      if (*(DerivedStorage + 4080) == 1)
      {
        if (*(DerivedStorage + 4120))
        {
          Attachment = CVBufferGetAttachment(v282, @"PointCloudRidingOnRaw", 0);
          v192 = Attachment;
          if (Attachment)
          {
            CVBufferRetain(Attachment);
            CVBufferRemoveAttachment(v282, @"PointCloudRidingOnRaw");
            if (v79 && *(v246 + 16) == 1)
            {
              CVBufferSetAttachment(v192, *MEMORY[0x277CF3F88], v79, kCVAttachmentMode_ShouldPropagate);
            }

            if (texturea && *(v246 + 16) == 1)
            {
              CVBufferSetAttachment(v192, *MEMORY[0x277CF3F98], texturea, kCVAttachmentMode_ShouldPropagate);
            }

            if (cf_8)
            {
              CVBufferSetAttachment(v192, *MEMORY[0x277CF3F70], cf_8, kCVAttachmentMode_ShouldPropagate);
            }

            if (!dword_281003320)
            {
              v193 = *(DerivedStorage + 4120);
              buf[0] = v303;
              (*(v193 + 16))();
            }

            CVBufferRelease(v192);
          }
        }
      }
    }

    if (*(DerivedStorage + 2904) != 1)
    {
LABEL_747:
      if (__p)
      {
        v301 = __p;
        operator delete(__p);
      }

      goto LABEL_749;
    }

    v194 = *(v89 + 24);
    outputStruct = 0uLL;
    v314 = 0;
    if (!v253)
    {
LABEL_707:
      if (*(v88 + 2912))
      {
        v230 = *MEMORY[0x277CBECE8];
        v231 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v231)
        {
          if (*(v88 + 3737) == 1 && buffer)
          {
            v232 = *(v88 + 3744) ? *(v88 + 3744) : *MEMORY[0x277CF6630];
            if (CFStringCompare(v232, *MEMORY[0x277CF6630], 0) == kCFCompareEqualTo)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277CF4898], buffer);
            }
          }

          if (*(v88 + 3833) == 1 && v272)
          {
            v233 = *(v88 + 3840) ? *(v88 + 3840) : *MEMORY[0x277CF6630];
            if (CFStringCompare(v233, *MEMORY[0x277CF6630], 0) == kCFCompareEqualTo)
            {
              CFDictionarySetValue(v231, *MEMORY[0x277CF4890], v272);
            }
          }

          if (buffer && *(v88 + 3945) == 1)
          {
            v234 = *(v88 + 3952) ? *(v88 + 3952) : *MEMORY[0x277CF6630];
            if (CFStringCompare(v234, *MEMORY[0x277CF6630], 0) == kCFCompareEqualTo)
            {
              CFDictionarySetValue(v231, *(*(v88 + 3936) + 16), buffer);
            }
          }

          if (v273 && *(v88 + 4057) == 1)
          {
            v235 = *(v88 + 4064) ? *(v88 + 4064) : *MEMORY[0x277CF6630];
            if (CFStringCompare(v235, *MEMORY[0x277CF6630], 0) == kCFCompareEqualTo)
            {
              CFDictionarySetValue(v231, *(*(v88 + 4048) + 16), v273);
            }
          }

          Copy = CFDictionaryCreateCopy(v230, v231);
          CFRelease(v231);
          if (Copy)
          {
            v237 = *(v88 + 2912);
            buf[0] = v303;
            (*(v237 + 16))();
            CFRelease(Copy);
          }

          else
          {
            v239 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v239 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v239;
            }

            if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
            {
              MyH16ISPFrameReceivedProc();
            }
          }
        }

        else
        {
          v238 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v238 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v238;
          }

          if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
          {
            MyH16ISPFrameReceivedProc();
          }
        }
      }

      goto LABEL_747;
    }

    v195 = 0;
    v196 = 0;
    v197 = (DerivedStorage + 3353);
    do
    {
      if (*(&v342 + v196) && *v197 == 1)
      {
        if (v195 >= v314)
        {
          v198 = outputStruct;
          v199 = v195 - outputStruct;
          v200 = (v195 - outputStruct) >> 2;
          v201 = v200 + 1;
          if ((v200 + 1) >> 62)
          {
            std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
          }

          v202 = v314 - outputStruct;
          if ((v314 - outputStruct) >> 1 > v201)
          {
            v201 = v202 >> 1;
          }

          if (v202 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v203 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v203 = v201;
          }

          if (v203)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](&outputStruct, v203);
          }

          v204 = (v195 - outputStruct) >> 2;
          v205 = (4 * v200);
          v206 = (4 * v200 - 4 * v204);
          *v205 = v196;
          v195 = v205 + 1;
          memcpy(v206, v198, v199);
          v207 = outputStruct;
          *&outputStruct = v206;
          *(&outputStruct + 1) = v195;
          v314 = 0;
          if (v207)
          {
            operator delete(v207);
          }
        }

        else
        {
          *v195++ = v196;
        }

        *(&outputStruct + 1) = v195;
      }

      ++v196;
      v197 += 96;
    }

    while (v196 != 4);
    v208 = outputStruct;
    if (outputStruct == v195)
    {
LABEL_705:
      if (v208)
      {
        *(&outputStruct + 1) = v208;
        operator delete(v208);
      }

      goto LABEL_707;
    }

    if (H16ISP::H16ISPDevice::ISP_GetCameraTime(v194, &v312))
    {
      v209 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v209 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v209;
      }

      if (!os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_704;
      }

      MyH16ISPFrameReceivedProc();
    }

    else
    {
      allocatora = *MEMORY[0x277CBECE8];
      v293 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v293)
      {
        if (CVPixelBufferLockBaseAddress(v253, 1uLL))
        {
          v210 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v210 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v210;
          }

          if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
          {
            MyH16ISPFrameReceivedProc();
            v88 = DerivedStorage;
          }
        }

        else
        {
          BaseAddress = CVPixelBufferGetBaseAddress(v253);
          if (BaseAddress)
          {
            memcpy(buf, BaseAddress, sizeof(buf));
          }

          CVPixelBufferUnlockBaseAddress(v253, 1uLL);
          if (BaseAddress)
          {
            v347.origin.x = SLODWORD(buf[7162].value);
            v347.origin.y = SHIDWORD(buf[7162].value);
            LODWORD(v213) = buf[7162].timescale;
            v347.size.width = v213;
            LODWORD(v214) = buf[7162].flags;
            v347.size.height = v214;
            v215 = CGRectCreateDictionaryRepresentation(v347);
            v348.origin.x = SHIDWORD(buf[7163].value);
            v348.origin.y = buf[7163].timescale;
            LODWORD(v216) = buf[7163].flags;
            v348.size.width = v216;
            LODWORD(v217) = buf[7163].epoch;
            v348.size.height = v217;
            v218 = CGRectCreateDictionaryRepresentation(v348);
            v219 = CFNumberCreate(allocatora, kCFNumberSInt32Type, &buf[7163]);
            v221 = *(&outputStruct + 1);
            v220 = outputStruct;
            if (outputStruct != *(&outputStruct + 1))
            {
              pixelBuffera = *MEMORY[0x277CF5300];
              v283 = *MEMORY[0x277CF5318];
              v278 = *MEMORY[0x277CF4B20];
              v291 = *MEMORY[0x277CF3F70];
              do
              {
                v222 = *v220;
                v223 = CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                v224 = v223;
                if (v223)
                {
                  if (v215)
                  {
                    CFDictionarySetValue(v223, pixelBuffera, v215);
                  }

                  if (v218)
                  {
                    CFDictionarySetValue(v224, v283, v218);
                  }

                  if (*(*(v194 + 4304) + 652) >= 18 && v219 != 0)
                  {
                    CFDictionarySetValue(v224, v278, v219);
                  }

                  v226 = *(&v342 + v222);
                  CVBufferSetAttachment(v226, v291, v224, kCVAttachmentMode_ShouldPropagate);
                  CFRelease(v224);
                }

                else
                {
                  v226 = *(&v342 + v222);
                }

                CFDictionarySetValue(v293, *(*(DerivedStorage + 3272 + 96 * v222 + 72) + 16), v226);
                ++v220;
              }

              while (v220 != v221);
            }

            if (v215)
            {
              CFRelease(v215);
            }

            if (v218)
            {
              CFRelease(v218);
            }

            if (v219)
            {
              CFRelease(v219);
            }

            v227 = CFDictionaryCreateCopy(allocatora, v293);
            CFRelease(v293);
            v228 = FigHostTimeToNanoseconds();
            CMTimeMake(&v311, v228, 1000000000);
            v310 = v311;
            (*(*(DerivedStorage + 2912) + 16))();
            CFRelease(v227);
            goto LABEL_704;
          }
        }

        v229 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v229 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v229;
        }

        if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
        {
          MyH16ISPFrameReceivedProc();
          v88 = DerivedStorage;
        }

        CFRelease(v293);
LABEL_704:
        v208 = outputStruct;
        goto LABEL_705;
      }

      v211 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v211 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v211;
      }

      if (!os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_704;
      }

      MyH16ISPFrameReceivedProc();
    }

    v88 = DerivedStorage;
    goto LABEL_704;
  }

  if (!*(v57 + 528))
  {
    v73 = CFGetAllocator(*(v57 + 16));
    CMVideoFormatDescriptionCreateForImageBuffer(v73, pixelBuffer, (DerivedStorage + 528));
    Width = CVPixelBufferGetWidth(pixelBuffer);
    goto LABEL_185;
  }

  if (CVPixelBufferGetWidth(pixelBuffer) != *(DerivedStorage + 536) || (v69 = CVPixelBufferGetHeight(pixelBuffer), v70 = DerivedStorage, v69 != *(DerivedStorage + 544)))
  {
    FigFormatDescriptionRelease();
    v71 = CFGetAllocator(*(DerivedStorage + 16));
    CMVideoFormatDescriptionCreateForImageBuffer(v71, pixelBuffer, (DerivedStorage + 528));
    Width = CVPixelBufferGetWidth(pixelBuffer);
LABEL_185:
    *(DerivedStorage + 536) = Width;
    Height = CVPixelBufferGetHeight(pixelBuffer);
    v70 = DerivedStorage;
    *(DerivedStorage + 544) = Height;
  }

  v75 = CFGetAllocator(*(v70 + 16));
  v57 = DerivedStorage;
  if (!CMSampleBufferCreateForImageBuffer(v75, pixelBuffer, 1u, 0, 0, *(DerivedStorage + 528), &sampleTiming, &sampleBufferOut))
  {
    goto LABEL_192;
  }

  v76 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v76 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v76;
  }

  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    MyH16ISPFrameReceivedProc();
  }

  theDicta = 0;
  v267 = 0;
  texturea = 0;
  cfa = 0;
LABEL_749:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (texturea)
  {
    CFRelease(texturea);
  }

  if (v267)
  {
    CFRelease(v267);
  }

  if (theDicta)
  {
    CFRelease(theDicta);
  }

  if ((qword_2810032E8 & 0x20000) != 0)
  {
    LogCaptureDeviceEvent(0x11u, v297, DerivedStorage, 0, @"FrameReceivedArray", theArray, 1);
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  pthread_mutex_unlock((DerivedStorage + 328));
  kdebug_trace();
  return 0;
}

void sub_2248568B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x2C8];
  if (STACK[0x2C8])
  {
    STACK[0x2D0] = v66;
    operator delete(v66);
  }

  if (a65)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>>>(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool **,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>(&v15, __src, a5[1], *a1 + 512, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool **,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>(&v15, v13, a5[1], v13 + 512, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool **,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

void std::vector<__CVBuffer *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool **,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = a4 - v9 >= v11 >> 3 ? v11 >> 3 : a4 - v9;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += v12;
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t *std::vector<__CVBuffer *>::__init_with_size[abi:ne200100]<__CVBuffer * const*,__CVBuffer * const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<__CVBuffer *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_224856CA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__add_back_capacity(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 9; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, v16);
    }
  }
}

void sub_224856F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__append_with_size[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool * const*,H16ISP::H16ISPFrameReceiverBufferPool * const&,H16ISP::H16ISPFrameReceiverBufferPool * const* const*,long,512l>>(unint64_t *a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 6) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__add_back_capacity(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 9));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 8 * (v11 & 0x1FF);
    v15 = v14;
  }

  v24[0] = v13;
  v24[1] = v15;
  result = std::__deque_iterator<__CVBuffer *,__CVBuffer **,__CVBuffer *&,__CVBuffer ***,long,512l>::operator+[abi:ne200100](v24, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *a3++;
          *v20++ = v21;
          if ((a3 - *a2) == 4096)
          {
            v22 = a2[1];
            ++a2;
            a3 = v22;
          }
        }

        while (v20 != v19);
      }

      v18 += (v19 - v14) >> 3;
      if (v13 == result)
      {
        break;
      }

      v23 = v13[1];
      ++v13;
      v14 = v23;
    }

    while (v23 != v17);
    a1[5] = v18;
  }

  return result;
}

uint64_t H16ISPCaptureStreamAddAttachmentsToSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(0x10u, v6, DerivedStorage, 0, 0, 0, 0);
  if (!a2)
  {
    v27 = 4294954516;
    goto LABEL_36;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v8 = ImageBuffer;
  if (!ImageBuffer)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a2);
    v8 = CMGetAttachment(DataBuffer, *MEMORY[0x277CC0150], 0);
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  v10 = *MEMORY[0x277CF3F70];
  Attachment = CVBufferGetAttachment(v8, *MEMORY[0x277CF3F70], 0);
  v12 = MEMORY[0x277CF3F50];
  if (!ImageBuffer || Attachment)
  {
    goto LABEL_12;
  }

  Value = CVBufferGetAttachment(ImageBuffer, @"RawMetaData", 0);
  if (!Value)
  {
    v32 = CVBufferGetAttachment(ImageBuffer, *v12, 0);
    if (!v32 || (Value = CFDictionaryGetValue(v32, *MEMORY[0x277CF3CB8])) == 0)
    {
      v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v33 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "H16ISPCaptureStreamAddAttachmentsToSampleBuffer";
        _os_log_impl(&dword_2247DB000, v33, OS_LOG_TYPE_DEFAULT, "%s - Unable to find metadata pixel buffer\n", buf, 0xCu);
      }

LABEL_31:
      v27 = 4294954513;
      goto LABEL_36;
    }
  }

  v14 = Value;
  v15 = CVBufferGetAttachment(Value, @"PluginMetadata", 0);
  if (!v15)
  {
    pthread_mutex_lock((v6 + 32));
    if (*DerivedStorage || *v6)
    {
      v27 = 4294954511;
    }

    else
    {
      if (*(v6 + 24))
      {
        CreateH16ISPPluginMetadata(v6, DerivedStorage, buf);
        pthread_mutex_unlock((v6 + 32));
        goto LABEL_9;
      }

      v27 = 4294954616;
    }

    pthread_mutex_unlock((v6 + 32));
    goto LABEL_36;
  }

  BytePtr = CFDataGetBytePtr(v15);
  *buf = *BytePtr;
  v17 = *(BytePtr + 4);
  v19 = *(BytePtr + 1);
  v18 = *(BytePtr + 2);
  v40[1] = *(BytePtr + 3);
  v41 = v17;
  *&buf[16] = v19;
  v40[0] = v18;
  CVBufferRemoveAttachment(v14, @"PluginMetadata");
LABEL_9:
  *&v41 = a3;
  v20 = *v12;
  v21 = CMGetAttachment(a2, *v12, 0);
  if (v21)
  {
    CVBufferSetAttachment(ImageBuffer, v20, v21, kCVAttachmentMode_ShouldPropagate);
  }

  v38 = ImageBuffer;
  std::deque<__CVBuffer *>::deque(v37, &v38, 1);
  v22.n128_u64[0] = *(DerivedStorage + 4216);
  H16ISP::GenerateAndAttachCoreMediaMetaDataDictionary(*(*(v6 + 24) + 88), ImageBuffer, v37, v40, v22);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](v37);
LABEL_12:
  v23 = CVBufferGetAttachment(v8, v10, 0);
  if (v23)
  {
    CMSetAttachment(a2, v10, v23, 1u);
    v24 = CMGetAttachment(a2, *MEMORY[0x277CF3F88], 0);
    v25 = MEMORY[0x277CF3F10];
    if (v24)
    {
      CFDictionarySetValue(v24, *MEMORY[0x277CF3F10], v23);
    }

    v26 = CMGetAttachment(a2, *MEMORY[0x277CF3F98], 0);
    if (v26)
    {
      CFDictionarySetValue(v26, *v25, v23);
    }

    v27 = 0;
  }

  else
  {
    v27 = 4294954616;
  }

  v28 = *v12;
  v29 = CVBufferGetAttachment(v8, *v12, 0);
  if (v29)
  {
    CMSetAttachment(a2, v28, v29, 1u);
  }

  if (ImageBuffer)
  {
    v30 = *MEMORY[0x277CF3F40];
    v31 = CVBufferGetAttachment(ImageBuffer, *MEMORY[0x277CF3F40], 0);
    if (v31)
    {
      CMSetAttachment(a2, v30, v31, 1u);
    }
  }

LABEL_36:
  LogCaptureDeviceEvent(0x10u, v6, DerivedStorage, 0, 0, 0, 1);
  if (dword_2810032C4)
  {
    v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v34 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = *(DerivedStorage + 156);
      *buf = 136315650;
      *&buf[4] = "H16ISPCaptureStreamAddAttachmentsToSampleBuffer";
      *&buf[12] = 1024;
      *&buf[14] = v35;
      *&buf[18] = 1024;
      *&buf[20] = v27;
      _os_log_impl(&dword_2247DB000, v34, OS_LOG_TYPE_INFO, "%s - camChannel=%d, err=%d\n\n", buf, 0x18u);
    }
  }

  return v27;
}

void sub_2248575DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double H16ISP::H16ISPDevice::GetCameraCurrentConfig(H16ISP::H16ISPDevice *a1, int a2, _DWORD *a3, uint64_t a4)
{
  bzero(v16, 0xE4uLL);
  v17 = 261;
  v18 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v16, 0xE4u, 0, 0xFFFFFFFF))
  {
    *a3 = v19;
    v9 = v21;
    *a4 = v20;
    *(a4 + 16) = v9;
    v10 = v25;
    *(a4 + 64) = v24;
    *(a4 + 80) = v10;
    v11 = v23;
    *(a4 + 32) = v22;
    *(a4 + 48) = v11;
    v12 = v29;
    *(a4 + 128) = v28;
    *(a4 + 144) = v12;
    v13 = v27;
    *(a4 + 96) = v26;
    *(a4 + 112) = v13;
    *(a4 + 208) = v33;
    v14 = v32;
    result = *&v31;
    v15 = v30;
    *(a4 + 176) = v31;
    *(a4 + 192) = v14;
    *(a4 + 160) = v15;
  }

  return result;
}

float SetSwitchingFormatIndex(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (!a1 || (v7 = CFGetTypeID(a1), v7 == CFNumberGetTypeID()) || v7 == CFDictionaryGetTypeID())
  {
    if (*(a2 + 4808))
    {
      idx = -1;
      v54 = 0;
      valuePtr = 0;
      v52 = 0.0;
      *v51 = *MEMORY[0x277CBF348];
      if (a1)
      {
        if (*(*(a4 + 24) + 4312) <= 16)
        {
          v8 = 0;
        }

        else
        {
          v8 = v51;
        }

        if (!ParseSwitchingFormatIndex(a1, *(a2 + 4796), &idx, &v54, v8))
        {
          v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v16 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            SetSwitchingFormatIndex();
          }

          return result;
        }

        v9 = CFGetTypeID(a1);
        if (v9 == CFDictionaryGetTypeID())
        {
          *idx_4 = 0;
          if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF3E40], idx_4))
          {
            CFNumberGetValue(*idx_4, kCFNumberFloatType, &valuePtr + 4);
            if (*(&valuePtr + 1) < 0.0)
            {
              v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v10 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
              }

              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                SetSwitchingFormatIndex(&valuePtr + 4);
              }

              return result;
            }
          }

          if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF3E48], idx_4))
          {
            CFNumberGetValue(*idx_4, kCFNumberFloatType, &valuePtr);
            if (*&valuePtr < 0.0)
            {
              v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v29 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
              }

              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                SetSwitchingFormatIndex(&valuePtr);
              }

              return result;
            }
          }

          if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF3E50], idx_4))
          {
            CFNumberGetValue(*idx_4, kCFNumberFloatType, &v52);
            if (v52 < 0.0)
            {
              v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v30 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
              }

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                SetSwitchingFormatIndex(&v52);
              }

              return result;
            }
          }
        }
      }

      else
      {
        idx = *(a2 + 4796);
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 48);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 4808), v13);
        if (CFEqual(*MEMORY[0x277CBEEE8], ValueAtIndex))
        {
          v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v15 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            SetSwitchingFormatIndex();
          }

          return result;
        }

        v19 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &idx);
        if (!v19)
        {
LABEL_77:
          CFRelease(v19);
          return result;
        }

        v68.length = CFArrayGetCount(ValueAtIndex);
        v68.location = 0;
        if (CFArrayContainsValue(ValueAtIndex, v68, v19))
        {
          v20 = 1;
        }

        else
        {
          v20 = idx == v13;
        }

        if (!v20)
        {
          v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v31 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v35 = *(a2 + 184);
            v36 = *(v35 + 120 * v13);
            LODWORD(v35) = *(v35 + 120 * idx);
            v37 = *(a2 + 156);
            *idx_4 = 136316418;
            *&idx_4[4] = "SetSwitchingFormatIndex";
            v57 = 1024;
            v58 = v37;
            v59 = 1024;
            v60 = v13;
            v61 = 1024;
            v62 = v36;
            v63 = 1024;
            v64 = idx;
            v65 = 1024;
            v66 = v35;
            _os_log_error_impl(&dword_2247DB000, v31, OS_LOG_TYPE_ERROR, "%s - CH%d switching from %d(%d) to %d(%d) is not in the context switch list\n", idx_4, 0x2Au);
          }

          goto LABEL_77;
        }

        CFRelease(v19);
        CFRelease(*(a2 + 40));
        v21 = CFArrayGetValueAtIndex(*(a2 + 136), idx);
        *(a2 + 40) = v21;
        CFRetain(v21);
        H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * idx + 16), v49, idx_4);
        v22 = v51[1];
        v23 = v51[0];
        v24 = idx;
        *(a2 + 48) = idx;
        v38 = *(a2 + 156);
        v25 = *(a2 + 184);
        v26 = v25 + 120 * v24;
        v39 = *(v26 + 16);
        if (!v50)
        {
          v23 = 0;
        }

        v40 = v54;
        v41 = v23;
        if (v50)
        {
          v27 = v22;
        }

        else
        {
          v27 = 0;
        }

        v42 = v27;
        v43 = *(v26 + 36);
        if (v43 == 1)
        {
          v44 = *(v26 + 48);
          v45 = *(v25 + 120 * v24 + 40);
        }

        v46 = *(v25 + 120 * v24 + 64);
        if (v46 == 1)
        {
          v47 = *(v26 + 76);
          v48 = *(v25 + 120 * v24 + 68);
        }

        if (H16ISP::H16ISPDevice::SetContextSwitch(*(a4 + 24), 1u, &v38, vcvtms_u32_f32(*(&valuePtr + 1) * 256.0), vcvtms_u32_f32(*&valuePtr * 256.0), vcvtms_u32_f32(v52 * 256.0)))
        {
          v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v28 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            SetSwitchingFormatIndex();
          }
        }

        else
        {
          result = *&valuePtr;
          if (*&valuePtr <= 0.0)
          {
            result = *(a2 + 52);
          }

          *(a2 + 52) = result;
          v32 = v52;
          if (v52 <= 0.0)
          {
            v32 = *(a2 + 56);
          }

          *(a2 + 56) = v32;
          v33 = HIDWORD(valuePtr);
          if (*(&valuePtr + 1) > 0.0)
          {
            result = fminf(result, *(&valuePtr + 1));
            v34 = fminf(v32, *(&valuePtr + 1));
            *(a2 + 52) = result;
            *(a2 + 56) = v34;
            *(a2 + 60) = v33;
          }
        }
      }

      else
      {
        v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v18 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          SetSwitchingFormatIndex();
        }
      }
    }

    else
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        SetSwitchingFormatIndex();
      }
    }
  }

  else
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      SetSwitchingFormatIndex();
    }
  }

  return result;
}

BOOL ParseSwitchingFormatIndex(const void *a1, unsigned int a2, unsigned int *a3, unsigned int *a4, CGPoint *a5)
{
  v10 = CFGetTypeID(a1);
  if (v10 == CFNumberGetTypeID())
  {
    return CFNumberGetValue(a1, kCFNumberIntType, a3) != 0;
  }

  if (v10 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3DD0]);
  if (Value)
  {
    v13 = Value;
    if (CFEqual(Value, *MEMORY[0x277CBEEE8]))
    {
      *a3 = a2;
      v11 = 1;
    }

    else
    {
      v11 = CFNumberGetValue(v13, kCFNumberIntType, a3) != 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D98]);
  if (v11 && v14)
  {
    v11 = CFNumberGetValue(v14, kCFNumberIntType, a4) != 0;
  }

  if (!a5)
  {
    return v11;
  }

  v15 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3E90]);
  if (!v15 || !v11)
  {
    return v11;
  }

  return CGPointMakeWithDictionaryRepresentation(v15, a5);
}

uint64_t H16ISP::H16ISPDevice::SetContextSwitch(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3, int a4, int a5, int a6)
{
  bzero(v13, 0x1E4uLL);
  v14 = -32506;
  v15 = a2;
  v16[114] = a4;
  v16[116] = a5;
  v16[115] = a6;
  memcpy(v16, a3, 76 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v13, 0x1E4u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEFDSceneMeteringConfig(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, __int16 a9, __int16 a10, __int16 a11, __int16 a12, __int16 a13, __int16 a14, __int16 a15, __int16 a16, __int16 a17, __int16 a18, __int16 a19)
{
  bzero(v28, 0x24uLL);
  v29 = -32242;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a9;
  v38 = a11;
  v39 = a13;
  v40 = a15;
  v41 = a17;
  v42 = a19;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v28, 0x24u, 0, 0xFFFFFFFF);
}

uint64_t SetROIForCameraControls(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  *v11 = 0;
  *v12 = 0;
  v10 = 0;
  if (H16ISPGetRectParamsFromDict(a1, &v12[2], v12, &v11[2], v11, &v10, 0))
  {
    return 4294954516;
  }

  v9 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v9 |= 0x80000000;
  }

  if (H16ISP::H16ISPDevice::SetCameraControlROI(*(a4 + 24), v9, v12[2], v12[0], v11[2], v11[0]))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISPGetRectParamsFromDict(const __CFDictionary *a1, void *a2, void *a3, void *a4, void *a5, unsigned int *a6, unsigned int a7)
{
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EB8]);
  if (!Value)
  {
    return 4294954516;
  }

  v15 = Value;
  v16 = CFNumberIsFloatType(Value) ? kCFNumberFloatType : kCFNumberIntType;
  CFNumberGetValue(v15, v16, a2);
  v17 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EE8]);
  if (!v17)
  {
    return 4294954516;
  }

  v18 = v17;
  v19 = CFNumberIsFloatType(v17) ? kCFNumberFloatType : kCFNumberIntType;
  CFNumberGetValue(v18, v19, a3);
  v20 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EF8]);
  if (!v20)
  {
    return 4294954516;
  }

  v21 = v20;
  v22 = CFNumberIsFloatType(v20) ? kCFNumberFloatType : kCFNumberIntType;
  CFNumberGetValue(v21, v22, a4);
  v23 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EC0]);
  if (!v23)
  {
    return 4294954516;
  }

  v24 = v23;
  if (CFNumberIsFloatType(v23))
  {
    v25 = kCFNumberFloatType;
  }

  else
  {
    v25 = kCFNumberIntType;
  }

  CFNumberGetValue(v24, v25, a5);
  if (!a6)
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EF0]);
  if (result)
  {
    CFNumberGetValue(result, kCFNumberIntType, a6);
    return 0;
  }

  *a6 = a7;
  return result;
}

uint64_t H16ISP::H16ISPDevice::SetCameraControlROI(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 2069;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEMeteringMode(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32250;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamAFWindowParams(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3)
{
  bzero(v7, 0x3B8uLL);
  v8 = -31716;
  v9 = a2;
  memcpy(&v10, a3, 156 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x3B8u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableTNR(H16ISP::H16ISPDevice *a1, unsigned int a2, uint64_t a3)
{
  v3 = 3758097090;
  if (!a3 || *(a1 + 1167) <= a2)
  {
    return v3;
  }

  if (*a3 != 1)
  {
    bzero(v14, 0xCuLL);
    v15 = -16108;
    v16 = a2;
    v8 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v14, 0xCu, 0, 0xFFFFFFFF);
    if (!v8)
    {
      if (*(a3 + 3) != 1 || (bzero(v14, 0xCuLL), v15 = -16125, v16 = a2, v8 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v14, 0xCu, 0, 0xFFFFFFFF), !v8))
      {
        bzero(v14, 0xCuLL);
        v15 = -16127;
        v16 = a2;
        return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v14, 0xCu, 0, 0xFFFFFFFF);
      }
    }

    return v8;
  }

  bzero(v14, 0x18uLL);
  v15 = -16128;
  v16 = a2;
  v17 = *(a3 + 1);
  v7 = *(a3 + 4);
  v18 = *(a3 + 2);
  v19 = v7;
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v14, 0x18u, 0, 0xFFFFFFFF);
  if (v8)
  {
    return v8;
  }

  v9 = H16ISP::H16ISPDevice::EnableHighStrengthTNR(a1, a2, *(a3 + 20));
  if (v9)
  {
    v3 = v9;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::EnableTNR();
    }

    return v3;
  }

  v11 = *(a3 + 8);
  bzero(v20, 0x10uLL);
  v21 = -16100;
  v22 = a2;
  v23 = v11;
  v12 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v20, 0x10u, 0, 0xFFFFFFFF);
  if (v12)
  {
    v3 = v12;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::EnableTNR();
    }

    return v3;
  }

  v13 = H16ISP::H16ISPDevice::SetBand0StrengthModThreshold(a1, a2, vcvtd_n_s64_f64(*(a3 + 12), 8uLL), vcvtd_n_s64_f64(*(a3 + 16), 8uLL));
  if (!v13)
  {
    if (*(a3 + 3) != 1)
    {
      return H16ISP::H16ISPDevice::TNRResume(a1, a2);
    }

    bzero(v20, 0xCuLL);
    v21 = -16126;
    v22 = a2;
    v8 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v20, 0xCu, 0, 0xFFFFFFFF);
    if (!v8)
    {
      return H16ISP::H16ISPDevice::TNRResume(a1, a2);
    }

    return v8;
  }

  v3 = v13;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::EnableTNR();
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::EnableHighStrengthTNR(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16096;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetBand0StrengthModThreshold(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = -16099;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::TNRResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -16109;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetGDCStrength(H16ISP::H16ISPDevice *this, int a2, float a3, float a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2631;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware(H16ISP::H16ISPFrameReceiver *this, H16ISP::H16ISPFrameReceiverBufferPool *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 28);
    v7 = *(a2 + 25);
    v9 = *(a2 + 4);
    v8 = *(a2 + 5);
    *buf = 136316162;
    *&buf[4] = "sendInitialBuffersToFirmware";
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - Sending %d initial buffers to firmware (poolID=%d, poolSize=%d, poolType=%d)\n", buf, 0x24u);
  }

  if (!*(a2 + 28))
  {
    return 3758097084;
  }

  *buf = 0;
  if (H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(a2, buf, 1))
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
    {
      v11 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware();
    }
  }

  else
  {
    if (!H16ISP::H16ISPFrameReceiver::setBufferConfig(this, a2, *buf))
    {
      operator new();
    }

    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
    {
      v12 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware();
    }
  }

  return 3758097085;
}

uint64_t H16ISP::H16ISPFrameReceiver::setBufferConfig(H16ISP::H16ISPFrameReceiver *this, H16ISP::H16ISPFrameReceiverBufferPool *a2, CVPixelBufferRef pixelBuffer)
{
  *&v98[116] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 28);
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  AllocSize = IOSurfaceGetAllocSize(IOSurface);
  PlaneCount = 0;
  switch(*(a2 + 4))
  {
    case 0:
    case 6:
    case 7:
    case 9:
    case 0xA:
      PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
      PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
      if (H16ISP::getFrameFormatMetaInfo(PixelFormatType, &v94))
      {
        bzero(&DataSize, 0x80uLL);
        theDict = 0;
        CVPixelBufferPoolCopyIOSurfaceCreationProperties();
        Value = CFDictionaryGetValue(0, *MEMORY[0x277CD2B30]);
        v19 = *(a2 + 4) - 6;
        if (v19 > 4)
        {
          LOWORD(v20) = 1;
        }

        else
        {
          v20 = dword_2249D1F38[v19];
        }

        valuePtr = 0;
        if (PlaneCount)
        {
          v80 = v20;
          v81 = v6;
          v29 = 0;
          v30 = 0;
          v90 = *MEMORY[0x277CD2AB8];
          v91 = *MEMORY[0x277CD2A80];
          v89 = *MEMORY[0x277CD2AB0];
          v88 = *MEMORY[0x277CD2AC0];
          v31 = *MEMORY[0x277CD2B40];
          v87 = *MEMORY[0x277CD2B50];
          v86 = *MEMORY[0x277CD2B00];
          v85 = *MEMORY[0x277CD2B18];
          v84 = *MEMORY[0x277CD2AF8];
          v83 = *MEMORY[0x277CD2AD8];
          key = *MEMORY[0x277CD2AA0];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, v29);
            v33 = ValueAtIndex;
            valuePtr = 0;
            v34 = v95;
            if (v95 == 2)
            {
              v41 = CFDictionaryGetValue(ValueAtIndex, v91);
              if (v41)
              {
                v42 = v41;
                v43 = CFGetTypeID(v41);
                if (v43 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v42, kCFNumberSInt32Type, &valuePtr + 4);
                }
              }

              v44 = CFDictionaryGetValue(v33, v90);
              if (v44)
              {
                v45 = v44;
                v46 = CFGetTypeID(v44);
                if (v46 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v45, kCFNumberSInt32Type, &valuePtr);
                  *(&DataSize + 8 * v29) = valuePtr - HIDWORD(valuePtr);
                }
              }

              v47 = CFDictionaryGetValue(v33, v89);
              if (v47)
              {
                v48 = v47;
                v49 = CFGetTypeID(v47);
                if (v49 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v48, kCFNumberSInt32Type, &valuePtr);
                  *(&DataSize + 8 * v29 + 1) = valuePtr;
                }
              }

              v50 = CFDictionaryGetValue(v33, v88);
              if (v50)
              {
                v51 = v50;
                v52 = CFGetTypeID(v50);
                if (v52 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v51, kCFNumberSInt32Type, &valuePtr);
                  v53 = valuePtr - HIDWORD(valuePtr);
                  v54 = &DataSize + 8 * v29;
                  v54[2] = valuePtr - HIDWORD(valuePtr) - *v54;
                  v54[3] = v53;
                }
              }

              v55 = CFDictionaryGetValue(v33, v31);
              if (v55)
              {
                v56 = v55;
                v57 = CFGetTypeID(v55);
                if (v57 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v56, kCFNumberSInt32Type, &valuePtr);
                  *&v98[32 * v29 + 4] = valuePtr - *&v98[32 * v29];
                }
              }

              v58 = CFDictionaryGetValue(v33, v87);
              if (v58)
              {
                v59 = v58;
                v60 = CFGetTypeID(v58);
                if (v60 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v59, kCFNumberSInt32Type, &valuePtr);
                  *&v98[32 * v29 + 8] = valuePtr;
                }
              }

              v61 = CFDictionaryGetValue(v33, v86);
              if (v61)
              {
                v62 = v61;
                v63 = CFGetTypeID(v61);
                if (v63 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v62, kCFNumberSInt32Type, &valuePtr);
                  *&v98[32 * v29 + 8] += valuePtr;
                }
              }

              v64 = CFDictionaryGetValue(v33, v85);
              if (v64)
              {
                v65 = v64;
                v66 = CFGetTypeID(v64);
                if (v66 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v65, kCFNumberSInt32Type, &valuePtr);
                  *&v98[32 * v29 + 10] = valuePtr;
                }
              }

              v67 = CFDictionaryGetValue(v33, v84);
              if (v67)
              {
                v68 = v67;
                v69 = CFGetTypeID(v67);
                if (v69 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v68, kCFNumberSInt32Type, &valuePtr);
                  *&v98[32 * v29 + 10] += valuePtr;
                }
              }

              v70 = CFDictionaryGetValue(v33, v83);
              if (v70)
              {
                v71 = v70;
                v72 = CFGetTypeID(v70);
                if (v72 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v71, kCFNumberSInt32Type, &valuePtr);
                  *&v98[32 * v29 + 12] = valuePtr;
                }
              }
            }

            else if (!v95)
            {
              v35 = CFDictionaryGetValue(ValueAtIndex, v31);
              if (v35)
              {
                v36 = v35;
                v37 = CFGetTypeID(v35);
                if (v37 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v36, kCFNumberSInt32Type, &valuePtr);
                  *(&DataSize + 8 * v29) = valuePtr;
                }
              }

              v38 = CFDictionaryGetValue(v33, key);
              if (v38)
              {
                v39 = v38;
                v40 = CFGetTypeID(v38);
                if (v40 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v39, kCFNumberSInt32Type, &valuePtr);
                  *(&DataSize + 8 * v29 + 1) = valuePtr;
                }
              }
            }

            v29 = ++v30;
          }

          while (PlaneCount > v30);
          CFRelease(theDict);
          if (!v34)
          {
            return 0;
          }

          PlaneCount = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(this + 50), *(this + 109), v80, v81, v34, PlaneCount, &DataSize);
          if (PlaneCount)
          {
            v73 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v73 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v73;
            }

            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              H16ISP::H16ISPFrameReceiver::setBufferConfig();
            }
          }
        }

        else
        {
          CFRelease(theDict);
        }
      }

      else
      {
        v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v21 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::setBufferConfig(v21, v22, v23, v24, v25, v26, v27, v28);
        }

        return 3758097084;
      }

      return PlaneCount;
    case 1:
    case 0x1A:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x27:
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
      DataSize = CVPixelBufferGetDataSize(pixelBuffer);
      v10 = *(a2 + 4);
      if (v10 == 39)
      {
        v11 = 41;
      }

      else
      {
        v11 = 3;
      }

      if (v10 == 31)
      {
        v12 = 32;
      }

      else
      {
        v12 = v11;
      }

      if (v10 == 30)
      {
        v13 = 33;
      }

      else
      {
        v13 = v12;
      }

      if (v10 == 29)
      {
        v14 = 31;
      }

      else
      {
        v14 = 3;
      }

      if (v10 == 26)
      {
        v14 = 26;
      }

      if (v10 <= 29)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      PlaneCount = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(this + 50), *(this + 109), v15, v6, 0, 1u, &DataSize);
      if (PlaneCount)
      {
        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }
      }

      return PlaneCount;
    case 2:
      DataSize = AllocSize;
      BytesPerRow = AllocSize;
      PlaneCount = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(this + 50), *(this + 109), 0, v6, 0, 1u, &DataSize);
      if (PlaneCount)
      {
        v77 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v77 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v77;
        }

        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::setBufferConfig();
        }
      }

      return PlaneCount;
    case 8:
      DataSize = AllocSize;
      BytesPerRow = AllocSize;
      PlaneCount = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(this + 50), *(this + 109), 8, v6, 0, 1u, &DataSize);
      if (PlaneCount)
      {
        v78 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v78 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v78;
        }

        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::setBufferConfig();
        }
      }

      return PlaneCount;
    case 0x20:
      v74 = 34;
      goto LABEL_91;
    case 0x21:
      v74 = 39;
      goto LABEL_91;
    case 0x26:
      DataSize = AllocSize;
      BytesPerRow = AllocSize;
      PlaneCount = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(this + 50), *(this + 109), 40, v6, 0, 1u, &DataSize);
      if (PlaneCount)
      {
        v75 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v75 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v75;
        }

        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::setBufferConfig();
        }
      }

      return PlaneCount;
    case 0x28:
      if (*(*(*(this + 50) + 4304) + 652) < 18)
      {
        return 0;
      }

      v74 = 42;
LABEL_91:
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
      DataSize = CVPixelBufferGetDataSize(pixelBuffer);
      PlaneCount = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(this + 50), *(this + 109), v74, v6, 0, 1u, &DataSize);
      if (PlaneCount)
      {
        v76 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v76 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v76;
        }

        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
LABEL_23:
          H16ISP::H16ISPFrameReceiver::setBufferConfig();
        }
      }

      return PlaneCount;
    case 0x2C:
      v74 = 45;
      goto LABEL_91;
    default:
      return PlaneCount;
  }
}

void std::deque<H16ISP::H16ISPFrameReceiverAllocatedBufferStruct *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, &v9);
}

void sub_224859970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<H16ISP::H16ISPFrameReceiverAllocatedBufferStruct *>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    std::deque<H16ISP::H16ISPFrameReceiverAllocatedBufferStruct *>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

uint64_t std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t H16ISP::H16ISPDevice::ISP_CILRequestPerChannel(mach_port_t *this, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  input[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    H16ISP::H16ISPDevice::NotifySystemStatusForCIL(this, a2, 1);
  }

  if (!this[1086])
  {
    v6 = 3758097084;
    if (a3)
    {
      return v6;
    }

    goto LABEL_9;
  }

  input[0] = v4;
  input[1] = a3;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::ISP_CILRequestPerChannel(a3);
  }

  v6 = IOConnectCallScalarMethod(this[1086], 0x57u, input, 2u, 0, 0);
  if ((a3 & 1) == 0)
  {
LABEL_9:
    H16ISP::H16ISPDevice::NotifySystemStatusForCIL(this, v4, 0);
  }

  return v6;
}

uint64_t H16ISP::H16ISPDevice::NotifySystemStatusForCIL(H16ISP::H16ISPDevice *this, char a2, int a3)
{
  v3 = *(this + 17);
  if (v3)
  {
    v7 = *(this + 36);
    if (strstr(this + 148, "mediaserverd") || strstr(this + 148, "cameracaptured"))
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        H16ISP::H16ISPDevice::NotifySystemStatusForCIL();
      }
    }

    else
    {
      v10 = v7 | (1 << a2);
      if (!a3)
      {
        v10 = v7 & ~(1 << a2);
      }

      *(this + 36) = v10;
      if (v7)
      {
        if (!v10)
        {
          v11 = *(this + 4260);
          *v13.val = *(this + 4244);
          *&v13.val[4] = v11;
          H16ISP::SystemStatus::updateData(v3, &v13, 0);
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDevice::NotifySystemStatusForCIL();
          }
        }
      }

      else if (v10)
      {
        v12 = *(this + 4260);
        *v13.val = *(this + 4244);
        *&v13.val[4] = v12;
        H16ISP::SystemStatus::updateData(v3, &v13, 1);
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPDevice::NotifySystemStatusForCIL();
        }
      }
    }

    return 0;
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v8 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::NotifySystemStatusForCIL();
    }
  }

  return v8;
}

void H16ISP::H16ISPDevice::ISP_CILRequestPerChannel(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

BOOL OUTLINED_FUNCTION_41()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _Img4DecodePayloadPropertyExistsWithValue(a1, a2, 2uLL, &a9, 0);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t H16ISP::H16ISPDevice::EnableALS(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2588;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StartCamera(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = 3758097112;
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  if (*(this + 4))
  {
    v6[0] = a2;
    return IOConnectCallScalarMethod(v4, 0x36u, v6, 1u, 0, 0);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::StartCamera();
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPFrameReceiver::startNoDataTimer(H16ISP::H16ISPFrameReceiver *this)
{
  v2 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableISPBringup", @"com.apple.coremedia", 0);
  pthread_mutex_lock((this + 224));
  v3 = *(this + 36);
  if (v3)
  {
    CFRunLoopTimerInvalidate(v3);
    CFRelease(*(this + 36));
    *(this + 36) = 0;
  }

  context.version = 0;
  context.info = this;
  memset(&context.retain, 0, 24);
  v4 = CFAbsoluteTimeGetCurrent() + *(this + 124);
  v5 = 200.0;
  if (!v2)
  {
    v5 = 0.0;
  }

  v6 = CFRunLoopTimerCreate(0, v5 + v4, 0.0, 0, 0, H16ISP::H16ISPFrameReceiver::NoDataTimeout, &context);
  *(this + 36) = v6;
  if (v6)
  {
    CFRunLoopAddTimer(*(this + 1), v6, *MEMORY[0x277CBF058]);
  }

  return pthread_mutex_unlock((this + 224));
}

uint64_t H16ISP::H16ISPFrameReceiver::startTailspinTimer(uint64_t this)
{
  if ((H16ISP::gFrameReceiverCFPrefs & 1) == 0)
  {
    v1 = this;
    if (*(*(this + 400) + 120))
    {
      pthread_mutex_lock((this + 296));
      v2 = *(v1 + 360);
      if (v2)
      {
        CFRunLoopTimerInvalidate(v2);
        CFRelease(*(v1 + 360));
        *(v1 + 360) = 0;
      }

      v3 = *(*(v1 + 400) + 120);
      context.version = 0;
      context.info = v3;
      memset(&context.retain, 0, 24);
      Current = CFAbsoluteTimeGetCurrent();
      v5 = CFRunLoopTimerCreate(0, Current + 0.5, 0.0, 0, 0, H16ISP::H16ISPFrameReceiver::tailspinTimeout, &context);
      *(v1 + 360) = v5;
      if (v5)
      {
        CFRunLoopAddTimer(*(v1 + 8), v5, *MEMORY[0x277CBF058]);
      }

      return pthread_mutex_unlock((v1 + 296));
    }
  }

  return this;
}

int64_t H16ISP::H16ISPServicesRemote::SetProperty(xpc_connection_t *a1, xpc_object_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v11 = 67109120;
    v12 = v6;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: SetProperty %d (sent)\n", &v11, 8u);
  }

  v7 = H16ISP::H16ISPServicesRemote::SetPropertyInternal(a1, a2, 1);
  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == v5)
  {
    v8 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a2;
    v11 = 67109376;
    v12 = v9;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: SetProperty %d (reply=0x%08X)\n", &v11, 0xEu);
  }

  return v7;
}

uint64_t H16ISP::H16ISPDevice::GetZoomFactorLimits(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2063;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t CopyMaxZoomFactor(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v11 = 0;
  if (H16ISP::H16ISPDevice::GetZoomFactorLimits(*(a5 + 24), *(a3 + 156), &v11[1], v11))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v8 = vcvtd_n_f64_u32(v11[1], 0xAuLL);
    valuePtr = v8;
    v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

void std::deque<__CVBuffer *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, &v9);
}

void sub_22485A6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ActivatePrimaryScalerOutputInFrameReceiver(uint64_t result, uint64_t a2)
{
  v103 = *MEMORY[0x277D85DE8];
  if (!*(result + 160))
  {
    return;
  }

  v4 = *(result + 48);
  v5 = *(result + 192);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = v4 - v5;
  v7 = dword_281003314;
  v8 = *(result + 184);
  if (!dword_281003314)
  {
    v7 = *(v8 + 120 * v6 + 116);
  }

  v9 = *(result + 92);
  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(result + 156), *(v8 + 120 * v6 + 16), &v74, v102))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ActivatePrimaryScalerOutputInFrameReceiver();
    }

    return;
  }

  v11 = v7 - v9;
  v12 = *(result + 700);
  if (v12)
  {
    v13 = v12 / 1000000.0;
    v14 = *(result + 184);
    v15 = *(result + 48);
    v16 = *(result + 192);
    if (v15 < v16)
    {
      v16 = 0;
    }

    if (v14)
    {
      v17 = v14 + 120 * v6;
    }

    else
    {
      v17 = 120 * (v15 - v16);
    }

    v18 = *(v17 + 108);
    if (v18 == 0.0)
    {
      v19 = HIDWORD(v74);
    }

    else
    {
      v19 = v18 * 256.0;
    }

    if (v11 + 2 * (v13 / (1.0 / (v19 * 0.0039062))) >= 0xA)
    {
      v11 = 10;
    }

    else
    {
      v11 += 2 * (v13 / (1.0 / (v19 * 0.0039062)));
    }
  }

  valuePtr = -*(result + 728) & 0xF;
  v20 = *(result + 848);
  if (v20)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v20);
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4DA0]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v101 = 0;
  v23 = *(result + 768);
  v72 = 0;
  if (H16ISP::getFrameFormatMetaInfo(*(result + 720), &v70))
  {
    v67 = DWORD1(v70);
    v24 = BYTE8(v70);
  }

  else
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v25 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      ActivatePrimaryScalerOutputInFrameReceiver();
    }

    v24 = 0;
    v67 = 0;
  }

  v26 = *(result + 848);
  if (!v26)
  {
    v31 = *(result + 724);
    LODWORD(v72) = *(result + 728);
    HIDWORD(v72) = v31;
    goto LABEL_37;
  }

  v27 = CVPixelBufferPoolGetPixelBufferAttributes(v26);
  if (v27)
  {
    v28 = v27;
    v29 = CFDictionaryGetValue(v27, *MEMORY[0x277CC4EC8]);
    v30 = CFDictionaryGetValue(v28, *MEMORY[0x277CC4DD8]);
    CFNumberGetValue(v29, kCFNumberIntType, &v72 + 4);
    CFNumberGetValue(v30, kCFNumberIntType, &v72);
LABEL_37:
    v32 = v11 + 1 + v23;
    if (HIDWORD(v70) <= 0x1B && ((1 << SBYTE12(v70)) & 0xE000002) != 0 || (*(result + 4392) | 2) == 3 && HIDWORD(v70) <= 0x13 && ((1 << SBYTE12(v70)) & 0xC0001) != 0 || (*(result + 4388) - 1) < 2)
    {
      v33 = 0;
      v66 = 0;
      v34 = 128;
    }

    else
    {
      v66 = v24 & 1;
      if (v24)
      {
        v34 = 896;
      }

      else
      {
        v34 = 640;
      }

      v33 = 1;
    }

    v68 = 0u;
    v69 = 0u;
    GenerateBufferTagsForOutput(result, result + 704, &v68);
    v35 = *(result + 160);
    v36 = *(result + 724);
    v37 = *(result + 728);
    *buf = v68;
    *&buf[16] = v69;
    LOBYTE(v61) = 0;
    HIDWORD(v60) = v32;
    LODWORD(v60) = 128;
    v38 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v35, 0, SDWORD1(v75), v36, v37, valuePtr, 0, v67, 0.0, buf, v24 & 1, v60, __SPAIR64__(*(result + 772), v32), __SPAIR64__(v34, v11), 0, @"YUV", -1, *(result + 848), result + 856, v61);
    v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v39 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = v11 + 1 + *(result + 768);
      *buf = 136315650;
      *&buf[4] = "ActivatePrimaryScalerOutputInFrameReceiver";
      *&buf[12] = 1024;
      *&buf[14] = v40;
      *&buf[18] = 1024;
      *&buf[20] = v11;
      _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_INFO, "%s - YUV pool size=%d,prime=%d\n", buf, 0x18u);
    }

    if (v38)
    {
      v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v41 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v41;
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        ActivatePrimaryScalerOutputInFrameReceiver();
      }
    }

    else
    {
      BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*(result + 160), 0);
      v64 = *(result + 752) | (*(result + 760) << 32);
      v65 = *(result + 736) | (*(result + 744) << 32);
      if (v71 == 2 || (DWORD1(v70) - 35) <= 1)
      {
        v101 = *(BufferPool + 44);
      }

      v62 = v33;
      if (*(result + 779) == 1 && (v43 = *(result + 184) + 120 * v6, *(v43 + 92) == 1))
      {
        v44 = *(v43 + 100);
        LODWORD(v63) = *(v43 + 96);
        BYTE4(v63) = 1;
      }

      else
      {
        v63 = 0;
        v44 = 0;
      }

      v46 = *(a2 + 24);
      v47 = *(result + 156);
      v48 = *(result + 724);
      v49 = *(result + 728);
      v51 = HIDWORD(v72);
      v50 = valuePtr;
      v52 = v72;
      v53 = ColorRangeForOutputWithMatrix(result, result + 704, *(result + 172));
      if (H16ISP::H16ISPDevice::SetPrimaryBESConfig(v46, v47, v65, v64, v48, v49, v50, v51, v52, v67, v53, &v101, SBYTE4(v63), v63, v44))
      {
        v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v54 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v54;
        }

        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          ActivatePrimaryScalerOutputInFrameReceiver();
        }
      }

      else if (*(result + 776) == 1 && (*(*(result + 160) + 533) & 1) == 0 && (v97 = v84, v98 = v85, v99 = v86, v100 = v87, v93 = v80, v94 = v81, v95 = v82, v96 = v83, v89 = v76, v90 = v77, v91 = v78, v92 = v79, *buf = v74, *&buf[16] = v75, AddRawPoolToFrameReceiver(result, a2, buf, *(result + 720))))
      {
        v55 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v55 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v55;
        }

        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          ActivatePrimaryScalerOutputInFrameReceiver();
        }
      }

      else if (*(result + 4256) == 1 && (*(result + 720) | 2) == 0x4C303132 && H16ISP::H16ISPDevice::SetSensorInterfacePixelFormat(*(a2 + 24), *(result + 156), 15, 1, 0, 0))
      {
        v56 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v56 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v56;
        }

        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          ActivatePrimaryScalerOutputInFrameReceiver();
        }
      }

      else
      {
        v57 = *(result + 160);
        if ((*v57 - 1) <= 1 && H16ISP::H16ISPFrameReceiver::SendFWInitialBuffers(v57, 0))
        {
          v58 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v58 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v58;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            ActivatePrimaryScalerOutputInFrameReceiver();
          }
        }

        else if (H16ISP::H16ISPDevice::SetScalerChromaSampleOffset(*(a2 + 24), *(result + 156), v66, v62, 0))
        {
          v59 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v59 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v59;
          }

          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            ActivatePrimaryScalerOutputInFrameReceiver();
          }
        }

        else
        {
          SetMetaDataOptionsOnFrameReceiver(result, a2);
        }
      }
    }

    return;
  }

  v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v45 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v45;
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    ActivatePrimaryScalerOutputInFrameReceiver();
  }
}

uint64_t H16ISP::H16ISPDevice::SetPrimaryBESConfig(H16ISP::H16ISPDevice *a1, unsigned int a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int *a12, char a13, int a14, int a15)
{
  if (*(a1 + 1167) <= a2)
  {
    return 3758097090;
  }

  v54 = v15;
  v55 = v16;
  v17 = a8;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v23 = a1;
  v24 = HIDWORD(a3);
  v25 = HIDWORD(a4);
  if (a13)
  {
    bzero(v42, 0x24uLL);
    v43 = 2838;
    v44 = a2;
    v45 = v21;
    v46 = v24;
    v47 = v20;
    v48 = v25;
    v49 = a14;
    v23 = a1;
    v17 = a8;
    v19 = a5;
    v18 = a7;
    v50 = a15;
    v30 = v23;
    v31 = 36;
  }

  else
  {
    bzero(v42, 0x1CuLL);
    v43 = 2049;
    v44 = a2;
    v45 = v21;
    v46 = v24;
    v47 = v20;
    v48 = v25;
    v30 = v23;
    v31 = 28;
  }

  result = H16ISP::H16ISPDevice::ISP_SendCommand(v30, v42, v31, 0, 0xFFFFFFFF);
  if (!result)
  {
    v33 = &v50;
    bzero(v42, 0x38uLL);
    v43 = 2817;
    v44 = a2;
    v45 = v19;
    v46 = a6;
    v47 = a11;
    v53 = v17;
    v51[1] = v18;
    v51[2] = a9;
    switch(a10)
    {
      case 0:
        v52 = 0;
        goto LABEL_19;
      case 1:
        v33 = &v49;
        v48 = 1;
        v52 = 0;
        v35 = (2 * v17 + 63) & 0xFFFFFFC0;
        break;
      case 13:
        v52 = 1;
LABEL_19:
        v35 = (v17 + 63) & 0xFFFFFFC0;
        v48 = 0;
        goto LABEL_27;
      case 15:
        v39 = 18;
        v52 = 0;
        goto LABEL_25;
      case 16:
        v39 = 18;
        v52 = 1;
LABEL_25:
        v40 = 2 * v17;
        goto LABEL_26;
      case 18:
        v39 = 19;
        v52 = 0;
        v40 = (2 * ((2863311531u * (v17 + 2)) >> 32)) & 0xFFFFFFFC;
LABEL_26:
        v35 = (v40 + 63) & 0xFFFFFFC0;
        v48 = v39;
        goto LABEL_27;
      case 22:
        v52 = 1;
        v48 = 0;
        v49 = (32 * v19 + 992) & 0x3FFC00;
        v35 = (32 * v19 + 480) & 0x3FFE00;
        break;
      case 23:
        v52 = 1;
        v48 = 19;
        v49 = 1280 * ((v19 + 31) >> 5);
        v35 = 320 * ((v19 + 15) >> 4);
        break;
      case 24:
      case 26:
      case 28:
        v52 = 1;
        v37 = *a12;
        v35 = a12[1];
        v48 = 0;
        v49 = v37;
        break;
      case 25:
      case 27:
      case 29:
        v52 = 1;
        v36 = *a12;
        v35 = a12[1];
        v48 = 19;
        v49 = v36;
        break;
      case 31:
      case 32:
      case 33:
      case 34:
        v34 = 26;
        v52 = 1;
        goto LABEL_14;
      case 35:
        v34 = 25;
        goto LABEL_13;
      case 36:
        v34 = 26;
LABEL_13:
        v52 = 0;
LABEL_14:
        v38 = *a12;
        v35 = a12[1];
        v48 = v34;
        v50 = v38;
        v33 = v51;
        break;
      default:
        v52 = 0;
        v35 = (v17 + 63) & 0xFFFFFFC0;
        v48 = a10;
LABEL_27:
        v49 = v35;
        break;
    }

    *v33 = v35;
    return H16ISP::H16ISPDevice::ISP_SendCommand(v23, v42, 0x38u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetFocusMultiCamBehavior(H16ISP::H16ISPDevice *a1, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31718;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t ___ZN6H16ISP19H16ISPFrameReceiver20ProcessFrameMetadataEP10__CVBufferPyNS_33H16ISPFrameReceiverBufferPoolTypeEbPh_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 556), 0xFFFFuLL);
  v2 = *(v1 + 544);

  return notify_post(v2);
}

uint64_t H16ISP::H16ISPFrameReceiver::SuspendReceive(H16ISP::H16ISPFrameReceiver *this)
{
  H16ISP::H16ISPFrameReceiver::stopNoDataTimer(this);
  H16ISP::H16ISPFrameReceiver::stopTailspinTimer(this);
  pthread_mutex_lock((this + 96));
  *this = 2;

  return pthread_mutex_unlock((this + 96));
}

uint64_t H16ISP::H16ISPFrameReceiver::stopNoDataTimer(H16ISP::H16ISPFrameReceiver *this)
{
  pthread_mutex_lock((this + 224));
  v2 = *(this + 36);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 36));
    *(this + 36) = 0;
  }

  return pthread_mutex_unlock((this + 224));
}

uint64_t H16ISP::H16ISPFrameReceiver::stopTailspinTimer(H16ISP::H16ISPFrameReceiver *this)
{
  pthread_mutex_lock((this + 296));
  v2 = *(this + 45);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 45));
    *(this + 45) = 0;
  }

  return pthread_mutex_unlock((this + 296));
}

uint64_t SetDeviceOrientation(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v8 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v8 |= 0x80000000;
  }

  v9 = MEMORY[0x277D86220];
  if (valuePtr > 3 || (v10 = H16ISP::H16ISPDevice::SetDeviceOrientation(*(a4 + 24), v8, dword_2249BBE10[valuePtr]), v10))
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v9)
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetDeviceOrientation();
    }

    v10 = 4294954516;
  }

  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (valuePtr > 3)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v9)
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "H16ISPCaptureDevice: Set Device Orientation: Unknown orientation\n\n";
      v15 = v13;
      v16 = 2;
      goto LABEL_25;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v9)
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v19 = valuePtr;
      v20 = 1024;
      v21 = -1;
      v14 = "H16ISPCaptureDevice: Set Device Orientation: %d (rotation: %d) \n\n";
      v15 = v13;
      v16 = 14;
LABEL_25:
      _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
    }
  }

  return v10;
}

BOOL doesDisabledTofRequireBuffers(uint64_t a1, uint64_t a2)
{
  if (H16ISP::H16ISPDevice::getSensorType(*(a1 + 24), *(a2 + 156)) != 1785950322)
  {
    return 0;
  }

  if (*(a1 + 280) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 216);
  if (!v4)
  {
    return 0;
  }

  v7 = *v4;
  v5 = v4 + 14;
  v6 = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = 1 << *(a2 + 156);
  v9 = v6 - 1;
  do
  {
    v10 = *v5;
    v5 += 4;
    result = (v8 & v10) != 0;
  }

  while ((v8 & v10) == 0 && v9-- != 0);
  return result;
}

uint64_t H16ISP::H16ISPDevice::SetDeviceOrientation(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 3335;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::getSensorType(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  if (a2 <= 5 && (v2 = *(this + 538) + 104 * a2, v4 = *(v2 + 8), v3 = v2 + 8, v4))
  {
    return *(v3 + 8);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t H16ISPGraphExclaveANDKNode::onMessageProcessing(H16ISPGraphExclaveANDKNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  if (a2)
  {
    if ((*(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this))) != 0)
    {
      result = (*(*this + 80))(this, a2);
      if (result)
      {
        H16ISPGraphExclaveANDKNode::onMessageProcessing(result, &v5);
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    H16ISPGraphExclaveANDKNode::onMessageProcessing(&v6);
    return v6;
  }

  return result;
}

void H16ISPGraphExclaveRGBANDKNode::H16ISPGraphExclaveRGBANDKNode(H16ISPGraphExclaveRGBANDKNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  *H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 28, a2, a3, 1) = &unk_283812BA8;
}

{
  *H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 28, a2, a3, 1) = &unk_283812BA8;
}

uint64_t H16ISPGraphExclaveRGBANDKNode::runANDKAlgorithm(H16ISP::H16ISPDevice **this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a2 + 8));
  v4 = *(a2 + 90);
  pthread_mutex_unlock((a2 + 8));
  v5 = H16ISP::H16ISPExclaveGraphNode::Verbose(this);
  v6 = MEMORY[0x277D86220];
  if (v5)
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109376;
      LODWORD(v13[0]) = H16ISP::H16ISPExclaveGraphNode::Channel(this);
      WORD2(v13[0]) = 1024;
      *(v13 + 6) = v4;
      _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "ANDK runkit ch=%u reqid=0x%08x\n", &v12, 0xEu);
    }
  }

  v13[0] = 0x21000010000;
  v14 = H16ISP::H16ISPExclaveGraphNode::Channel(this);
  v12 = 720896;
  kdebug_trace();
  v8 = ispExclaveKitCommand();
  kdebug_trace();
  if (!v8)
  {
    return 0;
  }

  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v6)
  {
    v9 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
  }

  v10 = 3758097130;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    H16ISPGraphExclaveRGBANDKNode::runANDKAlgorithm(v8, v9);
  }

  return v10;
}

void H16ISPGraphExclaveRGBANDKNode::~H16ISPGraphExclaveRGBANDKNode(NSObject **this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void JacobianMatrix::JacobianMatrix(JacobianMatrix *this, int a2, int a3)
{
  SparseMatrix::SparseMatrix(this);
  *(v5 + 48) = a3;
  if (a3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  v7 = v6 + 3 * a2;
  *(v5 + 40) = 4 * a2;
  *(v5 + 44) = 1;
  *(v5 + 32) = v7 + (2 * v6 + 10) * a2;
  *(v5 + 36) = v7;
  SparseMatrix::allocateMem(v5);
}

void JacobianMatrix::Solve(SparseMatrix *this@<X0>, uint64_t a3@<X8>)
{
  v4 = 0;
  v16[13] = *MEMORY[0x277D85DE8];
  v5 = *(this + 48) + 3;
  do
  {
    v6 = &v15[v4];
    *(v6 + 2) = 1;
    v6[24] = 0;
    *v6 = &unk_283812C88;
    *(v6 + 1) = 0;
    v4 += 32;
  }

  while (v4 != 128);
  v7 = 0;
  v8 = v16;
  while (1)
  {
    ColumnAsDenseVector = SparseMatrix::GetColumnAsDenseVector(v13, this, v7);
    if (*v8 == 1)
    {
      v10 = *(v8 - 2);
      if (v10)
      {
        MEMORY[0x22AA55B40](v10, 0x1000C8000313F17, ColumnAsDenseVector);
      }
    }

    *(v8 - 1) = v13[2];
    *(v8 - 2) = v13[1];
    *v8 = v14;
    v8 += 32;
    v14 = 0;
    Matrix<double>::~Matrix(v13);
    if (v5 == ++v7)
    {
      MatrixWidth = SparseMatrix::GetMatrixWidth(this);
      *Matrix<double>::Matrix(a3, 1, MatrixWidth) = &unk_283812C88;
      SparseMatrix::GetMatrixWidth(this);
      operator new[]();
    }
  }
}

void sub_22485D358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  SparseVector::~SparseVector(&a35);
  SparseVector::~SparseVector(&a42);
  SparseVector::~SparseVector(&a49);
  SparseVector::~SparseVector(&a56);
  for (i = 96; i != -32; i -= 32)
  {
    Matrix<double>::~Matrix(&STACK[0x240] + i);
  }

  SparseMatrix::~SparseMatrix(&a63);
  Matrix<double>::~Matrix(a12);
  for (j = 96; j != -32; j -= 32)
  {
    Matrix<double>::~Matrix(&STACK[0x2C0] + j);
  }

  _Unwind_Resume(a1);
}

double MatrixNxPts<1u,double>::MultATagxB<1u,void>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  if (v2 != *(a2 + 20))
  {
    MatrixNxPts<1u,double>::MultATagxB<1u,void>();
  }

  if (!v2)
  {
    return 0.0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = 0.0;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    result = result + v7 * v8;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t Matrix<double>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283812C58;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

void Matrix<double>::~Matrix(uint64_t a1)
{
  Matrix<double>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<double>::Matrix(uint64_t a1, int a2, int a3)
{
  *a1 = &unk_283812C58;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = 0;
  return a1;
}

void MatrixNxPts<1u,double>::~MatrixNxPts(uint64_t a1)
{
  Matrix<double>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t MobileProjectorToken::remove(int a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:ProjectorTokenPath[a1]];
  if ([v2 fileExistsAtPath:v3] && (v5 = 0, (objc_msgSend(v2, "removeItemAtPath:error:", v3, &v5) & 1) == 0))
  {
    NSLog(&cfstr_FailedToRemove.isa, ProjectorTargetName[a1], [v5 description]);
    return 0;
  }

  else
  {
    log("token was removed");
    return 1;
  }
}

void log(const char *a1, ...)
{
  va_start(va, a1);
  v10 = 0;
  v1 = vasprintf(&v10, a1, va);
  if (v10)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v3 = MEMORY[0x277CCACA8];
    v4 = [v2 stringFromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "date")}];
    v5 = [v3 stringWithFormat:@"%@ %s\n", v4, v10, va];

    free(v10);
    v10 = 0;
    v6 = fopen("/var/mobile/Documents/Tokens.log", "a");
    if (v6)
    {
      v7 = v6;
      fwrite([v5 UTF8String], objc_msgSend(v5, "length"), 1uLL, v6);
      fclose(v7);
    }

    else
    {
      NSLog(&cfstr_FailedToOpenTo.isa, v8, v9);
    }
  }

  else
  {
    NSLog(&cfstr_FailedToCreate_7.isa, v1, v1);
  }
}

BOOL MobileProjectorToken::create(unsigned int a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1 >= 0xA8C1)
  {
    NSLog(&cfstr_TheRequestedTi.isa, a2, a3, a4, a5, a6, a7, 43200);
    return 0;
  }

  v7 = a7;
  v9 = a5;
  v10 = a4;
  v12 = a2;
  v14 = time(0);
  if (v14 == -1)
  {
    NSLog(&cfstr_FailedToGetCur.isa, v15, v16, v17, v18, v19, v20);
    return 0;
  }

  v21 = v14;
  if (!readChipID(v37))
  {
    return 0;
  }

  v34 = v21 + a1;
  v35 = v10;
  v22 = ProjectorTokenDir[v7];
  bzero(v38, 0x800uLL);
  for (i = 0; ; ++i)
  {
    v24 = v22[i];
    v38[i] = v24;
    if (v24 == 47 || v24 == 0)
    {
      if (stat(v38, &v36) && mkdir(v38, 0x1FFu))
      {
        NSLog(&cfstr_FailedToCreate_6.isa, v26, v27, v28, v29, v30, v31, ProjectorTargetName[v7]);
        return 0;
      }

      if (!v22[i])
      {
        break;
      }
    }
  }

  ProjectorToken::ProjectorToken(v38, v37, v12, a3, v21, v34, v35, v9, a6);
  v32 = ProjectorToken::writeToFile(v38, ProjectorTokenPath[v7]);
  if (v32)
  {
    log("Token created. Created on: %ld, Timeout: %d (Valid until: %ld), Activations: %d, Resets on boot: %d, Comment: %s", v21, a1, v34, v35, v9, a6);
  }

  return v32;
}

BOOL readChipID(char *a1)
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    valuePtr = 0;
    CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
    snprintf(a1, 0x20uLL, "%lld", valuePtr);
    CFRelease(v3);
  }

  else
  {
    NSLog(&cfstr_FailedToReadUn_0.isa);
  }

  return v3 != 0;
}

uint64_t MobileProjectorToken::use(int a1, int a2, time_t *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = ProjectorTokenPath[a2];
  if (([v6 fileExistsAtPath:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v7)}] & 1) == 0)
  {
    log("Can't activate %s projector: no projector token found");
    return 0;
  }

  ProjectorToken::ProjectorToken(__s2);
  if ((ProjectorToken::readFromFile(__s2, v7) & 1) == 0)
  {
    log("Failed to read %s projector token file. Token will be removed.");
    goto LABEL_8;
  }

  v8 = time(0);
  v9 = v18;
  if (v8 > v18)
  {
    log("%s token timeout was reached (current time %ld). Token will be removed.");
LABEL_8:
    MobileProjectorToken::remove(a2);
    return 0;
  }

  if (v8 > v17 + 43200)
  {
    log("%s token has exceeded max allowed timeout. Token will be removed.");
    goto LABEL_8;
  }

  if (!readChipID(__s1))
  {
    log("Failed to read unique chip ID");
    return 0;
  }

  if (strcmp(__s1, __s2))
  {
    log("%s token does not match device. Token will be removed.");
    goto LABEL_8;
  }

  v11 = 0;
  while (v11 >= __s2[16] || __s2[v11 + 17] != a1 || a1 == 0)
  {
    if (++v11 == 8)
    {
      log("%s token doesn't match platform. Token will be removed.");
      goto LABEL_8;
    }
  }

  if (v20 == 1)
  {
    LastBootTime = getLastBootTime();
    if (LastBootTime == -1 || LastBootTime > v17)
    {
      log("System performed boot since %s token creation (boot time: %ld). Token will be removed.");
      goto LABEL_8;
    }
  }

  if (!v19)
  {
    log("Number of allowed activations has reached zero. %s token will be removed.");
    goto LABEL_8;
  }

  v14 = v19 - 1;
  if (v19 >= 1)
  {
    --v19;
    if (v14)
    {
      if (!ProjectorToken::writeToFile(__s2, v7))
      {
        log("Failed to update %s token file. Will return false so someone looks at that...");
        return 0;
      }

      log("%s token activation count updated to %d", ProjectorTargetName[a2], v19);
    }

    else
    {
      log("Using last allowed activation. %s token will be removed.", ProjectorTargetName[a2]);
      MobileProjectorToken::remove(a2);
    }
  }

  if (a3)
  {
    *a3 = v9;
  }

  return 1;
}

uint64_t getLastBootTime(void)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 0x1500000001;
  v2 = 16;
  if (sysctl(v4, 2u, &v3, &v2, 0, 0) || (result = v3) == 0)
  {
    v1 = __error();
    NSLog(&cfstr_FailedToReadBo.isa, *v1);
    return -1;
  }

  return result;
}

uint64_t MobileProjectorToken::print(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = ProjectorTokenPath[a1];
  if ([v2 fileExistsAtPath:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v3)}])
  {
    ProjectorToken::ProjectorToken(v6);
    v4 = ProjectorToken::readFromFile(v6, v3);
    if (v4)
    {
      ProjectorToken::print(v6);
    }

    else
    {
      NSLog(&cfstr_FailedToReadSP_0.isa, ProjectorTargetName[a1]);
    }
  }

  else
  {
    NSLog(&cfstr_NoSProjectorTo.isa, ProjectorTargetName[a1]);
    return 0;
  }

  return v4;
}

H16ISP::H16ISPFirmwareLogger *H16ISP::H16ISPFirmwareLogger::H16ISPFirmwareLogger(H16ISP::H16ISPFirmwareLogger *this, H16ISP::H16ISPDevice *a2, void (*a3)(void *, const char *), void *a4, char a5, int a6, int a7)
{
  v15 = *MEMORY[0x277D85DE8];
  *(this + 1) = a3;
  v9 = (this + 8);
  *this = a2;
  *(this + 2) = a4;
  *(this + 6) = a6;
  v10 = (this + 24);
  *(this + 7) = a7;
  H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(&v14);
  *(this + 12) = 0;
  *(this + 56) = 0;
  v11 = *this;
  *(this + 5) = &v14;
  *(this + 6) = v11;
  *(this + 4) = *v9;
  *(this + 10) = *v10;
  *(this + 4) = this;
  *(this + 88) = a5;
  pthread_attr_init(&v13);
  pthread_attr_setdetachstate(&v13, 1);
  pthread_create(this + 12, &v13, H16ISP::H16ISPFirmwareLoggerThreadStart, this + 32);
  pthread_attr_destroy(&v13);
  H16ISP::H16ISPThreadReadySyncer::wait(&v14);
  H16ISP::H16ISPThreadReadySyncer::~H16ISPThreadReadySyncer(&v14);
  return this;
}

uint64_t H16ISP::H16ISPFirmwareLoggerThreadStart(uint64_t a1)
{
  pthread_setname_np("H16ISPFirmwareLoggerThread");
  H16ISP::H16ISPThreadReadySyncer::lock(*(a1 + 8));
  if (!*(a1 + 16))
  {
    H16ISP::H16ISPThreadReadySyncer::signalAndUnlock(*(a1 + 8));
    return 0;
  }

  v2 = *(a1 + 52);
  if (v2)
  {
    H16ISP::H16ISPFirmwareLogger::SetFirmwareLoggerThreadPriority(*a1, v2);
  }

  H16ISP::H16ISPThreadReadySyncer::signalAndUnlock(*(a1 + 8));
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    printf("%s: Unable to allocate CFDictionary for IOSurface properties\n", "H16ISPFirmwareLoggerThreadStart");
    goto LABEL_20;
  }

  v5 = Mutable;
  valuePtr = 0x40000;
  v6 = CFNumberCreate(v3, kCFNumberLongType, &valuePtr);
  CFDictionaryAddValue(v5, *MEMORY[0x277CD2948], v6);
  CFRelease(v6);
  v7 = IOSurfaceCreate(v5);
  if (!v7)
  {
    printf("%s: Unable to create IOSurface for client logging buffer\n", "H16ISPFirmwareLoggerThreadStart");
    CFRelease(v5);
    goto LABEL_20;
  }

  v8 = v7;
  seed = 0;
  IOSurfaceLock(v7, 0, &seed);
  ID = IOSurfaceGetID(v8);
  BaseAddress = IOSurfaceGetBaseAddress(v8);
  if (BaseAddress)
  {
    bzero(BaseAddress, valuePtr);
    ClientLoggingSession = H16ISP::H16ISPDevice::ISP_CreateClientLoggingSession(*(a1 + 16), ID, *(a1 + 56));
    v12 = ClientLoggingSession;
    if (ClientLoggingSession)
    {
      printf("%s: ISP_CreateClientLoggingSession returned 0x%08x\n", "H16ISPFirmwareLoggerThreadStart", ClientLoggingSession);
      CFRelease(v8);
      v8 = 0;
      ID = 0;
      LOBYTE(v12) = v12 == -536870201;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  IOSurfaceUnlock(v8, 0, &seed);
  CFRelease(v5);
  if (!v8)
  {
    if (v12)
    {
      return 0;
    }

LABEL_20:
    (*(a1 + 32))(*(a1 + 40), "Firmware logging aborted\n");
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    do
    {
      H16ISP::_ProcessLogWork(v8, a1);
      usleep(1000 * *(a1 + 48));
    }

    while (*(a1 + 24) != 1);
  }

  v13 = H16ISP::H16ISPDevice::ISP_TerminateClientLoggingSession(*(a1 + 16), ID);
  if (v13)
  {
    printf("%s: ISP_TerminateClientLoggingSession returned 0x%08x\n", "H16ISPFirmwareLoggerThreadStart", v13);
  }

  H16ISP::_ProcessLogWork(v8, a1);
  CFRelease(v8);
  return 0;
}

void H16ISP::H16ISPFirmwareLogger::~H16ISPFirmwareLogger(pthread_t *this)
{
  v2 = 0;
  H16ISP::H16ISPFirmwareLogger::SetFirmwareLoggerThreadPriority(this, 47);
  *(this + 56) = 1;
  pthread_join(this[12], &v2);
  this[12] = 0;
}

uint64_t H16ISP::H16ISPFirmwareLogger::SetFirmwareLoggerThreadPriority(H16ISP::H16ISPFirmwareLogger *this, int a2)
{
  v2 = *(this + 12);
  if (!v2)
  {
    return 3758097086;
  }

  v4 = pthread_mach_thread_np(v2);
  H16ISP::H16ISPSetMachThreadPriority(v4, a2);
  return 0;
}

__IOSurface *H16ISP::_ProcessLogWork(__IOSurface *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    IOSurfaceLock(result, 0, 0);
    AllocSize = IOSurfaceGetAllocSize(v3);
    BaseAddress = IOSurfaceGetBaseAddress(v3);
    LODWORD(v6) = *(BaseAddress + 1);
    v7 = *(BaseAddress + 16);
    if (v6 != v7)
    {
      v8 = BaseAddress;
      do
      {
        v9 = *(a2 + 32);
        if (v9)
        {
          v9(*(a2 + 40), &v8[v6]);
          LODWORD(v6) = *(v8 + 1);
          v7 = *(v8 + 16);
        }

        v6 = (v6 + 128);
        if (AllocSize <= v6)
        {
          LODWORD(v6) = 128;
        }

        *(v8 + 1) = v6;
        if (v7 < 0x80 || AllocSize <= v7)
        {
          v10 = *(a2 + 32);
          if (v10)
          {
            v10(*(a2 + 40), "Logging Buffer Corruption.  Aborting Logging\n");
            LODWORD(v6) = *(v8 + 1);
            v7 = *(v8 + 16);
          }

          *(a2 + 24) = 1;
        }
      }

      while (v6 != v7);
    }

    return IOSurfaceUnlock(v3, 0, 0);
  }

  return result;
}

CFDictionaryRef CreateNamedValue(const char *cStr, const char *a2, __CFArray *a3)
{
  keys[3] = *MEMORY[0x277D85DE8];
  memset(keys, 0, 24);
  values = 0;
  cf = 0;
  v12 = 0;
  v9 = 0;
  v5 = MEMORY[0x277CBECE8];
  if (cStr)
  {
    keys[0] = @"Name";
    values = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
    v6 = 1;
    LOBYTE(v9) = 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a2)
  {
LABEL_3:
    keys[v6] = @"Value";
    *(&values + v6) = CFStringCreateWithCString(*v5, a2, 0x8000100u);
    *(&v9 | v6++) = 1;
  }

LABEL_4:
  if (a3)
  {
    keys[v6] = @"List";
    *(&values + v6++) = a3;
  }

  else if (!v6)
  {
    return 0;
  }

  v7 = CFDictionaryCreate(*v5, keys, &values, v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9 == 1)
  {
    CFRelease(values);
  }

  if (HIBYTE(v9) == 1)
  {
    CFRelease(cf);
  }

  return v7;
}

void ReleaseNamedValue(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

const __CFDictionary *Name(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Name", &value);
    return value;
  }

  return result;
}

const __CFDictionary *Value(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Value", &value);
    return value;
  }

  return result;
}

const __CFDictionary *List(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"List", &value);
    return value;
  }

  return result;
}

void ReleaseNamedValues(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void ClearNamedValues(CFMutableArrayRef theArray)
{
  if (theArray)
  {
    CFArrayRemoveAllValues(theArray);
  }
}

void AppendNamedValue(CFMutableArrayRef theArray, const void *value)
{
  if (theArray)
  {
    CFArrayAppendValue(theArray, value);
  }
}

const __CFArray *CountNamedValues(const __CFArray *theArray)
{
  if (theArray)
  {
    return CFArrayGetCount(theArray);
  }

  return theArray;
}

const __CFArray *GetNamedValue(const __CFArray *result, int a2)
{
  if (result)
  {
    return CFArrayGetValueAtIndex(result, a2);
  }

  return result;
}

void NamedValue::NamedValue(NamedValue *this)
{
  *this = 0;
}

{
  *this = 0;
}

void NamedValue::NamedValue(NamedValue *this, const char *a2, const char *a3, __CFArray *a4)
{
  *this = 0;
  NamedValue::Set(this, a2, a3, a4);
}

{
  *this = 0;
  NamedValue::Set(this, a2, a3, a4);
}

CFDictionaryRef NamedValue::Set(const void **this, const char *cStr, const char *a3, __CFArray *a4)
{
  v8 = *this;
  if (v8)
  {
    CFRelease(v8);
  }

  result = CreateNamedValue(cStr, a3, a4);
  *this = result;
  return result;
}

void NamedValue::~NamedValue(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void NamedValue::Name(Name *this)
{
  v1 = *this;
  value = 0;
  if (v1)
  {
    CFDictionaryGetValueIfPresent(v1, @"Name", &value);
  }
}

const __CFDictionary *NamedValue::Value(const __CFDictionary **this)
{
  result = *this;
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Value", &value);
    return value;
  }

  return result;
}

const __CFDictionary *NamedValue::List(const __CFDictionary **this)
{
  result = *this;
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"List", &value);
    return value;
  }

  return result;
}

void NamedValues::NamedValues(NamedValues *this)
{
  *this = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
}

{
  *this = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
}

void NamedValues::~NamedValues(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void NamedValues::push_back(__CFArray **this, const void **a2)
{
  v2 = *this;
  if (v2)
  {
    CFArrayAppendValue(v2, *a2);
  }
}

const __CFArray *NamedValues::size(const __CFArray **this)
{
  result = *this;
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void NamedValues::clear(__CFArray **this)
{
  v1 = *this;
  if (v1)
  {
    CFArrayRemoveAllValues(v1);
  }
}

void ProjectorToken::ProjectorToken(ProjectorToken *this, const char *a2, unsigned int a3, unsigned int *a4, uint64_t a5, uint64_t a6, int a7, char a8, const char *a9)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 16) = a3;
  *(this + 13) = a5;
  *(this + 14) = a6;
  *(this + 30) = a7;
  *(this + 124) = a8;
  strncpy(this, a2, 0x20uLL);
  if (a9)
  {
    strncpy(this + 32, a9, 0x20uLL);
    *(this + 63) = 0;
  }

  if (a3 >= 8)
  {
    *(this + 16) = 8;
  }

  bzero(this + 68, 0x20uLL);
  memcpy(this + 68, a4, 4 * *(this + 16));
}

{
  ProjectorToken::ProjectorToken(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

BOOL ProjectorToken::writeToFile(ProjectorToken *this, const char *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  __ptr = 3;
  strncpy(v10, this + 32, 0x20uLL);
  strncpy(v11, this, 0x20uLL);
  bzero(v12, 0x20uLL);
  v4 = *(this + 84);
  v12[0] = *(this + 68);
  v12[1] = v4;
  v12[2] = *(this + 104);
  v5 = *(this + 124);
  v13 = *(this + 30);
  v14 = v5;
  v6 = SCRAMBLING_OFFSET;
  if (SCRAMBLING_OFFSET <= 0x7B)
  {
    do
    {
      v10[v6 - 4] ^= SCRAMBLE[v6 & 7];
      ++v6;
    }

    while (v6 != 124);
  }

  v7 = fopen(a2, "w");
  if (v7)
  {
    fwrite(&__ptr, 1uLL, 0x7CuLL, v7);
    fclose(v7);
  }

  return v7 != 0;
}

uint64_t ProjectorToken::readFromFile(ProjectorToken *this, const char *__filename)
{
  v16 = *MEMORY[0x277D85DE8];
  result = fopen(__filename, "r");
  if (result)
  {
    v4 = result;
    v5 = fread(&__ptr, 1uLL, 0x24uLL, result) == 36 && __ptr == 3;
    if (v5 && fread(&v11[SCRAMBLING_OFFSET - 4], 1uLL, 0x58uLL, v4) == 88)
    {
      v6 = SCRAMBLING_OFFSET;
      if (SCRAMBLING_OFFSET <= 0x7B)
      {
        do
        {
          v11[v6 - 4] ^= SCRAMBLE[v6 & 7];
          ++v6;
        }

        while (v6 != 124);
      }

      strncpy(this, v12, 0x20uLL);
      *(this + 104) = v13;
      v7 = v15;
      *(this + 30) = v14;
      *(this + 124) = v7 != 0;
      strncpy(this + 32, v11, 0x20uLL);
      *(this + 63) = 0;
      bzero(this + 68, 0x20uLL);
      v8 = 0;
      *(this + 16) = 8;
      while (1)
      {
        v9 = *&v12[4 * v8 + 32];
        *(this + v8 + 17) = v9;
        if (!v9)
        {
          break;
        }

        if (++v8 == 8)
        {
          return 1;
        }
      }

      *(this + 16) = v8;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ProjectorToken::print(ProjectorToken *this)
{
  printf("Chip ID: %s\n", this);
  printf("Created on: ");
  printTime(*(this + 13));
  putchar(10);
  v2 = *(this + 16);
  puts("Created for platforms:");
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (i >= *(this + 16))
      {
        v4 = 0;
      }

      else
      {
        v4 = *(this + i + 17);
      }

      printf("0x%04x\n", v4);
    }
  }

  putchar(10);
  printf("Valid through: ");
  printTime(*(this + 14));
  putchar(10);
  printf("Remaining activations: ");
  if (*(this + 30) == -1)
  {
    puts("INF");
  }

  else
  {
    printf("%d\n", *(this + 30));
  }

  if (*(this + 124))
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  printf("Resets on boot: %s\n", v5);
  return printf("Comment: %s\n", this + 32);
}

uint64_t printTime(time_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v1 = localtime(&v3);
  strftime(v4, 0x20uLL, "%F %T", v1);
  return printf("%s", v4);
}

H16ISP::JasperConfigManagerInternal *H16ISP::JasperConfigManagerInternal::JasperConfigManagerInternal(H16ISP::JasperConfigManagerInternal *this)
{
  *this = 0xFFFFFFFF00000000;
  *(this + 2) = -1;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0x4FFFF00000001;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = -1;
  H16ISP::JasperConfigManagerInternal::setFrameModeDictionaryLocation(this, 0);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *(this + 11) = v2;
  [v2 setValue:&unk_28381FF60 forKey:@"Version"];
  return this;
}

void sub_22485EF8C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void H16ISP::JasperConfigManagerInternal::setFrameModeDictionaryLocation(H16ISP::JasperConfigManagerInternal *this, NSString *a2)
{
  v4 = [(NSString *)a2 lastPathComponent];
  v5 = [(NSString *)a2 stringByDeletingLastPathComponent];
  v6 = *(this + 2);
  if (v6)
  {

    *(this + 2) = 0;
  }

  v7 = *(this + 3);
  if (v7)
  {

    *(this + 3) = 0;
  }

  *(this + 32) = 1;
  if (!v4 || (v8 = [(__CFString *)v4 length], !a2) || !v8)
  {
    v4 = @"JasperFrameModes.plist";
  }

  *(this + 2) = [(__CFString *)v4 copy];
  if (!v5 || (v9 = [(__CFString *)v5 length], !a2) || !v9)
  {
    v5 = @"/var/mobile/Documents/JasperL";
  }

  v10 = [(__CFString *)v5 copy];
  *(this + 3) = v10;
  v11 = [v10 stringByAppendingPathComponent:*(this + 2)];
  v12 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (a2)
  {
    NSLog(&cfstr_JasperFrameCon_13.isa, v11);
  }

  else if ((v12 & 1) == 0)
  {
    *(this + 32) = 0;
  }
}

void H16ISP::JasperConfigManagerInternal::~JasperConfigManagerInternal(H16ISP::JasperConfigManagerInternal *this)
{
  v2 = *(this + 2);
  if (v2)
  {
  }

  v3 = *(this + 3);
  if (v3)
  {
  }

  v4 = *(this + 5);
  if (v4)
  {
    free(v4);
    *(this + 5) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }
}

char *H16ISP::JasperConfigManagerInternal::initJasperSpecs(char *this)
{
  if (!*(this + 5))
  {
    v1 = this;
    this = malloc_type_calloc(1uLL, 0x62700uLL, 0x100004052888210uLL);
    v2 = 0;
    *(v1 + 5) = this;
    do
    {
      *&v1[v2 + 48] = this;
      v2 += 8;
      this += 100800;
    }

    while (v2 != 32);
  }

  return this;
}

uint64_t H16ISP::JasperConfigManagerInternal::setJasperProjectorBanksStatus(H16ISP::JasperConfigManagerInternal *this, H16ISP::H16ISPDevice *a2, const BOOL *a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v12 = a4;
  v11 = 1570;
  v13 = 0xC00000007;
  v14 = 0;
  do
  {
    if (a3[v4])
    {
      v6 = 1 << v4;
    }

    else
    {
      v6 = 0;
    }

    v5 |= v6;
    ++v4;
  }

  while (v4 != 8);
  v15 = v5;
  v7 = H16ISP::H16ISPDevice::ISP_SendCommand(a2, v10, 0x4Cu, 0, 0xFFFFFFFF);
  v8 = v7;
  if (v7)
  {
    NSLog(&cfstr_FailToSendComm.isa, v7);
  }

  return v8;
}

uint64_t H16ISP::JasperConfigManagerInternal::setTofFrame(H16ISP::JasperConfigManagerInternal *this, H16ISP::H16ISPDevice *a2, int a3, uint64_t a4, NSDictionary *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = [(NSDictionary *)a5 objectForKey:@"file"];
  v11 = [-[NSDictionary objectForKey:](a5 objectForKey:{@"bank", "intValue"}];
  if (([v10 hasPrefix:@"/"] & 1) == 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", *(this + 3), v10];
  }

  v12 = fopen([v10 UTF8String], "rb");
  if (!v12)
  {
    NSLog(&cfstr_JasperFrameCon.isa, v10);
    return 4294954516;
  }

  v13 = v12;
  fseeko(v12, 0, 2);
  v14 = ftello(v13);
  fseeko(v13, 0, 0);
  if (v14 != 2048)
  {
    NSLog(&cfstr_JasperFrameCon_0.isa, 2048, v14);
    fclose(v13);
    return 4294954516;
  }

  v18 = 13057;
  v19 = a3;
  v20 = v11;
  v21 = v11;
  v22 = 0;
  v23 = 0;
  *&v24[2050] = a4;
  v15 = fread(v24, 1uLL, 0x800uLL, v13);
  fclose(v13);
  if (v15 != 2048)
  {
    NSLog(&cfstr_JasperFrameCon_1.isa, v10);
    return 4294954516;
  }

  NSLog(&cfstr_JasperFrameCon_2.isa, a4, v10);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(a2, v17, 0x818u, 0, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::JasperConfigManagerInternal::setTofFrameOffset(H16ISP::JasperConfigManagerInternal *this, H16ISP::H16ISPDevice *a2, int a3, int a4, NSDictionary *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v22 = 13058;
  v23 = a3;
  v26 = 0;
  v27 = 0;
  v35 = a4;
  v7 = [-[NSDictionary objectForKey:](a5 objectForKey:{@"bank", "intValue"}];
  if (v7 > 3)
  {
    return 4294954516;
  }

  v24 = v7;
  v25 = v7;
  v9 = [-[NSDictionary objectForKey:](a5 objectForKey:{@"deltaX", "intValue"}];
  v10 = [-[NSDictionary objectForKey:](a5 objectForKey:{@"deltaY", "intValue"}];
  result = 4294954516;
  if (v9 == v9 && (v10 - 128) >= 0xFFFFFF00)
  {
    v28 = v9;
    v29 = v10;
    v11 = [-[NSDictionary objectForKey:](a5 objectForKey:{@"refSpX0", "intValue"}];
    v12 = [-[NSDictionary objectForKey:](a5 objectForKey:{@"refSpX1", "intValue"}];
    result = 4294954516;
    if (v11 <= 0xFF && v12 <= 0xFF)
    {
      v30 = v11;
      v31 = v12;
      v13 = [-[NSDictionary objectForKey:](a5 objectForKey:{@"laserIntensity", "intValue"}];
      if (HIWORD(v13))
      {
        return 4294954516;
      }

      v33 = v13;
      v14 = [-[NSDictionary objectForKey:](a5 objectForKey:{@"trefmaxtof", "intValue"}];
      if (v14 > 0x1FF)
      {
        return 4294954516;
      }

      v34 = v14;
      if ([-[NSDictionary objectForKey:](a5 objectForKey:{@"setplscgDelay", "intValue"}] > 0x3F)
      {
        return 4294954516;
      }

      v15 = [(NSDictionary *)a5 objectForKey:@"priper"];
      v16 = [(NSDictionary *)a5 objectForKey:@"prirep"];
      v17 = [v15 count];
      if (v17 != [v16 count] || objc_msgSend(v15, "count") > 0x10 || !objc_msgSend(v15, "count"))
      {
        return 4294954516;
      }

      bzero(v32, 0x41uLL);
      v32[0] = [v15 count] - 1;
      if ([v15 count])
      {
        v18 = 0;
        v19 = 1;
        do
        {
          *&v32[4 * v18 + 3] = [objc_msgSend(v16 objectAtIndex:{v18), "intValue"}];
          v18 = v19;
        }

        while ([v15 count] > v19++);
      }

      if (H16ISP::H16ISPDevice::ISP_SendCommand(a2, v21, 0xC4u, 0, 0xFFFFFFFF))
      {
        return 4294954516;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t H16ISP::JasperConfigManagerInternal::setInitialBanks(H16ISP::JasperConfigManagerInternal *this, H16ISP::H16ISPDevice *a2, int a3, NSDictionary *a4)
{
  *&v23[2050] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    v9 = -[NSDictionary objectForKey:](a4, "objectForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v8]);
    if (v9)
    {
      v10 = v9;
      if (([v9 hasPrefix:@"/"] & 1) == 0)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", *(this + 3), v10];
      }

      v11 = fopen([v10 UTF8String], "rb");
      if (!v11)
      {
        NSLog(&cfstr_JasperBankConf.isa, v10);
        return 0;
      }

      v12 = v11;
      fseeko(v11, 0, 2);
      v13 = ftello(v12);
      fseeko(v12, 0, 0);
      if (v13 != 2048)
      {
        NSLog(&cfstr_JasperBankConf_0.isa, 2048, v13);
        fclose(v12);
        return 0;
      }

      v18 = 13056;
      v19 = a3;
      v20 = v8;
      v21 = 4;
      v22 = 0;
      v14 = fread(v23, 1uLL, 0x800uLL, v12);
      fclose(v12);
      if (v14 != 2048)
      {
        NSLog(&cfstr_JasperBankConf_1.isa, v10);
        return 0;
      }

      NSLog(&cfstr_JasperBankConf_2.isa, v10);
      v15 = H16ISP::H16ISPDevice::ISP_SendCommand(a2, v17, 0x814u, 0, 0xFFFFFFFF);
      if (v15)
      {
        break;
      }
    }

    v8 = (v8 + 1);
    if (v8 == 4)
    {
      return 1;
    }
  }

  NSLog(&cfstr_JasperBankConf_3.isa, v15);
  return 0;
}

BOOL H16ISP::JasperConfigManagerInternal::setMode(H16ISP::JasperConfigManagerInternal *this, int a2)
{
  v2 = *(this + 1);
  *(this + 2) = a2;
  v3 = 4;
  if (a2 > 103)
  {
    if (a2 != 104 && a2 != 108)
    {
      goto LABEL_7;
    }
  }

  else if (a2 != 4 && a2 != 44)
  {
LABEL_7:
    v3 = a2;
  }

  *(this + 1) = v3;
  return v3 != v2;
}

uint64_t H16ISP::JasperConfigManagerInternal::applyModeFromDictionary(H16ISP::JasperConfigManagerInternal *this, H16ISP::H16ISPDevice *a2, int a3, NSDictionary *a4)
{
  v8 = [-[NSDictionary objectForKey:](a4 objectForKey:{@"tbcnum", "intValue"}];
  NSLog(&cfstr_JasperFrameCon_3.isa, *(this + 1));
  if (!H16ISP::JasperConfigManagerInternal::setInitialBanks(this, a2, a3, [(NSDictionary *)a4 objectForKey:@"banks"]))
  {
    return 4294954516;
  }

  v9 = [(NSDictionary *)a4 objectForKey:@"sequences"];
  *(this + 3) = 0;
  v30 = a3;
  v29 = 13059;
  bzero(v31, 0x62uLL);
  v31[0] = [v9 count];
  v31[1] = v8;
  if (!v31[0])
  {
    return 4294954516;
  }

  if ([v9 count])
  {
    v10 = 0;
    v11 = 0;
    v25 = v9;
    do
    {
      v27 = v11;
      v12 = [v9 objectAtIndex:v10];
      v13 = [v12 objectForKey:@"repeat"];
      if (v13)
      {
        v26 = [v13 intValue];
      }

      else
      {
        v26 = 1;
      }

      v14 = [v12 objectForKey:@"sequence"];
      if ([v14 count])
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = [v14 objectAtIndex:v15];
          v18 = [(NSDictionary *)v17 objectForKey:@"type"];
          if (v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = @"frame";
          }

          if ([(__CFString *)v19 isEqualToString:@"frame"])
          {
            if (H16ISP::JasperConfigManagerInternal::setTofFrame(this, a2, a3, v16 + *this, v17))
            {
              return 4294954516;
            }
          }

          else
          {
            v20 = [(__CFString *)v19 isEqualToString:@"offset"];
            if (!v20)
            {
              NSLog(&cfstr_JasperFrameCon_4.isa, v19);
              return 4294954516;
            }

            if (H16ISP::JasperConfigManagerInternal::setTofFrameOffset(v20, a2, a3, v16 + *this, v17))
            {
              return 4294954516;
            }
          }

          v15 = ++v16;
        }

        while ([v14 count] > v16);
      }

      v21 = &v32[3 * v10];
      v22 = *this;
      *v21 = *this;
      v21[1] = [v14 count] + v22 - 1;
      v21[2] = v26;
      *this += [v14 count];
      *(this + 3) += [v14 count];
      v10 = (v27 + 1);
      v9 = v25;
      v23 = [v25 count];
      v11 = v27 + 1;
    }

    while (v23 > v10);
  }

  NSLog(&cfstr_JasperFrameCon_5.isa, v32[0], v32[1]);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(a2, v28, 0x70u, 0, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::JasperConfigManagerInternal::applyFromDictionary(H16ISP::JasperConfigManagerInternal *this, H16ISP::H16ISPDevice *a2, int a3)
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@/%@", *(this + 3), *(this + 2))}];
  if (!v6)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", *(this + 3), *(this + 2)];
    NSLog(&cfstr_JasperFrameCon_6.isa, v14, v16);
    return 4294954516;
  }

  v7 = [v6 objectForKey:@"FrameModes"];
  if (!v7)
  {
    NSLog(&cfstr_JasperFrameCon_7.isa, v13, v15);
    return 4294954516;
  }

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(this + 1);
    if ([v8 count] > v9)
    {
      v10 = [v8 objectAtIndex:*(this + 1)];
      goto LABEL_10;
    }

    NSLog(&cfstr_JasperFrameCon_8.isa, *(this + 1), [v8 count]);
    return 4294954516;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_JasperFrameCon_10.isa, v13, v15);
    return 4294954516;
  }

  v10 = [v8 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", *(this + 1))}];
  if (!v10)
  {
    NSLog(&cfstr_JasperFrameCon_9.isa, *(this + 1), v15);
    return 4294954516;
  }

LABEL_10:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_JasperFrameCon_11.isa, *(this + 1), v15);
    return 4294954516;
  }

  v11 = H16ISP::JasperConfigManagerInternal::applyModeFromDictionary(this, a2, a3, v10);
  if (v11)
  {
    NSLog(&cfstr_JasperFrameCon_12.isa, *(this + 1));
  }

  return v11;
}