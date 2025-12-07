void PRM::Camera::PearlBufferStream::initialize(PRM::Camera::PearlBufferStream *this)
{
  v68 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (!v1)
  {
    PRM::Camera::PearlBufferStream::initialize(v65);
  }

  v2 = this;
  if (*(this + 10))
  {
    PRM::Camera::PearlBufferStream::initialize(v65);
  }

  v3 = *(this + 2);
  if ((v3 - 3) <= 0xFFFFFFFD)
  {
    PRM::Camera::PearlBufferStream::initialize(v65);
  }

  v4 = *(v1 + 108);
  if (v4)
  {
    if (v4 != 1)
    {
      PRM::Camera::PearlBufferStream::initialize(v65);
      goto LABEL_80;
    }
  }

  else
  {
    v4 = 2;
  }

  *(this + 32) = v4;
  v62 = this;
  if (v3 != 1)
  {
    goto LABEL_39;
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::PearlBufferStream::initialize(v65);
  }

  MEMORY[0x25F8C8900](v5, 8);
  MEMORY[0x25F8C8900](*(v2 + 2), 1);
  v6 = 4;
  do
  {
    v7 = MEMORY[0x25F8C8900](*(v2 + 2), 1);
    --v6;
  }

  while (v6);
  v55[1] = v55;
  v8 = *(*(v2 + 4) + 152);
  MEMORY[0x28223BE20](v7);
  v9 = (8 * v8 + 15) & 0xFFFFFFFF0;
  if ((8 * v8) >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = 8 * v8;
  }

  v61 = v55 - v9;
  bzero(v55 - v9, v10);
  MEMORY[0x28223BE20](v11);
  v60 = v55 - v9;
  bzero(v55 - v9, v10);
  MEMORY[0x28223BE20](v12);
  v59 = v55 - v9;
  bzero(v55 - v9, v10);
  v56 = 8 * v8;
  MEMORY[0x28223BE20](v13);
  v58 = v55 - v9;
  bzero(v55 - v9, v10);
  v65[0] = *"dx";
  v64[0] = *"dy";
  v66 = *"depth";
  v67 = *"score";
  v57 = v8;
  if (v8)
  {
    v14 = 0;
    v15 = *MEMORY[0x277CBECE8];
    v16 = *MEMORY[0x277CC4D90];
    v17 = *MEMORY[0x277CBED28];
    v18 = 1;
    do
    {
      v19 = *(v62 + 4);
      if (!*(v19[20] + v14))
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      if (!*(v19[21] + v14))
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      if (!*(v19[22] + v14))
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      if (!*(v19[23] + v14))
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v21 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v22 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v23 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, v16, v17);
      CFDictionarySetValue(v21, v16, v17);
      CFDictionarySetValue(v22, v16, v17);
      CFDictionarySetValue(v23, v16, v17);
      v24 = v62 + 32;
      CVPixelBufferCreateWithIOSurface(v15, *(*(*(v62 + 4) + 160) + v14), Mutable, &v61[v14]);
      CVPixelBufferCreateWithIOSurface(v15, *(*(*v24 + 168) + v14), v21, &v60[v14]);
      CVPixelBufferCreateWithIOSurface(v15, *(*(*v24 + 176) + v14), v22, &v59[v14]);
      CVPixelBufferCreateWithIOSurface(v15, *(*(*v24 + 184) + v14), v23, &v58[v14]);
      if (!*&v61[v14])
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      CFRelease(Mutable);
      if (!*&v60[v14])
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      CFRelease(v21);
      if (!*&v59[v14])
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      CFRelease(v22);
      if (!*&v58[v14])
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      CFRelease(v23);
      v25 = v62 + 32;
      PRM::Camera::setIOSurfaceName(*(*(*(v62 + 4) + 160) + v14), *(*(v62 + 4) + 56), v18, *(*(v62 + 4) + 152), 0, v65, v26);
      PRM::Camera::setIOSurfaceName(*(*(*v25 + 168) + v14), *(*v25 + 56), v18, *(*v25 + 152), 0, v64, v27);
      PRM::Camera::setIOSurfaceName(*(*(*v25 + 176) + v14), *(*v25 + 56), v18, *(*v25 + 152), 0, &v67, v28);
      PRM::Camera::setIOSurfaceName(*(*(*v25 + 184) + v14), *(*v25 + 56), v18, *(*v25 + 152), 0, &v66, v29);
      v14 += 8;
      v18 = (v18 + 1);
    }

    while (v56 != v14);
  }

  ps_buffer_add_cvpixelbuffer();
  ps_buffer_add_cvpixelbuffer();
  ps_buffer_add_cvpixelbuffer();
  ps_buffer_add_cvpixelbuffer();
  v30 = 4;
  do
  {
    MEMORY[0x25F8C8900](*(v62 + 2), 4);
    --v30;
  }

  while (v30);
  v31 = v62;
  v32 = *(v62 + 32);
  if (v32 == 1)
  {
    if (v57)
    {
      v34 = 0;
      do
      {
        v35 = *(*(*(v62 + 4) + 200) + 8 * v34);
        if (!v35)
        {
          PRM::Camera::PearlBufferStream::initialize(v63);
        }

        CFRetain(v35);
        v36 = *(v62 + 4);
        v37 = *(*(v36 + 200) + 8 * v34++);
        PRM::Camera::setIOSurfaceName(v37, *(v36 + 56), v34, v57, 1, 0, v38);
      }

      while (v57 != v34);
    }

    ps_buffer_add_iosurface();
    v33 = 4;
    v31 = v62;
  }

  else
  {
    if (v32 != 2)
    {
      if (v32)
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      else
      {
        PRM::Camera::PearlBufferStream::initialize(v63);
      }

      goto LABEL_80;
    }

    v33 = 90112;
  }

  MEMORY[0x25F8C8900](*(v31 + 2), v33);
  MEMORY[0x25F8C8C70](*(v31 + 2));
  v2 = v62;
  v39 = *(v62 + 2);
  if (v39 == 2)
  {
LABEL_39:
    v40 = MEMORY[0x25F8C8E10](*(v2 + 3));
  }

  else
  {
    if (v39 != 1)
    {
      goto LABEL_78;
    }

    v40 = MEMORY[0x25F8C8E90](*(v62 + 2));
  }

  if (!v40)
  {
LABEL_78:
    PRM::Camera::PearlBufferStream::initialize(v65);
  }

  v41 = *v40;
  v42 = v62;
  *(v62 + 6) = *v40;
  if (!v41)
  {
    PRM::Camera::PearlBufferStream::initialize(v65);
  }

  v43 = v40[1];
  *(v42 + 7) = v43;
  if (!v43)
  {
    PRM::Camera::PearlBufferStream::initialize(v65);
  }

  v44 = (v42 + 64);
  for (i = 2; i != 6; ++i)
  {
    v46 = v40[i];
    *v44 = v46;
    if (!v46)
    {
      PRM::Camera::PearlBufferStream::initialize(v65);
    }

    ++v44;
  }

  v47 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  do
  {
    v48 = v40[v47 + 6];
    *(v65 + v47 * 8) = v48;
    if (!v48)
    {
      PRM::Camera::PearlBufferStream::initialize(&v67);
    }

    ++v47;
  }

  while (v47 != 4);
  for (j = 0; j != 4; ++j)
  {
    v50 = v40[j + 10];
    *(v64 + j * 8) = v50;
    if (!v50)
    {
      PRM::Camera::PearlBufferStream::initialize(&v67);
    }
  }

  v51 = *(v62 + 4);
  v52 = *(v51 + 112);
  if (v52 <= 7)
  {
    v53 = 1 << v52;
    if ((v53 & 0x49) != 0)
    {
      *(v62 + 10) = *(v51 + 68) + *(v51 + 72);
      operator new();
    }

    if ((v53 & 0x92) != 0)
    {
      v54.i64[0] = *(v51 + 68);
      v54.i64[1] = *(v51 + 144);
      *(v62 + 10) = vaddvq_s32(v54);
      operator new();
    }
  }

  PRM::Camera::PearlBufferStream::initialize(&v67);
LABEL_80:
  __break(1u);
}

_BYTE *PRM::Camera::PearlBufferStream::read(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 48))
  {
LABEL_43:
    PRM::Camera::PearlBufferStream::read(&v31);
LABEL_44:
    PRM::Camera::PearlBufferStream::read(&v31);
    goto LABEL_45;
  }

  v8 = 0;
  v9 = a1 + 96;
  do
  {
    if (!*(v9 + v8))
    {
      PRM::Camera::PearlBufferStream::read(&v31);
LABEL_40:
      PRM::Camera::PearlBufferStream::read(&v31);
LABEL_41:
      PRM::Camera::PearlBufferStream::read(&v27);
LABEL_42:
      PRM::Camera::PearlBufferStream::read(&v27);
      goto LABEL_43;
    }

    v8 += 8;
  }

  while (v8 != 32);
  v10 = *(a1 + 128);
  if (v10 == 1)
  {
    goto LABEL_9;
  }

  if (v10 != 2 || !*(a1 + 144))
  {
    do
    {
      PRM::Camera::PearlBufferStream::read(&v31);
LABEL_9:
      ;
    }

    while (!*(a1 + 136));
  }

  if (!a2)
  {
    goto LABEL_44;
  }

  if (!a3)
  {
LABEL_45:
    PRM::Camera::PearlBufferStream::read(&v31);
    goto LABEL_46;
  }

  if (MEMORY[0x25F8C9190](a2) <= a4)
  {
LABEL_46:
    PRM::Camera::PearlBufferStream::read(&v31);
    goto LABEL_47;
  }

  ps_buffer_get_resource_view_index();
  buffer = ps_buffer_serial_data_get_buffer();
  v12 = ps_buffer_serial_data_get_buffer();
  if (!buffer)
  {
LABEL_47:
    PRM::Camera::PearlBufferStream::read(&v31);
    goto LABEL_48;
  }

  v13 = v12;
  if (!v12)
  {
LABEL_48:
    PRM::Camera::PearlBufferStream::read(&v31);
    goto LABEL_49;
  }

  for (i = 0; i != 4; ++i)
  {
    v15 = ps_buffer_serial_data_get_buffer();
    if (!v15)
    {
      goto LABEL_40;
    }

    v30[i] = *v15;
  }

  MEMORY[0x25F8C94C0](a2, a4, *v13);
  result = MEMORY[0x25F8C9570](a2, a4, *buffer);
  v17 = 0;
  v18 = 0;
  do
  {
    while ((v18 & 1) != 0)
    {
      ++v17;
      v18 = 1;
      if (v17 == 4)
      {
        goto LABEL_24;
      }
    }

    v18 = v30[v17++];
  }

  while (v17 != 4);
  if (v18)
  {
LABEL_24:
    MEMORY[0x25F8C9560](a2, a4, v30[0], v30[1], v30[2], v30[3]);
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    do
    {
      if (v30[v19] == 1)
      {
        (*(**(v9 + 8 * v19) + 32))(v28);
        if (LODWORD(v28[0]) != 2)
        {
          goto LABEL_41;
        }

        if (!v29)
        {
          goto LABEL_42;
        }

        *(&v31 + v19) = v29;
      }

      else
      {
        *(&v31 + v19) = 0;
      }

      ++v19;
    }

    while (v19 != 4);
    v20 = *(a1 + 128);
    if (v20 == 1)
    {
      (*(**(a1 + 136) + 32))(v28);
      if (LODWORD(v28[0]) != 1)
      {
        goto LABEL_50;
      }

      if (!v28[1])
      {
LABEL_51:
        PRM::Camera::PearlBufferStream::read(&v27);
      }

      return MEMORY[0x25F8C9550](a2, a4, v31, *(&v31 + 1), v32, *(&v32 + 1));
    }

    else
    {
      if (v20 == 2)
      {
        v21 = ps_buffer_serial_data_get_buffer();
        if (v21)
        {
          v22 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (v21 + 8), *v21, *MEMORY[0x277CBED00]);
          return MEMORY[0x25F8C9540](a2, a4, v31, *(&v31 + 1), v32, *(&v32 + 1), v22);
        }

LABEL_49:
        PRM::Camera::PearlBufferStream::read(v28);
LABEL_50:
        PRM::Camera::PearlBufferStream::read(&v27);
        goto LABEL_51;
      }

      v23 = v28;
      if (!v20)
      {
        v23 = PRM::Camera::PearlBufferStream::read(v28);
      }

      v24 = PRM::Camera::PearlBufferStream::read(v23);
      return PRM::Camera::PearlBufferStream::write(v24, v25, v26);
    }
  }

  return result;
}

_BYTE *PRM::Camera::PearlBufferStream::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 40))
  {
LABEL_37:
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
  }

  if (!*(a1 + 48))
  {
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
  }

  v6 = 0;
  v7 = (a1 + 96);
  do
  {
    if (!v7[v6])
    {
      PRM::Camera::PearlBufferStream::write(&dxbuffer);
    }

    ++v6;
  }

  while (v6 != 4);
  v8 = *(a1 + 128);
  if (v8 == 1)
  {
    if (!*(a1 + 136))
    {
      goto LABEL_9;
    }
  }

  else if (v8 != 2 || !*(a1 + 144))
  {
LABEL_9:
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
  }

  if (!a2)
  {
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
  }

  if (!a3)
  {
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
  }

  if (MEMORY[0x25F8C9190](a2) != 1)
  {
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
    goto LABEL_42;
  }

  if (ps_buffer_get_resource_view_index() >= *(a1 + 40))
  {
LABEL_42:
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
LABEL_43:
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
  }

  if (!MEMORY[0x25F8C91F0](a2, 0))
  {
    goto LABEL_43;
  }

  v9 = *(a1 + 128);
  if (v9 == 2)
  {
    if (MEMORY[0x25F8C91C0](a2, 0))
    {
LABEL_47:
      PRM::Camera::PearlBufferStream::write(&dxbuffer);
LABEL_48:
      PRM::Camera::PearlBufferStream::write(&dxbuffer);
    }

    cfdata_metadata = ps_resource_pearlbuffer_get_cfdata_metadata();
    buffer = ps_buffer_serial_data_get_buffer();
    if (!buffer)
    {
      PRM::Camera::PearlBufferStream::write(&dxbuffer);
    }

    v14 = buffer;
    if (cfdata_metadata)
    {
      v30.length = CFDataGetLength(cfdata_metadata);
      *v14 = v30.length;
      v30.location = 0;
      CFDataGetBytes(cfdata_metadata, v30, v14 + 8);
    }

    else
    {
      *buffer = 0;
    }
  }

  else
  {
    if (v9 != 1)
    {
      PRM::Camera::PearlBufferStream::write(&dxbuffer);
    }

    if (MEMORY[0x25F8C91C0](a2, 0) != 1)
    {
      goto LABEL_46;
    }

    iosurface_metadata = ps_resource_pearlbuffer_get_iosurface_metadata();
    if (!iosurface_metadata)
    {
      goto LABEL_48;
    }

    v11 = *(a1 + 136);
    LODWORD(dxbuffer) = 1;
    scorebuffer = 0;
    depthbuffer = 0;
    dybuffer = iosurface_metadata;
    (*(*v11 + 40))(v11, a3, &dxbuffer);
  }

  v15 = ps_buffer_serial_data_get_buffer();
  if (!v15)
  {
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
    goto LABEL_45;
  }

  v16 = v15;
  v17 = ps_buffer_serial_data_get_buffer();
  if (!v17)
  {
LABEL_45:
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
LABEL_46:
    PRM::Camera::PearlBufferStream::write(&dxbuffer);
    goto LABEL_47;
  }

  v18 = v17;
  v19 = MEMORY[0x25F8C9240](a2, 0);
  *v16 = ps_util_mct_to_mat(v19);
  *v18 = MEMORY[0x25F8C9260](a2, 0);
  dxbuffer = ps_resource_pearlbuffer_get_dxbuffer();
  dybuffer = ps_resource_pearlbuffer_get_dybuffer();
  scorebuffer = ps_resource_pearlbuffer_get_scorebuffer();
  v20 = 0;
  depthbuffer = ps_resource_pearlbuffer_get_depthbuffer();
  do
  {
    result = ps_buffer_serial_data_get_buffer();
    if (!result)
    {
      PRM::Camera::PearlBufferStream::write(v24);
      goto LABEL_37;
    }

    v22 = (&dxbuffer)[v20];
    if (v22)
    {
      *result = 1;
      v23 = *v7;
      LODWORD(v24[0]) = 2;
      v24[1] = 0;
      v24[2] = v22;
      v24[3] = 0;
      result = (*(*v23 + 40))(v23, a3, v24);
    }

    else
    {
      *result = 0;
    }

    ++v7;
    ++v20;
  }

  while (v20 != 4);
  return result;
}

uint64_t PRM::Camera::PearlBufferStream::getBackingIOSurfaceList(PRM::Camera::PearlBufferStream *this, __IOSurface **a2)
{
  v3 = 0;
  v4 = 0;
  v5 = this + 96;
  while (1)
  {
    v6 = *&v5[v3];
    if (!v6)
    {
      PRM::Camera::PearlBufferStream::getBackingIOSurfaceList(&v8);
    }

    if (PRM::Camera::BufferPool::getBufferList(v6, &a2[v4]))
    {
      break;
    }

    v8 = 0;
    PRM::Camera::BufferPool::getBufferListSize(*&v5[v3], &v8);
    v4 += v8;
    v3 += 8;
    if (v3 == 32)
    {
      return 0;
    }
  }

  return 3758097084;
}

uint64_t PRM::Camera::PearlBufferStream::getBackingIOSurfaceListSize(PRM::Camera::PearlBufferStream *this, unint64_t *a2)
{
  v3 = 0;
  *a2 = 0;
  v4 = this + 96;
  while (1)
  {
    v5 = *&v4[v3];
    if (!v5)
    {
      PRM::Camera::PearlBufferStream::getBackingIOSurfaceListSize(&v7);
    }

    v7 = 0;
    if (PRM::Camera::BufferPool::getBufferListSize(v5, &v7))
    {
      break;
    }

    *a2 += v7;
    v3 += 8;
    if (v3 == 32)
    {
      return 0;
    }
  }

  return 3758097084;
}

BOOL PRM::Camera::PearlBufferStream::inUse(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    PRM::Camera::PearlBufferStream::inUse(v8);
  }

  v2 = 0;
  LOBYTE(v3) = 0;
  v4 = a1 + 96;
  do
  {
    v5 = *(v4 + v2);
    if (!v5)
    {
      PRM::Camera::PearlBufferStream::inUse(v8);
    }

    (*(*v5 + 32))(v8);
    if (LODWORD(v8[0]) != 2)
    {
      PRM::Camera::PearlBufferStream::inUse(&v7);
    }

    if (!pixelBuffer)
    {
      PRM::Camera::PearlBufferStream::inUse(&v7);
    }

    if (!CVPixelBufferGetIOSurface(pixelBuffer))
    {
      PRM::Camera::PearlBufferStream::inUse(&v7);
    }

    v3 = v3 || IOSurfaceIsInUseForCategory() != 0;
    v2 += 8;
  }

  while (v2 != 32);
  return v3;
}

void *std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PRM::Camera::ChildSurfaceDescriptor>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::__construct_node<std::pair<std::string const,PRM::Camera::ChildSurfaceDescriptor>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_25EAA4CA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A47D78, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void OUTLINED_FUNCTION_23(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_24(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x30u);
}

void PRM::Camera::StreamReader::init(PRM::Camera::StreamReader *this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (*(a3 + 105))
      {
        PRMPBSReader::init(this, a2, a3);
        if (!*(this + 22))
        {
          *(this + 22) = *(a3 + 10);
          if (!*(this + 10))
          {
            *(this + 10) = ps_buffer_create_group_reader();
            v7 = *(a3 + 5);
            if (v7 > 8)
            {
              if (v7 == 9)
              {
                operator new();
              }

              if (v7 == 11)
              {
                operator new();
              }
            }

            else
            {
              if (v7 == 7)
              {
                operator new();
              }

              if (v7 == 8)
              {
                operator new();
              }
            }

            v8 = PRM::Camera::StreamReader::init(&v9);
            MEMORY[0x25F8C7C50](v3, v4);
            _Unwind_Resume(v8);
          }

          PRM::Camera::StreamReader::init(&v9);
        }

        PRM::Camera::StreamReader::init(&v9);
      }

      PRM::Camera::StreamReader::init(&v9);
    }

    PRM::Camera::StreamReader::init(&v9);
  }

  PRM::Camera::StreamReader::init(&v9);
}

uint64_t PRM::Camera::StreamReader::deinit(PSListenerThread **this, uint64_t a2)
{
  PRMPBSReader::deinit(this, a2);
  v3 = this[12];
  if (v3)
  {
    (*(*v3 + 56))(v3);
  }

  if (this[10])
  {
    ps_buffer_delete_read_buffer();
  }

  return PRMReader::setInitialized(this, 0);
}

void PRM::Camera::StreamReader::createReaderInstance(PSListenerThread **this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  if (*(a3 + 10))
  {
    if ((PRMReader::isInitialized(this) & 1) == 0 && !PRMReader::getRefCount(this))
    {
      PRM::Camera::StreamReader::init(this, a2, a3);
    }

    operator new();
  }

  PRMPBSReader::createReaderInstance(this, a2, a3);
}

void PRM::Camera::StreamReader::createReaderInstanceContext(PRM::Camera::StreamReader *this)
{
  PRMPBSReader::createReaderInstanceContext(this);

  JUMPOUT(0x25F8C88F0);
}

void PRM::Camera::StreamReader::deleteReaderInstanceContext(PRM::Camera::StreamReader *this, void *a2)
{
  PRMPBSReader::deleteReaderInstanceContext(this, a2);

  JUMPOUT(0x25F8C8C20);
}

uint64_t PRM::Camera::StreamReader::acquirePBSResources(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  if (a3)
  {
    v17 = -1;
    v12 = *(a1 + 80);
    if (a7)
    {
      buffers_with_frameid_with_reader_context = ps_buffer_get_read_buffers_with_frameid_with_reader_context();
      *a3 = buffers_with_frameid_with_reader_context;
      return buffers_with_frameid_with_reader_context != 0;
    }

    if (a9)
    {
      ps_buffer_get_read_buffers_and_sync_tags_since_last();
      return v17;
    }

    if (v12)
    {
      ps_buffer_get_read_buffers_and_sync_tags_lastn();
      return v17;
    }
  }

  else
  {
    PRM::Camera::StreamReader::acquirePBSResources(&v17);
  }

  v15 = PRM::Camera::StreamReader::acquirePBSResources(&v16);
  return PRM::Camera::StreamReader::relinquishPBSResources(v15);
}

uint64_t PRM::Camera::StreamReader::relinquishPBSResources(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    JUMPOUT(0x25F8C8E30);
  }

  return result;
}

uint64_t PRM::Camera::StreamReader::isResourceInUse(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    PRM::Camera::StreamReader::isResourceInUse(&v8);
    goto LABEL_7;
  }

  v2 = *(a1 + 96);
  if (!v2)
  {
LABEL_7:
    isResourceInUse = PRM::Camera::StreamReader::isResourceInUse(&v8);
    return PRM::Camera::StreamReader::_populateClientResTypePixelBuffer(isResourceInUse, v6, v7);
  }

  v3 = *(*v2 + 16);

  return v3();
}

uint64_t PRM::Camera::StreamReader::getIOSurfaceCount(PRM::Camera::StreamReader *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v6 = 0;
    if (!(*(*v1 + 32))(v1, &v6))
    {
      return v6;
    }
  }

  else
  {
    PRM::Camera::StreamReader::getIOSurfaceCount(&v6);
  }

  IOSurfaceCount = PRM::Camera::StreamReader::getIOSurfaceCount(&v5);
  return PRM::Camera::StreamReader::getIOSurfaces(IOSurfaceCount, v4);
}

