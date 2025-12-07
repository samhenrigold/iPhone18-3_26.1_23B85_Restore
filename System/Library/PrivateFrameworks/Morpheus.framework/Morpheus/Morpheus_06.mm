void sub_25A2C4890(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void mlx::core::distributed::ring::RingGroup::all_gather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v9 = *(*a2 + 60) * *(*a2 + 48);
  *&v10 = *(*a2 + 152);
  *(&v10 + 1) = v9;
  v11 = *(*a3 + 152);
  v12 = a1;
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v10);
}

void mlx::core::distributed::ring::RingGroup::send(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v9 = *(*a2 + 60) * *(*a2 + 48);
  *&v10 = *(*a2 + 152);
  *(&v10 + 1) = v9;
  v11 = a3;
  v12 = a1;
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v10);
}

void mlx::core::distributed::ring::RingGroup::recv(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v9 = *(*a2 + 60) * *(*a2 + 48);
  *&v10 = *(*a2 + 152);
  *(&v10 + 1) = v9;
  v11 = a3;
  v12 = a1;
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v10);
}

void mlx::core::distributed::ring::RingGroup::all_max(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  switch(*(*a3 + 56))
  {
    case 0:
      command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
      v6 = (*(command_encoder + 10) + 1) % 10;
      *(command_encoder + 10) = v6;
      v7 = mlx::core::scheduler::scheduler(command_encoder);
      if (v6)
      {
        v8 = *(v7[1] + 8 * *command_encoder);
        std::mutex::lock(v8);
        if (*(v8 + 160) != 1)
        {
          v9 = *(v8 + 72);
          v10 = *(v8 + 80);
          v11 = 16 * (v10 - v9) - 1;
          if (v10 == v9)
          {
            v11 = 0;
          }

          if (v11 == *(v8 + 104) + *(v8 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v8 + 64));
            v9 = *(v8 + 72);
            v10 = *(v8 + 80);
          }

          if (v10 == v9)
          {
            v13 = 0;
          }

          else
          {
            v12 = *(v8 + 104) + *(v8 + 96);
            v13 = *(v9 + ((v12 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v12 & 0x7F);
          }

          *(v13 + 24) = 0;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v7);
      v181 = *(mlx::core::scheduler::scheduler(v180)[1] + 8 * *command_encoder);
      std::mutex::lock(v181);
      if (*(v181 + 160) != 1)
      {
        v182 = *(v181 + 72);
        v183 = *(v181 + 80);
        v184 = 16 * (v183 - v182) - 1;
        if (v183 == v182)
        {
          v184 = 0;
        }

        if (v184 == *(v181 + 104) + *(v181 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v181 + 64));
          v182 = *(v181 + 72);
          v183 = *(v181 + 80);
        }

        if (v183 == v182)
        {
          v186 = 0;
        }

        else
        {
          v185 = *(v181 + 104) + *(v181 + 96);
          v186 = *(v182 + ((v185 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v185 & 0x7F);
        }

        *(v186 + 24) = 0;
        operator new();
      }

      v250 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v250, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v250, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 1:
      v77 = mlx::core::cpu::get_command_encoder(a4, a5);
      v78 = (*(v77 + 10) + 1) % 10;
      *(v77 + 10) = v78;
      v79 = mlx::core::scheduler::scheduler(v77);
      if (v78)
      {
        v80 = *(v79[1] + 8 * *v77);
        std::mutex::lock(v80);
        if (*(v80 + 160) != 1)
        {
          v81 = *(v80 + 72);
          v82 = *(v80 + 80);
          v83 = 16 * (v82 - v81) - 1;
          if (v82 == v81)
          {
            v83 = 0;
          }

          if (v83 == *(v80 + 104) + *(v80 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v80 + 64));
            v81 = *(v80 + 72);
            v82 = *(v80 + 80);
          }

          if (v82 == v81)
          {
            v85 = 0;
          }

          else
          {
            v84 = *(v80 + 104) + *(v80 + 96);
            v85 = *(v81 + ((v84 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v84 & 0x7F);
          }

          *(v85 + 24) = 0;
          operator new();
        }

        v237 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v237, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v237, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v79);
      v188 = *(mlx::core::scheduler::scheduler(v187)[1] + 8 * *v77);
      std::mutex::lock(v188);
      if (*(v188 + 160) != 1)
      {
        v189 = *(v188 + 72);
        v190 = *(v188 + 80);
        v191 = 16 * (v190 - v189) - 1;
        if (v190 == v189)
        {
          v191 = 0;
        }

        if (v191 == *(v188 + 104) + *(v188 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v188 + 64));
          v189 = *(v188 + 72);
          v190 = *(v188 + 80);
        }

        if (v190 == v189)
        {
          v193 = 0;
        }

        else
        {
          v192 = *(v188 + 104) + *(v188 + 96);
          v193 = *(v189 + ((v192 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v192 & 0x7F);
        }

        *(v193 + 24) = 0;
        operator new();
      }

      v251 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v251, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v251, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 2:
      v50 = mlx::core::cpu::get_command_encoder(a4, a5);
      v51 = (*(v50 + 10) + 1) % 10;
      *(v50 + 10) = v51;
      v52 = mlx::core::scheduler::scheduler(v50);
      if (v51)
      {
        v53 = *(v52[1] + 8 * *v50);
        std::mutex::lock(v53);
        if (*(v53 + 160) != 1)
        {
          v54 = *(v53 + 72);
          v55 = *(v53 + 80);
          v56 = 16 * (v55 - v54) - 1;
          if (v55 == v54)
          {
            v56 = 0;
          }

          if (v56 == *(v53 + 104) + *(v53 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v53 + 64));
            v54 = *(v53 + 72);
            v55 = *(v53 + 80);
          }

          if (v55 == v54)
          {
            v58 = 0;
          }

          else
          {
            v57 = *(v53 + 104) + *(v53 + 96);
            v58 = *(v54 + ((v57 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v57 & 0x7F);
          }

          *(v58 + 24) = 0;
          operator new();
        }

        v233 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v233, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v233, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v52);
      v160 = *(mlx::core::scheduler::scheduler(v159)[1] + 8 * *v50);
      std::mutex::lock(v160);
      if (*(v160 + 160) != 1)
      {
        v161 = *(v160 + 72);
        v162 = *(v160 + 80);
        v163 = 16 * (v162 - v161) - 1;
        if (v162 == v161)
        {
          v163 = 0;
        }

        if (v163 == *(v160 + 104) + *(v160 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v160 + 64));
          v161 = *(v160 + 72);
          v162 = *(v160 + 80);
        }

        if (v162 == v161)
        {
          v165 = 0;
        }

        else
        {
          v164 = *(v160 + 104) + *(v160 + 96);
          v165 = *(v161 + ((v164 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v164 & 0x7F);
        }

        *(v165 + 24) = 0;
        operator new();
      }

      v247 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v247, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v247, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 3:
      v59 = mlx::core::cpu::get_command_encoder(a4, a5);
      v60 = (*(v59 + 10) + 1) % 10;
      *(v59 + 10) = v60;
      v61 = mlx::core::scheduler::scheduler(v59);
      if (v60)
      {
        v62 = *(v61[1] + 8 * *v59);
        std::mutex::lock(v62);
        if (*(v62 + 160) != 1)
        {
          v63 = *(v62 + 72);
          v64 = *(v62 + 80);
          v65 = 16 * (v64 - v63) - 1;
          if (v64 == v63)
          {
            v65 = 0;
          }

          if (v65 == *(v62 + 104) + *(v62 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v62 + 64));
            v63 = *(v62 + 72);
            v64 = *(v62 + 80);
          }

          if (v64 == v63)
          {
            v67 = 0;
          }

          else
          {
            v66 = *(v62 + 104) + *(v62 + 96);
            v67 = *(v63 + ((v66 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v66 & 0x7F);
          }

          *(v67 + 24) = 0;
          operator new();
        }

        v234 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v234, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v234, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v61);
      v167 = *(mlx::core::scheduler::scheduler(v166)[1] + 8 * *v59);
      std::mutex::lock(v167);
      if (*(v167 + 160) != 1)
      {
        v168 = *(v167 + 72);
        v169 = *(v167 + 80);
        v170 = 16 * (v169 - v168) - 1;
        if (v169 == v168)
        {
          v170 = 0;
        }

        if (v170 == *(v167 + 104) + *(v167 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v167 + 64));
          v168 = *(v167 + 72);
          v169 = *(v167 + 80);
        }

        if (v169 == v168)
        {
          v172 = 0;
        }

        else
        {
          v171 = *(v167 + 104) + *(v167 + 96);
          v172 = *(v168 + ((v171 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v171 & 0x7F);
        }

        *(v172 + 24) = 0;
        operator new();
      }

      v248 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v248, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v248, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 4:
      v23 = mlx::core::cpu::get_command_encoder(a4, a5);
      v24 = (*(v23 + 10) + 1) % 10;
      *(v23 + 10) = v24;
      v25 = mlx::core::scheduler::scheduler(v23);
      if (v24)
      {
        v26 = *(v25[1] + 8 * *v23);
        std::mutex::lock(v26);
        if (*(v26 + 160) != 1)
        {
          v27 = *(v26 + 72);
          v28 = *(v26 + 80);
          v29 = 16 * (v28 - v27) - 1;
          if (v28 == v27)
          {
            v29 = 0;
          }

          if (v29 == *(v26 + 104) + *(v26 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v26 + 64));
            v27 = *(v26 + 72);
            v28 = *(v26 + 80);
          }

          if (v28 == v27)
          {
            v31 = 0;
          }

          else
          {
            v30 = *(v26 + 104) + *(v26 + 96);
            v31 = *(v27 + ((v30 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v30 & 0x7F);
          }

          *(v31 + 24) = 0;
          operator new();
        }

        v230 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v230, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v230, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v25);
      v139 = *(mlx::core::scheduler::scheduler(v138)[1] + 8 * *v23);
      std::mutex::lock(v139);
      if (*(v139 + 160) != 1)
      {
        v140 = *(v139 + 72);
        v141 = *(v139 + 80);
        v142 = 16 * (v141 - v140) - 1;
        if (v141 == v140)
        {
          v142 = 0;
        }

        if (v142 == *(v139 + 104) + *(v139 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v139 + 64));
          v140 = *(v139 + 72);
          v141 = *(v139 + 80);
        }

        if (v141 == v140)
        {
          v144 = 0;
        }

        else
        {
          v143 = *(v139 + 104) + *(v139 + 96);
          v144 = *(v140 + ((v143 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v143 & 0x7F);
        }

        *(v144 + 24) = 0;
        operator new();
      }

      v244 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v244, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v244, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 5:
      v86 = mlx::core::cpu::get_command_encoder(a4, a5);
      v87 = (*(v86 + 10) + 1) % 10;
      *(v86 + 10) = v87;
      v88 = mlx::core::scheduler::scheduler(v86);
      if (v87)
      {
        v89 = *(v88[1] + 8 * *v86);
        std::mutex::lock(v89);
        if (*(v89 + 160) != 1)
        {
          v90 = *(v89 + 72);
          v91 = *(v89 + 80);
          v92 = 16 * (v91 - v90) - 1;
          if (v91 == v90)
          {
            v92 = 0;
          }

          if (v92 == *(v89 + 104) + *(v89 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v89 + 64));
            v90 = *(v89 + 72);
            v91 = *(v89 + 80);
          }

          if (v91 == v90)
          {
            v94 = 0;
          }

          else
          {
            v93 = *(v89 + 104) + *(v89 + 96);
            v94 = *(v90 + ((v93 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v93 & 0x7F);
          }

          *(v94 + 24) = 0;
          operator new();
        }

        v238 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v238, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v238, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v88);
      v195 = *(mlx::core::scheduler::scheduler(v194)[1] + 8 * *v86);
      std::mutex::lock(v195);
      if (*(v195 + 160) != 1)
      {
        v196 = *(v195 + 72);
        v197 = *(v195 + 80);
        v198 = 16 * (v197 - v196) - 1;
        if (v197 == v196)
        {
          v198 = 0;
        }

        if (v198 == *(v195 + 104) + *(v195 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v195 + 64));
          v196 = *(v195 + 72);
          v197 = *(v195 + 80);
        }

        if (v197 == v196)
        {
          v200 = 0;
        }

        else
        {
          v199 = *(v195 + 104) + *(v195 + 96);
          v200 = *(v196 + ((v199 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v199 & 0x7F);
        }

        *(v200 + 24) = 0;
        operator new();
      }

      v252 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v252, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v252, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 6:
      v104 = mlx::core::cpu::get_command_encoder(a4, a5);
      v105 = (*(v104 + 10) + 1) % 10;
      *(v104 + 10) = v105;
      v106 = mlx::core::scheduler::scheduler(v104);
      if (v105)
      {
        v107 = *(v106[1] + 8 * *v104);
        std::mutex::lock(v107);
        if (*(v107 + 160) != 1)
        {
          v108 = *(v107 + 72);
          v109 = *(v107 + 80);
          v110 = 16 * (v109 - v108) - 1;
          if (v109 == v108)
          {
            v110 = 0;
          }

          if (v110 == *(v107 + 104) + *(v107 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v107 + 64));
            v108 = *(v107 + 72);
            v109 = *(v107 + 80);
          }

          if (v109 == v108)
          {
            v112 = 0;
          }

          else
          {
            v111 = *(v107 + 104) + *(v107 + 96);
            v112 = *(v108 + ((v111 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v111 & 0x7F);
          }

          *(v112 + 24) = 0;
          operator new();
        }

        v240 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v240, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v240, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v106);
      v209 = *(mlx::core::scheduler::scheduler(v208)[1] + 8 * *v104);
      std::mutex::lock(v209);
      if (*(v209 + 160) != 1)
      {
        v210 = *(v209 + 72);
        v211 = *(v209 + 80);
        v212 = 16 * (v211 - v210) - 1;
        if (v211 == v210)
        {
          v212 = 0;
        }

        if (v212 == *(v209 + 104) + *(v209 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v209 + 64));
          v210 = *(v209 + 72);
          v211 = *(v209 + 80);
        }

        if (v211 == v210)
        {
          v214 = 0;
        }

        else
        {
          v213 = *(v209 + 104) + *(v209 + 96);
          v214 = *(v210 + ((v213 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v213 & 0x7F);
        }

        *(v214 + 24) = 0;
        operator new();
      }

      v254 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v254, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v254, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 7:
      v68 = mlx::core::cpu::get_command_encoder(a4, a5);
      v69 = (*(v68 + 10) + 1) % 10;
      *(v68 + 10) = v69;
      v70 = mlx::core::scheduler::scheduler(v68);
      if (v69)
      {
        v71 = *(v70[1] + 8 * *v68);
        std::mutex::lock(v71);
        if (*(v71 + 160) != 1)
        {
          v72 = *(v71 + 72);
          v73 = *(v71 + 80);
          v74 = 16 * (v73 - v72) - 1;
          if (v73 == v72)
          {
            v74 = 0;
          }

          if (v74 == *(v71 + 104) + *(v71 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v71 + 64));
            v72 = *(v71 + 72);
            v73 = *(v71 + 80);
          }

          if (v73 == v72)
          {
            v76 = 0;
          }

          else
          {
            v75 = *(v71 + 104) + *(v71 + 96);
            v76 = *(v72 + ((v75 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v75 & 0x7F);
          }

          *(v76 + 24) = 0;
          operator new();
        }

        v236 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v236, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v236, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v70);
      v174 = *(mlx::core::scheduler::scheduler(v173)[1] + 8 * *v68);
      std::mutex::lock(v174);
      if (*(v174 + 160) != 1)
      {
        v175 = *(v174 + 72);
        v176 = *(v174 + 80);
        v177 = 16 * (v176 - v175) - 1;
        if (v176 == v175)
        {
          v177 = 0;
        }

        if (v177 == *(v174 + 104) + *(v174 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v174 + 64));
          v175 = *(v174 + 72);
          v176 = *(v174 + 80);
        }

        if (v176 == v175)
        {
          v179 = 0;
        }

        else
        {
          v178 = *(v174 + 104) + *(v174 + 96);
          v179 = *(v175 + ((v178 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v178 & 0x7F);
        }

        *(v179 + 24) = 0;
        operator new();
      }

      v249 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v249, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v249, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 8:
      v122 = mlx::core::cpu::get_command_encoder(a4, a5);
      v123 = (*(v122 + 10) + 1) % 10;
      *(v122 + 10) = v123;
      v124 = mlx::core::scheduler::scheduler(v122);
      if (v123)
      {
        v125 = *(v124[1] + 8 * *v122);
        std::mutex::lock(v125);
        if (*(v125 + 160) != 1)
        {
          v126 = *(v125 + 72);
          v127 = *(v125 + 80);
          v128 = 16 * (v127 - v126) - 1;
          if (v127 == v126)
          {
            v128 = 0;
          }

          if (v128 == *(v125 + 104) + *(v125 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v125 + 64));
            v126 = *(v125 + 72);
            v127 = *(v125 + 80);
          }

          if (v127 == v126)
          {
            v130 = 0;
          }

          else
          {
            v129 = *(v125 + 104) + *(v125 + 96);
            v130 = *(v126 + ((v129 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v129 & 0x7F);
          }

          *(v130 + 24) = 0;
          operator new();
        }

        v242 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v242, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v242, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v124);
      v223 = *(mlx::core::scheduler::scheduler(v222)[1] + 8 * *v122);
      std::mutex::lock(v223);
      if (*(v223 + 160) != 1)
      {
        v224 = *(v223 + 72);
        v225 = *(v223 + 80);
        v226 = 16 * (v225 - v224) - 1;
        if (v225 == v224)
        {
          v226 = 0;
        }

        if (v226 == *(v223 + 104) + *(v223 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v223 + 64));
          v224 = *(v223 + 72);
          v225 = *(v223 + 80);
        }

        if (v225 == v224)
        {
          v228 = 0;
        }

        else
        {
          v227 = *(v223 + 104) + *(v223 + 96);
          v228 = *(v224 + ((v227 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v227 & 0x7F);
        }

        *(v228 + 24) = 0;
        operator new();
      }

      v256 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v256, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v256, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 9:
      v41 = mlx::core::cpu::get_command_encoder(a4, a5);
      v42 = (*(v41 + 10) + 1) % 10;
      *(v41 + 10) = v42;
      v43 = mlx::core::scheduler::scheduler(v41);
      if (v42)
      {
        v44 = *(v43[1] + 8 * *v41);
        std::mutex::lock(v44);
        if (*(v44 + 160) != 1)
        {
          v45 = *(v44 + 72);
          v46 = *(v44 + 80);
          v47 = 16 * (v46 - v45) - 1;
          if (v46 == v45)
          {
            v47 = 0;
          }

          if (v47 == *(v44 + 104) + *(v44 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v44 + 64));
            v45 = *(v44 + 72);
            v46 = *(v44 + 80);
          }

          if (v46 == v45)
          {
            v49 = 0;
          }

          else
          {
            v48 = *(v44 + 104) + *(v44 + 96);
            v49 = *(v45 + ((v48 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v48 & 0x7F);
          }

          *(v49 + 24) = 0;
          operator new();
        }

        v232 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v232, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v232, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v43);
      v153 = *(mlx::core::scheduler::scheduler(v152)[1] + 8 * *v41);
      std::mutex::lock(v153);
      if (*(v153 + 160) != 1)
      {
        v154 = *(v153 + 72);
        v155 = *(v153 + 80);
        v156 = 16 * (v155 - v154) - 1;
        if (v155 == v154)
        {
          v156 = 0;
        }

        if (v156 == *(v153 + 104) + *(v153 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v153 + 64));
          v154 = *(v153 + 72);
          v155 = *(v153 + 80);
        }

        if (v155 == v154)
        {
          v158 = 0;
        }

        else
        {
          v157 = *(v153 + 104) + *(v153 + 96);
          v158 = *(v154 + ((v157 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v157 & 0x7F);
        }

        *(v158 + 24) = 0;
        operator new();
      }

      v246 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v246, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v246, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xA:
      v113 = mlx::core::cpu::get_command_encoder(a4, a5);
      v114 = (*(v113 + 10) + 1) % 10;
      *(v113 + 10) = v114;
      v115 = mlx::core::scheduler::scheduler(v113);
      if (v114)
      {
        v116 = *(v115[1] + 8 * *v113);
        std::mutex::lock(v116);
        if (*(v116 + 160) != 1)
        {
          v117 = *(v116 + 72);
          v118 = *(v116 + 80);
          v119 = 16 * (v118 - v117) - 1;
          if (v118 == v117)
          {
            v119 = 0;
          }

          if (v119 == *(v116 + 104) + *(v116 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v116 + 64));
            v117 = *(v116 + 72);
            v118 = *(v116 + 80);
          }

          if (v118 == v117)
          {
            v121 = 0;
          }

          else
          {
            v120 = *(v116 + 104) + *(v116 + 96);
            v121 = *(v117 + ((v120 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v120 & 0x7F);
          }

          *(v121 + 24) = 0;
          operator new();
        }

        v241 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v241, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v241, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v115);
      v216 = *(mlx::core::scheduler::scheduler(v215)[1] + 8 * *v113);
      std::mutex::lock(v216);
      if (*(v216 + 160) != 1)
      {
        v217 = *(v216 + 72);
        v218 = *(v216 + 80);
        v219 = 16 * (v218 - v217) - 1;
        if (v218 == v217)
        {
          v219 = 0;
        }

        if (v219 == *(v216 + 104) + *(v216 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v216 + 64));
          v217 = *(v216 + 72);
          v218 = *(v216 + 80);
        }

        if (v218 == v217)
        {
          v221 = 0;
        }

        else
        {
          v220 = *(v216 + 104) + *(v216 + 96);
          v221 = *(v217 + ((v220 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v220 & 0x7F);
        }

        *(v221 + 24) = 0;
        operator new();
      }

      v255 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v255, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v255, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xB:
      v14 = mlx::core::cpu::get_command_encoder(a4, a5);
      v15 = (*(v14 + 10) + 1) % 10;
      *(v14 + 10) = v15;
      v16 = mlx::core::scheduler::scheduler(v14);
      if (v15)
      {
        v17 = *(v16[1] + 8 * *v14);
        std::mutex::lock(v17);
        if (*(v17 + 160) != 1)
        {
          v18 = *(v17 + 72);
          v19 = *(v17 + 80);
          v20 = 16 * (v19 - v18) - 1;
          if (v19 == v18)
          {
            v20 = 0;
          }

          if (v20 == *(v17 + 104) + *(v17 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v17 + 64));
            v18 = *(v17 + 72);
            v19 = *(v17 + 80);
          }

          if (v19 == v18)
          {
            v22 = 0;
          }

          else
          {
            v21 = *(v17 + 104) + *(v17 + 96);
            v22 = *(v18 + ((v21 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v21 & 0x7F);
          }

          *(v22 + 24) = 0;
          operator new();
        }

        v229 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v229, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v229, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v16);
      v132 = *(mlx::core::scheduler::scheduler(v131)[1] + 8 * *v14);
      std::mutex::lock(v132);
      if (*(v132 + 160) != 1)
      {
        v133 = *(v132 + 72);
        v134 = *(v132 + 80);
        v135 = 16 * (v134 - v133) - 1;
        if (v134 == v133)
        {
          v135 = 0;
        }

        if (v135 == *(v132 + 104) + *(v132 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v132 + 64));
          v133 = *(v132 + 72);
          v134 = *(v132 + 80);
        }

        if (v134 == v133)
        {
          v137 = 0;
        }

        else
        {
          v136 = *(v132 + 104) + *(v132 + 96);
          v137 = *(v133 + ((v136 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v136 & 0x7F);
        }

        *(v137 + 24) = 0;
        operator new();
      }

      v243 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v243, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v243, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xC:
      v32 = mlx::core::cpu::get_command_encoder(a4, a5);
      v33 = (*(v32 + 10) + 1) % 10;
      *(v32 + 10) = v33;
      v34 = mlx::core::scheduler::scheduler(v32);
      if (v33)
      {
        v35 = *(v34[1] + 8 * *v32);
        std::mutex::lock(v35);
        if (*(v35 + 160) != 1)
        {
          v36 = *(v35 + 72);
          v37 = *(v35 + 80);
          v38 = 16 * (v37 - v36) - 1;
          if (v37 == v36)
          {
            v38 = 0;
          }

          if (v38 == *(v35 + 104) + *(v35 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v35 + 64));
            v36 = *(v35 + 72);
            v37 = *(v35 + 80);
          }

          if (v37 == v36)
          {
            v40 = 0;
          }

          else
          {
            v39 = *(v35 + 104) + *(v35 + 96);
            v40 = *(v36 + ((v39 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v39 & 0x7F);
          }

          *(v40 + 24) = 0;
          operator new();
        }

        v231 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v231, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v231, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v34);
      v146 = *(mlx::core::scheduler::scheduler(v145)[1] + 8 * *v32);
      std::mutex::lock(v146);
      if (*(v146 + 160) != 1)
      {
        v147 = *(v146 + 72);
        v148 = *(v146 + 80);
        v149 = 16 * (v148 - v147) - 1;
        if (v148 == v147)
        {
          v149 = 0;
        }

        if (v149 == *(v146 + 104) + *(v146 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v146 + 64));
          v147 = *(v146 + 72);
          v148 = *(v146 + 80);
        }

        if (v148 == v147)
        {
          v151 = 0;
        }

        else
        {
          v150 = *(v146 + 104) + *(v146 + 96);
          v151 = *(v147 + ((v150 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v150 & 0x7F);
        }

        *(v151 + 24) = 0;
        operator new();
      }

      v245 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v245, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v245, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xD:
      v95 = mlx::core::cpu::get_command_encoder(a4, a5);
      v96 = (*(v95 + 10) + 1) % 10;
      *(v95 + 10) = v96;
      v97 = mlx::core::scheduler::scheduler(v95);
      if (v96)
      {
        v98 = *(v97[1] + 8 * *v95);
        std::mutex::lock(v98);
        if (*(v98 + 160) != 1)
        {
          v99 = *(v98 + 72);
          v100 = *(v98 + 80);
          v101 = 16 * (v100 - v99) - 1;
          if (v100 == v99)
          {
            v101 = 0;
          }

          if (v101 == *(v98 + 104) + *(v98 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v98 + 64));
            v99 = *(v98 + 72);
            v100 = *(v98 + 80);
          }

          if (v100 == v99)
          {
            v103 = 0;
          }

          else
          {
            v102 = *(v98 + 104) + *(v98 + 96);
            v103 = *(v99 + ((v102 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v102 & 0x7F);
          }

          *(v103 + 24) = 0;
          operator new();
        }

        v239 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v239, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v239, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v97);
      v202 = *(mlx::core::scheduler::scheduler(v201)[1] + 8 * *v95);
      std::mutex::lock(v202);
      if (*(v202 + 160) != 1)
      {
        v203 = *(v202 + 72);
        v204 = *(v202 + 80);
        v205 = 16 * (v204 - v203) - 1;
        if (v204 == v203)
        {
          v205 = 0;
        }

        if (v205 == *(v202 + 104) + *(v202 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v202 + 64));
          v203 = *(v202 + 72);
          v204 = *(v202 + 80);
        }

        if (v204 == v203)
        {
          v207 = 0;
        }

        else
        {
          v206 = *(v202 + 104) + *(v202 + 96);
          v207 = *(v203 + ((v206 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v206 & 0x7F);
        }

        *(v207 + 24) = 0;
        operator new();
      }

      v253 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v253, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v253, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    default:
      return;
  }
}

void sub_25A2C6CC4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void mlx::core::distributed::ring::RingGroup::all_min(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  switch(*(*a3 + 56))
  {
    case 0:
      command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
      v6 = (*(command_encoder + 10) + 1) % 10;
      *(command_encoder + 10) = v6;
      v7 = mlx::core::scheduler::scheduler(command_encoder);
      if (v6)
      {
        v8 = *(v7[1] + 8 * *command_encoder);
        std::mutex::lock(v8);
        if (*(v8 + 160) != 1)
        {
          v9 = *(v8 + 72);
          v10 = *(v8 + 80);
          v11 = 16 * (v10 - v9) - 1;
          if (v10 == v9)
          {
            v11 = 0;
          }

          if (v11 == *(v8 + 104) + *(v8 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v8 + 64));
            v9 = *(v8 + 72);
            v10 = *(v8 + 80);
          }

          if (v10 == v9)
          {
            v13 = 0;
          }

          else
          {
            v12 = *(v8 + 104) + *(v8 + 96);
            v13 = *(v9 + ((v12 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v12 & 0x7F);
          }

          *(v13 + 24) = 0;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v7);
      v181 = *(mlx::core::scheduler::scheduler(v180)[1] + 8 * *command_encoder);
      std::mutex::lock(v181);
      if (*(v181 + 160) != 1)
      {
        v182 = *(v181 + 72);
        v183 = *(v181 + 80);
        v184 = 16 * (v183 - v182) - 1;
        if (v183 == v182)
        {
          v184 = 0;
        }

        if (v184 == *(v181 + 104) + *(v181 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v181 + 64));
          v182 = *(v181 + 72);
          v183 = *(v181 + 80);
        }

        if (v183 == v182)
        {
          v186 = 0;
        }

        else
        {
          v185 = *(v181 + 104) + *(v181 + 96);
          v186 = *(v182 + ((v185 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v185 & 0x7F);
        }

        *(v186 + 24) = 0;
        operator new();
      }

      v250 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v250, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v250, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 1:
      v77 = mlx::core::cpu::get_command_encoder(a4, a5);
      v78 = (*(v77 + 10) + 1) % 10;
      *(v77 + 10) = v78;
      v79 = mlx::core::scheduler::scheduler(v77);
      if (v78)
      {
        v80 = *(v79[1] + 8 * *v77);
        std::mutex::lock(v80);
        if (*(v80 + 160) != 1)
        {
          v81 = *(v80 + 72);
          v82 = *(v80 + 80);
          v83 = 16 * (v82 - v81) - 1;
          if (v82 == v81)
          {
            v83 = 0;
          }

          if (v83 == *(v80 + 104) + *(v80 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v80 + 64));
            v81 = *(v80 + 72);
            v82 = *(v80 + 80);
          }

          if (v82 == v81)
          {
            v85 = 0;
          }

          else
          {
            v84 = *(v80 + 104) + *(v80 + 96);
            v85 = *(v81 + ((v84 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v84 & 0x7F);
          }

          *(v85 + 24) = 0;
          operator new();
        }

        v237 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v237, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v237, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v79);
      v188 = *(mlx::core::scheduler::scheduler(v187)[1] + 8 * *v77);
      std::mutex::lock(v188);
      if (*(v188 + 160) != 1)
      {
        v189 = *(v188 + 72);
        v190 = *(v188 + 80);
        v191 = 16 * (v190 - v189) - 1;
        if (v190 == v189)
        {
          v191 = 0;
        }

        if (v191 == *(v188 + 104) + *(v188 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v188 + 64));
          v189 = *(v188 + 72);
          v190 = *(v188 + 80);
        }

        if (v190 == v189)
        {
          v193 = 0;
        }

        else
        {
          v192 = *(v188 + 104) + *(v188 + 96);
          v193 = *(v189 + ((v192 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v192 & 0x7F);
        }

        *(v193 + 24) = 0;
        operator new();
      }

      v251 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v251, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v251, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 2:
      v50 = mlx::core::cpu::get_command_encoder(a4, a5);
      v51 = (*(v50 + 10) + 1) % 10;
      *(v50 + 10) = v51;
      v52 = mlx::core::scheduler::scheduler(v50);
      if (v51)
      {
        v53 = *(v52[1] + 8 * *v50);
        std::mutex::lock(v53);
        if (*(v53 + 160) != 1)
        {
          v54 = *(v53 + 72);
          v55 = *(v53 + 80);
          v56 = 16 * (v55 - v54) - 1;
          if (v55 == v54)
          {
            v56 = 0;
          }

          if (v56 == *(v53 + 104) + *(v53 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v53 + 64));
            v54 = *(v53 + 72);
            v55 = *(v53 + 80);
          }

          if (v55 == v54)
          {
            v58 = 0;
          }

          else
          {
            v57 = *(v53 + 104) + *(v53 + 96);
            v58 = *(v54 + ((v57 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v57 & 0x7F);
          }

          *(v58 + 24) = 0;
          operator new();
        }

        v233 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v233, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v233, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v52);
      v160 = *(mlx::core::scheduler::scheduler(v159)[1] + 8 * *v50);
      std::mutex::lock(v160);
      if (*(v160 + 160) != 1)
      {
        v161 = *(v160 + 72);
        v162 = *(v160 + 80);
        v163 = 16 * (v162 - v161) - 1;
        if (v162 == v161)
        {
          v163 = 0;
        }

        if (v163 == *(v160 + 104) + *(v160 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v160 + 64));
          v161 = *(v160 + 72);
          v162 = *(v160 + 80);
        }

        if (v162 == v161)
        {
          v165 = 0;
        }

        else
        {
          v164 = *(v160 + 104) + *(v160 + 96);
          v165 = *(v161 + ((v164 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v164 & 0x7F);
        }

        *(v165 + 24) = 0;
        operator new();
      }

      v247 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v247, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v247, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 3:
      v59 = mlx::core::cpu::get_command_encoder(a4, a5);
      v60 = (*(v59 + 10) + 1) % 10;
      *(v59 + 10) = v60;
      v61 = mlx::core::scheduler::scheduler(v59);
      if (v60)
      {
        v62 = *(v61[1] + 8 * *v59);
        std::mutex::lock(v62);
        if (*(v62 + 160) != 1)
        {
          v63 = *(v62 + 72);
          v64 = *(v62 + 80);
          v65 = 16 * (v64 - v63) - 1;
          if (v64 == v63)
          {
            v65 = 0;
          }

          if (v65 == *(v62 + 104) + *(v62 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v62 + 64));
            v63 = *(v62 + 72);
            v64 = *(v62 + 80);
          }

          if (v64 == v63)
          {
            v67 = 0;
          }

          else
          {
            v66 = *(v62 + 104) + *(v62 + 96);
            v67 = *(v63 + ((v66 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v66 & 0x7F);
          }

          *(v67 + 24) = 0;
          operator new();
        }

        v234 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v234, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v234, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v61);
      v167 = *(mlx::core::scheduler::scheduler(v166)[1] + 8 * *v59);
      std::mutex::lock(v167);
      if (*(v167 + 160) != 1)
      {
        v168 = *(v167 + 72);
        v169 = *(v167 + 80);
        v170 = 16 * (v169 - v168) - 1;
        if (v169 == v168)
        {
          v170 = 0;
        }

        if (v170 == *(v167 + 104) + *(v167 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v167 + 64));
          v168 = *(v167 + 72);
          v169 = *(v167 + 80);
        }

        if (v169 == v168)
        {
          v172 = 0;
        }

        else
        {
          v171 = *(v167 + 104) + *(v167 + 96);
          v172 = *(v168 + ((v171 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v171 & 0x7F);
        }

        *(v172 + 24) = 0;
        operator new();
      }

      v248 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v248, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v248, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 4:
      v23 = mlx::core::cpu::get_command_encoder(a4, a5);
      v24 = (*(v23 + 10) + 1) % 10;
      *(v23 + 10) = v24;
      v25 = mlx::core::scheduler::scheduler(v23);
      if (v24)
      {
        v26 = *(v25[1] + 8 * *v23);
        std::mutex::lock(v26);
        if (*(v26 + 160) != 1)
        {
          v27 = *(v26 + 72);
          v28 = *(v26 + 80);
          v29 = 16 * (v28 - v27) - 1;
          if (v28 == v27)
          {
            v29 = 0;
          }

          if (v29 == *(v26 + 104) + *(v26 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v26 + 64));
            v27 = *(v26 + 72);
            v28 = *(v26 + 80);
          }

          if (v28 == v27)
          {
            v31 = 0;
          }

          else
          {
            v30 = *(v26 + 104) + *(v26 + 96);
            v31 = *(v27 + ((v30 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v30 & 0x7F);
          }

          *(v31 + 24) = 0;
          operator new();
        }

        v230 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v230, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v230, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v25);
      v139 = *(mlx::core::scheduler::scheduler(v138)[1] + 8 * *v23);
      std::mutex::lock(v139);
      if (*(v139 + 160) != 1)
      {
        v140 = *(v139 + 72);
        v141 = *(v139 + 80);
        v142 = 16 * (v141 - v140) - 1;
        if (v141 == v140)
        {
          v142 = 0;
        }

        if (v142 == *(v139 + 104) + *(v139 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v139 + 64));
          v140 = *(v139 + 72);
          v141 = *(v139 + 80);
        }

        if (v141 == v140)
        {
          v144 = 0;
        }

        else
        {
          v143 = *(v139 + 104) + *(v139 + 96);
          v144 = *(v140 + ((v143 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v143 & 0x7F);
        }

        *(v144 + 24) = 0;
        operator new();
      }

      v244 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v244, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v244, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 5:
      v86 = mlx::core::cpu::get_command_encoder(a4, a5);
      v87 = (*(v86 + 10) + 1) % 10;
      *(v86 + 10) = v87;
      v88 = mlx::core::scheduler::scheduler(v86);
      if (v87)
      {
        v89 = *(v88[1] + 8 * *v86);
        std::mutex::lock(v89);
        if (*(v89 + 160) != 1)
        {
          v90 = *(v89 + 72);
          v91 = *(v89 + 80);
          v92 = 16 * (v91 - v90) - 1;
          if (v91 == v90)
          {
            v92 = 0;
          }

          if (v92 == *(v89 + 104) + *(v89 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v89 + 64));
            v90 = *(v89 + 72);
            v91 = *(v89 + 80);
          }

          if (v91 == v90)
          {
            v94 = 0;
          }

          else
          {
            v93 = *(v89 + 104) + *(v89 + 96);
            v94 = *(v90 + ((v93 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v93 & 0x7F);
          }

          *(v94 + 24) = 0;
          operator new();
        }

        v238 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v238, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v238, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v88);
      v195 = *(mlx::core::scheduler::scheduler(v194)[1] + 8 * *v86);
      std::mutex::lock(v195);
      if (*(v195 + 160) != 1)
      {
        v196 = *(v195 + 72);
        v197 = *(v195 + 80);
        v198 = 16 * (v197 - v196) - 1;
        if (v197 == v196)
        {
          v198 = 0;
        }

        if (v198 == *(v195 + 104) + *(v195 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v195 + 64));
          v196 = *(v195 + 72);
          v197 = *(v195 + 80);
        }

        if (v197 == v196)
        {
          v200 = 0;
        }

        else
        {
          v199 = *(v195 + 104) + *(v195 + 96);
          v200 = *(v196 + ((v199 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v199 & 0x7F);
        }

        *(v200 + 24) = 0;
        operator new();
      }

      v252 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v252, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v252, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 6:
      v104 = mlx::core::cpu::get_command_encoder(a4, a5);
      v105 = (*(v104 + 10) + 1) % 10;
      *(v104 + 10) = v105;
      v106 = mlx::core::scheduler::scheduler(v104);
      if (v105)
      {
        v107 = *(v106[1] + 8 * *v104);
        std::mutex::lock(v107);
        if (*(v107 + 160) != 1)
        {
          v108 = *(v107 + 72);
          v109 = *(v107 + 80);
          v110 = 16 * (v109 - v108) - 1;
          if (v109 == v108)
          {
            v110 = 0;
          }

          if (v110 == *(v107 + 104) + *(v107 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v107 + 64));
            v108 = *(v107 + 72);
            v109 = *(v107 + 80);
          }

          if (v109 == v108)
          {
            v112 = 0;
          }

          else
          {
            v111 = *(v107 + 104) + *(v107 + 96);
            v112 = *(v108 + ((v111 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v111 & 0x7F);
          }

          *(v112 + 24) = 0;
          operator new();
        }

        v240 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v240, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v240, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v106);
      v209 = *(mlx::core::scheduler::scheduler(v208)[1] + 8 * *v104);
      std::mutex::lock(v209);
      if (*(v209 + 160) != 1)
      {
        v210 = *(v209 + 72);
        v211 = *(v209 + 80);
        v212 = 16 * (v211 - v210) - 1;
        if (v211 == v210)
        {
          v212 = 0;
        }

        if (v212 == *(v209 + 104) + *(v209 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v209 + 64));
          v210 = *(v209 + 72);
          v211 = *(v209 + 80);
        }

        if (v211 == v210)
        {
          v214 = 0;
        }

        else
        {
          v213 = *(v209 + 104) + *(v209 + 96);
          v214 = *(v210 + ((v213 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v213 & 0x7F);
        }

        *(v214 + 24) = 0;
        operator new();
      }

      v254 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v254, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v254, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 7:
      v68 = mlx::core::cpu::get_command_encoder(a4, a5);
      v69 = (*(v68 + 10) + 1) % 10;
      *(v68 + 10) = v69;
      v70 = mlx::core::scheduler::scheduler(v68);
      if (v69)
      {
        v71 = *(v70[1] + 8 * *v68);
        std::mutex::lock(v71);
        if (*(v71 + 160) != 1)
        {
          v72 = *(v71 + 72);
          v73 = *(v71 + 80);
          v74 = 16 * (v73 - v72) - 1;
          if (v73 == v72)
          {
            v74 = 0;
          }

          if (v74 == *(v71 + 104) + *(v71 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v71 + 64));
            v72 = *(v71 + 72);
            v73 = *(v71 + 80);
          }

          if (v73 == v72)
          {
            v76 = 0;
          }

          else
          {
            v75 = *(v71 + 104) + *(v71 + 96);
            v76 = *(v72 + ((v75 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v75 & 0x7F);
          }

          *(v76 + 24) = 0;
          operator new();
        }

        v236 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v236, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v236, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v70);
      v174 = *(mlx::core::scheduler::scheduler(v173)[1] + 8 * *v68);
      std::mutex::lock(v174);
      if (*(v174 + 160) != 1)
      {
        v175 = *(v174 + 72);
        v176 = *(v174 + 80);
        v177 = 16 * (v176 - v175) - 1;
        if (v176 == v175)
        {
          v177 = 0;
        }

        if (v177 == *(v174 + 104) + *(v174 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v174 + 64));
          v175 = *(v174 + 72);
          v176 = *(v174 + 80);
        }

        if (v176 == v175)
        {
          v179 = 0;
        }

        else
        {
          v178 = *(v174 + 104) + *(v174 + 96);
          v179 = *(v175 + ((v178 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v178 & 0x7F);
        }

        *(v179 + 24) = 0;
        operator new();
      }

      v249 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v249, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v249, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 8:
      v122 = mlx::core::cpu::get_command_encoder(a4, a5);
      v123 = (*(v122 + 10) + 1) % 10;
      *(v122 + 10) = v123;
      v124 = mlx::core::scheduler::scheduler(v122);
      if (v123)
      {
        v125 = *(v124[1] + 8 * *v122);
        std::mutex::lock(v125);
        if (*(v125 + 160) != 1)
        {
          v126 = *(v125 + 72);
          v127 = *(v125 + 80);
          v128 = 16 * (v127 - v126) - 1;
          if (v127 == v126)
          {
            v128 = 0;
          }

          if (v128 == *(v125 + 104) + *(v125 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v125 + 64));
            v126 = *(v125 + 72);
            v127 = *(v125 + 80);
          }

          if (v127 == v126)
          {
            v130 = 0;
          }

          else
          {
            v129 = *(v125 + 104) + *(v125 + 96);
            v130 = *(v126 + ((v129 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v129 & 0x7F);
          }

          *(v130 + 24) = 0;
          operator new();
        }

        v242 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v242, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v242, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v124);
      v223 = *(mlx::core::scheduler::scheduler(v222)[1] + 8 * *v122);
      std::mutex::lock(v223);
      if (*(v223 + 160) != 1)
      {
        v224 = *(v223 + 72);
        v225 = *(v223 + 80);
        v226 = 16 * (v225 - v224) - 1;
        if (v225 == v224)
        {
          v226 = 0;
        }

        if (v226 == *(v223 + 104) + *(v223 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v223 + 64));
          v224 = *(v223 + 72);
          v225 = *(v223 + 80);
        }

        if (v225 == v224)
        {
          v228 = 0;
        }

        else
        {
          v227 = *(v223 + 104) + *(v223 + 96);
          v228 = *(v224 + ((v227 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v227 & 0x7F);
        }

        *(v228 + 24) = 0;
        operator new();
      }

      v256 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v256, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v256, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 9:
      v41 = mlx::core::cpu::get_command_encoder(a4, a5);
      v42 = (*(v41 + 10) + 1) % 10;
      *(v41 + 10) = v42;
      v43 = mlx::core::scheduler::scheduler(v41);
      if (v42)
      {
        v44 = *(v43[1] + 8 * *v41);
        std::mutex::lock(v44);
        if (*(v44 + 160) != 1)
        {
          v45 = *(v44 + 72);
          v46 = *(v44 + 80);
          v47 = 16 * (v46 - v45) - 1;
          if (v46 == v45)
          {
            v47 = 0;
          }

          if (v47 == *(v44 + 104) + *(v44 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v44 + 64));
            v45 = *(v44 + 72);
            v46 = *(v44 + 80);
          }

          if (v46 == v45)
          {
            v49 = 0;
          }

          else
          {
            v48 = *(v44 + 104) + *(v44 + 96);
            v49 = *(v45 + ((v48 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v48 & 0x7F);
          }

          *(v49 + 24) = 0;
          operator new();
        }

        v232 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v232, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v232, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v43);
      v153 = *(mlx::core::scheduler::scheduler(v152)[1] + 8 * *v41);
      std::mutex::lock(v153);
      if (*(v153 + 160) != 1)
      {
        v154 = *(v153 + 72);
        v155 = *(v153 + 80);
        v156 = 16 * (v155 - v154) - 1;
        if (v155 == v154)
        {
          v156 = 0;
        }

        if (v156 == *(v153 + 104) + *(v153 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v153 + 64));
          v154 = *(v153 + 72);
          v155 = *(v153 + 80);
        }

        if (v155 == v154)
        {
          v158 = 0;
        }

        else
        {
          v157 = *(v153 + 104) + *(v153 + 96);
          v158 = *(v154 + ((v157 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v157 & 0x7F);
        }

        *(v158 + 24) = 0;
        operator new();
      }

      v246 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v246, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v246, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xA:
      v113 = mlx::core::cpu::get_command_encoder(a4, a5);
      v114 = (*(v113 + 10) + 1) % 10;
      *(v113 + 10) = v114;
      v115 = mlx::core::scheduler::scheduler(v113);
      if (v114)
      {
        v116 = *(v115[1] + 8 * *v113);
        std::mutex::lock(v116);
        if (*(v116 + 160) != 1)
        {
          v117 = *(v116 + 72);
          v118 = *(v116 + 80);
          v119 = 16 * (v118 - v117) - 1;
          if (v118 == v117)
          {
            v119 = 0;
          }

          if (v119 == *(v116 + 104) + *(v116 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v116 + 64));
            v117 = *(v116 + 72);
            v118 = *(v116 + 80);
          }

          if (v118 == v117)
          {
            v121 = 0;
          }

          else
          {
            v120 = *(v116 + 104) + *(v116 + 96);
            v121 = *(v117 + ((v120 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v120 & 0x7F);
          }

          *(v121 + 24) = 0;
          operator new();
        }

        v241 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v241, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v241, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v115);
      v216 = *(mlx::core::scheduler::scheduler(v215)[1] + 8 * *v113);
      std::mutex::lock(v216);
      if (*(v216 + 160) != 1)
      {
        v217 = *(v216 + 72);
        v218 = *(v216 + 80);
        v219 = 16 * (v218 - v217) - 1;
        if (v218 == v217)
        {
          v219 = 0;
        }

        if (v219 == *(v216 + 104) + *(v216 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v216 + 64));
          v217 = *(v216 + 72);
          v218 = *(v216 + 80);
        }

        if (v218 == v217)
        {
          v221 = 0;
        }

        else
        {
          v220 = *(v216 + 104) + *(v216 + 96);
          v221 = *(v217 + ((v220 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v220 & 0x7F);
        }

        *(v221 + 24) = 0;
        operator new();
      }

      v255 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v255, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v255, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xB:
      v14 = mlx::core::cpu::get_command_encoder(a4, a5);
      v15 = (*(v14 + 10) + 1) % 10;
      *(v14 + 10) = v15;
      v16 = mlx::core::scheduler::scheduler(v14);
      if (v15)
      {
        v17 = *(v16[1] + 8 * *v14);
        std::mutex::lock(v17);
        if (*(v17 + 160) != 1)
        {
          v18 = *(v17 + 72);
          v19 = *(v17 + 80);
          v20 = 16 * (v19 - v18) - 1;
          if (v19 == v18)
          {
            v20 = 0;
          }

          if (v20 == *(v17 + 104) + *(v17 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v17 + 64));
            v18 = *(v17 + 72);
            v19 = *(v17 + 80);
          }

          if (v19 == v18)
          {
            v22 = 0;
          }

          else
          {
            v21 = *(v17 + 104) + *(v17 + 96);
            v22 = *(v18 + ((v21 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v21 & 0x7F);
          }

          *(v22 + 24) = 0;
          operator new();
        }

        v229 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v229, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v229, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v16);
      v132 = *(mlx::core::scheduler::scheduler(v131)[1] + 8 * *v14);
      std::mutex::lock(v132);
      if (*(v132 + 160) != 1)
      {
        v133 = *(v132 + 72);
        v134 = *(v132 + 80);
        v135 = 16 * (v134 - v133) - 1;
        if (v134 == v133)
        {
          v135 = 0;
        }

        if (v135 == *(v132 + 104) + *(v132 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v132 + 64));
          v133 = *(v132 + 72);
          v134 = *(v132 + 80);
        }

        if (v134 == v133)
        {
          v137 = 0;
        }

        else
        {
          v136 = *(v132 + 104) + *(v132 + 96);
          v137 = *(v133 + ((v136 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v136 & 0x7F);
        }

        *(v137 + 24) = 0;
        operator new();
      }

      v243 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v243, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v243, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xC:
      v32 = mlx::core::cpu::get_command_encoder(a4, a5);
      v33 = (*(v32 + 10) + 1) % 10;
      *(v32 + 10) = v33;
      v34 = mlx::core::scheduler::scheduler(v32);
      if (v33)
      {
        v35 = *(v34[1] + 8 * *v32);
        std::mutex::lock(v35);
        if (*(v35 + 160) != 1)
        {
          v36 = *(v35 + 72);
          v37 = *(v35 + 80);
          v38 = 16 * (v37 - v36) - 1;
          if (v37 == v36)
          {
            v38 = 0;
          }

          if (v38 == *(v35 + 104) + *(v35 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v35 + 64));
            v36 = *(v35 + 72);
            v37 = *(v35 + 80);
          }

          if (v37 == v36)
          {
            v40 = 0;
          }

          else
          {
            v39 = *(v35 + 104) + *(v35 + 96);
            v40 = *(v36 + ((v39 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v39 & 0x7F);
          }

          *(v40 + 24) = 0;
          operator new();
        }

        v231 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v231, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v231, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v34);
      v146 = *(mlx::core::scheduler::scheduler(v145)[1] + 8 * *v32);
      std::mutex::lock(v146);
      if (*(v146 + 160) != 1)
      {
        v147 = *(v146 + 72);
        v148 = *(v146 + 80);
        v149 = 16 * (v148 - v147) - 1;
        if (v148 == v147)
        {
          v149 = 0;
        }

        if (v149 == *(v146 + 104) + *(v146 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v146 + 64));
          v147 = *(v146 + 72);
          v148 = *(v146 + 80);
        }

        if (v148 == v147)
        {
          v151 = 0;
        }

        else
        {
          v150 = *(v146 + 104) + *(v146 + 96);
          v151 = *(v147 + ((v150 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v150 & 0x7F);
        }

        *(v151 + 24) = 0;
        operator new();
      }

      v245 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v245, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v245, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xD:
      v95 = mlx::core::cpu::get_command_encoder(a4, a5);
      v96 = (*(v95 + 10) + 1) % 10;
      *(v95 + 10) = v96;
      v97 = mlx::core::scheduler::scheduler(v95);
      if (v96)
      {
        v98 = *(v97[1] + 8 * *v95);
        std::mutex::lock(v98);
        if (*(v98 + 160) != 1)
        {
          v99 = *(v98 + 72);
          v100 = *(v98 + 80);
          v101 = 16 * (v100 - v99) - 1;
          if (v100 == v99)
          {
            v101 = 0;
          }

          if (v101 == *(v98 + 104) + *(v98 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v98 + 64));
            v99 = *(v98 + 72);
            v100 = *(v98 + 80);
          }

          if (v100 == v99)
          {
            v103 = 0;
          }

          else
          {
            v102 = *(v98 + 104) + *(v98 + 96);
            v103 = *(v99 + ((v102 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v102 & 0x7F);
          }

          *(v103 + 24) = 0;
          operator new();
        }

        v239 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v239, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v239, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v97);
      v202 = *(mlx::core::scheduler::scheduler(v201)[1] + 8 * *v95);
      std::mutex::lock(v202);
      if (*(v202 + 160) != 1)
      {
        v203 = *(v202 + 72);
        v204 = *(v202 + 80);
        v205 = 16 * (v204 - v203) - 1;
        if (v204 == v203)
        {
          v205 = 0;
        }

        if (v205 == *(v202 + 104) + *(v202 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v202 + 64));
          v203 = *(v202 + 72);
          v204 = *(v202 + 80);
        }

        if (v204 == v203)
        {
          v207 = 0;
        }

        else
        {
          v206 = *(v202 + 104) + *(v202 + 96);
          v207 = *(v203 + ((v206 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v206 & 0x7F);
        }

        *(v207 + 24) = 0;
        operator new();
      }

      v253 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v253, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v253, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    default:
      return;
  }
}

void sub_25A2C8FB0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

std::__thread_struct *ThreadPool::start_threads(std::__thread_struct *this, uint64_t a2)
{
  if (a2)
  {
    p = this[1].__p_;
    v8[0] = this;
    v3 = this[2].__p_;
    if (p < v3)
    {
      _ZNSt3__16threadC2IZN10ThreadPool13start_threadsEmEUlvE_JELi0EEEOT_DpOT0_(p, v8);
    }

    v4 = (p - this->__p_) >> 3;
    if (!((v4 + 1) >> 61))
    {
      v5 = v3 - this->__p_;
      v6 = v5 >> 2;
      if (v5 >> 2 <= (v4 + 1))
      {
        v6 = v4 + 1;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v7 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v6;
      }

      v8[5] = this;
      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(this, v7);
      }

      v8[1] = 0;
      v8[2] = (8 * v4);
      v8[3] = (8 * v4);
      v8[4] = 0;
      _ZNSt3__16threadC2IZN10ThreadPool13start_threadsEmEUlvE_JELi0EEEOT_DpOT0_((8 * v4), v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_25A2C92DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,ThreadPool::start_threads(unsigned long)::{lambda(void)#1}>>(const void **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  ThreadPool::start_threads(unsigned long)::{lambda(void)#1}::operator()(v5 + 1);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ThreadPool::start_threads(unsigned long)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_25A2C936C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ThreadPool::start_threads(unsigned long)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ThreadPool::start_threads(unsigned long)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x25F851760](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x25F851420]();
    MEMORY[0x25F851760](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t ThreadPool::start_threads(unsigned long)::{lambda(void)#1}::operator()(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = (*a1 + 72);
  while (1)
  {
    v8 = 0;
    __lk.__m_ = v2;
    __lk.__owns_ = 1;
    std::mutex::lock(v2);
    v3 = *(v1 + 184);
    if (v3)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v1 + 64))
      {
        goto LABEL_7;
      }

      while (1)
      {
        std::condition_variable::wait((v1 + 136), &__lk);
        v3 = *(v1 + 184);
        if (v3)
        {
          break;
        }

        if (*(v1 + 64))
        {
          goto LABEL_3;
        }
      }
    }

    if (!*(v1 + 64))
    {
      v4 = 0;
      goto LABEL_8;
    }

LABEL_7:
    std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v7, *(*(v1 + 32) + ((*(v1 + 56) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v1 + 56) & 0x7FLL));
    std::deque<std::function<void ()(void)>>::pop_front((v1 + 24));
    v4 = 1;
LABEL_8:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v4)
    {
      return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
    }

    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  }
}

void sub_25A2C955C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::deque<std::function<void ()(void)>>::pop_front(int64x2_t *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  a1[2] = vaddq_s64(a1[2], xmmword_25A9A7F20);

  return std::deque<std::function<void ()(void)>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::function<void ()(void)>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
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
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::thread *std::vector<std::thread>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__t_;
      v8->__t_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::thread::~thread(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::thread>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::~__split_buffer(a1);
}

void std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t mlx::core::distributed::ring::anonymous namespace::log<char const*,int,char const*>(void *a1, char *__s, uint64_t a3, char *a4)
{
  v8 = strlen(__s);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
  v11 = MEMORY[0x25F851360](v10, a3);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
}

uint64_t mlx::core::distributed::ring::anonymous namespace::log<char const*>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v8);
  std::ostream::put();
  return std::ostream::flush();
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void ThreadPool::stop_and_wait(ThreadPool *this)
{
  std::mutex::lock((this + 72));
  *(this + 184) = 1;
  std::mutex::unlock((this + 72));
  std::condition_variable::notify_all((this + 136));
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      std::thread::join(v2++);
    }

    while (v2 != v3);
    v2 = *this;
    v3 = *(this + 1);
  }

  *(this + 184) = 0;
  while (v3 != v2)
  {
    std::thread::~thread(--v3);
  }

  *(this + 1) = v2;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<int,mlx::core::distributed::ring::anonymous namespace::SocketThread>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,mlx::core::distributed::ring::anonymous namespace::SocketThread>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void mlx::core::distributed::ring::anonymous namespace::SocketThread::worker(mlx::core::distributed::ring::_anonymous_namespace_::SocketThread *this)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (this + 16);
  while (1)
  {
    v19.__m_ = v5;
    v19.__owns_ = 1;
    std::mutex::lock(v5);
    if (v3)
    {
      std::promise<void>::set_value((*(this + 20) + 32));
    }

    if (v2)
    {
      std::promise<void>::set_value((*(this + 17) + 32));
    }

    if (*(this + 4))
    {
      break;
    }

    if (!*(this + 18) && !*(this + 21))
    {
      v6 = *(this + 18);
      if (!v6)
      {
        do
        {
          if (*(this + 21))
          {
            break;
          }

          std::condition_variable::wait((this + 80), &v19);
          LOBYTE(v6) = *(this + 4);
          if (v6)
          {
            goto LABEL_30;
          }
        }

        while (!*(this + 18));
        if (v6)
        {
          break;
        }
      }
    }

    if (v19.__owns_)
    {
      std::mutex::unlock(v19.__m_);
    }

    if (*(this + 21))
    {
      v7 = *(this + 20);
      v8 = recv(*this, *(v7 + 16), *(v7 + 24), 0);
      if (v8 >= 1)
      {
        v4 = 0;
        v9 = *(v7 + 24) - v8;
        *(v7 + 16) += v8;
        *(v7 + 24) = v9;
        v3 = v9 == 0;
        goto LABEL_22;
      }

      if (*__error() != 35)
      {
        ++v4;
        v10 = *this;
        v11 = __error();
      }
    }

    v3 = 0;
LABEL_22:
    if (!*(this + 18))
    {
      goto LABEL_27;
    }

    v12 = *(this + 17);
    v13 = send(*this, *(v12 + 16), *(v12 + 24), 0);
    if (v13 < 1)
    {
      if (*__error() != 35)
      {
        ++v4;
        v15 = *this;
        v16 = __error();
      }

LABEL_27:
      v2 = 0;
      goto LABEL_28;
    }

    v4 = 0;
    v14 = *(v12 + 24) - v13;
    *(v12 + 16) += v13;
    *(v12 + 24) = v14;
    v2 = v14 == 0;
LABEL_28:
    if (v4 >= 10)
    {
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "[ring]", 6);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ", 1);
      return;
    }
  }

LABEL_30:
  if (v19.__owns_)
  {
    std::mutex::unlock(v19.__m_);
  }
}

void sub_25A2C9FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::list<mlx::core::distributed::ring::anonymous namespace::SocketThread::SocketTask>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        MEMORY[0x25F851680](v2 + 4);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void std::list<mlx::core::distributed::ring::anonymous namespace::SocketThread::SocketTask>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  MEMORY[0x25F851680](v2 + 4);

  operator delete(v2);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (mlx::core::distributed::ring::anonymous namespace::SocketThread::*)(void),mlx::core::distributed::ring::anonymous namespace::SocketThread*>>(const void **a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  return 0;
}

void sub_25A2CA140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (mlx::core::distributed::ring::anonymous namespace::SocketThread::*)(void),mlx::core::distributed::ring::anonymous namespace::SocketThread*>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x25F851760](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<int,mlx::core::distributed::ring::anonymous namespace::SocketThread>,void *>>>::destroy[abi:ne200100]<std::pair<int const,mlx::core::distributed::ring::anonymous namespace::SocketThread>,void,0>(uint64_t a1)
{
  *(a1 + 12) = 1;
  std::condition_variable::notify_all((a1 + 88));
  std::thread::join((a1 + 16));
  v2 = fcntl(*(a1 + 8), 3, 0);
  fcntl(*(a1 + 8), 4, v2 & 0xFFFFFFFB);
  if (*(a1 + 176))
  {
    v3 = *(a1 + 168);
    v4 = *(*(a1 + 160) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 176) = 0;
    if (v3 != (a1 + 160))
    {
      do
      {
        v6 = v3[1];
        MEMORY[0x25F851680](v3 + 4);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (a1 + 160));
    }
  }

  if (*(a1 + 152))
  {
    v7 = *(a1 + 144);
    v8 = *(*(a1 + 136) + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(a1 + 152) = 0;
    if (v7 != (a1 + 136))
    {
      do
      {
        v10 = v7[1];
        MEMORY[0x25F851680](v7 + 4);
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != (a1 + 136));
    }
  }

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));

  std::thread::~thread((a1 + 16));
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void ThreadPool::~ThreadPool(ThreadPool *this)
{
  ThreadPool::stop_and_wait(this);
  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex((this + 72));
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](this + 3);
  v2 = this;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  std::mutex::lock((this + 72));
  *(this + 184) = 1;
  std::mutex::unlock((this + 72));
  std::condition_variable::notify_all((this + 136));
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      std::thread::join(v2++);
    }

    while (v2 != v3);
    v2 = *this;
    v3 = *(this + 1);
  }

  *(this + 184) = 0;
  while (v3 != v2)
  {
    std::thread::~thread(--v3);
  }

  *(this + 1) = v2;
  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex((this + 72));
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](this + 3);
  v4 = this;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v4);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15SumOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEAD98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15SumOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15SumOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  return memcpy(*(a1 + 8), __dst, v2);
}

void sub_25A2CAC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ |= v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2CB388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::unordered_map<int,mlx::core::distributed::ring::anonymous namespace::SocketThread>::at(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_17;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_17:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v3)
    {
      break;
    }

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
      goto LABEL_17;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  if (*(v7 + 4) != v3)
  {
    goto LABEL_16;
  }

  return v7 + 3;
}

uint64_t *mlx::core::distributed::ring::anonymous namespace::SocketThread::send_impl(mlx::core::distributed::ring::_anonymous_namespace_::SocketThread *this, const char *a2, uint64_t a3)
{
  std::promise<void>::promise(&v6);
  std::promise<void>::get_future(&v6);
  if (a3)
  {
    std::mutex::lock((this + 16));
    v6.__state_ = 0;
    operator new();
  }

  std::promise<void>::set_value(&v6);
  return MEMORY[0x25F851680](&v6);
}

void sub_25A2CB608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::future<void>::~future(v11);
  MEMORY[0x25F851680](va);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::distributed::ring::anonymous namespace::SocketThread::recv_impl(mlx::core::distributed::ring::_anonymous_namespace_::SocketThread *this, char *a2, uint64_t a3)
{
  std::promise<void>::promise(&v6);
  std::promise<void>::get_future(&v6);
  if (a3)
  {
    std::mutex::lock((this + 16));
    v6.__state_ = 0;
    operator new();
  }

  std::promise<void>::set_value(&v6);
  return MEMORY[0x25F851680](&v6);
}

void sub_25A2CB72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::future<void>::~future(v11);
  MEMORY[0x25F851680](va);
  _Unwind_Resume(a1);
}

std::future<void> *std::vector<std::future<void>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__state_;
      v8->__state_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::future<void>::~future(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::future<void>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::future<void>::~future((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::packaged_task<void ()(void)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEAE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__shared_ptr_emplace<std::packaged_task<void ()(void)>>::__on_zero_shared(uint64_t a1)
{
  MEMORY[0x25F851680](a1 + 56);

  return std::__packaged_task_function<void ()(void)>::~__packaged_task_function((a1 + 24));
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEAE58;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *std::__packaged_task_function<void ()(void)>::~__packaged_task_function(void *a1)
{
  v2 = a1[3];
  if (v2 == a1)
  {
    v3 = (*v2 + 24);
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = (*v2 + 32);
LABEL_5:
    (*v3)();
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEAEC0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEAEC0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEAEC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbS8_miiiNS6_12_GLOBAL__N_15SumOpIbEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::packaged_task<void ()(void)>::operator()(std::promise<void> *a1)
{
  v2 = a1 + 4;
  state = a1[4].__state_;
  if (!state)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  if ((state->__state_ & 1) != 0 || (v5.__ptr_ = 0, ptr = state->__exception_.__ptr_, std::exception_ptr::~exception_ptr(&v5), ptr))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  (a1[3].__state_->__vftable[1].~__assoc_sub_state_0)(a1[3].__state_);
  std::promise<void>::set_value(v2);
}

void sub_25A2CBD20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  v10.__ptr_ = &a9;
  std::promise<void>::set_exception(v9, v10);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x25A2CBCFCLL);
}

void sub_25A2CBD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x25F851250](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::future<void>::~future(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEAF50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15SumOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB048;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15SumOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15SumOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v6 = *a1;
    v5 = *(a1 + 8);
    if (*a1 != v5)
    {
      memcpy(v5, v6, v2);
    }

    memset(v11, 0, sizeof(v11));
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v8 = MEMORY[0x25F851380](v7, *(a1 + 16));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v9, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v11);
    MEMORY[0x25F851100](exception, v11);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  memcpy(*(a1 + 8), __dst, v2);
}

void sub_25A2CC5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2CCCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB0B8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEB110;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEB110;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEB110;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaS8_miiiNS6_12_GLOBAL__N_15SumOpIaEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB1A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15SumOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15SumOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15SumOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 2 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2CD7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + 2 * v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2CDF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB308;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEB360;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEB360;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEB360;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsS8_miiiNS6_12_GLOBAL__N_15SumOpIsEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB3F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15SumOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB4E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15SumOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15SumOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 4 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 4 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (4 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 4 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2CE9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x400000)
  {
    v13 = 0x200000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + 4 * v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 4 * v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2CF104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB558;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEB5B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEB5B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEB5B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiS8_miiiNS6_12_GLOBAL__N_15SumOpIiEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB640;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15SumOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB738;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15SumOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15SumOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 8 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2CFBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + 8 * v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2D0308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB7A8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEB800;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEB800;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEB800;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxS8_miiiNS6_12_GLOBAL__N_15SumOpIxEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB890;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15SumOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB988;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15SumOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15SumOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v6 = *a1;
    v5 = *(a1 + 8);
    if (*a1 != v5)
    {
      memcpy(v5, v6, v2);
    }

    memset(v11, 0, sizeof(v11));
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v8 = MEMORY[0x25F851380](v7, *(a1 + 16));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v9, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v11);
    MEMORY[0x25F851100](exception, v11);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  memcpy(*(a1 + 8), __dst, v2);
}

void sub_25A2D0DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2D1508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB9F8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEBA50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEBA50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEBA50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhS8_miiiNS6_12_GLOBAL__N_15SumOpIhEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBAE0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15SumOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBBD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15SumOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15SumOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 2 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2D1FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + 2 * v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2D270C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBC48;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEBCA0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEBCA0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEBCA0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtS8_miiiNS6_12_GLOBAL__N_15SumOpItEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBD30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15SumOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBE28;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15SumOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15SumOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 4 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 4 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (4 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 4 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2D31F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x400000)
  {
    v13 = 0x200000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + 4 * v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 4 * v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2D3910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBE98;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEBEF0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEBEF0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEBEF0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjS8_miiiNS6_12_GLOBAL__N_15SumOpIjEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBF80;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15SumOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC078;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15SumOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15SumOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 8 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2D43F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v92 = v8;
  v93 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v112 = 0;
  v113 = 0;
  __p = 0;
  v109 = 0;
  v110 = 0;
  v16 = 1;
  v106 = v13;
  v104 = v14 / v13;
  v99 = a7;
  v97 = (a4 + v10 - 1) / v10;
  v98 = a4;
  v96 = v14;
  do
  {
    v95 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v106 <= v14)
        {
          v101 = v17;
          v20 = 0;
          v102 = v15;
          v103 = v9;
          v105 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v106;
            v23 = v20 * v106 + v105;
            v24 = ++v20 * v106;
            v25 = v20 * v106 + v105;
            v26 = v112;
            if (v112 >= v113)
            {
              v30 = __src;
              v31 = v112 - __src;
              v32 = (v112 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v113 - __src;
              if ((v113 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v112 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v106 + v105;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v112 = v29;
              v113 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v106 + v105;
              }

              else
              {
                v28 = v18;
              }

              *v112 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v112 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v109;
            if (v109 >= v110)
            {
              v47 = __p;
              v48 = v109 - __p;
              v49 = (v109 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v110 - __p;
              if ((v110 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v109 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v109 = v46;
              v110 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v109 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v109 = v46;
          }

          while (v20 < v104);
          LODWORD(v10) = *(a1 + 12);
          a7 = v99;
          v11 = v97;
          a4 = v98;
          v15 = v102;
          v9 = v103;
          v14 = v96;
          v17 = v101;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v95 & 1) != 0);
  v117[0] = a2;
  v117[1] = a2 + 8 * v106;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  v58 = __src;
  if (v112 == __src)
  {
    v69 = v104 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v104 > 1;
    if (v104 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v114.__state_) = v93;
      state = v107.__state_;
      v107.__state_ = 0;
      v69 = v63;
      v114.__state_ = v116[v63];
      v116[v63] = state;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v112 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v114.__state_) = v92;
      }

      else
      {
        v70 = v117[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v114.__state_) = v92;
      }

      v79 = v107.__state_;
      v107.__state_ = 0;
      v114.__state_ = v115[v63];
      v115[v63] = v79;
      std::future<void>::~future(&v114);
      std::future<void>::~future(&v107);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v112 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v116[v60]);
        std::__assoc_sub_state::wait(v115[v60]);
        v58 = __src;
        v80 = (v112 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v117[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v116[v69]);
  std::__assoc_sub_state::wait(v115[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v115[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v116[j]);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }
}

void sub_25A2D4B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC0E8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEC140;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEC140;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEC140;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPyS8_miiiNS6_12_GLOBAL__N_15SumOpIyEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC1D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC2C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 2 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2D55FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}