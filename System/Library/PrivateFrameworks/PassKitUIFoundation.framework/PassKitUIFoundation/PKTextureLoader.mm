@interface PKTextureLoader
- (id)initForDevice:(CGImage *)device image:(void *)image withStorageMode:(int)mode premultiplyAlpha:(CGColorSpace *)alpha colorSpace:(CGColorRenderingIntent)space renderingIntent:;
- (void)_decode:(uint64_t)_decode;
- (void)_tiling:(void *)_tiling read:;
- (void)dealloc;
@end

@implementation PKTextureLoader

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CFRelease(image);
  }

  vImageConverter_Release(self->_converter);
  CGColorSpaceRelease(self->_sourceColorSpace);
  CGColorSpaceRelease(self->_destinationColorSpace);
  v4.receiver = self;
  v4.super_class = PKTextureLoader;
  [(PKTextureLoader *)&v4 dealloc];
}

- (id)initForDevice:(CGImage *)device image:(void *)image withStorageMode:(int)mode premultiplyAlpha:(CGColorSpace *)alpha colorSpace:(CGColorRenderingIntent)space renderingIntent:
{
  v70 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = v14;
  selfCopy = 0;
  if (!self || !v14 || !device)
  {
    goto LABEL_103;
  }

  modeCopy = mode;
  spaceCopy = space;
  obj = a2;
  imageCopy = image;
  *(&srcFormat.renderingIntent + 1) = 0;
  BitsPerComponent = CGImageGetBitsPerComponent(device);
  BitsPerPixel = CGImageGetBitsPerPixel(device);
  ColorSpace = CGImageGetColorSpace(device);
  BitmapInfo = CGImageGetBitmapInfo(device);
  srcFormat.bitsPerComponent = BitsPerComponent;
  srcFormat.bitsPerPixel = BitsPerPixel;
  srcFormat.colorSpace = ColorSpace;
  srcFormat.bitmapInfo = BitmapInfo;
  srcFormat.version = 0;
  srcFormat.decode = CGImageGetDecode(device);
  v21 = BitmapInfo & 0x1F;
  srcFormat.renderingIntent = CGImageGetRenderingIntent(device);
  if (!ColorSpace && v21 != 7)
  {
    [PKTextureLoader initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:];
    goto LABEL_102;
  }

  if (v21 == 7)
  {
    NumberOfComponents = 0;
  }

  else
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  }

  if ((BitmapInfo & 0x1F) != 0)
  {
    v23 = NumberOfComponents + 1;
  }

  else
  {
    v23 = NumberOfComponents;
  }

  if (v23 * BitsPerComponent != BitsPerPixel)
  {
    [PKTextureLoader initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:];
    goto LABEL_102;
  }

  if (!alpha)
  {
    alpha = ColorSpace;
  }

  if (alpha && v21 != 7)
  {
    Model = CGColorSpaceGetModel(alpha);
    v25 = CGColorSpaceGetNumberOfComponents(alpha);
    if (Model == kCGColorSpaceModelRGB)
    {
      if (v25 != 3)
      {
        [PKTextureLoader initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:];
        goto LABEL_102;
      }
    }

    else
    {
      if (Model)
      {
        [PKTextureLoader initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:];
        goto LABEL_102;
      }

      if (v25 != 1)
      {
        [PKTextureLoader initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:];
LABEL_102:
        selfCopy = 0;
        goto LABEL_103;
      }
    }
  }

  switch(BitsPerComponent)
  {
    case 8u:
      v26 = 0;
      v27 = 8;
      break;
    case 0x20u:
      if ((BitmapInfo & 0x100) != 0)
      {
        v26 = 4;
      }

      else
      {
        v26 = 3;
      }

      v27 = 32;
      break;
    case 0x10u:
      if ((BitmapInfo & 0x100) != 0)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      v27 = 16;
      break;
    default:
      [PKTextureLoader initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:];
      goto LABEL_102;
  }

  *&destFormat.renderingIntent = 0;
  if (alpha)
  {
    v28 = CGColorSpaceGetNumberOfComponents(alpha);
  }

  else
  {
    v28 = 0;
  }

  v29 = 0;
  if (v21 == 7)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (v21)
  {
    v31 = 1;
  }

  else
  {
    v31 = v28 == 3;
  }

  v32 = v31;
  if (v31)
  {
    ++v30;
  }

  if (v26 > 1)
  {
    if (v26 != 3)
    {
      v29 = 1;
    }

LABEL_54:
    v35 = 0;
    v36 = 1;
    if (v21 > 4)
    {
      if ((v21 - 5) >= 2)
      {
        if (v21 == 7)
        {
          v36 = 0;
          v35 = 7;
        }
      }

      else
      {
        v36 = 0;
        v35 = 5;
      }
    }

    else if ((v21 - 1) < 2)
    {
      v36 = 0;
      v35 = 1;
    }

    else if ((v21 - 3) < 2)
    {
      v36 = 0;
      v35 = 3;
    }

    if ((v32 & v36) != 0)
    {
      v34 = 5;
    }

    else
    {
      v34 = v35;
    }

    if ((v26 - 1) <= 1)
    {
      switch(v30)
      {
        case 4uLL:
          v37 = v29 == 0;
          v38 = 110;
          v39 = 115;
          goto LABEL_78;
        case 2uLL:
          v37 = v29 == 0;
          v38 = 60;
          v39 = 65;
          goto LABEL_78;
        case 1uLL:
          v37 = v29 == 0;
          v38 = 20;
          v39 = 25;
LABEL_78:
          if (v37)
          {
            v43 = v38;
          }

          else
          {
            v43 = v39;
          }

          v44 = 4096;
          goto LABEL_87;
      }

LABEL_116:
      [PKTextureLoader initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:];
      goto LABEL_102;
    }

    switch(v30)
    {
      case 4uLL:
        v40 = v29 == 0;
        v41 = 123;
        v42 = 125;
        break;
      case 2uLL:
        v40 = v29 == 0;
        v41 = 103;
        v42 = 105;
        break;
      case 1uLL:
        v40 = v29 == 0;
        v41 = 53;
        v42 = 55;
        break;
      default:
        goto LABEL_116;
    }

    if (v40)
    {
      v43 = v41;
    }

    else
    {
      v43 = v42;
    }

    v44 = 0x2000;
    goto LABEL_87;
  }

  if (v26)
  {
    goto LABEL_54;
  }

  if ((v21 - 1) > 6)
  {
    v34 = 0;
    v33 = 6;
  }

  else
  {
    v33 = dword_25E0D5E10[v21 - 1];
    v34 = v33;
  }

  switch(v30)
  {
    case 4uLL:
      v29 = 0;
      v44 = 0x2000;
      v43 = 80;
      v34 = v33;
      break;
    case 2uLL:
      v29 = 0;
      v44 = 4096;
      v43 = 30;
      break;
    case 1uLL:
      v44 = 0;
      v29 = 0;
      if (v32)
      {
        v43 = 1;
      }

      else
      {
        v43 = 10;
      }

      break;
    default:
      goto LABEL_116;
  }

