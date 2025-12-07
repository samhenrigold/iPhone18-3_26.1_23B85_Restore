void sub_2726E0488(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(a16) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a17, a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(a22) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a23, a20, a22 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x250] & 1) == 0 && SLOBYTE(STACK[0x247]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x248], STACK[0x230], STACK[0x240] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x2C0] & 1) == 0 && SLOBYTE(STACK[0x2B7]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x2B8], STACK[0x2A0], STACK[0x2B0] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x2F8] & 1) == 0 && SLOBYTE(STACK[0x2EF]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x2F0], STACK[0x2D8], STACK[0x2E8] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x330] & 1) == 0 && SLOBYTE(STACK[0x327]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x328], STACK[0x310], STACK[0x320] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x368] & 1) == 0 && SLOBYTE(STACK[0x35F]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x360], STACK[0x348], STACK[0x358] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x3A0] & 1) == 0 && SLOBYTE(STACK[0x397]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x398], STACK[0x380], STACK[0x390] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x3D8] & 1) == 0 && SLOBYTE(STACK[0x3CF]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x3D0], STACK[0x3B8], STACK[0x3C8] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x410] & 1) == 0 && SLOBYTE(STACK[0x407]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x408], STACK[0x3F0], STACK[0x400] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x448] & 1) == 0 && SLOBYTE(STACK[0x43F]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x440], STACK[0x428], STACK[0x438] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x480] & 1) == 0 && SLOBYTE(STACK[0x477]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x478], STACK[0x460], STACK[0x470] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((STACK[0x4B8] & 1) == 0 && SLOBYTE(STACK[0x4AF]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x4B0], STACK[0x498], STACK[0x4A8] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((*(v32 - 112) & 1) == 0 && *(v32 - 121) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v32 - 120), *(v32 - 144), *(v32 - 128) & 0x7FFFFFFFFFFFFFFFLL);
    }

    std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](v32 - 256);
    v34 = __cxa_begin_catch(a1);
    log = vp::get_log(v34);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(v32 - 160, v31, "vp::vx::Voice_Processor]", 23);
      v37 = *(v32 - 137);
      v38 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&STACK[0x450]);
      }

      if (v37 < 0)
      {
        operator delete(*(v32 - 160));
      }
    }

    *v30 = 11;
    *(v30 + 4) = 0;
    __cxa_end_catch();
    JUMPOUT(0x2726DC184);
  }

  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::components_end_process<vp::vx::Downlink_Node_ID,vp::Expected<void,vp::vx::Error_Code>>(uint64_t *a1, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *a4;
      v11 = *(a4 + 4);
      (*(*v8 + 280))(v8, a3, &v10);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }
}

void sub_2726E122C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(__pa, a4);
  va_start(va, a4);
  v15 = va_arg(__pa, void);
  v17 = va_arg(__pa, void);
  v18 = va_arg(__pa, void);
  v19 = va_arg(__pa, void *);
  v20 = va_arg(__pa, void);
  v21 = va_arg(__pa, void);
  va_copy(va2, __pa);
  __p = va_arg(va2, void *);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  v27 = va_arg(va2, void);
  v28 = va_arg(va2, void);
  v29 = va_arg(va2, void);
  if (a2)
  {
    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (v6 < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v28, v25, v27 & 0x7FFFFFFFFFFFFFFFLL);
    }

    std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](va2);
    v10 = __cxa_begin_catch(a1);
    log = vp::get_log(v10);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__pa, v5, "vp::vx::Voice_Processor]", 23);
      v13 = HIBYTE(v25);
      v14 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(va);
      }

      if (v13 < 0)
      {
        operator delete(__p);
      }
    }

    *v4 = 11;
    *(v4 + 4) = 0;
    __cxa_end_catch();
    JUMPOUT(0x2726E0ECCLL);
  }

  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::run_all_of_uplink_dsp(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v436 = *MEMORY[0x277D85DE8];
  v418 = (a2 + 1128);
  v3 = atomic_load((a2 + 1128));
  if (v3 > 0x7FFFFFFE)
  {
LABEL_5:
    *this = 8;
    *(this + 4) = 0;
    return;
  }

  v5 = v3;
  while (1)
  {
    atomic_compare_exchange_strong((a2 + 1128), &v5, v3 + 1);
    if (v5 == v3)
    {
      break;
    }

    v3 = v5;
    if (v5 >= 0x7FFFFFFF)
    {
      goto LABEL_5;
    }
  }

  v419 = 1;
  v6 = *(a2 + 2400);
  if (!v6)
  {
    log = vp::get_log(this);
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      log_context_info = vp::get_log_context_info(v420, a2, "vp::vx::Voice_Processor]", 23);
      v30 = v420[23];
      v31 = v420[23];
      v32 = *&v420[8];
      v33 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        if (v31 >= 0)
        {
          v34 = v30;
        }

        else
        {
          v34 = v32;
        }

        v35 = *v420;
        if (v31 >= 0)
        {
          v35 = v420;
        }

        if (v34)
        {
          v36 = " ";
        }

        else
        {
          v36 = "";
        }

        *buf = 136315394;
        v430 = v35;
        v431 = 2080;
        *v432 = v36;
        _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_FAULT, "%s%scannot run uplink DSP with uninitialized VoiceProcessor", buf, 0x16u);
        LOBYTE(v31) = v420[23];
      }

      if ((v31 & 0x80) != 0)
      {
        operator delete(*v420);
      }
    }

    goto LABEL_77;
  }

  v7 = *(a2 + 780);
  if (!v7)
  {
LABEL_77:
    v27 = 0;
    *this = 8;
    *(this + 4) = 0;
    goto LABEL_78;
  }

  if (v7 != 2)
  {
    if (v7 != 1)
    {
      goto LABEL_16;
    }

    *(a2 + 780) = 2;
  }

  if (*(a2 + 2433) == 1)
  {
    *(a2 + 2433) = 0;
  }

  else
  {
    vp::vx::io::Graph::reset(v420, v6[8], v6[9], *(a2 + 2512));
    if ((v423 & 1) == 0 && SBYTE7(v422) < 0)
    {
      (*(**(&v422 + 1) + 24))(*(&v422 + 1), *&v420[16], v422 & 0x7FFFFFFFFFFFFFFFLL, 1);
    }
  }

LABEL_16:
  v8 = *(a2 + 2512);
  v9 = v6[8];
  if (0x86BCA1AF286BCA1BLL * ((v6[9] - v9) >> 4) <= v8)
  {
    *v420 = 0x10003A00000006;
    *&v420[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v421 = 0;
    *&v422 = 0;
    *&v420[16] = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v422 + 1);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(buf, v420);
    if (SBYTE7(v422) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(&v422 + 1), *&v420[16], v422 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    vp::vx::io::Node_Socket::get_terminal_buffered_frame_count(buf, v9 + 304 * v8, 0, 0);
  }

  if (v435)
  {
    vp::vx::io::Graph::process(&v410, v6, *(a2 + 2512), *buf);
    if (v417)
    {
      vp::vx::io::Graph::get_buffered_frame_count(&v404, v6[8], v6[9], *(a2 + 2516), 0);
      v10 = v409;
      if (v409)
      {
        vp::vx::io::Graph::process(&__p, v6, *(a2 + 2516), v404);
        v11 = v403;
        if (v403)
        {
          vp::vx::io::Graph::get_buffered_frame_count(&__dst, v6[8], v6[9], *(a2 + 2520), 0);
          v12 = v397;
          if (v397)
          {
            v13 = *(a2 + 2520);
            v14 = v6[8];
            if (0x86BCA1AF286BCA1BLL * ((v6[9] - v14) >> 4) <= v13)
            {
LABEL_44:
              *v420 = 0x1000A800000006;
              *&v420[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
              v421 = 0;
              *&v422 = 0;
              *&v420[16] = 0;
              vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v422 + 1);
              v24 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&v386, v420);
              if (SBYTE7(v422) < 0)
              {
                (*(**(&v422 + 1) + 24))(*(&v422 + 1), *&v420[16], v422 & 0x7FFFFFFFFFFFFFFFLL, 1, v24);
              }

LABEL_46:
              if (v391)
              {
                vp::vx::io::Graph::process(&v380, v6, *(a2 + 2520), v386);
                v25 = v385;
                if (v385)
                {
                  vp::vx::io::Graph::get_buffered_frame_count(&v374, v6[8], v6[9], *(a2 + 2524), 0);
                  v26 = v379;
                  if (v379)
                  {
                    vp::vx::io::Graph::process(&v365, v6, *(a2 + 2524), v374);
                    v27 = v370;
                    if (v370)
                    {
LABEL_50:
                      if ((v391 & 1) == 0 && SHIBYTE(v389) < 0)
                      {
                        (*(*v390 + 24))(v390, v388[0], v389 & 0x7FFFFFFFFFFFFFFFLL, 1);
                      }

                      goto LABEL_53;
                    }

                    v213 = vp::vx::io::Error::Error(&v360, &v365);
                    if (v363 >= 0)
                    {
                      v214 = HIBYTE(v363);
                    }

                    else
                    {
                      v214 = v362[1];
                    }

                    v215 = vp::get_log(v213);
                    v216 = os_log_type_enabled(v215, OS_LOG_TYPE_ERROR);
                    if (v214)
                    {
                      if (v216)
                      {
                        v217 = vp::get_log_context_info(&v371, a2, "vp::vx::Voice_Processor]", 23);
                        if ((v373 & 0x80u) == 0)
                        {
                          v218 = v373;
                        }

                        else
                        {
                          v218 = v372;
                        }

                        v219 = vp::get_log(v217);
                        if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
                        {
                          v220 = v373;
                          v221 = v371;
                          v222 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v360);
                          std::string::basic_string<std::string_view,0>(v358, v222, v223);
                          if (v220 >= 0)
                          {
                            v225 = &v371;
                          }

                          else
                          {
                            v225 = v221;
                          }

                          if (v218)
                          {
                            v226 = " ";
                          }

                          else
                          {
                            v226 = "";
                          }

                          if (v359 >= 0)
                          {
                            v227 = v358;
                          }

                          else
                          {
                            v227 = v358[0];
                          }

                          v228 = WORD2(v360);
                          v229 = HIWORD(v360);
                          log_source_file_path = vp::get_log_source_file_path(v361, v224);
                          if (v363 >= 0)
                          {
                            v231 = v362;
                          }

                          else
                          {
                            v231 = v362[0];
                          }

                          *v420 = 136316930;
                          *&v420[4] = v225;
                          *&v420[12] = 2080;
                          *&v420[14] = v226;
                          *&v420[22] = 2080;
                          v421 = "process uplink content DSP";
                          LOWORD(v422) = 2080;
                          *(&v422 + 2) = v227;
                          WORD5(v422) = 1024;
                          HIDWORD(v422) = v228;
                          v423 = 1024;
                          v424 = v229;
                          v425 = 2080;
                          v426 = log_source_file_path;
                          v427 = 2080;
                          v428 = v231;
                          v232 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                          v233 = v219;
                          v234 = 74;
                          goto LABEL_487;
                        }

                        goto LABEL_489;
                      }
                    }

                    else if (v216)
                    {
                      v344 = vp::get_log_context_info(&v371, a2, "vp::vx::Voice_Processor]", 23);
                      if ((v373 & 0x80u) == 0)
                      {
                        v345 = v373;
                      }

                      else
                      {
                        v345 = v372;
                      }

                      v346 = vp::get_log(v344);
                      if (os_log_type_enabled(v346, OS_LOG_TYPE_ERROR))
                      {
                        v347 = v373;
                        v348 = v371;
                        v349 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v360);
                        std::string::basic_string<std::string_view,0>(v358, v349, v350);
                        if (v347 >= 0)
                        {
                          v352 = &v371;
                        }

                        else
                        {
                          v352 = v348;
                        }

                        if (v345)
                        {
                          v353 = " ";
                        }

                        else
                        {
                          v353 = "";
                        }

                        if (v359 >= 0)
                        {
                          v354 = v358;
                        }

                        else
                        {
                          v354 = v358[0];
                        }

                        v355 = WORD2(v360);
                        v356 = HIWORD(v360);
                        v357 = vp::get_log_source_file_path(v361, v351);
                        *v420 = 136316674;
                        *&v420[4] = v352;
                        *&v420[12] = 2080;
                        *&v420[14] = v353;
                        *&v420[22] = 2080;
                        v421 = "process uplink content DSP";
                        LOWORD(v422) = 2080;
                        *(&v422 + 2) = v354;
                        WORD5(v422) = 1024;
                        HIDWORD(v422) = v355;
                        v423 = 1024;
                        v424 = v356;
                        v425 = 2080;
                        v426 = v357;
                        v232 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                        v233 = v346;
                        v234 = 64;
LABEL_487:
                        _os_log_impl(&dword_2724B4000, v233, OS_LOG_TYPE_ERROR, v232, v420, v234);
                        if (v359 < 0)
                        {
                          operator delete(v358[0]);
                        }
                      }

LABEL_489:
                      if (v373 < 0)
                      {
                        operator delete(v371);
                      }
                    }

                    *this = 7;
                    *(this + 4) = 0;
                    if (SHIBYTE(v363) < 0)
                    {
                      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v364, v362[0], v363 & 0x7FFFFFFFFFFFFFFFLL);
                    }

                    if (SHIBYTE(v368) < 0)
                    {
                      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v369, v367[0], v368 & 0x7FFFFFFFFFFFFFFFLL);
                    }

                    goto LABEL_50;
                  }

                  v191 = vp::vx::io::Error::Error(&v365, &v374);
                  if (v368 >= 0)
                  {
                    v192 = HIBYTE(v368);
                  }

                  else
                  {
                    v192 = v367[1];
                  }

                  v193 = vp::get_log(v191);
                  v194 = os_log_type_enabled(v193, OS_LOG_TYPE_ERROR);
                  if (v192)
                  {
                    if (v194)
                    {
                      v195 = vp::get_log_context_info(&v360, a2, "vp::vx::Voice_Processor]", 23);
                      if (v362[0] >= 0)
                      {
                        v196 = HIBYTE(v362[0]);
                      }

                      else
                      {
                        v196 = v361;
                      }

                      v197 = vp::get_log(v195);
                      if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
                      {
                        v198 = SHIBYTE(v362[0]);
                        v199 = v360;
                        v200 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v365);
                        std::string::basic_string<std::string_view,0>(&v371, v200, v201);
                        if (v198 >= 0)
                        {
                          v203 = &v360;
                        }

                        else
                        {
                          v203 = v199;
                        }

                        if (v196)
                        {
                          v204 = " ";
                        }

                        else
                        {
                          v204 = "";
                        }

                        if ((v373 & 0x80u) == 0)
                        {
                          v205 = &v371;
                        }

                        else
                        {
                          v205 = v371;
                        }

                        v206 = WORD2(v365);
                        v207 = HIWORD(v365);
                        v208 = vp::get_log_source_file_path(v366, v202);
                        if (v368 >= 0)
                        {
                          v209 = v367;
                        }

                        else
                        {
                          v209 = v367[0];
                        }

                        *v420 = 136316930;
                        *&v420[4] = v203;
                        *&v420[12] = 2080;
                        *&v420[14] = v204;
                        *&v420[22] = 2080;
                        v421 = "get buffered input frame count for uplink content DSP node";
                        LOWORD(v422) = 2080;
                        *(&v422 + 2) = v205;
                        WORD5(v422) = 1024;
                        HIDWORD(v422) = v206;
                        v423 = 1024;
                        v424 = v207;
                        v425 = 2080;
                        v426 = v208;
                        v427 = 2080;
                        v428 = v209;
                        v210 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                        v211 = v197;
                        v212 = 74;
                        goto LABEL_462;
                      }

                      goto LABEL_464;
                    }
                  }

                  else if (v194)
                  {
                    v330 = vp::get_log_context_info(&v360, a2, "vp::vx::Voice_Processor]", 23);
                    if (v362[0] >= 0)
                    {
                      v331 = HIBYTE(v362[0]);
                    }

                    else
                    {
                      v331 = v361;
                    }

                    v332 = vp::get_log(v330);
                    if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
                    {
                      v333 = SHIBYTE(v362[0]);
                      v334 = v360;
                      v335 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v365);
                      std::string::basic_string<std::string_view,0>(&v371, v335, v336);
                      if (v333 >= 0)
                      {
                        v338 = &v360;
                      }

                      else
                      {
                        v338 = v334;
                      }

                      if (v331)
                      {
                        v339 = " ";
                      }

                      else
                      {
                        v339 = "";
                      }

                      if ((v373 & 0x80u) == 0)
                      {
                        v340 = &v371;
                      }

                      else
                      {
                        v340 = v371;
                      }

                      v341 = WORD2(v365);
                      v342 = HIWORD(v365);
                      v343 = vp::get_log_source_file_path(v366, v337);
                      *v420 = 136316674;
                      *&v420[4] = v338;
                      *&v420[12] = 2080;
                      *&v420[14] = v339;
                      *&v420[22] = 2080;
                      v421 = "get buffered input frame count for uplink content DSP node";
                      LOWORD(v422) = 2080;
                      *(&v422 + 2) = v340;
                      WORD5(v422) = 1024;
                      HIDWORD(v422) = v341;
                      v423 = 1024;
                      v424 = v342;
                      v425 = 2080;
                      v426 = v343;
                      v210 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                      v211 = v332;
                      v212 = 64;
LABEL_462:
                      _os_log_impl(&dword_2724B4000, v211, OS_LOG_TYPE_ERROR, v210, v420, v212);
                      if (v373 < 0)
                      {
                        operator delete(v371);
                      }
                    }

LABEL_464:
                    if (SHIBYTE(v362[0]) < 0)
                    {
                      operator delete(v360);
                    }
                  }

                  *this = 7;
                  *(this + 4) = 0;
                  if (SHIBYTE(v368) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v369, v367[0], v368 & 0x7FFFFFFFFFFFFFFFLL);
                  }

                  v27 = 0;
                  if ((v26 & 1) != 0 || (SHIBYTE(v377) & 0x80000000) == 0)
                  {
                    goto LABEL_50;
                  }

                  (*(*v378 + 24))(v378, v376[0], v377 & 0x7FFFFFFFFFFFFFFFLL, 1);
                  goto LABEL_471;
                }

                v169 = vp::vx::io::Error::Error(&v374, &v380);
                if (v377 >= 0)
                {
                  v170 = HIBYTE(v377);
                }

                else
                {
                  v170 = v376[1];
                }

                v171 = vp::get_log(v169);
                v172 = os_log_type_enabled(v171, OS_LOG_TYPE_ERROR);
                if (v170)
                {
                  if (v172)
                  {
                    v173 = vp::get_log_context_info(&v365, a2, "vp::vx::Voice_Processor]", 23);
                    if (v367[0] >= 0)
                    {
                      v174 = HIBYTE(v367[0]);
                    }

                    else
                    {
                      v174 = v366;
                    }

                    v175 = vp::get_log(v173);
                    if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
                    {
                      v176 = SHIBYTE(v367[0]);
                      v177 = v365;
                      v178 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v374);
                      std::string::basic_string<std::string_view,0>(&v360, v178, v179);
                      if (v176 >= 0)
                      {
                        v181 = &v365;
                      }

                      else
                      {
                        v181 = v177;
                      }

                      if (v174)
                      {
                        v182 = " ";
                      }

                      else
                      {
                        v182 = "";
                      }

                      if (v362[0] >= 0)
                      {
                        v183 = &v360;
                      }

                      else
                      {
                        v183 = v360;
                      }

                      v184 = WORD2(v374);
                      v185 = HIWORD(v374);
                      v186 = vp::get_log_source_file_path(v375, v180);
                      if (v377 >= 0)
                      {
                        v187 = v376;
                      }

                      else
                      {
                        v187 = v376[0];
                      }

                      *v420 = 136316930;
                      *&v420[4] = v181;
                      *&v420[12] = 2080;
                      *&v420[14] = v182;
                      *&v420[22] = 2080;
                      v421 = "process uplink echo DSP";
                      LOWORD(v422) = 2080;
                      *(&v422 + 2) = v183;
                      WORD5(v422) = 1024;
                      HIDWORD(v422) = v184;
                      v423 = 1024;
                      v424 = v185;
                      v425 = 2080;
                      v426 = v186;
                      v427 = 2080;
                      v428 = v187;
                      v188 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                      v189 = v175;
                      v190 = 74;
                      goto LABEL_438;
                    }

                    goto LABEL_440;
                  }
                }

                else if (v172)
                {
                  v316 = vp::get_log_context_info(&v365, a2, "vp::vx::Voice_Processor]", 23);
                  if (v367[0] >= 0)
                  {
                    v317 = HIBYTE(v367[0]);
                  }

                  else
                  {
                    v317 = v366;
                  }

                  v318 = vp::get_log(v316);
                  if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
                  {
                    v319 = SHIBYTE(v367[0]);
                    v320 = v365;
                    v321 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v374);
                    std::string::basic_string<std::string_view,0>(&v360, v321, v322);
                    if (v319 >= 0)
                    {
                      v324 = &v365;
                    }

                    else
                    {
                      v324 = v320;
                    }

                    if (v317)
                    {
                      v325 = " ";
                    }

                    else
                    {
                      v325 = "";
                    }

                    if (v362[0] >= 0)
                    {
                      v326 = &v360;
                    }

                    else
                    {
                      v326 = v360;
                    }

                    v327 = WORD2(v374);
                    v328 = HIWORD(v374);
                    v329 = vp::get_log_source_file_path(v375, v323);
                    *v420 = 136316674;
                    *&v420[4] = v324;
                    *&v420[12] = 2080;
                    *&v420[14] = v325;
                    *&v420[22] = 2080;
                    v421 = "process uplink echo DSP";
                    LOWORD(v422) = 2080;
                    *(&v422 + 2) = v326;
                    WORD5(v422) = 1024;
                    HIDWORD(v422) = v327;
                    v423 = 1024;
                    v424 = v328;
                    v425 = 2080;
                    v426 = v329;
                    v188 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                    v189 = v318;
                    v190 = 64;
LABEL_438:
                    _os_log_impl(&dword_2724B4000, v189, OS_LOG_TYPE_ERROR, v188, v420, v190);
                    if (SHIBYTE(v362[0]) < 0)
                    {
                      operator delete(v360);
                    }
                  }