uint64_t PRM::Camera::StreamReader::getIOSurfaces(PRM::Camera::StreamReader *this, __IOSurface **a2)
{
  v2 = *(this + 12);
  if (!v2)
  {
    PRM::Camera::StreamReader::getIOSurfaces(&v8);
    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    PRM::Camera::StreamReader::getIOSurfaces(&v8);
LABEL_7:
    IOSurfaces = PRM::Camera::StreamReader::getIOSurfaces(&v8);
    PRM::Camera::StreamReaderInstance::StreamReaderInstance(IOSurfaces, v5, v6, v7);
  }

  result = (*(*v2 + 24))(v2);
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

void PRM::Camera::StreamReaderInstance::StreamReaderInstance(PRM::Camera::StreamReaderInstance *this, PRM::Camera::StreamReader *a2, size_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  PRMPBSReaderInstance::PRMPBSReaderInstance(this, a2, a3);
  *v6 = &unk_2870B9ED0;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 136) = 127;
  if (a4 < 0x7F)
  {
    *(this + 35) = a4;
    operator new[]();
  }

  v14 = 0;
  v7 = asprintf(&v14, "%s: Assertion failed for %s", "StreamReaderInstance", "m_maxSupportedForwardedBufferCount > maxForwardingCount");
  v9 = __PSResourceManagerLogSharedInstance(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v16 = "StreamReaderInstance";
    v17 = 1024;
    v18 = 244;
    v19 = 2080;
    v20 = "StreamReaderInstance";
    v21 = 2080;
    v22 = "m_maxSupportedForwardedBufferCount > maxForwardingCount";
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
  }

  v10 = OSLogFlushBuffers();
  v12 = v10;
  if (v10)
  {
    v13 = __PSResourceManagerLogSharedInstance(v10, v11);
    PRM::Camera::StreamReaderInstance::StreamReaderInstance(v13, v12);
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  __break(1u);
}

void PRM::Camera::StreamReaderInstance::acquireResources(PRM::Camera::StreamReaderInstance *this, ps_resource *a2, void *a3, uint64_t a4, _BOOL8 a5, uint64_t a6)
{
  if (!*(this + 14))
  {
    PRM::Camera::StreamReaderInstance::acquireResources(&v16);
    goto LABEL_17;
  }

  if (!*(this + 6))
  {
LABEL_17:
    PRM::Camera::StreamReaderInstance::acquireResources(&v16);
    goto LABEL_18;
  }

  if (!*(this + 1))
  {
LABEL_18:
    PRM::Camera::StreamReaderInstance::acquireResources(&v16);
    goto LABEL_19;
  }

  v7 = *(this + 3);
  if (!v7)
  {
LABEL_19:
    v15 = PRM::Camera::StreamReaderInstance::acquireResources(&v16);
    PRM::Camera::StreamReaderInstance::updateForwardBufferList(v15);
    return;
  }

  v9 = a5;
  PRM::Camera::StreamReaderInstance::updateForwardBufferList(this);
  LODWORD(v16) = 0;
  if (PRM::Camera::StreamReaderInstance::getFreeForwardBufferListIndex(this, &v16))
  {
    if (MEMORY[0x25F8C9190](a2))
    {
      v13 = 0;
      do
      {
        MEMORY[0x25F8C94C0](a2, v13++, 0);
      }

      while (MEMORY[0x25F8C9190](a2) > v13);
    }
  }

  else
  {
    v14 = v16;
    *(*(this + 15) + 8 * v14) = PRMPBSReader::acquireResources(v7, a2, *(this + 14) + 8 * v16, *(this + 6), *(this + 1), a3, a4, *(this + 8), v9, a6, *(this + 4));
    if (v9 && *(this + 7) && *(*(this + 14) + 8 * v14))
    {
      *(this + 8) = ps_buffer_get_resource_seq_num();
    }

    *(this + 2) = a2;
  }
}

void PRM::Camera::StreamReaderInstance::updateForwardBufferList(uint64_t this)
{
  if (!*(this + 24))
  {
    PRM::Camera::StreamReaderInstance::updateForwardBufferList(&v7);
    goto LABEL_13;
  }

  if (!*(this + 112))
  {
LABEL_13:
    PRM::Camera::StreamReaderInstance::updateForwardBufferList(&v7);
    goto LABEL_14;
  }

  if (!*(this + 128))
  {
LABEL_14:
    PRM::Camera::StreamReaderInstance::updateForwardBufferList(&v7);
    goto LABEL_15;
  }

  if (!*(this + 120))
  {
LABEL_15:
    updated = PRM::Camera::StreamReaderInstance::updateForwardBufferList(&v7);
    PRM::Camera::StreamReaderInstance::getFreeForwardBufferListIndex(updated, v6);
    return;
  }

  if (*(this + 140))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(this + 112) + v2);
      if (v4)
      {
        if ((PRM::Camera::StreamReader::isResourceInUse(*(this + 24), v4) & 1) == 0)
        {
          PRMPBSReader::relinquishResources(*(this + 24), *(*(this + 128) + v2), *(this + 112) + v2, *(this + 8), *(*(this + 120) + v2), *(this + 32));
          *(*(this + 112) + v2) = 0;
          *(*(this + 128) + v2) = 0;
          *(*(this + 120) + v2) = 0;
          PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(this, v3);
        }
      }

      ++v3;
      v2 += 8;
    }

    while (v3 < *(this + 140));
  }
}

uint64_t PRM::Camera::StreamReaderInstance::getFreeForwardBufferListIndex(PRM::Camera::StreamReaderInstance *this, unsigned int *a2)
{
  _X2 = 0;
  _X3 = 0;
  v4 = 1 << *(this + 35);
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  while (1)
  {
    v9 = _X2 & -_X2;
    _ZF = v4 >= 0 && v9 == v4;
    if (_ZF)
    {
      break;
    }

    _X4 = v9 ^ _X2;
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X12] }

    _ZF = _X6 == _X2;
    _X2 = _X6;
    if (_ZF)
    {
      v14 = v9 ^ 1;
      if (v9 != 1)
      {
        v14 = 0;
        v15 = v9;
        v16 = 0;
        do
        {
          *(&v17 + 1) = v16;
          *&v17 = v15;
          v15 = v17 >> 1;
          v18 = v15 ^ 1 | (v16 >> 1);
          v16 >>= 1;
          ++v14;
        }

        while (v18);
      }

      *a2 = v14;
      if (v14 >= *(this + 35))
      {
        FreeForwardBufferListIndex = PRM::Camera::StreamReaderInstance::getFreeForwardBufferListIndex(&v22);
        return PRM::Camera::StreamReaderInstance::relinquishResources(FreeForwardBufferListIndex);
      }

      return v9 != v4 || v4 < 0;
    }
  }

  return v9 != v4 || v4 < 0;
}

void PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(PRM::Camera::StreamReaderInstance *this, unsigned int a2)
{
  if (*(this + 35) <= a2)
  {
    PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(&v14);
LABEL_10:
    PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(&v14);
    PRM::Camera::StreamReader::~StreamReader(v13);
    return;
  }

  _X2 = 0;
  _X3 = 0;
  if ((a2 & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << a2;
  }

  __asm { CASPAL          X2, X3, X2, X3, [X10] }

  if ((_X2 & v4) == 0)
  {
    goto LABEL_10;
  }

  do
  {
    _X4 = _X2 | v4;
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X10] }

    _ZF = _X6 == _X2;
    _X2 = _X6;
  }

  while (!_ZF);
}

void PRM::Camera::StreamReader::~StreamReader(void **this)
{
  PRMReader::~PRMReader(this);

  JUMPOUT(0x25F8C7C50);
}

void PRM::Camera::StreamReaderInstance::~StreamReaderInstance(PRMReaderInstance *this)
{
  PRMPBSReaderInstance::~PRMPBSReaderInstance(this);

  JUMPOUT(0x25F8C7C50);
}

PRM::Camera::StreamWriterInstance *PRM::Camera::StreamWriterInstance::StreamWriterInstance(PRMWriterInstance *this, PSResourceManagerOptions *a2, char *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  PRMWriterInstance::PRMWriterInstance(this, a2, a3, 0);
  *v4 = &unk_2870B9FD8;
  v4[43] = 0;
  if (a2)
  {
    operator new();
  }

  v11 = 0;
  v5 = asprintf(&v11, "%s: Assertion failed for %s", "StreamWriterInstance", "opts");
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v13 = "StreamWriterInstance";
    v14 = 1024;
    v15 = 18;
    v16 = 2080;
    v17 = "StreamWriterInstance";
    v18 = 2080;
    v19 = "opts";
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    __PSResourceManagerLogSharedInstance(v8, v9);
    PRM::Camera::StreamWriterInstance::StreamWriterInstance();
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void PRM::Camera::StreamWriterInstance::acquireResources(PRM::Camera::StreamWriterInstance *this, ps_resource *a2, void *a3)
{
  v5 = ps_buffer_get_write_buffers();
  if (v5)
  {
    *(this + 4) = v5;
    *(this + 5) = a2;
    *(this + 305) = 1;
    *(this + 43) = ps_buffer_get_resource_view_index();

    JUMPOUT(0x25F8C94C0);
  }

  v6 = PRM::Camera::StreamWriterInstance::acquireResources(&v7);
  PRM::Camera::StreamWriterInstance::relinquishResources(v6);
}

void PRM::Camera::StreamWriterInstance::relinquishResources(PRM::Camera::StreamWriterInstance *this)
{
  if (*(this + 305))
  {
    (*(**(this + 43) + 8))(*(this + 43), *(this + 5), *(this + 4));

    ps_buffer_release_write_buffers();
  }

  else
  {
    PRM::Camera::StreamWriterInstance::relinquishResources(&v3);
    PRM::Camera::StreamWriterInstance::~StreamWriterInstance(v1, v2);
  }
}

void PRM::Camera::StreamWriterInstance::~StreamWriterInstance(PRM::Camera::StreamWriterInstance *this, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2870B9FD8;
  v3 = *(this + 43);
  if (v3)
  {
    (*(*v3 + 56))(v3, a2);
  }

  *(this + 43) = 0;
  if (!*(this + 1))
  {
    v10 = 0;
    v5 = asprintf(&v10, "%s: Assertion failed for %s", "~StreamWriterInstance", "this->pbs_writer");
    v7 = __PSResourceManagerLogSharedInstance(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "~StreamWriterInstance";
      v13 = 1024;
      v14 = 144;
      v15 = 2080;
      v16 = "~StreamWriterInstance";
      v17 = 2080;
      v18 = "this->pbs_writer";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v8 = OSLogFlushBuffers();
    if (v8)
    {
      __PSResourceManagerLogSharedInstance(v8, v9);
      PRM::Camera::StreamWriterInstance::~StreamWriterInstance();
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }

  ps_buffer_delete_write_buffer();
  *(this + 1) = 0;
  PRMWriterInstance::deinitSharedActionTaker(this);
  PSActionTakerManager::flushRemovalRequests(*(this + 39));
  ps_gsm_remove_source(*(this + 2), *(this + 3));
  v4 = *(this + 39);
  if (v4)
  {
    PSActionTakerManager::~PSActionTakerManager(v4);
    MEMORY[0x25F8C7C50]();
  }

  PRMWriterInstance::~PRMWriterInstance(this);
}

{
  PRM::Camera::StreamWriterInstance::~StreamWriterInstance(this, a2);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EAA6724(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PRMFastPathHIDReader::init(PRMFastPathHIDReader *this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  PRMReader::init(this, a2, a3);

  return PRMReader::setInitialized(this, 1);
}

uint64_t PRMFastPathHIDReader::deinit(PRMFastPathHIDReader *this, uint64_t a2)
{
  PRMReader::deinit(this, a2);

  return PRMReader::setInitialized(this, 0);
}

void PRMFastPathHIDReader::createReaderInstance(PRMFastPathHIDReader *this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  if ((PRMReader::isInitialized(this) & 1) == 0 && !PRMReader::getRefCount(this))
  {
    (*(*this + 56))(this, a2, a3);
  }

  operator new();
}

uint64_t PRMFastPathHIDReader::deleteReaderInstance(PRMFastPathHIDReader *this, PRMReaderInstance *a2)
{
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  PRMReader::decrementRefCount(this);
  result = PRMReader::isInitialized(this);
  if (result)
  {
    result = PRMReader::getRefCount(this);
    if (!result)
    {
      v4 = *(*this + 64);

      return v4(this);
    }
  }

  return result;
}

PRMFastPathHIDReader *PRMFastPathHIDReader::createReaderInstanceContext(PRMFastPathHIDReader *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (PRMReader::isInitialized(this))
  {
    return this;
  }

  v10 = 0;
  Key = PRMReader::getKey(this);
  v4 = asprintf(&v10, "Cannot create reader instance context for inactive PRMReader for key: %s", Key);
  v6 = __PSResourceManagerLogSharedInstance(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = PRMReader::getKey(this);
    PRMFastPathHIDReader::createReaderInstanceContext(v7, buf, v6);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    PRMFastPathHIDReader::createReaderInstanceContext(v8, v9);
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

uint64_t PRMFastPathHIDReader::acquireResources(PRMFastPathHIDReader *this, ps_resource *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, IOFastPathHIDReader *a7)
{
  MEMORY[0x25F8C94C0](a2, 0, 1, a4, a5, a6);
  FastPathInterface = IOFastPathHIDReader::getFastPathInterface(a7);
  MEMORY[0x25F8C9470](a2, FastPathInterface);
  return 0;
}

void PRMFastPathHIDReader::~PRMFastPathHIDReader(void **this)
{
  PRMReader::~PRMReader(this);

  JUMPOUT(0x25F8C7C50);
}

void IOFastPathHIDReader::~IOFastPathHIDReader(CFTypeRef *this)
{
  if (this[4])
  {
    MEMORY[0x25F8C75A0]();
    if ((*this & 1) == 0)
    {
      CFRelease(this[4]);
    }
  }

  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void IOFastPathHIDReader::initWithIOService(IOFastPathHIDReader *this, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v11 = -536870212;
    v12 = __PSResourceManagerLogSharedInstance(this, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      v13 = "Invalid io_service";
      v14 = v12;
      v15 = 2;
LABEL_13:
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_ERROR, v13, &v16, v15);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v3 = a2;
  v4 = IOFastPathClientCreateWithType();
  *(this + 4) = v4;
  if (!v4)
  {
    v11 = -536870212;
    v12 = __PSResourceManagerLogSharedInstance(0, v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109120;
      v17 = v3;
      v13 = "Failed to create IOFastPathClient for io_service: 0x%x";
LABEL_12:
      v14 = v12;
      v15 = 8;
      goto LABEL_13;
    }

LABEL_14:

    v10 = 0;
    v9 = 0;
    v8 = *(this + 2);
    *(v8 + 4) = v11;
    goto LABEL_5;
  }

  v6 = MEMORY[0x25F8C75D0]();
  if (v6)
  {
    v11 = v6;
    v12 = __PSResourceManagerLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109120;
      v17 = v11;
      v13 = "Failed to open IOFastPathClient with err: 0x%x";
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v8 = *(this + 2);
  *(v8 + 4) = 0;
  v9 = *(this + 4);
  v10 = 1;
LABEL_5:
  *(v8 + 8) = v9;
  *(v8 + 1) = v10;
}

void IOFastPathHIDReader::initWithReplayClient(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = a2;
  if (!a2)
  {
    v8 = -536870212;
    v9 = __PSResourceManagerLogSharedInstance(a1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      v10 = "Invalid IOFastPathClientRef during replay";
      v11 = v9;
      v12 = 2;
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, v10, v13, v12);
    }

LABEL_10:

    v7 = 0;
    v6 = 0;
    v5 = *(a1 + 16);
    *(v5 + 4) = v8;
    *v5 = 7;
    goto LABEL_4;
  }

  v3 = MEMORY[0x25F8C75D0](a2);
  if (v3)
  {
    v8 = v3;
    v9 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = v8;
      v10 = "Failed to open IOFastPathClient with err: 0x%x";
      v11 = v9;
      v12 = 8;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = *(a1 + 16);
  *(v5 + 4) = 0;
  *v5 = 7;
  v6 = *(a1 + 32);
  v7 = 1;
LABEL_4:
  *(v5 + 8) = v6;
  *(v5 + 1) = v7;
}

void PRMFastPathHIDReaderInstance::PRMFastPathHIDReaderInstance(PRMFastPathHIDReaderInstance *this, PRMReader *a2, PSResourceManager *a3, PSResourceManagerOptions *a4)
{
  PRMReaderInstance::PRMReaderInstance(this, a2, *(a4 + 6));
  v7[7] = 0;
  *v7 = &unk_2870BA0A8;
  v7[8] = 0;
  (*(*a2 + 32))(a2);
  *(this + 5) = 0;
  *(this + 6) = 0;
  PSResourceManager::isLocalReplaySession(a3);
  PRMReaderInstance::getKey(this);
  std::allocate_shared[abi:ne200100]<IOFastPathHIDReader,std::allocator<IOFastPathHIDReader>,char const*,BOOL &,0>();
}

void sub_25EAA6FE4(_Unwind_Exception *a1)
{
  v4 = v3;

  v6 = *(v1 + 64);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  PRMReaderInstance::~PRMReaderInstance(v1);
  _Unwind_Resume(a1);
}

void PRMFastPathHIDReaderInstance::~PRMFastPathHIDReaderInstance(PRMReaderInstance *this)
{
  v18 = *MEMORY[0x277D85DE8];
  *this = &unk_2870BA0A8;
  if (*(this + 5))
  {
    v11 = 0;
    Key = PRMReaderInstance::getKey(this);
    v4 = asprintf(&v11, "PRM Fast Path Reader is being dealloced before calling relinquish for key %s", Key);
    v6 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = PRMReaderInstance::getKey(this);
      *buf = 136315650;
      v13 = "~PRMFastPathHIDReaderInstance";
      v14 = 1024;
      v15 = 117;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_FAULT, "%s:%d PRM Fast Path Reader is being dealloced before calling relinquish for key %s", buf, 0x1Cu);
    }

    v8 = OSLogFlushBuffers();
    if (v8)
    {
      v10 = __PSResourceManagerLogSharedInstance(v8, v9);
      PRMFastPathHIDReaderInstance::~PRMFastPathHIDReaderInstance(v10);
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }

  (*(**(this + 3) + 40))(*(this + 3), *(this + 4));
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PRMReaderInstance::~PRMReaderInstance(this);
}

{
  PRMFastPathHIDReaderInstance::~PRMFastPathHIDReaderInstance(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EAA71D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PRMFastPathHIDReaderInstance::acquireResources(PRMReaderInstance *this, ps_resource *a2, unint64_t a3, BOOL a4, uint64_t a5, void *a6)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 5))
  {
    v16 = 0;
    Key = PRMReaderInstance::getKey(this);
    v10 = asprintf(&v16, "Double acquire! Relinquish before acquiring again %s.", Key);
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = PRMReaderInstance::getKey(this);
      PRMFastPathHIDReaderInstance::acquireResources(v13, buf, v12);
    }

    v14 = OSLogFlushBuffers();
    if (v14)
    {
      PRMFastPathHIDReaderInstance::acquireResources(v14, v15);
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    __break(1u);
  }

  else
  {
    result = PRMFastPathHIDReader::acquireResources(*(this + 3), a2, *(this + 1), *(this + 6), a5, a6, *(this + 4));
    if (!result)
    {
      *(this + 5) = 1;
    }

    *(this + 2) = a2;
  }

  return result;
}

void std::__shared_ptr_emplace<ps_resource_fastpath_reader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870BA0F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C7C50);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<IOFastPathHIDReader>::__shared_ptr_emplace[abi:ne200100]<char const*,BOOL &,std::allocator<IOFastPathHIDReader>,0>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2870BA148;
  v3 = *a2;
  *(a1 + 24) = *a3;
  *(a1 + 32) = v3;
  operator new();
}

void std::__shared_ptr_emplace<IOFastPathHIDReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870BA148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C7C50);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t PRMIOSurfaceSharedEventWaiter::init(void **this, char *a2, PRMPBSAneReader *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(buf, a2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = *buf;
  this[2] = *&buf[16];
  this[3] = a3;
  this[4] = PRMPBSAneReader::getSharedContext(a3);
  std::string::basic_string[abi:ne200100]<0>(&v34, a2);
  std::string::append(&v34, "-event");
  v6 = ps_lookup_iosurface_shared_event();
  this[9] = v6;
  if (!v6)
  {
    v33 = 0;
    v18 = &v34;
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v34.__r_.__value_.__r.__words[0];
    }

    v19 = asprintf(&v33, "Failed to create ioshared_event for %s", v18);
    v21 = __PSResourceManagerLogSharedInstance(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v22 = &v34;
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v34.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "init";
      *&buf[12] = 1024;
      *&buf[14] = 40;
      *&buf[18] = 2080;
      *&buf[20] = v22;
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_FAULT, "%s:%d Failed to create ioshared_event for %s", buf, 0x1Cu);
    }

    v23 = OSLogFlushBuffers();
    if (v23)
    {
      v31 = __PSResourceManagerLogSharedInstance(v23, v24);
      PRMIOSurfaceSharedEventWaiter::init(v31);
      goto LABEL_24;
    }

LABEL_21:
    usleep(0x1E8480u);
LABEL_24:
    result = abort_with_reason();
    __break(1u);
    return result;
  }

  ports_iosurface_shared_event = ps_get_ports_iosurface_shared_event();
  v8 = [objc_alloc(MEMORY[0x277CD2938]) initWithMachPort:*ports_iosurface_shared_event];
  this[5] = v8;
  if (!v8)
  {
    v33 = 0;
    v25 = asprintf(&v33, "Failed to create IOSurfaceSharedEvent for %s mach_port %d", a2, *ports_iosurface_shared_event);
    v27 = __PSResourceManagerLogSharedInstance(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v28 = *ports_iosurface_shared_event;
      *buf = 136315906;
      *&buf[4] = "init";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      *&buf[18] = 2080;
      *&buf[20] = a2;
      v36 = 1024;
      v37 = v28;
      _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_FAULT, "%s:%d Failed to create IOSurfaceSharedEvent for %s mach_port %d", buf, 0x22u);
    }

    v29 = OSLogFlushBuffers();
    if (v29)
    {
      v32 = __PSResourceManagerLogSharedInstance(v29, v30);
      PRMIOSurfaceSharedEventWaiter::init(v32);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v10 = *(this[4] + 2);
  this[6] = v10;
  this[7] = v10;
  *(this + 16) = 0;
  this[10] = -1;
  v11 = __PSResourceManagerLogSharedInstance(v8, v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = this[4];
    v13 = v12[2];
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    LODWORD(v12) = *(v12 + 6);
    *buf = 136316418;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = v14;
    *&buf[18] = 2048;
    *&buf[20] = v13;
    v36 = 1024;
    v37 = v15;
    v38 = 1024;
    v39 = v16;
    v40 = 1024;
    v41 = v12;
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_INFO, "PRMIOSurfaceSharedEventWaiter channel:%s, mach_port:%d, start_signal_value:%llu, number_of_surfaces_in_buffer_set:%d, number_of_buffer_set:%d, metadata_surface_index:%d", buf, 0x2Eu);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_25EAA7D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PRMIOSurfaceSharedEventWaiter::~PRMIOSurfaceSharedEventWaiter(PRMIOSurfaceSharedEventWaiter *this, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 9))
  {
    ps_destroy_iosurface_shared_event();
  }

  if (*(this + 3))
  {
    *(this + 3) = 0;
  }

  if (*(this + 4))
  {
    *(this + 4) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = __PSResourceManagerLogSharedInstance(v3, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = this;
    if (*(this + 23) < 0)
    {
      v5 = *this;
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_INFO, "PRMIOSurfaceSharedEventWaiter delete channel:%s", &v6, 0xCu);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_25EAA7EB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PRMIOSurfaceSharedEventWaiter::_waitForNewResourceAndGetFrameID(id *this, unint64_t *a2, uint64_t a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = this[5];
  v9 = [v8 waitUntilSignaledValue:this[7] timeoutMS:a3];
  if (v9)
  {
    if (a4)
    {
      v11 = [v8 signaledValue];
    }

    else
    {
      v11 = this[7];
    }

    this[6] = v11;
    this[7] = v11 + 1;
    v16 = this[3];
    v17 = (&v11[-*(this[4] + 2)] % *(this[4] + 2) + *(this[4] + 2)) % *(this[4] + 2);
    *(this + 16) = v17;
    FrameIDForResourceIndex = PRMPBSAneReader::getFrameIDForResourceIndex(v16, v17);
    v15 = 0;
    *a2 = FrameIDForResourceIndex;
    this[10] = FrameIDForResourceIndex;
  }

  else
  {
    v12 = __PSResourceManagerLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = this;
      if (*(this + 23) < 0)
      {
        v13 = *this;
      }

      v14 = this[7];
      v20 = 136315394;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "PRMIOSurfaceSharedEventWaiter channel:%s wait timed out; SignalValue:%llu", &v20, 0x16u);
    }

    *a2 = -1;
    v15 = 0xFFFFFFFFLL;
  }

  return v15;
}

uint64_t PRMIOSurfaceSharedEventWaiter::waitForNewResourceWithFrameID(PRMIOSurfaceSharedEventWaiter *this, PRMIOSurfaceSharedEventWaiter *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(this + 10);
  if (v3 == a2)
  {
    return 0;
  }

  v6 = this;
  if (v3 > a2 && (v3 + 1) != 0)
  {
    if (*(*(this + 4) + 8))
    {
      v17 = 0;
      do
      {
        this = PRMPBSAneReader::getFrameIDForResourceIndex(*(v6 + 3), v17);
        if (this == a2)
        {
          return 0;
        }
      }

      while (++v17 < *(*(v6 + 4) + 8));
    }

    v13 = __PSResourceManagerLogSharedInstance(this, a2);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v18 = v6;
    if (*(v6 + 23) < 0)
    {
      v18 = *v6;
    }

    v19 = *(v6 + 10);
    v20 = *(*(v6 + 4) + 8);
    *buf = 136315906;
    v23 = v18;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v19;
    v28 = 1024;
    v29 = v20;
    v16 = "PRMIOSurfaceSharedEventWaiter channel:%s error buffers wrapped around; Reader Frame ID = %llu, Writer Last Frame ID %llu, fifo buffer depth %d ";
    goto LABEL_30;
  }

  v21 = 0;
  do
  {
    result = PRMIOSurfaceSharedEventWaiter::_waitForNewResourceAndGetFrameID(v6, &v21, a3, 0);
    v10 = v21;
  }

  while (v21 < a2 && result == 0);
  if (v21 - a2 > *(*(v6 + 4) + 8) && result == 0)
  {
    v13 = __PSResourceManagerLogSharedInstance(result, v9);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_31:

      return 0xFFFFFFFFLL;
    }

    v14 = v6;
    if (*(v6 + 23) < 0)
    {
      v14 = *v6;
    }

    v15 = *(*(v6 + 4) + 8);
    *buf = 136315906;
    v23 = v14;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v10;
    v28 = 1024;
    v29 = v15;
    v16 = "PRMIOSurfaceSharedEventWaiter channel:%s error buffers wrapped around; Reader Frame ID = %llu, Writer Frame ID %llu, fifo buffer depth %d ";
LABEL_30:
    _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, v16, buf, 0x26u);
    goto LABEL_31;
  }

  return result;
}

void PRMPBSAneReader::init(PRMPBSAneReader *this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  v95 = *MEMORY[0x277D85DE8];
  PRMPBSReader::init(this, a2, a3);
  *(this + 80) = *(a3 + 5) == 10;
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    Key = PRMReader::getKey(this);
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "Initializing PRMPBSAneReader for %s (first time)", buf, 0xCu);
  }

  if ((*(this + 80) & 1) == 0)
  {
    v80.__r_.__value_.__r.__words[0] = 0;
    v28 = PRMReader::getKey(this);
    v29 = asprintf(&v80.__r_.__value_.__l.__data_, "PRM ANE Reader (key %s) expects ANE chained stream!", v28);
    v31 = __PSResourceManagerLogSharedInstance(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      v32 = PRMReader::getKey(this);
      PRMPBSAneReader::init(v32, buf, v31);
    }

    v33 = OSLogFlushBuffers();
    if (v33)
    {
      PRMPBSAneReader::init(v33, v34);
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    goto LABEL_67;
  }

  *(this + 33) = 0;
  *(this + 128) = 0;
  v8 = PRMReader::getKey(this);
  std::string::basic_string[abi:ne200100]<0>(&v80, v8);
  std::string::append(&v80, "-config");
  serial_data_reader = ps_buffer_create_serial_data_reader();
  *(this + 11) = serial_data_reader;
  if (!serial_data_reader)
  {
    v79.__r_.__value_.__r.__words[0] = 0;
    v35 = &v80;
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v80.__r_.__value_.__r.__words[0];
    }

    v36 = asprintf(&v79.__r_.__value_.__l.__data_, "Failed to create serial data reader for %s", v35);
    v38 = __PSResourceManagerLogSharedInstance(v36, v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      v39 = &v80;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v39 = v80.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      Key = "init";
      v83 = 1024;
      v84 = 53;
      v85 = 2080;
      v86 = v39;
      _os_log_impl(&dword_25EA3A000, v38, OS_LOG_TYPE_FAULT, "%s:%d Failed to create serial data reader for %s", buf, 0x1Cu);
    }

    v40 = OSLogFlushBuffers();
    if (v40)
    {
      __PSResourceManagerLogSharedInstance(v40, v41);
      objc_claimAutoreleasedReturnValue();
      PRMPBSAneReader::init();
      goto LABEL_63;
    }

LABEL_44:
    usleep(0x1E8480u);
LABEL_63:
    abort_with_reason();
    goto LABEL_67;
  }

  buffer = ps_buffer_get_serial_data_read_buffer();
  *(this + 14) = buffer;
  if (!buffer)
  {
    v79.__r_.__value_.__r.__words[0] = 0;
    v42 = &v80;
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = v80.__r_.__value_.__r.__words[0];
    }

    v43 = asprintf(&v79.__r_.__value_.__l.__data_, "Failed to get serial data reader buffer for %s", v42);
    v45 = __PSResourceManagerLogSharedInstance(v43, v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      v46 = &v80;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = v80.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      Key = "init";
      v83 = 1024;
      v84 = 58;
      v85 = 2080;
      v86 = v46;
      _os_log_impl(&dword_25EA3A000, v45, OS_LOG_TYPE_FAULT, "%s:%d Failed to get serial data reader buffer for %s", buf, 0x1Cu);
    }

    v47 = OSLogFlushBuffers();
    if (v47)
    {
      __PSResourceManagerLogSharedInstance(v47, v48);
      objc_claimAutoreleasedReturnValue();
      PRMPBSAneReader::init();
      goto LABEL_63;
    }

    goto LABEL_44;
  }

  PRMReader::getKey(this);
  group_reader = ps_buffer_create_group_reader();
  *(this + 12) = group_reader;
  if (!group_reader)
  {
    v79.__r_.__value_.__r.__words[0] = 0;
    v49 = PRMReader::getKey(this);
    v50 = asprintf(&v79.__r_.__value_.__l.__data_, "Failed to get create group reader for %s", v49);
    v52 = __PSResourceManagerLogSharedInstance(v50, v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      v53 = PRMReader::getKey(this);
      *buf = 136315650;
      Key = "init";
      v83 = 1024;
      v84 = 63;
      v85 = 2080;
      v86 = v53;
      _os_log_impl(&dword_25EA3A000, v52, OS_LOG_TYPE_FAULT, "%s:%d Failed to get create group reader for %s", buf, 0x1Cu);
    }

    v54 = OSLogFlushBuffers();
    if (v54)
    {
      __PSResourceManagerLogSharedInstance(v54, v55);
      objc_claimAutoreleasedReturnValue();
      PRMPBSAneReader::init();
      goto LABEL_63;
    }

    goto LABEL_44;
  }

  v12 = MEMORY[0x25F8C8C80]();
  *(this + 13) = v12;
  if (!v12)
  {
    v79.__r_.__value_.__r.__words[0] = 0;
    v56 = PRMReader::getKey(this);
    v57 = asprintf(&v79.__r_.__value_.__l.__data_, "Failed to all lines of group reader %s", v56);
    v59 = __PSResourceManagerLogSharedInstance(v57, v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      v60 = PRMReader::getKey(this);
      *buf = 136315650;
      Key = "init";
      v83 = 1024;
      v84 = 68;
      v85 = 2080;
      v86 = v60;
      _os_log_impl(&dword_25EA3A000, v59, OS_LOG_TYPE_FAULT, "%s:%d Failed to all lines of group reader %s", buf, 0x1Cu);
    }

    v61 = OSLogFlushBuffers();
    if (v61)
    {
      __PSResourceManagerLogSharedInstance(v61, v62);
      objc_claimAutoreleasedReturnValue();
      PRMPBSAneReader::init();
      goto LABEL_63;
    }

    goto LABEL_44;
  }

  v13 = PRMReader::getKey(this);
  std::string::basic_string[abi:ne200100]<0>(&v79, v13);
  std::string::append(&v79, "-event");
  v14 = ps_lookup_iosurface_shared_event();
  *(this + 17) = v14;
  if (!v14)
  {
    v78 = 0;
    v63 = &v79;
    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v79.__r_.__value_.__r.__words[0];
    }

    v64 = asprintf(&v78, "Failed to create _iosharedEvent for %s", v63);
    v66 = __PSResourceManagerLogSharedInstance(v64, v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
    {
      v67 = &v79;
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v67 = v79.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      Key = "init";
      v83 = 1024;
      v84 = 75;
      v85 = 2080;
      v86 = v67;
      _os_log_impl(&dword_25EA3A000, v66, OS_LOG_TYPE_FAULT, "%s:%d Failed to create _iosharedEvent for %s", buf, 0x1Cu);
    }

    v68 = OSLogFlushBuffers();
    if (v68)
    {
      __PSResourceManagerLogSharedInstance(v68, v69);
      objc_claimAutoreleasedReturnValue();
      PRMPBSAneReader::init();
      goto LABEL_60;
    }

LABEL_52:
    usleep(0x1E8480u);
LABEL_60:
    abort_with_reason();
LABEL_67:
    __break(1u);
    return;
  }

  ports_iosurface_shared_event = ps_get_ports_iosurface_shared_event();
  v16 = [objc_alloc(MEMORY[0x277CD2938]) initWithMachPort:*ports_iosurface_shared_event];
  *(this + 15) = v16;
  if (!v16)
  {
    v78 = 0;
    v70 = PRMReader::getKey(this);
    v71 = asprintf(&v78, "Failed to create IOSurfaceSharedEvent for %s mach_port %d", v70, *ports_iosurface_shared_event);
    v73 = __PSResourceManagerLogSharedInstance(v71, v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      v74 = PRMReader::getKey(this);
      v75 = *ports_iosurface_shared_event;
      *buf = 136315906;
      Key = "init";
      v83 = 1024;
      v84 = 81;
      v85 = 2080;
      v86 = v74;
      v87 = 1024;
      v88 = v75;
      _os_log_impl(&dword_25EA3A000, v73, OS_LOG_TYPE_FAULT, "%s:%d Failed to create IOSurfaceSharedEvent for %s mach_port %d", buf, 0x22u);
    }

    v76 = OSLogFlushBuffers();
    if (v76)
    {
      __PSResourceManagerLogSharedInstance(v76, v77);
      objc_claimAutoreleasedReturnValue();
      PRMPBSAneReader::init();
      goto LABEL_60;
    }

    goto LABEL_52;
  }

  v17 = v16;
  v19 = __PSResourceManagerLogSharedInstance(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PRMReader::getKey(this);
    v21 = *(this + 14);
    v22 = *(v21 + 16);
    v24 = *v21;
    v23 = *(v21 + 4);
    v25 = *(v21 + 8);
    v26 = *(v21 + 24);
    v27 = [v17 signaledValue];
    *buf = 136316674;
    Key = v20;
    v83 = 1024;
    v84 = v24;
    v85 = 2048;
    v86 = v22;
    v87 = 1024;
    v88 = v23;
    v89 = 1024;
    v90 = v25;
    v91 = 1024;
    v92 = v26;
    v93 = 2048;
    v94 = v27;
    _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEFAULT, "PRMPBSAneReader channel:%s, mach_port:%d, start_signal_value:%llu, number_of_surfaces_in_buffer_set:%d, number_of_buffer_set:%d, metadata_surface_index:%d, signaledValue:%llu", buf, 0x38u);
  }

  PRMReader::setInitialized(this, 1);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }
}