LABEL_87:
  v45 = v34 - 1;
  if ((v34 - 1) < 4)
  {
    v46 = &unk_25E0D5E40;
    if (modeCopy)
    {
      v46 = &unk_25E0D5E30;
    }

    v34 = v46[v45];
  }

  destFormat.bitsPerComponent = v27;
  destFormat.bitsPerPixel = v30 * v27;
  v47 = v34 | v44;
  v48 = v34 | v44 | 0x100;
  if (v29)
  {
    v47 = v48;
  }

  destFormat.colorSpace = alpha;
  destFormat.bitmapInfo = v47;
  destFormat.version = 0;
  destFormat.decode = 0;
  destFormat.renderingIntent = spaceCopy;
  error = 0;
  v49 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
  if (!v49)
  {
    v58 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v69 = error;
      _os_log_impl(&dword_25E0A9000, v58, OS_LOG_TYPE_DEFAULT, "PKTextureLoader: declining to initialize - failed to create converter due to %zd.", buf, 0xCu);
    }

    goto LABEL_102;
  }

  v50 = v49;
  NumberOfSourceBuffers = vImageConverter_GetNumberOfSourceBuffers(v49);
  NumberOfDestinationBuffers = vImageConverter_GetNumberOfDestinationBuffers(v50);
  if (NumberOfSourceBuffers != 1 || NumberOfDestinationBuffers != 1)
  {
    [PKTextureLoader initForDevice:NumberOfDestinationBuffers image:v50 withStorageMode:? premultiplyAlpha:? colorSpace:? renderingIntent:?];
    goto LABEL_102;
  }

  v64.receiver = self;
  v64.super_class = PKTextureLoader;
  v53 = objc_msgSendSuper2(&v64, sel_init);
  v54 = v53;
  if (v53)
  {
    objc_storeStrong(v53 + 15, obj);
    v54[16] = CGImageRetain(device);
    v54[17] = v50;
    v55 = *&srcFormat.renderingIntent;
    v56 = *&srcFormat.bitmapInfo;
    *(v54 + 3) = *&srcFormat.bitsPerComponent;
    *(v54 + 5) = v56;
    v54[7] = v55;
    v54[8] = CGColorSpaceRetain(ColorSpace);
    v54[22] = v43;
    v57 = *&destFormat.bitmapInfo;
    *(v54 + 9) = *&destFormat.bitsPerComponent;
    *(v54 + 11) = v57;
    v54[13] = *&destFormat.renderingIntent;
    v54[14] = CGColorSpaceRetain(alpha);
    v54[2] = imageCopy;
  }

  self = v54;
  selfCopy = self;