LABEL_440:
                  if (SHIBYTE(v367[0]) < 0)
                  {
                    operator delete(v365);
                  }
                }

                *this = 7;
                *(this + 4) = 0;
                if (SHIBYTE(v377) < 0)
                {
                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v378, v376[0], v377 & 0x7FFFFFFFFFFFFFFFLL);
                }

                v27 = 0;
                if ((v25 & 1) != 0 || (SHIBYTE(v383) & 0x80000000) == 0)
                {
                  goto LABEL_50;
                }

                (*(*v384 + 24))(v384, v382[0], v383 & 0x7FFFFFFFFFFFFFFFLL, 1);
                goto LABEL_471;
              }

              v147 = vp::vx::io::Error::Error(&v380, &v386);
              if (v383 >= 0)
              {
                v148 = HIBYTE(v383);
              }

              else
              {
                v148 = v382[1];
              }

              v149 = vp::get_log(v147);
              v150 = os_log_type_enabled(v149, OS_LOG_TYPE_ERROR);
              if (v148)
              {
                if (v150)
                {
                  v151 = vp::get_log_context_info(&v374, a2, "vp::vx::Voice_Processor]", 23);
                  if (v376[0] >= 0)
                  {
                    v152 = HIBYTE(v376[0]);
                  }

                  else
                  {
                    v152 = v375;
                  }

                  v153 = vp::get_log(v151);
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                  {
                    v154 = SHIBYTE(v376[0]);
                    v155 = v374;
                    v156 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v380);
                    std::string::basic_string<std::string_view,0>(&v365, v156, v157);
                    if (v154 >= 0)
                    {
                      v159 = &v374;
                    }

                    else
                    {
                      v159 = v155;
                    }

                    if (v152)
                    {
                      v160 = " ";
                    }

                    else
                    {
                      v160 = "";
                    }

                    if (v367[0] >= 0)
                    {
                      v161 = &v365;
                    }

                    else
                    {
                      v161 = v365;
                    }

                    v162 = WORD2(v380);
                    v163 = HIWORD(v380);
                    v164 = vp::get_log_source_file_path(v381, v158);
                    if (v383 >= 0)
                    {
                      v165 = v382;
                    }

                    else
                    {
                      v165 = v382[0];
                    }

                    *v420 = 136316930;
                    *&v420[4] = v159;
                    *&v420[12] = 2080;
                    *&v420[14] = v160;
                    *&v420[22] = 2080;
                    v421 = "get uplink echo DSP I/O block size";
                    LOWORD(v422) = 2080;
                    *(&v422 + 2) = v161;
                    WORD5(v422) = 1024;
                    HIDWORD(v422) = v162;
                    v423 = 1024;
                    v424 = v163;
                    v425 = 2080;
                    v426 = v164;
                    v427 = 2080;
                    v428 = v165;
                    v166 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                    v167 = v153;
                    v168 = 74;
                    goto LABEL_417;
                  }

                  goto LABEL_419;
                }
              }

              else if (v150)
              {
                v302 = vp::get_log_context_info(&v374, a2, "vp::vx::Voice_Processor]", 23);
                if (v376[0] >= 0)
                {
                  v303 = HIBYTE(v376[0]);
                }

                else
                {
                  v303 = v375;
                }

                v304 = vp::get_log(v302);
                if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
                {
                  v305 = SHIBYTE(v376[0]);
                  v306 = v374;
                  v307 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v380);
                  std::string::basic_string<std::string_view,0>(&v365, v307, v308);
                  if (v305 >= 0)
                  {
                    v310 = &v374;
                  }

                  else
                  {
                    v310 = v306;
                  }

                  if (v303)
                  {
                    v311 = " ";
                  }

                  else
                  {
                    v311 = "";
                  }

                  if (v367[0] >= 0)
                  {
                    v312 = &v365;
                  }

                  else
                  {
                    v312 = v365;
                  }

                  v313 = WORD2(v380);
                  v314 = HIWORD(v380);
                  v315 = vp::get_log_source_file_path(v381, v309);
                  *v420 = 136316674;
                  *&v420[4] = v310;
                  *&v420[12] = 2080;
                  *&v420[14] = v311;
                  *&v420[22] = 2080;
                  v421 = "get uplink echo DSP I/O block size";
                  LOWORD(v422) = 2080;
                  *(&v422 + 2) = v312;
                  WORD5(v422) = 1024;
                  HIDWORD(v422) = v313;
                  v423 = 1024;
                  v424 = v314;
                  v425 = 2080;
                  v426 = v315;
                  v166 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                  v167 = v304;
                  v168 = 64;
LABEL_417:
                  _os_log_impl(&dword_2724B4000, v167, OS_LOG_TYPE_ERROR, v166, v420, v168);
                  if (SHIBYTE(v367[0]) < 0)
                  {
                    operator delete(v365);
                  }
                }

LABEL_419:
                if (SHIBYTE(v376[0]) < 0)
                {
                  operator delete(v374);
                }
              }

              *this = 7;
              *(this + 4) = 0;
              if (SHIBYTE(v383) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v384, v382[0], v383 & 0x7FFFFFFFFFFFFFFFLL);
              }

LABEL_471:
              v27 = 0;
              goto LABEL_50;
            }

            v15 = __dst;
            v16 = (v14 + 304 * v13);
            v18 = *v16;
            v17 = v16[1];
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v19 = (*(*v18 + 40))(v18);
            v20 = 1;
            if (v19 <= 1)
            {
              if (v19)
              {
                if (v19 == 1)
                {
                  v20 = 0;
                  LODWORD(v386) = v15;
                  goto LABEL_62;
                }

LABEL_41:
                if (!v17)
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }

              v21 = (*(*v18 + 32))(v18);
              if (!v21 || (v22 = v15 / v21 * v21, v15 == v22))
              {
                v22 = v15;
              }

              v20 = 0;
              LODWORD(v386) = v22;
LABEL_62:
              v391 = 1;
              if (!v17)
              {
LABEL_43:
                if (!v20)
                {
                  goto LABEL_46;
                }

                goto LABEL_44;
              }

LABEL_42:
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              goto LABEL_43;
            }

            if (v19 == 2)
            {
              *v420 = 0x1C00A30000000DLL;
              *&v420[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
              v421 = 0;
              *&v422 = 0;
              *&v420[16] = 0;
              vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v422 + 1);
              v23 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&v386, v420);
              if (SBYTE7(v422) < 0)
              {
                (*(**(&v422 + 1) + 24))(*(&v422 + 1), *&v420[16], v422 & 0x7FFFFFFFFFFFFFFFLL, 1, v23);
              }
            }

            else
            {
              if (v19 != 3)
              {
                goto LABEL_41;
              }

              if (!v15)
              {
                v20 = 0;
                LODWORD(v386) = 0;
                goto LABEL_62;
              }

              (*(*v18 + 72))(&v386, v18, v15);
            }

            v20 = 0;
            goto LABEL_41;
          }

          v125 = vp::vx::io::Error::Error(&v386, &__dst);
          if (v389 >= 0)
          {
            v126 = HIBYTE(v389);
          }

          else
          {
            v126 = v388[1];
          }

          v127 = vp::get_log(v125);
          v128 = os_log_type_enabled(v127, OS_LOG_TYPE_ERROR);
          if (v126)
          {
            if (!v128)
            {
              goto LABEL_396;
            }

            v129 = vp::get_log_context_info(&v380, a2, "vp::vx::Voice_Processor]", 23);
            if (v382[0] >= 0)
            {
              v130 = HIBYTE(v382[0]);
            }

            else
            {
              v130 = v381;
            }

            v131 = vp::get_log(v129);
            if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_394;
            }

            v132 = SHIBYTE(v382[0]);
            v133 = v380;
            v134 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v386);
            std::string::basic_string<std::string_view,0>(&v374, v134, v135);
            if (v132 >= 0)
            {
              v137 = &v380;
            }

            else
            {
              v137 = v133;
            }

            if (v130)
            {
              v138 = " ";
            }

            else
            {
              v138 = "";
            }

            if (v376[0] >= 0)
            {
              v139 = &v374;
            }

            else
            {
              v139 = v374;
            }

            v140 = WORD2(v386);
            v141 = HIWORD(v386);
            v142 = vp::get_log_source_file_path(v387, v136);
            if (v389 >= 0)
            {
              v143 = v388;
            }

            else
            {
              v143 = v388[0];
            }

            *v420 = 136316930;
            *&v420[4] = v137;
            *&v420[12] = 2080;
            *&v420[14] = v138;
            *&v420[22] = 2080;
            v421 = "get buffered input frame count for uplink echo DSP node";
            LOWORD(v422) = 2080;
            *(&v422 + 2) = v139;
            WORD5(v422) = 1024;
            HIDWORD(v422) = v140;
            v423 = 1024;
            v424 = v141;
            v425 = 2080;
            v426 = v142;
            v427 = 2080;
            v428 = v143;
            v144 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
            v145 = v131;
            v146 = 74;
          }

          else
          {
            if (!v128)
            {
              goto LABEL_396;
            }

            v288 = vp::get_log_context_info(&v380, a2, "vp::vx::Voice_Processor]", 23);
            if (v382[0] >= 0)
            {
              v289 = HIBYTE(v382[0]);
            }

            else
            {
              v289 = v381;
            }

            v290 = vp::get_log(v288);
            if (!os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
            {
LABEL_394:
              if (SHIBYTE(v382[0]) < 0)
              {
                operator delete(v380);
              }

LABEL_396:
              *this = 7;
              *(this + 4) = 0;
              if (SHIBYTE(v389) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v390, v388[0], v389 & 0x7FFFFFFFFFFFFFFFLL);
              }

              v27 = 0;
              if ((v12 & 1) == 0 && SHIBYTE(v395) < 0)
              {
                (*(*v396 + 24))(v396, v394[0], v395 & 0x7FFFFFFFFFFFFFFFLL, 1);
                goto LABEL_401;
              }

LABEL_53:
              if (v417)
              {
                goto LABEL_56;
              }

              goto LABEL_54;
            }

            v291 = SHIBYTE(v382[0]);
            v292 = v380;
            v293 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v386);
            std::string::basic_string<std::string_view,0>(&v374, v293, v294);
            if (v291 >= 0)
            {
              v296 = &v380;
            }

            else
            {
              v296 = v292;
            }

            if (v289)
            {
              v297 = " ";
            }

            else
            {
              v297 = "";
            }

            if (v376[0] >= 0)
            {
              v298 = &v374;
            }

            else
            {
              v298 = v374;
            }

            v299 = WORD2(v386);
            v300 = HIWORD(v386);
            v301 = vp::get_log_source_file_path(v387, v295);
            *v420 = 136316674;
            *&v420[4] = v296;
            *&v420[12] = 2080;
            *&v420[14] = v297;
            *&v420[22] = 2080;
            v421 = "get buffered input frame count for uplink echo DSP node";
            LOWORD(v422) = 2080;
            *(&v422 + 2) = v298;
            WORD5(v422) = 1024;
            HIDWORD(v422) = v299;
            v423 = 1024;
            v424 = v300;
            v425 = 2080;
            v426 = v301;
            v144 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
            v145 = v290;
            v146 = 64;
          }

          _os_log_impl(&dword_2724B4000, v145, OS_LOG_TYPE_ERROR, v144, v420, v146);
          if (SHIBYTE(v376[0]) < 0)
          {
            operator delete(v374);
          }

          goto LABEL_394;
        }

        v103 = vp::vx::io::Error::Error(&__dst, &__p);
        if (v395 >= 0)
        {
          v104 = HIBYTE(v395);
        }

        else
        {
          v104 = v394[1];
        }

        v105 = vp::get_log(v103);
        v106 = os_log_type_enabled(v105, OS_LOG_TYPE_ERROR);
        if (v104)
        {
          if (v106)
          {
            v107 = vp::get_log_context_info(&v386, a2, "vp::vx::Voice_Processor]", 23);
            if (v388[0] >= 0)
            {
              v108 = HIBYTE(v388[0]);
            }

            else
            {
              v108 = v387;
            }

            v109 = vp::get_log(v107);
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              v110 = SHIBYTE(v388[0]);
              v111 = v386;
              v112 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__dst);
              std::string::basic_string<std::string_view,0>(&v380, v112, v113);
              if (v110 >= 0)
              {
                v115 = &v386;
              }

              else
              {
                v115 = v111;
              }

              if (v108)
              {
                v116 = " ";
              }

              else
              {
                v116 = "";
              }

              if (v382[0] >= 0)
              {
                v117 = &v380;
              }

              else
              {
                v117 = v380;
              }

              v118 = WORD2(__dst);
              v119 = HIWORD(__dst);
              v120 = vp::get_log_source_file_path(v393, v114);
              if (v395 >= 0)
              {
                v121 = v394;
              }

              else
              {
                v121 = v394[0];
              }

              *v420 = 136316930;
              *&v420[4] = v115;
              *&v420[12] = 2080;
              *&v420[14] = v116;
              *&v420[22] = 2080;
              v421 = "process uplink hardware DSP";
              LOWORD(v422) = 2080;
              *(&v422 + 2) = v117;
              WORD5(v422) = 1024;
              HIDWORD(v422) = v118;
              v423 = 1024;
              v424 = v119;
              v425 = 2080;
              v426 = v120;
              v427 = 2080;
              v428 = v121;
              v122 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
              v123 = v109;
              v124 = 74;
              goto LABEL_368;
            }

            goto LABEL_370;
          }
        }

        else if (v106)
        {
          v274 = vp::get_log_context_info(&v386, a2, "vp::vx::Voice_Processor]", 23);
          if (v388[0] >= 0)
          {
            v275 = HIBYTE(v388[0]);
          }

          else
          {
            v275 = v387;
          }

          v276 = vp::get_log(v274);
          if (os_log_type_enabled(v276, OS_LOG_TYPE_ERROR))
          {
            v277 = SHIBYTE(v388[0]);
            v278 = v386;
            v279 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__dst);
            std::string::basic_string<std::string_view,0>(&v380, v279, v280);
            if (v277 >= 0)
            {
              v282 = &v386;
            }

            else
            {
              v282 = v278;
            }

            if (v275)
            {
              v283 = " ";
            }

            else
            {
              v283 = "";
            }

            if (v382[0] >= 0)
            {
              v284 = &v380;
            }

            else
            {
              v284 = v380;
            }

            v285 = WORD2(__dst);
            v286 = HIWORD(__dst);
            v287 = vp::get_log_source_file_path(v393, v281);
            *v420 = 136316674;
            *&v420[4] = v282;
            *&v420[12] = 2080;
            *&v420[14] = v283;
            *&v420[22] = 2080;
            v421 = "process uplink hardware DSP";
            LOWORD(v422) = 2080;
            *(&v422 + 2) = v284;
            WORD5(v422) = 1024;
            HIDWORD(v422) = v285;
            v423 = 1024;
            v424 = v286;
            v425 = 2080;
            v426 = v287;
            v122 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
            v123 = v276;
            v124 = 64;
LABEL_368:
            _os_log_impl(&dword_2724B4000, v123, OS_LOG_TYPE_ERROR, v122, v420, v124);
            if (SHIBYTE(v382[0]) < 0)
            {
              operator delete(v380);
            }
          }

LABEL_370:
          if (SHIBYTE(v388[0]) < 0)
          {
            operator delete(v386);
          }
        }

        *this = 7;
        *(this + 4) = 0;
        if (SHIBYTE(v395) < 0)
        {
          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v396, v394[0], v395 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v27 = 0;
        if ((v11 & 1) != 0 || (SHIBYTE(v401) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        (*(*v402 + 24))(v402, v400[0], v401 & 0x7FFFFFFFFFFFFFFFLL, 1);
        goto LABEL_401;
      }

      v81 = vp::vx::io::Error::Error(&__p, &v404);
      if (v401 >= 0)
      {
        v82 = HIBYTE(v401);
      }

      else
      {
        v82 = v400[1];
      }

      v83 = vp::get_log(v81);
      v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
      if (v82)
      {
        if (v84)
        {
          v85 = vp::get_log_context_info(&__dst, a2, "vp::vx::Voice_Processor]", 23);
          v86 = SHIBYTE(v394[0]);
          if (v394[0] >= 0)
          {
            v87 = HIBYTE(v394[0]);
          }

          else
          {
            v87 = v393;
          }

          v88 = vp::get_log(v85);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v89 = __dst;
            v90 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__p);
            std::string::basic_string<std::string_view,0>(&v386, v90, v91);
            if (v86 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = v89;
            }

            if (v87)
            {
              v94 = " ";
            }

            else
            {
              v94 = "";
            }

            if (v388[0] >= 0)
            {
              v95 = &v386;
            }

            else
            {
              v95 = v386;
            }

            v96 = WORD2(__p);
            v97 = HIWORD(__p);
            v98 = vp::get_log_source_file_path(v399, v92);
            if (v401 >= 0)
            {
              v99 = v400;
            }

            else
            {
              v99 = v400[0];
            }

            *v420 = 136316930;
            *&v420[4] = p_dst;
            *&v420[12] = 2080;
            *&v420[14] = v94;
            *&v420[22] = 2080;
            v421 = "get buffered input frame count for uplink hardware DSP node";
            LOWORD(v422) = 2080;
            *(&v422 + 2) = v95;
            WORD5(v422) = 1024;
            HIDWORD(v422) = v96;
            v423 = 1024;
            v424 = v97;
            v425 = 2080;
            v426 = v98;
            v427 = 2080;
            v428 = v99;
            v100 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
            v101 = v88;
            v102 = 74;
LABEL_343:
            _os_log_impl(&dword_2724B4000, v101, OS_LOG_TYPE_ERROR, v100, v420, v102);
            if (SHIBYTE(v388[0]) < 0)
            {
              operator delete(v386);
            }

            LOBYTE(v86) = HIBYTE(v394[0]);
            goto LABEL_346;
          }

          goto LABEL_346;
        }
      }

      else if (v84)
      {
        v261 = vp::get_log_context_info(&__dst, a2, "vp::vx::Voice_Processor]", 23);
        v86 = SHIBYTE(v394[0]);
        if (v394[0] >= 0)
        {
          v262 = HIBYTE(v394[0]);
        }

        else
        {
          v262 = v393;
        }

        v263 = vp::get_log(v261);
        if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
        {
          v264 = __dst;
          v265 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__p);
          std::string::basic_string<std::string_view,0>(&v386, v265, v266);
          if (v86 >= 0)
          {
            v268 = &__dst;
          }

          else
          {
            v268 = v264;
          }

          if (v262)
          {
            v269 = " ";
          }

          else
          {
            v269 = "";
          }

          if (v388[0] >= 0)
          {
            v270 = &v386;
          }

          else
          {
            v270 = v386;
          }

          v271 = WORD2(__p);
          v272 = HIWORD(__p);
          v273 = vp::get_log_source_file_path(v399, v267);
          *v420 = 136316674;
          *&v420[4] = v268;
          *&v420[12] = 2080;
          *&v420[14] = v269;
          *&v420[22] = 2080;
          v421 = "get buffered input frame count for uplink hardware DSP node";
          LOWORD(v422) = 2080;
          *(&v422 + 2) = v270;
          WORD5(v422) = 1024;
          HIDWORD(v422) = v271;
          v423 = 1024;
          v424 = v272;
          v425 = 2080;
          v426 = v273;
          v100 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
          v101 = v263;
          v102 = 64;
          goto LABEL_343;
        }

LABEL_346:
        if ((v86 & 0x80) != 0)
        {
          operator delete(__dst);
        }
      }

      *this = 7;
      *(this + 4) = 0;
      if (SHIBYTE(v401) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v402, v400[0], v401 & 0x7FFFFFFFFFFFFFFFLL);
      }

      v27 = 0;
      if ((v10 & 1) != 0 || (SHIBYTE(v407) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      (*(*v408 + 24))(v408, v406[0], v407 & 0x7FFFFFFFFFFFFFFFLL, 1);
LABEL_401:
      v27 = 0;
      goto LABEL_53;
    }

    v59 = vp::vx::io::Error::Error(&v404, &v410);
    if (v407 >= 0)
    {
      v60 = HIBYTE(v407);
    }

    else
    {
      v60 = v406[1];
    }

    v61 = vp::get_log(v59);
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (v60)
    {
      if (v62)
      {
        v63 = vp::get_log_context_info(&__p, a2, "vp::vx::Voice_Processor]", 23);
        v64 = SHIBYTE(v400[0]);
        if (v400[0] >= 0)
        {
          v65 = HIBYTE(v400[0]);
        }

        else
        {
          v65 = v399;
        }

        v66 = vp::get_log(v63);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = __p;
          v68 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v404);
          std::string::basic_string<std::string_view,0>(&__dst, v68, v69);
          if (v64 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v67;
          }

          if (v65)
          {
            v72 = " ";
          }

          else
          {
            v72 = "";
          }

          if (v394[0] >= 0)
          {
            v73 = &__dst;
          }

          else
          {
            v73 = __dst;
          }

          v74 = WORD2(v404);
          v75 = HIWORD(v404);
          v76 = vp::get_log_source_file_path(v405, v70);
          if (v407 >= 0)
          {
            v77 = v406;
          }

          else
          {
            v77 = v406[0];
          }

          *v420 = 136316930;
          *&v420[4] = p_p;
          *&v420[12] = 2080;
          *&v420[14] = v72;
          *&v420[22] = 2080;
          v421 = "process uplink mic-ref-sync DSP";
          LOWORD(v422) = 2080;
          *(&v422 + 2) = v73;
          WORD5(v422) = 1024;
          HIDWORD(v422) = v74;
          v423 = 1024;
          v424 = v75;
          v425 = 2080;
          v426 = v76;
          v427 = 2080;
          v428 = v77;
          v78 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
          v79 = v66;
          v80 = 74;
LABEL_320:
          _os_log_impl(&dword_2724B4000, v79, OS_LOG_TYPE_ERROR, v78, v420, v80);
          if (SHIBYTE(v394[0]) < 0)
          {
            operator delete(__dst);
          }

          LOBYTE(v64) = HIBYTE(v400[0]);
          goto LABEL_323;
        }

        goto LABEL_323;
      }
    }

    else if (v62)
    {
      v248 = vp::get_log_context_info(&__p, a2, "vp::vx::Voice_Processor]", 23);
      v64 = SHIBYTE(v400[0]);
      if (v400[0] >= 0)
      {
        v249 = HIBYTE(v400[0]);
      }

      else
      {
        v249 = v399;
      }

      v250 = vp::get_log(v248);
      if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
      {
        v251 = __p;
        v252 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v404);
        std::string::basic_string<std::string_view,0>(&__dst, v252, v253);
        if (v64 >= 0)
        {
          v255 = &__p;
        }

        else
        {
          v255 = v251;
        }

        if (v249)
        {
          v256 = " ";
        }

        else
        {
          v256 = "";
        }

        if (v394[0] >= 0)
        {
          v257 = &__dst;
        }

        else
        {
          v257 = __dst;
        }

        v258 = WORD2(v404);
        v259 = HIWORD(v404);
        v260 = vp::get_log_source_file_path(v405, v254);
        *v420 = 136316674;
        *&v420[4] = v255;
        *&v420[12] = 2080;
        *&v420[14] = v256;
        *&v420[22] = 2080;
        v421 = "process uplink mic-ref-sync DSP";
        LOWORD(v422) = 2080;
        *(&v422 + 2) = v257;
        WORD5(v422) = 1024;
        HIDWORD(v422) = v258;
        v423 = 1024;
        v424 = v259;
        v425 = 2080;
        v426 = v260;
        v78 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
        v79 = v250;
        v80 = 64;
        goto LABEL_320;
      }

LABEL_323:
      if ((v64 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    *this = 7;
    *(this + 4) = 0;
    if (SHIBYTE(v407) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v408, v406[0], v407 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v27 = 0;
LABEL_54:
    if (SHIBYTE(v415) < 0)
    {
      (*(*v416 + 24))(v416, v414[0], v415 & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

LABEL_56:
    if (v435)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v37 = vp::vx::io::Error::Error(&v410, buf);
  if (v415 >= 0)
  {
    v38 = HIBYTE(v415);
  }

  else
  {
    v38 = v414[1];
  }

  v39 = vp::get_log(v37);
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
  if (v38)
  {
    if (v40)
    {
      v41 = vp::get_log_context_info(&v404, a2, "vp::vx::Voice_Processor]", 23);
      v42 = SHIBYTE(v406[0]);
      if (v406[0] >= 0)
      {
        v43 = HIBYTE(v406[0]);
      }

      else
      {
        v43 = v405;
      }

      v44 = vp::get_log(v41);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = v404;
        v46 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v410);
        std::string::basic_string<std::string_view,0>(&__p, v46, v47);
        if (v42 >= 0)
        {
          v49 = &v404;
        }

        else
        {
          v49 = v45;
        }

        if (v43)
        {
          v50 = " ";
        }

        else
        {
          v50 = "";
        }

        if (v400[0] >= 0)
        {
          v51 = &__p;
        }

        else
        {
          v51 = __p;
        }

        v52 = v411;
        v53 = v412;
        v54 = vp::get_log_source_file_path(v413, v48);
        if (v415 >= 0)
        {
          v55 = v414;
        }

        else
        {
          v55 = v414[0];
        }

        *v420 = 136316930;
        *&v420[4] = v49;
        *&v420[12] = 2080;
        *&v420[14] = v50;
        *&v420[22] = 2080;
        v421 = "get buffered input frame count for uplink mic-ref sync node";
        LOWORD(v422) = 2080;
        *(&v422 + 2) = v51;
        WORD5(v422) = 1024;
        HIDWORD(v422) = v52;
        v423 = 1024;
        v424 = v53;
        v425 = 2080;
        v426 = v54;
        v427 = 2080;
        v428 = v55;
        v56 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
        v57 = v44;
        v58 = 74;
LABEL_297:
        _os_log_impl(&dword_2724B4000, v57, OS_LOG_TYPE_ERROR, v56, v420, v58);
        if (SHIBYTE(v400[0]) < 0)
        {
          operator delete(__p);
        }

        LOBYTE(v42) = HIBYTE(v406[0]);
        goto LABEL_300;
      }

      goto LABEL_300;
    }
  }

  else if (v40)
  {
    v235 = vp::get_log_context_info(&v404, a2, "vp::vx::Voice_Processor]", 23);
    v42 = SHIBYTE(v406[0]);
    if (v406[0] >= 0)
    {
      v236 = HIBYTE(v406[0]);
    }

    else
    {
      v236 = v405;
    }

    v237 = vp::get_log(v235);
    if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
    {
      v238 = v404;
      v239 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v410);
      std::string::basic_string<std::string_view,0>(&__p, v239, v240);
      if (v42 >= 0)
      {
        v242 = &v404;
      }

      else
      {
        v242 = v238;
      }

      if (v236)
      {
        v243 = " ";
      }

      else
      {
        v243 = "";
      }

      if (v400[0] >= 0)
      {
        v244 = &__p;
      }

      else
      {
        v244 = __p;
      }

      v245 = v411;
      v246 = v412;
      v247 = vp::get_log_source_file_path(v413, v241);
      *v420 = 136316674;
      *&v420[4] = v242;
      *&v420[12] = 2080;
      *&v420[14] = v243;
      *&v420[22] = 2080;
      v421 = "get buffered input frame count for uplink mic-ref sync node";
      LOWORD(v422) = 2080;
      *(&v422 + 2) = v244;
      WORD5(v422) = 1024;
      HIDWORD(v422) = v245;
      v423 = 1024;
      v424 = v246;
      v425 = 2080;
      v426 = v247;
      v56 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
      v57 = v237;
      v58 = 64;
      goto LABEL_297;
    }

LABEL_300:
    if ((v42 & 0x80) != 0)
    {
      operator delete(v404);
    }
  }

  *this = 7;
  *(this + 4) = 0;
  if (SHIBYTE(v415) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v416, v414[0], v415 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v27 = 0;
LABEL_57:
  if (SHIBYTE(v433) < 0)
  {
    (*(*v434 + 24))(v434, *&v432[2], v433 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

LABEL_59:
  if (v419)
  {
LABEL_78:
    caulk::concurrent::shared_spin_lock::unlock_shared(v418);
  }

  if (v27)
  {
    *this = 0;
    *(this + 4) = 1;
  }
}

void sub_2726E3740(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(a16) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a17, a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(a22) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a23, a20, a22 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((a51 & 1) == 0 && SHIBYTE(a49) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a50, a47, a49 & 0x7FFFFFFFFFFFFFFFLL);
    }

    std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](v67 - 240);
    v69 = __cxa_begin_catch(a1);
    log = vp::get_log(v69);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(v67 - 144, v66, "vp::vx::Voice_Processor]", 23);
      v72 = *(v67 - 121);
      v73 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a65);
      }

      if (v72 < 0)
      {
        operator delete(*(v67 - 144));
      }
    }

    *v65 = 11;
    *(v65 + 4) = 0;
    __cxa_end_catch();
    JUMPOUT(0x2726E1B10);
  }

  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::components_end_process<vp::vx::Uplink_Node_ID,vp::Expected<void,vp::vx::Error_Code>>(uint64_t *a1, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *a4;
      v11 = *(a4 + 4);
      (*(*v8 + 232))(v8, a3, &v10);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }
}