void sub_25EAA8B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PRMPBSAneReader::deinit(PSListenerThread **this, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  PRMPBSReader::deinit(this, a2);
  if (*(this + 80) == 1)
  {
    if (this[17])
    {
      ps_destroy_iosurface_shared_event();
    }

    if (this[11])
    {
      ps_buffer_destroy_serial_data_reader();
    }

    if (this[12])
    {
      ps_buffer_delete_read_buffer();
    }

    v4 = this[15];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = __PSResourceManagerLogSharedInstance(v4, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      Key = PRMReader::getKey(this);
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_INFO, "PRMPBSAneReader delete channel:%s", &v7, 0xCu);
    }
  }

  return PRMReader::setInitialized(this, 0);
}

unint64_t PRMPBSAneReader::acquirePBSResources(PRMPBSAneReader *a1, int a2, uint64_t *a3, int a4, unint64_t a5, unint64_t a6, int a7)
{
  if (*(a1 + 80) != 1)
  {
    return -1;
  }

  if (a7)
  {
    v8 = PRMPBSAneReader::_acquireResourcesWithFrameID(a1, a6);
    *a3 = v8;
    return v8 != 0;
  }

  else
  {

    return PRMPBSAneReader::_acquireResources(a1, a3, a5);
  }
}

uint64_t PRMPBSAneReader::_acquireResourcesWithFrameID(PRMPBSAneReader *this, unint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v4 = PRMPBSAneReader::_mapFrameIDtoResourceIndex(this, a2, &v27);
  if (v4)
  {
    v6 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Key = PRMReader::getKey(this);
      *buf = 136315394;
      v29 = Key;
      v30 = 2048;
      *v31 = a2;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "PRMPBSAneReader channel:%s frameId %llu not found; Failed to acquire resource !", buf, 0x16u);
    }

    if (*(*(this + 14) + 8))
    {
      v8 = 0;
      do
      {
        FrameIDForResourceIndex = PRMPBSAneReader::getFrameIDForResourceIndex(this, v8);
        v11 = __PSResourceManagerLogSharedInstance(FrameIDForResourceIndex, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = PRMReader::getKey(this);
          *buf = 136315650;
          v29 = v12;
          v30 = 1024;
          *v31 = v8;
          *&v31[4] = 2048;
          *&v31[6] = FrameIDForResourceIndex;
          _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "PRMPBSAneReader channel:%s :: Dump Buffer :: Buffer[%d] = %llu", buf, 0x1Cu);
        }

        ++v8;
      }

      while (v8 < *(*(this + 14) + 8));
    }

    return 0;
  }

  v13 = v27;
  v14 = *(*(this + 13) + 8 * v27);
  v15 = PRMPBSAneReader::getFrameIDForResourceIndex(this, v27);
  if (v15 != a2)
  {
    v17 = v15;
    v18 = __PSResourceManagerLogSharedInstance(v15, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = PRMReader::getKey(this);
      v20 = *(this + 33);
      *buf = 136316162;
      v29 = v19;
      v30 = 2048;
      *v31 = a2;
      *&v31[8] = 2048;
      *&v31[10] = v17;
      v32 = 1024;
      v33 = v20;
      v34 = 1024;
      v35 = v13;
      _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_ERROR, "PRMPBSAneReader channel:%s frameId mismatch; Expected %llu --> Received %llu; Did FIFO buffer wrapped around/FrameID Repeated/Skipped ? Mapping Offset = %d, Selected Reource Index = %d", buf, 0x2Cu);
    }

    if (*(*(this + 14) + 8))
    {
      v21 = 0;
      do
      {
        v22 = PRMPBSAneReader::getFrameIDForResourceIndex(this, v21);
        v24 = __PSResourceManagerLogSharedInstance(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = PRMReader::getKey(this);
          *buf = 136315650;
          v29 = v25;
          v30 = 1024;
          *v31 = v21;
          *&v31[4] = 2048;
          *&v31[6] = v22;
          _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "PRMPBSAneReader channel:%s :: Dump Buffer :: Buffer[%d] = %llu", buf, 0x1Cu);
        }

        ++v21;
      }

      while (v21 < *(*(this + 14) + 8));
    }

    *buf = 0;
    if (!PRMPBSAneReader::_searchForFrameID(this, a2, buf))
    {
      v14 = *(*(this + 13) + 8 * *buf);
      *(this + 128) = 0;
      return v14;
    }

    return 0;
  }

  return v14;
}

unint64_t PRMPBSAneReader::_acquireResources(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = *(a1 + 120);
  v7 = [v6 signaledValue];
  v8 = *(a1 + 112);
  v9 = *(v8 + 8);
  if (v9 < a3)
  {
    a3 = *(v8 + 8);
  }

  if (a3)
  {
    v10 = ((v7 - *(v8 + 16)) % v9 + v9) % v9;
    v11 = a3;
    do
    {
      *a2 = *(*(a1 + 104) + 8 * v10);
      v12 = v10 - 1;
      if (v10 <= 0)
      {
        v12 += *(*(a1 + 112) + 8);
      }

      ++a2;
      v10 = v12;
      --v11;
    }

    while (v11);
  }

  return a3;
}

uint64_t PRMPBSAneReader::_populateClientResTypeAneBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 112);
  v9 = *(v8 + 4);
  memset(v17, 0, sizeof(v17));
  if (v9)
  {
    v10 = (a2 + 8);
    v11 = v17;
    v12 = v9;
    do
    {
      v13 = *v10;
      v10 += 4;
      *v11++ = v13;
      --v12;
    }

    while (v12);
  }

  v14 = *(IOSurfaceGetBaseAddress(*(a2 + 32 * *(v8 + 24) + 8)) + 1);
  FrameIDForResource = PRMPBSAneReader::_getFrameIDForResource(a1, a2);
  MEMORY[0x25F8C9570](a3, a4, v14);
  MEMORY[0x25F8C9480](a3, a4, FrameIDForResource);
  MEMORY[0x25F8C94C0](a3, a4, 1);
  return MEMORY[0x25F8C93C0](a3, a4, v17, v9);
}