LABEL_103:

  return selfCopy;
}

- (void)_decode:(uint64_t)_decode
{
  v112 = *MEMORY[0x277D85DE8];
  if (_decode)
  {
    os_unfair_lock_lock((_decode + 8));
    v4 = *(_decode + 128);
    if (!v4)
    {
LABEL_59:
      os_unfair_lock_unlock((_decode + 8));
      return;
    }

    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 16;
    }

    if (*(_decode + 176) && *(_decode + 120) && *(_decode + 136))
    {
      v6 = 1;
    }

    else
    {
      v89 = PKLogFacilityTypeGetObject();
      if (OUTLINED_FUNCTION_9(v89))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_5();
        _os_log_impl(v90, v91, v92, v93, v94, v95);
      }

      v6 = 0;
      v4 = *(_decode + 128);
    }

    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(*(_decode + 128));
    address.data = 0;
    address.height = Height;
    address.width = Width;
    address.rowBytes = 0;
    v105.data = 0;
    v105.height = Height;
    v105.width = Width;
    v105.rowBytes = 0;
    v9 = MEMORY[0x277D85F48];
    if (!v6)
    {
      v58 = 0;
      v29 = 0;
      goto LABEL_45;
    }

    v10 = Height;
    memset(v111, 0, sizeof(v111));
    OUTLINED_FUNCTION_11();
    v12 = MEMORY[0x277D85FA0];
    if ((v11 & 0x8000000000000000) != 0)
    {
      v21 = v11;
      v22 = PKLogFacilityTypeGetObject();
      if (OUTLINED_FUNCTION_9(v22))
      {
        v107 = 134217984;
        v108 = v21;
        OUTLINED_FUNCTION_5();
        _os_log_impl(v23, v24, v25, v26, v27, v28);
      }

      v13 = 0;
    }

    else
    {
      v13 = *(&v111[1] + 1);
      if (*(&v111[1] + 1))
      {
        if (is_mul_ok(v10, *(&v111[1] + 1)))
        {
          v41 = *MEMORY[0x277D85FA0] - 1;
          if (__CFADD__(v10 * *(&v111[1] + 1), v41))
          {
            v42 = PKLogFacilityTypeGetObject();
            if (OUTLINED_FUNCTION_9(v42))
            {
              v107 = 134218240;
              v108 = v10 * *(&v111[1] + 1);
              v109 = 2048;
              v110 = v41;
              OUTLINED_FUNCTION_4();
              _os_log_impl(v43, v44, v45, v46, v47, v48);
            }

            v29 = 0;
          }

          else
          {
            v29 = ((v10 * *(&v111[1] + 1) + v41) & -*MEMORY[0x277D85FA0]);
          }

          v9 = MEMORY[0x277D85F48];
LABEL_21:
          address.rowBytes = v13;
          memset(v111, 0, sizeof(v111));
          OUTLINED_FUNCTION_11();
          if ((v30 & 0x8000000000000000) != 0)
          {
            v33 = v30;
            v34 = PKLogFacilityTypeGetObject();
            if (OUTLINED_FUNCTION_6(v34))
            {
              v107 = 134217984;
              v108 = v33;
              OUTLINED_FUNCTION_5();
              _os_log_impl(v35, v36, v37, v38, v39, v40);
            }

            v31 = 0;
            goto LABEL_39;
          }

          v31 = *(&v111[1] + 1);
          if (!*(&v111[1] + 1))
          {
LABEL_40:
            v58 = 0;
            v105.rowBytes = v31;
LABEL_41:
            v59 = PKLogFacilityTypeGetObject();
            if (!OUTLINED_FUNCTION_6(v59))
            {
LABEL_44:

LABEL_45:
              CFRelease(*(_decode + 128));
              *(_decode + 128) = 0;
              goto LABEL_46;
            }

            OUTLINED_FUNCTION_1();
            *(v111 + 14) = v29;
            WORD3(v111[1]) = v60;
            *(&v111[1] + 1) = v58;
            OUTLINED_FUNCTION_2();
            v66 = 32;
LABEL_43:
            _os_log_impl(v61, v62, v63, v64, v65, v66);
            goto LABEL_44;
          }

          if (!is_mul_ok(v10, *(&v111[1] + 1)))
          {
            v32 = PKLogFacilityTypeGetObject();
            if (OUTLINED_FUNCTION_6(v32))
            {
              OUTLINED_FUNCTION_7();
LABEL_38:
              OUTLINED_FUNCTION_4();
              _os_log_impl(v52, v53, v54, v55, v56, v57);
              goto LABEL_39;
            }

            goto LABEL_39;
          }

          v49 = v10 * *(&v111[1] + 1);
          v50 = *v12 - 1;
          if (__CFADD__(v49, v50))
          {
            v51 = PKLogFacilityTypeGetObject();
            if (OUTLINED_FUNCTION_6(v51))
            {
              v107 = 134218240;
              v108 = v49;
              v109 = 2048;
              v110 = v50;
              goto LABEL_38;
            }

LABEL_39:

            goto LABEL_40;
          }

          v58 = (v49 + v50) & -*v12;
          v105.rowBytes = *(&v111[1] + 1);
          if (!v29 || !v58)
          {
            goto LABEL_41;
          }

          v81 = vm_allocate(*v9, &address, v29, 1);
          if (v81)
          {
            v96 = v81;
            v97 = PKLogFacilityTypeGetObject();
            if (!OUTLINED_FUNCTION_6(v97))
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_3();
            WORD6(v111[0]) = 1024;
            *(v111 + 14) = v96;
            OUTLINED_FUNCTION_2();
            v66 = 18;
            goto LABEL_43;
          }

          v82 = MEMORY[0x25F8AB180](&address, _decode + 24, 0, *(_decode + 128), v5 | 0x200);
          if (v82)
          {
            v83 = v82;
            v84 = PKLogFacilityTypeGetObject();
            if (!OUTLINED_FUNCTION_6(v84))
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_1();
            *(v111 + 14) = v83;
            OUTLINED_FUNCTION_2();
            v66 = 22;
            goto LABEL_43;
          }

          CFRelease(*(_decode + 128));
          *(_decode + 128) = 0;
          if (v58 == v29 && (v105.data = address.data, vImageConverter_MustOperateOutOfPlace(*(_decode + 136), &address, &v105, v5)))
          {
            v105.data = 0;
          }

          else if (v105.data)
          {
            goto LABEL_73;
          }

          if (vm_allocate(*v9, &v105, v58, 1))
          {
            v99 = PKLogFacilityTypeGetObject();
            if (OUTLINED_FUNCTION_6(v99))
            {
              OUTLINED_FUNCTION_1();
              *(v111 + 14) = 0;
              goto LABEL_88;
            }

LABEL_89:

            goto LABEL_46;
          }

LABEL_73:
          v85 = vImageConvert_AnyToAny(*(_decode + 136), &address, &v105, 0, v5);
          v86 = v85;
          if (address.data == v105.data)
          {
            address.data = 0;
          }

          if (!v85)
          {
            *(_decode + 168) = v105.rowBytes;
            *(_decode + 152) = vextq_s8(*&v105.height, *&v105.height, 8uLL);
            v87 = [*(_decode + 120) newBufferWithBytesNoCopy:? length:? options:? deallocator:?];
            v88 = *(_decode + 144);
            *(_decode + 144) = v87;

            if (*(_decode + 144))
            {
              v105.data = 0;
            }

LABEL_46:
            if (address.data)
            {
              MEMORY[0x25F8AB200](*v9, address.data, v29);
            }

            if (v105.data)
            {
              MEMORY[0x25F8AB200](*v9, v105.data, v58);
            }

            v67 = *(_decode + 136);
            if (v67)
            {
              vImageConverter_Release(v67);
              *(_decode + 136) = 0;
            }

            v68 = *(_decode + 120);
            *(_decode + 120) = 0;

            v69 = *(_decode + 144);
            if (v69)
            {
              v70 = *(_decode + 160);
              v71 = *(_decode + 168);
              v72 = PKLogFacilityTypeGetObject();
              if (OUTLINED_FUNCTION_9(v72))
              {
                [v69 length];
                OUTLINED_FUNCTION_3();
                WORD6(v111[0]) = 2048;
                *(v111 + 14) = v71 * v70;
                WORD3(v111[1]) = 2048;
                *(&v111[1] + 1) = v73;
                v74 = &dword_25E0A9000;
                v75 = "PKTextureLoader (%p): decoded %zu + %zu bytes.";
                v76 = v111;
                v77 = v29;
                v78 = OS_LOG_TYPE_DEFAULT;
                v79 = 32;
LABEL_57:
                _os_log_impl(v74, v77, v78, v75, v76, v79);
              }
            }

            else
            {
              v80 = PKLogFacilityTypeGetObject();
              if (OUTLINED_FUNCTION_9(v80))
              {
                OUTLINED_FUNCTION_3();
                OUTLINED_FUNCTION_5();
                goto LABEL_57;
              }
            }

            goto LABEL_59;
          }

          v98 = PKLogFacilityTypeGetObject();
          if (OUTLINED_FUNCTION_6(v98))
          {
            OUTLINED_FUNCTION_1();
            *(v111 + 14) = v86;
LABEL_88:
            OUTLINED_FUNCTION_2();
            _os_log_impl(v100, v101, v102, v103, v104, 0x16u);
            goto LABEL_89;
          }

          goto LABEL_89;
        }

        v14 = PKLogFacilityTypeGetObject();
        if (OUTLINED_FUNCTION_9(v14))
        {
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_4();
          _os_log_impl(v15, v16, v17, v18, v19, v20);
        }
      }
    }

    v29 = 0;
    goto LABEL_21;
  }
}