uint64_t vp::vx::Voice_Processor::read_dsp_data(uint64_t a1, uint64_t a2, const AudioBufferList *a3, const AudioTimeStamp *a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 520);
  for (i = *(a1 + 528); v10 != i; v10 += 2)
  {
    v12 = *v10;
    v13 = v10[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 304))(v12, a2, a4);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = atomic_load((a1 + 1128));
  if (v14 > 0x7FFFFFFE)
  {
    goto LABEL_43;
  }

  v15 = v14;
  while (1)
  {
    atomic_compare_exchange_strong((a1 + 1128), &v15, v14 + 1);
    if (v15 == v14)
    {
      break;
    }

    v14 = v15;
    if (v15 >= 0x7FFFFFFF)
    {
      goto LABEL_43;
    }
  }

  v16 = *(a1 + 2584);
  if (!v16)
  {
    goto LABEL_52;
  }

  if (a2)
  {
    v17 = 0;
    v18 = 0;
    v19 = 9;
    goto LABEL_42;
  }

  if (*(a1 + 2732) == -1)
  {
LABEL_52:
    v19 = 0;
    v17 = 0;
    v18 = 1;
    goto LABEL_42;
  }

  a4->mFlags &= ~1u;
  if ((a5 & 0x100000000) != 0)
  {
    if (*(a1 + 2736) != a5)
    {
      v17 = 0;
      v18 = 0;
      v19 = 1;
      goto LABEL_42;
    }
  }

  else
  {
    a5 = *(a1 + 2736);
  }

  v21.n128_f64[0] = vp::vx::io::Graph::copy_output(v40, *(v16 + 96), *(v16 + 104), *(a1 + 2732), a3, a4, a5);
  if (v44)
  {
    v19 = v40[0];
    v17 = 0x100000000;
  }

  else
  {
    log = vp::get_log(v20);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::Voice_Processor]", 23);
      v24 = v39;
      v25 = v39;
      v26 = __p[1];
      v27 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        if (v25 >= 0)
        {
          v28 = v24;
        }

        else
        {
          v28 = v26;
        }

        v29 = __p[0];
        if (v25 >= 0)
        {
          v29 = __p;
        }

        if (v28)
        {
          v30 = " ";
        }

        else
        {
          v30 = "";
        }

        *buf = 136315650;
        v46 = v29;
        v47 = 2080;
        if (v42 >= 0)
        {
          v31 = &v41;
        }

        else
        {
          v31 = v41;
        }

        v48 = v30;
        v49 = 2080;
        v50 = v31;
        _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_ERROR, "%s%sfailed to read downlink hardware DSP output - %s", buf, 0x20u);
        LOBYTE(v25) = v39;
      }

      if ((v25 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    v17 = 0;
    v19 = 7;
  }

  if ((v44 & 1) == 0 && SHIBYTE(v42) < 0)
  {
    (*(*v43 + 24))(v43, v41, v42 & 0x7FFFFFFFFFFFFFFFLL, 1, v21);
  }

  v18 = 0;
LABEL_42:
  caulk::concurrent::shared_spin_lock::unlock_shared((a1 + 1128));
  if (v18)
  {
LABEL_43:
    v32 = 8;
    goto LABEL_45;
  }

  v32 = v17 | v19;
LABEL_45:
  v33 = *(a1 + 520);
  for (j = *(a1 + 528); v33 != j; v33 += 2)
  {
    v35 = *v33;
    v36 = v33[1];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v35 + 312))(v35, a2, a4, v32);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }
  }

  return v32;
}

{
  v98 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 520);
  for (i = *(a1 + 528); v10 != i; v10 += 2)
  {
    v12 = *v10;
    v13 = v10[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 256))(v12, a2, a4);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v88 = (a1 + 1128);
  v14 = atomic_load((a1 + 1128));
  if (v14 > 0x7FFFFFFE)
  {
    goto LABEL_80;
  }

  v15 = v14;
  while (1)
  {
    atomic_compare_exchange_strong((a1 + 1128), &v15, v14 + 1);
    if (v15 == v14)
    {
      break;
    }

    v14 = v15;
    if (v15 >= 0x7FFFFFFF)
    {
      goto LABEL_80;
    }
  }

  v16 = 1;
  v89 = 1;
  v17 = *(a1 + 2400);
  if (!v17)
  {
    goto LABEL_89;
  }

  if (a2 != 4)
  {
    v28 = 0;
    v16 = 0;
    v27 = 9;
    goto LABEL_79;
  }

  v18 = *(a1 + 2576);
  if (v18 == -1)
  {
LABEL_89:
    v27 = 0;
    v28 = 0;
    goto LABEL_79;
  }

  v19 = *(v17 + 96);
  if (v18 < (*(v17 + 104) - v19) >> 4)
  {
    v20 = 16 * v18;
    (*(**(v19 + 16 * v18) + 56))(buf);
    v21 = *buf;
    v22 = v95;
    (*(**(*(v17 + 96) + v20) + 56))(buf);
    v23 = (((v22 & v95) << 31) >> 31) & vabdd_f64(*buf, v21);
    v82[0] = v23;
    v87 = 1;
    LOBYTE(v92) = 1;
    *buf = v23;
    goto LABEL_17;
  }

  *buf = 0x10004A00000006;
  *&buf[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
  *&buf[24] = 0;
  *&v91 = 0;
  *&buf[16] = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v91 + 1);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v82, buf);
  if (SBYTE7(v91) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(&v91 + 1), *&buf[16], v91 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v23 = v82[0];
  LOBYTE(v92) = v87;
  *buf = v82[0];
  if ((v87 & 1) == 0)
  {
    *&buf[4] = v82[1];
    *&buf[8] = v83;
    *(&v91 + 1) = v86;
    if ((SHIBYTE(v85) & 0x80000000) == 0)
    {
      *&buf[16] = v84;
      *&v91 = v85;
LABEL_95:
      _os_crash();
      __break(1u);
    }

    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(&buf[16], v84, *(&v84 + 1));
    if ((v92 & 1) == 0)
    {
      goto LABEL_95;
    }
  }

LABEL_17:
  if ((a5 & 0x100000000) != 0)
  {
    v24 = a5;
  }

  else
  {
    v24 = v23;
  }

  if (v24)
  {
    v26.n128_f64[0] = vp::vx::io::Graph::copy_output(&v74, *(*(a1 + 2400) + 96), *(*(a1 + 2400) + 104), *(a1 + 2576), a3, a4, v24);
    if (v81)
    {
      v27 = v74;
      v28 = 0x100000000;
LABEL_72:
      if ((v81 & 1) == 0 && SHIBYTE(v79) < 0)
      {
        (*(*v80 + 24))(v80, v78[0], v79 & 0x7FFFFFFFFFFFFFFFLL, 1, v26);
      }

      goto LABEL_75;
    }

    if (v79 >= 0)
    {
      v29 = HIBYTE(v79);
    }

    else
    {
      v29 = v78[1];
    }

    log = vp::get_log(v25);
    v31 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        log_context_info = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
        if ((v73 & 0x80u) == 0)
        {
          v33 = v73;
        }

        else
        {
          v33 = v72;
        }

        v34 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = v73;
          v36 = __p;
          v37 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v74);
          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v39 = v38;
          if (v38 >= 0x17)
          {
            operator new();
          }

          v70 = v38;
          if (v38)
          {
            memmove(&__dst, v37, v38);
          }

          *(&__dst + v39) = 0;
          if (v35 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v36;
          }

          if (v33)
          {
            v57 = " ";
          }

          else
          {
            v57 = "";
          }

          if (v70 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v59 = v75;
          v60 = v76;
          log_source_file_path = vp::get_log_source_file_path(v77, v38);
          if (v79 >= 0)
          {
            v62 = v78;
          }

          else
          {
            v62 = v78[0];
          }

          *buf = 136316930;
          *&buf[4] = p_p;
          *&buf[12] = 2080;
          *&buf[14] = v57;
          *&buf[22] = 2080;
          *&buf[24] = "read uplink content DSP client output";
          LOWORD(v91) = 2080;
          *(&v91 + 2) = p_dst;
          WORD5(v91) = 1024;
          HIDWORD(v91) = v59;
          v92 = 1024;
          v93 = v60;
          v94 = 2080;
          v95 = log_source_file_path;
          v96 = 2080;
          v97 = v62;
          v53 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
          v54 = v34;
          v55 = 74;
LABEL_67:
          _os_log_impl(&dword_2724B4000, v54, OS_LOG_TYPE_ERROR, v53, buf, v55);
          if (v70 < 0)
          {
            operator delete(__dst);
          }

          goto LABEL_69;
        }

        goto LABEL_69;
      }
    }

    else if (v31)
    {
      v40 = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
      if ((v73 & 0x80u) == 0)
      {
        v41 = v73;
      }

      else
      {
        v41 = v72;
      }

      v42 = vp::get_log(v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = v73;
        v44 = __p;
        v45 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v74);
        std::string::basic_string<std::string_view,0>(&__dst, v45, v46);
        if (v43 >= 0)
        {
          v44 = &__p;
        }

        if (v41)
        {
          v48 = " ";
        }

        else
        {
          v48 = "";
        }

        if (v70 >= 0)
        {
          v49 = &__dst;
        }

        else
        {
          v49 = __dst;
        }

        v50 = v75;
        v51 = v76;
        v52 = vp::get_log_source_file_path(v77, v47);
        *buf = 136316674;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = v48;
        *&buf[22] = 2080;
        *&buf[24] = "read uplink content DSP client output";
        LOWORD(v91) = 2080;
        *(&v91 + 2) = v49;
        WORD5(v91) = 1024;
        HIDWORD(v91) = v50;
        v92 = 1024;
        v93 = v51;
        v94 = 2080;
        v95 = v52;
        v53 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
        v54 = v42;
        v55 = 64;
        goto LABEL_67;
      }

LABEL_69:
      if (v73 < 0)
      {
        operator delete(__p);
      }
    }

    v28 = 0;
    v27 = 7;
    goto LABEL_72;
  }

  v27 = 0;
  v28 = 0x100000000;
LABEL_75:
  if ((v87 & 1) == 0 && SHIBYTE(v85) < 0)
  {
    (*(*v86 + 24))(v86, v84, v85 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  v16 = 0;
LABEL_79:
  caulk::concurrent::shared_spin_lock::unlock_shared(v88);
  if (v16)
  {
LABEL_80:
    v63 = 8;
    goto LABEL_82;
  }

  v63 = v28 | v27;
LABEL_82:
  v64 = *(a1 + 520);
  for (j = *(a1 + 528); v64 != j; v64 += 2)
  {
    v66 = *v64;
    v67 = v64[1];
    if (v67)
    {
      atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v66 + 264))(v66, a2, a4, v63);
    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }
  }

  return v63;
}

void sub_2726E3FDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2726E47BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_2726E47D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::Voice_Processor::write_dsp_data(uint64_t a1@<X0>, uint64_t a2@<X1>, const AudioBufferList *a3@<X2>, const AudioTimeStamp *a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v111[20] = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[4] = 1;
  v13 = *(a1 + 520);
  for (i = *(a1 + 528); v13 != i; v13 += 2)
  {
    v15 = *v13;
    v6 = v13[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v15 + 288))(v15, a2, a4);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v87 = (a1 + 1128);
  v16 = atomic_load((a1 + 1128));
  if (v16 <= 0x7FFFFFFE)
  {
    v17 = v16;
    while (1)
    {
      atomic_compare_exchange_strong((a1 + 1128), &v17, v16 + 1);
      if (v17 == v16)
      {
        break;
      }

      v16 = v17;
      if (v17 >= 0x7FFFFFFF)
      {
        goto LABEL_11;
      }
    }

    v88 = 1;
    v18 = *(a1 + 2584);
    if (v18 && *(a1 + 780) == 2)
    {
      if (a2 > 3)
      {
        v20 = a5;
        if (a3)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      v19 = a1 + (8 * a2);
      LODWORD(v6) = *(v19 + 2700);
      if (v6 == -1)
      {
        v64 = 9;
        if ((a6[4] & 1) == 0)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v20 = *(v19 + 2704);
        if ((a5 & 0x100000000) == 0 || v20 == a5)
        {
          if (a3)
          {
            goto LABEL_29;
          }

LABEL_23:
          if (a2 > 2)
          {
            a3 = 0;
          }

          else
          {
            v21 = a1 + (8 * a2);
            vp::Audio_Buffer::prepare((v21 + 2760), v20);
            v22 = *(v21 + 2760);
            if (v22)
            {
              a3 = *(v22 + 80);
            }

            else
            {
              a3 = 0;
            }

            v18 = *(a1 + 2584);
          }

LABEL_29:
          vp::vx::io::Graph::copy_input(&v79, *(v18 + 96), *(v18 + 104), v6, a3, a4, v20);
          if (v86 == 1)
          {
            if (a2 >= 8)
            {
              std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
            }

            *(a1 + 2592) |= 1 << a2;
            goto LABEL_105;
          }

          std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v105);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "write downlink ", 15);
          if ((a2 - 1) > 2)
          {
            v23 = "dynamics DSP default audio input";
          }

          else
          {
            v23 = off_279E4A4C8[(a2 - 1)];
          }

          v24 = strlen(v23);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, v23, v24);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, " input", 6);
          if (v84 >= 0)
          {
            v26 = HIBYTE(v84);
          }

          else
          {
            v26 = v83[1];
          }

          log = vp::get_log(v25);
          v28 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
          if (v26)
          {
            if (v28)
            {
              log_context_info = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
              v30 = v78;
              v31 = v77;
              v32 = vp::get_log(log_context_info);
              if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_96;
              }

              if ((v30 & 0x80u) == 0)
              {
                v33 = v30;
              }

              else
              {
                v33 = v31;
              }

              if ((v78 & 0x80u) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              if (v33)
              {
                v35 = " ";
              }

              else
              {
                v35 = "";
              }

              exception_object = v35;
              std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::str[abi:ne200100](v73, v105);
              if (v74 >= 0)
              {
                v36 = v73;
              }

              else
              {
                v36 = v73[0];
              }

              v67 = v36;
              v37 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v79);
              if (v38 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v39 = v38;
              v65 = p_p;
              if (v38 >= 0x17)
              {
                operator new();
              }

              v72 = v38;
              if (v38)
              {
                memmove(&__dst, v37, v38);
              }

              *(&__dst + v39) = 0;
              if (v72 >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst;
              }

              v52 = v80;
              v53 = v81;
              log_source_file_path = vp::get_log_source_file_path(v82, v38);
              if (v84 >= 0)
              {
                v55 = v83;
              }

              else
              {
                v55 = v83[0];
              }

              *buf = 136316930;
              v90 = v65;
              v91 = 2080;
              v92 = exception_object;
              v93 = 2080;
              v94 = v67;
              v95 = 2080;
              v96 = p_dst;
              v97 = 1024;
              v98 = v52;
              v99 = 1024;
              v100 = v53;
              v101 = 2080;
              v102 = log_source_file_path;
              v103 = 2080;
              v104 = v55;
              _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s", buf, 0x4Au);
              if (v72 < 0)
              {
                operator delete(__dst);
              }

              if ((SHIBYTE(v74) & 0x80000000) == 0)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }
          }

          else if (v28)
          {
            v40 = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
            v41 = v78;
            v42 = v77;
            v43 = vp::get_log(v40);
            if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_96;
            }

            if ((v41 & 0x80u) == 0)
            {
              v44 = v41;
            }

            else
            {
              v44 = v42;
            }

            if ((v78 & 0x80u) == 0)
            {
              v45 = &__p;
            }

            else
            {
              v45 = __p;
            }

            if (v44)
            {
              v46 = " ";
            }

            else
            {
              v46 = "";
            }

            exception_objecta = v46;
            std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::str[abi:ne200100](v73, v105);
            if (v74 >= 0)
            {
              v47 = v73;
            }

            else
            {
              v47 = v73[0];
            }

            v68 = v47;
            v48 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v79);
            if (v49 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v50 = v49;
            v66 = v45;
            if (v49 >= 0x17)
            {
              operator new();
            }

            v72 = v49;
            if (v49)
            {
              memmove(&__dst, v48, v49);
            }

            *(&__dst + v50) = 0;
            if (v72 >= 0)
            {
              v56 = &__dst;
            }

            else
            {
              v56 = __dst;
            }

            v57 = v80;
            v58 = v81;
            v59 = vp::get_log_source_file_path(v82, v49);
            *buf = 136316674;
            v90 = v66;
            v91 = 2080;
            v92 = exception_objecta;
            v93 = 2080;
            v94 = v68;
            v95 = 2080;
            v96 = v56;
            v97 = 1024;
            v98 = v57;
            v99 = 1024;
            v100 = v58;
            v101 = 2080;
            v102 = v59;
            _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s", buf, 0x40u);
            if (v72 < 0)
            {
              operator delete(__dst);
            }

            if ((SHIBYTE(v74) & 0x80000000) == 0)
            {
              goto LABEL_96;
            }

LABEL_95:
            (*(*v75 + 24))(v75, v73[0], v74 & 0x7FFFFFFFFFFFFFFFLL, 1);
LABEL_96:
            if (v78 < 0)
            {
              operator delete(__p);
            }
          }

          if (a6[4] == 1)
          {
            a6[4] = 0;
          }

          *a6 = 7;
          v105[0] = &unk_2881BF070;
          v111[0] = &unk_2881BF0C0;
          v106 = &unk_2881BF098;
          v107 = &unk_2881BF248;
          if (SHIBYTE(v109) < 0)
          {
            (*(*v110 + 24))(v110, v108[7].__locale_, v109 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          v107 = (MEMORY[0x277D82868] + 16);
          std::locale::~locale(v108);
          std::iostream::~basic_iostream();
          MEMORY[0x2743CBE30](v111);
          if ((v86 & 1) == 0 && SHIBYTE(v84) < 0)
          {
            (*(*v85 + 24))(v85, v83[0], v84 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

LABEL_105:
          if ((v88 & 1) == 0)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }

        v64 = 1;
        if ((a6[4] & 1) == 0)
        {
LABEL_116:
          *a6 = v64;
LABEL_106:
          caulk::concurrent::shared_spin_lock::unlock_shared(v87);
          goto LABEL_107;
        }
      }
    }

    else
    {
      v64 = 8;
      if ((a6[4] & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    a6[4] = 0;
    goto LABEL_116;
  }

LABEL_11:
  if (a6[4] == 1)
  {
    a6[4] = 0;
  }

  *a6 = 8;
LABEL_107:
  *buf = *a6;
  LOBYTE(v90) = a6[4];
  v60 = *(a1 + 520);
  for (j = *(a1 + 528); v60 != j; v60 += 2)
  {
    v62 = *v60;
    v63 = v60[1];
    if (v63)
    {
      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v105[0]) = *buf;
    BYTE4(v105[0]) = v90;
    (*(*v62 + 296))(v62, a2, a4, v105);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }
  }
}

void sub_2726E5244(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (!a2)
  {
    _Unwind_Resume(v56);
  }

  __clang_call_terminate(a1);
}

void sub_2726E52CC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2726E52D4);
  }

  _Unwind_Resume(v2);
}

const void *std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::str[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  result = std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::view[abi:ne200100](a2 + 24);
  a1[3] = v3;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  v7 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = (*(*v3 + 16))(v3, v8, 1);
    a1[1] = v7;
    a1[2] = v8 | 0x8000000000000000;
    *a1 = v9;
    a1 = v9;
  }

  else
  {
    *(a1 + 23) = v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  result = memmove(a1, v6, v7);
LABEL_10:
  *(a1 + v7) = 0;
  return result;
}