uint64_t PRMPBSAneReader::_getFrameIDForResource(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32 * *(*(a1 + 112) + 24) + 8);
  BaseAddress = IOSurfaceGetBaseAddress(v2);
  AllocSize = IOSurfaceGetAllocSize(v2);
  result = -1;
  if (BaseAddress && AllocSize >= 0x258 && *BaseAddress == 256)
  {
    v6 = BaseAddress[4];
    if (v6)
    {
      v7 = (BaseAddress + 8);
      while (1)
      {
        v8 = *v7;
        v7 += 6;
        result = v8;
        if (v8)
        {
          break;
        }

        if (!--v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PRMPBSAneReader::_searchForFrameID(id *this, unint64_t a2, unsigned int *a3)
{
  *a3 = 0;
  v6 = this[15];
  v7 = (([v6 signaledValue] - *(this[14] + 2)) % *(this[14] + 2) + *(this[14] + 2)) % *(this[14] + 2);
  FrameIDForResourceIndex = PRMPBSAneReader::getFrameIDForResourceIndex(this, v7);
  v9 = *(this[14] + 2);
  v10 = v9 - 1;
  if (v9 == 1)
  {
LABEL_6:
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    while (FrameIDForResourceIndex != a2)
    {
      v11 = *(this[14] + 2);
      v12 = v7 + v11 - 1;
      if (FrameIDForResourceIndex <= a2)
      {
        v12 = v7 + 1;
      }

      v7 = v12 % v11;
      FrameIDForResourceIndex = PRMPBSAneReader::getFrameIDForResourceIndex(this, v12 % v11);
      if (!--v10)
      {
        goto LABEL_6;
      }
    }

    v13 = 0;
    *a3 = v7;
  }

  return v13;
}

uint64_t PRMPBSAneReader::getFrameIDForResourceIndex(PRMPBSAneReader *this, unsigned int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(*(*(this + 13) + 8 * a2) + 32 * *(*(this + 14) + 24) + 8);
  BaseAddress = IOSurfaceGetBaseAddress(v4);
  AllocSize = IOSurfaceGetAllocSize(v4);
  v7 = -1;
  if (BaseAddress && AllocSize >= 0x258 && *BaseAddress == 256)
  {
    v8 = BaseAddress[4];
    if (v8)
    {
      v9 = (BaseAddress + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 6;
        v7 = v10;
        if (v10)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v7 = 0;
    }
  }

  v11 = IOSurfaceGetBaseAddress(v4);
  v12 = IOSurfaceGetAllocSize(v4);
  v14 = -1;
  if (!v11 || v12 < 0x258 || *v11 != 256 || (v14 = v11[1], v14 != a2))
  {
    v15 = __PSResourceManagerLogSharedInstance(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      Key = PRMReader::getKey(this);
      v19 = 1024;
      v20 = a2;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v7;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_ERROR, "PRMPBSAneReader channel:%s ouput set id mismatch; Expected %u Received %llu; FrameID %llu", &v17, 0x26u);
    }

    return -1;
  }

  return v7;
}

uint64_t PRMPBSAneReader::_mapFrameIDtoResourceIndex(PRMPBSAneReader *this, unint64_t a2, unsigned int *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (*(this + 128))
  {
    result = 0;
    v7 = *(*(this + 14) + 8);
    v8 = (a2 % v7 + v7 + *(this + 33)) % v7;
  }

  else
  {
    v9 = PRMPBSAneReader::_searchForFrameID(this, a2, &v17);
    if (v9)
    {
      v11 = __PSResourceManagerLogSharedInstance(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        Key = PRMReader::getKey(this);
        *buf = 136315394;
        v19 = Key;
        v20 = 2048;
        v21 = a2;
        _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "PRMPBSAneReader channel:%s did not find frame ID in FIFO Buffers; Check if ANE produced frame_id %llu", buf, 0x16u);
      }

      result = 0xFFFFFFFFLL;
      v8 = v17;
    }

    else
    {
      v8 = v17;
      v13 = *(*(this + 14) + 8);
      *(this + 33) = v17 + a2 / v13 * v13 - a2;
      *(this + 128) = 1;
      v14 = __PSResourceManagerLogSharedInstance(v9, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = PRMReader::getKey(this);
        v16 = *(this + 33);
        *buf = 136315650;
        v19 = v15;
        v20 = 2048;
        v21 = a2;
        v22 = 1024;
        v23 = v16;
        _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_INFO, "PRMPBSAneReader channel:%s Establised frame_id %llu to index relation. Mapping Offset = %d", buf, 0x1Cu);
      }

      result = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t PRMPBSAneReader::getIOSurfaces(PRMPBSAneReader *this, __IOSurface **a2)
{
  v4 = *(*(this + 14) + 4);
  buffer_count = ps_buffer_get_total_read_buffer_count();
  result = MEMORY[0x25F8C8C80](*(this + 12));
  if (buffer_count)
  {
    v7 = 0;
    for (i = 0; i != buffer_count; ++i)
    {
      if (v4)
      {
        v9 = v4;
        v10 = 8;
        v11 = v7;
        do
        {
          a2[v11++] = *(*(result + 8 * i) + v10);
          v10 += 32;
          --v9;
        }

        while (v9);
      }

      v7 += v4;
    }
  }

  return result;
}

void PRMPBSAneReader::~PRMPBSAneReader(void **this)
{
  PRMReader::~PRMReader(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t PRMPBSCameraReader::init(PRMPBSCameraReader *this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  *&v33[5] = *MEMORY[0x277D85DE8];
  PRMPBSReader::init(this, a2, a3);
  *(this + 80) = *(a3 + 105);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    *buf = 136315138;
    Key = PRMReader::getKey(this);
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "Initializing PRMReader for %s (first time)", buf, 0xCu);
  }

  if ((*(this + 80) & 1) == 0)
  {
    PRMPBSCameraReader::init(buf, this);
  }

  *(this + 11) = 0;
  v10 = *(a3 + 20);
  v11 = *(this + 4);
  if (!v11)
  {
    v12 = "cfdata metadata";
    goto LABEL_8;
  }

  if (v11 == 1)
  {
    v12 = "iosurface metadata";
LABEL_8:
    v13 = __PSResourceManagerLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = PRMReader::getKey(this);
      *buf = 136315650;
      Key = v14;
      v30 = 1024;
      v31 = v10;
      v32 = 2080;
      *v33 = v12;
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEBUG, "Creating a camera stream reader for key %s with forwardBuffersCount=%d and metadata option: %s", buf, 0x1Cu);
    }

    PRMReader::getKey(this);
    *(this + 11) = ps_buffer_create_camera_stream_reader();
    return PRMReader::setInitialized(this, 1);
  }

  v27 = 0;
  v16 = PRMReader::getKey(this);
  v17 = asprintf(&v27, "Unsupported metadata type found: %d for key: %s", v11, v16);
  v19 = __PSResourceManagerLogSharedInstance(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    v20 = *(this + 4);
    v21 = PRMReader::getKey(this);
    *buf = 136315906;
    Key = "init";
    v30 = 1024;
    v31 = 48;
    v32 = 1024;
    v33[0] = v20;
    LOWORD(v33[1]) = 2080;
    *(&v33[1] + 2) = v21;
    _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type found: %d for key: %s", buf, 0x22u);
  }

  v22 = OSLogFlushBuffers();
  if (v22)
  {
    v24 = v22;
    v25 = __PSResourceManagerLogSharedInstance(v22, v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      Key = "init";
      v30 = 1024;
      v31 = v24;
      _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v26 = abort_with_reason();
  return PRMPBSCameraReader::deinit(v26);
}

uint64_t PRMPBSCameraReader::deinit(PSListenerThread **this, uint64_t a2)
{
  PRMPBSReader::deinit(this, a2);
  if (this[11])
  {
    ps_buffer_delete_camera_stream_reader();
    this[11] = 0;
  }

  return PRMReader::setInitialized(this, 0);
}

uint64_t PRMPBSCameraReader::createReaderInstanceContext(PRMPBSCameraReader *this)
{
  PRMPBSReader::createReaderInstanceContext(this);
  v2 = *(this + 11);

  return MEMORY[0x28219F098](v2);
}

uint64_t PRMPBSCameraReader::deleteReaderInstanceContext(PRMPBSCameraReader *this, void *a2)
{
  PRMPBSReader::deleteReaderInstanceContext(this, a2);
  v4 = *(this + 11);

  return MEMORY[0x28219F0A0](v4, a2);
}

uint64_t PRMPBSCameraReader::acquirePBSResources(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v15[0] = -1;
  v15[1] = a6;
  v12 = *(a1 + 88);
  if (a7)
  {
    buffers_with_frame_id_with_reader_context = ps_buffer_camera_stream_reader_read_buffers_with_frame_id_with_reader_context();
    *a3 = buffers_with_frame_id_with_reader_context;
    v15[0] = buffers_with_frame_id_with_reader_context != 0;
  }

  else if (a9)
  {
    MEMORY[0x25F8C89F0](v12, a5, a8, 0, a3, a4, v15, a11);
  }

  else
  {
    MEMORY[0x25F8C89E0](v12, a5, 0, a3, a4, v15, a11, a8);
  }

  return v15[0];
}

uint64_t PRMPBSCameraReader::_populateClientResTypePixelBuffer(PRMReader *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  valid = ps_buffer_camera_stream_buffer_info_get_valid();
  MEMORY[0x25F8C94C0](a3, a4, valid);
  ps_buffer_camera_stream_buffer_info_get_timestamp();
  pixel_buffer = ps_buffer_camera_stream_buffer_info_get_pixel_buffer();
  v9 = *(a1 + 4);
  if (v9 == 1)
  {
    metadata_iosurface_ref = ps_buffer_camera_stream_buffer_info_get_metadata_iosurface_ref();
    MEMORY[0x25F8C9450](a3, a4, pixel_buffer, metadata_iosurface_ref);
LABEL_5:

    JUMPOUT(0x25F8C9570);
  }

  if (!v9)
  {
    metadata_cf_data_bytes = ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_bytes();
    metadata_cf_data_size = ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_size();
    v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], metadata_cf_data_bytes, metadata_cf_data_size, *MEMORY[0x277CBED00]);
    MEMORY[0x25F8C9430](a3, a4, pixel_buffer, v12);
    goto LABEL_5;
  }

  v30 = 0;
  v14 = v9;
  Key = PRMReader::getKey(a1);
  v16 = asprintf(&v30, "Unsupported metadata type found: %d for key: %s", v14, Key);
  v18 = __PSResourceManagerLogSharedInstance(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v19 = *(a1 + 4);
    v20 = PRMReader::getKey(a1);
    *buf = 136315906;
    v32 = "_populateClientResTypePixelBuffer";
    v33 = 1024;
    v34 = 197;
    v35 = 1024;
    v36 = v19;
    v37 = 2080;
    v38 = v20;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type found: %d for key: %s", buf, 0x22u);
  }

  v21 = OSLogFlushBuffers();
  if (v21)
  {
    v23 = v21;
    v24 = __PSResourceManagerLogSharedInstance(v21, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "_populateClientResTypePixelBuffer";
      v33 = 1024;
      v34 = v23;
      _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v25 = abort_with_reason();
  return PRMPBSCameraReader::_populateClientResTypeDataBuffer(v25, v26, v27, v28);
}

uint64_t PRMPBSCameraReader::_populateClientResTypeDataBuffer(PRMReader *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  valid = ps_buffer_camera_stream_buffer_info_get_valid();
  MEMORY[0x25F8C94C0](a3, a4, valid);
  ps_buffer_camera_stream_buffer_info_get_timestamp();
  data_buffer = ps_buffer_camera_stream_buffer_info_get_data_buffer();
  v9 = *(a1 + 4);
  if (v9 == 1)
  {
    metadata_iosurface_ref = ps_buffer_camera_stream_buffer_info_get_metadata_iosurface_ref();
    MEMORY[0x25F8C9420](a3, a4, data_buffer, metadata_iosurface_ref);
LABEL_5:

    JUMPOUT(0x25F8C9570);
  }

  if (!v9)
  {
    metadata_cf_data_bytes = ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_bytes();
    metadata_cf_data_size = ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_size();
    v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], metadata_cf_data_bytes, metadata_cf_data_size, *MEMORY[0x277CBED00]);
    MEMORY[0x25F8C9410](a3, a4, data_buffer, v12);
    goto LABEL_5;
  }

  v30 = 0;
  v14 = v9;
  Key = PRMReader::getKey(a1);
  v16 = asprintf(&v30, "Unsupported metadata type found: %d for key: %s", v14, Key);
  v18 = __PSResourceManagerLogSharedInstance(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v19 = *(a1 + 4);
    v20 = PRMReader::getKey(a1);
    *buf = 136315906;
    v32 = "_populateClientResTypeDataBuffer";
    v33 = 1024;
    v34 = 252;
    v35 = 1024;
    v36 = v19;
    v37 = 2080;
    v38 = v20;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type found: %d for key: %s", buf, 0x22u);
  }

  v21 = OSLogFlushBuffers();
  if (v21)
  {
    v23 = v21;
    v24 = __PSResourceManagerLogSharedInstance(v21, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "_populateClientResTypeDataBuffer";
      v33 = 1024;
      v34 = v23;
      _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v25 = abort_with_reason();
  return PRMPBSCameraReader::_populateClientResTypeJasperBuffer(v25, v26, v27, v28);
}

void PRMPBSCameraReader::_populateClientResTypeJasperBuffer(PRMReader *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  timestamp = 0;
  v6 = 0;
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0;
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  v32 = *MEMORY[0x277CBECE8];
  v7 = a2 + 8;
  v31 = *MEMORY[0x277CBED00];
  do
  {
    *(v38 + v4) = 0;
    *(v37 + v4) = 0;
    valid = ps_buffer_camera_stream_buffer_info_get_valid();
    buf[v4 - 4] = valid;
    if (valid)
    {
      timestamp = ps_buffer_camera_stream_buffer_info_get_timestamp();
      v9 = *(a1 + 4);
      if (v9 == 1)
      {
        *(v37 + v4) = ps_buffer_camera_stream_buffer_info_get_metadata_iosurface_ref();
      }

      else
      {
        if (v9)
        {
          PRMPBSCameraReader::_populateClientResTypeJasperBuffer(buf);
        }

        metadata_cf_data_bytes = ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_bytes();
        metadata_cf_data_size = ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_size();
        *(v38 + v4) = CFDataCreateWithBytesNoCopy(v32, metadata_cf_data_bytes, metadata_cf_data_size, v31);
      }

      data_buffer = ps_buffer_camera_stream_buffer_info_get_data_buffer();
    }

    else
    {
      data_buffer = 0;
      *(v38 + v4) = 0;
      *(v37 + v4) = 0;
    }

    v6 |= valid;
    *(v39 + v4++) = data_buffer;
    v7 += 32;
  }

  while (v4 != 4);
  MEMORY[0x25F8C94C0](a3, a4, v6 & 1);
  v13 = *(a1 + 4);
  if (!v13)
  {
    MEMORY[0x25F8C94D0](a3, a4, v39, v38);
    goto LABEL_14;
  }

  if (v13 == 1)
  {
    MEMORY[0x25F8C94E0](a3, a4, v39, v37);
LABEL_14:
    *&v14 = -1;
    *(&v14 + 1) = -1;
    *buf = v14;
    *&buf[16] = v14;
    MEMORY[0x25F8C94F0](a3, a4, buf);
    MEMORY[0x25F8C9500](a3, a4, &v35);
    MEMORY[0x25F8C9570](a3, a4, timestamp);
    return;
  }

  v34 = 0;
  Key = PRMReader::getKey(a1);
  v16 = asprintf(&v34, "Unsupported metadata type found: %d for stream: %s", v13, Key);
  v18 = __PSResourceManagerLogSharedInstance(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v19 = *(a1 + 4);
    v20 = PRMReader::getKey(a1);
    *buf = 136315906;
    *&buf[4] = "_populateClientResTypeJasperBuffer";
    *&buf[12] = 1024;
    *&buf[14] = 336;
    *&buf[18] = 1024;
    *&buf[20] = v19;
    *&buf[24] = 2080;
    *&buf[26] = v20;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type found: %d for stream: %s", buf, 0x22u);
  }

  v21 = OSLogFlushBuffers();
  if (v21)
  {
    v23 = v21;
    v24 = __PSResourceManagerLogSharedInstance(v21, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "_populateClientResTypeJasperBuffer";
      *&buf[12] = 1024;
      *&buf[14] = v23;
      _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v25 = abort_with_reason();
  PRMPBSCameraReader::_populateClientResTypePearlBuffer(v25, v26, v27, v28);
}

void PRMPBSCameraReader::_populateClientResTypePearlBuffer(PRMReader *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  MEMORY[0x25F8C94C0](a3, a4, 1);
  valid = ps_buffer_camera_stream_buffer_info_get_valid();
  v8 = ps_buffer_camera_stream_buffer_info_get_valid();
  v9 = ps_buffer_camera_stream_buffer_info_get_valid();
  v10 = ps_buffer_camera_stream_buffer_info_get_valid();
  MEMORY[0x25F8C9560](a3, a4, valid, v8, v9, v10);
  pixel_buffer = ps_buffer_camera_stream_buffer_info_get_pixel_buffer();
  v12 = ps_buffer_camera_stream_buffer_info_get_pixel_buffer();
  v13 = ps_buffer_camera_stream_buffer_info_get_pixel_buffer();
  v14 = ps_buffer_camera_stream_buffer_info_get_pixel_buffer();
  v15 = *(a1 + 4);
  if (v15 == 1)
  {
    metadata_iosurface_ref = ps_buffer_camera_stream_buffer_info_get_metadata_iosurface_ref();
    MEMORY[0x25F8C9550](a3, a4, pixel_buffer, v12, v13, v14, metadata_iosurface_ref);
  }

  else
  {
    if (v15)
    {
      v31 = 0;
      Key = PRMReader::getKey(a1);
      v21 = asprintf(&v31, "Unsupported metadata type found: %d for key: %s", v15, Key);
      v23 = __PSResourceManagerLogSharedInstance(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = *(a1 + 4);
        v25 = PRMReader::getKey(a1);
        *buf = 136315906;
        v33 = "_populateClientResTypePearlBuffer";
        v34 = 1024;
        v35 = 383;
        v36 = 1024;
        v37 = v24;
        v38 = 2080;
        v39 = v25;
        _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type found: %d for key: %s", buf, 0x22u);
      }

      v26 = OSLogFlushBuffers();
      if (v26)
      {
        v28 = v26;
        v29 = __PSResourceManagerLogSharedInstance(v26, v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "_populateClientResTypePearlBuffer";
          v34 = 1024;
          v35 = v28;
          _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }
      }

      else
      {
        usleep(0x1E8480u);
      }

      v30 = abort_with_reason();
      PRMPBSCameraReader::getIOSurfaceCount(v30);
    }

    metadata_cf_data_bytes = ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_bytes();
    metadata_cf_data_size = ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_size();
    v18 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], metadata_cf_data_bytes, metadata_cf_data_size, *MEMORY[0x277CBED00]);
    MEMORY[0x25F8C9540](a3, a4, pixel_buffer, v12, v13, v14, v18);
  }

  ps_buffer_camera_stream_buffer_info_get_timestamp();

  JUMPOUT(0x25F8C9570);
}

__IOSurface *PRMPBSCameraReader::getIOSurfaces(PRMPBSCameraReader *this, __IOSurface **a2)
{
  result = (*(*this + 72))(this);
  if (result >= 1)
  {
    v5 = result;
    v6 = MEMORY[0x25F8C8990](*(this + 11));
    v7 = v5;
    if (ps_buffer_camera_stream_is_pixelbuffer())
    {
      do
      {
        v8 = *v6++;
        result = CVPixelBufferGetIOSurface(v8);
        *a2++ = result;
        --v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        ++v6;
        result = CVDataBufferGetIOSurface();
        *a2++ = result;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void PRMPBSCameraReader::~PRMPBSCameraReader(void **this)
{
  PRMReader::~PRMReader(this);

  JUMPOUT(0x25F8C7C50);
}

void PRMPBSFastPathReplayReader::~PRMPBSFastPathReplayReader(PRMPBSFastPathReplayReader *this)
{
  *this = &unk_2870BA308;
  v2 = *(this + 11);
  if (!*(v2 + 16) || (MEMORY[0x25F8C7C50](*(v2 + 16), 0x1000C4000313F17), *(this + 11)))
  {
    MEMORY[0x25F8C7C50]();
  }

  PRMReader::~PRMReader(this);
}

{
  PRMPBSFastPathReplayReader::~PRMPBSFastPathReplayReader(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t PRMPBSFastPathReplayReader::acquirePBSResources(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v14 = PRMPBSGenericReader::acquirePBSResources(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  v15 = v14;
  v16 = *(a1 + 88);
  *(v16 + 8) = a2;
  **(v16 + 16) = 0;
  *(v16 + 32) = 0;
  if (v14)
  {
    v17 = *(a1 + 96);
    *(v16 + 32) = v14 - 1;
    if (v17)
    {
      v18 = -1;
      v19 = v14;
      do
      {
        if (**(*v11 + 40) == v17)
        {
          *(v16 + 32) = v18;
        }

        ++v11;
        ++v18;
        --v19;
      }

      while (v19);
    }

    else
    {
      *(a1 + 96) = **(v11[v14 - 1] + 40);
    }
  }

  MEMORY[0x25F8C9470](a2);
  return v15;
}

uint64_t PRMPBSFastPathReplayReader::relinquishPBSResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 96) = MEMORY[0x25F8C9240](a2, 0);

  return PRMPBSGenericReader::relinquishPBSResources(a1);
}

uint64_t PRMPBSGenericReader::init(PRMPBSGenericReader *this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  PRMPBSReader::init(this, a2, a3);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = PRMReader::getKey(this);
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "Initializing PRMPBSGenericReader for %s (first time)", buf, 0xCu);
  }

  if (*(a3 + 15) == 1)
  {
    *(this + 10) = 0;
    *(&v11.__r_.__value_.__s + 23) = 6;
    strcpy(&v11, "local-");
    v8 = std::string::append(&v11, *(a3 + 7));
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *buf = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    *(this + 10) = ps_buffer_create_group_reader();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    *(this + 10) = 0;
    *(this + 10) = ps_buffer_create_group_reader();
  }

  return PRMReader::setInitialized(this, 1);
}

void sub_25EAAADB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PRMPBSGenericReader::deinit(PSListenerThread **this, uint64_t a2)
{
  PRMPBSReader::deinit(this, a2);
  if (this[10])
  {
    ps_buffer_delete_read_buffer();
    this[10] = 0;
  }

  return PRMReader::setInitialized(this, 0);
}

void PRMPBSGenericReader::createReaderInstanceContext(PRMPBSGenericReader *this)
{
  PRMPBSReader::createReaderInstanceContext(this);

  JUMPOUT(0x25F8C88F0);
}

void PRMPBSGenericReader::deleteReaderInstanceContext(PRMPBSGenericReader *this, void *a2)
{
  PRMPBSReader::deleteReaderInstanceContext(this, a2);

  JUMPOUT(0x25F8C8C20);
}

uint64_t PRMPBSGenericReader::acquirePBSResources(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v15 = -1;
  v12 = *(a1 + 80);
  if (a7)
  {
    if (v12)
    {
      buffers_with_frameid_with_reader_context = ps_buffer_get_read_buffers_with_frameid_with_reader_context();
      *a3 = buffers_with_frameid_with_reader_context;
      if (buffers_with_frameid_with_reader_context)
      {
        return 1;
      }
    }

    else if (*a3)
    {
      return 1;
    }

    return 0;
  }

  if (a9)
  {
    if (v12)
    {
      ps_buffer_get_read_buffers_and_sync_tags_since_last();
    }
  }

  else if (v12)
  {
    ps_buffer_get_read_buffers_and_sync_tags_lastn();
  }

  return v15;
}

uint64_t PRMPBSGenericReader::relinquishPBSResources(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    JUMPOUT(0x25F8C8E30);
  }

  return result;
}

uint64_t PRMPBSGenericReader::_populateClientResTypePixelBuffer(PRMPBSReader *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    v18 = 0;
    v9 = *(a2 + 40);
    v10 = *(a1 + 4);
    if (v10 == 2)
    {
      MEMORY[0x25F8C9570](a3, a4, **(a2 + 8));

      JUMPOUT(0x25F8C9430);
    }

    if (v10 == 1)
    {
      MEMORY[0x25F8C9450](a3, a4, *(a2 + 40), *(a2 + 8));

      JUMPOUT(0x25F8C9570);
    }

    if (v10)
    {
      v12 = PRMPBSGenericReader::_populateClientResTypePixelBuffer(&v16);
      return PRMPBSGenericReader::_populateClientResTypeDataBuffer(v12, v13, v14, v15);
    }

    else
    {
      v17 = 0;
      v11 = *(a2 + 8);
      v16 = 0;
      PRMPBSReader::createRCMetadataRef(a1, v11, &v16, &v18, &v17);
      MEMORY[0x25F8C9430](a3, a4, v9, v16);
      return MEMORY[0x25F8C9570](a3, a4, v18);
    }
  }

  return result;
}

uint64_t PRMPBSGenericReader::_populateClientResTypeDataBuffer(PRMPBSReader *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    v18 = 0;
    v9 = *(a2 + 40);
    v10 = *(a1 + 4);
    if (v10 == 2)
    {
      MEMORY[0x25F8C9570](a3, a4, **(a2 + 8));

      JUMPOUT(0x25F8C9400);
    }

    if (v10 == 1)
    {
      MEMORY[0x25F8C9420](a3, a4, *(a2 + 40), *(a2 + 8));

      JUMPOUT(0x25F8C9570);
    }

    if (v10)
    {
      v12 = PRMPBSGenericReader::_populateClientResTypeDataBuffer(&v16);
      return PRMPBSGenericReader::_populateClientResTypeJasperBuffer(v12, v13, v14, v15);
    }

    else
    {
      v17 = 0;
      v11 = *(a2 + 8);
      v16 = 0;
      PRMPBSReader::createRCMetadataRef(a1, v11, &v16, &v18, &v17);
      MEMORY[0x25F8C9400](a3, a4, v9, v16);
      return MEMORY[0x25F8C9570](a3, a4, v18);
    }
  }

  return result;
}

uint64_t PRMPBSGenericReader::_populateClientResTypeJasperBuffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    memset(v44, 0, sizeof(v44));
    v9 = *(a1 + 16);
    if (v9 == 1)
    {
      v16 = 0;
      *v42 = 0uLL;
      v43 = 0uLL;
      v17 = a2 + 5;
      do
      {
        v42[v16] = *(v17 - 4);
        *(v44 + v16 * 8) = *v17;
        *&buf[v16 * 8] = *v17[4];
        v17 += 12;
        ++v16;
      }

      while (v16 != 4);
      MEMORY[0x25F8C94E0](a3, a4, v44, v42);
      v15 = a2[49];
      goto LABEL_10;
    }

    if (!v9)
    {
      v10 = 0;
      v33 = 0;
      *v42 = 0uLL;
      v43 = 0uLL;
      v11 = a2 + 5;
      v12 = buf;
      do
      {
        v13 = *(v11 - 4);
        v14 = *v11;
        v11 += 8;
        *(v44 + v10 * 8) = v14;
        PRMPBSReader::createRCMetadataRef(a1, v13, &v42[v10++], v12++, &v33);
      }

      while (v10 != 4);
      MEMORY[0x25F8C94D0](a3, a4, v44, v42);
      v15 = a2[33];
LABEL_10:
      v18 = *v15;
      MEMORY[0x25F8C94F0](a3, a4, buf);
      return MEMORY[0x25F8C9570](a3, a4, v18);
    }

    v42[0] = 0;
    v19 = (a1 + 24);
    v20 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v20 = *v19;
    }

    v21 = asprintf(v42, "Invalid metadata type found: %d for key: %s", v9, v20);
    v23 = __PSResourceManagerLogSharedInstance(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v24 = *(a1 + 16);
      if (*(a1 + 47) < 0)
      {
        v19 = *v19;
      }

      *buf = 136315906;
      v35 = "_populateClientResTypeJasperBuffer";
      v36 = 1024;
      v37 = 338;
      v38 = 1024;
      v39 = v24;
      v40 = 2080;
      v41 = v19;
      _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_FAULT, "%s:%d Invalid metadata type found: %d for key: %s", buf, 0x22u);
    }

    v25 = OSLogFlushBuffers();
    if (v25)
    {
      v27 = v25;
      v28 = __PSResourceManagerLogSharedInstance(v25, v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "_populateClientResTypeJasperBuffer";
        v36 = 1024;
        v37 = v27;
        _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v29 = abort_with_reason();
    return PRMPBSGenericReader::_populateClientResTypePearlBuffer(v29, v30, v31, v32);
  }

  return result;
}

uint64_t PRMPBSGenericReader::_populateClientResTypePearlBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    v9 = 0;
    v34 = 0u;
    v35 = 0u;
    v10 = (a2 + 40);
    do
    {
      v11 = *v10;
      v10 += 4;
      *(&v34 + v9) = v11;
      v9 += 8;
    }

    while (v9 != 32);
    v26 = 0;
    v12 = *(a1 + 16);
    if (!v12)
    {
      LODWORD(v25) = 0;
      v13 = *(a2 + 8);
      *buf = 0;
      PRMPBSReader::createRCMetadataRef(a1, v13, buf, &v26, &v25);
      MEMORY[0x25F8C9540](a3, a4, v34, *(&v34 + 1), v35, *(&v35 + 1), *buf);
      return MEMORY[0x25F8C9570](a3, a4);
    }

    if (v12 == 1)
    {
      MEMORY[0x25F8C9550](a3, a4, v34, *(&v34 + 1), v35, *(&v35 + 1), *(a2 + 8));
      v26 = **(a2 + 168);
      return MEMORY[0x25F8C9570](a3, a4);
    }

    v25 = 0;
    v14 = (a1 + 24);
    v15 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v15 = *v14;
    }

    v16 = asprintf(&v25, "Invalid metadata type found: %d for key: %s", v12, v15);
    v18 = __PSResourceManagerLogSharedInstance(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v19 = *(a1 + 16);
      if (*(a1 + 47) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315906;
      *&buf[4] = "_populateClientResTypePearlBuffer";
      v28 = 1024;
      v29 = 403;
      v30 = 1024;
      v31 = v19;
      v32 = 2080;
      v33 = v14;
      _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_FAULT, "%s:%d Invalid metadata type found: %d for key: %s", buf, 0x22u);
    }

    v20 = OSLogFlushBuffers();
    if (v20)
    {
      v22 = v20;
      v23 = __PSResourceManagerLogSharedInstance(v20, v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "_populateClientResTypePearlBuffer";
        v28 = 1024;
        v29 = v22;
        _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v24 = abort_with_reason();
    return PRMPBSGenericReader::getIOSurfaceCount(v24);
  }

  return result;
}

uint64_t PRMPBSGenericReader::getIOSurfaceCount(PRMPBSGenericReader *this)
{
  v1 = *(this + 1);
  v2 = v1 >= 0xB;
  v4 = v1 == 11;
  v3 = (1 << v1) & 0xB90;
  v4 = !v4 && v2 || v3 == 0;
  if (v4)
  {
    return 4294967294;
  }

  else
  {
    return ps_buffer_get_total_read_buffer_count();
  }
}

__IOSurface *PRMPBSGenericReader::getIOSurfaces(PRMPBSGenericReader *this, __IOSurface **a2)
{
  result = (*(*this + 72))(this);
  if (result >= 1)
  {
    LODWORD(v5) = result;
    result = MEMORY[0x25F8C8C80](*(this + 10));
    v6 = result;
    v7 = *(this + 1);
    if (v7 <= 7)
    {
      if (v7 == 4)
      {
        v15 = v5;
        do
        {
          v16 = *v6;
          v6 = (v6 + 8);
          *a2++ = *(v16 + 8);
          --v15;
        }

        while (v15);
      }

      else if (v7 == 7)
      {
        v5 = v5;
        do
        {
          v11 = *v6;
          v6 = (v6 + 8);
          result = CVPixelBufferGetIOSurface(*(v11 + 40));
          *a2++ = result;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      switch(v7)
      {
        case 8:
          v5 = v5;
          do
          {
            v6 = (v6 + 8);
            result = CVDataBufferGetIOSurface();
            *a2++ = result;
            --v5;
          }

          while (v5);
          break;
        case 9:
          v12 = 0;
          do
          {
            v13 = &a2[4 * (v12 & 0x3FFFFFFF)];
            for (i = 40; i != 296; i += 64)
            {
              result = CVDataBufferGetIOSurface();
              *v13++ = result;
            }

            ++v12;
          }

          while (v12 != v5);
          break;
        case 11:
          v8 = 0;
          do
          {
            v9 = &a2[4 * (v8 & 0x3FFFFFFF)];
            for (j = 40; j != 168; j += 32)
            {
              result = CVDataBufferGetIOSurface();
              *v9++ = result;
            }

            ++v8;
          }

          while (v8 != v5);
          break;
      }
    }
  }

  return result;
}

void PRMPBSGenericReader::~PRMPBSGenericReader(void **this)
{
  PRMReader::~PRMReader(this);

  JUMPOUT(0x25F8C7C50);
}

void PRMPBSReader::init(PRMPBSReader *this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  PRMReader::init(this, a2, a3);
  *(this + 6) = 0;
  *(this + 7) = 0;
  v5 = *(this + 1);
  v6 = v5 - 1;
  if (v5 - 1 >= 0xC)
  {
    PRMPBSReader::init(&v12, this);
    goto LABEL_12;
  }

  v7 = dword_25EB776B8[v6];
  v8 = dword_25EB776E8[v6];
  *(this + 18) = v7;
  *(this + 19) = v8;
  if (*(a3 + 27) != 1)
  {
    return;
  }

  if (v5 > 0xB)
  {
LABEL_12:
    v10 = PRMPBSReader::init(&v12, this);
    PRMPBSReader::deinit(v10, v11);
    return;
  }

  if (((1 << v5) & 0x47E) != 0)
  {
    return;
  }

  if (((1 << v5) & 0x980) == 0)
  {
    if (v5 == 9)
    {
      v9 = 4;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v9 = 1;
LABEL_9:
  *(this + 18) = v7 + v9;
  *(this + 19) = v8 + v9;
}

PSActionTakerManager *PRMPBSReader::deinit(PSListenerThread **this, uint64_t a2)
{
  PRMReader::deinit(this, a2);
  if ((PRMReader::isProducerLocal(this) & 1) == 0)
  {
    v3 = this[7];
    if (v3)
    {
      PSListenerThread::stop(v3);
    }
  }

  result = PRMReader::isProducerLocal(this);
  if ((result & 1) == 0)
  {
    result = this[6];
    if (result)
    {
      PSActionTakerManager::flushRemovalRequests(result);
      result = this[7];
      if (result)
      {
        PSListenerThread::~PSListenerThread(result);
        result = MEMORY[0x25F8C7C50]();
      }

      this[7] = 0;
    }
  }

  return result;
}

void PRMPBSReader::createReaderInstance(PSListenerThread **this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  if ((PRMReader::isInitialized(this) & 1) == 0 && !PRMReader::getRefCount(this))
  {
    (*(*this + 7))(this, a2, a3);
  }

  if (*(a3 + 5) == 10)
  {
    operator new();
  }

  operator new();
}

uint64_t PRMPBSReader::deleteReaderInstance(PRMPBSReader *this, PRMReaderInstance *a2)
{
  v2 = a2;
  if (*(this + 1) != 10)
  {
    ActionTaker = PRMPBSReaderInstance::getActionTaker(a2);
    if (ActionTaker)
    {
      a2 = ActionTaker;
      v5 = *(this + 6);
      if (v5)
      {
        PSActionTakerManager::requestRemoveActionTaker(v5, a2);
      }
    }
  }

  if (v2)
  {
    (*(*v2 + 8))(v2, a2);
  }

  PRMReader::decrementRefCount(this);
  result = PRMReader::isInitialized(this);
  if (result)
  {
    result = PRMReader::getRefCount(this);
    if (!result)
    {
      v7 = *(*this + 64);

      return v7(this);
    }
  }

  return result;
}

uint64_t PRMPBSReader::createReaderInstanceContext(PRMPBSReader *this)
{
  if (PRMReader::isInitialized(this))
  {
    return 0;
  }

  v3 = PRMPBSReader::createReaderInstanceContext(&v5, this);
  return PRMPBSReader::deleteReaderInstanceContext(v3, v4);
}

uint64_t PRMPBSReader::deleteReaderInstanceContext(PRMPBSReader *this, void *a2)
{
  result = PRMReader::isInitialized(this);
  if ((result & 1) == 0)
  {
    v4 = PRMPBSReader::deleteReaderInstanceContext(&v10, this);
    return PRMPBSReader::_checkBeforeAcquire(v4, v5, v6, v7, v8, v9);
  }

  return result;
}

PRMReader *PRMPBSReader::_checkBeforeAcquire(PRMReader *this, int a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = this;
    if (a3 == 0xFFFFFFFFFFFFLL)
    {
      PRMPBSReader::_checkBeforeAcquire(buf, this);
    }

    else if (a4 < 2)
    {
      if (!a5)
      {
        return this;
      }

      v14 = PRMPBSReader::_checkBeforeAcquire(buf, this);
      goto LABEL_12;
    }

    v21 = v6;
    v22 = 0;
    v7 = a4;
    Key = PRMReader::getKey(v6);
    v9 = v7;
    v10 = asprintf(&v22, "Tried to use frameID for resource %s, but supplied a capacity (%llu) > 1.", Key, v7);
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = PRMReader::getKey(v21);
      *buf = 136315906;
      v24 = "_checkBeforeAcquire";
      v25 = 1024;
      v26 = 235;
      v27 = 2080;
      v28 = v13;
      v29 = 2048;
      v30 = v9;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_FAULT, "%s:%d Tried to use frameID for resource %s, but supplied a capacity (%llu) > 1.", buf, 0x26u);
    }

    v14 = OSLogFlushBuffers();
    if (!v14)
    {
      usleep(0x1E8480u);
LABEL_14:
      v18 = abort_with_reason();
      return PRMPBSReader::_checkAfterAcquire(v18, v19, v20);
    }

LABEL_12:
    v16 = v14;
    v17 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "_checkBeforeAcquire";
      v25 = 1024;
      v26 = v16;
      _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }

    goto LABEL_14;
  }

  return this;
}

uint64_t PRMPBSReader::_checkAfterAcquire(PRMPBSReader *this, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 == -1)
  {
    v15 = 0;
    Key = PRMReader::getKey(this);
    v7 = asprintf(&v15, "Reader buffer count not populated for resource %s, capacity %llu", Key, a3);
    v9 = __PSResourceManagerLogSharedInstance(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = PRMReader::getKey(this);
      *buf = 136315906;
      v17 = "_checkAfterAcquire";
      v18 = 1024;
      v19 = 246;
      v20 = 2080;
      v21 = v10;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d Reader buffer count not populated for resource %s, capacity %llu", buf, 0x26u);
    }

    v11 = OSLogFlushBuffers();
    if (v11)
    {
      v13 = v11;
      v14 = __PSResourceManagerLogSharedInstance(v11, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "_checkAfterAcquire";
        v18 = 1024;
        v19 = v13;
        _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
  }

  return 1;
}

PRMReader *PRMPBSReader::populateResources(PRMReader *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5)
  {
    if (a6)
    {
      v16 = result;
      for (i = 0; a6 != i; ++i)
      {
        if (i >= a5)
        {
          result = MEMORY[0x25F8C94C0](a2, i, 0);
        }

        else
        {
          v18 = *(a3 + 8 * i);
          v19 = atomic_load(*(a4 + 8 * i));
          MEMORY[0x25F8C9480](a2, i, v19);
          v20 = ps_resource_get_class();
          if (v20 > 6)
          {
            if (v20 <= 9)
            {
              if (v20 == 7)
              {
                result = (*(*v16 + 104))(v16, v18, a2, i, a11);
              }

              else if (v20 == 8)
              {
                result = (*(*v16 + 112))(v16, v18, a2, i, a11);
              }

              else
              {
                result = (*(*v16 + 120))(v16, v18, a2, i, a11);
              }

              continue;
            }

            if (v20 == 10)
            {
              result = (*(*v16 + 128))(v16, v18, a2, i, a11);
              continue;
            }

            if (v20 == 11)
            {
              result = (*(*v16 + 136))(v16, v18, a2, i, a11);
              continue;
            }

            if (v20 != 12)
            {
              goto LABEL_36;
            }

LABEL_24:
            result = PRMPBSReader::_populateClientResTypeData(v16, v18, a2, i);
            continue;
          }

          if (v20 > 3)
          {
            if (v20 == 4)
            {
              result = PRMPBSReader::_populateClientResTypeSurface(v16, v18, a2, i);
            }

            else if (v20 == 5)
            {
              result = PRMPBSReader::_populateClientResTypeMTLBuffer(v16, v18, a2, i, v21, v22, v23, v24, v30, v31, v32);
            }

            else
            {
              result = PRMPBSReader::_populateClientResTypeMTLTexture(v16, v18, a2, i, v21, v22, v23, v24, v30, v31, v32);
            }

            continue;
          }

          if (v20 == 1)
          {
            goto LABEL_24;
          }

          if (v20 != 2 && v20 != 3)
          {
LABEL_36:
            v26 = PRMPBSReader::populateResources(&v31, v16);
            return PRMPBSReader::_populateClientResTypeData(v26, v27, v28, v29);
          }

          result = PRMPBSReader::_populateClientResTypeObject(v16, v18, a2, i);
        }
      }
    }
  }

  else if (a6)
  {
    for (j = 0; j != a6; ++j)
    {
      result = MEMORY[0x25F8C94C0](a2, j, 0, a4);
    }
  }

  return result;
}

uint64_t PRMPBSReader::_populateClientResTypeData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    MEMORY[0x25F8C9460](a3, a4, *(a2 + 8), *(*(a2 + 40) + 8));

    JUMPOUT(0x25F8C9570);
  }

  return result;
}