- (void)_tiling:(void *)_tiling read:
{
  _tilingCopy = _tiling;
  if (self)
  {
    [(PKTextureLoader *)self _decode:a2];
    v6 = *(self + 144);
    if (v6)
    {
      v7 = 0;
      v8 = *(self + 88) & 0x1F;
      v14 = 0;
      v10 = v6;
      v9 = *(self + 168);
      v11 = *(self + 152);
      v12 = v9;
      if (v8 != 7)
      {
        v7 = *(self + 112);
      }

      v13 = v7;
      LODWORD(v14) = v8;
      _tilingCopy[2](_tilingCopy, &v10);
    }

    else
    {
      _tilingCopy[2](_tilingCopy, 0);
    }
  }
}

- (void)initForDevice:(vImageConverter *)a3 image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:.cold.1(uint64_t a1, uint64_t a2, vImageConverter *a3)
{
  OUTLINED_FUNCTION_8();
  v5 = PKLogFacilityTypeGetObject();
  if (OUTLINED_FUNCTION_9(v5))
  {
    OUTLINED_FUNCTION_4();
    _os_log_impl(v6, v7, v8, v9, v10, v11);
  }

  vImageConverter_Release(a3);
}

- (void)initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:.cold.2()
{
  v1 = PKLogFacilityTypeGetObject();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:.cold.3()
{
  v1 = PKLogFacilityTypeGetObject();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:.cold.4()
{
  OUTLINED_FUNCTION_8();
  v1 = PKLogFacilityTypeGetObject();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:.cold.5()
{
  OUTLINED_FUNCTION_8();
  v1 = PKLogFacilityTypeGetObject();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:.cold.6()
{
  v1 = PKLogFacilityTypeGetObject();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:.cold.7()
{
  OUTLINED_FUNCTION_8();
  v1 = PKLogFacilityTypeGetObject();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)initForDevice:image:withStorageMode:premultiplyAlpha:colorSpace:renderingIntent:.cold.8()
{
  OUTLINED_FUNCTION_8();
  v1 = PKLogFacilityTypeGetObject();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

@end