void vp::vx::Voice_Processor::write_dsp_data(uint64_t a1@<X0>, uint64_t a2@<X1>, const AudioBufferList *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v122 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[4] = 1;
  v12 = *(a1 + 520);
  for (i = *(a1 + 528); v12 != i; v12 += 2)
  {
    v14 = *v12;
    v15 = v12[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v14 + 240))(v14, a2, a4);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v98 = (a1 + 1128);
  v16 = atomic_load((a1 + 1128));
  if (v16 <= 0x7FFFFFFE)
  {
    v17 = v16;
    while (1)
    {
      atomic_compare_exchange_strong((a1 + 1128), &v17, v16 + 1);
      if (v17 == v16)
      {
        break;
      }

      v16 = v17;
      if (v17 >= 0x7FFFFFFF)
      {
        goto LABEL_11;
      }
    }

    v99 = 1;
    v18 = *(a1 + 2400);
    if (!v18 || !*(a1 + 780))
    {
      if (a6[4] == 1)
      {
        a6[4] = 0;
      }

      v20 = 8;
      goto LABEL_34;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_31;
      }

      v19 = 2552;
    }

    else
    {
      v19 = 2528;
    }

    v21 = *(a1 + v19);
    if (v21 != -1)
    {
      v22 = 2556;
      if (!a2)
      {
        v22 = 2532;
      }

      v23 = *(a1 + v22);
      if ((a5 & 0x100000000) != 0 && v23 != a5)
      {
        if (a6[4] == 1)
        {
          a6[4] = 0;
        }

        v20 = 1;
LABEL_34:
        *a6 = v20;
LABEL_35:
        caulk::concurrent::shared_spin_lock::unlock_shared(v98);
        goto LABEL_36;
      }

      if (*(a4 + 56))
      {
        v30 = *(a1 + v22);
        v31 = 2560;
        if (!a2)
        {
          v31 = 2536;
        }

        v32 = 2568;
        if (!a2)
        {
          v32 = 2544;
        }

        v33 = *a4;
        if (*(a1 + v32))
        {
          v34 = *a4;
          if (*(a1 + v31) != v33)
          {
            vp::vx::io::Graph::reset(&v116, v18[8], v18[9], *(a1 + 2512));
            if ((v121 & 1) == 0 && SHIBYTE(v119) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v120, v118[0], v119 & 0x7FFFFFFFFFFFFFFFLL);
            }

            v18 = *(a1 + 2400);
          }

          v33 = v34;
        }

        v23 = v30;
        v29 = v33 + v30;
        v28 = 1;
      }

      else
      {
        v28 = 0;
        v29 = 0.0;
      }

      vp::vx::io::Graph::copy_input(&v90, v18[12], v18[13], v21, a3, a4, v23);
      if (v97 == 1)
      {
        v35 = 2560;
        if (!a2)
        {
          v35 = 2536;
        }

        v36 = a1 + v35;
        *v36 = v29;
        *(v36 + 8) = v28;
        if (a2 == 1)
        {
          *(a1 + 2433) = 1;
        }

        goto LABEL_35;
      }

      std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](&v116);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "write uplink ", 13);
      if (a2 == 1)
      {
        v37 = "hardware DSP ref input";
      }

      else
      {
        v37 = "hardware DSP mic input";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, v37, 22);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, " input", 6);
      if (v95 >= 0)
      {
        v39 = HIBYTE(v95);
      }

      else
      {
        v39 = v94[1];
      }

      log = vp::get_log(v38);
      v41 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v39)
      {
        if (v41)
        {
          log_context_info = vp::get_log_context_info(&v87, a1, "vp::vx::Voice_Processor]", 23);
          v43 = v89;
          v44 = v88;
          v45 = vp::get_log(log_context_info);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            if ((v43 & 0x80u) == 0)
            {
              v46 = v43;
            }

            else
            {
              v46 = v44;
            }

            if ((v89 & 0x80u) == 0)
            {
              v47 = &v87;
            }

            else
            {
              v47 = v87;
            }

            if (v46)
            {
              v48 = " ";
            }

            else
            {
              v48 = "";
            }

            v78 = v48;
            exception_object = v47;
            std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::str[abi:ne200100](v84, &v116);
            v49 = SHIBYTE(v85);
            v50 = v84[0];
            v51 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v90);
            v52 = __p;
            std::string::basic_string<std::string_view,0>(__p, v51, v53);
            if (v49 >= 0)
            {
              v50 = v84;
            }

            if (v83 < 0)
            {
              v52 = __p[0];
            }

            v55 = v91;
            v56 = v92;
            log_source_file_path = vp::get_log_source_file_path(v93, v54);
            if (v95 >= 0)
            {
              v58 = v94;
            }

            else
            {
              v58 = v94[0];
            }

            *buf = 136316930;
            v101 = exception_object;
            v102 = 2080;
            v103 = v78;
            v104 = 2080;
            v105 = v50;
            v106 = 2080;
            v107 = v52;
            v108 = 1024;
            v109 = v55;
            v110 = 1024;
            v111 = v56;
            v112 = 2080;
            v113 = log_source_file_path;
            v114 = 2080;
            v115 = v58;
            v59 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
            v60 = v45;
            v61 = 74;
LABEL_104:
            _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_ERROR, v59, buf, v61);
            if (v83 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v85) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v86, v84[0], v85 & 0x7FFFFFFFFFFFFFFFLL);
            }

            goto LABEL_108;
          }

          goto LABEL_108;
        }
      }

      else if (v41)
      {
        v62 = vp::get_log_context_info(&v87, a1, "vp::vx::Voice_Processor]", 23);
        v63 = v89;
        v64 = v88;
        v65 = vp::get_log(v62);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          if ((v63 & 0x80u) == 0)
          {
            v66 = v63;
          }

          else
          {
            v66 = v64;
          }

          if ((v89 & 0x80u) == 0)
          {
            v67 = &v87;
          }

          else
          {
            v67 = v87;
          }

          if (v66)
          {
            v68 = " ";
          }

          else
          {
            v68 = "";
          }

          v79 = v68;
          exception_objecta = v67;
          std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::str[abi:ne200100](v84, &v116);
          v69 = SHIBYTE(v85);
          v70 = v84[0];
          v71 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v90);
          v72 = __p;
          std::string::basic_string<std::string_view,0>(__p, v71, v73);
          if (v69 >= 0)
          {
            v70 = v84;
          }

          if (v83 < 0)
          {
            v72 = __p[0];
          }

          v75 = v91;
          v76 = v92;
          v77 = vp::get_log_source_file_path(v93, v74);
          *buf = 136316674;
          v101 = exception_objecta;
          v102 = 2080;
          v103 = v79;
          v104 = 2080;
          v105 = v70;
          v106 = 2080;
          v107 = v72;
          v108 = 1024;
          v109 = v75;
          v110 = 1024;
          v111 = v76;
          v112 = 2080;
          v113 = v77;
          v59 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
          v60 = v65;
          v61 = 64;
          goto LABEL_104;
        }

LABEL_108:
        if (v89 < 0)
        {
          operator delete(v87);
        }
      }

      if (a6[4] == 1)
      {
        a6[4] = 0;
      }

      *a6 = 7;
      std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(&v116);
      if ((v97 & 1) == 0 && SHIBYTE(v95) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v96, v94[0], v95 & 0x7FFFFFFFFFFFFFFFLL);
      }

      goto LABEL_35;
    }

LABEL_31:
    if (a6[4] == 1)
    {
      a6[4] = 0;
    }

    v20 = 9;
    goto LABEL_34;
  }

LABEL_11:
  if (a6[4] == 1)
  {
    a6[4] = 0;
  }

  *a6 = 8;
LABEL_36:
  *buf = *a6;
  LOBYTE(v101) = a6[4];
  v24 = *(a1 + 520);
  for (j = *(a1 + 528); v24 != j; v24 += 2)
  {
    v26 = *v24;
    v27 = v24[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v116 = *buf;
    v117 = v101;
    (*(*v26 + 248))(v26, a2, a4, &v116);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }
}

void sub_2726E5CA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int buf, int a51, int a52, __int16 a53, int a54, __int16 a55, __int16 a56, uint64_t a57, __int16 a58)
{
  if (a2)
  {
    if (v61 < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a18, v60, a17 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (a24 < 0)
    {
      operator delete(__p);
    }

    std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(&buf);
    if ((a31 & 1) == 0 && SHIBYTE(a29) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a30, a27, a29 & 0x7FFFFFFFFFFFFFFFLL);
    }

    std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](&a33);
    v62 = __cxa_begin_catch(a1);
    log = vp::get_log(v62);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(&a37, v58, "vp::vx::Voice_Processor]", 23);
      v65 = a42;
      v66 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a15);
      }

      if (v65 < 0)
      {
        operator delete(a37);
      }
    }

    if (*(v59 + 4) == 1)
    {
      *(v59 + 4) = 0;
    }

    *v59 = 11;
    __cxa_end_catch();
    JUMPOUT(0x2726E572CLL);
  }

  _Unwind_Resume(v67);
}

void sub_2726E5E8C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2726E5EA0);
  }

  __clang_call_terminate(a1);
}

void vp::vx::Voice_Processor::end_initialization(vp *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    log = vp::get_log(a1);
    v17 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      log_context_info = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
      v19 = HIBYTE(v46);
      v20 = SHIBYTE(v46);
      v21 = v45;
      v22 = vp::get_log(log_context_info);
      v17 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v20 >= 0)
        {
          v23 = v19;
        }

        else
        {
          v23 = v21;
        }

        p_p = __p;
        if (v20 >= 0)
        {
          p_p = &__p;
        }

        if (v23)
        {
          v25 = " ";
        }

        else
        {
          v25 = "";
        }

        *buf = 136315394;
        v49 = p_p;
        v50 = 2080;
        v51 = v25;
        _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_DEFAULT, "%s%send downlink initialization", buf, 0x16u);
        LOBYTE(v20) = HIBYTE(v46);
      }

      if ((v20 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    if (*(a1 + 194) == 4)
    {
      *a3 = 11;
      *(a3 + 4) = 0;
      __p = &unk_2881C1BD8;
      v45 = a3;
      v46 = a1;
      v47 = &__p;
      vp::vx::Voice_Processor::call_sync(a1, &__p);
      std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](&__p);
    }

    else
    {
      v35 = vp::get_log(v17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        v36 = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
        v37 = HIBYTE(v46);
        v38 = SHIBYTE(v46);
        v39 = v45;
        v40 = vp::get_log(v36);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          if (v38 >= 0)
          {
            v41 = v37;
          }

          else
          {
            v41 = v39;
          }

          v42 = __p;
          if (v38 >= 0)
          {
            v42 = &__p;
          }

          if (v41)
          {
            v43 = " ";
          }

          else
          {
            v43 = "";
          }

          *buf = 136315394;
          v49 = v42;
          v50 = 2080;
          v51 = v43;
          _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_FAULT, "%s%sfailed to end downlink initialization", buf, 0x16u);
          LOBYTE(v38) = HIBYTE(v46);
        }

        if ((v38 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }

      *a3 = 8;
      *(a3 + 4) = 0;
    }
  }

  else if (!a2)
  {
    v5 = vp::get_log(a1);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v7 = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
      v8 = HIBYTE(v46);
      v9 = SHIBYTE(v46);
      v10 = v45;
      v11 = vp::get_log(v7);
      v6 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v9 >= 0)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = __p;
        if (v9 >= 0)
        {
          v13 = &__p;
        }

        if (v12)
        {
          v14 = " ";
        }

        else
        {
          v14 = "";
        }

        *buf = 136315394;
        v49 = v13;
        v50 = 2080;
        v51 = v14;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEFAULT, "%s%send uplink initialization", buf, 0x16u);
        LOBYTE(v9) = HIBYTE(v46);
      }

      if ((v9 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    if (*(a1 + 194) == 2)
    {
      __p = &unk_2881C1B48;
      v47 = &__p;
      vp::vx::Voice_Processor::call_sync(a1, &__p);
      std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](&__p);
      *a3 = 0;
      v15 = 1;
    }

    else
    {
      v26 = vp::get_log(v6);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = vp::get_log_context_info(&__p, a1, "vp::vx::Voice_Processor]", 23);
        v28 = HIBYTE(v46);
        v29 = SHIBYTE(v46);
        v30 = v45;
        v31 = vp::get_log(v27);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          if (v29 >= 0)
          {
            v32 = v28;
          }

          else
          {
            v32 = v30;
          }

          v33 = __p;
          if (v29 >= 0)
          {
            v33 = &__p;
          }

          if (v32)
          {
            v34 = " ";
          }

          else
          {
            v34 = "";
          }

          *buf = 136315394;
          v49 = v33;
          v50 = 2080;
          v51 = v34;
          _os_log_impl(&dword_2724B4000, v31, OS_LOG_TYPE_FAULT, "%s%sfailed to end uplink initialization", buf, 0x16u);
          LOBYTE(v29) = HIBYTE(v46);
        }

        if ((v29 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }

      v15 = 0;
      *a3 = 8;
    }

    *(a3 + 4) = v15;
  }
}

uint64_t vp::vx::Voice_Processor::call_sync(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_retain(*(a1 + 24));
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN2vp2vx15Voice_Processor9call_syncENSt3__18functionIFvRS1_EEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_11019;
  v6[4] = a1;
  std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::__value_func[abi:ne200100](v7, a2);
  dispatch_sync(v4, v6);
  if (v4)
  {
    dispatch_release(v4);
  }

  return std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](v7);
}

{
  v7[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_retain(*(a1 + 24));
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZNK2vp2vx15Voice_Processor9call_syncENSt3__18functionIFvRKS1_EEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_133;
  v6[4] = a1;
  std::__function::__value_func<void ()(vp::vx::Voice_Processor const&)>::__value_func[abi:ne200100](v7, a2);
  dispatch_sync(v4, v6);
  if (v4)
  {
    dispatch_release(v4);
  }

  return std::__function::__value_func<void ()(vp::vx::Voice_Processor const&)>::~__value_func[abi:ne200100](v7);
}

void sub_2726E63E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ___ZN2vp2vx15Voice_Processor9call_syncENSt3__18functionIFvRS1_EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, *(a1 + 32));
}

void sub_2726E64C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726E64B0);
}

uint64_t std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__function::__func<vp::vx::Voice_Processor::end_downlink_initialization(void)::$_0,std::allocator<vp::vx::Voice_Processor::end_downlink_initialization(void)::$_0>,void ()(vp::vx::Voice_Processor&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  vp::vx::data_flow::State_Transaction::commit(*(a2 + 784), *(a2 + 792));
  vp::vx::Voice_Processor::handle_configuration_changes(&v15, v4);
  v5 = *(a1 + 8);
  v6 = v16;
  v7 = *(v5 + 4);
  if (v16)
  {
    if (!*(v5 + 4))
    {
      *(v5 + 4) = v16;
    }

    *(a2 + 776) = 5;
    v8 = *(v4 + 520);
    v9 = *(v4 + 528);

    vp::vx::Voice_Processor::components_end_initialization<vp::Domain>(v8, v9, 1);
  }

  else
  {
    v10 = v15;
    *v5 = v15;
    if (v7)
    {
      *(v5 + 4) = v6;
    }

    *(a2 + 776) = 6;
    v11 = *(v4 + 520);
    for (i = *(v4 + 528); v11 != i; v11 += 2)
    {
      v13 = *v11;
      v14 = v11[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v13 + 80))(v13, 1, v10);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }
}

void vp::vx::Voice_Processor::handle_configuration_changes(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v88 = *MEMORY[0x277D85DE8];
  if (!(*(a2 + 952) | *(a2 + 912)))
  {
LABEL_93:
    *this = 0;
    *(this + 4) = 1;
    return;
  }

  *buf = 0;
  *__p = a2;
  *&__p[8] = buf;
  vp::vx::Voice_Processor::exception_guard(a2, "log configuration changes", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::log_configuration_changes(vp::Domain)::$_0>, __p);
  *buf = 1;
  *__p = a2;
  *&__p[8] = buf;
  vp::vx::Voice_Processor::exception_guard(a2, "log configuration changes", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::log_configuration_changes(vp::Domain)::$_0>, __p);
  vp::rpb::Server::get_shared_instance(&v80);
  *__p = a2;
  vp::vx::Voice_Processor::exception_guard(a2, "disconnect RPB server", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::disconnect(vp::rpb::Server)::$_0>, __p);
  vp::objc::ID::~ID(&v80);
  v3 = caulk::concurrent::shared_spin_lock::lock((a2 + 1128));
  log = vp::get_log(v3);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, a2, "vp::vx::Voice_Processor]", 23);
    v6 = HIBYTE(v82);
    v7 = *&__p[8];
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if ((v6 & 0x80u) == 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      if (v82 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      v11 = v9 == 0;
      v12 = " ";
      if (v11)
      {
        v12 = "";
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, "%s%sbegin configuration change", buf, 0x16u);
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(*__p);
    }
  }

  *(a2 + 780) = 0;
  *__p = std::chrono::system_clock::now();
  v13 = std::chrono::system_clock::to_time_t(__p);
  v14 = v13;
  v15 = *(a2 + 520);
  v16 = *(a2 + 528);
  if (v15 != v16)
  {
    do
    {
      v17 = *v15;
      v18 = v15[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = (*(*v17 + 48))(v17, v14);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v15 += 2;
    }

    while (v15 != v16);
    v15 = *(a2 + 520);
    v16 = *(a2 + 528);
  }

  for (; v15 != v16; v15 += 2)
  {
    v19 = *v15;
    v20 = v15[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = (*(*v19 + 104))(v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  v21 = *(a2 + 1512);
  v22 = *(a2 + 1520);
  if (!v21 && v22)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v22)
  {
    v23 = v21 + 24 * v22;
    do
    {
      if (!v21)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      *(*(v21 + 8) + 1240) = v14;
      v21 += 24;
    }

    while (v21 != v23);
  }

  v24 = 0;
  v25 = a2 + 888;
  v26 = vp::domains(void)::s_domains;
  while (1)
  {
    v27 = v26[v24];
    v28 = 40;
    if (!v27)
    {
      v28 = 0;
    }

    v29 = v25 + v28;
    if (!*(v25 + v28 + 24))
    {
      goto LABEL_71;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__deallocate_node(*(v29 + 16));
    *(v29 + 16) = 0;
    v30 = *(v29 + 8);
    if (v30)
    {
      for (i = 0; i != v30; ++i)
      {
        *(*v29 + 8 * i) = 0;
      }
    }

    *(v29 + 24) = 0;
    v32 = *(a2 + 520);
    v33 = *(a2 + 528);
    while (v32 != v33)
    {
      v34 = *v32;
      v35 = v32[1];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v34 + 128))(v34, v27);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      v32 += 2;
    }

    v36.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    vp::vx::Voice_Processor::build_dsp(this, a2, v27);
    if ((*(this + 4) & 1) == 0)
    {
      break;
    }

    v38.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v39 = vp::get_log(v38.__d_.__rep_);
    v13 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
    if (v13)
    {
      v40 = v26;
      v41 = vp::get_log_context_info(buf, a2, "vp::vx::Voice_Processor]", 23);
      v42 = v87;
      v43 = *&buf[8];
      v44 = vp::get_log(v41);
      v13 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
      if (v13)
      {
        if ((v42 & 0x80u) == 0)
        {
          v45 = v42;
        }

        else
        {
          v45 = v43;
        }

        v46 = buf;
        if ((v87 & 0x80u) != 0)
        {
          v46 = *buf;
        }

        v11 = v45 == 0;
        v47 = " ";
        if (v11)
        {
          v47 = "";
        }

        v48 = "downlink";
        if (!v27)
        {
          v48 = "uplink";
        }

        *__p = 136315906;
        *&__p[4] = v46;
        *&__p[12] = 2080;
        *&__p[14] = v47;
        v82 = 2080;
        v83 = v48;
        v84 = 2048;
        v85 = (v38.__d_.__rep_ - v36.__d_.__rep_) / 1000;
        _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_INFO, "%s%smanaged to build %s DSP in %lld milliseconds", __p, 0x2Au);
      }

      if (v87 < 0)
      {
        operator delete(*buf);
      }

      v26 = v40;
      v25 = a2 + 888;
    }

    v49 = *(a2 + 520);
    v50 = *(a2 + 528);
    while (v49 != v50)
    {
      v51 = *v49;
      v52 = v49[1];
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = (*(*v51 + 136))(v51, v27);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      v49 += 2;
    }

LABEL_71:
    if (++v24 == 2)
    {
      v53 = *(a2 + 520);
      for (j = *(a2 + 528); v53 != j; v53 += 2)
      {
        v55 = *v53;
        v56 = v53[1];
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = (*(*v55 + 112))(v55);
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }
      }

      v57 = 1;
      *(a2 + 780) = 1;
      v58 = vp::get_log(v13);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = vp::get_log_context_info(__p, a2, "vp::vx::Voice_Processor]", 23);
        v60 = HIBYTE(v82);
        v61 = SHIBYTE(v82);
        v62 = *&__p[8];
        v63 = vp::get_log(v59);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          if (v61 >= 0)
          {
            v64 = v60;
          }

          else
          {
            v64 = v62;
          }

          v65 = *__p;
          if (v61 >= 0)
          {
            v65 = __p;
          }

          v11 = v64 == 0;
          v66 = " ";
          if (v11)
          {
            v66 = "";
          }

          *buf = 136315394;
          *&buf[4] = v65;
          *&buf[12] = 2080;
          *&buf[14] = v66;
          _os_log_impl(&dword_2724B4000, v63, OS_LOG_TYPE_DEFAULT, "%s%send configuration change", buf, 0x16u);
          LOBYTE(v61) = HIBYTE(v82);
        }

        if ((v61 & 0x80) != 0)
        {
          operator delete(*__p);
        }

        v57 = 1;
      }

      goto LABEL_91;
    }
  }

  v67 = vp::get_log(v37);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    v68 = vp::get_log_context_info(buf, a2, "vp::vx::Voice_Processor]", 23);
    v69 = v87;
    v70 = v87;
    v71 = *&buf[8];
    v72 = vp::get_log(v68);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      if (v70 >= 0)
      {
        v73 = v69;
      }

      else
      {
        v73 = v71;
      }

      v74 = *buf;
      if (v70 >= 0)
      {
        v74 = buf;
      }

      v11 = v73 == 0;
      v75 = " ";
      if (v11)
      {
        v75 = "";
      }

      *__p = 136315650;
      *&__p[4] = v74;
      v76 = "downlink";
      if (!v27)
      {
        v76 = "uplink";
      }

      *&__p[12] = 2080;
      *&__p[14] = v75;
      v82 = 2080;
      v83 = v76;
      _os_log_impl(&dword_2724B4000, v72, OS_LOG_TYPE_ERROR, "%s%sfailed to build %s DSP", __p, 0x20u);
      LOBYTE(v70) = v87;
    }

    if ((v70 & 0x80) != 0)
    {
      operator delete(*buf);
    }
  }

  v77 = *this;
  vp::vx::Voice_Processor::components_end_configuration_change<vp::Domain,vp::vx::Error_Code>(*(a2 + 520), *(a2 + 528), v27, v77);
  vp::vx::Voice_Processor::components_end_configuration_changes<vp::vx::Error_Code>(*(a2 + 520), *(a2 + 528), v77);
  v57 = 0;
LABEL_91:
  caulk::concurrent::shared_spin_lock::unlock((a2 + 1128));
  if (v57)
  {
    vp::rpb::Server::get_shared_instance(&v79);
    *__p = &v79;
    *&__p[8] = a2;
    vp::vx::Voice_Processor::exception_guard(a2, "connect RPB server", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::connect(vp::rpb::Server)::$_0>, __p);
    vp::objc::ID::~ID(&v79);
    goto LABEL_93;
  }
}

void sub_2726E6F7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::components_end_initialization<vp::Domain>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 72))(v6, a3);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 2;
    }

    while (v5 != a2);
  }
}