uint64_t PRMPBSReader::_populateClientResTypeObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    MEMORY[0x25F8C9530](a3, a4, **(a2 + 8));

    JUMPOUT(0x25F8C9570);
  }

  return result;
}

uint64_t PRMPBSReader::_populateClientResTypeSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    MEMORY[0x25F8C9490](a3, a4, *(a2 + 8));

    JUMPOUT(0x25F8C9570);
  }

  return result;
}

uint64_t PRMPBSReader::_populateClientResTypeMTLBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, BOOL a9, uint64_t a10, uint64_t a11)
{
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    v12 = PRMPBSReader::_populateClientResTypeMTLBuffer(&v20);
    return PRMPBSReader::_populateClientResTypeMTLTexture(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11);
  }

  return result;
}

uint64_t PRMPBSReader::_populateClientResTypeMTLTexture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, BOOL a9, uint64_t a10, uint64_t a11)
{
  result = PRMPBSReader::populatePBSValidity(a1, a2, a3, a4);
  if (result)
  {
    PRMPBSReader::_populateClientResTypeMTLTexture(&v20);
    return PRMPBSReader::acquireResources(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11);
  }

  return result;
}

uint64_t PRMPBSReader::acquireResources(PRMReader *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, BOOL a9, uint64_t a10, uint64_t a11)
{
  PRMPBSReader::_checkBeforeAcquire(a1, a7, a6, a5, a9, a6);
  v22 = a10;
  LOBYTE(v21) = a9;
  v18 = (*(*a1 + 88))(a1, a2, a3, a4, a5, a6, a7, a8);
  PRMPBSReader::_checkAfterAcquire(a1, v18, a5);
  LOBYTE(v22) = 0;
  PRMPBSReader::populateResources(a1, a2, a3, a4, v18, a5, v19, 0, v21, v22, a10);
  return v18;
}

uint64_t PRMPBSReader::relinquishResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v12 = 0;
    while (1)
    {
      if (!MEMORY[0x25F8C9260](a2, v12) || *(a1 + 16))
      {
        goto LABEL_5;
      }

      v13 = *(a1 + 8);
      if (v13 <= 8)
      {
        break;
      }

      if (v13 == 9)
      {
        MEMORY[0x25F8C91A0](a2, v12);
        cfdata_metadata_array = ps_resource_jasperbuffer_get_cfdata_metadata_array();
        if (cfdata_metadata_array)
        {
          v16 = cfdata_metadata_array;
          for (i = 0; i != 32; i += 8)
          {
            v18 = *(v16 + i);
            if (v18)
            {
              CFRelease(v18);
            }
          }
        }

        goto LABEL_5;
      }

      if (v13 == 11)
      {
        MEMORY[0x25F8C91F0](a2, v12);
        cfdata_metadata = ps_resource_pearlbuffer_get_cfdata_metadata();
        if (cfdata_metadata)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      if (++v12 == a5)
      {
        goto LABEL_25;
      }
    }

    if (v13 == 7)
    {
      MEMORY[0x25F8C9210](a2, v12);
      if (*(a1 + 16))
      {
        goto LABEL_5;
      }

      cfdata_metadata = ps_resource_pixelbuffer_get_metadata();
      if (!cfdata_metadata)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v13 != 8)
      {
        goto LABEL_5;
      }

      MEMORY[0x25F8C9160](a2, v12);
      cfdata_metadata = ps_resource_databuffer_get_metadata();
      if (!cfdata_metadata)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    CFRelease(cfdata_metadata);
    goto LABEL_5;
  }

LABEL_25:
  result = (*(*a1 + 96))(a1, a2, a3, a4, a5, a6);
  if (a4)
  {
    v20 = 0;
    do
    {
      result = MEMORY[0x25F8C94C0](a2, v20++, 0);
    }

    while (a4 != v20);
  }

  return result;
}

uint64_t PRMPBSReader::populatePBSValidity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if ((v6 - 1) < 8)
  {
LABEL_2:
    if (**(a2 + 32 * *(a1 + 72) + 8) == 1)
    {
      v7 = 1;
      MEMORY[0x25F8C94C0](a3, a4, 1);
      return v7;
    }

    goto LABEL_19;
  }

  if (v6 > 10)
  {
    if (v6 == 12)
    {
      goto LABEL_2;
    }

    if (v6 == 11)
    {
      v8 = 0;
      v9 = 0;
      v10 = *(a1 + 72);
      do
      {
        v11 = **(a2 + 32 * v10 + 8);
        *(&v17 + v8) = v11;
        v9 |= v11;
        ++v8;
        ++v10;
      }

      while (v8 != 4);
      if (v9)
      {
        v7 = 1;
        MEMORY[0x25F8C94C0](a3, a4, 1);
        MEMORY[0x25F8C9560](a3, a4, v17, BYTE1(v17), BYTE2(v17), BYTE3(v17));
        return v7;
      }

      MEMORY[0x25F8C9560](a3, a4, 0, 0, 0, 0);
LABEL_19:
      MEMORY[0x25F8C94C0](a3, a4, 0);
      return 0;
    }
  }

  else
  {
    if (v6 == 9)
    {
      v12 = 0;
      v13 = 0;
      v14 = *(a1 + 72);
      do
      {
        v15 = **(a2 + 32 * v14 + 8);
        *(&v17 + v12) = v15;
        v13 |= v15;
        ++v12;
        ++v14;
      }

      while (v12 != 4);
      if (v13)
      {
        v7 = 1;
        MEMORY[0x25F8C94C0](a3, a4, 1);
        MEMORY[0x25F8C9500](a3, a4, &v17);
        return v7;
      }

      goto LABEL_19;
    }

    if (v6 == 10)
    {
      goto LABEL_2;
    }
  }

  PRMPBSReader::populatePBSValidity(&v17, a1);
  return PRMPBSReader::_populateClientResTypePixelBuffer();
}

uint64_t PRMPBSReader::_populateClientResTypePixelBuffer()
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v0 = asprintf(&v8, "PRM PBS Camera / Generic reader needs to implement this");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "_populateClientResTypePixelBuffer";
    v11 = 1024;
    v12 = 616;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d PRM PBS Camera / Generic reader needs to implement this", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "_populateClientResTypePixelBuffer";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return PRMPBSReader::_populateClientResTypeDataBuffer();
}

uint64_t PRMPBSReader::_populateClientResTypeDataBuffer()
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v0 = asprintf(&v8, "PRM PBS Camera / Generic reader needs to implement this");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "_populateClientResTypeDataBuffer";
    v11 = 1024;
    v12 = 649;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d PRM PBS Camera / Generic reader needs to implement this", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "_populateClientResTypeDataBuffer";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return PRMPBSReader::_populateClientResTypePearlBuffer();
}

uint64_t PRMPBSReader::_populateClientResTypePearlBuffer()
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v0 = asprintf(&v8, "PRM PBS Camera Reader needs to implement pearl.");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "_populateClientResTypePearlBuffer";
    v11 = 1024;
    v12 = 657;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d PRM PBS Camera Reader needs to implement pearl.", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "_populateClientResTypePearlBuffer";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return PRMPBSReader::_populateClientResTypeJasperBuffer();
}

uint64_t PRMPBSReader::_populateClientResTypeJasperBuffer()
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v0 = asprintf(&v8, "PRM PBS Camera Reader needs to implement jasper.");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "_populateClientResTypeJasperBuffer";
    v11 = 1024;
    v12 = 740;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d PRM PBS Camera Reader needs to implement jasper.", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "_populateClientResTypeJasperBuffer";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return PRMPBSReader::_populateClientResTypeAneBuffer();
}

const __CFData *PRMPBSReader::_populateClientResTypeAneBuffer()
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v0 = asprintf(&v13, "PRM PBS ANE Reader needs to implement.");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v15 = "_populateClientResTypeAneBuffer";
    v16 = 1024;
    v17 = 748;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d PRM PBS ANE Reader needs to implement.", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "_populateClientResTypeAneBuffer";
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PRMPBSReader::createRCMetadataRef(v7, v8, v9, v10, v11);
}

const __CFData *PRMPBSReader::createRCMetadataRef(PRMPBSReader *this, char *a2, const __CFData **a3, unint64_t *a4, unsigned int *a5)
{
  *a4 = *(a2 + 1);
  *a5 = *(a2 + 4);
  if (*a2)
  {
    result = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2 + 20, *a2, *MEMORY[0x277CBED00]);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_5@<X0>(PRMReader *this@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  *(v3 - 40) = a3;
  *a2 = 0;

  return PRMReader::getKey(this);
}

void PRMPBSReaderInstance::PRMPBSReaderInstance(PRMPBSReaderInstance *this, PRMPBSReader *a2, size_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  PRMReaderInstance::PRMReaderInstance(this, a2, a3);
  *v6 = &unk_2870BA490;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(this + 4) = (*(*a2 + 32))(a2);
  v7 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(this + 5) = v7;
  if (!v7)
  {
    v22 = 0;
    v16 = asprintf(&v22, "OOM!");
    v18 = __PSResourceManagerLogSharedInstance(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v24 = "PRMPBSReaderInstance";
      v25 = 1024;
      v26 = 32;
      _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_FAULT, "%s:%d OOM!", buf, 0x12u);
    }

    v14 = OSLogFlushBuffers();
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v8 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(this + 6) = v8;
  if (!v8)
  {
    v22 = 0;
    v19 = asprintf(&v22, "OOM!");
    v21 = __PSResourceManagerLogSharedInstance(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v24 = "PRMPBSReaderInstance";
      v25 = 1024;
      v26 = 39;
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_FAULT, "%s:%d OOM!", buf, 0x12u);
    }

    v14 = OSLogFlushBuffers();
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_20:
    __PSResourceManagerLogSharedInstance(v14, v15);
    PRMPBSReaderInstance::PRMPBSReaderInstance();
    goto LABEL_21;
  }

  if (a3)
  {
    v9 = 0;
    while (1)
    {
      v10 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      if (!v10)
      {
        break;
      }

      atomic_store(0xFFFFFFFFFFFFuLL, v10);
      *(*(this + 6) + 8 * v9++) = v10;
      if (a3 == v9)
      {
        return;
      }
    }

    v22 = 0;
    v11 = asprintf(&v22, "OOM!");
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v24 = "PRMPBSReaderInstance";
      v25 = 1024;
      v26 = 45;
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d OOM!", buf, 0x12u);
    }

    v14 = OSLogFlushBuffers();
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_15:
    usleep(0x1E8480u);
LABEL_21:
    abort_with_reason();
    __break(1u);
  }
}

void PRMPBSReaderInstance::~PRMPBSReaderInstance(PRMReaderInstance *this)
{
  v21 = *MEMORY[0x277D85DE8];
  *this = &unk_2870BA490;
  if (*(this + 7))
  {
    v14 = 0;
    Key = PRMReaderInstance::getKey(this);
    v8 = asprintf(&v14, "PRMReader is being dealloced while the client is still holding on to a buffer for key %s", Key);
    v10 = __PSResourceManagerLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = PRMReaderInstance::getKey(this);
      *buf = 136315650;
      v16 = "~PRMPBSReaderInstance";
      v17 = 1024;
      v18 = 57;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d PRMReader is being dealloced while the client is still holding on to a buffer for key %s", buf, 0x1Cu);
    }

    v12 = OSLogFlushBuffers();
    if (v12)
    {
      __PSResourceManagerLogSharedInstance(v12, v13);
      PRMPBSReaderInstance::~PRMPBSReaderInstance();
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }

  v2 = *(this + 5);
  if (v2)
  {
    free(v2);
  }

  (*(**(this + 3) + 40))(*(this + 3), *(this + 4));
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 1);
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(*(this + 6) + 8 * i);
        if (v6)
        {
          free(v6);
          v4 = *(this + 1);
        }
      }

      v3 = *(this + 6);
    }

    free(v3);
  }

  PRMReaderInstance::~PRMReaderInstance(this);
}

{
  PRMPBSReaderInstance::~PRMPBSReaderInstance(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EAAD608(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PRMPBSReaderInstance::acquireResources(PRMReaderInstance *this, ps_resource *a2, void *a3, uint64_t a4, _BOOL4 a5, uint64_t a6)
{
  if (*(this + 7))
  {
    v11 = PRMPBSReaderInstance::acquireResources(&v12, this);
    return PRMPBSReaderInstance::relinquishResources(v11);
  }

  else
  {
    v9 = PRMPBSReader::acquireResources(*(this + 3), a2, *(this + 5), *(this + 6), *(this + 1), a3, a4, *(this + 8), a5, a6, *(this + 4));
    *(this + 7) = v9;
    if (a5 && v9)
    {
      result = **(this + 5);
      if (!result)
      {
        *(this + 2) = a2;
        return result;
      }

      *(this + 9) = *(this + 8);
      *(this + 8) = ps_buffer_get_resource_seq_num();
      v9 = *(this + 7);
    }

    *(this + 2) = a2;
    if (v9)
    {
      return 0;
    }

    else
    {
      return 3758097112;
    }
  }
}

uint64_t *PRMPBSReaderInstance::relinquishResources(uint64_t *this)
{
  v1 = this;
  v2 = this[7];
  if (v2)
  {
    this = PRMPBSReader::relinquishResources(this[3], this[2], this[5], this[1], v2, this[4]);
  }

  v1[7] = 0;
  return this;
}

void PRMPBSReaderInstance::rollbackSeqNum(PRMReaderInstance *this, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 7))
  {
    v3 = __PSResourceManagerLogSharedInstance(this, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      Key = PRMReaderInstance::getKey(this);
      v5 = *(this + 8);
      v6 = *(this + 9);
      v7 = 136315650;
      v8 = Key;
      v9 = 2048;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEBUG, "Rolling back (%s) last_seq_num: %llu -> %llu", &v7, 0x20u);
    }

    *(this + 8) = *(this + 9);
  }
}

void PRMReader::PRMReader(PRMReader *this)
{
  *this = &unk_2870BA4E0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 68) = 0;
}

void PRMReader::~PRMReader(void **this)
{
  *this = &unk_2870BA4E0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t PRMReader::getKey(PRMReader *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

void PRMReader::init(PRMReader *this, PSResourceManager *a2, PSResourceManagerOptions *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(this + 68) == 1)
  {
    PRMReader::init(__dst, this);
LABEL_25:
    __break(1u);
    return;
  }

  v4 = *(this + 16);
  if (v4)
  {
    v19 = 0;
    v9 = (this + 24);
    v10 = this + 24;
    if (*(this + 47) < 0)
    {
      v10 = *v9;
    }

    v11 = asprintf(&v19, "Tried to init PRMReader for key %s with nonzero (%d) refcount.", v10, v4);
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 47) < 0)
      {
        v9 = *v9;
      }

      v14 = *(this + 16);
      *__dst = 136315906;
      *&__dst[4] = "init";
      *&__dst[12] = 1024;
      *&__dst[14] = 54;
      *&__dst[18] = 2080;
      *&__dst[20] = v9;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d Tried to init PRMReader for key %s with nonzero (%d) refcount.", __dst, 0x22u);
    }

    v15 = OSLogFlushBuffers();
    v17 = v15;
    if (v15)
    {
      v18 = __PSResourceManagerLogSharedInstance(v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315394;
        *&__dst[4] = "init";
        *&__dst[12] = 1024;
        *&__dst[14] = v17;
        _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", __dst, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    goto LABEL_25;
  }

  *(this + 69) = PSResourceManager::isProducerLocal(a2, *(a3 + 7));
  v6 = *(a3 + 7);
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v7;
  if (v7)
  {
    memmove(__dst, v6, v7);
  }

  __dst[v8] = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  *(this + 24) = *__dst;
  *(this + 5) = *&__dst[16];
  *(this + 1) = *(a3 + 5);
  *(this + 4) = *(a3 + 27);
}

void PRMReader::deinit(PRMReader *this, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 68) != 1 || *(this + 16))
  {
    PRMReader::deinit(&v5, this);
  }

  v3 = __PSResourceManagerLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = (this + 24);
    if (*(this + 47) < 0)
    {
      v4 = *v4;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEBUG, "Deinitializing PRMReader for %s (last one out the door)", &v5, 0xCu);
  }
}

uint64_t PRMReader::incrementRefCount(PRMReader *this)
{
  v1 = (*(this + 16) + 1);
  *(this + 16) = v1;
  return v1;
}

uint64_t PRMReader::decrementRefCount(PRMReader *this)
{
  v1 = (*(this + 16) - 1);
  *(this + 16) = v1;
  return v1;
}

void PRMReaderInstance::PRMReaderInstance(PRMReaderInstance *this, PRMReader *a2, uint64_t a3)
{
  *(this + 3) = a2;
  *this = &unk_2870BA558;
  *(this + 1) = a3;
}

void PRMWriterInstance::PRMWriterInstance(PRMWriterInstance *this, PSResourceManagerOptions *a2, char *a3, int a4)
{
  v23 = *MEMORY[0x277D85DE8];
  *this = &unk_2870BA5A0;
  *(this + 22) = 0;
  v7 = this + 176;
  *(this + 23) = 0;
  *(this + 24) = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, *(a2 + 7));
  if (*(this + 199) < 0)
  {
    operator delete(*v7);
  }

  *v7 = *buf;
  *(v7 + 2) = *&buf[16];
  v8 = *(a2 + 5);
  *(this + 25) = v8;
  *(this + 52) = *(a2 + 27);
  v9 = *(a2 + 15) == 2;
  *(this + 152) = v9;
  *(this + 60) = *(a2 + 18) + *(a2 + 17);
  *(this + 43) = -1;
  v10 = *(a2 + 2);
  *(this + 2) = v10;
  if (!v10)
  {
    v12 = v8;
LABEL_7:
    *(this + 328) = v12 == 10;
    if ((v8 - 2) >= 2)
    {
      if (v8 != 12)
      {
LABEL_12:
        *(this + 168) = a4;
        *(this + 12) = 1;
        *(this + 39) = 0;
        if (v12 == 10)
        {
          operator new();
        }

        if (a4)
        {
          operator new();
        }

        return;
      }

      v13 = 152;
    }

    else
    {
      v13 = 144;
    }

    *(this + 29) = *(a2 + v13);
    goto LABEL_12;
  }

  source = ps_gsm_create_source(v10, v9, *(a2 + 7));
  *(this + 3) = source;
  if (source)
  {
    v12 = *(a2 + 5);
    v8 = *(this + 25);
    goto LABEL_7;
  }

  v20 = *(a2 + 7);
  v21 = 0;
  v14 = asprintf(&v21, "Unable to create GSM source for key %s", v20);
  v16 = __PSResourceManagerLogSharedInstance(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v17 = *(a2 + 7);
    *buf = 136315650;
    *&buf[4] = "PRMWriterInstance";
    *&buf[12] = 1024;
    *&buf[14] = 262;
    *&buf[18] = 2080;
    *&buf[20] = v17;
    _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d Unable to create GSM source for key %s", buf, 0x1Cu);
  }

  v18 = OSLogFlushBuffers();
  if (v18)
  {
    __PSResourceManagerLogSharedInstance(v18, v19);
    PRMWriterInstance::PRMWriterInstance();
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  __break(1u);
}

