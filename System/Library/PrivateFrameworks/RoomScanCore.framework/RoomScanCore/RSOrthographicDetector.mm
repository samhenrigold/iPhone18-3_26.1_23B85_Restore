@interface RSOrthographicDetector
- (RSOrthographicDetector)init;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation RSOrthographicDetector

- (id).cxx_construct
{
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 14) = 0u;
  *(self + 1272) = 0u;
  *(self + 1288) = 0u;
  *(self + 1304) = 0u;
  *(self + 1320) = 0u;
  *(self + 1336) = 0u;
  *(self + 1352) = 0u;
  return self;
}

- (void)dealloc
{
  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
  }

  CVPixelBufferRelease(self->_semanticMapBuffer);
  for (i = 176; i != 224; i += 8)
  {
    v5 = *(self + i - 48);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(&self->super.isa + i);
    if (v6)
    {
      CFRelease(v6);
    }

    CVPixelBufferRelease(*(self + i - 144));
    CVPixelBufferRelease(*(self + i - 96));
  }

  espresso_plan_destroy();
  espresso_context_destroy();
  v7.receiver = self;
  v7.super_class = RSOrthographicDetector;
  [(RSOrthographicDetector *)&v7 dealloc];
}

- (RSOrthographicDetector)init
{
  v111[2] = *MEMORY[0x277D85DE8];
  v95.receiver = self;
  v95.super_class = RSOrthographicDetector;
  v94 = [(RSOrthographicDetector *)&v95 init];
  if (v94)
  {
    v94->_ctx = espresso_create_context();
    v94->_plan = espresso_create_plan();
    v2 = MEMORY[0x277CCA8D8];
    v3 = objc_opt_class();
    v84 = objc_msgSend_bundleForClass_(v2, v4, v3);
    v85 = sub_262381FB4(@"orthographic_v9.1_palettized.espresso.net", 0, v84);
    v5 = v85;
    objc_msgSend_UTF8String(v85, v6, v7);
    espresso_plan_add_network();
    espresso_plan_build();
    v92 = *MEMORY[0x277CD2A28];
    v8 = *MEMORY[0x277CD2A28];
    v93 = *MEMORY[0x277CD2B88];
    v108[0] = *MEMORY[0x277CD2B88];
    v108[1] = v8;
    v109[0] = &unk_2874FAB90;
    v109[1] = &unk_2874FABA8;
    v90 = *MEMORY[0x277CD2960];
    v9 = *MEMORY[0x277CD2960];
    v91 = *MEMORY[0x277CD2A70];
    v108[2] = *MEMORY[0x277CD2A70];
    v108[3] = v9;
    v109[2] = &unk_2874FABC0;
    v109[3] = &unk_2874FABD8;
    v89 = *MEMORY[0x277CD2968];
    v108[4] = *MEMORY[0x277CD2968];
    v109[4] = &unk_2874FABF0;
    pixelBufferAttributes = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v109, v108, 5);
    ioSurface = IOSurfaceCreate(pixelBufferAttributes);
    p_isa = &v94->super.isa;
    v94->_ioSurface = ioSurface;
    if (!ioSurface)
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v13 = qword_27FF0C058;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2621C3000, v13, OS_LOG_TYPE_DEBUG, "DoorWindow IOSurfaceCreate failure", buf, 2u);
      }

      p_isa = &v94->super.isa;
      ioSurface = v94->_ioSurface;
    }

    allocator = *MEMORY[0x277CBECE8];
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], ioSurface, pixelBufferAttributes, p_isa + 1))
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v14 = qword_27FF0C058;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2621C3000, v14, OS_LOG_TYPE_DEBUG, "DoorWindow input CVPixelBufferCreate failure", buf, 2u);
      }
    }

    *v94->_logitsMapBuffers = 0u;
    *v94->_offsetsMapBuffers = 0u;
    offsetsMapBuffers = v94->_offsetsMapBuffers;
    *&v94->_offsetsMapBuffers[2] = 0u;
    *&v94->_offsetsMapBuffers[4] = 0u;
    *&v94->_logitsMapBuffers[2] = 0u;
    *&v94->_logitsMapBuffers[4] = 0u;
    sub_26220A210(&v94->_logitsMap.__begin_);
    sub_26220A210(&v94->_offsetsMap.__begin_);
    v16 = 0;
    v17 = 0;
    v88 = *MEMORY[0x277CC4E28];
    v18 = 67109120;
    for (i = v94->_logitsMapBuffers; ; ++i)
    {
      v20 = dword_2623A851C[v17];
      v21 = v20 * dword_2623A8504[v17];
      begin = v94->_logitsMap.__begin_;
      *buf = 0;
      sub_26220A3AC(&begin[v16], v21 * v20, buf, v18);
      v106[0] = v93;
      v23 = dword_2623A8534[v17];
      v25 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v24, v23);
      v107[0] = v25;
      v106[1] = v92;
      v27 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v26, v21);
      v107[1] = v27;
      v107[2] = &unk_2874FABC0;
      v106[2] = v91;
      v106[3] = v90;
      v107[3] = &unk_2874FABD8;
      v106[4] = v89;
      v29 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v28, 2 * v23);
      v107[4] = v29;
      v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v107, v106, 5);

      v33 = IOSurfaceCreate(v31);
      v34 = (&v94->super.isa + v17);
      *(v34 + 16) = v33;
      if (!v33)
      {
        if (qword_27FF0C060 != -1)
        {
          dispatch_once(&qword_27FF0C060, &unk_2874EE100);
        }

        v35 = qword_27FF0C058;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v17;
          _os_log_debug_impl(&dword_2621C3000, v35, OS_LOG_TYPE_DEBUG, "DoorWindow IOSurfaceCreate logitsMap %d failure", buf, 8u);
        }

        v33 = *(v34 + 16);
      }

      v104 = v88;
      v105 = MEMORY[0x277CBEC10];
      v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, &v105, &v104, 1);
      v37 = CVPixelBufferCreateWithIOSurface(allocator, v33, v36, i);
      if (v37)
      {
        if (qword_27FF0C060 != -1)
        {
          dispatch_once(&qword_27FF0C060, &unk_2874EE100);
        }

        v38 = qword_27FF0C058;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v37;
          _os_log_debug_impl(&dword_2621C3000, v38, OS_LOG_TYPE_DEBUG, "CVPixelBufferCreateWithIOSurface output logits failure (%d)", buf, 8u);
        }
      }

      ++v17;
      v16 += 24;
      if (v17 == 6)
      {
        v39 = 0;
        v40 = 0;
        while (1)
        {
          v41 = dword_2623A851C[v40];
          v42 = v41 * dword_2623A854C[v40];
          v43 = v94->_offsetsMap.__begin_;
          *buf = 0;
          sub_26220A3AC(&v43[v39], v42 * v41, buf, v18);
          v102[0] = v93;
          v44 = dword_2623A8534[v40];
          v46 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v45, v44);
          v103[0] = v46;
          v102[1] = v92;
          v48 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v47, v42);
          v103[1] = v48;
          v103[2] = &unk_2874FABC0;
          v102[2] = v91;
          v102[3] = v90;
          v103[3] = &unk_2874FABD8;
          v102[4] = v89;
          v50 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v49, 2 * v44);
          v103[4] = v50;
          v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v103, v102, 5);

          v54 = IOSurfaceCreate(v52);
          v55 = (&v94->super.isa + v40);
          *(v55 + 22) = v54;
          if (!v54)
          {
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v56 = qword_27FF0C058;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              *&buf[4] = v40;
              _os_log_debug_impl(&dword_2621C3000, v56, OS_LOG_TYPE_DEBUG, "DoorWindow IOSurfaceCreate offsetsMap %d failure", buf, 8u);
            }

            v54 = *(v55 + 22);
          }

          v100 = v88;
          v101 = MEMORY[0x277CBEC10];
          v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, &v101, &v100, 1);
          v58 = CVPixelBufferCreateWithIOSurface(allocator, v54, v57, offsetsMapBuffers);
          if (v58)
          {
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v59 = qword_27FF0C058;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              *&buf[4] = v58;
              _os_log_debug_impl(&dword_2621C3000, v59, OS_LOG_TYPE_DEBUG, "CVPixelBufferCreateWithIOSurface output offsets failure (%d)", buf, 8u);
            }
          }

          ++v40;
          ++offsetsMapBuffers;
          v39 += 24;
          if (v40 == 6)
          {
            sub_26220A5F0(&v94->_softmaxBuffer, 5uLL);
            *buf = xmmword_2623A7820;
            sub_26220A704(&v94->_importantClasses.__begin_, buf, v111, 4uLL);
            for (j = 0; j != 6; ++j)
            {
              *buf = *&dword_2623A8584[j] * 448.0;
              sub_2621C8F2C(&v94->_defaultBoxStrides, buf);
            }

            v61 = 0;
            v62 = v94->_defaultBoxStrides.__begin_;
            v63 = &v94->_defaultBoxSizes[0][0][1];
            for (k = &v94->_defaultBoxSizes[0][5][1]; ; k += 40)
            {
              v65 = 0;
              v66 = v62[v61];
              v67 = v63;
              do
              {
                v68 = sqrtf(*&dword_2623A859C[v65]);
                *(v67 - 1) = v66 * v68;
                *v67 = v66 / v68;
                ++v65;
                v67 += 2;
              }

              while (v65 != 5);
              if (v61 == 5)
              {
                break;
              }

              v69 = 0;
              v70 = sqrtf(v66 * v62[v61 + 1]);
              v71 = k;
              do
              {
                v72 = sqrtf(*&dword_2623A859C[v69]);
                *(v71 - 1) = v70 * v72;
                *v71 = v70 / v72;
                ++v69;
                v71 += 2;
              }

              while (v69 != 5);
              ++v61;
              v63 += 40;
            }

            end = v94->_anchorBoxes.__end_;
            v74 = v94->_anchorBoxes.__begin_;
            v75 = end - v74;
            v76 = 0xAAAAAAAAAAAAAAABLL * ((end - v74) >> 3);
            if (v76 > 5)
            {
              if (v75 != 144)
              {
                v82 = v74 + 144;
                while (end != v82)
                {
                  end -= 24;
                  *buf = end;
                  sub_262208FEC(buf);
                }

                v94->_anchorBoxes.__end_ = v82;
              }
            }

            else
            {
              v77 = 6 - v76;
              cap = v94->_anchorBoxes.__cap_;
              if (0xAAAAAAAAAAAAAAABLL * ((cap - end) >> 3) < v77)
              {
                v79 = 0xAAAAAAAAAAAAAAABLL * ((cap - v74) >> 3);
                v80 = 2 * v79;
                if (2 * v79 <= 6)
                {
                  v80 = 6;
                }

                if (v79 >= 0x555555555555555)
                {
                  v81 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v81 = v80;
                }

                if (v81 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_2621C6A34();
              }

              bzero(v94->_anchorBoxes.__end_, 24 * ((120 - v75) / 0x18uLL) + 24);
              v94->_anchorBoxes.__end_ = &end[24 * ((120 - v75) / 0x18uLL) + 24];
            }

            v96 = 0;
            sub_2621CD1D8(&__p, 4uLL, &v96);
            sub_2621E1B50(&v98, 0x38uLL, &__p);
            memset(v99, 0, sizeof(v99));
            *buf = v99;
            buf[8] = 0;
            sub_26220A828(v99, 0x38uLL);
          }
        }
      }
    }
  }

  return 0;
}

@end