void vp::vx::Voice_Processor::build_dsp(_BYTE *a1, uint64_t a2, int a3)
{
  v169 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v29 = *(a2 + 2584);
    if (v29)
    {
      vp::vx::io::Graph::notify(v154, *(v29 + 64), *(v29 + 72), 1);
      if ((v158 & 1) == 0 && SHIBYTE(v156) < 0)
      {
        (*(*v157 + 24))(v157, v155, v156 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      v30 = *(a2 + 2584);
      *(a2 + 2584) = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    v31 = std::string::basic_string[abi:ne200100]<0>(v161, "DL");
    default_resource = std::pmr::get_default_resource(v31);
    vp::vx::io::Graph_Builder::Graph_Builder(v154, 1, v161, default_resource);
    if (v162 < 0)
    {
      operator delete(v161[0]);
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1192);
    *v114 = *v165;
    vp::vx::io::Graph_Builder::add_node_command(v154, v114);
    if (*&v114[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v114[8]);
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1256);
    *cf = *v165;
    vp::vx::io::Graph_Builder::add_node_delegate(v154, cf);
    if (cf[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cf[1]);
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1136);
    v33 = *v165;
    v34 = *&v165[8];
    if (*&v165[8])
    {
      atomic_fetch_add_explicit((*&v165[8] + 16), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = v158;
    v157 = v33;
    v158 = v34;
    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_weak(v34);
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1376);
    *__p = *v165;
    vp::vx::io::Graph_Builder::add_node_command(v154, __p);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1440);
    v153 = *v165;
    vp::vx::io::Graph_Builder::add_node_delegate(v154, &v153);
    if (*(&v153 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v153 + 1));
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1320);
    v36 = *v165;
    v37 = *&v165[8];
    if (*&v165[8])
    {
      atomic_fetch_add_explicit((*&v165[8] + 16), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = v160;
    v159 = v36;
    v160 = v37;
    if (v38)
    {
      std::__shared_weak_count::__release_weak(v38);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_weak(v37);
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    v39 = *(a2 + 2608);
    *&v152 = *(a2 + 2600);
    *(&v152 + 1) = v39;
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = vp::vx::io::Graph_Builder::add_node(v154, &v152);
    if (*(&v152 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v152 + 1));
    }

    *v165 = 0x100000000;
    v41 = boost::container::flat_map<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_subscript((a2 + 1504), v165);
    v42 = v41[1];
    *&v151 = *v41;
    *(&v151 + 1) = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v43 = vp::vx::io::Graph_Builder::add_node(v154, &v151);
    if (*(&v151 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v151 + 1));
    }

    *v165 = 0x100000001;
    v44 = boost::container::flat_map<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_subscript((a2 + 1504), v165);
    v45 = v44[1];
    *&v150 = *v44;
    *(&v150 + 1) = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    }

    v105 = vp::vx::io::Graph_Builder::add_node(v154, &v150);
    if (*(&v150 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v150 + 1));
    }

    *v165 = 0x100000002;
    v46 = boost::container::flat_map<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_subscript((a2 + 1504), v165);
    v47 = v46[1];
    v148 = *v46;
    v149 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v107 = vp::vx::io::Graph_Builder::add_node(v154, &v148);
    if (v149)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v149);
    }

    *v165 = 0x100000003;
    v48 = boost::container::flat_map<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_subscript((a2 + 1504), v165);
    v49 = v48[1];
    v146 = *v48;
    v147 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = vp::vx::io::Graph_Builder::add_node(v154, &v146);
    if (v147)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v147);
    }

    if (*(a2 + 264) != 3)
    {
      *v165 = 0x100000000;
      v51 = boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript((a2 + 1920), v165);
      v52 = v51[1];
      v144 = *v51;
      v145 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      vp::vx::io::Graph_Builder::add_port(v154, v107, 1, &v144);
      if (v145)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v145);
      }

      *v165 = 0x100000001;
      v53 = boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript((a2 + 1920), v165);
      v54 = v53[1];
      v142 = *v53;
      v143 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      vp::vx::io::Graph_Builder::add_port(v154, v107, 2, &v142);
      if (v143)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v143);
      }

      *v165 = 0x100000002;
      v55 = boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript((a2 + 1920), v165);
      v56 = v55[1];
      v140 = *v55;
      v141 = v56;
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      vp::vx::io::Graph_Builder::add_port(v154, v107, 3, &v140);
      if (v141)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
      }
    }

    *v165 = 0x100000003;
    v57 = boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript((a2 + 1920), v165);
    v58 = *v57;
    v59 = v57[1];
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = vp::vx::detail::get_value<BOOL>(v58 + 32);
    if (v60)
    {
      log = vp::get_log(v60);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        log_context_info = vp::get_log_context_info(v165, a2, "vp::vx::Voice_Processor]", 23);
        v63 = v165[23];
        v64 = *&v165[8];
        v65 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          if ((v63 & 0x80u) == 0)
          {
            v66 = v63;
          }

          else
          {
            v66 = v64;
          }

          v67 = *v165;
          if (v165[23] >= 0)
          {
            v67 = v165;
          }

          if (v66)
          {
            v68 = " ";
          }

          else
          {
            v68 = "";
          }

          buf = 136315394;
          *buf_4 = v67;
          *&buf_4[8] = 2080;
          *&buf_4[10] = v68;
          _os_log_impl(&dword_2724B4000, v65, OS_LOG_TYPE_DEFAULT, "%s%sspeaker telemetry input port is enabled!", &buf, 0x16u);
        }

        if ((v165[23] & 0x80000000) != 0)
        {
          operator delete(*v165);
        }
      }

      v138 = v58;
      v139 = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      vp::vx::io::Graph_Builder::add_port(v154, v50, 1, &v138);
      if (v139)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v139);
      }
    }

    *v165 = 0x300000000;
    v69 = boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript((a2 + 1920), v165);
    v70 = v69[1];
    v136 = *v69;
    v137 = v70;
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_port(v154, v50 | 0x100000000, 0, &v136);
    if (v137)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
    }

    v71 = *(a2 + 2352);
    v72 = *(a2 + 2360);
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      v135 = v72;
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v135 = 0;
    }

    v134 = v71;
    vp::vx::io::Graph_Builder::add_wire(v154, v40 | 0x100000000, 0, v43, 0, &v134);
    if (v135)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    v132 = v71;
    v133 = v72;
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_wire(v154, v43 | 0x100000000, 0, v105, 0, &v132);
    if (v133)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v133);
    }

    v130 = v71;
    v131 = v72;
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_wire(v154, v105 | 0x100000000, 0, v107, 0, &v130);
    if (v131)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v131);
    }

    v128 = v71;
    v129 = v72;
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_wire(v154, v107 | 0x100000000, 0, v50, 0, &v128);
    if (v129)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v129);
    }

    v87 = *(a2 + 520);
    for (i = *(a2 + 528); v87 != i; v87 += 2)
    {
      v89 = *v87;
      v90 = v87[1];
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v91 = (*(*v89 + 184))(v89, 1);
      if (v91)
      {
        v126 = v91;
        v127 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        vp::vx::io::Graph_Builder::add_node_command(v154, &v126);
        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v127);
        }
      }

      v92 = (*(*v89 + 192))(v89, 1);
      if (v92)
      {
        v124 = v92;
        v125 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        vp::vx::io::Graph_Builder::add_node_decorator(v154, &v124);
        if (v125)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v125);
        }
      }

      v93 = (*(*v89 + 200))(v89, 1);
      if (v93)
      {
        v122 = v93;
        v123 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        vp::vx::io::Graph_Builder::add_node_delegate(v154, &v122);
        if (v123)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v123);
        }
      }

      v94 = (*(*v89 + 208))(v89, 1);
      if (v94)
      {
        v120 = v94;
        v121 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        vp::vx::io::Graph_Builder::add_port_decorator(v154, &v120);
        if (v121)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v121);
        }
      }

      v95 = (*(*v89 + 216))(v89, 1);
      if (v95)
      {
        v118 = v95;
        v119 = v90;
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        vp::vx::io::Graph_Builder::add_wire_decorator(v154, &v118);
        if (v119)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v119);
        }
      }

      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }
    }

    if (*(a2 + 2672))
    {
      v96 = *(a2 + 744);
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v96->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        v97 = std::__shared_weak_count::lock(v96);
        std::__shared_weak_count::__release_weak(v96);
        *&v98 = a2 + 2616;
        *(&v98 + 1) = v97;
        if (v97)
        {
          atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
          v101 = v98;
          std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          v98 = v101;
        }
      }

      else
      {
        v98 = (a2 + 2616);
      }

      v117 = v98;
      vp::vx::io::Graph_Builder::add_node_command(v154, &v117);
      if (*(&v117 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v117 + 1));
      }
    }

    v99 = *(a2 + 16);
    v109 = v99;
    if (v99)
    {
      dispatch_retain(v99);
      vp::vx::io::Graph_Builder::build(&buf, v154, &v109);
    }

    vp::vx::io::Graph_Builder::build(&buf, v154, &v109);
  }

  if (!a3)
  {
    v4 = *(a2 + 2400);
    if (v4)
    {
      vp::vx::io::Graph::notify(v154, *(v4 + 64), *(v4 + 72), 1);
      if ((v158 & 1) == 0 && SHIBYTE(v156) < 0)
      {
        (*(*v157 + 24))(v157, v155, v156 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      v5 = *(a2 + 2400);
      *(a2 + 2400) = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }

    v6 = std::string::basic_string[abi:ne200100]<0>(__p, "UL");
    v7 = std::pmr::get_default_resource(v6);
    vp::vx::io::Graph_Builder::Graph_Builder(v154, 0, __p, v7);
    if (v112 < 0)
    {
      operator delete(__p[0]);
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1192);
    v153 = *v165;
    vp::vx::io::Graph_Builder::add_node_command(v154, &v153);
    if (*(&v153 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v153 + 1));
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1256);
    v152 = *v165;
    vp::vx::io::Graph_Builder::add_node_delegate(v154, &v152);
    if (*(&v152 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v152 + 1));
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1136);
    v8 = *v165;
    v9 = *&v165[8];
    if (*&v165[8])
    {
      atomic_fetch_add_explicit((*&v165[8] + 16), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v158;
    v157 = v8;
    v158 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1376);
    v151 = *v165;
    vp::vx::io::Graph_Builder::add_node_command(v154, &v151);
    if (*(&v151 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v151 + 1));
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1440);
    v150 = *v165;
    vp::vx::io::Graph_Builder::add_node_delegate(v154, &v150);
    if (*(&v150 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v150 + 1));
    }

    vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(v165, *(a2 + 744), a2 + 1320);
    v11 = *v165;
    v12 = *&v165[8];
    if (*&v165[8])
    {
      atomic_fetch_add_explicit((*&v165[8] + 16), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v160;
    v159 = v11;
    v160 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v14 = *(a2 + 2504);
    v148 = *(a2 + 2496);
    v149 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v106 = vp::vx::io::Graph_Builder::add_node(v154, &v148);
    if (v149)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v149);
    }

    *v165 = 0;
    v15 = boost::container::flat_map<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_subscript((a2 + 1504), v165);
    v16 = v15[1];
    v146 = *v15;
    v147 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v104 = vp::vx::io::Graph_Builder::add_node(v154, &v146);
    if (v147)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v147);
    }

    *v165 = 1;
    v17 = boost::container::flat_map<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_subscript((a2 + 1504), v165);
    v18 = v17[1];
    v144 = *v17;
    v145 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v103 = vp::vx::io::Graph_Builder::add_node(v154, &v144);
    if (v145)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v145);
    }

    *v165 = 2;
    v19 = boost::container::flat_map<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_subscript((a2 + 1504), v165);
    v20 = v19[1];
    v142 = *v19;
    v143 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v102 = vp::vx::io::Graph_Builder::add_node(v154, &v142);
    if (v143)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v143);
    }

    *v165 = 0;
    v21 = boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript((a2 + 1920), v165);
    v22 = v21[1];
    v140 = *v21;
    v141 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_port(v154, v106, 0, &v140);
    if (v141)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v141);
    }

    *v165 = 1;
    v23 = boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript((a2 + 1920), v165);
    v24 = v23[1];
    v138 = *v23;
    v139 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_port(v154, v106, 1, &v138);
    if (v139)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v139);
    }

    *v165 = 0x200000004;
    v25 = boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript((a2 + 1920), v165);
    v26 = v25[1];
    v136 = *v25;
    v137 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_port(v154, v102 | 0x100000000, 0, &v136);
    if (v137)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
    }

    v27 = *(a2 + 2336);
    v28 = *(a2 + 2344);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v135 = v28;
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v135 = 0;
    }

    v134 = v27;
    vp::vx::io::Graph_Builder::add_wire(v154, v106 | 0x100000000, 0, v104, 0, &v134);
    if (v135)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    v132 = v27;
    v133 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_wire(v154, v106 | 0x100000000, 1, v104, 1, &v132);
    if (v133)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v133);
    }

    v130 = v27;
    v131 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_wire(v154, v104 | 0x100000000, 0, v103, 0, &v130);
    if (v131)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v131);
    }

    v128 = v27;
    v129 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::io::Graph_Builder::add_wire(v154, v104 | 0x100000000, 1, v103, 1, &v128);
    if (v129)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v129);
    }

    cf[0] = CFStringCreateWithBytes(0, "should wire uplink microphone clip data", 39, 0x8000100u, 0);
    if (cf[0])
    {
      LODWORD(__dst) = 0;
      v116 = 0uLL;
      std::recursive_mutex::lock((a2 + 184));
      v73 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), cf);
      if (v73)
      {
        vp::vx::data_flow::State_Manager::find_state(&buf, (a2 + 64), *(v73 + 6));
        *v165 = buf;
        *&v165[8] = *&buf_4[4];
        *&buf_4[4] = 0;
        *&buf_4[12] = 0;
        vp::vx::data_flow::State<void>::~State(&__dst);
        LODWORD(__dst) = *v165;
        v116 = *&v165[8];
        *&v165[8] = 0;
        *&v165[16] = 0;
        vp::vx::data_flow::State<void>::~State(v165);
        vp::vx::data_flow::State<void>::~State(&buf);
      }

      if (!v116)
      {
        vp::vx::Voice_Processor::get_uplink_configuration(v161, a2);
        *v165 = &unk_2881C0DC8;
        v165[8] = 0;
        v166 = v165;
        LODWORD(v126) = v161[0];
        vp::vx::data_flow::State_Manager::create_state(&buf, (a2 + 64), v165);
        LODWORD(v163) = buf;
        v164 = *&buf_4[4];
        *&buf_4[4] = 0;
        *&buf_4[12] = 0;
        vp::vx::data_flow::State<void>::~State(&buf);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v165);
        *v165 = v163;
        *&v165[8] = v164;
        v164 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v163);
        *v114 = *v165;
        *&v114[8] = *&v165[8];
        *&v165[8] = 0;
        *&v165[16] = 0;
        vp::vx::data_flow::State<void>::~State(v165);
        vp::vx::data_flow::State<void>::~State(v161);
        vp::vx::Voice_Processor::make_weak_state_observer(v161, *(a2 + 728), *(a2 + 744));
        if (v161[1])
        {
          atomic_fetch_add_explicit(v161[1] + 2, 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      *v165 = __dst;
      *&v165[8] = v116;
      v116 = 0uLL;
      std::recursive_mutex::unlock((a2 + 184));
      vp::vx::data_flow::State<void>::~State(&__dst);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      vp::vx::data_flow::State<void>::~State((a2 + 2472));
      *(a2 + 2472) = *v165;
      *(a2 + 2480) = *&v165[8];
      *&v165[8] = 0;
      *&v165[16] = 0;
      v74 = vp::vx::data_flow::State<void>::~State(v165);
      v75 = std::pmr::get_default_resource(v74);
      *&v165[8] = 0;
      *&v165[16] = 0;
      *v165 = v75;
      vp::vx::data_flow::State<void>::get_value((a2 + 2472), v165);
      v76 = *vp::vx::data_flow::Value::view_storage(v165);
      vp::vx::data_flow::Value::~Value(v165);
      if (v76 == 1)
      {
        v126 = v27;
        v127 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        vp::vx::io::Graph_Builder::add_wire(v154, v104 | 0x100000000, 2, v103, 2, &v126);
        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v127);
        }
      }

      v124 = v27;
      v125 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      vp::vx::io::Graph_Builder::add_wire(v154, v103 | 0x100000000, 0, v102, 0, &v124);
      if (v125)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v125);
      }

      v77 = *(a2 + 520);
      for (j = *(a2 + 528); v77 != j; v77 += 2)
      {
        v80 = *v77;
        v79 = v77[1];
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v81 = (*(*v80 + 184))(v80, 0);
        if (v81)
        {
          v122 = v81;
          v123 = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          vp::vx::io::Graph_Builder::add_node_command(v154, &v122);
          if (v123)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v123);
          }
        }

        v82 = (*(*v80 + 192))(v80, 0);
        if (v82)
        {
          v120 = v82;
          v121 = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          vp::vx::io::Graph_Builder::add_node_decorator(v154, &v120);
          if (v121)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v121);
          }
        }

        v83 = (*(*v80 + 200))(v80, 0);
        if (v83)
        {
          v118 = v83;
          v119 = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          vp::vx::io::Graph_Builder::add_node_delegate(v154, &v118);
          if (v119)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v119);
          }
        }

        v84 = (*(*v80 + 208))(v80, 0);
        if (v84)
        {
          *&v117 = v84;
          *(&v117 + 1) = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          vp::vx::io::Graph_Builder::add_port_decorator(v154, &v117);
          if (*(&v117 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v117 + 1));
          }
        }

        v85 = (*(*v80 + 216))(v80, 0);
        if (v85)
        {
          v109 = v85;
          v110 = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          vp::vx::io::Graph_Builder::add_wire_decorator(v154, &v109);
          if (v110)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v110);
          }
        }

        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }
      }

      v86 = *(a2 + 16);
      v108 = v86;
      if (v86)
      {
        dispatch_retain(v86);
        vp::vx::io::Graph_Builder::build(v165, v154, &v108);
      }

      vp::vx::io::Graph_Builder::build(v165, v154, &v108);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }
}

void sub_2726E9B6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::Voice_Processor::components_end_configuration_change<vp::Domain,vp::vx::Error_Code>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 144))(v8, a3, a4);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v7 += 2;
    }

    while (v7 != a2);
  }
}

void vp::vx::Voice_Processor::components_end_configuration_changes<vp::vx::Error_Code>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 120))(v6, a3);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 2;
    }

    while (v5 != a2);
  }
}