void sub_25EAAE088(_Unwind_Exception *exception_object)
{
  if (*(v1 + 199) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PRMWriterInstance::getKey(PRMWriterInstance *this)
{
  result = this + 176;
  if (*(this + 199) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t PRMWriterInstance::initSharedActionTaker(PRMWriterInstance *this)
{
  result = PSActionTakerManager::createActionTaker(*(this + 39), _shared_publish_callback, this, _shared_teardown_callback, this);
  *(this + 40) = result;
  return result;
}

void PRMWriterInstance::initBuffers(PRMWriterInstance *this, const std::string::value_type **a2, char *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  __p = 0;
  v38 = 0uLL;
  if (a2[15] == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "local-");
    v5 = std::string::append(v39, a2[7]);
    p_p = v5->__r_.__value_.__r.__words[0];
    *v40 = v5->__r_.__value_.__l.__size_;
    *&v40[7] = *(&v5->__r_.__value_.__r.__words[1] + 7);
    v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p);
    }

    __p = p_p;
    *&v38 = *v40;
    *(&v38 + 7) = *&v40[7];
    HIBYTE(v38) = v7;
    if ((v39[23] & 0x80000000) != 0)
    {
      operator delete(*v39);
      v7 = HIBYTE(v38);
      p_p = __p;
    }

    if (v7 >= 0)
    {
      p_p = &__p;
    }

    group_writer_with_options = ps_buffer_create_group_writer_with_options();
  }

  else
  {
    p_p = a2[7];
    group_writer_with_options = ps_buffer_create_group_writer_with_options();
  }

  *(this + 1) = group_writer_with_options;
  v9 = 3;
  *(this + 53) = 3;
  if (*(a2 + 27) == 1)
  {
    v10 = *(this + 25);
    if (v10 <= 0xC)
    {
      if (((1 << v10) & 0x147E) != 0)
      {
        v9 = 3;
        goto LABEL_19;
      }

      if (((1 << v10) & 0x980) != 0)
      {
        v9 = 4;
LABEL_18:
        *(this + 53) = v9;
        goto LABEL_19;
      }

      if (v10 == 9)
      {
        v9 = 7;
        goto LABEL_18;
      }
    }

    *v40 = 0;
    v32 = (this + 176);
    v33 = this + 176;
    if (*(this + 199) < 0)
    {
      v33 = *v32;
    }

    v34 = asprintf(v40, "Received an invalid class type for writer %s", v33);
    v36 = __PSResourceManagerLogSharedInstance(v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 199) < 0)
      {
        v32 = *v32;
      }

      *v39 = 136315650;
      *&v39[4] = "initBuffers";
      *&v39[12] = 1024;
      *&v39[14] = 494;
      *&v39[18] = 2080;
      *&v39[20] = v32;
      _os_log_impl(&dword_25EA3A000, v36, OS_LOG_TYPE_FAULT, "%s:%d Received an invalid class type for writer %s", v39, 0x1Cu);
    }

    v25 = OSLogFlushBuffers();
    if (!v25)
    {
      goto LABEL_91;
    }

    goto LABEL_92;
  }

LABEL_19:
  v11 = a2[5];
  if (v11 <= 10)
  {
    if (v11 != 1)
    {
      if (v11 != 9)
      {
        goto LABEL_28;
      }

      v12 = v9 + 7;
      goto LABEL_27;
    }

LABEL_25:
    *(this + 31) = a2[18];
    goto LABEL_28;
  }

  if (v11 != 11)
  {
    if (v11 != 12)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v12 = v9 + 3;
LABEL_27:
  *(this + 53) = v12;
LABEL_28:
  v13 = MEMORY[0x25F8C8DF0]();
  if ((v13 & 1) == 0)
  {
    v15 = a2[5];
    if (v15 <= 6)
    {
      if (v15 <= 3)
      {
        if ((v15 - 2) < 2)
        {
          v16 = 8;
          MEMORY[0x25F8C8900](*(this + 1), 8);
LABEL_44:
          MEMORY[0x25F8C8900](*(this + 1), v16);
          goto LABEL_48;
        }

        if (v15 != 1)
        {
          goto LABEL_68;
        }

LABEL_43:
        MEMORY[0x25F8C8900](*(this + 1), *(this + 62));
        v16 = 16;
        goto LABEL_44;
      }

      if (v15 != 4)
      {
        if (v15 == 5)
        {
          PRMWriterInstance::installBufferTypeMTLBuffer(v13, v14);
        }

        else
        {
          PRMWriterInstance::installBufferTypeMTLTexture(v13, v14);
        }

        goto LABEL_94;
      }

      PRMWriterInstance::installBufferTypeSurface(this, a2);
    }

    else if (v15 <= 8)
    {
      if (v15 == 7)
      {
        PRMWriterInstance::installBufferTypePixelBuffer(this, a2);
      }

      else
      {
        PRMWriterInstance::installBufferTypeDataBuffer(this, a2);
      }
    }

    else
    {
      switch(v15)
      {
        case 9:
          PRMWriterInstance::installBufferTypeJasperBuffer(this, a2);
          break;
        case 11:
          PRMWriterInstance::installBufferTypePearlBuffer(this, a2);
          break;
        case 12:
          goto LABEL_43;
        default:
LABEL_68:
          *v40 = 0;
          v20 = (this + 176);
          v21 = this + 176;
          if (*(this + 199) < 0)
          {
            v21 = *v20;
          }

          v22 = asprintf(v40, "Received an invalid class type for writer %s", v21);
          v24 = __PSResourceManagerLogSharedInstance(v22, v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            if (*(this + 199) < 0)
            {
              v20 = *v20;
            }

            *v39 = 136315650;
            *&v39[4] = "initBuffers";
            *&v39[12] = 1024;
            *&v39[14] = 565;
            *&v39[18] = 2080;
            *&v39[20] = v20;
            _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_FAULT, "%s:%d Received an invalid class type for writer %s", v39, 0x1Cu);
          }

          v25 = OSLogFlushBuffers();
          if (!v25)
          {
LABEL_91:
            usleep(0x1E8480u);
LABEL_93:
            abort_with_reason();
LABEL_94:
            __break(1u);
            return;
          }

LABEL_92:
          __PSResourceManagerLogSharedInstance(v25, v26);
          PRMWriterInstance::initBuffers();
          goto LABEL_93;
      }
    }

LABEL_48:
    MEMORY[0x25F8C88E0](*(this + 1), 8, 1, 0);
    v17 = *(this + 25);
    if ((v17 - 1) >= 8)
    {
      if (v17 == 9)
      {
        v19 = 4;
        do
        {
          MEMORY[0x25F8C8900](*(this + 1), 8);
          --v19;
        }

        while (v19);
        goto LABEL_50;
      }

      if (v17 != 12)
      {
        if (v17 != 11)
        {
          *v40 = 0;
          v27 = (this + 176);
          v28 = this + 176;
          if (*(this + 199) < 0)
          {
            v28 = *v27;
          }

          v29 = asprintf(v40, "Received an invalid class type for writer %s", v28);
          v31 = __PSResourceManagerLogSharedInstance(v29, v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            if (*(this + 199) < 0)
            {
              v27 = *v27;
            }

            *v39 = 136315650;
            *&v39[4] = "initBuffers";
            *&v39[12] = 1024;
            *&v39[14] = 601;
            *&v39[18] = 2080;
            *&v39[20] = v27;
            _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_FAULT, "%s:%d Received an invalid class type for writer %s", v39, 0x1Cu);
          }

          v25 = OSLogFlushBuffers();
          if (!v25)
          {
            goto LABEL_91;
          }

          goto LABEL_92;
        }

        v18 = 4;
        do
        {
          MEMORY[0x25F8C8900](*(this + 1), 8);
          --v18;
        }

        while (v18);
        goto LABEL_50;
      }
    }

    MEMORY[0x25F8C8900](*(this + 1), 8);
LABEL_50:
    MEMORY[0x25F8C8C70](*(this + 1));
  }

  if ((a2[5] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    PRMWriterInstance::allocateLocalObjects(this, v14);
  }

  PRMWriterInstance::setIOSurfaceNames(this, a2, p_p);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }
}

void sub_25EAAE7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PRMWriterInstance::initWorkingSetDictionaries(PRMWriterInstance *this)
{
  v2 = MEMORY[0x25F8C8C90](*(this + 1));
  v3 = *(this + 25);
  v4 = 2;
  if (v3 <= 6)
  {
    if ((v3 - 1) < 6)
    {
LABEL_3:
      *(this + 54) = v4;
      goto LABEL_4;
    }

LABEL_24:
    inited = PRMWriterInstance::initWorkingSetDictionaries(v17, this);
    PRMWriterInstance::PRMWriterInstance(inited, v14, v15, v16);
    return;
  }

  if (v3 > 10)
  {
    if (v3 != 11)
    {
      if (v3 == 12)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    v12 = *(this + 52);
    if (!v12)
    {
      v4 = 5;
      goto LABEL_3;
    }

    if (v12 == 1)
    {
      v4 = 6;
      goto LABEL_3;
    }
  }

  else if ((v3 - 7) >= 2)
  {
    if (v3 != 9)
    {
      goto LABEL_24;
    }

    v11 = *(this + 52);
    if (!v11)
    {
      v4 = 9;
      goto LABEL_3;
    }

    if (v11 == 1)
    {
      v4 = 13;
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *(this + 52);
    if (v10 < 3)
    {
      v4 = dword_25EB77764[v10];
      goto LABEL_3;
    }
  }

LABEL_4:
  if (*(this + 60))
  {
    v5 = 0;
    v6 = *MEMORY[0x277CBECE8];
    v7 = MEMORY[0x277CBF138];
    v8 = MEMORY[0x277CBF150];
    do
    {
      v9 = *(*(v2 + 8 * v5) + 32 * *(this + 54) + 8);
      *v9 = CFDictionaryCreateMutable(v6, 0, v7, v8);
      ++v5;
    }

    while (v5 < *(this + 60));
  }
}

void PRMWriterInstance::~PRMWriterInstance(PRMWriterInstance *this)
{
  *this = &unk_2870BA5A0;
  if (*(this + 328) == 1)
  {
    v2 = *(this + 42);
    if (v2)
    {
      PRMAneWriter::~PRMAneWriter(v2);
      MEMORY[0x25F8C7C50]();
    }

    *(this + 42) = 0;
  }

  else if (*(this + 168) == 1)
  {
    PRMWriterInstance::deinitWorkingSetDictionaries(this);
    PRMWriterInstance::deinitBuffers(this, v3);
    PRMWriterInstance::deinitSharedActionTaker(this);
    PSActionTakerManager::flushRemovalRequests(*(this + 39));
    ps_gsm_remove_source(*(this + 2), *(this + 3));
    v4 = *(this + 39);
    if (v4)
    {
      PSActionTakerManager::~PSActionTakerManager(v4);
      MEMORY[0x25F8C7C50]();
    }
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }
}

{
  PRMWriterInstance::~PRMWriterInstance(this);

  JUMPOUT(0x25F8C7C50);
}

void PRMWriterInstance::deinitWorkingSetDictionaries(PRMWriterInstance *this)
{
  v2 = MEMORY[0x25F8C8C90](*(this + 1));
  v3 = *(this + 60);
  if (v3)
  {
    v4 = v2;
    for (i = 0; i < v3; ++i)
    {
      v6 = **(*(v4 + 8 * i) + 32 * *(this + 54) + 8);
      if (v6)
      {
        CFRelease(v6);
        v3 = *(this + 60);
      }
    }
  }
}

uint64_t PRMWriterInstance::deinitBuffers(PRMWriterInstance *this, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(this + 25);
  if (v3 == 3)
  {
    v6 = __PSResourceManagerLogSharedInstance(this, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = (this + 176);
      if (*(this + 199) < 0)
      {
        v7 = *v7;
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "Deiniting Opaque buffer for key %s", &v9, 0xCu);
    }

    ps_prm_deallocate_opaque_array(*(this + 29), *(this + 28), *(this + 60));
  }

  else if (v3 == 2)
  {
    v4 = __PSResourceManagerLogSharedInstance(this, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = (this + 176);
      if (*(this + 199) < 0)
      {
        v5 = *v5;
      }

      v9 = 136315138;
      v10 = v5;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "Deiniting NSObject buffers for key %s", &v9, 0xCu);
    }

    ps_prm_deallocate_retained_nsobject_array(*(this + 29), *(this + 28), *(this + 60));
  }

  if (!*(this + 1))
  {
    PRMWriterInstance::deinitBuffers(&v9, this);
  }

  result = ps_buffer_delete_write_buffer();
  *(this + 1) = 0;
  return result;
}

void PRMWriterInstance::deinitSharedActionTaker(PRMWriterInstance *this)
{
  v3 = *(this + 40);
  if (v3)
  {
    v4 = *(this + 39);

    PSActionTakerManager::requestRemoveActionTaker(v4, v3);
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = PRMWriterInstance::deinitSharedActionTaker(v6, this);
    PRMWriterInstance::~PRMWriterInstance(v5);
  }
}

void _shared_teardown_callback(uint64_t a1, uint64_t a2)
{
  v2 = __PSResourceManagerLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEBUG, "Deleting shared action taker", v3, 2u);
  }
}

uint64_t PRMWriterInstance::installBufferTypeSurface(PRMWriterInstance *this, PSResourceManagerOptions *a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    v5 = a2 + 144;
    v4 = _iosurfaceAllocator;
LABEL_5:
    MEMORY[0x25F8C8DB0](*(this + 1), v4, v5);

    JUMPOUT(0x25F8C8900);
  }

  if (v3 == 2)
  {
    v4 = *(a2 + 21);
    v5 = *(a2 + 22);
    goto LABEL_5;
  }

  v6 = PRMWriterInstance::installBufferTypeSurface(&v9);
  return PRMWriterInstance::installBufferTypeMTLBuffer(v6, v7);
}

uint64_t PRMWriterInstance::installBufferTypeMTLBuffer(PRMWriterInstance *this, PSResourceManagerOptions *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = asprintf(&v12, "MTLBuffer type not yet implemented.");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v14 = "installBufferTypeMTLBuffer";
    v15 = 1024;
    v16 = 915;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d MTLBuffer type not yet implemented.", buf, 0x12u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v7 = v5;
    v8 = __PSResourceManagerLogSharedInstance(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "installBufferTypeMTLBuffer";
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = abort_with_reason();
  return PRMWriterInstance::installBufferTypeMTLTexture(v9, v10);
}

uint64_t PRMWriterInstance::installBufferTypeMTLTexture(PRMWriterInstance *this, PSResourceManagerOptions *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = asprintf(&v12, "MTLTexture type not yet implemented.");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v14 = "installBufferTypeMTLTexture";
    v15 = 1024;
    v16 = 921;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d MTLTexture type not yet implemented.", buf, 0x12u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v7 = v5;
    v8 = __PSResourceManagerLogSharedInstance(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "installBufferTypeMTLTexture";
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = abort_with_reason();
  return PRMWriterInstance::installBufferTypePixelBuffer(v9, v10);
}

uint64_t PRMWriterInstance::installBufferTypePixelBuffer(PRMWriterInstance *this, PSResourceManagerOptions *a2)
{
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    v5 = a2 + 144;
    v6 = _cvPixelBufferAllocator;
  }

  else
  {
    if (v4 != 2)
    {
      PRMWriterInstance::installBufferTypePixelBuffer(&v13);
      goto LABEL_19;
    }

    v6 = *(a2 + 22);
    v5 = *(a2 + 23);
  }

  v7 = *(a2 + 27);
  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v9 = 8;
      goto LABEL_12;
    }

    if (*(a2 + 21))
    {
      MEMORY[0x25F8C8DB0](*(this + 1), _metadataIOSurfaceAllocator);
      goto LABEL_13;
    }

LABEL_19:
    v11 = PRMWriterInstance::installBufferTypePixelBuffer(&v13);
    return PRMWriterInstance::installBufferTypeDataBuffer(v11, v12);
  }

  v8 = *(this + 1);
  v9 = 90112;
LABEL_12:
  MEMORY[0x25F8C8900](v8, v9);
LABEL_13:
  result = MEMORY[0x25F8C8DA0](*(this + 1), v6, v5);
  if (*(a2 + 27) == 1)
  {

    JUMPOUT(0x25F8C8900);
  }

  return result;
}

uint64_t PRMWriterInstance::installBufferTypeDataBuffer(PRMWriterInstance *this, PSResourceManagerOptions *a2)
{
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    v5 = a2 + 144;
    v6 = _cvDataBufferAllocator;
  }

  else
  {
    if (v4 != 2)
    {
      PRMWriterInstance::installBufferTypeDataBuffer(&v13);
      goto LABEL_19;
    }

    v6 = *(a2 + 21);
    v5 = *(a2 + 22);
  }

  v7 = *(a2 + 27);
  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v9 = 8;
      goto LABEL_12;
    }

    if (*(a2 + 20))
    {
      MEMORY[0x25F8C8DB0](*(this + 1), _metadataIOSurfaceAllocator);
      goto LABEL_13;
    }

LABEL_19:
    v11 = PRMWriterInstance::installBufferTypeDataBuffer(&v13);
    return PRMWriterInstance::installBufferTypeJasperBuffer(v11, v12);
  }

  v8 = *(this + 1);
  v9 = 90112;
LABEL_12:
  MEMORY[0x25F8C8900](v8, v9);
LABEL_13:
  result = MEMORY[0x25F8C8D90](*(this + 1), v6, v5);
  if (*(a2 + 27) == 1)
  {

    JUMPOUT(0x25F8C8900);
  }

  return result;
}

uint64_t PRMWriterInstance::installBufferTypeJasperBuffer(PRMWriterInstance *this, PSResourceManagerOptions *a2)
{
  v2 = a2;
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    v5 = a2 + 144;
    v6 = _cvDataBufferAllocator;
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v6 = *(a2 + 21);
    v5 = *(a2 + 22);
LABEL_5:
    v7 = 4;
    while (1)
    {
      v8 = *(v2 + 27);
      if (v8 == 1)
      {
        if (!*(v2 + 20))
        {
          PRMWriterInstance::installBufferTypeJasperBuffer(buf);
LABEL_19:
          v26 = 0;
          v10 = asprintf(&v26, "Unsupported metadata type submitted for Jasper, type %d", v8);
          v12 = __PSResourceManagerLogSharedInstance(v10, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            v13 = *(v2 + 27);
            *buf = 136315650;
            v28 = "installBufferTypeJasperBuffer";
            v29 = 1024;
            v30 = 1042;
            v31 = 1024;
            v32 = v13;
            _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type submitted for Jasper, type %d", buf, 0x18u);
          }

          v14 = OSLogFlushBuffers();
          if (v14)
          {
            v16 = v14;
            v2 = __PSResourceManagerLogSharedInstance(v14, v15);
            if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          goto LABEL_22;
        }

        MEMORY[0x25F8C8DB0](*(this + 1), _metadataIOSurfaceAllocator);
      }

      else
      {
        if (v8)
        {
          goto LABEL_19;
        }

        MEMORY[0x25F8C8900](*(this + 1), 90112);
      }

      MEMORY[0x25F8C8D90](*(this + 1), v6, v5);
      if (*(v2 + 27) == 1)
      {
        MEMORY[0x25F8C8900](*(this + 1), 8);
      }

      if (!--v7)
      {
        v9 = *(v2 + 27);
        if (v9 < 2)
        {

          JUMPOUT(0x25F8C8900);
        }

        while (1)
        {
          v26 = 0;
          v17 = asprintf(&v26, "Unsupported metadata type submitted for Jasper, type %d", v9);
          v19 = __PSResourceManagerLogSharedInstance(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            v20 = *(v2 + 27);
            *buf = 136315650;
            v28 = "installBufferTypeJasperBuffer";
            v29 = 1024;
            v30 = 1059;
            v31 = 1024;
            v32 = v20;
            _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type submitted for Jasper, type %d", buf, 0x18u);
          }

          v21 = OSLogFlushBuffers();
          if (v21)
          {
            v16 = v21;
            v2 = __PSResourceManagerLogSharedInstance(v21, v22);
            if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
            {
LABEL_24:
              *buf = 136315394;
              v28 = "installBufferTypeJasperBuffer";
              v29 = 1024;
              v30 = v16;
              _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
            }
          }

          else
          {
LABEL_22:
            usleep(0x1E8480u);
          }

LABEL_25:
          abort_with_reason();
        }
      }
    }
  }

  v23 = PRMWriterInstance::installBufferTypeJasperBuffer(buf);
  return PRMWriterInstance::installBufferTypePearlBuffer(v23, v24);
}

uint64_t PRMWriterInstance::installBufferTypePearlBuffer(PRMWriterInstance *this, PSResourceManagerOptions *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 16) - 1) >= 2)
  {
    PRMWriterInstance::installBufferTypePearlBuffer(buf);
  }

  v4 = *(a2 + 27);
  if (v4 == 1)
  {
    if (!*(a2 + 26))
    {
      PRMWriterInstance::installBufferTypePearlBuffer(buf);
LABEL_25:
      v18 = PRMWriterInstance::installBufferTypePearlBuffer(buf);
      goto LABEL_26;
    }

    MEMORY[0x25F8C8DB0](*(this + 1), _metadataIOSurfaceAllocator);
  }

  else
  {
    if (v4)
    {
      v32 = 0;
      v14 = asprintf(&v32, "Unsupported metadata type submitted for Jasper, type %d", v4);
      v16 = __PSResourceManagerLogSharedInstance(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = *(a2 + 27);
        *buf = 136315650;
        *v37 = "installBufferTypePearlBuffer";
        *&v37[8] = 1024;
        *&v37[10] = 1084;
        *&v37[14] = 1024;
        *&v37[16] = v17;
        _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type submitted for Jasper, type %d", buf, 0x18u);
      }

      v18 = OSLogFlushBuffers();
      if (!v18)
      {
        usleep(0x1E8480u);
LABEL_28:
        v22 = abort_with_reason();
        return PRMWriterInstance::allocateLocalObjects(v22, v23);
      }

LABEL_26:
      v20 = v18;
      v21 = __PSResourceManagerLogSharedInstance(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v37 = "installBufferTypePearlBuffer";
        *&v37[8] = 1024;
        *&v37[10] = v20;
        _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }

      goto LABEL_28;
    }

    MEMORY[0x25F8C8900](*(this + 1), 90112);
  }

  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    if (*(a2 + 192))
    {
      *&v37[4] = 0u;
      v39 = 0;
      v38 = 0u;
      v8 = *(a2 + 41);
      *buf = *(a2 + 37);
      *v37 = v8;
      *&v37[4] = *(a2 + 45);
      MEMORY[0x25F8C8DA0](*(this + 1), _cvPixelBufferAllocator, buf);
      v33 = 0u;
      v35 = 0;
      v34 = 0u;
      v9 = *(a2 + 42);
      LODWORD(v32) = *(a2 + 38);
      HIDWORD(v32) = v9;
      LODWORD(v33) = *(a2 + 46);
      MEMORY[0x25F8C8DA0](*(this + 1), _cvPixelBufferAllocator, &v32);
      v29 = 0u;
      v31 = 0;
      v30 = 0u;
      v10 = *(a2 + 43);
      v28[0] = *(a2 + 39);
      v28[1] = v10;
      LODWORD(v29) = *(a2 + 47);
      MEMORY[0x25F8C8DA0](*(this + 1), _cvPixelBufferAllocator, v28);
      v25 = 0u;
      v27 = 0;
      v26 = 0u;
      v11 = *(a2 + 40);
      v24[0] = *(a2 + 36);
      v24[1] = v11;
      LODWORD(v25) = *(a2 + 44);
      result = MEMORY[0x25F8C8DA0](*(this + 1), _cvPixelBufferAllocator, v24);
    }

    else
    {
      *&v37[4] = 0u;
      v39 = 0;
      v38 = 0u;
      v12 = *(a2 + 40);
      *buf = *(a2 + 36);
      *v37 = v12;
      *&v37[4] = *(a2 + 44);
      v13 = 4;
      do
      {
        result = MEMORY[0x25F8C8DA0](*(this + 1), _cvPixelBufferAllocator, buf);
        --v13;
      }

      while (v13);
    }

    goto LABEL_16;
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  v6 = 4;
  do
  {
    result = MEMORY[0x25F8C8DA0](*(this + 1), *(a2 + 27), *(a2 + 28));
    --v6;
  }

  while (v6);
LABEL_16:
  if (*(a2 + 27) == 1)
  {
    return MEMORY[0x25F8C8900](*(this + 1), 8);
  }

  return result;
}

uint64_t PRMWriterInstance::allocateLocalObjects(PRMWriterInstance *this, PSResourceManagerOptions *a2)
{
  v3 = *(this + 25);
  if (v3 == 3)
  {
    ps_prm_allocate_opaque_array(*(this + 29), *(this + 60));
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_6;
    }

    retained_nsobject_array = ps_prm_allocate_retained_nsobject_array(*(this + 29), *(this + 60));
  }

  *(this + 28) = retained_nsobject_array;