void vp::vx::Voice_Processor::connect(vp::rpb::Server)::$_0::operator()(uint64_t a1)
{
  v233 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = **a1;
  v4 = [v3 isRunning];

  if (v4)
  {
    log = vp::get_log(v5);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(__p, v2, "vp::vx::Voice_Processor]", 23);
      v8 = BYTE7(v167);
      v9 = SBYTE7(v167);
      v10 = __p[1];
      v11 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (v9 >= 0)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = __p[0];
        if (v9 >= 0)
        {
          v13 = __p;
        }

        if (v12)
        {
          v14 = " ";
        }

        else
        {
          v14 = "";
        }

        *buf = 136315394;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = v14;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEFAULT, "%s%sconnect RPB", buf, 0x16u);
        LOBYTE(v9) = BYTE7(v167);
      }

      if ((v9 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    cf = CFStringCreateWithBytes(0, "VoiceProcessor", 14, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v15 = objc_alloc(MEMORY[0x277D46110]);
    v215 = [v15 initWithName:cf];

    if (cf)
    {
      CFRelease(cf);
    }

    v16 = CFStringCreateWithBytes(0, "Operating System", 16, 0x8000100u, 0);
    v17 = v16;
    v213 = v16;
    if (!v16)
    {
      v126 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v126, "Could not construct");
    }

    v18 = *(v2 + 264) - 1;
    if (v18 > 2)
    {
      v19 = "iOS";
    }

    else
    {
      v19 = off_279E4A4E0[v18];
    }

    CFRetain(v16);
    __p[0] = v17;
    applesauce::CF::TypeRef::TypeRef(buf, v19);
    vp::rpb::Object::add_user_info(&v215, __p, buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    CFRelease(v17);
    if (v213)
    {
      CFRelease(v213);
    }

    v20 = CFStringCreateWithBytes(0, "Operating System Release Type", 29, 0x8000100u, 0);
    v21 = v20;
    v212 = v20;
    if (!v20)
    {
      v127 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v127, "Could not construct");
    }

    CFRetain(v20);
    __p[0] = v21;
    v22 = *(v2 + 272);
    if (v22)
    {
      CFRetain(*(v2 + 272));
    }

    *buf = v22;
    vp::rpb::Object::add_user_info(&v215, __p, buf);
    if (v22)
    {
      CFRelease(v22);
    }

    CFRelease(v21);
    if (v212)
    {
      CFRelease(v212);
    }

    v23 = CFStringCreateWithBytes(0, "AppleInternal Build", 19, 0x8000100u, 0);
    v211 = v23;
    if (!v23)
    {
      v128 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v128, "Could not construct");
    }

    vp::rpb::Object::add_user_info<BOOL const&>(&v215, v23, (v2 + 280));
    if (v211)
    {
      CFRelease(v211);
    }

    v24 = CFStringCreateWithBytes(0, "UI Build", 8, 0x8000100u, 0);
    v210 = v24;
    if (!v24)
    {
      v129 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v129, "Could not construct");
    }

    vp::rpb::Object::add_user_info<BOOL const&>(&v215, v24, (v2 + 281));
    if (v210)
    {
      CFRelease(v210);
    }

    v25 = CFStringCreateWithBytes(0, "Tuning Directory Path", 21, 0x8000100u, 0);
    v209 = v25;
    if (!v25)
    {
      v130 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v130, "Could not construct");
    }

    if (*(v2 + 311) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(v2 + 288), *(v2 + 296));
      v25 = v209;
    }

    else
    {
      *__p = *(v2 + 288);
      *&v167 = *(v2 + 304);
    }

    vp::rpb::Object::add_user_info<std::string>(&v215, v25, __p);
    if (SBYTE7(v167) < 0)
    {
      operator delete(__p[0]);
    }

    if (v209)
    {
      CFRelease(v209);
    }

    v26 = CFStringCreateWithBytes(0, "Temporary Directory Path", 24, 0x8000100u, 0);
    v208 = v26;
    if (!v26)
    {
      v131 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v131, "Could not construct");
    }

    if (*(v2 + 335) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(v2 + 312), *(v2 + 320));
      v26 = v208;
    }

    else
    {
      *__p = *(v2 + 312);
      *&v167 = *(v2 + 328);
    }

    vp::rpb::Object::add_user_info<std::string>(&v215, v26, __p);
    if (SBYTE7(v167) < 0)
    {
      operator delete(__p[0]);
    }

    if (v208)
    {
      CFRelease(v208);
    }

    v27 = CFStringCreateWithBytes(0, "Secret Directory Path", 21, 0x8000100u, 0);
    v207 = v27;
    if (!v27)
    {
      v132 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v132, "Could not construct");
    }

    if (*(v2 + 359) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(v2 + 336), *(v2 + 344));
      v27 = v207;
    }

    else
    {
      *__p = *(v2 + 336);
      *&v167 = *(v2 + 352);
    }

    vp::rpb::Object::add_user_info<std::string>(&v215, v27, __p);
    if (SBYTE7(v167) < 0)
    {
      operator delete(__p[0]);
    }

    if (v207)
    {
      CFRelease(v207);
    }

    v28 = CFStringCreateWithBytes(0, "Hardware Model", 14, 0x8000100u, 0);
    v29 = v28;
    v206 = v28;
    if (!v28)
    {
      v133 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v133, "Could not construct");
    }

    CFRetain(v28);
    __p[0] = v29;
    v30 = *(v2 + 391);
    if (v30 >= 0)
    {
      v31 = (v2 + 368);
    }

    else
    {
      v31 = *(v2 + 368);
    }

    if (v30 >= 0)
    {
      v32 = *(v2 + 391);
    }

    else
    {
      v32 = *(v2 + 376);
    }

    *buf = CFStringCreateWithBytes(0, v31, v32, 0x8000100u, 0);
    if (!*buf)
    {
      v134 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v134, "Could not construct");
    }

    vp::rpb::Object::add_user_info(&v215, __p, buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    CFRelease(v29);
    if (v206)
    {
      CFRelease(v206);
    }

    v33 = CFStringCreateWithBytes(0, "Hardware Layout ID", 18, 0x8000100u, 0);
    v205 = v33;
    if (!v33)
    {
      v135 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v135, "Could not construct");
    }

    if (*(v2 + 396) == 1)
    {
      v34 = *(v2 + 392);
    }

    else
    {
      v34 = 0;
    }

    LODWORD(__p[0]) = v34;
    vp::rpb::Object::add_user_info<unsigned int>(&v215, v33, __p);
    if (v205)
    {
      CFRelease(v205);
    }

    v35 = CFStringCreateWithBytes(0, "Product Type", 12, 0x8000100u, 0);
    v204 = v35;
    if (!v35)
    {
      v136 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v136, "Could not construct");
    }

    if (*(v2 + 404) == 1)
    {
      v36 = *(v2 + 400);
    }

    else
    {
      v36 = 0;
    }

    LODWORD(__p[0]) = v36;
    vp::rpb::Object::add_user_info<unsigned int>(&v215, v35, __p);
    if (v204)
    {
      CFRelease(v204);
    }

    v37 = CFStringCreateWithBytes(0, "Acoustic ID", 11, 0x8000100u, 0);
    v38 = v37;
    v203 = v37;
    if (!v37)
    {
      v137 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v137, "Could not construct");
    }

    if (*(v2 + 416) == 1)
    {
      v39 = *(v2 + 412);
    }

    else
    {
      v39 = 0;
    }

    CFRetain(v37);
    __p[0] = v38;
    *valuePtr = v39;
    *buf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
    if (!*buf)
    {
      v138 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v138, "Could not construct");
    }

    vp::rpb::Object::add_user_info(&v215, __p, buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    CFRelease(v38);
    if (v203)
    {
      CFRelease(v203);
    }

    vp::rpb::Host::new_delegate(&v202);
    v40 = *(v2 + 728);
    v41 = *(v2 + 744);
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    v229[0] = &unk_2881C5D48;
    v229[1] = v40;
    v229[2] = v41;
    v229[3] = v229;
    vp::rpb::Host::Delegate::on_get_property_info(v202, v229);
    std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__value_func[abi:ne200100](v229);
    v42 = *(v2 + 728);
    v43 = *(v2 + 744);
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    v228[0] = &unk_2881C5DD8;
    v228[1] = v42;
    v228[2] = v43;
    v228[3] = v228;
    vp::rpb::Host::Delegate::on_get_property(v202, v228);
    std::__function::__value_func<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__value_func[abi:ne200100](v228);
    v201 = v202;
    vp::rpb::Host::set_delegate(v215, &v201);
    vp::objc::ID::~ID(&v201);
    v199 = CFStringCreateWithBytes(0, "Audio Client", 12, 0x8000100u, 0);
    if (!v199)
    {
      v139 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v139, "Could not construct");
    }

    v44 = v2 + 8;
    (*(*(v2 + 8) + 16))(buf, v2 + 8, 51);
    *v217 = *buf;
    *&v217[8] = *&buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v45 = vp::vx::data_flow::State<void>::~State(buf);
    default_resource = std::pmr::get_default_resource(v45);
    *&valuePtr[16] = 0;
    *valuePtr = default_resource;
    *v178 = *v217;
    *buf = *&v217[8];
    *&buf[8] = v178;
    *&buf[16] = valuePtr;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v217[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
    v47 = vp::vx::data_flow::Value::view_storage(valuePtr);
    *__p = *v47;
    v167 = *(v47 + 16);
    v168 = *(v47 + 32);
    vp::vx::data_flow::Value::~Value(valuePtr);
    vp::rpb::Terminal::Terminal(v232, __p);
    (*(*(v2 + 8) + 16))(valuePtr, v2 + 8, 52);
    *v224 = *valuePtr;
    *&v224[8] = *&valuePtr[8];
    *&valuePtr[8] = 0;
    *&valuePtr[16] = 0;
    v48 = vp::vx::data_flow::State<void>::~State(valuePtr);
    v49 = std::pmr::get_default_resource(v48);
    *&v178[8] = 0;
    *&v178[16] = 0;
    *v178 = v49;
    LODWORD(v222) = *v224;
    *valuePtr = *&v224[8];
    *&valuePtr[8] = &v222;
    *&valuePtr[16] = v178;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v224[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, valuePtr);
    v50 = vp::vx::data_flow::Value::view_storage(v178);
    *buf = *v50;
    *&buf[16] = *(v50 + 16);
    v227 = *(v50 + 32);
    vp::vx::data_flow::Value::~Value(v178);
    vp::rpb::Terminal::Terminal(&v230, buf);
    vp::rpb::Item::Item(&v200, &v199, v232, 1, &v230, 1);
    vp::objc::ID::~ID(&v230);
    vp::vx::data_flow::State<void>::~State(v224);
    vp::objc::ID::~ID(v232);
    vp::vx::data_flow::State<void>::~State(v217);
    if (v199)
    {
      CFRelease(v199);
    }

    vp::rpb::Host::add_item(v215, &v200);
    v197 = CFStringCreateWithBytes(0, "Hardware Microphone Input", 25, 0x8000100u, 0);
    if (!v197)
    {
      v140 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v140, "Could not construct");
    }

    (*(*v44 + 16))(buf, v2 + 8, 8);
    *v178 = *buf;
    *&v178[8] = *&buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v51 = vp::vx::data_flow::State<void>::~State(buf);
    v52 = std::pmr::get_default_resource(v51);
    *&valuePtr[16] = 0;
    *valuePtr = v52;
    *v224 = *v178;
    *buf = *&v178[8];
    *&buf[8] = v224;
    *&buf[16] = valuePtr;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v178[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
    v53 = vp::vx::data_flow::Value::view_storage(valuePtr);
    *__p = *v53;
    v167 = *(v53 + 16);
    v168 = *(v53 + 32);
    vp::vx::data_flow::Value::~Value(valuePtr);
    vp::rpb::Terminal::Terminal(v217, __p);
    vp::rpb::Item::Item(&v198, &v197, 0, 0, v217, 1);
    vp::objc::ID::~ID(v217);
    vp::vx::data_flow::State<void>::~State(v178);
    if (v197)
    {
      CFRelease(v197);
    }

    vp::rpb::Host::add_item(v215, &v198);
    v195 = CFStringCreateWithBytes(0, "Hardware Reference Input", 24, 0x8000100u, 0);
    if (!v195)
    {
      v141 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v141, "Could not construct");
    }

    (*(*v44 + 16))(buf, v2 + 8, 24);
    *v178 = *buf;
    *&v178[8] = *&buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v54 = vp::vx::data_flow::State<void>::~State(buf);
    v55 = std::pmr::get_default_resource(v54);
    *&valuePtr[16] = 0;
    *valuePtr = v55;
    *v224 = *v178;
    *buf = *&v178[8];
    *&buf[8] = v224;
    *&buf[16] = valuePtr;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v178[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
    v56 = vp::vx::data_flow::Value::view_storage(valuePtr);
    *__p = *v56;
    v167 = *(v56 + 16);
    v168 = *(v56 + 32);
    vp::vx::data_flow::Value::~Value(valuePtr);
    vp::rpb::Terminal::Terminal(v217, __p);
    vp::rpb::Item::Item(&v196, &v195, 0, 0, v217, 1);
    vp::objc::ID::~ID(v217);
    vp::vx::data_flow::State<void>::~State(v178);
    if (v195)
    {
      CFRelease(v195);
    }

    vp::rpb::Host::add_item(v215, &v196);
    v193 = CFStringCreateWithBytes(0, "Hardware Mix Output", 19, 0x8000100u, 0);
    if (!v193)
    {
      v142 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v142, "Could not construct");
    }

    (*(*v44 + 16))(buf, v2 + 8, 54);
    *v178 = *buf;
    *&v178[8] = *&buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v57 = vp::vx::data_flow::State<void>::~State(buf);
    v58 = std::pmr::get_default_resource(v57);
    *&valuePtr[16] = 0;
    *valuePtr = v58;
    *v224 = *v178;
    *buf = *&v178[8];
    *&buf[8] = v224;
    *&buf[16] = valuePtr;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v178[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
    v59 = vp::vx::data_flow::Value::view_storage(valuePtr);
    *__p = *v59;
    v167 = *(v59 + 16);
    v168 = *(v59 + 32);
    vp::vx::data_flow::Value::~Value(valuePtr);
    vp::rpb::Terminal::Terminal(v217, __p);
    vp::rpb::Item::Item(&v194, &v193, v217, 1, 0, 0);
    vp::objc::ID::~ID(v217);
    vp::vx::data_flow::State<void>::~State(v178);
    if (v193)
    {
      CFRelease(v193);
    }

    vp::rpb::Host::add_item(v215, &v194);
    v156 = *(v2 + 2400);
    v191 = CFStringCreateWithBytes(0, "Uplink", 6, 0x8000100u, 0);
    if (!v191)
    {
      v143 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v143, "Could not construct");
    }

    (*(*v44 + 16))(buf, v2 + 8, 8);
    *v224 = *buf;
    *&v224[8] = *&buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v60 = vp::vx::data_flow::State<void>::~State(buf);
    v61 = std::pmr::get_default_resource(v60);
    *&valuePtr[16] = 0;
    *valuePtr = v61;
    *v178 = *v224;
    *buf = *&v224[8];
    *&buf[8] = v178;
    *&buf[16] = valuePtr;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v224[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
    v62 = vp::vx::data_flow::Value::view_storage(valuePtr);
    *__p = *v62;
    v167 = *(v62 + 16);
    v168 = *(v62 + 32);
    vp::vx::data_flow::Value::~Value(valuePtr);
    vp::rpb::Terminal::Terminal(&v222, __p);
    (*(*v44 + 16))(valuePtr, v2 + 8, 24);
    *v232 = *valuePtr;
    *&v232[8] = *&valuePtr[8];
    *&valuePtr[8] = 0;
    *&valuePtr[16] = 0;
    v63 = vp::vx::data_flow::State<void>::~State(valuePtr);
    v64 = std::pmr::get_default_resource(v63);
    *&v178[8] = 0;
    *&v178[16] = 0;
    *v178 = v64;
    *v217 = *v232;
    *valuePtr = *&v232[8];
    *&valuePtr[8] = v217;
    *&valuePtr[16] = v178;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v232[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, valuePtr);
    v65 = vp::vx::data_flow::Value::view_storage(v178);
    *buf = *v65;
    *&buf[16] = *(v65 + 16);
    v227 = *(v65 + 32);
    vp::vx::data_flow::Value::~Value(v178);
    vp::rpb::Terminal::Terminal(&v223, buf);
    (*(*v44 + 16))(v178, v2 + 8, 51);
    LODWORD(v230) = *v178;
    v231 = *&v178[8];
    *&v178[8] = 0;
    *&v178[16] = 0;
    v66 = vp::vx::data_flow::State<void>::~State(v178);
    v67 = std::pmr::get_default_resource(v66);
    *&v217[16] = 0;
    *v217 = v67;
    LODWORD(v180) = v230;
    *v178 = v231;
    *&v178[8] = &v180;
    *&v178[16] = v217;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(v231, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, v178);
    v68 = vp::vx::data_flow::Value::view_storage(v217);
    *valuePtr = *v68;
    *&valuePtr[16] = *(v68 + 16);
    v190 = *(v68 + 32);
    vp::vx::data_flow::Value::~Value(v217);
    vp::rpb::Terminal::Terminal(&v220, valuePtr);
    vp::rpb::Item::Item(&v192, &v191, &v222, 2, &v220, 1);
    vp::objc::ID::~ID(&v220);
    vp::vx::data_flow::State<void>::~State(&v230);
    for (i = 8; i != -8; i -= 8)
    {
      vp::objc::ID::~ID((&v222 + i));
    }

    vp::vx::data_flow::State<void>::~State(v232);
    vp::vx::data_flow::State<void>::~State(v224);
    if (v191)
    {
      CFRelease(v191);
    }

    vp::rpb::Host::add_item(v215, &v192);
    vp::rpb::Wire::Wire(&v188, &v192, 0, &v200, 0);
    vp::rpb::Host::add_wire(v215, &v188);
    vp::rpb::Wire::Wire(&v187, &v198, 0, &v192, 0);
    vp::rpb::Host::add_wire(v215, &v187);
    vp::rpb::Wire::Wire(&v186, &v196, 0, &v192, 1);
    vp::rpb::Host::add_wire(v215, &v186);
    v157 = *(v2 + 2584);
    v185 = 0;
    if (*(v2 + 264) == 3)
    {
      v184 = CFStringCreateWithBytes(0, "Downlink", 8, 0x8000100u, 0);
      if (!v184)
      {
        v146 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v146, "Could not construct");
      }

      (*(*v44 + 16))(buf, v2 + 8, 52);
      *v217 = *buf;
      *&v217[8] = *&buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
      v70 = vp::vx::data_flow::State<void>::~State(buf);
      v71 = std::pmr::get_default_resource(v70);
      *&valuePtr[16] = 0;
      *valuePtr = v71;
      *v178 = *v217;
      *buf = *&v217[8];
      *&buf[8] = v178;
      *&buf[16] = valuePtr;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v217[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
      v72 = vp::vx::data_flow::Value::view_storage(valuePtr);
      *__p = *v72;
      v167 = *(v72 + 16);
      v168 = *(v72 + 32);
      vp::vx::data_flow::Value::~Value(valuePtr);
      vp::rpb::Terminal::Terminal(&v230, __p);
      (*(*v44 + 16))(valuePtr, v2 + 8, 54);
      *v224 = *valuePtr;
      *&v224[8] = *&valuePtr[8];
      *&valuePtr[8] = 0;
      *&valuePtr[16] = 0;
      v73 = vp::vx::data_flow::State<void>::~State(valuePtr);
      v74 = std::pmr::get_default_resource(v73);
      *&v178[8] = 0;
      *&v178[16] = 0;
      *v178 = v74;
      LODWORD(v220) = *v224;
      *valuePtr = *&v224[8];
      *&valuePtr[8] = &v220;
      *&valuePtr[16] = v178;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v224[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, valuePtr);
      v75 = vp::vx::data_flow::Value::view_storage(v178);
      *buf = *v75;
      *&buf[16] = *(v75 + 16);
      v227 = *(v75 + 32);
      vp::vx::data_flow::Value::~Value(v178);
      vp::rpb::Terminal::Terminal(&v222, buf);
      vp::rpb::Item::Item(v232, &v184, &v230, 1, &v222, 1);
      vp::objc::ID::operator=(&v185, v232);
      vp::objc::ID::~ID(v232);
      vp::objc::ID::~ID(&v222);
      vp::vx::data_flow::State<void>::~State(v224);
      vp::objc::ID::~ID(&v230);
      vp::vx::data_flow::State<void>::~State(v217);
      if (v184)
      {
        CFRelease(v184);
      }

      vp::rpb::Host::add_item(v215, &v185);
    }

    else
    {
      v182 = CFStringCreateWithBytes(0, "Downlink", 8, 0x8000100u, 0);
      if (!v182)
      {
        v147 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v147, "Could not construct");
      }

      (*(*v44 + 16))(buf, v2 + 8, 52);
      LODWORD(v222) = *buf;
      v223 = *&buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
      v76 = vp::vx::data_flow::State<void>::~State(buf);
      v77 = std::pmr::get_default_resource(v76);
      *&valuePtr[16] = 0;
      *valuePtr = v77;
      *v178 = v222;
      *buf = v223;
      *&buf[8] = v178;
      *&buf[16] = valuePtr;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v223, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
      v78 = vp::vx::data_flow::Value::view_storage(valuePtr);
      *__p = *v78;
      v167 = *(v78 + 16);
      v168 = *(v78 + 32);
      vp::vx::data_flow::Value::~Value(valuePtr);
      vp::rpb::Terminal::Terminal(v224, __p);
      (*(*v44 + 16))(valuePtr, v2 + 8, 54);
      LODWORD(v220) = *valuePtr;
      v221 = *&valuePtr[8];
      *&valuePtr[8] = 0;
      *&valuePtr[16] = 0;
      v79 = vp::vx::data_flow::State<void>::~State(valuePtr);
      v80 = std::pmr::get_default_resource(v79);
      *&v178[8] = 0;
      *&v178[16] = 0;
      *v178 = v80;
      *v217 = v220;
      *valuePtr = v221;
      *&valuePtr[8] = v217;
      *&valuePtr[16] = v178;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v221, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, valuePtr);
      v81 = vp::vx::data_flow::Value::view_storage(v178);
      *buf = *v81;
      *&buf[16] = *(v81 + 16);
      v227 = *(v81 + 32);
      vp::vx::data_flow::Value::~Value(v178);
      vp::rpb::Terminal::Terminal(&v224[8], buf);
      (*(*v44 + 16))(v178, v2 + 8, 54);
      LODWORD(v180) = *v178;
      v181 = *&v178[8];
      *&v178[8] = 0;
      *&v178[16] = 0;
      v82 = vp::vx::data_flow::State<void>::~State(v178);
      v83 = std::pmr::get_default_resource(v82);
      *&v217[16] = 0;
      *v217 = v83;
      *v232 = v180;
      *v178 = v181;
      *&v178[8] = v232;
      *&v178[16] = v217;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v181, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, v178);
      v84 = vp::vx::data_flow::Value::view_storage(v217);
      *valuePtr = *v84;
      *&valuePtr[16] = *(v84 + 16);
      v190 = *(v84 + 32);
      vp::vx::data_flow::Value::~Value(v217);
      vp::rpb::Terminal::Terminal(&v224[16], valuePtr);
      (*(*v44 + 16))(v217, v2 + 8, 54);
      LODWORD(v176) = *v217;
      v177 = *&v217[8];
      *&v217[8] = 0;
      *&v217[16] = 0;
      v85 = vp::vx::data_flow::State<void>::~State(v217);
      v86 = std::pmr::get_default_resource(v85);
      *&v232[8] = 0;
      *&v232[16] = 0;
      *v232 = v86;
      LODWORD(v230) = v176;
      *v217 = v177;
      *&v217[8] = &v230;
      *&v217[16] = v232;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v177, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, v217);
      v87 = vp::vx::data_flow::Value::view_storage(v232);
      *v178 = *v87;
      *&v178[16] = *(v87 + 16);
      v179 = *(v87 + 32);
      vp::vx::data_flow::Value::~Value(v232);
      vp::rpb::Terminal::Terminal(&v225, v178);
      (*(*v44 + 16))(v232, v2 + 8, 54);
      LODWORD(v174) = *v232;
      v175 = *&v232[8];
      *&v232[8] = 0;
      *&v232[16] = 0;
      v88 = vp::vx::data_flow::State<void>::~State(v232);
      v89 = std::pmr::get_default_resource(v88);
      v231 = 0uLL;
      v230 = v89;
      v216 = v174;
      *v232 = v175;
      *&v232[8] = &v216;
      *&v232[16] = &v230;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v175, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, v232);
      v90 = vp::vx::data_flow::Value::view_storage(&v230);
      *v217 = *v90;
      *&v217[16] = *(v90 + 16);
      v218 = *(v90 + 32);
      vp::vx::data_flow::Value::~Value(&v230);
      vp::rpb::Terminal::Terminal(&v219, v217);
      vp::rpb::Item::Item(&v183, &v182, v224, 4, &v219, 1);
      vp::objc::ID::operator=(&v185, &v183);
      vp::objc::ID::~ID(&v183);
      vp::objc::ID::~ID(&v219);
      vp::vx::data_flow::State<void>::~State(&v174);
      for (j = 24; j != -8; j -= 8)
      {
        vp::objc::ID::~ID(&v224[j]);
      }

      vp::vx::data_flow::State<void>::~State(&v176);
      vp::vx::data_flow::State<void>::~State(&v180);
      vp::vx::data_flow::State<void>::~State(&v220);
      vp::vx::data_flow::State<void>::~State(&v222);
      if (v182)
      {
        CFRelease(v182);
      }

      vp::rpb::Host::add_item(v215, &v185);
      v173 = CFStringCreateWithBytes(0, "Default Audio Output", 20, 0x8000100u, 0);
      if (!v173)
      {
        v148 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v148, "Could not construct");
      }

      (*(*v44 + 16))(buf, v2 + 8, 54);
      *v178 = *buf;
      *&v178[8] = *&buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
      v92 = vp::vx::data_flow::State<void>::~State(buf);
      v93 = std::pmr::get_default_resource(v92);
      *&valuePtr[16] = 0;
      *valuePtr = v93;
      *v232 = *v178;
      *buf = *&v178[8];
      *&buf[8] = v232;
      *&buf[16] = valuePtr;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v178[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
      v94 = vp::vx::data_flow::Value::view_storage(valuePtr);
      *__p = *v94;
      v167 = *(v94 + 16);
      v168 = *(v94 + 32);
      vp::vx::data_flow::Value::~Value(valuePtr);
      vp::rpb::Terminal::Terminal(v224, __p);
      vp::rpb::Item::Item(v217, &v173, 0, 0, v224, 1);
      vp::objc::ID::~ID(v224);
      vp::vx::data_flow::State<void>::~State(v178);
      if (v173)
      {
        CFRelease(v173);
      }

      vp::rpb::Host::add_item(v215, v217);
      vp::rpb::Wire::Wire(__p, v217, 0, &v185, 1);
      vp::rpb::Host::add_wire(v215, __p);
      vp::objc::ID::~ID(__p);
      v172 = CFStringCreateWithBytes(0, "System Audio Output", 19, 0x8000100u, 0);
      if (!v172)
      {
        v149 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v149, "Could not construct");
      }

      (*(*v44 + 16))(buf, v2 + 8, 54);
      *v178 = *buf;
      *&v178[8] = *&buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
      v95 = vp::vx::data_flow::State<void>::~State(buf);
      v96 = std::pmr::get_default_resource(v95);
      *&valuePtr[16] = 0;
      *valuePtr = v96;
      LODWORD(v230) = *v178;
      *buf = *&v178[8];
      *&buf[8] = &v230;
      *&buf[16] = valuePtr;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v178[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
      v97 = vp::vx::data_flow::Value::view_storage(valuePtr);
      *__p = *v97;
      v167 = *(v97 + 16);
      v168 = *(v97 + 32);
      vp::vx::data_flow::Value::~Value(valuePtr);
      vp::rpb::Terminal::Terminal(v232, __p);
      vp::rpb::Item::Item(v224, &v172, 0, 0, v232, 1);
      vp::objc::ID::~ID(v232);
      vp::vx::data_flow::State<void>::~State(v178);
      if (v172)
      {
        CFRelease(v172);
      }

      vp::rpb::Host::add_item(v215, v224);
      vp::rpb::Wire::Wire(__p, v224, 0, &v185, 2);
      vp::rpb::Host::add_wire(v215, __p);
      vp::objc::ID::~ID(__p);
      v171 = CFStringCreateWithBytes(0, "Other Audio Output", 18, 0x8000100u, 0);
      if (!v171)
      {
        v150 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v150, "Could not construct");
      }

      (*(*v44 + 16))(buf, v2 + 8, 54);
      *v178 = *buf;
      *&v178[8] = *&buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
      v98 = vp::vx::data_flow::State<void>::~State(buf);
      v99 = std::pmr::get_default_resource(v98);
      *&valuePtr[16] = 0;
      *valuePtr = v99;
      LODWORD(v222) = *v178;
      *buf = *&v178[8];
      *&buf[8] = &v222;
      *&buf[16] = valuePtr;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(*&v178[8], caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
      v100 = vp::vx::data_flow::Value::view_storage(valuePtr);
      *__p = *v100;
      v167 = *(v100 + 16);
      v168 = *(v100 + 32);
      vp::vx::data_flow::Value::~Value(valuePtr);
      vp::rpb::Terminal::Terminal(&v230, __p);
      vp::rpb::Item::Item(v232, &v171, 0, 0, &v230, 1);
      vp::objc::ID::~ID(&v230);
      vp::vx::data_flow::State<void>::~State(v178);
      if (v171)
      {
        CFRelease(v171);
      }

      vp::rpb::Host::add_item(v215, v232);
      vp::rpb::Wire::Wire(__p, v232, 0, &v185, 3);
      vp::rpb::Host::add_wire(v215, __p);
      vp::objc::ID::~ID(__p);
      vp::objc::ID::~ID(v232);
      vp::objc::ID::~ID(v224);
      vp::objc::ID::~ID(v217);
    }

    vp::rpb::Wire::Wire(&v230, &v200, 0, &v185, 0);
    vp::rpb::Host::add_wire(v215, &v230);
    vp::rpb::Wire::Wire(&v222, &v185, 0, &v194, 0);
    v155 = v2;
    vp::rpb::Host::add_wire(v215, &v222);
    vp::rpb::Server::add_host(**a1, &v215);
    v154 = a1;
    memset(buf, 0, 24);
    *&buf[24] = std::pmr::get_default_resource(v101);
    memset(valuePtr, 0, 24);
    *&valuePtr[24] = std::pmr::get_default_resource(*&buf[24]);
    *v217 = v192;
    v102 = 0;
    *&v217[8] = v185;
    v220 = 0x100000000;
    v103 = v156;
    do
    {
      if (*(&v220 + v102))
      {
        v104 = v157;
      }

      else
      {
        v104 = v103;
      }

      if (v104)
      {
        v105 = *(&v220 + v102) != 0;
        v106 = (*(&v220 + v102) ? &v217[8] : v217);
        v107 = *&v217[8 * (*(&v220 + v102) != 0)];
        if (v107)
        {
          v165 = v107;
          vp::vx::io::Graph::connect(__p, v104, &v165);
          if (v170)
          {
            v108 = 8 * v105;
            vp::objc::ID::~ID(&v165);
            vp::rpb::Item::get_parameter_info(__p, *&v217[v108], 1);
            caulk::expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::value_or<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>> const&>(v178, __p, buf);
            v109 = *v178;
            v110 = *&v178[8];
            while (v109 != v110)
            {
              *v224 = *v109;
              *&v224[4] = 4;
              *v232 = *v224;
              *&v232[4] = 1;
              vp::rpb::Host::add_parameter_wire(v215, v224, v106, v232);
              v109 += 8;
            }

            *v224 = v178;
            std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](v224);
            caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(__p);
            vp::rpb::Item::get_parameter_info(__p, *&v217[v108], 2);
            caulk::expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::value_or<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>> const&>(v178, __p, buf);
            v111 = *v178;
            v112 = *&v178[8];
            while (v111 != v112)
            {
              *v224 = *v111;
              *&v224[4] = 2;
              *v232 = *v224;
              *&v232[4] = 4;
              vp::rpb::Host::add_parameter_wire(v215, v106, v224, v232);
              v111 += 8;
            }

            *v224 = v178;
            std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](v224);
            caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(__p);
            vp::rpb::Item::get_property_info(__p, *&v217[v108], 1);
            caulk::expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::value_or<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>> const&>(v178, __p, valuePtr);
            v113 = *v178;
            v114 = *&v178[8];
            while (v113 != v114)
            {
              *v224 = *v113;
              *&v224[4] = 4;
              *v232 = *v224;
              *&v232[4] = 1;
              vp::rpb::Host::add_property_wire(v215, v224, v106, v232);
              v113 += 8;
            }

            *v224 = v178;
            std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](v224);
            caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(__p);
            vp::rpb::Item::get_property_info(__p, *&v217[v108], 2);
            caulk::expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::value_or<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>> const&>(v178, __p, valuePtr);
            v103 = v156;
            v115 = *v178;
            v116 = *&v178[8];
            while (v115 != v116)
            {
              *v224 = *v115;
              *&v224[4] = 2;
              *v232 = *v224;
              *&v232[4] = 4;
              vp::rpb::Host::add_property_wire(v215, v106, v224, v232);
              v115 += 8;
            }

            *v224 = v178;
            std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](v224);
            caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(__p);
          }

          else
          {
            if (SHIBYTE(v168) < 0)
            {
              (*(*v169 + 24))(v169, v167, v168 & 0x7FFFFFFFFFFFFFFFLL, 1);
            }

            vp::objc::ID::~ID(&v165);
          }
        }
      }

      v102 += 4;
    }

    while (v102 != 8);
    vp::rpb::Item::get_sub_host(v224, v185);
    if (*v224)
    {
      vp::rpb::Item::get_inputs(&v220, v185);
      vp::rpb::Array<vp::rpb::Terminal>::operator[](v232, v220);
      v164 = CFStringCreateWithBytes(0, "RGBRPBTerminalSubHostPeerUUIDString", 35, 0x8000100u, 0);
      if (!v164)
      {
        v144 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v144, "Could not construct");
      }

      v163 = CFStringCreateWithBytes(0, "Voice_Proc", 10, 0x8000100u, 0);
      if (!v163)
      {
        v145 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v145, "Could not construct");
      }

      vp::rpb::Host::find_item_by_name(&v183, *v224, &v163);
      v117 = v183;
      v174 = [v117 outputs];

      vp::rpb::Array<vp::rpb::Terminal>::operator[](&v176, v174);
      v118 = [v176 UUID];
      v119 = [v118 UUIDString];
      applesauce::CF::StringRef::from_get(&v180, v119);

      v120 = v164;
      if (v164)
      {
        CFRetain(v164);
      }

      __p[0] = v120;
      v121 = v180;
      if (v180)
      {
        CFRetain(v180);
      }

      *v178 = v121;
      vp::rpb::Object::add_user_info(v232, __p, v178);
      if (*v178)
      {
        CFRelease(*v178);
      }

      if (__p[0])
      {
        CFRelease(__p[0]);
      }

      if (v180)
      {
        CFRelease(v180);
      }

      vp::objc::ID::~ID(&v176);
      vp::objc::ID::~ID(&v174);
      vp::objc::ID::~ID(&v183);
      if (v163)
      {
        CFRelease(v163);
      }

      if (v164)
      {
        CFRelease(v164);
      }

      vp::objc::ID::~ID(v232);
      vp::objc::ID::~ID(&v220);
      if (*(v155 + 264) != 3)
      {
        vp::rpb::Item::get_inputs(v178, v185);
        vp::rpb::Array<vp::rpb::Terminal>::operator[](__p, *v178);
        v122 = CFStringCreateWithBytes(0, "RGBRPBTerminalSubHostPeerIndex", 30, 0x8000100u, 0);
        v162 = v122;
        if (!v122)
        {
          v151 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v151, "Could not construct");
        }

        *v232 = 0;
        vp::rpb::Object::add_user_info<unsigned int>(__p, v122, v232);
        CFRelease(v162);
        vp::objc::ID::~ID(__p);
        vp::objc::ID::~ID(v178);
        vp::rpb::Item::get_inputs(v178, v185);
        vp::rpb::Array<vp::rpb::Terminal>::operator[](__p, *v178);
        v123 = CFStringCreateWithBytes(0, "RGBRPBTerminalSubHostPeerIndex", 30, 0x8000100u, 0);
        v161 = v123;
        if (!v123)
        {
          v152 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v152, "Could not construct");
        }

        *v232 = 1;
        vp::rpb::Object::add_user_info<unsigned int>(__p, v123, v232);
        CFRelease(v161);
        vp::objc::ID::~ID(__p);
        vp::objc::ID::~ID(v178);
        vp::rpb::Item::get_inputs(v178, v185);
        vp::rpb::Array<vp::rpb::Terminal>::operator[](__p, *v178);
        v124 = CFStringCreateWithBytes(0, "RGBRPBTerminalSubHostPeerIndex", 30, 0x8000100u, 0);
        v160 = v124;
        if (!v124)
        {
          v153 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v153, "Could not construct");
        }

        *v232 = 2;
        vp::rpb::Object::add_user_info<unsigned int>(__p, v124, v232);
        CFRelease(v160);
        vp::objc::ID::~ID(__p);
        vp::objc::ID::~ID(v178);
      }
    }

    vp::objc::ID::~ID(v224);
    v159 = **v154;
    v158 = v215;
    vp::rpb::Connection::Connection(__p, &v159, &v158);
    vp::objc::ID::operator=((v155 + 2368), __p);
    vp::objc::ID::operator=((v155 + 2376), &__p[1]);
    vp::rpb::Connection::~Connection(__p);
    vp::objc::ID::~ID(&v158);
    vp::objc::ID::~ID(&v159);
    vp::objc::ID::operator=((v155 + 2384), &v202);
    vp::objc::ID::~ID(&v217[8]);
    vp::objc::ID::~ID(v217);
    __p[0] = valuePtr;
    std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = buf;
    std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](__p);
    vp::objc::ID::~ID(&v222);
    vp::objc::ID::~ID(&v230);
    vp::objc::ID::~ID(&v185);
    vp::objc::ID::~ID(&v186);
    vp::objc::ID::~ID(&v187);
    vp::objc::ID::~ID(&v188);
    vp::objc::ID::~ID(&v192);
    vp::objc::ID::~ID(&v194);
    vp::objc::ID::~ID(&v196);
    vp::objc::ID::~ID(&v198);
    vp::objc::ID::~ID(&v200);
    vp::objc::ID::~ID(&v202);
    vp::objc::ID::~ID(&v215);
  }
}

void sub_2726EC880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, id a52, id a53, id a54, unint64_t *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
  vp::objc::ID::~ID(&__p);
  vp::objc::ID::~ID(&a39);
  vp::objc::ID::~ID(&STACK[0x2D0]);
  vp::objc::ID::~ID(a13);
  vp::objc::ID::~ID(&STACK[0x270]);
  STACK[0x270] = &a55;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);
  a55 = &STACK[0x2F0];
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&a55);
  vp::objc::ID::~ID(&STACK[0x2B8]);
  vp::objc::ID::~ID((v68 - 184));
  vp::objc::ID::~ID(&a51);
  vp::objc::ID::~ID(&a52);
  vp::objc::ID::~ID(&a53);
  vp::objc::ID::~ID(&a54);
  vp::objc::ID::~ID(&a62);
  vp::objc::ID::~ID(&a64);
  vp::objc::ID::~ID(&a65);
  vp::objc::ID::~ID(&a66);
  vp::objc::ID::~ID(&a67);
  vp::objc::ID::~ID(&a68);
  vp::objc::ID::~ID(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void vp::rpb::Object::add_user_info<BOOL const&>(id *a1, CFTypeRef cf, _BYTE *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v9 = cf;
  if (*a3)
  {
    v6 = MEMORY[0x277CBED28];
  }

  else
  {
    v6 = MEMORY[0x277CBED10];
  }

  v8 = *v6;
  v7 = v8;
  vp::rpb::Object::add_user_info(a1, &v9, &v8);
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726ED58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void vp::rpb::Object::add_user_info<std::string>(id *a1, CFTypeRef cf, uint64_t a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v11 = cf;
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  cfa = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  vp::rpb::Object::add_user_info(a1, &v11, &cfa);
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726ED688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void vp::rpb::Object::add_user_info<unsigned int>(id *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v8 = cf;
  valuePtr = *a3;
  cfa = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  vp::rpb::Object::add_user_info(a1, &v8, &cfa);
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726ED7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void *caulk::expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::value_or<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>> const&>(void *result, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 32) == 1)
  {
    *result = *a2;
    v3 = *(a2 + 24);
    result[2] = *(a2 + 16);
    result[3] = v3;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *result = 0;
    result[1] = 0;
    v4 = a3[3];
    result[2] = 0;
    result[3] = v4;
    return std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  return result;
}

void *caulk::expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::value_or<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>> const&>(void *result, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 32) == 1)
  {
    *result = *a2;
    v3 = *(a2 + 24);
    result[2] = *(a2 + 16);
    result[3] = v3;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *result = 0;
    result[1] = 0;
    v4 = a3[3];
    result[2] = 0;
    result[3] = v4;
    return std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_T0_T1_E_NS_9allocatorISB_EEFNS2_8ExpectedIN10applesauce2CF7TypeRefENS5_5ErrorEEEjNS5_5ScopeEjEEclEOjOSK_SN_(uint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *a4;
  v15 = *a2;
  v14 = 0;
  if (!(v7 | v6) && (v10 = *(a1 + 16)) != 0 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
  {
    v12 = v11;
    v13 = *(a1 + 8);
    if (v13)
    {
      v16[0] = &unk_2881C5E20;
      v16[1] = &v15;
      v16[2] = &v14;
      v16[3] = v16;
      vp::vx::Voice_Processor::call_sync(v13, v16);
      std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](v16);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  *a5 = v8;
  *(a5 + 8) = 1;
}

void _ZNSt3__110__function6__funcIZZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvENKUlT_T0_T1_E_clIjNS5_5ScopeEjEEDaS8_S9_SA_EUlRKS4_E_NS_9allocatorISH_EEFvRS4_EEclESK_(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = **(a1 + 8);
  v9 = 0;
  v10 = 0;
  vp::vx::data_flow::State_Transaction::State_Transaction(v11, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12[0] = v4;
  v5 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(a2 + 968, v12);
  v6 = (*(**(v5 + 4) + 24))(*(v5 + 4));
  if (v6)
  {
    v7 = v6;
    vp::vx::Property::read(v12, v5, v11);
    (*(*v7 + 24))(&v13, v7, v12);
    v8 = *v3;
    *v3 = v13;
    v13 = v8;
    if (v8)
    {
      CFRelease(v8);
    }

    vp::vx::data_flow::Value::~Value(v12);
  }

  vp::vx::data_flow::State_Transaction::~State_Transaction(v11);
}

void sub_2726EDA74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  vp::vx::data_flow::Value::~Value(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726EDA54);
}

void sub_2726EDA9C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726EDA54);
}

__n128 _ZNKSt3__110__function6__funcIZZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvENKUlT_T0_T1_E_clIjNS5_5ScopeEjEEDaS8_S9_SA_EUlRKS4_E_NS_9allocatorISH_EEFvRS4_EE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881C5E20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_T0_T1_E_NS_9allocatorISB_EEFNS2_8ExpectedIN10applesauce2CF7TypeRefENS5_5ErrorEEEjNS5_5ScopeEjEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_T0_T1_E_NS_9allocatorISB_EEFNS2_8ExpectedIN10applesauce2CF7TypeRefENS5_5ErrorEEEjNS5_5ScopeEjEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_T0_T1_E_NS_9allocatorISB_EEFNS2_8ExpectedIN10applesauce2CF7TypeRefENS5_5ErrorEEEjNS5_5ScopeEjEE7__cloneEPNS0_6__baseISL_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C5DD8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_T0_T1_E_NS_9allocatorISB_EEFNS2_8ExpectedIN10applesauce2CF7TypeRefENS5_5ErrorEEEjNS5_5ScopeEjEED0Ev(void *a1)
{
  *a1 = &unk_2881C5DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_T0_T1_E_NS_9allocatorISB_EEFNS2_8ExpectedIN10applesauce2CF7TypeRefENS5_5ErrorEEEjNS5_5ScopeEjEED1Ev(void *a1)
{
  *a1 = &unk_2881C5DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t **_ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_E_NS_9allocatorIS9_EEFNS2_8ExpectedINS_6vectorINS5_13Property_InfoENS2_9AllocatorISE_EEEENS5_5ErrorEEENS5_5ScopeEEEclEOSK_@<X0>(std::pmr *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v14 = 0;
  v11 = 0u;
  v13 = 0u;
  default_resource = std::pmr::get_default_resource(a1);
  v15 = default_resource;
  if (v5 || (v9 = *(a1 + 2)) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = std::__shared_weak_count::lock(v9);
    if (v7)
    {
      v10 = *(a1 + 1);
      if (v10)
      {
        v17[0] = &unk_2881C5D90;
        v17[1] = &v13;
        v17[3] = v17;
        vp::vx::Voice_Processor::call_sync(v10, v17);
        std::__function::__value_func<void ()(vp::vx::Voice_Processor &)>::~__value_func[abi:ne200100](v17);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      v11 = v13;
      v7 = v14;
      default_resource = v15;
    }
  }

  v12[3] = default_resource;
  v13 = 0uLL;
  v14 = 0;
  v16 = &v13;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v16);
  *a3 = v11;
  *(a3 + 16) = v7;
  *(a3 + 24) = default_resource;
  memset(v12, 0, 24);
  *(a3 + 32) = 1;
  *&v13 = v12;
  return std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

uint64_t _ZNSt3__110__function6__funcIZZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvENKUlT_E_clINS5_5ScopeEEEDaS8_EUlRKS4_E_NS_9allocatorISF_EEFvRS4_EEclESI_(uint64_t result, uint64_t a2)
{
  v7 = *(result + 8);
  v8 = _ZN5caulk12function_refIFvN2vp2vx11Property_IDERKNS2_8PropertyEEE15functor_invokerIZZZZNS2_15Voice_Processor7connectENS1_3rpb6ServerEENK3__0clEvENKUlT_E_clINSB_5ScopeEEEDaSE_ENKUlRKSA_E_clESK_EUlS3_S6_E_EEvRKNS_7details15erased_callableIS7_EES3_S6_;
  v9 = &v7;
  v2 = *(a2 + 976);
  v3 = *(a2 + 984);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v3)
  {
    v5 = &v2[12 * v3];
    do
    {
      if (!v2)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v2 + 12;
      result = (v8)(&v9, *v2, v2 + 2);
      v2 = v6;
    }

    while (v6 != v5);
  }

  return result;
}

void _ZN5caulk12function_refIFvN2vp2vx11Property_IDERKNS2_8PropertyEEE15functor_invokerIZZZZNS2_15Voice_Processor7connectENS1_3rpb6ServerEENK3__0clEvENKUlT_E_clINSB_5ScopeEEEDaSE_ENKUlRKSA_E_clESK_EUlS3_S6_E_EEvRKNS_7details15erased_callableIS7_EES3_S6_(uint64_t ***a1, uint64_t a2)
{
  v2 = *a1;
  cf = 0;
  v37 = 0;
  v35 = a2;
  v3 = vp::reflect_value_name_tag<vp::vx::Property_ID,128ul>(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v34 = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  *(&__dst + v5) = 0;
  v6 = v34;
  v8 = __dst;
  v7 = v33;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v34 >= 0)
  {
    v10 = v34;
  }

  else
  {
    v10 = v33;
  }

  if (v10)
  {
    do
    {
      v11 = *p_dst;
      if (v11 == 95)
      {
        LOBYTE(v11) = 32;
      }

      *p_dst = v11;
      p_dst = (p_dst + 1);
      --v10;
    }

    while (v10);
    v6 = v34;
    v8 = __dst;
    v7 = v33;
  }

  if ((v6 & 0x80u) == 0)
  {
    v12 = &__dst;
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    if ((v6 & 0x80u) == 0)
    {
      v13 = v6;
    }

    else
    {
      v13 = v7;
    }

    v14 = CFStringCreateWithBytes(0, v12, v13, 0x8000100u, 0);
    v39 = v14;
    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = cf;
  cf = v14;
  v39 = v16;
  if (v16)
  {
    CFRelease(v16);
  }

  v38 = 1;
  v17 = *v2;
  v18 = (*v2)[1];
  v19 = (*v2)[2];
  if (v18 >= v19)
  {
    v21 = (v18 - *v17) >> 5;
    v22 = v21 + 1;
    if ((v21 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v23 = v19 - *v17;
    if (v23 >> 4 > v22)
    {
      v22 = v23 >> 4;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFE0)
    {
      v24 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    v42 = v17 + 3;
    if (v24)
    {
      v25 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((v17 + 3), v24);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25 + 32 * v21;
    v39 = v25;
    v40 = v26;
    *(&v41 + 1) = v25 + 32 * v24;
    *v26 = v35;
    *(v26 + 8) = v14;
    cf = 0;
    *(v26 + 16) = v37;
    v37 = 0;
    *(v26 + 24) = v38;
    *&v41 = v26 + 32;
    v27 = v17[1];
    v28 = v26 + *v17 - v27;
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::rpb::Property_Info>,vp::rpb::Property_Info*>((v17 + 3), *v17, v27, v28);
    v29 = *v17;
    *v17 = v28;
    v30 = v17[2];
    v31 = v41;
    v40 = v29;
    *&v41 = v29;
    *(v17 + 1) = v31;
    *(&v41 + 1) = v30;
    v39 = v29;
    std::__split_buffer<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info> &>::~__split_buffer(&v39);
    v20 = v31;
  }

  else
  {
    *v18 = v35;
    *(v18 + 8) = v14;
    *(v18 + 16) = v37;
    cf = 0;
    v37 = 0;
    *(v18 + 24) = v38;
    v20 = v18 + 32;
  }

  v17[1] = v20;
  if (v34 < 0)
  {
    operator delete(__dst);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726EE20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a21);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  vp::rpb::Property_Info::~Property_Info(&a17);
  _Unwind_Resume(a1);
}

char *vp::reflect_value_name_tag<vp::vx::Property_ID,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Property_ID)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

void vp::rpb::Property_Info::~Property_Info(vp::rpb::Property_Info *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

char *vp::detail::reflect_value_name<(vp::vx::Property_ID)0,128ul>(int a1)
{
  result = "vp::vx::Property_ID::Bypass_Voice_Processing]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Property_ID::Disable_Voice_Processing]";
      break;
    case 2:
      result = "vp::vx::Property_ID::Enable_Acoustic_Gain_Control]";
      break;
    case 3:
      result = "vp::vx::Property_ID::Mute_Uplink_Near_End_Voice_Output]";
      break;
    case 4:
      result = "vp::vx::Property_ID::Mute_Downlink_Far_End_Voice_Input]";
      break;
    case 5:
      result = "vp::vx::Property_ID::Maximum_Number_Of_Uplink_Output_Frames]";
      break;
    case 6:
      result = "vp::vx::Property_ID::Maximum_Number_Of_Far_End_Voice_Input_Frames]";
      break;
    case 7:
      result = "vp::vx::Property_ID::Pre_Processing_Input_Gain_dB]";
      break;
    case 8:
      result = "vp::vx::Property_ID::Mic_Stream_Format]";
      break;
    case 9:
      result = "vp::vx::Property_ID::Mic_Block_Size]";
      break;
    case 10:
      result = "vp::vx::Property_ID::Mic_Port_Type]";
      break;
    case 11:
      result = "vp::vx::Property_ID::Mic_Device_ID]";
      break;
    case 12:
      result = "vp::vx::Property_ID::Mic_Physical_Device_ID]";
      break;
    case 13:
      result = "vp::vx::Property_ID::Mic_Hardware_Physical_Sample_Rate]";
      break;
    case 14:
      result = "vp::vx::Property_ID::Mic_Hardware_Input_Latency]";
      break;
    case 15:
      result = "vp::vx::Property_ID::Mic_Hardware_Input_Safety_Offset]";
      break;
    case 16:
      result = "vp::vx::Property_ID::Mic_Port_Sub_Type]";
      break;
    case 17:
      result = "vp::vx::Property_ID::Mic_Hardware_Transport_Type]";
      break;
    case 18:
      result = "vp::vx::Property_ID::Mic_Hardware_Bluetooth_Device_Category]";
      break;
    case 19:
      result = "vp::vx::Property_ID::Mic_Hardware_Data_Source]";
      break;
    case 20:
      result = "vp::vx::Property_ID::Mic_Hardware_Model_UID]";
      break;
    case 21:
      result = "vp::vx::Property_ID::Mic_Trim_Gains]";
      break;
    case 22:
      result = "vp::vx::Property_ID::Mic_Trim_Gains_CF]";
      break;
    case 23:
      result = "vp::vx::Property_ID::Mic_DSP_Settings]";
      break;
    case 24:
      result = "vp::vx::Property_ID::Ref_Stream_Format]";
      break;
    case 25:
      result = "vp::vx::Property_ID::Ref_Block_Size]";
      break;
    case 26:
      result = "vp::vx::Property_ID::Ref_Port_Type]";
      break;
    case 27:
      result = "vp::vx::Property_ID::Ref_Device_ID]";
      break;
    case 28:
      result = "vp::vx::Property_ID::Ref_Physical_Device_ID]";
      break;
    case 29:
      result = "vp::vx::Property_ID::Ref_Hardware_Physical_Sample_Rate]";
      break;
    case 30:
      result = "vp::vx::Property_ID::Ref_Hardware_Input_Latency]";
      break;
    case 31:
      result = "vp::vx::Property_ID::Ref_Hardware_Physical_Input_Latency]";
      break;
    case 32:
      result = "vp::vx::Property_ID::Ref_Hardware_Input_Safety_Offset]";
      break;
    case 33:
      result = "vp::vx::Property_ID::Ref_Hardware_Physical_Input_Safety_Offset]";
      break;
    case 34:
      result = "vp::vx::Property_ID::Ref_Hardware_Output_Latency]";
      break;
    case 35:
      result = "vp::vx::Property_ID::Ref_Hardware_Physical_Output_Latency]";
      break;
    case 36:
      result = "vp::vx::Property_ID::Ref_Hardware_Output_Safety_Offset]";
      break;
    case 37:
      result = "vp::vx::Property_ID::Ref_Hardware_Physical_Output_Safety_Offset]";
      break;
    case 38:
      result = "vp::vx::Property_ID::Ref_Virtual_Audio_Stream_Physical_Stream_Latency]";
      break;
    case 39:
      result = "vp::vx::Property_ID::Ref_Port_Sub_Type]";
      break;
    case 40:
      result = "vp::vx::Property_ID::Ref_Port_Endpoint_Type]";
      break;
    case 41:
      result = "vp::vx::Property_ID::Ref_Port_Is_Apple_Made_Bluetooth_Product]";
      break;
    case 42:
      result = "vp::vx::Property_ID::Ref_Port_UID]";
      break;
    case 43:
      result = "vp::vx::Property_ID::Ref_Port_Bluetooth_HLC_2ch_State]";
      break;
    case 44:
      result = "vp::vx::Property_ID::Ref_Hardware_Transport_Type]";
      break;
    case 45:
      result = "vp::vx::Property_ID::Ref_Hardware_Bluetooth_Device_Category]";
      break;
    case 46:
      result = "vp::vx::Property_ID::Ref_Hardware_Data_Source]";
      break;
    case 47:
      result = "vp::vx::Property_ID::Ref_Hardware_Model_UID]";
      break;
    case 48:
      result = "vp::vx::Property_ID::Ref_Trim_Gains]";
      break;
    case 49:
      result = "vp::vx::Property_ID::Ref_Trim_Gains_CF]";
      break;
    case 50:
      result = "vp::vx::Property_ID::Ref_DSP_Settings]";
      break;
    case 51:
      result = "vp::vx::Property_ID::Client_Near_End_Voice_Output_Stream_Format]";
      break;
    case 52:
      result = "vp::vx::Property_ID::Client_Far_End_Voice_Input_Stream_Format]";
      break;
    case 53:
      result = "vp::vx::Property_ID::Client_Far_End_Voice_Input_Block]";
      break;
    case 54:
      result = "vp::vx::Property_ID::Hardware_Mix_Output_Stream_Format]";
      break;
    case 55:
      result = "vp::vx::Property_ID::Hardware_Mix_Output_Block_Size]";
      break;
    case 56:
      result = "vp::vx::Property_ID::Hardware_Mix_Output_Channel_Layout]";
      break;
    case 57:
      result = "vp::vx::Property_ID::Beam_Direction]";
      break;
    case 58:
      result = "vp::vx::Property_ID::Operation_Mode]";
      break;
    case 59:
      result = "vp::vx::Property_ID::Preferred_Chat_Flavor]";
      break;
    case 60:
      result = "vp::vx::Property_ID::Active_Chat_Flavor]";
      break;
    case 61:
      result = "vp::vx::Property_ID::Hardware_Has_Voice_Processor]";
      break;
    case 62:
      result = "vp::vx::Property_ID::Tap_Stream_Enabled]";
      break;
    case 63:
      result = "vp::vx::Property_ID::Downlink_Software_Volume]";
      break;
    case 64:
      result = "vp::vx::Property_ID::Downlink_Hardware_Volume_dB]";
      break;
    case 65:
      result = "vp::vx::Property_ID::Speaker_Telemetry_Input_Stream_Format]";
      break;
    case 66:
      result = "vp::vx::Property_ID::Speaker_Telemetry_Input_Block_Size]";
      break;
    case 67:
      result = "vp::vx::Property_ID::Speaker_Telemetry_Input_Data_Source_IDs]";
      break;
    case 68:
      result = "vp::vx::Property_ID::Speaker_Calibration_Data_CF]";
      break;
    case 69:
      result = "vp::vx::Property_ID::Codec_Type]";
      break;
    case 70:
      result = "vp::vx::Property_ID::Codec_Sample_Rate]";
      break;
    case 71:
      result = "vp::vx::Property_ID::CPMS_Budget]";
      break;
    case 72:
      result = "vp::vx::Property_ID::Metrics_Reporter_IDs]";
      break;
    case 73:
      result = "vp::vx::Property_ID::IO_Cycle_Usage]";
      break;
    case 74:
      result = "vp::vx::Property_ID::Preferred_IO_Cycle_Usage]";
      break;
    case 75:
      result = "vp::vx::Property_ID::Device_Orientation]";
      break;
    case 76:
      result = "vp::vx::Property_ID::UI_Orientation]";
      break;
    case 77:
      result = "vp::vx::Property_ID::Enable_Spatial_Chat]";
      break;
    case 78:
      result = "vp::vx::Property_ID::Spatial_Chat_Metadata]";
      break;
    case 79:
      result = "vp::vx::Property_ID::Spatial_Chat_Head_Tracking_Configuration]";
      break;
    case 80:
      result = "vp::vx::Property_ID::Enable_Media_Chat]";
      break;
    case 81:
      result = "vp::vx::Property_ID::Media_Chat_Software_Volume]";
      break;
    case 82:
      result = "vp::vx::Property_ID::Media_Chat_Ducking_Action]";
      break;
    case 83:
      result = "vp::vx::Property_ID::Media_Chat_Ducking_Level]";
      break;
    case 84:
      result = "vp::vx::Property_ID::Media_Chat_Ducking_Ramp_Time_In_Seconds]";
      break;
    case 85:
      result = "vp::vx::Property_ID::Media_Chat_Unducking_Ramp_Time_In_Seconds]";
      break;
    case 86:
      result = "vp::vx::Property_ID::Speech_Activity_Event_Listener_Block]";
      break;
    case 87:
      result = "vp::vx::Property_ID::Dynamic_Ducking_Volume_Handler_Block]";
      break;
    case 88:
      result = "vp::vx::Property_ID::Enable_Stereo_To_Mono_Mix]";
      break;
    case 89:
      result = "vp::vx::Property_ID::Enable_Media_Playback_On_External_Device]";
      break;
    case 90:
      result = "vp::vx::Property_ID::Other_Audio_Ducking_Configuration]";
      break;
    case 91:
      result = "vp::vx::Property_ID::Is_In_Emergency_Call]";
      break;
    case 92:
      result = "vp::vx::Property_ID::Virtual_Audio_Plugin_Mode]";
      break;
    case 93:
      result = "vp::vx::Property_ID::Offload_AirPods_Noise_Suppression]";
      break;
    case 94:
      result = "vp::vx::Property_ID::AirPods_Offload_Mode]";
      break;
    case 95:
      result = "vp::vx::Property_ID::Enable_Automatic_Mic_Mode]";
      break;
    case 96:
      result = "vp::vx::Property_ID::Is_Camera_Active]";
      break;
    case 97:
      result = "vp::vx::Property_ID::Host_Application_Display_ID]";
      break;
    case 98:
      result = "vp::vx::Property_ID::Mic_FilterIDs_Array_CF]";
      break;
    case 99:
      result = "(vp::vx::Property_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Property_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Property_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Property_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Property_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Property_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Property_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Property_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Property_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Property_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Property_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Property_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Property_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Property_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Property_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Property_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Property_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Property_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Property_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Property_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Property_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Property_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Property_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Property_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Property_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Property_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Property_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Property_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Property_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Property_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvENKUlT_E_clINS5_5ScopeEEEDaS8_EUlRKS4_E_NS_9allocatorISF_EEFvRS4_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C5D90;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_E_NS_9allocatorIS9_EEFNS2_8ExpectedINS_6vectorINS5_13Property_InfoENS2_9AllocatorISE_EEEENS5_5ErrorEEENS5_5ScopeEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_E_NS_9allocatorIS9_EEFNS2_8ExpectedINS_6vectorINS5_13Property_InfoENS2_9AllocatorISE_EEEENS5_5ErrorEEENS5_5ScopeEEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_E_NS_9allocatorIS9_EEFNS2_8ExpectedINS_6vectorINS5_13Property_InfoENS2_9AllocatorISE_EEEENS5_5ErrorEEENS5_5ScopeEEE7__cloneEPNS0_6__baseISL_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C5D48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_E_NS_9allocatorIS9_EEFNS2_8ExpectedINS_6vectorINS5_13Property_InfoENS2_9AllocatorISE_EEEENS5_5ErrorEEENS5_5ScopeEEED0Ev(void *a1)
{
  *a1 = &unk_2881C5D48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZZN2vp2vx15Voice_Processor7connectENS2_3rpb6ServerEENK3__0clEvEUlT_E_NS_9allocatorIS9_EEFNS2_8ExpectedINS_6vectorINS5_13Property_InfoENS2_9AllocatorISE_EEEENS5_5ErrorEEENS5_5ScopeEEED1Ev(void *a1)
{
  *a1 = &unk_2881C5D48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::Voice_Processor::make_shared_member<vp::vx::IO_Parameter_Setter_Command_Factory>(void *a1, std::__shared_weak_count *a2, uint64_t a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
    v6 = std::__shared_weak_count::lock(a2);
    std::__shared_weak_count::__release_weak(a2);
    *a1 = a3;
    a1[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *a1 = a3;
    a1[1] = 0;
  }
}

unint64_t boost::container::flat_map<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_subscript(void *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v3)
  {
    do
    {
      if (v3 != 1 && !v2)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v2)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>(v2 + 24 * (v3 >> 1), a2) & 0x80u) == 0)
      {
        v3 >>= 1;
      }

      else
      {
        v2 += 24 * (v3 >> 1) + 24;
        v3 += ~(v3 >> 1);
      }
    }

    while (v3);
    v7 = a1[1];
    v3 = a1[2];
    if (!v7 && v3)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }
  }

  else
  {
    v7 = a1[1];
  }

  if (v2 == v7 + 24 * v3)
  {
LABEL_22:
    v8 = *a2;
    v32 = 0uLL;
    v31 = v8;
    if (v7 > v2)
    {
      goto LABEL_54;
    }

    v9 = a1[2];
    if (!v7 && v9)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v2 > v7 + 24 * v9)
    {
LABEL_54:
      v24 = "this->priv_in_range_or_end(hint)";
      v25 = 879;
      v26 = "flat_tree.hpp";
      v27 = "insert_unique";
    }

    else
    {
      v29 = v2;
      v30 = 0;
      if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_insert_unique_prepare(a1, &v29, &v31, &v30))
      {
        if (!a1[1] && v30)
        {
          __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
        }

        v28 = v30;
        goto LABEL_46;
      }

      v10 = v30;
      v11 = a1[1];
      if (v11 > v30)
      {
        goto LABEL_56;
      }

      v12 = a1[2];
      if (!v11 && v12)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v13 = v11 + 24 * v12;
      if (v30 > v13)
      {
LABEL_56:
        v24 = "this->priv_in_range_or_end(position)";
        v25 = 1862;
        v26 = "vector.hpp";
        v27 = "emplace";
      }

      else
      {
        v14 = a1[3];
        if (v14 >= v12)
        {
          if (v14 == v12)
          {
            boost::container::vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>*,boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>>(&v28, a1, v30, &v31);
          }

          else
          {
            if (v13 == v30)
            {
              *v13 = v31;
              *(v13 + 8) = v32;
              v32 = 0uLL;
              ++a1[2];
            }

            else
            {
              v15 = v13 - 24;
              v16 = *(v13 - 24);
              *(v13 + 8) = *(v13 - 16);
              *(v13 - 16) = 0;
              *(v13 - 8) = 0;
              *v13 = v16;
              ++a1[2];
              if (v13 - 24 != v10)
              {
                v17 = v13 - 24;
                do
                {
                  v18 = *(v17 - 24);
                  v17 -= 24;
                  v19 = *(v15 - 16);
                  *(v15 - 16) = 0;
                  *(v15 - 8) = 0;
                  *v15 = v18;
                  v20 = *(v15 + 16);
                  *(v15 + 8) = v19;
                  if (v20)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                  }

                  v15 = v17;
                }

                while (v17 != v10);
              }

              *v10 = v31;
              v21 = v32;
              v32 = 0uLL;
              v22 = *(v10 + 16);
              *(v10 + 8) = v21;
              if (v22)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }
            }

            v28 = v10;
          }

LABEL_46:
          if (*(&v32 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
          }

          v2 = v28;
          if (!v28)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          return v2 + 8;
        }

        v24 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v25 = 2821;
        v26 = "vector.hpp";
        v27 = "priv_insert_forward_range";
      }
    }

    __assert_rtn(v27, v26, v25, v24);
  }

  if (!v2)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>(a2, v2) & 0x80) != 0)
  {
    v7 = a1[1];
    goto LABEL_22;
  }

  return v2 + 8;
}

void sub_2726EF100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unint64_t boost::container::flat_map<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<std::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_subscript(void *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v3)
  {
    do
    {
      if (v3 != 1 && !v2)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v2)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>(v2 + 24 * (v3 >> 1), a2) & 0x80u) == 0)
      {
        v3 >>= 1;
      }

      else
      {
        v2 += 24 * (v3 >> 1) + 24;
        v3 += ~(v3 >> 1);
      }
    }

    while (v3);
    v7 = a1[1];
    v3 = a1[2];
    if (!v7 && v3)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }
  }

  else
  {
    v7 = a1[1];
  }

  if (v2 == v7 + 24 * v3)
  {
LABEL_22:
    v8 = *a2;
    v32 = 0uLL;
    v31 = v8;
    if (v7 > v2)
    {
      goto LABEL_54;
    }

    v9 = a1[2];
    if (!v7 && v9)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v2 > v7 + 24 * v9)
    {
LABEL_54:
      v24 = "this->priv_in_range_or_end(hint)";
      v25 = 879;
      v26 = "flat_tree.hpp";
      v27 = "insert_unique";
    }

    else
    {
      v29 = v2;
      v30 = 0;
      if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_insert_unique_prepare(a1, &v29, &v31, &v30))
      {
        if (!a1[1] && v30)
        {
          __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
        }

        v28 = v30;
        goto LABEL_46;
      }

      v10 = v30;
      v11 = a1[1];
      if (v11 > v30)
      {
        goto LABEL_56;
      }

      v12 = a1[2];
      if (!v11 && v12)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v13 = v11 + 24 * v12;
      if (v30 > v13)
      {
LABEL_56:
        v24 = "this->priv_in_range_or_end(position)";
        v25 = 1862;
        v26 = "vector.hpp";
        v27 = "emplace";
      }

      else
      {
        v14 = a1[3];
        if (v14 >= v12)
        {
          if (v14 == v12)
          {
            boost::container::vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>*,boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>>(&v28, a1, v30, &v31);
          }

          else
          {
            if (v13 == v30)
            {
              *v13 = v31;
              *(v13 + 8) = v32;
              v32 = 0uLL;
              ++a1[2];
            }

            else
            {
              v15 = v13 - 24;
              v16 = *(v13 - 24);
              *(v13 + 8) = *(v13 - 16);
              *(v13 - 16) = 0;
              *(v13 - 8) = 0;
              *v13 = v16;
              ++a1[2];
              if (v13 - 24 != v10)
              {
                v17 = v13 - 24;
                do
                {
                  v18 = *(v17 - 24);
                  v17 -= 24;
                  v19 = *(v15 - 16);
                  *(v15 - 16) = 0;
                  *(v15 - 8) = 0;
                  *v15 = v18;
                  v20 = *(v15 + 16);
                  *(v15 + 8) = v19;
                  if (v20)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                  }

                  v15 = v17;
                }

                while (v17 != v10);
              }

              *v10 = v31;
              v21 = v32;
              v32 = 0uLL;
              v22 = *(v10 + 16);
              *(v10 + 8) = v21;
              if (v22)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }
            }

            v28 = v10;
          }