LABEL_6:
  result = MEMORY[0x25F8C8C90](*(this + 1));
  v6 = *(this + 60);
  if (v6)
  {
    v7 = 0;
    v8 = 8 * v6;
    do
    {
      **(*(result + v7) + 8) = *(*(this + 28) + v7);
      v7 += 8;
    }

    while (v8 != v7);
  }

  return result;
}

void PRMWriterInstance::setIOSurfaceNames(PRMWriterInstance *this, PSResourceManagerOptions *a2, const char *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(this + 25);
  if (v3 <= 8 && ((1 << v3) & 0x190) != 0)
  {
    v8 = v3 > 8;
    v9 = (1 << v3) & 0x190;
    if (!v8 && v9 != 0)
    {
      v11 = ps_buffer_get_total_write_buffer_count();
      if (v11 != -1)
      {
        v34 = &v34;
        v35 = a2;
        v12 = v11;
        MEMORY[0x28223BE20](v11);
        v14 = &v34 - ((v13 + 15) & 0xFFFFFFFF0);
        if (v13 >= 0x200)
        {
          v15 = 512;
        }

        else
        {
          v15 = v13;
        }

        bzero(&v34 - ((v13 + 15) & 0xFFFFFFFF0), v15);
        bzero(v14, 8 * v12);
        PRMWriterInstance::getIOSurfaces(this, v14);
        if (v12 >= 1)
        {
          v16 = 0;
          v17 = *MEMORY[0x277CD2A50];
          do
          {
            v18 = getprogname();
            v19 = v16 + 1;
            snprintf(v36, 0xFFuLL, "%s/Polaris ; %s ; %d/%d", v18, a3, v16 + 1, v12);
            v20 = CFStringCreateWithCString(0, v36, 0x8000100u);
            if (v20)
            {
              v21 = v20;
              IOSurfaceSetValue(*&v14[8 * v16], v17, v20);
              CFRelease(v21);
            }

            ++v16;
          }

          while (v12 != v19);
        }

        a2 = v35;
      }
    }

    if (*(a2 + 27) == 1)
    {
      v22 = *(this + 25);
      if (v22 <= 9 && ((1 << v22) & 0x390) != 0)
      {
        v23 = ps_buffer_get_total_write_buffer_count();
        if (v23 != -1)
        {
          v24 = v23;
          MEMORY[0x28223BE20](v23);
          v26 = &v34 - ((v25 + 15) & 0xFFFFFFFF0);
          v27 = v25 >= 0x200 ? 512 : v25;
          bzero(&v34 - ((v25 + 15) & 0xFFFFFFFF0), v27);
          bzero(v26, 8 * v24);
          PRMWriterInstance::getMetadataIOSurfaces(this, v26);
          if (v24 >= 1)
          {
            v28 = 0;
            v29 = *MEMORY[0x277CD2A50];
            do
            {
              v30 = getprogname();
              v31 = v28 + 1;
              snprintf(v36, 0xFFuLL, "%s/Polaris ; metadata/%s/ ; %d/%d", v30, a3, v28 + 1, v24);
              v32 = CFStringCreateWithCString(0, v36, 0x8000100u);
              if (v32)
              {
                v33 = v32;
                IOSurfaceSetValue(*&v26[8 * v28], v29, v32);
                CFRelease(v33);
              }

              ++v28;
            }

            while (v24 != v31);
          }
        }
      }
    }
  }
}

uint64_t PRMWriterInstance::acquireResources(PRMWriterInstance *this, ps_resource *a2, void *a3)
{
  if (*(this + 305) == 1)
  {
    PRMWriterInstance::acquireResources(v9, this, a3);
    goto LABEL_37;
  }

  v5 = ps_buffer_get_write_buffers();
  if (!v5)
  {
LABEL_37:
    PRMWriterInstance::acquireResources(v9, this);
LABEL_38:
    if (v7 == 5)
    {
LABEL_41:
      PRMWriterInstance::_populateClientResTypeMTLBuffer();
      goto LABEL_42;
    }

    if (v7 == 6)
    {
      PRMWriterInstance::populateClientResTypeMTLTexture();
      goto LABEL_41;
    }

LABEL_42:
    PRMWriterInstance::acquireResources(v9, this);
    return PRMWriterInstance::_populateClientResTypeMTLBuffer();
  }

  v6 = v5;
  *(this + 4) = v5;
  *(this + 5) = a2;
  *(this + 305) = 1;
  *(this + 43) = ps_buffer_get_resource_view_index();
  MEMORY[0x25F8C94C0](a2, 0, 1);
  v7 = *(this + 25);
  if (v7 <= 6)
  {
    if (v7 < 3)
    {
      if (v7 == 1)
      {
        goto LABEL_24;
      }

      if (v7 != 2)
      {
        goto LABEL_42;
      }
    }

    else if (v7 > 3)
    {
      if (v7 == 4)
      {

        JUMPOUT(0x25F8C9490);
      }

      goto LABEL_38;
    }

    JUMPOUT(0x25F8C9530);
  }

  if (v7 <= 8)
  {
    if (v7 == 7)
    {

      return PRMWriterInstance::_populateClientResTypePixelBuffer(this, v6, a2, 0);
    }

    else
    {

      return PRMWriterInstance::_populateClientResTypeDataBuffer(this, v6, a2, 0);
    }
  }

  else
  {
    switch(v7)
    {
      case 9:

        return PRMWriterInstance::_populateClientResTypeJasperBuffer(this, v6, a2, 0);
      case 11:

        return PRMWriterInstance::_populateClientResTypePearlBuffer(this, v6, a2, 0);
      case 12:
LABEL_24:

        JUMPOUT(0x25F8C9460);
      default:
        goto LABEL_42;
    }
  }
}

uint64_t PRMWriterInstance::_populateClientResTypeMTLBuffer()
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v0 = asprintf(&v8, "MTLBuffer type not yet implemented.");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "_populateClientResTypeMTLBuffer";
    v11 = 1024;
    v12 = 1243;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d MTLBuffer type not yet implemented.", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "_populateClientResTypeMTLBuffer";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return PRMWriterInstance::populateClientResTypeMTLTexture();
}

uint64_t PRMWriterInstance::populateClientResTypeMTLTexture()
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v0 = asprintf(&v12, "MTLTexture type not yet implemented.");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v14 = "populateClientResTypeMTLTexture";
    v15 = 1024;
    v16 = 1249;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d MTLTexture type not yet implemented.", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "populateClientResTypeMTLTexture";
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PRMWriterInstance::_populateClientResTypePixelBuffer(v7, v8, v9, v10);
}

uint64_t PRMWriterInstance::_populateClientResTypePixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  v7 = *(a1 + 208);
  if (v7 == 2)
  {

    JUMPOUT(0x25F8C9430);
  }

  if (v7 == 1)
  {

    JUMPOUT(0x25F8C9450);
  }

  if (v7)
  {
    v25 = 0;
    v11 = (a1 + 176);
    v12 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v12 = *v11;
    }

    v13 = asprintf(&v25, "Invalid metadata type found: %d for key: %s", v7, v12);
    v15 = __PSResourceManagerLogSharedInstance(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = *(a1 + 208);
      if (*(a1 + 199) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315906;
      v27 = "_populateClientResTypePixelBuffer";
      v28 = 1024;
      v29 = 1294;
      v30 = 1024;
      v31 = v16;
      v32 = 2080;
      v33 = v11;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d Invalid metadata type found: %d for key: %s", buf, 0x22u);
    }

    v17 = OSLogFlushBuffers();
    if (v17)
    {
      v19 = v17;
      v20 = __PSResourceManagerLogSharedInstance(v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "_populateClientResTypePixelBuffer";
        v28 = 1024;
        v29 = v19;
        _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v21 = abort_with_reason();
    return PRMWriterInstance::_populateClientResTypeDataBuffer(v21, v22, v23, v24);
  }

  else
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 90100);
    result = MEMORY[0x25F8C9430](a3, a4, v6, Mutable);
    *(a1 + 56) = Mutable;
  }

  return result;
}

uint64_t PRMWriterInstance::_populateClientResTypeDataBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  v7 = *(a1 + 208);
  if (v7 == 2)
  {

    JUMPOUT(0x25F8C9400);
  }

  if (v7 == 1)
  {

    JUMPOUT(0x25F8C9420);
  }

  if (v7)
  {
    v25 = 0;
    v11 = (a1 + 176);
    v12 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v12 = *v11;
    }

    v13 = asprintf(&v25, "Invalid metadata type found: %d for key: %s", v7, v12);
    v15 = __PSResourceManagerLogSharedInstance(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = *(a1 + 208);
      if (*(a1 + 199) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315906;
      v27 = "_populateClientResTypeDataBuffer";
      v28 = 1024;
      v29 = 1337;
      v30 = 1024;
      v31 = v16;
      v32 = 2080;
      v33 = v11;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d Invalid metadata type found: %d for key: %s", buf, 0x22u);
    }

    v17 = OSLogFlushBuffers();
    if (v17)
    {
      v19 = v17;
      v20 = __PSResourceManagerLogSharedInstance(v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "_populateClientResTypeDataBuffer";
        v28 = 1024;
        v29 = v19;
        _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v21 = abort_with_reason();
    return PRMWriterInstance::_populateClientResTypeJasperBuffer(v21, v22, v23, v24);
  }

  else
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 90100);
    result = MEMORY[0x25F8C9400](a3, a4, v6, Mutable);
    *(a1 + 56) = Mutable;
  }

  return result;
}

uint64_t PRMWriterInstance::_populateClientResTypeJasperBuffer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(result + 208);
  if (v4 == 1)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v10 = (a2 + 40);
    do
    {
      *(v12 + v9) = *(v10 - 4);
      v11 = *v10;
      v10 += 12;
      *(result + 96 + v9) = v11;
      v9 += 8;
    }

    while (v9 != 32);
    return MEMORY[0x25F8C94E0](a3, a4);
  }

  else if (!v4)
  {
    v5 = 0;
    v6 = *MEMORY[0x277CBECE8];
    v7 = a2 + 40;
    v8 = (result + 96);
    do
    {
      *(v8 - 4) = CFDataCreateMutable(v6, 90100);
      *v8++ = *(v7 + v5);
      v5 += 64;
    }

    while (v5 != 256);

    JUMPOUT(0x25F8C94D0);
  }

  return result;
}

uint64_t PRMWriterInstance::_populateClientResTypePearlBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 208);
  if (v8 == 1)
  {
    v14 = 0;
    v15 = (a2 + 40);
    do
    {
      v16 = *v15;
      v15 += 4;
      *(a1 + 136 + v14) = v16;
      v14 += 8;
    }

    while (v14 != 32);

    JUMPOUT(0x25F8C9550);
  }

  if (v8)
  {
    v28 = 0;
    v17 = (a1 + 176);
    v18 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v18 = *v17;
    }

    v19 = asprintf(&v28, "Invalid metadata type found: %d for key: %s", v8, v18);
    v21 = __PSResourceManagerLogSharedInstance(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v22 = *(a1 + 208);
      if (*(a1 + 199) < 0)
      {
        v17 = *v17;
      }

      *buf = 136315906;
      v30 = "_populateClientResTypePearlBuffer";
      v31 = 1024;
      v32 = 1429;
      v33 = 1024;
      v34 = v22;
      v35 = 2080;
      v36 = v17;
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_FAULT, "%s:%d Invalid metadata type found: %d for key: %s", buf, 0x22u);
    }

    v23 = OSLogFlushBuffers();
    if (v23)
    {
      v25 = v23;
      v26 = __PSResourceManagerLogSharedInstance(v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "_populateClientResTypePearlBuffer";
        v31 = 1024;
        v32 = v25;
        _os_log_impl(&dword_25EA3A000, v26, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v27 = abort_with_reason();
    return PRMWriterInstance::relinquishResources(v27);
  }

  else
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 90100);
    v10 = 0;
    *(a1 + 128) = Mutable;
    v11 = (a2 + 40);
    do
    {
      v12 = *v11;
      v11 += 4;
      *(a1 + 136 + v10) = v12;
      v10 += 8;
    }

    while (v10 != 32);
    result = MEMORY[0x25F8C9540](a3, a4, *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), Mutable);
    *(a1 + 56) = *(a1 + 128);
  }

  return result;
}

uint64_t PRMWriterInstance::relinquishResources(PRMWriterInstance *this)
{
  v1 = this;
  v42[4] = *MEMORY[0x277D85DE8];
  if ((*(this + 305) & 1) == 0)
  {
    LODWORD(result) = PRMWriterInstance::relinquishResources(buf, this);
    goto LABEL_37;
  }

  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = *(this + 25);
  if ((v4 - 1) >= 8)
  {
    goto LABEL_14;
  }

LABEL_3:
  v5 = *(v2 + 32 * *(v1 + 212) + 8);
  v6 = MEMORY[0x25F8C9260](v3, 0);
  *v5 = v6;
  while (1)
  {
    v7 = *(v1 + 200);
    if (v7 > 6)
    {
      if (v7 <= 8)
      {
LABEL_18:
        if (v7 == 7)
        {
          PRMWriterInstance::finalizeClientWriteTypePixelBuffer(v1, v2, v3, 0, v6);
        }

        else
        {
          if (v7 != 8)
          {
            goto LABEL_49;
          }

          PRMWriterInstance::finalizeClientWriteTypeDataBuffer(v1, v2, v3, 0, v6);
        }

        goto LABEL_30;
      }

      if (v7 == 9)
      {
        PRMWriterInstance::finalizeClientWriteTypeJasperBuffer(v1, v2, v3, 0, v42);
        goto LABEL_30;
      }

      if (v7 == 11)
      {
        PRMWriterInstance::finalizeClientWriteTypePearlBuffer(v1, v2, v3, 0, v41);
        goto LABEL_30;
      }

      if (v7 != 12)
      {
        goto LABEL_49;
      }

LABEL_25:
      if (v6)
      {
        v9 = *(v2 + 40);
        *v9 = MEMORY[0x25F8C9240](v3, 0);
        v9[1] = *(v1 + 248);
      }

      goto LABEL_30;
    }

    if (v7 < 3)
    {
      break;
    }

    if (v7 <= 4)
    {
      goto LABEL_23;
    }

    if (v7 == 5)
    {
      goto LABEL_48;
    }

    PRMWriterInstance::finalizeClientWriteTypeMTLTexture();
LABEL_14:
    switch(v4)
    {
      case 9:
        MEMORY[0x25F8C91A0](v3, 0);
        valid_array = ps_resource_jasperbuffer_get_valid_array();
        v20 = 0;
        v21 = *(v1 + 212);
        do
        {
          v22 = *(valid_array + v20);
          **(v2 + 32 * v21 + 8) = v22;
          v42[v20++] = v22;
          ++v21;
        }

        while (v20 != 4);
        v6 = 0;
        break;
      case 11:
        MEMORY[0x25F8C91F0](v3, 0);
        v11 = *(v2 + 32 * *(v1 + 212) + 8);
        is_dx_valid = ps_resource_pearlbuffer_is_dx_valid();
        *v11 = is_dx_valid;
        v41[0] = is_dx_valid;
        v13 = *(v2 + 32 * (*(v1 + 212) + 1) + 8);
        is_dy_valid = ps_resource_pearlbuffer_is_dy_valid();
        *v13 = is_dy_valid;
        v41[1] = is_dy_valid;
        v15 = *(v2 + 32 * (*(v1 + 212) + 2) + 8);
        is_score_valid = ps_resource_pearlbuffer_is_score_valid();
        *v15 = is_score_valid;
        v41[2] = is_score_valid;
        v17 = *(v2 + 32 * (*(v1 + 212) + 3) + 8);
        is_depth_valid = ps_resource_pearlbuffer_is_depth_valid();
        v6 = 0;
        *v17 = is_depth_valid;
        v41[3] = is_depth_valid;
        break;
      case 12:
        goto LABEL_3;
      default:
        PRMWriterInstance::relinquishResources(buf, v1);
        goto LABEL_18;
    }
  }

  if (v7 == 1)
  {
    goto LABEL_25;
  }

  if (v7 != 2)
  {
    goto LABEL_49;
  }

LABEL_23:
  if (v6)
  {
    v8 = *(v2 + 40);
    *v8 = MEMORY[0x25F8C9240](v3, 0);
  }

LABEL_30:
  result = ps_buffer_release_write_buffers();
  if ((result & 0x80000000) == 0)
  {
    *(v1 + 305) = 0;
    return result;
  }

LABEL_37:
  v23 = result;
  v32 = 0;
  v24 = (v1 + 176);
  v25 = (v1 + 176);
  if (*(v1 + 199) < 0)
  {
    v25 = *v24;
  }

  v26 = asprintf(&v32, "ps_buffer_release_write_buffers failed for %s with error %d", v25, result);
  v28 = __PSResourceManagerLogSharedInstance(v26, v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    if (*(v1 + 199) < 0)
    {
      v24 = *v24;
    }

    *buf = 136315906;
    v34 = "relinquishResources";
    v35 = 1024;
    v36 = 840;
    v37 = 2080;
    v38 = v24;
    v39 = 1024;
    v40 = v23;
    _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_FAULT, "%s:%d ps_buffer_release_write_buffers failed for %s with error %d", buf, 0x22u);
  }

  v29 = OSLogFlushBuffers();
  if (v29)
  {
    v31 = v29;
    v1 = __PSResourceManagerLogSharedInstance(v29, v30);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "relinquishResources";
      v35 = 1024;
      v36 = v31;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
LABEL_48:
  PRMWriterInstance::finalizeClientWriteTypeMTLBuffer();
LABEL_49:
  PRMWriterInstance::relinquishResources(buf, v1);
  return PRMWriterInstance::finalizeClientWriteTypeMTLBuffer();
}

uint64_t PRMWriterInstance::finalizeClientWriteTypeMTLBuffer()
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v0 = asprintf(&v8, "MTLBuffer type not yet implemented.");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "finalizeClientWriteTypeMTLBuffer";
    v11 = 1024;
    v12 = 1531;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d MTLBuffer type not yet implemented.", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "finalizeClientWriteTypeMTLBuffer";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return PRMWriterInstance::finalizeClientWriteTypeMTLTexture();
}

void PRMWriterInstance::finalizeClientWriteTypeMTLTexture()
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v0 = asprintf(&v12, "MTLTexture type not yet implemented.");
  v2 = __PSResourceManagerLogSharedInstance(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v14 = "finalizeClientWriteTypeMTLTexture";
    v15 = 1024;
    v16 = 1540;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d MTLTexture type not yet implemented.", buf, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v5 = v3;
    v6 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "finalizeClientWriteTypeMTLTexture";
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  PRMWriterInstance::finalizeClientWriteTypePixelBuffer(v7, v8, v9, v10, v11);
}

void PRMWriterInstance::finalizeClientWriteTypePixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    MEMORY[0x25F8C9210](a3, a4);
    cvpixelbuffer = ps_resource_pixelbuffer_get_cvpixelbuffer();
    v10 = *(a1 + 208);
    if (v10 == 2)
    {
      v18 = 8;
    }

    else
    {
      if (v10 != 1)
      {
        if (v10)
        {
          v35 = 0;
          v20 = (a1 + 176);
          v21 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v21 = *v20;
          }

          v22 = asprintf(&v35, "Invalid metadata type found: %d for key: %s", v10, v21);
          v24 = __PSResourceManagerLogSharedInstance(v22, v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            v25 = *(a1 + 208);
            if (*(a1 + 199) < 0)
            {
              v20 = *v20;
            }

            *buf = 136315906;
            v37 = "finalizeClientWriteTypePixelBuffer";
            v38 = 1024;
            v39 = 1600;
            v40 = 1024;
            v41 = v25;
            v42 = 2080;
            v43 = v20;
            _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_FAULT, "%s:%d Invalid metadata type found: %d for key: %s", buf, 0x22u);
          }

          v26 = OSLogFlushBuffers();
          if (!v26)
          {
            usleep(0x1E8480u);
LABEL_27:
            v30 = abort_with_reason();
            PRMWriterInstance::finalizeClientWriteTypeDataBuffer(v30, v31, v32, v33, v34);
            return;
          }
        }

        else
        {
          v11 = cvpixelbuffer;
          metadata = ps_resource_pixelbuffer_get_metadata();
          Length = CFDataGetLength(metadata);
          if (Length < 0x15FF5)
          {
            v14 = *(a2 + 8);
            v15 = MEMORY[0x25F8C9240](a3, a4);
            IOSurface = CVPixelBufferGetIOSurface(v11);
            ID = IOSurfaceGetID(IOSurface);
            *v14 = Length;
            *(v14 + 8) = v15;
            *(v14 + 16) = ID;
            if (Length)
            {
              v45.location = 0;
              v45.length = Length;
              CFDataGetBytes(metadata, v45, (v14 + 20));
            }

            if (metadata != *(a1 + 56))
            {
              PRMWriterInstance::finalizeClientWriteTypePixelBuffer();
            }

            goto LABEL_13;
          }

          v26 = PRMWriterInstance::finalizeClientWriteTypePixelBuffer(buf, a1);
        }

        v28 = v26;
        v29 = __PSResourceManagerLogSharedInstance(v26, v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v37 = "finalizeClientWriteTypePixelBuffer";
          v38 = 1024;
          v39 = v28;
          _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }

        goto LABEL_27;
      }

      v18 = 72;
    }

    v19 = *(a2 + v18);
    *v19 = MEMORY[0x25F8C9240](a3, a4);
  }

LABEL_13:
  if (!*(a1 + 208))
  {
    CFRelease(*(a1 + 56));
    *(a1 + 56) = 0;
  }
}

void PRMWriterInstance::finalizeClientWriteTypeDataBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v9 = *(a1 + 208);
    if (v9 == 2)
    {
      v16 = 8;
    }

    else
    {
      if (v9 != 1)
      {
        if (v9)
        {
          v33 = 0;
          v18 = (a1 + 176);
          v19 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v19 = *v18;
          }

          v20 = asprintf(&v33, "Invalid metadata type found: %d for key: %s", v9, v19);
          v22 = __PSResourceManagerLogSharedInstance(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            v23 = *(a1 + 208);
            if (*(a1 + 199) < 0)
            {
              v18 = *v18;
            }

            *buf = 136315906;
            v35 = "finalizeClientWriteTypeDataBuffer";
            v36 = 1024;
            v37 = 1666;
            v38 = 1024;
            v39 = v23;
            v40 = 2080;
            v41 = v18;
            _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_FAULT, "%s:%d Invalid metadata type found: %d for key: %s", buf, 0x22u);
          }

          v24 = OSLogFlushBuffers();
          if (!v24)
          {
            usleep(0x1E8480u);
LABEL_27:
            v28 = abort_with_reason();
            PRMWriterInstance::finalizeClientWriteTypeJasperBuffer(v28, v29, v30, v31, v32);
            return;
          }
        }

        else
        {
          MEMORY[0x25F8C9160](a3, a4);
          ps_resource_databuffer_get_databuffer();
          metadata = ps_resource_databuffer_get_metadata();
          Length = CFDataGetLength(metadata);
          if (Length < 0x15FF5)
          {
            v12 = *(a2 + 8);
            v13 = MEMORY[0x25F8C9240](a3, a4);
            IOSurface = CVDataBufferGetIOSurface();
            ID = IOSurfaceGetID(IOSurface);
            *v12 = Length;
            *(v12 + 8) = v13;
            *(v12 + 16) = ID;
            if (Length)
            {
              v43.location = 0;
              v43.length = Length;
              CFDataGetBytes(metadata, v43, (v12 + 20));
            }

            if (metadata != *(a1 + 56))
            {
              PRMWriterInstance::finalizeClientWriteTypeDataBuffer();
            }

            goto LABEL_13;
          }

          v24 = PRMWriterInstance::finalizeClientWriteTypeDataBuffer(buf, a1);
        }

        v26 = v24;
        v27 = __PSResourceManagerLogSharedInstance(v24, v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v35 = "finalizeClientWriteTypeDataBuffer";
          v36 = 1024;
          v37 = v26;
          _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }

        goto LABEL_27;
      }

      v16 = 72;
    }

    v17 = *(a2 + v16);
    *v17 = MEMORY[0x25F8C9240](a3, a4);
  }

LABEL_13:
  if (!*(a1 + 208))
  {
    CFRelease(*(a1 + 56));
    *(a1 + 56) = 0;
  }
}