LABEL_46:
          if (*(&v32 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
          }

          v2 = v28;
          if (!v28)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          return v2 + 8;
        }

        v24 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v25 = 2821;
        v26 = "vector.hpp";
        v27 = "priv_insert_forward_range";
      }
    }

    __assert_rtn(v27, v26, v25, v24);
  }

  if (!v2)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>(a2, v2) & 0x80) != 0)
  {
    v7 = a1[1];
    goto LABEL_22;
  }

  return v2 + 8;
}

void sub_2726EF578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *caulk::__expected_detail::base<std::unique_ptr<vp::vx::io::Graph>,vp::vx::io::Error>::~base(uint64_t *a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else if (*(a1 + 39) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a1[5], a1[2], a1[4] & 0x7FFFFFFFFFFFFFFFLL);
  }

  return a1;
}

void vp::vx::io::Graph_Builder::~Graph_Builder(vp::vx::io::Graph_Builder *this)
{
  v2 = *(this + 52);
  if (v2)
  {
    v3 = *(this + 53);
    v4 = *(this + 52);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 52);
    }

    *(this + 53) = v2;
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Wire_Decorator_Factory>>>::deallocate[abi:ne200100](*(this + 55), v4, (*(this + 54) - v4) >> 4);
  }

  v6 = *(this + 50);
  if (v6)
  {
    v7 = (*(this + 49) + 16);
    do
    {
      if (*v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v7);
      }

      v7 += 3;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 51);
  if (v8)
  {
    (*(**(this + 48) + 24))(*(this + 48), *(this + 49), 24 * v8, 8);
  }

  v9 = *(this + 47);
  if (v9)
  {
    (*(**(this + 44) + 24))(*(this + 44), *(this + 45), 28 * v9, 4);
  }

  v10 = *(this + 39);
  if (v10)
  {
    v11 = *(this + 40);
    v12 = *(this + 39);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 8);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v11 -= 16;
      }

      while (v11 != v10);
      v12 = *(this + 39);
    }

    *(this + 40) = v10;
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Port_Decorator_Factory>>>::deallocate[abi:ne200100](*(this + 42), v12, (*(this + 41) - v12) >> 4);
  }

  v14 = *(this + 37);
  if (v14)
  {
    v15 = (*(this + 36) + 16);
    do
    {
      if (*v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v15);
      }

      v15 += 3;
      --v14;
    }

    while (v14);
  }

  v16 = *(this + 38);
  if (v16)
  {
    (*(**(this + 35) + 24))(*(this + 35), *(this + 36), 24 * v16, 8);
  }

  v17 = *(this + 34);
  if (v17)
  {
    (*(**(this + 31) + 24))(*(this + 31), *(this + 32), 16 * v17, 4);
  }

  v18 = *(this + 30);
  if (v18)
  {
    (*(**(this + 27) + 24))(*(this + 27), *(this + 28), 16 * v18, 4);
  }

  v19 = *(this + 22);
  if (v19)
  {
    v20 = *(this + 23);
    v21 = *(this + 22);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = *(this + 22);
    }

    *(this + 23) = v19;
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Command_Factory>>>::deallocate[abi:ne200100](*(this + 25), v21, (*(this + 24) - v21) >> 4);
  }

  v23 = *(this + 18);
  if (v23)
  {
    v24 = *(this + 19);
    v25 = *(this + 18);
    if (v24 != v23)
    {
      do
      {
        v26 = *(v24 - 8);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        v24 -= 16;
      }

      while (v24 != v23);
      v25 = *(this + 18);
    }

    *(this + 19) = v23;
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Delegate_Factory>>>::deallocate[abi:ne200100](*(this + 21), v25, (*(this + 20) - v25) >> 4);
  }

  v27 = *(this + 14);
  if (v27)
  {
    v28 = *(this + 15);
    v29 = *(this + 14);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 8);
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        v28 -= 16;
      }

      while (v28 != v27);
      v29 = *(this + 14);
    }

    *(this + 15) = v27;
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Decorator_Factory>>>::deallocate[abi:ne200100](*(this + 17), v29, (*(this + 16) - v29) >> 4);
  }

  v31 = *(this + 12);
  if (v31)
  {
    v32 = (*(this + 11) + 16);
    do
    {
      if (*v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v32);
      }

      v32 += 3;
      --v31;
    }

    while (v31);
  }

  v33 = *(this + 13);
  if (v33)
  {
    (*(**(this + 10) + 24))(*(this + 10), *(this + 11), 24 * v33, 8);
  }

  v34 = *(this + 8);
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(this + 6);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::operator<=>[abi:ne200100]<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 4);
  v6 = *(a2 + 4);
  if (v5 == -1)
  {
    if (v6 == -1)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v6 == -1)
  {
    return 1;
  }

  else
  {
    if (v5 < v6)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 1;
    }

    if (v5 == v6)
    {
      v10[1] = v2;
      v10[2] = v3;
      v9 = 0;
      v10[0] = &v9;
      return (off_2881C5B18[v5])(v10, a1, a2);
    }
  }

  return result;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = v5 + 24 * v4;
  v11 = *a2;
  if (v11 != v10)
  {
    if (!v11)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>(a3, v11) & 0x80) == 0)
    {
      v13 = *a2;
      v17 = v10;
      return boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_insert_unique_prepare(v13, &v17, a3, a4);
    }

    v5 = *(a1 + 8);
    v11 = *a2;
  }

  *a4 = v11;
  v15 = *a2;
  if (*a2 == v5)
  {
    return 1;
  }

  if (!v15)
  {
    __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
  }

  v16 = v15 - 24;
  if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>(v15 - 24, a3) & 0x80) != 0)
  {
    return 1;
  }

  if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>(a3, v16) & 0x80) != 0)
  {
    v17 = v16;
    v13 = v5;
    return boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_insert_unique_prepare(v13, &v17, a3, a4);
  }

  result = 0;
  *a4 = v16;
  return result;
}

void *boost::container::vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>*,boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>>(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[1];
  v9 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a2[2], a2[3]);
  if (v9 >= 0xAAAAAAAAAAAAAABLL)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v10);
  }

  v11 = v9;
  result = (*(**a2 + 16))(*a2, 24 * v9, 8);
  v13 = result;
  v14 = a2[1];
  v15 = v14 + 24 * a2[2];
  v16 = result;
  if (v14 != a3)
  {
    v17 = a2[1];
    v16 = result;
    do
    {
      *v16 = *v17;
      *(v16 + 1) = *(v17 + 8);
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      v17 += 24;
      v16 += 3;
    }

    while (v17 != a3);
  }

  *v16 = *a4;
  *(v16 + 1) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v15 != a3)
  {
    v18 = v16 + 4;
    v19 = a3;
    do
    {
      *(v18 - 1) = *v19;
      *v18 = *(v19 + 8);
      v18 = (v18 + 24);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
    }

    while (v19 != v15);
  }

  if (v14)
  {
    v20 = a2[2];
    if (v20)
    {
      v21 = (v14 + 16);
      do
      {
        if (*v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v21);
        }

        v21 += 3;
        --v20;
      }

      while (v20);
    }

    result = boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>::deallocate(a2, a2[1]);
  }

  v22 = a2[2] + 1;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v11;
  *a1 = v13 + a3 - v8;
  return result;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,std::less<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>>,void>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>(v7 + 24 * (v8 >> 1), a3) & 0x80u) == 0)
      {
        v8 >>= 1;
      }

      else
      {
        v7 += 24 * (v8 >> 1) + 24;
        v8 += ~(v8 >> 1);
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return (std::operator<=>[abi:ne200100]<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>(a3, v7) & 0x80u) != 0;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIRZNS_ssB8ne200100IJN2vp2vx20Uplink_Input_Port_IDENSA_22Downlink_Input_Port_IDENSA_21Uplink_Output_Port_IDENSA_23Downlink_Output_Port_IDEEEENS_26common_comparison_categoryIJDpNS_24compare_three_way_resultIT_SH_E4typeEEE4typeERKNS_7variantIJDpSH_EEESR_EUlTyRKT_SU_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJSB_SC_SD_SE_EEES13_EEEDcSS_DpT0_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if (*a2 == *a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIRZNS_ssB8ne200100IJN2vp2vx20Uplink_Input_Port_IDENSA_22Downlink_Input_Port_IDENSA_21Uplink_Output_Port_IDENSA_23Downlink_Output_Port_IDEEEENS_26common_comparison_categoryIJDpNS_24compare_three_way_resultIT_SH_E4typeEEE4typeERKNS_7variantIJDpSH_EEESR_EUlTyRKT_SU_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJSB_SC_SD_SE_EEES13_EEEDcSS_DpT0_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if (*a2 == *a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIRZNS_ssB8ne200100IJN2vp2vx20Uplink_Input_Port_IDENSA_22Downlink_Input_Port_IDENSA_21Uplink_Output_Port_IDENSA_23Downlink_Output_Port_IDEEEENS_26common_comparison_categoryIJDpNS_24compare_three_way_resultIT_SH_E4typeEEE4typeERKNS_7variantIJDpSH_EEESR_EUlTyRKT_SU_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJSB_SC_SD_SE_EEES13_EEEDcSS_DpT0_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if (*a2 == *a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIRZNS_ssB8ne200100IJN2vp2vx20Uplink_Input_Port_IDENSA_22Downlink_Input_Port_IDENSA_21Uplink_Output_Port_IDENSA_23Downlink_Output_Port_IDEEEENS_26common_comparison_categoryIJDpNS_24compare_three_way_resultIT_SH_E4typeEEE4typeERKNS_7variantIJDpSH_EEESR_EUlTyRKT_SU_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJSB_SC_SD_SE_EEES13_EEEDcSS_DpT0_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if (*a2 == *a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t std::operator<=>[abi:ne200100]<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 4);
  v6 = *(a2 + 4);
  if (v5 == -1)
  {
    if (v6 == -1)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v6 == -1)
  {
    return 1;
  }

  else
  {
    if (v5 < v6)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 1;
    }

    if (v5 == v6)
    {
      v10[1] = v2;
      v10[2] = v3;
      v9 = 0;
      v10[0] = &v9;
      return (off_2881C4970[v5])(v10, a1, a2);
    }
  }

  return result;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = v5 + 24 * v4;
  v11 = *a2;
  if (v11 != v10)
  {
    if (!v11)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>(a3, v11) & 0x80) == 0)
    {
      v13 = *a2;
      v17 = v10;
      return boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_insert_unique_prepare(v13, &v17, a3, a4);
    }

    v5 = *(a1 + 8);
    v11 = *a2;
  }

  *a4 = v11;
  v15 = *a2;
  if (*a2 == v5)
  {
    return 1;
  }

  if (!v15)
  {
    __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
  }

  v16 = v15 - 24;
  if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>(v15 - 24, a3) & 0x80) != 0)
  {
    return 1;
  }

  if ((std::operator<=>[abi:ne200100]<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>(a3, v16) & 0x80) != 0)
  {
    v17 = v16;
    v13 = v5;
    return boost::container::dtl::flat_tree<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::dtl::select1st<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,std::less<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>>,boost::container::small_vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,16ul,vp::Allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>,void>>::priv_insert_unique_prepare(v13, &v17, a3, a4);
  }

  result = 0;
  *a4 = v16;
  return result;
}

void *boost::container::vector<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>*,boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>>>(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[1];
  v9 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a2[2], a2[3]);
  if (v9 >= 0xAAAAAAAAAAAAAABLL)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v10);
  }

  v11 = v9;
  result = (*(**a2 + 16))(*a2, 24 * v9, 8);
  v13 = result;
  v14 = a2[1];
  v15 = v14 + 24 * a2[2];
  v16 = result;
  if (v14 != a3)
  {
    v17 = a2[1];
    v16 = result;
    do
    {
      *v16 = *v17;
      *(v16 + 1) = *(v17 + 8);
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      v17 += 24;
      v16 += 3;
    }

    while (v17 != a3);
  }

  *v16 = *a4;
  *(v16 + 1) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v15 != a3)
  {
    v18 = v16 + 4;
    v19 = a3;
    do
    {
      *(v18 - 1) = *v19;
      *v18 = *(v19 + 8);
      v18 = (v18 + 24);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
    }

    while (v19 != v15);
  }

  if (v14)
  {
    v20 = a2[2];
    if (v20)
    {
      v21 = (v14 + 16);
      do
      {
        if (*v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v21);
        }

        v21 += 3;
        --v20;
      }

      while (v20);
    }

    result = boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>::deallocate(a2, a2[1]);
  }

  v22 = a2[2] + 1;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v11;
  *a1 = v13 + a3 - v8;
  return result;
}