void PRMWriterInstance::finalizeClientWriteTypeJasperBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = *MEMORY[0x277D85DE8];
  MEMORY[0x25F8C91A0](a3, a4);
  ps_resource_jasperbuffer_get_databuffer_array();
  timestamp_array = ps_resource_jasperbuffer_get_timestamp_array();
  v11 = timestamp_array;
  v12 = *(a1 + 208);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 0;
      v14 = (a2 + 72);
      do
      {
        v15 = *v14;
        v14 += 12;
        *v15 = *(timestamp_array + v13);
        v13 += 8;
      }

      while (v13 != 32);
      v16 = *(a2 + 392);
      *v16 = MEMORY[0x25F8C9240](a3, a4);
    }

    else
    {
      v49 = 0;
      v30 = (a1 + 176);
      v31 = a1;
      v32 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v32 = *v30;
      }

      v33 = asprintf(&v49, "Invalid metadata type found: %d for key: %s", v12, v32);
      v35 = __PSResourceManagerLogSharedInstance(v33, v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        v36 = *(v31 + 208);
        if (*(v31 + 199) < 0)
        {
          v30 = *v30;
        }

        *buf = 136315906;
        v51 = "finalizeClientWriteTypeJasperBuffer";
        v52 = 1024;
        v53 = 1736;
        v54 = 1024;
        v55 = v36;
        v56 = 2080;
        v57 = v30;
        _os_log_impl(&dword_25EA3A000, v35, OS_LOG_TYPE_FAULT, "%s:%d Invalid metadata type found: %d for key: %s", buf, 0x22u);
      }

      v37 = OSLogFlushBuffers();
      if (v37)
      {
        v39 = v37;
        v40 = __PSResourceManagerLogSharedInstance(v37, v38);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v51 = "finalizeClientWriteTypeJasperBuffer";
          v52 = 1024;
          v53 = v39;
          _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }
      }

      else
      {
        usleep(0x1E8480u);
      }

      v41 = abort_with_reason();
      PRMWriterInstance::finalizeClientWriteTypePearlBuffer(v41, v42, v43, v44, v45);
    }
  }

  else
  {
    v48 = a3;
    cfdata_metadata_array = ps_resource_jasperbuffer_get_cfdata_metadata_array();
    v18 = a2;
    v19 = 0;
    v46 = a1;
    v47 = v18;
    v20 = a1 + 64;
    v21 = v18 + 8;
    do
    {
      if (*(a5 + v19))
      {
        Length = CFDataGetLength(*(cfdata_metadata_array + v19));
        if (Length >= 0x15FF5)
        {
          PRMWriterInstance::finalizeClientWriteTypeJasperBuffer(buf, v46);
        }

        v23 = *(v21 + 8 * v19);
        IOSurface = CVDataBufferGetIOSurface();
        ID = IOSurfaceGetID(IOSurface);
        v26 = *(cfdata_metadata_array + v19);
        v27 = *(v11 + v19);
        *v23 = Length;
        *(v23 + 8) = v27;
        *(v23 + 16) = ID;
        if (Length)
        {
          v59.location = 0;
          v59.length = Length;
          CFDataGetBytes(v26, v59, (v23 + 20));
          v26 = *(cfdata_metadata_array + v19);
        }

        if (v26 != *(v20 + v19))
        {
          PRMWriterInstance::finalizeClientWriteTypeJasperBuffer();
        }
      }

      v19 += 8;
    }

    while (v19 != 32);
    v28 = *(v47 + 264);
    v29 = 0;
    *v28 = MEMORY[0x25F8C9240](v48, a4);
    do
    {
      CFRelease(*(v20 + v29));
      v29 += 8;
    }

    while (v29 != 32);
  }
}

void PRMWriterInstance::finalizeClientWriteTypePearlBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a5 != 0 || a5[2] || a5[3])
  {
    MEMORY[0x25F8C91F0](a3, a4);
    depthbuffer = ps_resource_pearlbuffer_get_depthbuffer();
    v10 = *(a1 + 208);
    if (v10 == 1)
    {
      v18 = *(a2 + 168);
      *v18 = MEMORY[0x25F8C9240](a3, a4);
    }

    else
    {
      if (v10)
      {
        return;
      }

      v11 = depthbuffer;
      cfdata_metadata = ps_resource_pearlbuffer_get_cfdata_metadata();
      Length = CFDataGetLength(cfdata_metadata);
      if (Length >= 0x15FF5)
      {
        v19 = PRMWriterInstance::finalizeClientWriteTypePearlBuffer(v21, a1);
        PRMWriterInstance::publishResources(v19, v20);
        return;
      }

      v14 = *(a2 + 8);
      v15 = MEMORY[0x25F8C9240](a3, a4);
      IOSurface = CVPixelBufferGetIOSurface(v11);
      ID = IOSurfaceGetID(IOSurface);
      *v14 = Length;
      *(v14 + 8) = v15;
      *(v14 + 16) = ID;
      if (Length)
      {
        v22.location = 0;
        v22.length = Length;
        CFDataGetBytes(cfdata_metadata, v22, (v14 + 20));
      }

      if (cfdata_metadata != *(a1 + 128))
      {
        PRMWriterInstance::finalizeClientWriteTypePearlBuffer();
      }
    }

    if (!*(a1 + 208))
    {
      CFRelease(*(a1 + 128));
      *(a1 + 128) = 0;
    }
  }
}

void PRMWriterInstance::publishResources(PRMWriterInstance *this, uint64_t a2)
{
  if (*(this + 328) == 1)
  {
    v3 = *(this + 42);

    PRMAneWriter::publish(v3, a2);
  }

  else
  {
    v4 = a2;
    MEMORY[0x25F8C8E80](*(this + 1), *(this + 43), &v4);
    PSActionTakerManager::signalResourceAvailable(*(this + 39));
  }
}

IOSurfaceRef _iosurfaceAllocator(unsigned int *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = *(a1 + 2);
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v6 = MutableCopy;
  pixelBufferOut = 0;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DE8], MutableCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D90], *MEMORY[0x277CBED28]);
  v7 = CVPixelBufferCreate(v2, *a1, a1[1], a1[2], Mutable, &pixelBufferOut);
  if (v7)
  {
    _iosurfaceAllocator(&v12, v7);
    goto LABEL_14;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
  if (!IOSurface)
  {
LABEL_14:
    v11 = _iosurfaceAllocator(&v12);
    return _cvPixelBufferAllocator(v11);
  }

  v9 = IOSurface;
  IOSurfaceIncrementUseCountForCategory();
  CFRetain(v9);
  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (pixelBufferOut)
  {
    CVPixelBufferRelease(pixelBufferOut);
  }

  return v9;
}

CVPixelBufferRef _cvPixelBufferAllocator(_DWORD *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  pixelBufferOut = 0;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = *(a1 + 2);
  if (v7)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, v7);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v9 = MutableCopy;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DE8], MutableCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D90], *MEMORY[0x277CBED28]);
  v10 = CVPixelBufferCreate(v5, v2, v3, v4, Mutable, &pixelBufferOut);
  if (v10)
  {
    v11 = _cvPixelBufferAllocator(&v14, v10);
    goto LABEL_12;
  }

  v11 = CVPixelBufferIncrementUseCountForCategory();
  if (v11)
  {
LABEL_12:
    v13 = _cvPixelBufferAllocator(&v14, v11);
    return _metadataIOSurfaceAllocator(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return pixelBufferOut;
}

uint64_t _cvDataBufferAllocator(_DWORD *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1[2];
  v4 = a1[1] * *a1;
  v5 = __PSResourceManagerLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    *buf = 136316162;
    v16 = "_cvDataBufferAllocator";
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v4;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "PSCVDataBufferResource in %s width=%lu height=%lu allocSize=%llu pixelFormat=%#x\n", buf, 0x30u);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  _addCFDictProperty(Mutable, *MEMORY[0x277CD2948], v4);
  _addCFDictProperty(Mutable, *MEMORY[0x277CD2A70], v3);
  v10 = IOSurfaceCreate(Mutable);
  if (!v10)
  {
    _cvDataBufferAllocator(buf);
    goto LABEL_10;
  }

  v11 = v10;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D90], *MEMORY[0x277CBED28]);
  v12 = CVDataBufferCreateWithIOSurface();
  if (v12)
  {
LABEL_10:
    v13 = _cvDataBufferAllocator(buf, v12);
LABEL_11:
    _cvDataBufferAllocator(buf, v13);
  }

  v13 = CVDataBufferIncrementUseCountForCategory();
  if (v13)
  {
    goto LABEL_11;
  }

  CFRelease(v11);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t PRMWriterInstance::incrementRefCount(PRMWriterInstance *this)
{
  v1 = (*(this + 12) + 1);
  *(this + 12) = v1;
  return v1;
}

uint64_t PRMWriterInstance::decrementRefCount(PRMWriterInstance *this)
{
  v1 = (*(this + 12) - 1);
  *(this + 12) = v1;
  return v1;
}

uint64_t PRMWriterInstance::getIOSurfaceCount(PRMWriterInstance *this)
{
  v1 = *(this + 25);
  v2 = v1 >= 9;
  v4 = v1 == 9;
  v3 = (1 << v1) & 0x390;
  v4 = !v4 && v2 || v3 == 0;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ps_buffer_get_total_write_buffer_count();
  }
}

PRMWriterInstance *PRMWriterInstance::getIOSurfaces(PRMWriterInstance *this, PRMWriterInstance **a2)
{
  v2 = *(this + 25);
  v3 = v2 > 9;
  v4 = (1 << v2) & 0x390;
  if (!v3 && v4 != 0)
  {
    v7 = this;
    this = ps_buffer_get_total_write_buffer_count();
    if (this >= 1)
    {
      LODWORD(v8) = this;
      this = MEMORY[0x25F8C8C90](*(v7 + 1));
      v9 = this;
      v10 = *(v7 + 25);
      if (v10 > 7)
      {
        if (v10 == 8)
        {
          v8 = v8;
          do
          {
            v9 = (v9 + 8);
            this = CVDataBufferGetIOSurface();
            *a2++ = this;
            --v8;
          }

          while (v8);
        }

        else if (v10 == 9)
        {
          v12 = 0;
          do
          {
            v13 = &a2[4 * (v12 & 0x3FFFFFFF)];
            for (i = 40; i != 296; i += 64)
            {
              this = CVDataBufferGetIOSurface();
              *v13++ = this;
            }

            ++v12;
          }

          while (v12 != v8);
        }
      }

      else if (v10 == 4)
      {
        v15 = v8;
        do
        {
          v16 = *v9;
          v9 = (v9 + 8);
          *a2++ = *(v16 + 8);
          --v15;
        }

        while (v15);
      }

      else if (v10 == 7)
      {
        v8 = v8;
        do
        {
          v11 = *v9;
          v9 = (v9 + 8);
          this = CVPixelBufferGetIOSurface(*(v11 + 40));
          *a2++ = this;
          --v8;
        }

        while (v8);
      }
    }
  }

  return this;
}

PRMWriterInstance *PRMWriterInstance::getMetadataIOSurfaces(PRMWriterInstance *this, __IOSurface **a2)
{
  v2 = *(this + 25);
  v3 = v2 > 9;
  v4 = (1 << v2) & 0x390;
  if (!v3 && v4 != 0)
  {
    v7 = this;
    this = ps_buffer_get_total_write_buffer_count();
    if (this >= 1)
    {
      v8 = this;
      this = MEMORY[0x25F8C8C90](*(v7 + 1));
      v9 = *(v7 + 25);
      switch(v9)
      {
        case 7:
          v15 = v8;
          do
          {
            v16 = *this;
            this = (this + 8);
            *a2++ = *(v16 + 8);
            --v15;
          }

          while (v15);
          break;
        case 9:
          for (i = 0; i != v8; ++i)
          {
            v13 = 8;
            v14 = a2;
            do
            {
              *v14++ = *(*(this + i) + v13);
              v13 += 64;
            }

            while (v13 != 264);
            a2 += 4;
          }

          break;
        case 8:
          v10 = v8;
          do
          {
            v11 = *this;
            this = (this + 8);
            *a2++ = *(v11 + 8);
            --v10;
          }

          while (v10);
          break;
      }
    }
  }

  return this;
}

void _addCFDictProperty(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void *OUTLINED_FUNCTION_19@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 40) = a2;
  *result = 0;
  return result;
}

uint64_t PSActionTaker::signalResourceAvailable(PSActionTaker *this)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);

    return v3(v4);
  }

  else
  {
    v7[1] = v1;
    v7[2] = v2;
    PSActionTaker::signalResourceAvailable(v7);
    return PSActionTaker::getActionTakerManager(v6);
  }
}

void PSActionTakerManager::PSActionTakerManager(PSActionTakerManager *this)
{
  atomic_store(0xFFFFFFFFFFFFFFFFLL, this);
  atomic_store(0, this + 1);
  atomic_store(0, this + 2);
}

void PSActionTakerManager::~PSActionTakerManager(PSActionTakerManager *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (atomic_load(this + 1))
  {
    v2 = atomic_load(this + 1);
    v10 = 0;
    v3 = asprintf(&v10, "Tried to delete action taker which was still in use with active mask 0x%llx", v2);
    v5 = __PSResourceManagerLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v12 = "~PSActionTakerManager";
      v13 = 1024;
      v14 = 82;
      v15 = 2048;
      v16 = v2;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d Tried to delete action taker which was still in use with active mask 0x%llx", buf, 0x1Cu);
    }

    v6 = OSLogFlushBuffers();
    v8 = v6;
    if (v6)
    {
      v9 = __PSResourceManagerLogSharedInstance(v6, v7);
      PSActionTakerManager::~PSActionTakerManager(v9, v8);
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }
}

void sub_25EAB242C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PSActionTakerManager::createActionTaker(atomic_ullong *this, void (*a2)(void *, unint64_t), void *a3, void (*a4)(void *), void *a5)
{
  result = PSActionTakerManager::initializeActionTaker(this);
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  atomic_fetch_or(this + 1, 1 << *(result + 40));
  return result;
}

uint64_t PSActionTakerManager::initializeActionTaker(PSActionTakerManager *this)
{
  v1 = atomic_load(this);
  v2 = v1 & -v1;
  v3 = v1;
  atomic_compare_exchange_strong(this, &v3, v2 ^ v1);
  while (v3 != v1)
  {
    v1 = v3;
    v2 = v3 & -v3;
    atomic_compare_exchange_strong(this, &v3, v2 ^ v3);
  }

  if (v2)
  {
    operator new();
  }

  v4 = PSActionTakerManager::initializeActionTaker(&v7);
  return PSActionTakerManager::requestRemoveActionTaker(v4, v5);
}

atomic_ullong *PSActionTakerManager::flushRemovalRequests(atomic_ullong *this)
{
  v1 = atomic_exchange(this + 2, 0);
  if (v1)
  {
    v2 = this;
    v3 = this + 3;
    do
    {
      v4 = __clz(__rbit64(v1));
      v5 = 1 << v4;
      atomic_fetch_and(v2 + 1, ~(1 << v4));
      v6 = v3[v4];
      v7 = *(v6 + 24);
      if (v7)
      {
        v7(*(v6 + 32));
        *(v6 + 24) = 0;
      }

      this = MEMORY[0x25F8C7C50](v6, 0x10A0C4018416FA7);
      v3[v4] = 0;
      atomic_fetch_or(v2, v5);
      v1 &= ~v5;
    }

    while (v1);
  }

  return this;
}

atomic_ullong *PSActionTakerManager::signalResourceAvailable(PSActionTakerManager *this)
{
  v2 = atomic_load(this + 1);
  v3 = atomic_load(this + 2);
  for (i = v2 & ~v3; i; i &= ~(1 << v5))
  {
    v5 = __clz(__rbit64(i));
    PSActionTaker::signalResourceAvailable(*(this + v5 + 3));
  }

  return PSActionTakerManager::flushRemovalRequests(this);
}

void PSListenerThread::PSListenerThread(PSListenerThread *this, PRMReader *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *(this + 2) = a2;
  operator new();
}

void PSListenerThread::~PSListenerThread(PSListenerThread *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    PSActionTakerManager::~PSActionTakerManager(v1);
    MEMORY[0x25F8C7C50]();
  }
}

uint64_t PSListenerThread::setAriadneID(uint64_t this, uint64_t a2)
{
  *(this + 8) = 1;
  *this = a2;
  return this;
}

uint64_t PSListenerThread::start(PRMReader **this, uint64_t (*a2)(uint64_t, void *, PRMReader **, uint64_t (*)(void *), PRMReader **), void *a3)
{
  if (a2)
  {
    Key = PRMReader::getKey(this[2]);

    return a2(Key, a3, this + 4, _thread_workloop, this);
  }

  else
  {
    PSListenerThread::start(&v10, this);
    return _thread_workloop(v7, v8);
  }
}

uint64_t _thread_workloop(char *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = __PSResourceManagerLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    Key = PRMReader::getKey(*(a1 + 2));
    *buf = 136315138;
    *&buf[4] = Key;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "Started listener thread workloop for %s", buf, 0xCu);
  }

  v5 = (a1 + 16);
  v6 = PRMReader::getKey(*(a1 + 2));
  v7 = ps_util_pthread_setname(v6);
  if (v7)
  {
    v9 = v7;
    v10 = __PSResourceManagerLogSharedInstance(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_ERROR, "ps_util_pthread_setname failed with return code %d", buf, 8u);
    }
  }

  *&buf[8] = 0;
  v21 = buf;
  *buf = 0xFFFFFFFFFFFFLL;
  v18 = 0;
  while (1)
  {
    v11 = atomic_load(a1 + 40);
    if (v11)
    {
      return 0;
    }

    v12 = (*(**v5 + 48))();
    (*(**v5 + 48))();
    if (v12)
    {
      v13 = MEMORY[0x25F8C8E70](v12, &v21, &v18);
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = ps_buffer_camera_stream_reader_wait_for_buffers_with_tag();
      if (v13)
      {
LABEL_16:
        v15 = __PSResourceManagerLogSharedInstance(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = PRMReader::getKey(*v5);
          *v19 = 136315138;
          v20 = v16;
          _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEFAULT, "Writer was torn down for resource %s", v19, 0xCu);
        }

        return 0;
      }
    }

    if (*v21 == 0xFFFFFFFFFFFFLL)
    {
      _thread_workloop(v19, a1 + 2);
    }

    if (a1[8] == 1)
    {
      mach_absolute_time();
      kdebug_trace();
    }

    PSActionTakerManager::signalResourceAvailable(*(a1 + 3));
  }
}

uint64_t __PSResourceManagerLogSharedInstance(uint64_t a1, uint64_t a2)
{
  if (__PSResourceManagerLogSharedInstance_onceToken != -1)
  {
    __PSResourceManagerLogSharedInstance_cold_1();
  }

  return sharedInstance_1;
}

PSResourceManager *ps_prm_delete_manager(PSResourceManager *result)
{
  if (result)
  {
    PSResourceManager::~PSResourceManager(result);

    JUMPOUT(0x25F8C7C50);
  }

  return result;
}

_BYTE *ps_prm_opts_create()
{
  result = malloc_type_calloc(1uLL, 0x100uLL, 0x10F204097A21273uLL);
  if (result)
  {
    result[104] = 0;
  }

  else
  {
    cold_1 = ps_prm_opts_create_cold_1();
    return ps_prm_opts_copy(cold_1);
  }

  return result;
}

void ps_prm_opts_copy(const char **a1)
{
  if (a1)
  {
    v2 = ps_prm_opts_create();
    v3 = strlen(a1[7]);
    v4 = *(a1 + 3);
    v6 = *a1;
    v5 = *(a1 + 1);
    *(v2 + 2) = *(a1 + 2);
    *(v2 + 3) = v4;
    *v2 = v6;
    *(v2 + 1) = v5;
    v7 = *(a1 + 7);
    v9 = *(a1 + 4);
    v8 = *(a1 + 5);
    *(v2 + 6) = *(a1 + 6);
    *(v2 + 7) = v7;
    *(v2 + 4) = v9;
    *(v2 + 5) = v8;
    v10 = *(a1 + 11);
    v12 = *(a1 + 8);
    v11 = *(a1 + 9);
    *(v2 + 10) = *(a1 + 10);
    *(v2 + 11) = v10;
    *(v2 + 8) = v12;
    *(v2 + 9) = v11;
    v13 = *(a1 + 15);
    v15 = *(a1 + 12);
    v14 = *(a1 + 13);
    *(v2 + 14) = *(a1 + 14);
    *(v2 + 15) = v13;
    *(v2 + 12) = v15;
    *(v2 + 13) = v14;
    v16 = malloc_type_calloc(v3 + 1, 1uLL, 0x100004077774924uLL);
    *(v2 + 7) = v16;
    v2[64] = 1;
    if (v16)
    {
      strlcpy(v16, a1[7], v3 + 1);
      return;
    }
  }

  else
  {
    ps_prm_opts_copy_cold_2();
  }

  v17 = ps_prm_opts_copy_cold_1();
  ps_prm_opts_destroy(v17);
}

void ps_prm_opts_destroy(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 5);
  if (v2 == 9 || v2 == 8)
  {
    if (*(a1 + 105))
    {
      goto LABEL_12;
    }

    v3 = *(a1 + 20);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 != 7)
    {
      goto LABEL_12;
    }

    if (*(a1 + 105))
    {
      goto LABEL_12;
    }

    v3 = *(a1 + 21);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v3);
LABEL_12:
  if (*(a1 + 64) == 1)
  {
    free(*(a1 + 7));
  }

  free(a1);
}

uint64_t ps_prm_opts_set_resource_key(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 56) = a2;
    *(result + 64) = 0;
  }

  else
  {
    v2 = ps_prm_opts_set_resource_key_cold_1();
    return ps_prm_opts_set_graph(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_graph(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 136) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_graph_cold_1();
    return ps_prm_opts_get_graph(v2);
  }

  return result;
}

uint64_t ps_prm_opts_get_graph(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 136);
  }

  graph_cold_1 = ps_prm_opts_get_graph_cold_1();
  return ps_prm_opts_set_resource_class(graph_cold_1, v3);
}

uint64_t ps_prm_opts_set_resource_class(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_resource_class_cold_1();
    return ps_prm_opts_set_provider_type(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_provider_type(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 112) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_provider_type_cold_1();
    return ps_prm_opts_set_is_camera_stream(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_is_camera_stream(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 105) = a2;
  }

  else
  {
    is_camera_stream_cold_1 = ps_prm_opts_set_is_camera_stream_cold_1();
    return ps_prm_opts_set_use_prm_camera_reader(is_camera_stream_cold_1, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_use_prm_camera_reader(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 106) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_use_prm_camera_reader_cold_1();
    return ps_prm_opts_set_ariadne_id(v2, v3);
  }

  return result;
}

void *ps_prm_opts_set_ariadne_id(void *result, uint64_t a2)
{
  if (result)
  {
    result[12] = a2;
    *(result + 104) = 1;
  }

  else
  {
    v2 = ps_prm_opts_set_ariadne_id_cold_1();
    return ps_prm_opts_set_resource_available_callback(v2, v3, v4);
  }

  return result;
}

void *ps_prm_opts_set_resource_available_callback(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *result = a2;
    result[1] = a3;
  }

  else
  {
    v3 = ps_prm_opts_set_resource_available_callback_cold_1();
    return ps_prm_opts_set_removal_callback(v3, v4, v5);
  }

  return result;
}

uint64_t ps_prm_opts_set_removal_callback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  else
  {
    v3 = ps_prm_opts_set_removal_callback_cold_1();
    return ps_prm_opts_set_return_capacity(v3, v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_return_capacity(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_return_capacity_cold_1();
    return ps_prm_opts_set_buffer_depth(v2, v3, v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_buffer_depth(uint64_t result, int a2, int a3)
{
  if (result)
  {
    *(result + 68) = a2;
    *(result + 72) = a3;
  }

  else
  {
    v3 = ps_prm_opts_set_buffer_depth_cold_1();
    return ps_prm_opts_set_creation_mode(v3, v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_creation_mode(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 128) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_creation_mode_cold_1();
    return ps_prm_opts_set_storage_mode(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_storage_mode(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 120) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_storage_mode_cold_1();
    return ps_prm_opts_set_forwarding_count(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_forwarding_count(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 80) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_forwarding_count_cold_1();
    return ps_prm_opts_set_data_size(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_data_size(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_data_size_cold_1();
    return ps_prm_opts_set_iosurface_width(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_width(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_iosurface_width_cold_1();
    return ps_prm_opts_set_iosurface_height(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_height(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 148) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_iosurface_height_cold_1();
    return ps_prm_opts_set_iosurface_pixelformat(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_pixelformat(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_iosurface_pixelformat_cold_1();
    return ps_prm_opts_set_iosurface_properties(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_properties(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 160) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_iosurface_properties_cold_1();
    return ps_prm_opts_set_iosurface_allocator(v2, v3, v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_iosurface_allocator(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 168) = a2;
    *(result + 176) = a3;
  }

  else
  {
    v3 = ps_prm_opts_set_iosurface_allocator_cold_1();
    return ps_prm_opts_set_cvpixelbuffer_width(v3, v4);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_width(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_cvpixelbuffer_width_cold_1();
    return ps_prm_opts_set_cvpixelbuffer_height(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_height(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 148) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_cvpixelbuffer_height_cold_1();
    return ps_prm_opts_set_cvpixelbuffer_pixelformat(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_pixelformat(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_cvpixelbuffer_pixelformat_cold_1();
    return ps_prm_opts_set_cvpixelbuffer_properties(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvpixelbuffer_properties(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 160) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_cvpixelbuffer_properties_cold_1();
    return ps_prm_opts_set_cvpixelbuffer_allocator(v2, v3, v4);
  }

  return result;
}

void *ps_prm_opts_set_cvpixelbuffer_allocator(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result[22] = a2;
    result[23] = a3;
  }

  else
  {
    v3 = ps_prm_opts_set_cvpixelbuffer_allocator_cold_1();
    return ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties(v3, v4);
  }

  return result;
}

CFTypeRef ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    result = CFRetain(cf);
    *(a1 + 168) = cf;
  }

  else
  {
    v5 = ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties_cold_1();
    return ps_prm_opts_set_cvdatabuffer_width(v5, v6);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvdatabuffer_width(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_cvdatabuffer_width_cold_1();
    return ps_prm_opts_set_cvdatabuffer_height(v2, v3);
  }

  return result;
}

uint64_t ps_prm_opts_set_cvdatabuffer_height(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 148) = a2;
  }

  else
  {
    v2 = ps_prm_opts_set_cvdatabuffer_height_cold_1();
    return ps_prm_opts_set_cvdatabuffer_pixelformat(v2, v3);
  }

  return result;
}