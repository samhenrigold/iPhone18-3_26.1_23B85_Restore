re *re::internal::destroyPersistent<re::RenderGraphCompiled>(re *result, uint64_t a2, re::RenderGraphCompiled *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::RenderGraphCompiled::~RenderGraphCompiled(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::RenderFrame::fillSpecifyParameterScopeOutputs(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {
    v6 = a2;
    v7 = a2 + 104 * result;
    do
    {
      if (a4)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(v6 + 40);
        if (v10)
        {
          v11 = v10 >> 1;
        }

        else
        {
          v11 = v10 >> 1;
        }

        while (1)
        {
          v12 = a3 + 136 * v8;
          if (*(v12 + 8) == v11)
          {
            v13 = (v10 & 1) != 0 ? *(v6 + 48) : (v6 + 41);
            result = memcmp(*v12, v13, v11);
            if (!result)
            {
              break;
            }
          }

          v8 = ++v9;
          if (a4 <= v9)
          {
            goto LABEL_15;
          }
        }

        *(v6 + 88) = v9;
      }

LABEL_15:
      v6 += 104;
    }

    while (v6 != v7);
  }

  return result;
}

_anonymous_namespace_ *re::RenderFrame::execute(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v7 = v6;
  v303 = *MEMORY[0x1E69E9840];
  result = re::RenderGraphManager::getCachedGraph(*v6, *(v6 + 328), v4[5]);
  if (result)
  {
    v10 = &v256;
    v264 = 0u;
    v265 = 0u;
    v262 = 0u;
    v263 = 0u;
    v260 = 0u;
    v261 = 0u;
    *__dst = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v266 = v7 + 3376;
    v267 = result;
    v11 = *(result + 8);
    if (v11)
    {
      v12 = *(result + 10);
      *(&v256 + 1) = v11;
      if (v11 >= 0x24924924924924ALL)
      {
        goto LABEL_398;
      }

      *&v257 = v14;
      if (!v14)
      {
LABEL_399:
        re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
        goto LABEL_400;
      }

      v16 = v14;
      v17 = v11 - 1;
      if (v11 != 1)
      {
        __asm { FMOV            V1.2S, #1.0 }

        v16 = v14;
        do
        {
          *v16 = 3;
          *(v16 + 2) = 2;
          *(v16 + 12) = -1;
          *(v16 + 20) = -1;
          *(v16 + 28) = -1;
          *(v16 + 9) = 0;
          v16[40] = 0;
          *(v16 + 44) = _D1;
          *(v16 + 52) = xmmword_1E30A3B60;
          *(v16 + 68) = 0x2000000000;
          *(v16 + 76) = -1;
          *(v16 + 84) = -1;
          *(v16 + 23) = -1;
          *(v16 + 12) = 0;
          v16[104] = 0;
          v16 += 112;
          --v17;
        }

        while (v17);
      }

      *v16 = 3;
      *(v16 + 2) = 2;
      *(v16 + 12) = -1;
      *(v16 + 20) = -1;
      *(v16 + 28) = -1;
      *(v16 + 9) = 0;
      v16[40] = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *(v16 + 44) = _D0;
      *(v16 + 52) = xmmword_1E30A3B60;
      *(v16 + 68) = 0x2000000000;
      *(v16 + 76) = -1;
      *(v16 + 84) = -1;
      *(v16 + 23) = -1;
      *(v16 + 12) = 0;
      v16[104] = 0;
      result = memmove(v14, v12, 112 * v11 - 7);
    }

    v11 = *(v267 + 15);
    v10 = *(v267 + 13);
    if (*(&v257 + 1))
    {
LABEL_16:
      if (__dst[0] != v10)
      {
        goto LABEL_397;
      }

      if (v10)
      {
        v23 = memmove(__dst[1], v11, 48 * v10);
      }

      goto LABEL_19;
    }

    if (!v10)
    {
LABEL_19:
      v252 = v5;
      v27 = __dst[0];
      if (*(v7 + 4456))
      {
        v28 = 0;
        v10 = 0x6A3DF053A9B45F3DLL;
        v29 = v7 + 432;
        v1 = "Requested framebuffer %d is invalid.";
        do
        {
          if ((*(v29 + 8 * re::Bitset<64>::toWordIndex(v7 + 432, v28)) >> v28))
          {
            v31 = *(v7 + 4456);
            if (v31 <= v28)
            {
              *v302 = 0;
              v278 = 0u;
              memset(v279, 0, 48);
              v277 = 0u;
              v213 = MEMORY[0x1E69E9C10];
              v214 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              if (v214)
              {
                v215 = 3;
              }

              else
              {
                v215 = 2;
              }

              *(buf + 14) = 789;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v28;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v31;
              _os_log_send_and_compose_impl(v215, v302, &v277, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_361:
              *v302 = 0;
              v278 = 0u;
              memset(v279, 0, 48);
              v277 = 0u;
              v216 = MEMORY[0x1E69E9C10];
              v217 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              if (v217)
              {
                v218 = 3;
              }

              else
              {
                v218 = 2;
              }

              *(buf + 14) = 789;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v28;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v31;
              _os_log_send_and_compose_impl(v218, v302, &v277, 80, &dword_1E1C61000, v216, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_365:
              v273 = 0;
              v300 = 0u;
              v301 = 0u;
              memset(buf, 0, sizeof(buf));
              v219 = MEMORY[0x1E69E9C10];
              v220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v302 = 136315906;
              *&v302[4] = "operator[]";
              *&v302[12] = 1024;
              if (v220)
              {
                v221 = 3;
              }

              else
              {
                v221 = 2;
              }

              *&v302[14] = 789;
              *&v302[18] = 2048;
              *&v302[20] = v29;
              *&v302[28] = 2048;
              *&v302[30] = v28;
              _os_log_send_and_compose_impl(v221, &v273, buf, 80, &dword_1E1C61000, v219, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v302, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_369:
              *v302 = 0;
              v278 = 0u;
              memset(v279, 0, 48);
              v277 = 0u;
              v222 = MEMORY[0x1E69E9C10];
              v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              if (v223)
              {
                v224 = 3;
              }

              else
              {
                v224 = 2;
              }

              *(buf + 14) = 468;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v10;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v2;
              _os_log_send_and_compose_impl(v224, v302, &v277, 80, &dword_1E1C61000, v222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_373:
              v273 = 0;
              v278 = 0u;
              memset(v279, 0, 48);
              v277 = 0u;
              v225 = MEMORY[0x1E69E9C10];
              v226 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v302 = 136315906;
              *&v302[4] = "operator[]";
              *&v302[12] = 1024;
              if (v226)
              {
                v227 = 3;
              }

              else
              {
                v227 = 2;
              }

              *&v302[14] = 468;
              *&v302[18] = 2048;
              *&v302[20] = v10;
              *&v302[28] = 2048;
              *&v302[30] = v31;
              _os_log_send_and_compose_impl(v227, &v273, &v277, 80, &dword_1E1C61000, v225, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v302, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_377:
              v273 = 0;
              v300 = 0u;
              v301 = 0u;
              memset(buf, 0, sizeof(buf));
              v228 = MEMORY[0x1E69E9C10];
              v229 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v302 = 136315906;
              *&v302[4] = "operator[]";
              *&v302[12] = 1024;
              if (v229)
              {
                v230 = 3;
              }

              else
              {
                v230 = 2;
              }

              *&v302[14] = 468;
              *&v302[18] = 2048;
              *&v302[20] = v1;
              *&v302[28] = 2048;
              *&v302[30] = v3;
              _os_log_send_and_compose_impl(v230, &v273, buf, 80, &dword_1E1C61000, v228, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v302, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_381:
              *v302 = 0;
              v278 = 0u;
              memset(v279, 0, 48);
              v277 = 0u;
              v231 = MEMORY[0x1E69E9C10];
              v232 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              if (v232)
              {
                v233 = 3;
              }

              else
              {
                v233 = 2;
              }

              *(buf + 14) = 468;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v28;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v2;
              _os_log_send_and_compose_impl(v233, v302, &v277, 80, &dword_1E1C61000, v231, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_385:
              v271 = 0;
              v278 = 0u;
              memset(v279, 0, 48);
              v277 = 0u;
              v234 = MEMORY[0x1E69E9C10];
              v235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              if (v235)
              {
                v236 = 3;
              }

              else
              {
                v236 = 2;
              }

              *(buf + 14) = 468;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v28;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v2;
              _os_log_send_and_compose_impl(v236, &v271, &v277, 80, &dword_1E1C61000, v234, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_389:
              v271 = 0;
              v278 = 0u;
              memset(v279, 0, 48);
              v277 = 0u;
              v237 = MEMORY[0x1E69E9C10];
              v238 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(buf[0]) = 136315906;
              *(buf + 4) = "operator[]";
              WORD6(buf[0]) = 1024;
              if (v238)
              {
                v239 = 3;
              }

              else
              {
                v239 = 2;
              }

              *(buf + 14) = 468;
              WORD1(buf[1]) = 2048;
              *(&buf[1] + 4) = v28;
              WORD6(buf[1]) = 2048;
              *(&buf[1] + 14) = v2;
              _os_log_send_and_compose_impl(v239, &v271, &v277, 80, &dword_1E1C61000, v237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_393:
              v276 = 0;
              v278 = 0u;
              memset(v279, 0, 48);
              v277 = 0u;
              v240 = MEMORY[0x1E69E9C10];
              v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v302 = 136315906;
              *&v302[4] = "operator[]";
              *&v302[12] = 1024;
              if (v241)
              {
                v242 = 3;
              }

              else
              {
                v242 = 2;
              }

              *&v302[14] = 468;
              *&v302[18] = 2048;
              *&v302[20] = v28;
              *&v302[28] = 2048;
              *&v302[30] = v2;
              _os_log_send_and_compose_impl(v242, &v276, &v277, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v302, 38, v247, v248);
              _os_crash_msg();
              __break(1u);
LABEL_397:
              re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
              _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
              __break(1u);
LABEL_398:
              re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 112, v11);
              _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v243, v245);
              __break(1u);
              goto LABEL_399;
            }

            if (!*(*(v7 + 4472) + 8 * v28))
            {
              re::DynamicString::format(&v277, "Requested framebuffer %d is invalid.", v30, v28);
              re::RenderFrame::addError(v7, &v277);
              if (v277 && (BYTE8(v277) & 1) != 0)
              {
                (*(*v277 + 40))();
              }

              v31 = *(v7 + 4456);
            }

            if (v31 <= v28)
            {
              goto LABEL_361;
            }

            v32 = *(*(v7 + 4472) + 8 * v28);
            v273 = v32;
            *&buf[0] = v277 >> 1;
            *v302 = 0x6A3DF053A9B45F3DLL;
            re::RenderFrame::registerExternalTexture(v7, &v273, buf, v302, 0);
            if (v277)
            {
              if (v277)
              {
              }
            }

            if (v32)
            {

              v273 = 0;
            }
          }

          else
          {
            v271 = 0;
            *&buf[0] = v277 >> 1;
            *v302 = 0x6A3DF053A9B45F3DLL;
            re::RenderFrame::registerExternalTexture(v7, &v271, buf, v302, 0);
            if (v277)
            {
              if (v277)
              {
              }
            }
          }

          ++v28;
        }

        while (*(v7 + 4456) > v28);
      }

      if (*(v7 + 4232))
      {
        v35 = 0;
        v36 = 0;
        while (1)
        {
          v1 = *(v7 + 4248);
          if ((v1[v35 + 12] & 1) == 0)
          {
            v37 = v1[v35 + 1];
            if (v37)
            {
              if (LODWORD(v1[v35 + 11]) != -1)
              {
                goto LABEL_48;
              }
            }

            else
            {
              if (v1[v35 + 2])
              {
                _ZF = LODWORD(v1[v35 + 11]) == -1;
              }

              else
              {
                _ZF = 1;
              }

              if (!_ZF)
              {
LABEL_48:
                *&buf[0] = v37;
                *&v277 = ((v1[v35 + 10] << 6) + (v1[v35 + 10] >> 2) + 0x8756A0D28FEDB54) ^ v1[v35 + 10];
                re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v7 + 3536, &v277, buf);
                if (*&buf[0])
                {

                  *&buf[0] = 0;
                }
              }
            }
          }

          ++v36;
          v39 = *(v7 + 4232);
          v35 += 13;
          if (v39 <= v36)
          {
            v40 = v39 == 0;
            goto LABEL_57;
          }
        }
      }

      v40 = 1;
LABEL_57:
      v42 = *(v7 + 4272);
      *&v262 = *(v7 + 4288);
      *(&v262 + 1) = v42;
      v43 = *(v7 + 4392);
      *&v263 = *(v7 + 4408);
      *(&v263 + 1) = v43;
      v44 = *(v7 + 4312);
      *&v264 = *(v7 + 4328);
      *(&v264 + 1) = v44;
      v45 = *(v7 + 4352);
      *&v265 = *(v7 + 4368);
      *(&v265 + 1) = v45;
      v277 = xmmword_1E30A3B70;
      v278 = xmmword_1E30A3B80;
      *v279 = 0;
      v279[8] = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *&v279[12] = _D0;
      *&v279[20] = xmmword_1E30A3B60;
      *&v279[36] = xmmword_1E30A3B90;
      *&v279[52] = -1;
      *&v279[56] = 0;
      v280 = 0;
      v281 = 0;
      if (!v40)
      {
        v10 = 0;
        v31 = 104;
        v2 = 136;
        v3 = 32;
        do
        {
          v110 = *(v7 + 4248) + 104 * v10;
          v29 = *(v110 + 88);
          if (v29 != -1)
          {
            v28 = *(v267 + 95);
            if (v28 <= v29)
            {
              goto LABEL_365;
            }

            v111 = *(v267 + 97) + 136 * v29;
            v112 = *(v110 + 8);
            if (v112)
            {
              v271 = *v110;
              v1 = v112;
              v276 = v1;
              re::RenderFrame::fillScopeLaneProperties(v7, &v271, &v276, v111, &v256);
              if (v1)
              {

                v276 = 0;
              }

              v271 = 0;
            }

            else if (*(v110 + 16))
            {
              if (*(v110 + 40))
              {
                v113 = *(v110 + 48);
              }

              else
              {
                v113 = v110 + 41;
              }

              re::DynamicString::format(buf, "Texture descriptor for graph scope %s was never specified as a texture.", v110, v113);
              re::RenderFrame::addError(v7, buf);
              if (*&buf[0] && (BYTE8(buf[0]) & 1) != 0)
              {
                (*(**&buf[0] + 40))();
              }
            }

            else
            {
              v114 = *(v110 + 24);
              if (*(v7 + 4456) > v114 && (v115 = *(*(v7 + 4472) + 8 * v114)) != 0)
              {
                v275 = *v110;
                v1 = v115;
                v269 = v1;
                re::RenderFrame::fillScopeLaneProperties(v7, &v275, &v269, v111, &v256);
                if (v1)
                {

                  v269 = 0;
                }

                v275 = 0;
              }

              else
              {
                v116 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v111 + 40, v110);
                if (v116)
                {
                  v117 = v116;
                  if (*(v116 + 16))
                  {
                    v118 = 0;
                    v1 = 0;
                    do
                    {
                      v119 = (v117[4] + v118);
                      *&buf[0] = 0;
                      *(&buf[0] + 1) = -1;
                      buf[0] = *v119;
                      v120 = re::RenderGraphExecutable::targetDescription(&v256, buf);
                      if (*v120 == 3 || *v120 == 0)
                      {
                        *v120 = 0;
                        re::RenderGraphTargetDescription::copySetProperties(v120, &v277);
                      }

                      v1 = (v1 + 1);
                      v118 += 16;
                    }

                    while (v117[2] > v1);
                  }

                  if (v117[7])
                  {
                    v1 = 0;
                    v122 = 0;
                    do
                    {
                      v123 = (v1 + v117[9]);
                      *&buf[0] = 0;
                      *(&buf[0] + 1) = -1;
                      buf[0] = *v123;
                      v124 = re::RenderGraphExecutable::bufferDescription(&v256, buf);
                      if (*v124 == 3 || *v124 == 0)
                      {
                        *v124 = 0;
                        if (*(v124 + 8) == -1)
                        {
                          *(v124 + 8) = 32;
                        }

                        if (*(v124 + 32) == -1)
                        {
                          *(v124 + 32) = 0;
                        }
                      }

                      ++v122;
                      v1 += 2;
                    }

                    while (v117[7] > v122);
                  }
                }
              }
            }
          }

          ++v10;
        }

        while (*(v7 + 4232) > v10);
      }

      v47 = *(v267 + 37);
      v48 = *(v47 + 16);
      if (!v48)
      {
        goto LABEL_88;
      }

      v49 = (*(v47 + 32) + 24);
      v2 = 48 * v48;
      v10 = 112;
      while (1)
      {
        v50 = *(v49 - 6);
        if (v50 == 1)
        {
          *&buf[0] = *(v49 - 2) >> 1;
          *(&buf[0] + 1) = *v49;
          v55 = re::RenderGraphExecutable::bufferDescription(&v256, buf);
          v56 = v55;
          if (*v55 != 2)
          {
            if (*(v55 + 8) == -1)
            {
              *(v55 + 8) = 32;
            }

            if (*(v55 + 32) == -1)
            {
              *(v55 + 32) = 0;
            }

            goto LABEL_86;
          }

          re::StringID::StringID(v302, v49 - 1);
          re::RenderFrame::getExternalBuffer(v7, v56, buf);
          re::BufferSlice::buffer(buf, v57);
          v58 = *&buf[0];
          v53 = v58;
          v273 = v58;
          if (DWORD2(buf[1]) != -1)
          {
            v58 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[DWORD2(buf[1])])(&v270, buf);
          }

          DWORD2(buf[1]) = -1;
          if (v302[0])
          {
            if (v302[0])
            {
            }
          }

          if (v53)
          {
            re::RenderGraphBufferDescription::makeValid(v56, &v273, *(v7 + 440));
LABEL_80:
          }
        }

        else if (!v50)
        {
          *&buf[0] = *(v49 - 2) >> 1;
          *(&buf[0] + 1) = *v49;
          v51 = re::RenderGraphExecutable::targetDescription(&v256, buf);
          v28 = v51;
          v1 = *(v51 + 80);
          if (v1 != -1)
          {
            v3 = *(&v256 + 1);
            if (*(&v256 + 1) <= v1)
            {
              goto LABEL_377;
            }

            re::RenderGraphTargetDescription::copySetProperties(v51, v257 + 112 * v1);
          }

          if (*v28 != 2)
          {
            re::RenderGraphTargetDescription::copySetProperties(v28, &v277);
            goto LABEL_86;
          }

          re::StringID::StringID(buf, v49 - 1);
          ExternalTexture = re::RenderFrame::getExternalTexture(v7, v28, v302);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v53 = *v302;
          if (!*v302)
          {
            goto LABEL_86;
          }

          v54 = *v302;
          v268 = v54;
          re::RenderGraphTargetDescription::makeValid(v28, &v268, *(v7 + 440));
          if (v54)
          {

            v268 = 0;
          }

          goto LABEL_80;
        }

LABEL_86:
        v49 += 6;
        v2 -= 48;
        if (!v2)
        {
          v47 = *(v267 + 37);
LABEL_88:
          v59 = *(v47 + 16);
          if (!v59)
          {
            goto LABEL_171;
          }

          v60 = *(v47 + 32);
          v1 = (v60 + 48 * v59);
          v3 = 0xFFFFFFFFLL;
          v28 = 40;
          while (1)
          {
            if (*v60 == 1)
            {
              *&buf[0] = 0;
              *&buf[2] = 0;
              DWORD2(buf[1]) = 0;
              v2 = v60 + 8;
              *&v277 = *(v60 + 8) >> 1;
              *(&v277 + 1) = *(v60 + 24);
              v71 = re::RenderGraphExecutable::bufferDescription(&v256, &v277);
              if (*v71 == 2)
              {
                v72 = v71;
                re::StringID::StringID(v302, (v60 + 8));
                re::RenderFrame::getExternalBuffer(v7, v72, &v277);
                v73 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(buf, &v277);
                *&buf[2] = *v279;
                if (DWORD2(v278) != -1)
                {
                  v73 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[DWORD2(v278)])(&v273, &v277);
                }

                DWORD2(v278) = -1;
                if (v302[0])
                {
                  if (v302[0])
                  {
                  }
                }

                v75 = re::BufferSlice::buffer(buf, v74);
                if (!*&buf[0])
                {
                  re::BufferSlice::buffer(v75, v76);
                  re::RenderGraphBufferDescription::makeValid(v72, buf, *(v7 + 440));
                }
              }

              v10 = *(v60 + 28);
              v31 = v261;
              if (v261 <= v10)
              {
                goto LABEL_373;
              }

              v77 = *(&v261 + 1) + 40 * v10;
              std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v77, buf);
              *(v77 + 32) = *&buf[2];
              if (DWORD2(buf[1]) != -1)
              {
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[DWORD2(buf[1])])(&v277, buf);
              }

              goto LABEL_133;
            }

            if (!*v60)
            {
              break;
            }

LABEL_133:
            v60 += 48;
            if (v60 == v1)
            {
              v81 = *(v267 + 37);
              v82 = *(v81 + 16);
              if (v82)
              {
                v10 = *(v81 + 32) + 24;
                v83 = 48 * v82;
                do
                {
                  v84 = *(v10 - 24);
                  if (v84 == 1)
                  {
                    *&v277 = *(v10 - 16) >> 1;
                    *(&v277 + 1) = *v10;
                    v87 = re::RenderGraphExecutable::bufferDescription(&v256, &v277);
                    if (*v87 == 4 && v87[7] != -1)
                    {
                      v273 = (*(v10 - 16) >> 1);
                      v274 = *v10;
                      re::RenderGraphResourceDescriptions::bufferDescriptionSource(v267, &v273, &v271);
                      v28 = v272;
                      v2 = v261;
                      if (v261 <= v272)
                      {
                        goto LABEL_381;
                      }

                      v89 = *(&v261 + 1) + 40 * v272;
                      LOBYTE(buf[0]) = 0;
                      DWORD2(buf[1]) = -1;
                      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(buf, v89);
                      *&buf[2] = *(v89 + 32);
                      v28 = HIDWORD(v274);
                      v2 = v261;
                      if (v261 <= HIDWORD(v274))
                      {
                        goto LABEL_393;
                      }

                      v90 = *(&v261 + 1) + 40 * HIDWORD(v274);
                      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v90, buf);
                      *(v90 + 32) = *&buf[2];
                      if (DWORD2(buf[1]) != -1)
                      {
                        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[DWORD2(buf[1])])(&v277, buf);
                      }
                    }
                  }

                  else if (!v84)
                  {
                    *&v277 = *(v10 - 16) >> 1;
                    *(&v277 + 1) = *v10;
                    v85 = re::RenderGraphExecutable::targetDescription(&v256, &v277);
                    if (*v85 == 4 && v85[19] != -1)
                    {
                      *v302 = *(v10 - 16) >> 1;
                      *&v302[8] = *v10;
                      re::RenderGraphResourceDescriptions::targetDescriptionSource(v267, v302, &v273);
                      v28 = HIDWORD(v274);
                      v2 = *(&v259 + 1);
                      if (*(&v259 + 1) <= HIDWORD(v274))
                      {
                        goto LABEL_385;
                      }

                      v276 = *(v260 + 8 * HIDWORD(v274));
                      v28 = *&v302[12];
                      v2 = *(&v259 + 1);
                      if (*(&v259 + 1) <= *&v302[12])
                      {
                        goto LABEL_389;
                      }

                      NS::SharedPtr<MTL::Buffer>::operator=((v260 + 8 * *&v302[12]), &v276);
                      if (v276)
                      {
                      }
                    }
                  }

                  v10 += 48;
                  v83 -= 48;
                }

                while (v83);
                v91 = *(v267 + 37);
                v92 = *(v91 + 16);
                if (v92)
                {
                  v93 = (*(v91 + 32) + 24);
                  for (i = 48 * v92; i; i -= 48)
                  {
                    v95 = *(v93 - 6);
                    if (v95 == 1)
                    {
                      *&v277 = *(v93 - 2) >> 1;
                      *(&v277 + 1) = *v93;
                      if (*re::RenderGraphExecutable::bufferDescription(&v256, &v277) == 3)
                      {
                        re::StringID::StringID(buf, v93 - 1);
                        re::DynamicString::format(&v277, "Buffer (%s) left unspecified by the end of the frame.", v97, *(&buf[0] + 1));
                        goto LABEL_163;
                      }
                    }

                    else if (!v95)
                    {
                      *&v277 = *(v93 - 2) >> 1;
                      *(&v277 + 1) = *v93;
                      if (*re::RenderGraphExecutable::targetDescription(&v256, &v277) == 3)
                      {
                        re::StringID::StringID(buf, v93 - 1);
                        re::DynamicString::format(&v277, "Target (%s) left unspecified by the end of the frame.", v96, *(&buf[0] + 1));
LABEL_163:
                        re::RenderFrame::addError(v7, &v277);
                        v98 = v277;
                        if (v277)
                        {
                          if (BYTE8(v277))
                          {
                            v98 = (*(*v277 + 40))();
                          }

                          v277 = 0u;
                          v278 = 0u;
                        }

                        if (buf[0])
                        {
                          if (buf[0])
                          {
                          }
                        }
                      }
                    }

                    v93 += 6;
                  }
                }
              }

LABEL_171:
              re::RenderGraphExecutable::validateAttachmentsPerFrame(&v256, *(v7 + 392));
              if (!*(v266 + 16))
              {
                re::RenderGraphContext::RenderGraphContext(&v277, v252, *(v7 + 8), *(v7 + 24), *(v7 + 16), v7 + 32, *(*v7 + 128), &v256, *(*v7 + 280), *(*v7 + 288), *(v7 + 449), v7 + 4480);
                v99 = *(v7 + 4152);
                if (v99)
                {
                  v100 = *(v7 + 4168);
                  v101 = 8 * v99;
                  do
                  {
                    v102 = *v100;
                    v255 = v102;
                    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(&v290, &v255);
                    if (v255)
                    {

                      v255 = 0;
                    }

                    if (v102)
                    {
                    }

                    ++v100;
                    v101 -= 8;
                  }

                  while (v101);
                }

                v103 = *(*v7 + 128);
                v104 = *(&v259 + 1);
                v105 = v261;
                v106 = *(v267 + 37);
                v107 = *(v106 + 16);
                if (v107)
                {
                  v108 = (*(v106 + 32) + 36);
                  v109 = 31;
                  do
                  {
                    v109 = *v108 + 19 * (*(v108 - 1) + 19 * v109);
                    v108 += 12;
                    --v107;
                  }

                  while (v107);
                }

                else
                {
                  v109 = 31;
                }

                v126 = re::RenderGraphExecutable::calculateResourcePropertiesHash(&v256);
                re::RenderGraphResourceAllocationManager::onFrameStart(v103, v104, v105, v109, v126);
                re::RenderGraphExecutable::execute(&v256, &v277);
                v128 = (v7 + 640);
                if ((v7 + 640) != &v291)
                {
                  v129 = (v7 + 648);
                  v130 = *v128;
                  v131 = v291;
                  if (!*v128 || v130 == v291)
                  {
                    *(v7 + 640) = v291;
                    v291 = v130;
                    v134 = v292;
                    v135 = *(v7 + 664);
                    v292 = *v129;
                    v136 = v293;
                    *v129 = v134;
                    *(v7 + 664) = v136;
                    v293 = v135;
                    goto LABEL_243;
                  }

                  if (*(v7 + 668))
                  {
                    v132 = *(v7 + 664);
                    if (v132)
                    {
                      memset_pattern16(*(v7 + 648), &unk_1E304C660, 4 * v132);
                    }

                    if (*(v7 + 672))
                    {
                      v133 = 0;
                      do
                      {
                        re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(*(v7 + 656), v133++);
                      }

                      while (v133 < *(v7 + 672));
                    }

                    *(v7 + 676) = 0x7FFFFFFF;
                    *(v7 + 668) = 0;
                    *(v7 + 672) = 0;
                    ++*(v7 + 680);
                    v131 = v291;
                  }

                  if (v131)
                  {
                    if (*(v7 + 664) < DWORD1(v293))
                    {
                      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity((v7 + 640), DWORD1(v293));
                    }

                    re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(v7 + 640, &v291);
LABEL_243:
                    ++*(v7 + 680);
                  }
                }

                v137 = (v7 + 688);
                if ((v7 + 688) != &v294)
                {
                  if (*v137 && v294 && *v137 != v294)
                  {
                    re::internal::assertLog(4, v127, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
                    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
                    __break(1u);
                  }

                  if (v296)
                  {
                    v145 = v295;
                    if (v295)
                    {
                      *(v7 + 688) = v294;
                      if (v145 >= *(v7 + 696))
                      {
                        re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(v137, v145);
                        if (v296)
                        {
                          v148 = &v297;
                        }

                        else
                        {
                          v148 = v298;
                        }

                        v149 = *(v7 + 696);
                        v150 = *(v7 + 704);
                        if (v150)
                        {
                          v151 = v7 + 712;
                        }

                        else
                        {
                          v151 = *(v7 + 720);
                        }

                        if (v149)
                        {
                          v153 = &v148[64 * v149];
                          do
                          {
                            *v151 = *v148;
                            re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v151 + 8), v148 + 8);
                            v148 += 64;
                            v151 += 512;
                          }

                          while (v148 != v153);
                          v150 = *(v7 + 704);
                        }

                        if (v150)
                        {
                          v154 = v7 + 712;
                        }

                        else
                        {
                          v154 = *(v7 + 720);
                        }

                        v159 = *(v7 + 696);
                        v160 = v298;
                        if (v296)
                        {
                          v160 = &v297;
                        }

                        if (v159 != v145)
                        {
                          v161 = &v160[64 * v145];
                          v162 = &v160[64 * v159];
                          v163 = v154 + (v159 << 9);
                          do
                          {
                            *v163 = *v162;
                            *(v163 + 504) = 1;
                            re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v163 + 8), v162 + 8);
                            v162 += 64;
                            v163 += 512;
                          }

                          while (v162 != v161);
                        }
                      }

                      else
                      {
                        v146 = &v297;
                        if (*(v7 + 704))
                        {
                          v147 = v7 + 712;
                        }

                        else
                        {
                          v147 = *(v7 + 720);
                        }

                        do
                        {
                          *v147 = *v146;
                          re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v147 + 8), v146 + 8);
                          v146 += 64;
                          v147 += 512;
                        }

                        while (v146 != &v297 + 64 * v145);
                        if (*(v7 + 704))
                        {
                          v152 = v7 + 712;
                        }

                        else
                        {
                          v152 = *(v7 + 720);
                        }

                        v155 = *(v7 + 696);
                        if (v145 != v155)
                        {
                          v156 = v152 + (v145 << 9);
                          v157 = (v155 << 9) - (v145 << 9);
                          v158 = v156 + 8;
                          do
                          {
                            if ((*(v156 + 504) & 1) == 0)
                            {
                              (**(v156 + 8))(v156 + 8);
                              *(v156 + 504) = 1;
                            }

                            v156 += 512;
                            v158 += 512;
                            v157 -= 512;
                          }

                          while (v157);
                        }
                      }

                      *(v7 + 696) = v145;
                      re::DynamicOverflowArray<re::PatchTransform,5ul>::clear(&v294);
                    }

                    else
                    {
                      re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(v137);
                      *(v7 + 688) = v294;
                    }

                    v296 += 2;
                    v141 = (v7 + 704);
                  }

                  else
                  {
                    re::DynamicOverflowArray<re::PatchTransform,5ul>::clear(v137);
                    v138 = *(v7 + 688);
                    *(v7 + 688) = v294;
                    v294 = v138;
                    v139 = *(v7 + 696);
                    *(v7 + 696) = v295;
                    v295 = v139;
                    v140 = *(v7 + 720);
                    *(v7 + 720) = v298;
                    v298 = v140;
                    v141 = (v7 + 704);
                    v142 = *(v7 + 704);
                    v143 = v296;
                    *(v7 + 704) = v142 & 0xFFFFFFFE;
                    v144 = *(v7 + 712);
                    *(v7 + 712) = v297;
                    v297 = v144;
                    v296 = (v143 & 0xFFFFFFFE | v142 & 1) + 2;
                  }

                  *v141 += 2;
                }

                v164 = *(v7 + 456);
                v165 = (v164 + 64);
                if ((v164 + 64) != &v282)
                {
                  v166 = *v165;
                  v167 = v282;
                  if (*v165)
                  {
                    v168 = v166 == v282;
                  }

                  else
                  {
                    v168 = 1;
                  }

                  if (v168)
                  {
                    *(v164 + 64) = v282;
                    v282 = v166;
                    v169 = *(v164 + 72);
                    *(v164 + 72) = v283;
                    v283 = v169;
                    v170 = *(v164 + 80);
                    *(v164 + 80) = v284;
                    v284 = v170;
                    LODWORD(v170) = *(v164 + 88);
                    *(v164 + 88) = v285;
                    v285 = v170;
                    LODWORD(v170) = *(v164 + 92);
                    *(v164 + 92) = v286;
                    v286 = v170;
                    LODWORD(v170) = *(v164 + 96);
                    *(v164 + 96) = v287;
                    v287 = v170;
                    LODWORD(v170) = *(v164 + 100);
                    *(v164 + 100) = v288;
                    v288 = v170;
                    goto LABEL_305;
                  }

                  if (*(v164 + 92))
                  {
                    v171 = *(v164 + 88);
                    if (v171)
                    {
                      memset_pattern16(*(v164 + 72), &unk_1E304C660, 4 * v171);
                    }

                    if (*(v164 + 96))
                    {
                      v172 = 0;
                      do
                      {
                        re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::free(v164 + 64, v172++);
                      }

                      while (v172 < *(v164 + 96));
                    }

                    *(v164 + 92) = 0;
                    *(v164 + 96) = 0;
                    v173 = *(v164 + 104) + 1;
                    *(v164 + 100) = 0x7FFFFFFF;
                    *(v164 + 104) = v173;
                    v167 = v282;
                  }

                  if (v167)
                  {
                    if (*(v164 + 88) < v286)
                    {
                      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(v164 + 64, v286);
                    }

                    re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move((v164 + 64), &v282);
LABEL_305:
                    ++*(v164 + 104);
                  }
                }

                v174 = *(v7 + 456);
                v175 = *&v279[48];
                *(v174 + 32) = *&v279[32];
                *(v174 + 48) = v175;
                v249 = *(v7 + 544);
                if (v249)
                {
                  v176 = 0;
                  v177 = *(v7 + 528);
                  while (1)
                  {
                    v178 = *v177;
                    v177 += 12;
                    if (v178 < 0)
                    {
                      break;
                    }

                    if (v249 == ++v176)
                    {
                      LODWORD(v176) = *(v7 + 544);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v176) = 0;
                }

                if (v176 != v249)
                {
                  while (2)
                  {
                    v179 = *(v7 + 528) + 48 * v176;
                    v180 = v179 + 16;
                    v181 = *(v179 + 24);
                    if ((v181 & 1) == 0)
                    {
                      v182 = v181 >> 8;
                      v183 = (v180 + 9);
                      LOBYTE(v180) = v182;
                      goto LABEL_317;
                    }

                    v183 = *(v180 + 16);
                    if (!v183)
                    {
                      goto LABEL_322;
                    }

                    LOBYTE(v180) = *v183;
LABEL_317:
                    if (v180)
                    {
                      v180 = v180;
                      v184 = v183[1];
                      if (v184)
                      {
                        v185 = v183 + 2;
                        do
                        {
                          v180 = 31 * v180 + v184;
                          v186 = *v185++;
                          v184 = v186;
                        }

                        while (v186);
                      }
                    }

                    else
                    {
LABEL_322:
                      v180 = 0;
                    }

                    v250 = v180 & 0x7FFFFFFFFFFFFFFFLL;
                    *&buf[0] = v180 & 0x7FFFFFFFFFFFFFFFLL;
                    v187 = **(re::RenderFrameData::stream((v7 + 264), buf) + 48);
                    v188 = (*(v187 + 560))();
                    if (v188)
                    {
                      v189 = v188;
                      v253 = *(v188 + 40);
                      if (v253)
                      {
                        for (j = 0; j != v253; ++j)
                        {
                          v191 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v189, j);
                          v192 = *(v191 + 16);
                          if (v192)
                          {
                            v193 = *(v191 + 32);
                            v194 = 1552 * v192;
                            do
                            {
                              *&buf[0] = 0;
                              DWORD2(buf[0]) = 0;
                              re::RenderCamera::transformWorldBoundsToScreen(v193 + 2, (*(v7 + 456) + 32), v193 + 4, v302);
                              v195 = *&buf[0];
                              re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(*&buf[0], v196);
                              v197 = &buf[2 * v195 + 1];
                              v198 = *&v302[16];
                              *v197 = *v302;
                              v197[1] = v198;
                              ++*&buf[0];
                              ++DWORD2(buf[0]);
                              re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(*(v7 + 456) + 112, v193, buf);
                              v193 += 97;
                              v194 -= 1552;
                            }

                            while (v194);
                          }
                        }
                      }
                    }

                    *&buf[0] = v250;
                    v199 = **(re::RenderFrameData::stream((v7 + 264), buf) + 48);
                    v254 = (*(v199 + 592))();
                    if (v254)
                    {
                      v251 = *(v254 + 40);
                      if (v251)
                      {
                        for (k = 0; k != v251; ++k)
                        {
                          v201 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v254, k);
                          v202 = *(v201 + 16);
                          if (v202)
                          {
                            v203 = *(v201 + 32);
                            v204 = (v203 + 3120 * v202);
                            do
                            {
                              v205 = 0;
                              *&buf[0] = 0;
                              DWORD2(buf[0]) = 0;
                              v206 = 1;
                              do
                              {
                                v207 = v206;
                                re::RenderCamera::transformWorldBoundsToScreen(v203 + 97 * v205 + 2, (*(v7 + 456) + 32), v203 + 97 * v205 + 4, v302);
                                v208 = *&buf[0];
                                re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(*&buf[0], v209);
                                v206 = 0;
                                v210 = &buf[2 * v208 + 1];
                                v211 = *&v302[16];
                                *v210 = *v302;
                                v210[1] = v211;
                                ++*&buf[0];
                                ++DWORD2(buf[0]);
                                v205 = 1;
                              }

                              while ((v207 & 1) != 0);
                              re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(*(v7 + 456) + 112, v203, buf);
                              v203 = (v203 + 3120);
                            }

                            while (v203 != v204);
                          }
                        }
                      }
                    }

                    v212 = *(v7 + 544);
                    if (v212 <= v176 + 1)
                    {
                      v212 = v176 + 1;
                    }

                    while (v212 - 1 != v176)
                    {
                      LODWORD(v176) = v176 + 1;
                      if ((*(*(v7 + 528) + 48 * v176) & 0x80000000) != 0)
                      {
                        goto LABEL_345;
                      }
                    }

                    LODWORD(v176) = v212;
LABEL_345:
                    if (v176 == v249)
                    {
                      break;
                    }

                    continue;
                  }
                }

                re::RenderGraphResourceAllocationManager::onFrameFinish(*(*v7 + 128));
                if (v289[0] != 1)
                {
LABEL_347:
                  re::RenderGraphContext::~RenderGraphContext(&v277);
                  goto LABEL_348;
                }

LABEL_402:
                re::DrawCallRecorder::dumpDrawCallsToTextFile(v289);
                goto LABEL_347;
              }

LABEL_348:
              re::FixedArray<re::BufferSlice>::deinit(&v260 + 1);
              re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v259);
              if (*(&v257 + 1))
              {
                if (__dst[0])
                {
                  (*(**(&v257 + 1) + 40))();
                  __dst[0] = 0;
                  __dst[1] = 0;
                }

                *(&v257 + 1) = 0;
              }

              result = v256;
              if (v256 && *(&v256 + 1))
              {
                v41 = v257;
                return (*(*result + 40))(result, v41);
              }

              return result;
            }
          }

          *&v277 = *(v60 + 8) >> 1;
          *(&v277 + 1) = *(v60 + 24);
          v31 = re::RenderGraphExecutable::targetDescription(&v256, &v277);
          v273 = 0;
          if (*v31 != 2)
          {
            goto LABEL_130;
          }

          re::StringID::StringID(&v277, (v60 + 8));
          re::RenderFrame::getExternalTexture(v7, v31, buf);
          NS::SharedPtr<MTL::Texture>::operator=(&v273, buf);
          v61 = *&buf[0];
          if (*&buf[0])
          {

            *&buf[0] = 0;
          }

          if (v277)
          {
            if (v277)
            {
            }
          }

          if (v273)
          {
            goto LABEL_130;
          }

          v62 = NS::SharedPtr<MTL::Buffer>::operator=(&v273, (*(*(v7 + 8) + 56) + 32));
          re::StringID::StringID(&v277, (v60 + 8));
          *&buf[0] = v277 >> 1;
          v63 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(&xmmword_1EE1B8898, buf);
          v64 = v63;
          *&buf[0] = 0;
          if (v277)
          {
            if (v277)
            {
            }
          }

          if (v64)
          {
            goto LABEL_128;
          }

          v65 = re::StringID::StringID(&v277, (v60 + 8));
          v66 = v277;
          *&buf[0] = v277 >> 1;
          v67 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v66 >> 31) ^ (v66 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v66 >> 31) ^ (v66 >> 1))) >> 27));
          v68 = v67 ^ (v67 >> 31);
          if (DWORD2(xmmword_1EE1B88A8))
          {
            v69 = v68 % DWORD2(xmmword_1EE1B88A8);
            v70 = *(*(&xmmword_1EE1B8898 + 1) + 4 * v69);
            if (v70 != 0x7FFFFFFF)
            {
              while (*(xmmword_1EE1B88A8 + 16 * v70 + 8) != v277 >> 1)
              {
                v70 = *(xmmword_1EE1B88A8 + 16 * v70) & 0x7FFFFFFF;
                if (v70 == 0x7FFFFFFF)
                {
                  goto LABEL_120;
                }
              }

LABEL_121:
              *&buf[0] = 0;
              if (v66)
              {
                if (v277)
                {
                }
              }

              v78 = *re::graphicsLogObjects(v65);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                re::StringID::StringID(&v277, (v60 + 8));
                LODWORD(buf[0]) = 136315138;
                *(buf + 4) = *(&v277 + 1);
                _os_log_impl(&dword_1E1C61000, v78, OS_LOG_TYPE_DEFAULT, "Invalid external texture bound to resource (%s). Setting it to a gray 1x1 fallback texture.", buf, 0xCu);
                if (v277)
                {
                  if (v277)
                  {
                  }
                }
              }

LABEL_128:
              v80 = v273;
              v275 = v80;
              re::RenderGraphTargetDescription::makeValid(v31, &v275, *(v7 + 440));
              v3 = 0xFFFFFFFFLL;
              if (v80)
              {

                v275 = 0;
              }

LABEL_130:
              v10 = *(v60 + 28);
              v2 = *(&v259 + 1);
              if (*(&v259 + 1) <= v10)
              {
                goto LABEL_369;
              }

              NS::SharedPtr<MTL::Buffer>::operator=((v260 + 8 * v10), &v273);
              *(v31 + 64) = *(v31 + 60);
              if (v273)
              {
              }

              goto LABEL_133;
            }
          }

          else
          {
            LODWORD(v69) = 0;
          }

LABEL_120:
          v65 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(&xmmword_1EE1B8898, v69, v68, buf, buf);
          ++dword_1EE1B88C0;
          LOBYTE(v66) = v277;
          goto LABEL_121;
        }
      }
    }

    __dst[0] = v10;
    if (v10 < 0x555555555555556)
    {
      __dst[1] = v23;
      if (v23)
      {
        v26 = v10 - 1;
        if (v10 != 1)
        {
          do
          {
            *v23 = 0;
            *(v23 + 1) = -1;
            *(v23 + 16) = 0;
            *(v23 + 5) = 1065353216;
            *(v23 + 3) = 0xFFFFFFFF00000020;
            *(v23 + 2) = xmmword_1E3062D70;
            v23 = (v23 + 48);
            --v26;
          }

          while (v26);
        }

        *v23 = 0;
        *(v23 + 1) = -1;
        *(v23 + 16) = 0;
        *(v23 + 5) = 1065353216;
        *(v23 + 3) = 0xFFFFFFFF00000020;
        *(v23 + 2) = xmmword_1E3062D70;
        goto LABEL_16;
      }

LABEL_401:
      re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_402;
    }

LABEL_400:
    re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v10);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v244, v246);
    __break(1u);
    goto LABEL_401;
  }

  if (!*(v7 + 3392))
  {
    re::DynamicString::format(&v277, "No compiled render graph found for a frame without errors. Graph hash: %llu", v9, *(v7 + 328));
    re::RenderFrame::addError(v7, &v277);
    result = v277;
    if (v277)
    {
      if (BYTE8(v277))
      {
        v41 = v278;
        return (*(*result + 40))(result, v41);
      }
    }
  }

  return result;
}

void *re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  v7 = v6;
  if (*a1)
  {
    v8 = v6 % *(a1 + 24);
    v9 = *(*(a1 + 8) + 4 * v8);
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      result = re::DynamicString::operator==(v10 + 144 * v9 + 8, a2);
      if (result)
      {
        return result;
      }

      while (1)
      {
        v12 = *(v10 + 144 * v9);
        v9 = v12 & 0x7FFFFFFF;
        if ((v12 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::DynamicString::operator==(v10 + 144 * v9 + 8, a2);
        if (result)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v13 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v8, v7);
  re::DynamicString::DynamicString((v13 + 8), a2);
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  v14 = *a3;
  result = memcpy((v13 + 64), a3 + 2, 32 * *a3);
  *(v13 + 48) = v14;
  ++*(a1 + 40);
  return result;
}

uint64_t re::RenderFrame::addRateMap(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v7 = 0;
  if (*(v3 + 364) == 1)
  {
    v6 = [*(v3 + 208) newRasterizationRateMapWithDescriptor_];
    NS::SharedPtr<MTL::Texture>::operator=(&v7, &v6);
    if (v6)
    {
    }
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 4256), &v7);
  v4 = (*(a1 + 4272) - 1);
  if (v7)
  {
  }

  return v4;
}

void *re::RenderFrame::reserveDynamicArraysSize(void *this, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = this;
  if (this[528] < a3)
  {
    this = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(this + 527, a3);
  }

  if (v9[538] < a4)
  {
    this = re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(v9 + 537, a4);
  }

  if (v9[543] < a5)
  {
    this = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v9 + 542, a5);
  }

  if (*(v9[1] + 364) == 1)
  {
    if (v9[533] < a2)
    {
      this = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v9 + 532, a2);
    }

    if (v9[548] < a3)
    {

      return re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(v9 + 547, a3);
    }
  }

  return this;
}

uint64_t re::RenderFrame::addRateMap(uint64_t a1, void **a2)
{
  if (!*a2 || *(*(a1 + 8) + 364) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  NS::SharedPtr<MTL::Buffer>::operator=(&v5, a2);
  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 4256), &v5);
  v3 = (*(a1 + 4272) - 1);
  if (v5)
  {
  }

  return v3;
}

void *re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add(_anonymous_namespace_ *this, uint64_t *__src)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  *v5 = 0;
  *(v5 + 8) = 0;
  v6 = *__src;
  result = memcpy((v5 + 16), __src + 2, 16 * *__src);
  *v5 = v6;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderFrame::addRenderCommandEncoder(uint64_t a1, id *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  re::mtl::RenderCommandEncoder::RenderCommandEncoder(&v6, a2);
  v7 = a3;
  re::DynamicArray<re::RenderCommandEncoderWithMask>::add((a1 + 4296), &v6);
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v6);
  return (*(a1 + 4312) - 1);
}

__n128 re::DynamicArray<re::RenderCommandEncoderWithMask>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderCommandEncoderWithMask>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 24 * v4);
  result = *a2;
  a2->n128_u64[0] = 0;
  *v5 = result;
  a2->n128_u64[1] = 0;
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::FixedArray<re::RenderLayer>::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = a2[1];
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::RenderLayer>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::RenderFrame::identifyUsedRenderLayers(uint64_t this)
{
  *(this + 432) = 0;
  v1 = *(this + 4232);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = 0;
    v5 = (this + 432);
    do
    {
      v6 = v2[531];
      if (!*(v6 + v3 + 8) && !*(v6 + v3 + 16))
      {
        v7 = *(v6 + v3 + 24);
        if (v7 != -1 && v2[553] > v7)
        {
          this = re::Bitset<64>::toWordIndex(v5, v7);
          v5[this] |= 1 << v7;
          v1 = v2[529];
        }
      }

      ++v4;
      v3 += 104;
    }

    while (v1 > v4);
  }

  return this;
}

void re::RenderFrame::acquireDrawables(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4424);
  a2[1] = v4;
  if (v4)
  {
    if (v4 >> 61)
    {
      goto LABEL_60;
    }

    a2[2] = v6;
    if (!v6)
    {
LABEL_61:
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v8 = v6;
    if (v4 != 1)
    {
      bzero(v6, 8 * v4 - 8);
      v8 += v4 - 1;
    }

    *v8 = 0;
  }

  v9 = *(a1 + 4424);
  v10 = *(a1 + 4456);
  if (v10 >= v9)
  {
    if (v10 <= v9)
    {
      goto LABEL_18;
    }

    v11 = *(a1 + 4424);
    do
    {
      v12 = *(a1 + 4472);
      v13 = *(v12 + 8 * v11);
      if (v13)
      {

        *(v12 + 8 * v11) = 0;
        v10 = *(a1 + 4456);
      }

      ++v11;
    }

    while (v11 < v10);
  }

  else
  {
    if (*(a1 + 4448) < v9)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 4440), *(a1 + 4424));
      v10 = *(a1 + 4456);
    }

    if (v9 > v10)
    {
      bzero((*(a1 + 4472) + 8 * v10), 8 * (v9 - v10));
    }
  }

  *(a1 + 4456) = v9;
  ++*(a1 + 4464);
LABEL_18:
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v53, 5006, *(a1 + 8), *(a1 + 384) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  if (*(a1 + 4424))
  {
    v4 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(a1 + 4432);
      if (!*(v18 + v4) || ((*(a1 + 432 + 8 * re::Bitset<64>::toWordIndex(a1 + 432, v17)) >> v17) & 1) == 0)
      {
        goto LABEL_46;
      }

      v19 = v18 + v4;
      if (*(v18 + v4 + 20) == 1)
      {
        if (*(v18 + v4 + 8))
        {
          v20 = (v18 + 4 * v16);
          [*(v18 + v4) setContentsScale:v20[6]];
          v21 = v20[3];
          v22 = v20[4];
        }

        else
        {
          [*(v18 + v4) bounds];
          v30 = v29;
          v32 = v31;
          v33 = *(v18 + 4 * v16 + 24);
          [*(v18 + v4) setContentsScale:v33];
          v21 = v33 * v30;
          v22 = v33 * v32;
        }
      }

      else
      {
        if (!*(v18 + v4 + 8))
        {
          goto LABEL_34;
        }

        [*(v18 + v4) drawableSize];
        v24 = v23;
        v26 = v25;
        v27 = v18 + 4 * v16;
        v21 = *(v27 + 12);
        v22 = *(v27 + 16);
        if (v21 == v24 && v22 == v26)
        {
          goto LABEL_34;
        }
      }

      [*(v18 + v4) setDrawableSize:{v21, v22}];
LABEL_34:
      if (*(v19 + 8) == 1)
      {
        *(v19 + 8) = 0;
      }

      if (*(v19 + 20) == 1)
      {
        *(v19 + 20) = 0;
      }

      re::mtl::Layer::nextDrawable((v18 + v4), &v52);
      v34 = a2[1];
      if (v34 <= v17)
      {
        v54 = 0;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v55 = 136315906;
        v56 = "operator[]";
        v57 = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        v58 = 468;
        v59 = 2048;
        v60 = v17;
        v61 = 2048;
        v62 = v34;
        _os_log_send_and_compose_impl(v41, &v54, &v63, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        v54 = 0;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v55 = 136315906;
        v56 = "operator[]";
        v57 = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        v58 = 468;
        v59 = 2048;
        v60 = v17;
        v61 = 2048;
        v62 = v34;
        _os_log_send_and_compose_impl(v44, &v54, &v63, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        v54 = 0;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v55 = 136315906;
        v56 = "operator[]";
        v57 = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v58 = 789;
        v59 = 2048;
        v60 = v17;
        v61 = 2048;
        v62 = v34;
        _os_log_send_and_compose_impl(v47, &v54, &v63, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
        _os_crash_msg();
        __break(1u);
LABEL_60:
        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v4);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v48, v49);
        __break(1u);
        goto LABEL_61;
      }

      v35 = (a2[2] + v16);
      if (v35 != &v52)
      {
        v36 = v52;
        v52 = 0;
        v37 = *v35;
        *v35 = v36;
      }

      v34 = a2[1];
      if (v34 <= v17)
      {
        goto LABEL_52;
      }

      v38 = a2[2];
      if (*(v38 + v16))
      {
        re::mtl::Drawable::texture((v38 + v16), &v52);
        v34 = *(a1 + 4456);
        if (v34 <= v17)
        {
          goto LABEL_56;
        }

        NS::SharedPtr<MTL::Texture>::operator=((*(a1 + 4472) + v16), &v52);
        if (v52)
        {
        }
      }

LABEL_46:
      ++v17;
      v16 += 8;
      v4 += 32;
    }

    while (*(a1 + 4424) > v17);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v53, v14, v15);
}

void re::RenderFrame::specifyDepthOrStencilLaneWhenColorIsSpecified(void *a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1[498])
  {
    return;
  }

  v5 = 0;
  do
  {
    v6 = a1[500] + 136 * v5;
    if (!*(v6 + 32))
    {
      goto LABEL_30;
    }

    v41[0] = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v6 + 40, v41);
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = v7;
    if (*(v7 + 112) != 1)
    {
      goto LABEL_30;
    }

    v9 = a1[498];
    if (v9 <= v5)
    {
      goto LABEL_36;
    }

    v10 = a1[500] + 136 * v5;
    v41[0] = 65290051;
    v11 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v10 + 40, v41);
    if (!v11)
    {
      goto LABEL_30;
    }

    v12 = v11;
    if (*(v11 + 112))
    {
      goto LABEL_30;
    }

    v2 = *(v11 + 120);
    if (v2 != -1)
    {
      goto LABEL_19;
    }

    v2 = a1[498];
    if (v2 <= v5)
    {
      goto LABEL_52;
    }

    ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(a1, *(a1[500] + 136 * v5 + 24));
    if (ScopeOutputIndex == -1)
    {
      goto LABEL_18;
    }

    do
    {
      v9 = ScopeOutputIndex;
      v2 = a1[498];
      if (v2 <= ScopeOutputIndex)
      {
        *v48 = 0;
        v44 = 0u;
        v45 = 0u;
        *v42 = 0u;
        v43 = 0u;
        *v41 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v55[0]) = 136315906;
        *(v55 + 4) = "operator[]";
        WORD2(v55[1]) = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        *(&v55[1] + 6) = 789;
        WORD1(v55[2]) = 2048;
        *(&v55[2] + 4) = v9;
        WORD2(v55[3]) = 2048;
        *(&v55[3] + 6) = v2;
        _os_log_send_and_compose_impl(v23, v48, v41, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v39, v40);
        _os_crash_msg();
        __break(1u);
LABEL_36:
        *v48 = 0;
        v44 = 0u;
        v45 = 0u;
        *v42 = 0u;
        v43 = 0u;
        *v41 = 0u;
        v24 = MEMORY[0x1E69E9C10];
        v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v55[0]) = 136315906;
        *(v55 + 4) = "operator[]";
        WORD2(v55[1]) = 1024;
        if (v25)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        *(&v55[1] + 6) = 789;
        WORD1(v55[2]) = 2048;
        *(&v55[2] + 4) = v5;
        WORD2(v55[3]) = 2048;
        *(&v55[3] + 6) = v9;
        _os_log_send_and_compose_impl(v26, v48, v41, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v39, v40);
        _os_crash_msg();
        __break(1u);
LABEL_40:
        v40 = 0;
        v56 = 0u;
        v57 = 0u;
        memset(v55, 0, sizeof(v55));
        v27 = MEMORY[0x1E69E9C10];
        v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        v49 = 1024;
        if (v28)
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        v50 = 789;
        v51 = 2048;
        v52 = v2;
        v53 = 2048;
        v54 = v9;
        _os_log_send_and_compose_impl(v29, &v40, v55, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v39);
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v40 = 0;
        v56 = 0u;
        v57 = 0u;
        memset(v55, 0, sizeof(v55));
        v30 = MEMORY[0x1E69E9C10];
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        v49 = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v50 = 789;
        v51 = 2048;
        v52 = v5;
        v53 = 2048;
        v54 = v2;
        _os_log_send_and_compose_impl(v32, &v40, v55, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v39);
        _os_crash_msg();
        __break(1u);
LABEL_48:
        v40 = 0;
        v56 = 0u;
        v57 = 0u;
        memset(v55, 0, sizeof(v55));
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        v49 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v50 = 789;
        v51 = 2048;
        v52 = v5;
        v53 = 2048;
        v54 = v8;
        _os_log_send_and_compose_impl(v35, &v40, v55, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v39);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        *v48 = 0;
        v44 = 0u;
        v45 = 0u;
        *v42 = 0u;
        v43 = 0u;
        *v41 = 0u;
        v36 = MEMORY[0x1E69E9C10];
        v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v55[0]) = 136315906;
        *(v55 + 4) = "operator[]";
        WORD2(v55[1]) = 1024;
        if (v37)
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        *(&v55[1] + 6) = 789;
        WORD1(v55[2]) = 2048;
        *(&v55[2] + 4) = v5;
        WORD2(v55[3]) = 2048;
        *(&v55[3] + 6) = v2;
        _os_log_send_and_compose_impl(v38, v48, v41, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v39, v40);
        _os_crash_msg();
        __break(1u);
      }

      v14 = a1[500] + 136 * ScopeOutputIndex;
      v41[0] = 65290051;
      v15 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v14 + 40, v41);
      v12 = v15;
      if (v15)
      {
        if ((*(v15 + 112) & 1) == 0)
        {
          v2 = *(v15 + 120);
          if (v2 != -1)
          {
            goto LABEL_19;
          }
        }
      }

      ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(a1, *(v14 + 24));
    }

    while (ScopeOutputIndex != -1);
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_18:
    v2 = *(v12 + 120);
LABEL_19:
    v9 = a1[529];
    if (v9 <= v2)
    {
      goto LABEL_40;
    }

    v16 = a1[531] + 104 * v2;
    v41[0] = *v16;
    v41[1] = *(v16 + 8);
    v42[0] = *(v16 + 16);
    LODWORD(v42[1]) = *(v16 + 24);
    re::DynamicString::DynamicString(&v43, (v16 + 32));
    v17 = *(v16 + 64);
    v18 = *(v16 + 80);
    v47 = *(v16 + 96);
    v45 = v17;
    v46 = v18;
    v19 = re::RenderFrame::SpecifyScopeLaneParameters::scopeHash(v41);
    v2 = a1[498];
    if (v2 <= v5)
    {
      goto LABEL_44;
    }

    v20 = v19;
    re::DynamicString::operator=(&v43, a1[500] + 136 * v5);
    DWORD2(v46) = v5;
    v41[0] = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
    LOWORD(v45) = 0;
    re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((a1 + 527), v41);
    v55[0] = v41[0];
    v55[1] = __PAIR64__(DWORD2(v46), v42[1]);
    LOWORD(v55[2]) = v45;
    LOBYTE(v55[3]) = 1;
    v55[4] = v20;
    re::DynamicArray<re::AutomaticSpecifyScopeParameters>::add((a1 + 501), v55);
    *(v8 + 112) = 0;
    *(v8 + 120) = a1[529] - 1;
    v8 = a1[498];
    if (v8 <= v5)
    {
      goto LABEL_48;
    }

    --*(a1[500] + 136 * v5 + 32);
    if (v43)
    {
      if (BYTE8(v43))
      {
        (*(*v43 + 40))();
      }

      v43 = 0u;
      v44 = 0u;
    }

    if (v42[0])
    {

      v42[0] = 0;
    }

    if (v41[1])
    {
    }

LABEL_30:
    ++v5;
  }

  while (v5 < a1[498]);
}

unint64_t re::RenderFrame::SpecifyScopeLaneParameters::scopeHash(re::RenderFrame::SpecifyScopeLaneParameters *this)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(this + 40))
  {
    v1 = *(this + 6);
  }

  else
  {
    v1 = this + 41;
  }

  v2 = *this;
  v3 = 0x9E3779B97F4A7C17;
  v4 = strlen(v1);
  if (v4)
  {
    MurmurHash3_x64_128(v1, v4, 0, v6);
    v3 = ((v6[1] - 0x61C8864680B583E9 + (v6[0] << 6) + (v6[0] >> 2)) ^ v6[0]) - 0x61C8864680B583E9;
  }

  return ((v2 >> 2) + (v2 << 6) + v3) ^ v2;
}

_anonymous_namespace_ *re::DynamicArray<re::AutomaticSpecifyScopeParameters>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::AutomaticSpecifyScopeParameters>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::AutomaticSpecifyScopeParameters>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 40 * v5;
  *v11 = *a2;
  v12 = *(a2 + 8);
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 8) = v12;
  LODWORD(v12) = *(a2 + 24);
  *(v11 + 24) = v12;
  if (v12 == 1)
  {
    *(v11 + 32) = *(a2 + 32);
  }

  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t *re::FixedArray<unsigned long long>::init<int>(uint64_t *result, uint64_t a2, unint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v10, v11);
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 8 * a3, 8);
  v6[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v8 = *a4;
  v9 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result++ = v8;
      --v9;
    }

    while (v9);
  }

  *result = v8;
  return result;
}

re::StringID *anonymous namespace::getSpecifyWithRenderLayerID(re::StringID *this, const char *a2)
{
  v3 = this;
  if (a2 > 7)
  {
    {
    }

    v7 = re::DynamicString::format(&v9, "SpecifyRenderLayer%d", a2, a2);
    if (v10)
    {
      v8 = *&v11[7];
    }

    else
    {
      v8 = v11;
    }

    *v3 = 0;
    *(v3 + 1) = &str_67;
    this = v9;
    if (v9)
    {
      if (v10)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  else
  {
    v4 = (&unk_1E871F478 + 16 * a2);
    v6 = *v4;
    v5 = v4[1];
    *this = 2 * v6;
    *(this + 1) = v5;
  }

  return this;
}

_DWORD *re::RenderFrame::specifyScopeLaneInternal(void *a1, void *a2, uint64_t a3, int a4, unint64_t *a5)
{
  v10 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a3 + 40, a1);
  if (v10)
  {
    v11 = v10;
    if (*(v10 + 88) != -1 && *(v10 + 92) != -1)
    {
      v12 = re::RenderGraphCompiled::targetDescription(a5, v10 + 80);
      if (*v12 == 3)
      {
        v13 = v12;
        if (a4)
        {
          v16[0] = *(v11 + 80);
          v16[1] = *(v11 + 88);
          v15[0] = *a2;
          v15[1] = a2[1];
          re::RenderGraphResourceDescriptions::specify(a5, v16, v15, 1, (a5 + 72));
          *(v13 + 104) = 1;
        }

        else
        {
          *v12 = 0;
        }
      }
    }
  }

  result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a3 + 88, a1);
  if (result && result[26] != -1 && result[27] != -1)
  {
    result = re::RenderGraphCompiled::bufferDescription(a5, (result + 24));
    if (*result == 3)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 40 * v6 + 16;
}

uint64_t re::RenderGraphCompiled::targetDescription(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 304);
  v3 = *(a2 + 12);
  v4 = *(v2 + 16);
  if (v4 <= v3)
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

    v13 = 789;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(v2 + 32) + 112 * v3;
}

uint64_t re::RenderGraphCompiled::bufferDescription(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 312);
  v3 = *(a2 + 12);
  v4 = *(v2 + 16);
  if (v4 <= v3)
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

    v13 = 789;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(v2 + 32) + 48 * v3;
}

void *re::RenderFrame::makeRenderGraphManagedInternal(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a2 + 40, a1);
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (v7[4] + v8);
        v24 = 0;
        v25 = -1;
        v24 = *v10;
        v25 = v10[1];
        v11 = re::RenderGraphCompiled::targetDescription(a3, &v24);
        if (*v11 == 3)
        {
          *v11 = 0;
        }

        ++v9;
        v8 += 16;
      }

      while (v7[2] > v9);
    }

    if (v7[7])
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = (v7[9] + v12);
        v24 = 0;
        v25 = -1;
        v24 = *v14;
        v25 = v14[1];
        v15 = re::RenderGraphCompiled::bufferDescription(a3, &v24);
        if (*v15 == 3)
        {
          *v15 = 0;
        }

        ++v13;
        v12 += 16;
      }

      while (v7[7] > v13);
    }
  }

  result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a2 + 88, a1);
  if (result)
  {
    v17 = result;
    if (result[7])
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = (v17[9] + v18);
        v24 = 0;
        v25 = -1;
        v24 = *v20;
        v25 = v20[1];
        result = re::RenderGraphCompiled::bufferDescription(a3, &v24);
        if (*result == 3)
        {
          *result = 0;
        }

        ++v19;
        v18 += 16;
      }

      while (v17[7] > v19);
    }

    if (v17[2])
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = (v17[4] + v21);
        v24 = 0;
        v25 = -1;
        v24 = *v23;
        v25 = v23[1];
        result = re::RenderGraphCompiled::targetDescription(a3, &v24);
        if (*result == 3)
        {
          *result = 0;
        }

        ++v22;
        v21 += 16;
      }

      while (v17[2] > v22);
    }
  }

  return result;
}

void re::RenderFrame::fillScopeLaneProperties(uint64_t a1, void *a2, id *a3, uint64_t a4, uint64_t a5)
{
  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a4 + 40, a2);
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 16))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = (v9[4] + v10);
        v21 = 0;
        v22 = -1;
        v21 = *v12;
        v22 = v12[1];
        v13 = re::RenderGraphExecutable::targetDescription(a5, &v21);
        if ((*v13 | 4) == 4)
        {
          v14 = v13;
          if (*a3)
          {
            v15 = *a3;
            v20 = v15;
            re::RenderGraphTargetDescription::makeValid(v14, &v20, *(a1 + 440));
            if (v15)
            {

              v20 = 0;
            }
          }
        }

        ++v11;
        v10 += 16;
      }

      while (v9[2] > v11);
    }

    if (v9[7])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = (v9[9] + v16);
        v21 = 0;
        v22 = -1;
        v21 = *v18;
        v22 = v18[1];
        v19 = re::RenderGraphExecutable::bufferDescription(a5, &v21);
        if ((*v19 | 4) == 4)
        {
          if (*a3)
          {
            re::RenderGraphBufferDescription::makeValid(v19, a3, *(a1 + 440));
          }
        }

        ++v17;
        v16 += 16;
      }

      while (v9[7] > v17);
    }
  }
}

_anonymous_namespace_ *re::RenderFrame::createWorkload@<X0>(re::RenderFrame *this@<X0>, uint64_t *a2@<X8>)
{
  re::make::shared::object<re::RenderFrameWorkload>(this, a2);
  *(*a2 + 152) = *(this + 48);
  *(*a2 + 160) = *(this + 50);
  v4 = *a2;
  *(v4 + 144) = *(this + 3);
  *(v4 + 48) = *algn_1E30A3BB0;
  *(v4 + 64) = xmmword_1E30A3BC0;
  *(v4 + 80) = unk_1E30A3BD0;
  *(v4 + 112) = *algn_1E30A3BF0;
  *(v4 + 128) = xmmword_1E30A3C00;

  return re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((this + 4176), a2);
}

void re::RenderFrameWorkload::~RenderFrameWorkload(re::RenderFrameWorkload *this)
{
  *this = &unk_1F5D04A70;
  pthread_cond_destroy(this + 2);
  pthread_mutex_destroy((this + 32));
  v2 = *(this + 21);
  if (v2)
  {

    *(this + 21) = 0;
  }

  re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::deinit(this + 584);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 544);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 504);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 464);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 424);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 384);
  re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 344);
  v3 = *(this + 38);
  if (v3)
  {
    v4 = *(this + 42);
    if (v4)
    {
      v5 = *(this + 40);
      if (v5)
      {
        v6 = 8 * v5;
        do
        {
          v7 = *v4++;

          v6 -= 8;
        }

        while (v6);
        v3 = *(this + 38);
        v4 = *(this + 42);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 42) = 0;
    *(this + 39) = 0;
    *(this + 40) = 0;
    *(this + 38) = 0;
    ++*(this + 82);
  }

  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 256);
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 216);
  v8 = *(this + 25);
  if (v8)
  {

    *(this + 25) = 0;
  }

  v9 = *(this + 23);
  if (v9)
  {

    *(this + 23) = 0;
  }

  v10 = *(this + 21);
  if (v10)
  {

    *(this + 21) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RenderFrameWorkload::~RenderFrameWorkload(this);

  JUMPOUT(0x1E6906510);
}

uint64_t re::RenderFrameWorkload::configure(re::RenderFrameWorkload *this, re::RenderFrameSettings *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = a2 + 8;
  }

  v5 = *(this + 21);
  *(this + 21) = v2;
  if (v5)
  {

    v2 = *(this + 21);
  }

  *(this + 44) = *(v2 + 6);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 23, v2 + 4);
  *(this + 24) = *(v2 + 5);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 25, v2 + 6);
  *(this + 26) = *(v2 + 7);
  re::DynamicArray<re::RenderFrameEvent>::operator=(this + 216, v2 + 8);

  return re::DynamicArray<re::RenderFrameEvent>::operator=(this + 256, v2 + 13);
}

uint64_t re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

id re::DynamicArray<re::mtl::Drawable>::add(_anonymous_namespace_ *this, id *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::mtl::Drawable>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4);
  result = *a2;
  *(v5 + 8 * v4) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderFrameWorkload::beforeEmit(re::RenderFrameWorkload *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(this + 47) + 32);
    do
    {
      v7 = this;
      v5 = *v4;
      v4 += 5;
      (*(*v5 + 16))(v5, &v7);
      v3 -= 40;
    }

    while (v3);
  }

  return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 344);
}

uint64_t re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::RenderFrameWorkload::beforeEncode(uint64_t this)
{
  v3 = 0;
  atomic_compare_exchange_strong((this + 640), &v3, 1u);
  if (!v3)
  {
    v9[5] = v1;
    v9[6] = v2;
    v4 = this;
    v5 = *(this + 400);
    if (v5)
    {
      v6 = 40 * v5;
      v7 = (*(this + 416) + 32);
      do
      {
        v9[0] = v4;
        v8 = *v7;
        v7 += 5;
        (*(*v8 + 16))(v8, v9);
        v6 -= 40;
      }

      while (v6);
    }

    return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(v4 + 384);
  }

  return this;
}

uint64_t re::RenderFrameWorkload::postEncode(atomic_uchar *this)
{
  result = re::RenderFrameWorkload::beforeEncode(this);
  v3 = 0;
  atomic_compare_exchange_strong(this + 768, &v3, 1u);
  if (!v3)
  {
    v4 = *(this + 55);
    if (v4)
    {
      v5 = 40 * v4;
      v6 = (*(this + 57) + 32);
      do
      {
        v8 = this;
        v7 = *v6;
        v6 += 5;
        (*(*v7 + 16))(v7, &v8);
        v5 -= 40;
      }

      while (v5);
    }

    return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit((this + 424));
  }

  return result;
}

uint64_t re::RenderFrameWorkload::encoded(re::RenderFrameWorkload *this)
{
  re::RenderFrameWorkload::postEncode(this);
  pthread_mutex_lock((this + 32));
  v2 = 0;
  atomic_compare_exchange_strong(this + 896, &v2, 1u);
  v3 = v2 == 0;
  pthread_cond_broadcast(this + 2);
  result = pthread_mutex_unlock((this + 32));
  if (v3)
  {
    v5 = *(this + 60);
    if (v5)
    {
      v6 = 40 * v5;
      v7 = (*(this + 62) + 32);
      do
      {
        v9 = this;
        v8 = *v7;
        v7 += 5;
        (*(*v8 + 16))(v8, &v9);
        v6 -= 40;
      }

      while (v6);
    }

    return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 464);
  }

  return result;
}

uint64_t re::RenderFrameWorkload::scheduled(re::RenderFrameWorkload *this)
{
  re::RenderFrameWorkload::encoded(this);
  pthread_mutex_lock((this + 32));
  *(this + 624) = 1;
  pthread_cond_broadcast(this + 2);
  pthread_mutex_unlock((this + 32));
  v2 = *(this + 70);
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(this + 72) + 32);
    do
    {
      v7 = this;
      v5 = *v4;
      v4 += 5;
      (*(*v5 + 16))(v5, &v7);
      v3 -= 40;
    }

    while (v3);
  }

  return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 544);
}

uint64_t re::RenderFrameWorkload::completed(re::RenderFrameWorkload *this)
{
  re::RenderFrameWorkload::scheduled(this);
  pthread_mutex_lock((this + 32));
  *(this + 625) = 1;
  pthread_cond_broadcast(this + 2);
  pthread_mutex_unlock((this + 32));
  v2 = *(this + 65);
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(this + 67) + 32);
    do
    {
      v7 = this;
      v5 = *v4;
      v4 += 5;
      (*(*v5 + 16))(v5, &v7);
      v3 -= 40;
    }

    while (v3);
  }

  return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::deinit(this + 504);
}

uint64_t re::RenderFrameWorkload::beforeCommandBufferCommitted(re::RenderFrameWorkload *this, const re::mtl::CommandBuffer *a2)
{
  v3 = *(this + 75);
  if (v3)
  {
    v5 = 40 * v3;
    v6 = (*(this + 77) + 32);
    do
    {
      v7 = *v6;
      v6 += 5;
      (*(*v7 + 16))(v7, a2);
      v5 -= 40;
    }

    while (v5);
  }

  return re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::deinit(this + 584);
}

uint64_t re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::RenderFrameWorkload::presentDrawables(re::RenderFrameWorkload *this, id *a2)
{
  if (*(this + 40))
  {
    v4 = 0;
    do
    {
      [*a2 presentDrawable:*(*(this + 42) + 8 * v4++) afterMinimumDuration:1.0 / *(*(this + 18) + 1792)];
    }

    while (*(this + 40) > v4);
  }

  re::DynamicArray<re::DirectBuffer>::clear(this + 304);
}

void re::RenderFrameWorkload::immediatePresentDrawables(re::RenderFrameWorkload *this, double a2)
{
  if (*(this + 40))
  {
    v3 = 0;
    do
    {
      [*(*(this + 42) + 8 * v3++) present];
    }

    while (*(this + 40) > v3);
  }

  re::DynamicArray<re::DirectBuffer>::clear(this + 304);
}

uint64_t re::RenderFrameWorkload::applyPreEmitPatch(uint64_t a1, uint64_t a2)
{
  result = re::RenderFrameBox::get((*(a1 + 144) + 328), *(a1 + 152));
  if (result)
  {
    v4 = *(*a2 + 32);

    return v4(a2, result);
  }

  return result;
}

uint64_t re::RenderFrameWorkload::applyPostEncodePatch(uint64_t result, _BYTE *a2)
{
  if (a2[28] == 1)
  {
    result = re::RenderFrameBox::get((*(result + 144) + 328), *(result + 152));
    if (result)
    {
      v3 = *(*a2 + 40);

      return v3(a2, result);
    }
  }

  return result;
}

void re::RenderFrameWorkload::waitForEncoded(re::RenderFrameWorkload *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v5, 5006, 0, *(this + 19) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  pthread_mutex_lock((this + 32));
  while (1)
  {
    v2 = atomic_load(this + 896);
    if (v2)
    {
      break;
    }

    pthread_cond_wait(this + 2, (this + 32));
  }

  pthread_mutex_unlock((this + 32));
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v5, v3, v4);
}

uint64_t re::RenderFrameWorkload::waitForScheduled(re::RenderFrameWorkload *this)
{
  pthread_mutex_lock((this + 32));
  if ((*(this + 624) & 1) == 0)
  {
    do
    {
      pthread_cond_wait(this + 2, (this + 32));
    }

    while (*(this + 624) != 1);
  }

  return pthread_mutex_unlock((this + 32));
}

uint64_t re::RenderFrameWorkload::waitForCompleted(re::RenderFrameWorkload *this)
{
  pthread_mutex_lock((this + 32));
  if ((*(this + 625) & 1) == 0)
  {
    do
    {
      pthread_cond_wait(this + 2, (this + 32));
    }

    while (*(this + 625) != 1);
  }

  return pthread_mutex_unlock((this + 32));
}

uint64_t (***re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::clear(uint64_t (***result)(void)))(void)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = result[4];
    v4 = 40 * v2;
    do
    {
      result = re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v3);
      v3 += 5;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 6);
  return result;
}

unint64_t re::RenderFrame::getScopeResolution(re::RenderFrame *this, const char *__s2)
{
  v2 = *(this + 529);
  if (!v2)
  {
    v12 = 1;
    LayerSize = 1;
    return LayerSize | (v12 << 32);
  }

  v5 = *(this + 531) + 24;
  v6 = 104 * v2;
  while (1)
  {
    if (*(v5 + 16))
    {
      v7 = *(v5 + 24);
    }

    else
    {
      v7 = (v5 + 17);
    }

    if (strcmp(v7, __s2))
    {
      goto LABEL_10;
    }

    v10 = *(v5 - 16);
    if (v10)
    {
      LayerSize = [v10 width];
      v12 = [*(v5 - 16) height];
      return LayerSize | (v12 << 32);
    }

    if (*v5 != -1)
    {
      break;
    }

    v11 = *(v5 - 8);
    if (v11)
    {
      LayerSize = [v11 width];
      v12 = [*(v5 - 8) height];
      return LayerSize | (v12 << 32);
    }

LABEL_10:
    v5 += 104;
    v6 -= 104;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v14 = *(*(this + 1) + 112);
  if (!v14)
  {
LABEL_11:
    v12 = 1;
    LayerSize = 1;
    return LayerSize | (v12 << 32);
  }

  LayerSize = re::DrawingManager::getLayerSize(v14, *v5, v8, v9);
  v12 = v15;
  return LayerSize | (v12 << 32);
}

id re::RenderFrame::getScopePixelFormat(void *a1, const char *a2, uint64_t *a3)
{
  v3 = a1[529];
  if (!v3)
  {
    return 0;
  }

  v6 = *a3;
  v7 = 104 * v3;
  for (i = a1[531] + 24; ; i += 104)
  {
    if (*(i - 24) != v6)
    {
      goto LABEL_11;
    }

    v9 = (*(i + 16) & 1) != 0 ? *(i + 24) : (i + 17);
    if (strcmp(v9, a2))
    {
      goto LABEL_11;
    }

    v10 = *(i - 16);
    if (v10)
    {
      break;
    }

    v10 = *(i - 8);
    if (v10)
    {
      break;
    }

    v11 = *i;
    if (*i != -1)
    {
      v13 = a1[3];

      return re::DrawingManager::getLayerPixelFormat(v13, v11);
    }

LABEL_11:
    v7 -= 104;
    if (!v7)
    {
      return 0;
    }
  }

  return [v10 pixelFormat];
}

id re::RenderFrame::getScopeProtectionOptions(uint64_t a1, const char *a2, uint64_t *a3)
{
  v3 = *(a1 + 4232);
  if (!v3)
  {
    return 0;
  }

  v5 = *a3;
  v6 = 104 * v3;
  for (i = (*(a1 + 4248) + 40); ; i += 13)
  {
    if (*(i - 5) == v5)
    {
      v8 = (*i & 1) != 0 ? i[1] : i + 1;
      if (!strcmp(v8, a2))
      {
        v9 = *(i - 4);
        if (v9)
        {
          break;
        }

        v9 = *(i - 3);
        if (v9)
        {
          break;
        }
      }
    }

    v6 -= 104;
    if (!v6)
    {
      return 0;
    }
  }

  return [v9 protectionOptions];
}

uint64_t re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::copy(a1, 0, *a2, v4);
      re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::resize(a1, *(a2 + 8));
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
    }
  }

  else if (v4)
  {
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(a1, v4);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

uint64_t re::RenderFrame::applyRenderFrameDeltas(re::RenderFrame *this)
{
  v2 = *(this + 822);
  if (v2)
  {
    v3 = (this + 3296);
  }

  else
  {
    v3 = *(this + 413);
  }

  v4 = *(this + 410);
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      v6 = *v3++;
      (**v6)(v6);
      v5 -= 8;
    }

    while (v5);
    v2 = *(this + 822);
  }

  if (v2)
  {
    v7 = (this + 3296);
  }

  else
  {
    v7 = *(this + 413);
  }

  v8 = *(this + 410);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      v10 = *v7++;
      (*(*v10 + 2))(v10);
      objc_destroyWeak(v10 + 1);
      v10[1] = 0;
      v9 -= 8;
    }

    while (v9);
  }

  return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3272);
}

uint64_t *re::DynamicArray<re::Pair<NS::SharedPtr<MTL::Event>,unsigned long long,true>>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = result[1];
      v9 = a2[1];
      *result = v5;
      result[1] = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = result[2];
      result[2] = a2[2];
      a2[2] = v10;
      v11 = result[4];
      result[4] = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 6);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

void re::RenderFrame::prepareForReuse(re::RenderFrame *this)
{
  *(this + 41) = *(this + 42);
  *(this + 352) = 0;
  re::make::shared::object<re::RenderFrameBounds>(this, &v12);
  v2 = *(this + 57);
  *(this + 57) = v12;
  v12 = v2;
  if (v2)
  {
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 464);
  re::DynamicArray<re::RenderFrame::ProvideCall>::clear(this + 560);
  re::DynamicArray<re::RenderFrame::PickupAction>::clear(this + 600);
  re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(this + 688);
  re::DynamicArray<re::RenderGraph>::clear((this + 3632));
  re::RenderGraphResourceDescriptions::clear((this + 3672));
  v3 = *(this + 498);
  *(this + 498) = 0;
  if (v3)
  {
    v4 = 136 * v3;
    v5 = (*(this + 500) + 88);
    do
    {
      re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v5);
      re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v5 - 6);
      re::StringID::destroyString((v5 - 9));
      v5 += 17;
      v4 -= 136;
    }

    while (v4);
  }

  ++*(this + 998);
  v6 = *(this + 503);
  *(this + 503) = 0;
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 505);
    v9 = 40 * v6 - 40;
    v10 = vdupq_n_s64(v9 / 0x28);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_1E3049620)));
      if (v11.i8[0])
      {
        *v8 = 0;
      }

      if (v11.i8[4])
      {
        v8[5] = 0;
      }

      v7 += 2;
      v8 += 10;
    }

    while (((v9 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v7);
  }

  ++*(this + 1008);
  re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::resize((this + 4216), *(this + 43));
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 4440);
}

uint64_t re::DynamicArray<re::RenderFrame::ProvideCall>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(result + 32) + 16);
    do
    {
      result = re::FixedArray<CoreIKTransform>::deinit(v4);
      v4 += 5;
      v3 -= 40;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

void re::DynamicArray<re::RenderFrame::PickupAction>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = 80 * v2;
    v4 = (*(a1 + 32) + 40);
    do
    {
      *(v4 + 4) = 0;
      re::DynamicString::deinit(v4);
      re::DynamicString::deinit((v4 - 32));
      v4 = (v4 + 80);
      v3 -= 80;
    }

    while (v3);
  }

  ++*(a1 + 24);
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      if (*(result + 16))
      {
        v3 = result + 24;
      }

      else
      {
        v3 = *(result + 32);
      }

      v4 = v2 << 9;
      v5 = v3 + 8;
      do
      {
        if ((*(v3 + 504) & 1) == 0)
        {
          result = (**(v3 + 8))(v3 + 8);
          *(v3 + 504) = 1;
        }

        v3 += 512;
        v5 += 512;
        v4 -= 512;
      }

      while (v4);
    }

    v6 = *(v1 + 4);
    if ((v6 & 1) == 0)
    {
      result = (*(**v1 + 40))(*v1, v1[4]);
      v6 = *(v1 + 4);
    }

    *v1 = 0;
    v1[1] = 0;
    *(v1 + 4) = (v6 | 1) + 2;
  }

  return result;
}

re::RenderGraph *re::DynamicArray<re::RenderGraph>::clear(re::RenderGraph *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 112 * v2;
    do
    {
      re::RenderGraph::~RenderGraph(result);
      result = (v4 + 112);
      v3 -= 112;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

void re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 104 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::DynamicString::deinit((v10 + 4));
      v11 = v10[2];
      if (v11)
      {

        v10[2] = 0;
      }

      v12 = v10[1];
      if (v12)
      {

        v10[1] = 0;
      }

      *v10 = 0;
      ++v9;
      v8 += 104;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4 + 96;
      do
      {
        v7 = (*(v3 + 4) + v6);
        *(v7 - 12) = 0;
        *(v7 - 11) = 0;
        *(v7 - 10) = 0;
        *(v7 - 18) = -1;
        *(v7 - 3) = 0u;
        *(v7 - 4) = 0u;
        a1 = re::DynamicString::setCapacity(v7 - 8, 0);
        *(v7 - 16) = 0;
        *(v7 - 3) = 0;
        *(v7 - 2) = 0;
        *(v7 - 1) = 0xFFFFFFFFLL;
        v6 += 104;
        *v7 = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void re::RenderFrame::frameReuse_setRenderCommandEncoder(uint64_t a1, unsigned int a2, id *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  re::mtl::RenderCommandEncoder::RenderCommandEncoder(v12, a3);
  v13 = a4;
  v7 = *(a1 + 4312);
  if (v7 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl(v11, &v14, v23, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v12[0], v12[1]);
    _os_crash_msg();
    __break(1u);
  }

  v8 = re::mtl::RenderCommandEncoder::operator=((*(a1 + 4328) + 24 * a2), v12);
  v8[2] = v13;
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v12);
}

void re::RenderGraphProcessorContainer::~RenderGraphProcessorContainer(re::RenderGraphProcessorContainer *this)
{
  re::RenderGraphProcessorContainer::reset(this);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

re *re::RenderGraphProcessorContainer::reset(re *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      this = re::internal::destroyPersistent<re::RenderGraphProcessor>("reset", 45, v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(v1 + 7);
  if (v6)
  {
    v7 = *(v1 + 9);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      this = re::internal::destroyPersistent<re::RenderGraphProcessor>("reset", 48, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v10 = *(v1 + 12);
  if (v10)
  {
    v11 = *(v1 + 14);
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      this = re::internal::destroyPersistent<re::RenderGraphProcessor>("reset", 51, v13);
      v12 -= 8;
    }

    while (v12);
  }

  *(v1 + 2) = 0;
  ++*(v1 + 6);
  *(v1 + 7) = 0;
  ++*(v1 + 16);
  *(v1 + 12) = 0;
  ++*(v1 + 26);
  return this;
}

re *re::internal::destroyPersistent<re::RenderGraphProcessor>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<unsigned long>::init<>(a1, v4, a2[1]);
    re::FixedArray<re::RenderGraphProviderBase const*>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<re::RenderGraphProviderBase const*>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

void ___ZN12_GLOBAL__N_127getSpecifyWithRenderLayerIDEj_block_invoke(re *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = 8;
    _os_log_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_DEFAULT, "More than %ul SpecifyRenderLayer targets have been created, falling back to dynamic string allocation. Performance may be impacted.", v2, 8u);
  }
}

void ___ZN12_GLOBAL__N_118getSpecifyLaneOpIDEj_block_invoke(re *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = 32;
    _os_log_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_DEFAULT, "More than %ul SpecifyLaneOp targets have been created, falling back to dynamic string allocation. Performance may be impacted.", v2, 8u);
  }
}

uint64_t re::DynamicArray<re::RenderFrameEvent>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 16 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 2;
          v5 -= 16;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderFrameEvent>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RenderFrameEvent>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::RenderFrameEvent>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RenderFrameEvent>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::RenderFrameEvent>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(a1, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = a1[2];
    v13 = a1[4];
    if (v12)
    {
      v14 = v11 + 16 * v12;
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v13, v11);
        *(v13 + 8) = *(v11 + 8);
        v11 += 16;
        v13 += 16;
      }

      while (v11 != v14);
      v13 = a1[4];
      v12 = a1[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = v11 + 16 * v4;
      v16 = v11 + 16 * v12;
      v17 = (v13 + 16 * v12);
      do
      {
        v18 = *v16;
        v19 = *(v16 + 8);
        *v17 = v18;
        v17[1] = v19;
        v17 += 2;
        v16 += 16;
      }

      while (v16 != v15);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + 16 * v4;
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v6, v7);
        *(v6 + 8) = *(v7 + 8);
        v7 += 16;
        v6 += 16;
      }

      while (v7 != v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v9 = (v6 + 16 * v4);
      v10 = 16 * v5 - 16 * v4;
      do
      {
        if (*v9)
        {

          *v9 = 0;
        }

        v9 += 2;
        v10 -= 16;
      }

      while (v10);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::RenderFrameEvent>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 16 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::DynamicArray<re::DetailedError>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 48 * v4;
        v6 = (v3 + 16);
        do
        {
          re::DynamicString::deinit(v6);
          v6 = (v6 + 48);
          v5 -= 48;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraph>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 112 * v4;
        do
        {
          re::RenderGraph::~RenderGraph(v3);
          v3 = (v3 + 112);
          v5 -= 112;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphScopeOutput>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 136 * v4;
        v6 = (v3 + 88);
        do
        {
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v6);
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v6 - 6);
          re::StringID::destroyString((v6 - 9));
          v6 += 17;
          v5 -= 136;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::AutomaticSpecifyScopeParameters>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    if (*(a1 + 32))
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        v4 = 0;
        v5 = 40 * v3 - 40;
        v6 = vdupq_n_s64(v5 / 0x28);
        v7 = *(a1 + 32);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v4), xmmword_1E3049620)));
          if (v8.i8[0])
          {
            *v7 = 0;
          }

          if (v8.i8[4])
          {
            v7[5] = 0;
          }

          v4 += 2;
          v7 += 10;
        }

        while (((v5 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v4);
      }

      result = (*(*result + 40))(result);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(a1[2], v3++);
      }

      while (v3 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (result + 2304 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicArray<re::Function<void ()(re::Matrix4x4<float> const*,unsigned int)>>::deinit((v2 + 470));
    re::DynamicArray<unsigned long>::deinit((v2 + 458));
    re::DynamicArray<unsigned long>::deinit((v2 + 448));
    re::DynamicArray<unsigned long>::deinit((v2 + 404));
    re::DynamicArray<unsigned long>::deinit((v2 + 394));

    return re::DynamicArray<unsigned long>::deinit((v2 + 384));
  }

  return result;
}

uint64_t re::DynamicArray<re::Function<void ()(re::Matrix4x4<float> const*,unsigned int)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

double re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 40);
          if (v9 != -1)
          {
            (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[v9])(&v11, v8 + 16);
            v3 = *(a1 + 8);
          }

          *(v8 + 40) = -1;
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 24 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 16);
    if (v3)
    {

      *(v2 + 16) = 0;
    }
  }
}

void re::SharedStringAllocatorWrapper::~SharedStringAllocatorWrapper(re::SharedStringAllocatorWrapper *this)
{
  re::GrowableLinearAllocator::deinit((this + 24));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 14);
  re::Allocator::~Allocator((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::GrowableLinearAllocator::deinit((this + 24));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 14);
  re::Allocator::~Allocator((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 40 * v9);
        v11 = v7 + 2;
        v12 = (v8 + 16);
        do
        {
          *(v11 - 1) = *(v12 - 1);
          re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray(v11, v12);
          re::FixedArray<CoreIKTransform>::deinit(v12);
          v11 += 5;
          v13 = v12 + 3;
          v12 += 5;
        }

        while (v13 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 80 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 3) = 0u;
          v12 = (v8 + 8);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v14 = v11[2];
          v13 = v11[3];
          v15 = *(v8 + 24);
          v11[2] = *(v8 + 16);
          v11[3] = v15;
          *(v8 + 16) = v14;
          *(v8 + 24) = v13;
          *(v11 + 7) = 0u;
          *(v11 + 5) = 0u;
          v17 = *(v8 + 40);
          v16 = v8 + 40;
          v11[5] = v17;
          *v16 = 0;
          v18 = v11[7];
          v11[7] = *(v16 + 16);
          *(v16 + 16) = v18;
          *(v11 + 4) = *(v16 + 24);
          v19 = *(v16 + 8);
          *(v16 + 24) = 0;
          *(v16 + 32) = 0;
          v20 = v11[6];
          v11[6] = v19;
          *(v16 + 8) = v20;
          re::DynamicString::deinit(v16);
          re::DynamicString::deinit(v12);
          v11 += 10;
          v8 = v16 + 40;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::make::shared::object<re::RenderFrameBounds>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 16);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D04B50;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  *(v4 + 32) = vnegq_f32(v5);
  *(v4 + 48) = v5;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v4 + 100) = 0x7FFFFFFFLL;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 148) = 0x7FFFFFFFLL;
  *a2 = v4;
  return result;
}

void re::RenderFrameBounds::~RenderFrameBounds(re::RenderFrameBounds *this)
{
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 8);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 8);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          *(v8 + 48) = 0;
          ++*(v8 + 56);
          v3 = *(a1 + 8);
        }

        v4 += 144;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 224 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicString::deinit((v2 + 8));
    *(v2 + 40) = 0;
    ++*(v2 + 48);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphScopeOutput>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderGraphScopeOutput>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphScopeOutput>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphScopeOutput>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderGraphScopeOutput>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 136 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = *(v8 + 16);
          v12 = v8 + 16;
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[3] = *(v12 + 8);
          *v12 = 0;
          *(v12 + 8) = &str_67;
          *(v11 + 8) = *(v12 + 16);
          *(v11 + 7) = 0u;
          *(v11 + 18) = 0;
          *(v11 + 5) = 0u;
          *(v11 + 76) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 5, (v12 + 24));
          *(v11 + 11) = 0u;
          v14 = v11 + 11;
          *(v14 + 8) = 0;
          *(v14 + 1) = 0u;
          *(v14 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v14, (v12 + 72));
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((v12 + 72));
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((v12 + 24));
          re::StringID::destroyString(v12);
          v8 = v12 + 120;
          v11 = v14 + 6;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addInternal<unsigned long long const&,re::BufferSlice const&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v7 + 16, a4);
  *(v9 + 32) = *(a4 + 32);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v13 + 8) % *(a1 + 24), *(v13 + 8));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0;
                v19 = v17 + 16;
                *(v17 + 8) = v18;
                *(v17 + 40) = -1;
                std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v17 + 16, v13 + 16);
                *(v19 + 32) = *(v13 + 48);
              }

              v13 += 56;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 56 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 56 * v4;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 32;
        v11 = 104 * v9;
        v12 = v7;
        do
        {
          *v12 = *(v10 - 32);
          *(v12 + 1) = *(v10 - 24);
          *(v10 - 24) = 0;
          *(v10 - 16) = 0;
          *(v12 + 6) = *(v10 - 8);
          *(v12 + 2) = 0u;
          *(v12 + 3) = 0u;
          v12[7] = *(v10 + 24);
          v13 = *(v10 + 8);
          v12[4] = *v10;
          *v10 = 0;
          v14 = *(v10 + 16);
          *(v10 + 24) = 0;
          v16 = v12[5];
          v15 = v12[6];
          v12[5] = v13;
          v12[6] = v14;
          *(v10 + 8) = v16;
          *(v10 + 16) = v15;
          v17 = *(v10 + 32);
          v18 = *(v10 + 48);
          *(v12 + 96) = *(v10 + 64);
          *(v12 + 4) = v17;
          *(v12 + 5) = v18;
          re::DynamicString::deinit(v10);
          v19 = *(v10 - 16);
          if (v19)
          {

            *(v10 - 16) = 0;
          }

          v20 = *(v10 - 24);
          if (v20)
          {

            *(v10 - 24) = 0;
          }

          *(v10 - 32) = 0;
          v12 += 13;
          v10 += 104;
          v11 -= 104;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::ensureCapacity(uint64_t result)
{
  if (*result)
  {
    v2 = *(result + 8);
    if (*(result + 16))
    {
      v3 = 8;
    }

    else
    {
      v3 = *(result + 24);
    }

    if (v2 >= v3)
    {

      re::DynamicOverflowArray<re::CommandBuffer,8ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(result + 8);
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(result, v4 + 1);
    *(result + 16) += 2;
  }
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::growCapacity(uint64_t result, unint64_t a2)
{
  v2 = a2;
  if (!*result)
  {
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(result, v2);
    *(result + 16) += 2;
    return;
  }

  if (*(result + 16))
  {
    if (a2 <= 8)
    {
      return;
    }

    v5 = 16;
  }

  else
  {
    v4 = *(result + 24);
    if (v4 >= a2)
    {
      return;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(result, a2);
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v15 = a1 + 3;
        v16 = a1[4];
        if (v7)
        {
          v17 = a1 + 3;
        }

        else
        {
          v17 = a1[4];
        }

        if (v9)
        {
          v18 = &v17[3 * v9];
          do
          {
            *v15 = *v17;
            v19 = v17[2];
            v17[2] = 0;
            v15[2] = v19;

            v17 += 3;
            v15 += 3;
          }

          while (v17 != v18);
          v5 = *a1;
        }

        (*(*v5 + 40))(v5, v16);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x18uLL))
      {
        v2 = 24 * a2;
        v10 = (*(*v5 + 32))(v5, 24 * a2, 8);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = a1 + 3;
          }

          else
          {
            v14 = a1[4];
          }

          v20 = a1[1];
          if (v20)
          {
            v21 = &v14[3 * v20];
            v22 = v10;
            do
            {
              *v22 = *v14;
              v23 = v14[2];
              v14[2] = 0;
              *(v22 + 16) = v23;

              v14 += 3;
              v22 += 24;
            }

            while (v14 != v21);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[4]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v12;
          return;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 24, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v24, v26);
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v25, v27);
      __break(1u);
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v17 - 2) % *(a1 + 24), *(v17 - 2));
                *(v18 + 8) = *(v17 - 2);
                *(v18 + 16) = 0u;
                *(v18 + 32) = 0u;
                *(v18 + 40) = v17[2];
                v19 = *v17;
                *(v18 + 16) = *(v17 - 1);
                *(v17 - 1) = 0;
                v20 = v17[1];
                v17[2] = 0;
                v22 = *(v18 + 24);
                v21 = *(v18 + 32);
                *(v18 + 24) = v19;
                *(v18 + 32) = v20;
                *v17 = v22;
                v17[1] = v21;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 48 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 48 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 48 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 48 * v4;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderFrame::PickupAction>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraph>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderGraph>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraph>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraph>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderGraph>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 112 * v9;
        v11 = v7;
        do
        {
          re::RenderGraph::RenderGraph(v11, v8);
          re::RenderGraph::~RenderGraph(v8);
          v8 = (v8 + 112);
          v11 += 112;
          v10 -= 112;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::RenderGraph::RenderGraph(uint64_t a1, re::RenderGraph *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = &str_122;
  *(a1 + 88) = 0;
  *(a1 + 96) = &str_122;
  re::RenderGraph::move(a1, a2);
  return a1;
}

_anonymous_namespace_ *re::RenderGraph::move(uint64_t *a1, uint64_t *a2)
{
  re::DynamicArray<re::Pair<NS::SharedPtr<MTL::Event>,unsigned long long,true>>::operator=(a1, a2);
  re::DynamicString::operator=((a1 + 5), (a2 + 5));
  re::StringID::operator=((a1 + 9), a2 + 9);
  result = re::StringID::operator=((a1 + 11), a2 + 11);
  a1[13] = a2[13];
  return result;
}

void re::RenderGraphCompiled::~RenderGraphCompiled(re::RenderGraphCompiled *this)
{
  v2 = *(this + 90);
  if (v2)
  {
    v3 = *(this + 92);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::RenderGraphNodeBase>("~RenderGraphCompiled", 71, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(this + 90) = 0;
  ++*(this + 182);
  v6 = *(this + 103);
  if (v6)
  {

    *(this + 103) = 0;
  }

  re::DynamicArray<re::AutomaticSpecifyScopeParameters>::deinit(this + 784);
  re::DynamicArray<re::RenderGraphScopeOutput>::deinit(this + 744);
  re::DynamicArray<unsigned long>::deinit(this + 704);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 82);
  re::DynamicArray<re::RenderGraph>::deinit(this + 616);
  re::DynamicArray<re::DetailedError>::deinit(this + 576);
  re::DynamicArray<unsigned long>::deinit(this + 536);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 496);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 456);
  re::DynamicArray<unsigned long>::deinit(this + 416);
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::DynamicArray<re::RenderGraphResourceSetup>::deinit(this + 336);

  re::RenderGraphResourceDescriptions::~RenderGraphResourceDescriptions(this);
}

re *re::internal::destroyPersistent<re::RenderGraphNodeBase>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphResourceSetup>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 200 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 120);
          re::DynamicArray<unsigned long>::deinit(v3 + 80);
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 200;
          v5 -= 200;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 2048) % *(v4 + 24), *(v7 + v5 + 2048));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        result = re::CameraLateLatch::CameraLateLatch(v8 + 256, (v9 + 256));
        v2 = *(a2 + 32);
      }

      v5 += 2304;
    }
  }

  return result;
}

void re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 2304 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 2304 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 2304 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 2304 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 2048) = a3;
  ++*(a1 + 28);
  return v7 + 2304 * v5;
}

uint64_t re::CameraLateLatch::CameraLateLatch(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    memcpy((a1 + 256), a2 + 256, 0x400uLL);
  }

  *(a1 + 1312) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1280) = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 1288) = *(a2 + 161);
  *(a2 + 161) = 0;
  v5 = *(a1 + 1296);
  *(a1 + 1296) = *(a2 + 162);
  *(a2 + 162) = v5;
  v6 = *(a1 + 1312);
  *(a1 + 1312) = *(a2 + 164);
  *(a2 + 164) = v6;
  ++*(a2 + 326);
  ++*(a1 + 1304);
  *(a1 + 1352) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1344) = 0;
  *(a1 + 1320) = *(a2 + 165);
  *(a2 + 165) = 0;
  *(a1 + 1328) = *(a2 + 166);
  *(a2 + 166) = 0;
  v7 = *(a1 + 1336);
  *(a1 + 1336) = *(a2 + 167);
  *(a2 + 167) = v7;
  v8 = *(a1 + 1352);
  *(a1 + 1352) = *(a2 + 169);
  *(a2 + 169) = v8;
  ++*(a2 + 336);
  ++*(a1 + 1344);
  *(a1 + 1392) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1376) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1360) = *(a2 + 170);
  *(a2 + 170) = 0;
  *(a1 + 1368) = *(a2 + 171);
  *(a2 + 171) = 0;
  v9 = *(a1 + 1376);
  *(a1 + 1376) = *(a2 + 172);
  *(a2 + 172) = v9;
  v10 = *(a1 + 1392);
  *(a1 + 1392) = *(a2 + 174);
  *(a2 + 174) = v10;
  ++*(a2 + 346);
  ++*(a1 + 1384);
  *(a1 + 1568) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1536) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 1544) = *(a2 + 193);
  *(a2 + 193) = 0;
  v11 = *(a1 + 1552);
  *(a1 + 1552) = *(a2 + 194);
  *(a2 + 194) = v11;
  v12 = *(a1 + 1568);
  *(a1 + 1568) = *(a2 + 196);
  *(a2 + 196) = v12;
  ++*(a2 + 390);
  ++*(a1 + 1560);
  *(a1 + 1608) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1576) = *(a2 + 197);
  *(a2 + 197) = 0;
  *(a1 + 1584) = *(a2 + 198);
  *(a2 + 198) = 0;
  v13 = *(a1 + 1592);
  *(a1 + 1592) = *(a2 + 199);
  *(a2 + 199) = v13;
  v14 = *(a1 + 1608);
  *(a1 + 1608) = *(a2 + 201);
  *(a2 + 201) = v14;
  ++*(a2 + 400);
  ++*(a1 + 1600);
  *(a1 + 1616) = *(a2 + 202);
  *(a1 + 1656) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1624) = *(a2 + 203);
  *(a2 + 203) = 0;
  *(a1 + 1632) = *(a2 + 204);
  *(a2 + 204) = 0;
  v15 = *(a1 + 1640);
  *(a1 + 1640) = *(a2 + 205);
  *(a2 + 205) = v15;
  v16 = *(a1 + 1656);
  *(a1 + 1656) = *(a2 + 207);
  *(a2 + 207) = v16;
  ++*(a2 + 412);
  ++*(a1 + 1648);
  *(a1 + 1664) = *(a2 + 104);
  return a1;
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result + 24;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(result + 32);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v5 = v2 << 9;
  v6 = v4 + 8;
  do
  {
    if ((*(v4 + 504) & 1) == 0)
    {
      result = (**(v4 + 8))(v4 + 8);
      *(v4 + 504) = 1;
    }

    v4 += 512;
    v6 += 512;
    v5 -= 512;
  }

  while (v5);
  v3 = *(v1 + 16);
LABEL_10:
  *(v1 + 16) = v3 + 2;
  return result;
}

uint64_t re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 5;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 5 || (v7 & 1) == 0))
    {
      if (a2 < 6)
      {
        v14 = a1[4];
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = v9 << 9;
          v17 = v15 + 1;
          v18 = 3;
          do
          {
            v19 = &a1[v18];
            *v19 = *v15;
            *(v19 + 504) = 1;
            re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=(&a1[v18 + 1], v15 + 8);
            if ((v15[63] & 1) == 0)
            {
              (*v15[1])(v15 + 1);
              *(v15 + 504) = 1;
            }

            v15 += 64;
            v18 += 64;
            v17 += 64;
            v16 -= 512;
          }

          while (v16);
          result = *a1;
        }

        result = (*(*result + 40))(result, v14);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 55)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 512, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v25, v27);
        __break(1u);
      }

      else
      {
        v2 = a2 << 9;
        result = (*(*result + 32))(result, a2 << 9, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v20 = a1[1];
          if (v20)
          {
            v21 = v20 << 9;
            v22 = v13 + 1;
            v23 = result;
            do
            {
              *v23 = *v13;
              v24 = v23 + 8;
              *(v23 + 504) = 1;
              result = re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=((v23 + 8), v13 + 8);
              if ((v13[63] & 1) == 0)
              {
                result = (*v13[1])(v13 + 1);
                *(v13 + 504) = 1;
              }

              v13 += 64;
              v22 += 64;
              v23 = v24 + 504;
              v21 -= 512;
            }

            while (v21);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v26, v28);
      __break(1u);
    }
  }

  return result;
}

_BYTE *re::InlineFunction<496ul,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    if ((a1[496] & 1) == 0)
    {
      (**a1)(a1);
      a1[496] = 1;
    }

    if ((a2[496] & 1) == 0)
    {
      (*(*a2 + 32))(a2, a1);
      if ((a2[496] & 1) == 0)
      {
        (**a2)(a2);
        a2[496] = 1;
      }

      a1[496] = 0;
    }
  }

  return a1;
}

void re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

unint64_t *re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(unint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 216) % *(v4 + 24), *(v7 + v5 + 216));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = *(a2 + 16) + v5;
        *(v8 + 40) = 0;
        v8 += 40;
        *(v8 + 8) = 0;
        result = re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>::move(v8, (v14 + 40));
        v2 = *(a2 + 32);
      }

      v5 += 224;
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 224 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 224 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 224 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 216) = a3;
  ++*(a1 + 28);
  return v7 + 224 * v5;
}

unint64_t *re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, 80 * v5 - 6);
    }

    result = memcpy(&v8[10 * v5], &a2[10 * v5 + 2], 80 * v6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, 80 * v4 - 6);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

unint64_t re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
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

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 40 * (a2 & 3);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 64);
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17[8] % *(a1 + 24), v17[8]);
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = *(v17 - 4);
                v19 = *(v17 - 6);
                *(v18 + 8) = *(v17 - 7);
                *(v17 - 7) = 0;
                v20 = *(v17 - 5);
                *(v17 - 4) = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 6) = v22;
                *(v17 - 5) = v21;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                v23 = *(v17 - 2);
                memcpy((v18 + 64), v17, 32 * v23);
                *(v18 + 48) = v23;
                *(v17 - 2) = 0;
                ++*(v17 - 2);
              }

              v17 += 18;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::DynamicInlineArray<re::AABB,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 144 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 144 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 144 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 128) = a3;
  ++*(a1 + 28);
  return v24 + 144 * v5;
}

void *re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 24 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *v11 = v12;
          *(v8 + 1) = 0;
          v11[2] = *(v8 + 2);
          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v8);
          v8 = (v8 + 24);
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 48 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 2) = 0;
          re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, v8);
          *v8 = 0;
          ++*(v8 + 8);
          v8 += 48;
          v11 += 6;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderCommandEncoderWithMask>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderCommandEncoderWithMask>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::FixedArray<re::RenderLayer>::copy(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2 == a2[1])
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::RenderLayer const*,re::RenderLayer const*,re::RenderLayer*>(&v4, *a2, *a2 + 32 * v2, *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
  result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::RenderLayer>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 32 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 20) = 0;
      result += 32;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RenderLayer const*,re::RenderLayer const*,re::RenderLayer*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a3;
    v7 = 0;
    while (1)
    {
      v8 = re::ObjCObject::operator=((a4 + v7), (a2 + v7));
      if (v8[1])
      {
        if (*(a2 + v7 + 8))
        {
          *(a4 + v7 + 12) = *(a2 + v7 + 12);
        }

        else
        {
          *(v8 + 8) = 0;
        }
      }

      else if (*(a2 + v7 + 8))
      {
        *(v8 + 8) = 1;
        *(a4 + v7 + 12) = *(a2 + v7 + 12);
      }

      v9 = a4 + v7;
      if (*(a4 + v7 + 20))
      {
        break;
      }

      if (*(a2 + v7 + 20))
      {
        *(v9 + 20) = 1;
        v11 = a4 + v7;
        v10 = *(a2 + v7 + 24);
LABEL_14:
        *(v11 + 24) = v10;
      }

LABEL_16:
      v7 += 32;
      if (a2 + v7 == v6)
      {
        return v6;
      }
    }

    if ((*(a2 + v7 + 20) & 1) == 0)
    {
      *(v9 + 20) = 0;
      goto LABEL_16;
    }

    v10 = *(a2 + v7 + 24);
    v11 = a4 + v7;
    goto LABEL_14;
  }

  return a2;
}

void *re::DynamicArray<re::AutomaticSpecifyScopeParameters>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::AutomaticSpecifyScopeParameters>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 40 * v9);
        v11 = v7 + 4;
        v12 = (v8 + 32);
        do
        {
          v13 = v12 - 4;
          *(v11 - 4) = *(v12 - 4);
          v14 = *(v12 - 3);
          *(v11 - 8) = *(v12 - 8);
          *(v11 - 3) = v14;
          LODWORD(v14) = *(v12 - 8);
          *(v11 - 8) = v14;
          if (v14 == 1)
          {
            *v11 = *v12;
          }

          *(v12 - 4) = 0;
          v11 += 5;
          v12 += 5;
        }

        while (v13 + 5 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

double re::make::shared::object<re::RenderFrameWorkload>@<D0>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 1024, 128);
  bzero(v4, 0x400uLL);
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D04A70;
  *(v4 + 24) = 0;
  v4[18] = 0;
  *(v4 + 19) = vdupq_n_s64(0xFFFFFFFFFFFFFFFuLL);
  v4[21] = 0;
  *(v4 + 44) = 0;
  v4[23] = 0;
  v4[25] = 0;
  v4[28] = 0;
  v4[29] = 0;
  v4[27] = 0;
  *(v4 + 60) = 0;
  v4[36] = 0;
  *(v4 + 70) = 0;
  result = 0.0;
  *(v4 + 31) = 0u;
  *(v4 + 33) = 0u;
  v4[39] = 0;
  v4[40] = 0;
  v4[38] = 0;
  *(v4 + 82) = 0;
  v4[77] = 0;
  *(v4 + 312) = 0;
  *(v4 + 157) = 0;
  *(v4 + 640) = 0;
  *(v4 + 768) = 0;
  *(v4 + 896) = 0;
  *(v4 + 21) = 0u;
  *(v4 + 22) = 0u;
  *(v4 + 92) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 49) = 0u;
  *(v4 + 102) = 0;
  *(v4 + 26) = 0u;
  *(v4 + 27) = 0u;
  *(v4 + 112) = 0;
  *(v4 + 57) = 0u;
  *(v4 + 59) = 0u;
  *(v4 + 122) = 0;
  *(v4 + 132) = 0;
  *(v4 + 31) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 142) = 0;
  *(v4 + 67) = 0u;
  *(v4 + 69) = 0u;
  *(v4 + 152) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 37) = 0u;
  *a2 = v4;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Function<void ()(re::RenderFrameWorkload *)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_28;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_28:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          if (v8 != v11)
          {
            re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(v11);
            v12 = *(v8 + 32);
            if (*(v11 + 24) != *(v8 + 24) || v8 == v12)
            {
              if (v12)
              {
                v14 = (*(*v12 + 40))(v12);
                v15 = v11;
                if (v14 >= 0x19)
                {
                  v16 = v14;
                  v17 = *(v11 + 24);
                  if (v17)
                  {
                    v15 = (*(*v17 + 32))(v17, v16, 0);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                *(v11 + 32) = v15;
                (*(**(v8 + 32) + 32))(*(v8 + 32));
                re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(v8);
              }
            }

            else
            {
              *(v11 + 32) = v12;
              *(v8 + 32) = 0;
            }
          }

          re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Function<void ()(re::mtl::CommandBuffer const&)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v11, v8);
          re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::mtl::Drawable>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::ObjCObject>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ObjCObject>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<unsigned long long,5ul>::reserve(result, a2);
    v5 = *(v3 + 1);
    if (v5 < a2)
    {
      do
      {
        v6 = v3 + 24;
        if ((*(v3 + 16) & 1) == 0)
        {
          v6 = *(v3 + 4);
        }

        *&v6[8 * v5++] = 0;
      }

      while (a2 != v5);
    }
  }

  *(v3 + 1) = a2;
  *(v3 + 4) += 2;
  return result;
}

int *re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::copy(int *result, unint64_t a2, char *__src, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = result;
    v7 = *(result + 1);
    v8 = v7 + 1;
    if (v7 + 1 <= a2)
    {
      v27 = 0;
      memset(v33, 0, sizeof(v33));
      v20 = MEMORY[0x1E69E9C10];
      *v28 = 136315906;
      *&v28[4] = "copy";
      *&v28[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *&v28[14] = 678;
      v29 = 2048;
      v30 = a2;
      v31 = 2048;
      v32 = v8;
      _os_log_send_and_compose_impl(v21, &v27, v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v28, 38, v24, v26);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v4 = a4;
      v9 = a2 + a4;
      if (!__CFADD__(a2, a4))
      {
        if (v7 >= v9)
        {
          if (result[4])
          {
            v14 = result + 6;
          }

          else
          {
            v14 = *(result + 4);
          }

          result = memmove(&v14[2 * a2], __src, 8 * a4);
LABEL_29:
          v6[4] += 2;
          return result;
        }

        if (*result)
        {
          v11 = result[4];
          if (v11)
          {
            if (v9 > 5)
            {
              v13 = 10;
              goto LABEL_16;
            }
          }

          else
          {
            v12 = *(result + 3);
            if (v12 < v9)
            {
              v13 = 2 * v12;
LABEL_16:
              if (v13 <= v9)
              {
                v15 = a2 + a4;
              }

              else
              {
                v15 = v13;
              }

              re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(result, v15);
              v11 = v6[4];
            }
          }
        }

        else
        {
          re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v6, v9);
          v11 = v6[4] + 2;
          v6[4] = v11;
        }

        v16 = *(v6 + 1);
        v17 = v16 - a2;
        if (v11)
        {
          v18 = v6 + 6;
        }

        else
        {
          v18 = *(v6 + 4);
        }

        if (v16 != a2)
        {
          memmove(&v18[2 * a2], __src, 8 * v17);
          v11 = v6[4];
        }

        if (v11)
        {
          v19 = v6 + 6;
        }

        else
        {
          v19 = *(v6 + 4);
        }

        result = memcpy(&v19[2 * *(v6 + 1)], &__src[8 * v17], 8 * (v4 - v17));
        *(v6 + 1) = v9;
        goto LABEL_29;
      }
    }

    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 682, v7, a2, v4, v27, *v28);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::copy(). size = %zu, pos = %zu, count = %zu", v22, v23, v25);
    __break(1u);
  }

  return result;
}

void re::createMaterialSystemShaderMetadataForDevice(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*a1 supportsFamily:5001];
  v5 = [*a1 supportsFamily:1006];
  v7 = re::mtl::Device::supportsArgumentBuffers(a1, v6);

  re::createMaterialSystemShaderMetadata(v4, v5, v7, a2);
}

void re::createMaterialSystemShaderMetadata(re *this@<X0>, const char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 36) = 0x7FFFFFFFLL;
  if ((atomic_load_explicit(&qword_1EE1B88D0, memory_order_acquire) & 1) == 0)
  {
    v33 = this;
    v29 = a2;
    v30 = a3;
    LODWORD(this) = __cxa_guard_acquire(&qword_1EE1B88D0);
    a3 = v30;
    LOBYTE(a2) = v29;
    v31 = this;
    LOBYTE(this) = v33;
    if (v31)
    {
      re::Defaults::BOOLValue(&v35, "supportsManualVertexFetch", v29);
      if (v35)
      {
        v32 = BYTE1(v35);
      }

      else
      {
        v32 = 1;
      }

      _MergedGlobals_441 = v32;
      __cxa_guard_release(&qword_1EE1B88D0);
      LOBYTE(this) = v33;
      a3 = v30;
      LOBYTE(a2) = v29;
    }
  }

  v5 = this & a3 & a2 & _MergedGlobals_441;
  v35 = 0x3EE7B1A0B0613218;
  v36 = "realitykit::vsGeometryModifier";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v6 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x63B20AE1EFE6198CLL;
  v36 = "realitykit::fsSurfacePbr";
  v34 = 256;
  v7 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x55E544DB28BE8DDALL;
  v36 = "vsRealityPbr";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v8 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4A9CA8DA3289E1FALL;
  v36 = "fsRealityPbr";
  v34 = 256;
  v9 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x32567C2142;
  v36 = "vsUnlit";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v10 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x2BB9B4B922;
  v36 = "fsUnlit";
  v34 = 256;
  v11 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x55E2A44FE2A33FCELL;
  v36 = "vsDepthClear";
  v34 = 256;
  v12 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0xE3D03E3074A10316;
  v36 = "vsStencilPortal";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v13 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x58AB3A4A0A2D692CLL;
  v36 = "fsDecrementStencil";
  v34 = 256;
  v14 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x1D9CEB56E2FABFF2;
  v36 = "vsVideoPlayback";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v15 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0xCCDE6D7516E4C5C4;
  v36 = "vsRealityShadowReceiver";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v16 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x2C5500CFF2B76A0;
  v36 = "vsOcclusion";
  LOBYTE(v34) = v5;
  HIBYTE(v34) = 1;
  v17 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x26821BA62951E80;
  v36 = "fsOcclusion";
  v34 = 256;
  v18 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x544B4A88DB3F4758;
  v36 = "fullScreenVert";
  v34 = 256;
  v19 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x351E069288A50310;
  v36 = "fullScreen2Vert";
  v34 = 256;
  v20 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0xAC006A8C54D0AEB4;
  v36 = "realitykit::fsSurfaceShadow";
  v34 = 256;
  v21 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x1CD7309942F31B66;
  v36 = "realitykit::fsSurfaceMeshShadowCaster";
  v34 = 256;
  v22 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0xD2344C70BA3C214ELL;
  v36 = "realitykit::fsSurfaceMeshShadowCasterProgrammableBlending";
  v34 = 256;
  v23 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D128C4AA49FCLL;
  v36 = "realitykit::fsSelectionMaterialDiscard";
  v34 = 256;
  v24 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D12A2066EA40;
  v36 = "realitykit::fsSelectionMaterialGroup01";
  v34 = 256;
  v25 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D12A2066EAC0;
  v36 = "realitykit::fsSelectionMaterialGroup23";
  v34 = 256;
  v26 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D12A2066EB40;
  v36 = "realitykit::fsSelectionMaterialGroup45";
  v34 = 256;
  v27 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0x4BF4D12A2066EBC0;
  v36 = "realitykit::fsSelectionMaterialGroup67";
  v34 = 256;
  v28 = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(a4, &v35, &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, unint64_t *a2, _WORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
    v8 = *a2;
    *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
    *(result + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
    *(result + 16) = a2[1];
    *a2 = 0;
    a2[1] = &str_67;
    *(result + 24) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        *(result + 24) = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void re::GraphicsErrorCategoryImpl::~GraphicsErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

void *re::GraphicsErrorCategoryImpl::message@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v2 = "Error encountered when executing the render frame";
  v3 = "Unknown REGraphics error";
  if (a1 == 1001)
  {
    v3 = "Invalid custom deformer";
  }

  if (a1 != 2000)
  {
    v2 = v3;
  }

  if (a1 == 1000)
  {
    v4 = "Invalid blend shape group definition";
  }

  else
  {
    v4 = v2;
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v4);
}

id re::makeMetalTypeInfoForPointer@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*a1 dataTypeDescription];
  v5 = [v4 elementType];
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = 1;
  *(a2 + 32) = 0;
  v6 = (a2 + 32);
  *(a2 + 24) = &str_67;
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 72) = 0;
  *(a2 + 76) = 256;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 61) = 0;
  if (v5 == 1)
  {
    re::makeMetalTypeInfo([v4 elementStructType], objc_msgSend(objc_msgSend(*a1, sel_name), sel_UTF8String), 0, objc_msgSend(v4, sel_dataSize), &v11);
    *a2 = v11;
    *(a2 + 8) = DWORD2(v11);
    re::StringID::operator=((a2 + 16), &v12);
    *v6 = v14[0];
    *(a2 + 36) = WORD2(v14[0]);
    re::FixedArray<re::MetalTypeInfo>::operator=((a2 + 40), v14 + 1);
    *(a2 + 64) = *&v14[2];
    *(a2 + 70) = *(&v14[2] + 6);
    v7 = re::FixedArray<re::MetalTypeInfo>::deinit(v14 + 1);
    if (v12)
    {
      if (v12)
      {
      }
    }
  }

  else
  {
    v8 = v5;
    v11 = 0u;
    v12 = 0;
    memset(v14, 0, sizeof(v14));
    DWORD2(v11) = 1;
    v13 = &str_67;
    WORD6(v14[2]) = 256;
    *(a2 + 8) = 1;
    *a2 = v11;
    re::StringID::operator=((a2 + 16), &v12);
    *v6 = v14[0];
    *(a2 + 36) = WORD2(v14[0]);
    re::FixedArray<re::MetalTypeInfo>::operator=((a2 + 40), v14 + 1);
    *(a2 + 64) = *&v14[2];
    *(a2 + 70) = *(&v14[2] + 6);
    v9 = re::FixedArray<re::MetalTypeInfo>::deinit(v14 + 1);
    if (v12)
    {
      if (v12)
      {
      }
    }

    *(a2 + 36) = v8;
  }

  *(a2 + 8) = [v4 alignment];
  result = [v4 alignment];
  if (!result)
  {
    *(a2 + 8) = 16;
  }

  return result;
}

id re::makeMetalTypeInfo@<X0>(_anonymous_namespace_ *a1@<X0>, const char *a2@<X1>, unsigned int a3@<W2>, _BYTE *a4@<X3>, unsigned int *a5@<X8>)
{
  v8 = a5;
  *a5 = a3;
  *(a5 + 1) = 0x100000000;
  *(a5 + 2) = 0;
  *(a5 + 3) = &str_67;
  *(v8 + 5) = 0;
  v8[8] = 0;
  v8[18] = 0;
  *(v8 + 38) = 256;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  *(v8 + 61) = 0;
  v8[1] = a4;
  *(v8 + 18) = 1;
  v9 = [(_anonymous_namespace_ *)a1 members];
  result = [v9 count];
  if (result)
  {
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v100 = 0;
    v11 = [v9 count];
    if (v11)
    {
      re::DynamicArray<re::MetalTypeInfo>::setCapacity(&v97, v11);
    }

    v79 = (v8 + 10);
    v12 = [v9 count];
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v80 = v8;
      while (1)
      {
        v16 = v15 - 1;
        v17 = [v9 objectAtIndex_];
        v18 = *v8;
        v19 = [v17 offset] + v18;
        v89 = 0;
        v90 = 1;
        *&v91 = 0;
        *(&v91 + 1) = &str_67;
        v92 = 0;
        v93 = 0;
        *&v96[16] = 0;
        *&v96[20] = 256;
        v95 = 0;
        *v96 = 0;
        v94 = 0;
        *&v96[5] = 0;
        v20 = [v17 dataType];
        if (v20 <= 57)
        {
          if (v20 == 1)
          {
            if ([v17 structType])
            {
              v37 = [v9 count] - 1;
              v38 = a4;
              if (a4)
              {
                if (v16 == v37)
                {
LABEL_45:
                  v28 = (v38 - [v17 offset]);
                  goto LABEL_46;
                }
              }

              else if (v16 == v37)
              {
                v28 = 0;
LABEL_46:
                v55 = [v17 structType];
                v56 = [objc_msgSend(v17 name)];
                [v17 argumentIndex];
                MetalTypeInfo = re::makeMetalTypeInfo(v55, v56, v19, v28, &v81);
                v89 = v81;
                v90 = DWORD2(v81);
                v58 = v82;
                v59 = v83;
                v82 = 0;
                v83 = &str_67;
                v60 = v91;
                *&v91 = v58;
                *(&v91 + 1) = v59;
                if (v60)
                {
                }

                v92 = v84;
                v93 = v85;
                re::FixedArray<re::MetalTypeInfo>::operator=(&v94, &v86);
                *&v96[8] = *&v88[8];
                *&v96[14] = *&v88[14];
                v61 = re::FixedArray<re::MetalTypeInfo>::deinit(&v86);
                if (v82)
                {
                  if (v82)
                  {
                  }
                }

                goto LABEL_51;
              }

              v38 = [objc_msgSend(v9 objectAtIndex_];
              goto LABEL_45;
            }
          }

          else if (v20 == 2 && [v17 arrayType])
          {
            v29 = [v17 arrayType];
            v30 = [objc_msgSend(v17 name)];
            v31 = [v17 argumentIndex];
            LODWORD(v81) = v19;
            *(&v81 + 4) = 0x100000000;
            v82 = 0;
            v83 = &str_67;
            v84 = 0;
            v85 = 0;
            *&v88[16] = 0;
            *&v88[20] = 256;
            v87 = 0;
            *v88 = 0;
            v86 = 0;
            *&v88[5] = 0;
            v84 = [v29 arrayLength];
            v32 = [v29 stride];
            DWORD1(v81) = v84 * v32;
            v90 = DWORD2(v81);
            v89 = v81;
            v33 = v82;
            v34 = v83;
            v82 = 0;
            v83 = &str_67;
            v35 = v91;
            *&v91 = v33;
            *(&v91 + 1) = v34;
            if (v35)
            {
            }

            v92 = v84;
            v93 = v85;
            re::FixedArray<re::MetalTypeInfo>::operator=(&v94, &v86);
            *&v96[8] = *&v88[8];
            *&v96[14] = *&v88[14];
            v36 = re::FixedArray<re::MetalTypeInfo>::deinit(&v86);
            if (v82)
            {
              if (v82)
              {
              }
            }

LABEL_40:
            LODWORD(v28) = HIDWORD(v89);
            goto LABEL_51;
          }
        }

        else
        {
          switch(v20)
          {
            case ':':
              v39 = [v17 textureReferenceType];
              v40 = [objc_msgSend(v17 name)];
              v41 = [v17 argumentIndex];
              v42 = v41;
              *&v81 = 0;
              DWORD2(v81) = 1;
              v82 = 0;
              v83 = &str_67;
              v84 = 0;
              *&v88[16] = 0;
              *&v88[20] = 256;
              v87 = 0;
              *v88 = 0;
              v86 = 0;
              *&v88[5] = 0;
              v85 = 58;
              *&v88[8] = [v39 textureType];
              *&v88[16] = v42;
              v43 = [v39 isDepthTexture];
              v88[12] = v43;
              v89 = v81;
              v90 = DWORD2(v81);
              v44 = v82;
              v45 = v83;
              v82 = 0;
              v83 = &str_67;
              v46 = v91;
              *&v91 = v44;
              *(&v91 + 1) = v45;
              if (v46)
              {
              }

              v92 = v84;
              v93 = v85;
              re::FixedArray<re::MetalTypeInfo>::operator=(&v94, &v86);
              *&v96[8] = *&v88[8];
              *&v96[14] = *&v88[14];
              v47 = re::FixedArray<re::MetalTypeInfo>::deinit(&v86);
              if (v82)
              {
                if (v82)
                {
                }
              }

              TypeSize = re::mtl::getTypeSize(v93);
              v89 = __PAIR64__(TypeSize, v19);
              LODWORD(v28) = TypeSize;
              v8 = v80;
              *(v80 + 76) = 1;
              goto LABEL_51;
            case '<':
              if ([v17 pointerType])
              {
                v22 = [objc_msgSend(v17 name)];
                *&v81 = 0;
                *(&v81 + 1) = &str_67;
                v24 = v81;
                *&v81 = 0;
                *(&v81 + 1) = &str_67;
                v25 = v91;
                v91 = v24;
                if (v25)
                {
                  if (v81)
                  {
                    if (v81)
                    {
                    }
                  }
                }

                v93 = 60;
                v89 = v19 | 0x800000000;
                v27 = [v17 argumentIndex];
                *&v96[16] = v27;
                LODWORD(v28) = HIDWORD(v89);
                *(v8 + 76) = 1;
                if (!v27)
                {
                  goto LABEL_53;
                }

LABEL_52:
                *(v8 + 76) = 1;
                goto LABEL_53;
              }

              break;
            case ';':
              re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Samplers within argument buffers are not supported by the material system.", "!Unreachable code", "makeMetalTypeInfo", 220);
              result = _os_crash("assertion failure: (!Unreachable code) Samplers within argument buffers are not supported by the material system.");
              __break(1u);
              return result;
          }
        }

        v49 = [objc_msgSend(v17 name)];
        *&v81 = 0;
        *(&v81 + 1) = &str_67;
        v51 = v81;
        *&v81 = 0;
        *(&v81 + 1) = &str_67;
        v52 = v91;
        v91 = v51;
        if (v52)
        {
          if (v81)
          {
            if (v81)
            {
            }
          }
        }

        LODWORD(v89) = v19;
        v93 = [v17 dataType];
        HIDWORD(v89) = re::mtl::getTypeSize(v93);
        *&v96[16] = [v17 argumentIndex];
        if (v16 == [v9 count] - 1)
        {
          goto LABEL_40;
        }

        v54 = [objc_msgSend(v9 objectAtIndex_];
        LODWORD(v28) = v54 - [v17 offset];
LABEL_51:
        if (*&v96[16])
        {
          goto LABEL_52;
        }

LABEL_53:
        v62 = v99;
        if (v99 >= v98)
        {
          re::DynamicArray<re::MetalTypeInfo>::growCapacity(&v97, v99 + 1);
          v62 = v99;
        }

        v63 = &v101[10 * v62];
        v64 = v89;
        *(v63 + 2) = v90;
        *v63 = v64;
        LOBYTE(v64) = v91;
        v63[2] = v63[2] & 0xFFFFFFFFFFFFFFFELL | v91 & 1;
        v63[2] = v91 & 0xFFFFFFFFFFFFFFFELL | v64 & 1;
        v63[3] = *(&v91 + 1);
        *&v91 = 0;
        *(&v91 + 1) = &str_67;
        LODWORD(v64) = v92;
        *(v63 + 18) = v93;
        *(v63 + 8) = v64;
        v63[6] = 0;
        v63[7] = 0;
        v63[5] = 0;
        v63[5] = v94;
        v94 = 0;
        v63[6] = v95;
        v95 = 0;
        v65 = v63[7];
        v63[7] = *v96;
        *v96 = v65;
        v66 = *&v96[8];
        *(v63 + 70) = *&v96[14];
        v63[8] = v66;
        ++v99;
        ++v100;
        v67 = re::FixedArray<re::MetalTypeInfo>::deinit(&v94);
        if (v91)
        {
          if (v91)
          {
          }
        }

        v14 += v28;
        v13 = v15;
        v12 = [v9 count];
        if (v12 <= v15++)
        {
          goto LABEL_61;
        }
      }
    }

    v14 = 0;
LABEL_61:
    if (!a4)
    {
      v8[1] = v14;
    }

    v69 = v99;
    if (v99)
    {
      v70 = v101;
      v71 = &v101[10 * v99];
      v72 = *(v8 + 7);
      do
      {
        v73 = *v70;
        *(v72 + 8) = *(v70 + 2);
        *v72 = v73;
        v74 = (v70 + 2);
        LOBYTE(v73) = v70[2];
        *(v72 + 16) = *(v72 + 16) & 0xFFFFFFFFFFFFFFFELL | v70[2] & 1;
        *(v72 + 16) = v70[2] & 0xFFFFFFFFFFFFFFFELL | v73 & 1;
        *(v72 + 24) = v70[3];
        v70[3] = &str_67;
        v70[2] = 0;
        LODWORD(v73) = *(v70 + 8);
        *(v72 + 36) = *(v70 + 18);
        *(v72 + 32) = v73;
        *(v72 + 48) = 0;
        *(v72 + 56) = 0;
        *(v72 + 40) = 0;
        v76 = v70[5];
        v75 = v70 + 5;
        *(v72 + 40) = v76;
        *v75 = 0;
        *(v72 + 48) = v75[1];
        v75[1] = 0;
        v77 = *(v72 + 56);
        *(v72 + 56) = v75[2];
        v75[2] = v77;
        v78 = v75[3];
        *(v72 + 70) = *(v75 + 30);
        *(v72 + 64) = v78;
        re::FixedArray<re::MetalTypeInfo>::deinit(v75);
        re::StringID::destroyString(v74);
        v72 += 80;
        v70 = v75 + 5;
      }

      while (v70 != v71);
    }

    return re::DynamicArray<re::MetalTypeInfo>::deinit(&v97);
  }

  return result;
}

void re::collectArguments(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _anonymous_namespace_ *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v138 = a1;
  v10 = a10;
  v167 = *MEMORY[0x1E69E9840];
  if (*(a10 + 16))
  {
    v11 = a5;
    v13 = 0;
    v14 = &selRef_setOwnerWithIdentity_;
    while (1)
    {
      v146 = *(*(v10 + 32) + 8 * v13);
      v15 = [v146 v14[267]];
      v16 = [v146 v14[267]];
      v17 = !v15 || v16 == 28;
      if (v17)
      {
        break;
      }

      if ([v146 v14[267]] == 2)
      {
        if ([v146 arrayLength] != 1)
        {
          v31 = v146;
          v148 = 0;
          v149 = 0;
          v147 = 0;
          v32 = [v31 arrayLength];
          if ([v31 arrayLength])
          {
            v33 = 0;
            v34 = 1;
            while (1)
            {
              v35 = [objc_msgSend(v31 name)];
              v37 = re::DynamicString::format(&__endptr, "%s[%u]", v36, v35, v34 - 1);
              v38 = (v151 & 1) != 0 ? v153 : v152;
              v154 = 0;
              v155 = &str_67;
              v39 = v148;
              if (v148 <= v33)
              {
                break;
              }

              v40 = re::StringID::operator=(&v149[2 * v33], &v154);
              if (v154)
              {
                if (v154)
                {
                }
              }

              v154 = 0;
              v155 = &str_67;
              if (__endptr && (v151 & 1) != 0)
              {
                (*(*__endptr + 40))();
              }

              v41 = [v31 index];
              v39 = v148;
              if (v148 <= v33)
              {
                goto LABEL_153;
              }

              v149[2 * v33 + 1].n128_u16[0] = v41 + v33;
              v42 = [v31 textureType];
              v39 = v148;
              if (v148 <= v33)
              {
                goto LABEL_157;
              }

              v149[2 * v33 + 1].n128_u16[1] = v42;
              v43 = [v31 textureDataType];
              v39 = v148;
              if (v148 <= v33)
              {
                goto LABEL_161;
              }

              v149[2 * v33 + 1].n128_u16[2] = v43;
              v44 = [v31 isDepthTexture];
              v39 = v148;
              if (v148 <= v33)
              {
                goto LABEL_165;
              }

              v149[2 * v33 + 1].n128_u8[6] = v44;
              v45 = [v31 access];
              v39 = v148;
              if (v148 <= v33)
              {
                goto LABEL_169;
              }

              v149[2 * v33 + 1].n128_u64[1] = v45;
              v33 = v34;
              v46 = [v31 arrayLength] > v34++;
              if (!v46)
              {
                goto LABEL_49;
              }
            }

            v156 = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0;
            v114 = MEMORY[0x1E69E9C10];
            v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v115)
            {
              v116 = 3;
            }

            else
            {
              v116 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = v33;
            *&v157[28] = 2048;
            *&v157[30] = v39;
            _os_log_send_and_compose_impl(v116, &v156, &v160, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v137, v138);
            _os_crash_msg();
            __break(1u);
LABEL_153:
            __endptr = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0;
            v117 = MEMORY[0x1E69E9C10];
            v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v118)
            {
              v119 = 3;
            }

            else
            {
              v119 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = v33;
            *&v157[28] = 2048;
            *&v157[30] = v39;
            _os_log_send_and_compose_impl(v119, &__endptr, &v160, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v137, v138);
            _os_crash_msg();
            __break(1u);
LABEL_157:
            __endptr = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0;
            v120 = MEMORY[0x1E69E9C10];
            v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v121)
            {
              v122 = 3;
            }

            else
            {
              v122 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = v33;
            *&v157[28] = 2048;
            *&v157[30] = v39;
            _os_log_send_and_compose_impl(v122, &__endptr, &v160, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v137, v138);
            _os_crash_msg();
            __break(1u);
LABEL_161:
            __endptr = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0;
            v123 = MEMORY[0x1E69E9C10];
            v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v124)
            {
              v125 = 3;
            }

            else
            {
              v125 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = v33;
            *&v157[28] = 2048;
            *&v157[30] = v39;
            _os_log_send_and_compose_impl(v125, &__endptr, &v160, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v137, v138);
            _os_crash_msg();
            __break(1u);
LABEL_165:
            __endptr = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0;
            v126 = MEMORY[0x1E69E9C10];
            v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v127)
            {
              v128 = 3;
            }

            else
            {
              v128 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = v33;
            *&v157[28] = 2048;
            *&v157[30] = v39;
            _os_log_send_and_compose_impl(v128, &__endptr, &v160, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v137, v138);
            _os_crash_msg();
            __break(1u);
LABEL_169:
            __endptr = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0;
            v86 = MEMORY[0x1E69E9C10];
            v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v129)
            {
              v130 = 3;
            }

            else
            {
              v130 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = v33;
            *&v157[28] = 2048;
            *&v157[30] = v39;
            _os_log_send_and_compose_impl(v130, &__endptr, &v160, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v137, v138);
            _os_crash_msg();
            __break(1u);
            goto LABEL_173;
          }

LABEL_49:
          if (v31)
          {
          }

          v11 = a5;
          if (v148)
          {
            v47 = v149;
            v48 = 32 * v148;
            do
            {
              re::DynamicArray<re::TextureArgument>::add(a4, v47);
              v47 += 2;
              v48 -= 32;
            }

            while (v48);
          }

          re::FixedArray<re::TextureArgument>::deinit(&v147);
          goto LABEL_118;
        }

        v24 = v146;
        v25 = [objc_msgSend(v24 name)];
        *v157 = 0;
        *&v157[8] = &str_67;
        v160 = *v157;
        LOWORD(v161) = [v24 index];
        WORD1(v161) = [v24 textureType];
        WORD2(v161) = [v24 textureDataType];
        BYTE6(v161) = [v24 isDepthTexture];
        *(&v161 + 1) = [v24 access];
        re::DynamicArray<re::TextureArgument>::add(a4, &v160);
        if (*&v160.var0)
        {
          if (!v24)
          {
            goto LABEL_118;
          }

          goto LABEL_97;
        }

LABEL_96:
        if (v24)
        {
          goto LABEL_97;
        }

        goto LABEL_118;
      }

      if ([v146 v14[267]] == 3)
      {
        if ([v146 arrayLength] != 1)
        {
          v78 = v146;
          v79 = strcmp("dynamicSamplers", [objc_msgSend(v78 name)]) == 0;
          v148 = 0;
          v149 = 0;
          v147 = 0;
          v80 = [v78 arrayLength];
          if ([v78 arrayLength])
          {
            v33 = 0;
            v81 = 1;
            while (1)
            {
              v82 = [objc_msgSend(v78 name)];
              v84 = re::DynamicString::format(&__endptr, "%s[%u]", v83, v82, v81 - 1);
              v85 = (v151 & 1) != 0 ? v153 : v152;
              v154 = 0;
              v155 = &str_67;
              v86 = v148;
              if (v148 <= v33)
              {
                break;
              }

              v87 = re::StringID::operator=((v149 + 24 * v33), &v154);
              if (v154)
              {
                if (v154)
                {
                }
              }

              v154 = 0;
              v155 = &str_67;
              if (__endptr && (v151 & 1) != 0)
              {
                (*(*__endptr + 40))();
              }

              v88 = [v78 index];
              v86 = v148;
              if (v148 <= v33)
              {
                goto LABEL_177;
              }

              v89 = v149 + 24 * v33;
              *(v89 + 8) = v88 + v33;
              v89[18] = v79;
              v33 = v81;
              v46 = [v78 arrayLength] > v81++;
              if (!v46)
              {
                goto LABEL_112;
              }
            }

LABEL_173:
            v156 = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0;
            v131 = MEMORY[0x1E69E9C10];
            v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v132)
            {
              v133 = 3;
            }

            else
            {
              v133 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = v33;
            *&v157[28] = 2048;
            *&v157[30] = v86;
            _os_log_send_and_compose_impl(v133, &v156, &v160, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v137, v138);
            _os_crash_msg();
            __break(1u);
LABEL_177:
            __endptr = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0;
            v134 = MEMORY[0x1E69E9C10];
            v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v135)
            {
              v136 = 3;
            }

            else
            {
              v136 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = v33;
            *&v157[28] = 2048;
            *&v157[30] = v86;
            _os_log_send_and_compose_impl(v136, &__endptr, &v160, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v137, v138);
            _os_crash_msg();
            __break(1u);
          }

LABEL_112:
          if (v78)
          {
          }

          v11 = a5;
          if (v148)
          {
            v90 = v149;
            v91 = 24 * v148;
            do
            {
              re::DynamicArray<re::SamplerArgument>::add(a5, v90);
              v90 += 3;
              v91 -= 24;
            }

            while (v91);
          }

          re::FixedArray<re::AttributeArgument>::deinit(&v147);
          goto LABEL_118;
        }

        v137 = a4;
        v24 = v146;
        v29 = [objc_msgSend(v24 name)];
        *v157 = 0;
        *&v157[8] = &str_67;
        v160 = *v157;
        LOWORD(v161) = [v24 index];
        BYTE2(v161) = strncmp("dynamicSampler", [objc_msgSend(v24 name)], 0xEuLL) == 0;
        v30 = re::DynamicArray<re::SamplerArgument>::add(v11, &v160);
        if (*&v160.var0)
        {
        }

        if (v24)
        {
          goto LABEL_97;
        }
      }

LABEL_118:
      v23 = 0;
      *a9 = 0;
LABEL_119:
      if (v146)
      {

        v146 = 0;
      }

      if (v23)
      {
        return;
      }

      ++v13;
      v10 = a10;
      v14 = &selRef_setOwnerWithIdentity_;
      if (*(a10 + 16) <= v13)
      {
        goto LABEL_147;
      }
    }

    v18 = v16;
    if (a7 && [v146 index] - 29 <= 1)
    {
      goto LABEL_118;
    }

    if (a8 && [v146 index] - 1 <= 3)
    {
      if (!re::validateArgumentMatchesStandardResource(&v146))
      {
        v19 = [v146 index];
        re::DynamicString::format(&v160, "Invalid standard resource at slot index %lu.", v20, v19);
        re::makeMaterialBuilderErr(v157, 0x64, &v160);
        *a9 = 1;
        v21 = *v157;
        *v157 = 0;
        *(a9 + 8) = v21;
        v22 = *&v160.var0;
        if (!*&v160.var0)
        {
LABEL_16:
          v23 = 1;
          goto LABEL_119;
        }

LABEL_14:
        if (v160.var1)
        {
          (*(*v22 + 40))(v22, v161);
        }

        goto LABEL_16;
      }

      goto LABEL_118;
    }

    if (v15)
    {
      v27 = [v146 dataTypeDescription];
      if (!v27)
      {
LABEL_82:
        if ([v146 isVertexDescriptorBuffer])
        {
          goto LABEL_118;
        }

        if (!a6)
        {
          v24 = v146;
          *v157 = v24;
          re::makeBufferArgument(&v160, v157);
          v95 = re::DynamicArray<re::BufferArgument>::add(v138, &v160);
          if (*&v160.var0)
          {
            if (*&v160.var0)
            {
            }
          }

          *&v160.var0 = 0;
          v160.var1 = &str_67;
          if (!v24)
          {
            goto LABEL_118;
          }

LABEL_97:

          goto LABEL_118;
        }

        v73 = [objc_msgSend(v146 name)];
        v74 = strlen(v73);
        if (v74 >= 0x15)
        {
          v75 = *v73 == 0x4157524F465F4552 && *(v73 + 1) == 0x4655425F44454452;
          if (v75 && *(v73 + 4) == 1599227206)
          {
            v96 = v74;
            __endptr = 0;
            v97 = strtoull(v73 + 20, &__endptr, 10);
            v99 = __endptr + 1;
            if (__endptr + 1 >= &v73[v96])
            {
              re::DynamicString::format(&v160, "Forwarded buffer argument is malformed: %s. No valid shader function name found.", v98, v73);
              re::makeMaterialBuilderErr(v157, 0x28, &v160);
              *a9 = 1;
              v111 = *v157;
              *v157 = 0;
              *(a9 + 8) = v111;
              v22 = *&v160.var0;
              v11 = a5;
              if (!*&v160.var0)
              {
                goto LABEL_16;
              }

              goto LABEL_14;
            }

            v100 = v97;
            *v157 = 0;
            *&v157[8] = &str_67;
            v101 = v157[0];
            v102 = *&v157[8];
            v160 = *v157;
            *&v161 = v100;
            v103 = [v146 index];
            WORD4(v161) = v103;
            v104 = a6;
            v105 = *(a6 + 8);
            v106 = *(a6 + 16);
            v11 = a5;
            if (v106 >= v105)
            {
              v107 = v106 + 1;
              if (v105 < v106 + 1)
              {
                if (*a6)
                {
                  v108 = 2 * v105;
                  v17 = v105 == 0;
                  v109 = 8;
                  if (!v17)
                  {
                    v109 = v108;
                  }

                  if (v109 <= v107)
                  {
                    v110 = v107;
                  }

                  else
                  {
                    v110 = v109;
                  }

                  re::DynamicArray<re::ForwardedBufferArgument>::setCapacity(a6, v110);
                  v104 = a6;
                }

                else
                {
                  re::DynamicArray<re::ForwardedBufferArgument>::setCapacity(a6, v107);
                  v104 = a6;
                  ++*(a6 + 24);
                }
              }

              v106 = *(v104 + 16);
            }

            v112 = v104;
            v113 = re::StringID::StringID((*(v104 + 32) + 32 * v106), &v160);
            *(v113 + 2) = v161;
            *(v113 + 12) = WORD4(v161);
            ++*(v112 + 16);
            ++*(v112 + 24);
            if (v101)
            {
            }

            goto LABEL_118;
          }
        }

        v24 = v146;
        *v157 = v24;
        re::makeBufferArgument(&v160, v157);
        v77 = re::DynamicArray<re::BufferArgument>::add(v138, &v160);
        if (*&v160.var0)
        {
          if (*&v160.var0)
          {
          }
        }

        *&v160.var0 = 0;
        v160.var1 = &str_67;
        v11 = a5;
        goto LABEL_96;
      }

      v28 = [v27 elementStructType];
    }

    else
    {
      v28 = [v146 bufferStructType];
    }

    if (v28)
    {
      *&v160.var0 = 0;
      v160.var1 = &str_67;
      LOWORD(v161) = 0;
      *(&v161 + 1) = 0;
      LODWORD(v162) = 1;
      *(&v162 + 1) = 0;
      *&v163 = &str_67;
      DWORD2(v163) = 0;
      WORD6(v163) = 0;
      *&v165[16] = 0;
      *&v165[20] = 256;
      *v165 = 0;
      v164 = 0uLL;
      *&v165[5] = 0;
      v166 = 0;
      v49 = [objc_msgSend(v146 name)];
      *v157 = 0;
      *&v157[8] = &str_67;
      v51 = *v157;
      v52 = *&v157[8];
      *v157 = 0;
      *&v157[8] = &str_67;
      var0 = v160.var0;
      var1 = v160.var1;
      *&v160.var0 = v51;
      v160.var1 = v52;
      if (var0)
      {
        if (v157[0])
        {
          if (v157[0])
          {
          }
        }
      }

      v56 = v13;
      if (v18 != 28)
      {
        v56 = [v146 index];
      }

      LOWORD(v161) = v56;
      v11 = a5;
      if (v15)
      {
        v57 = v146;
        __endptr = v57;
        MetalTypeInfoForPointer = re::makeMetalTypeInfoForPointer(&__endptr, v157);
        *(&v161 + 1) = *v157;
        LODWORD(v162) = *&v157[8];
        v59 = *&v157[16];
        v60 = *&v157[24];
        *&v157[16] = 0;
        *&v157[24] = &str_67;
        v61 = BYTE8(v162);
        v62 = v163;
        *(&v162 + 1) = v59;
        *&v163 = v60;
        if (v61)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v57 = v146;
        re::makeMetalTypeInfo([v57 bufferStructType], objc_msgSend(objc_msgSend(v57, sel_name), sel_UTF8String), 0, objc_msgSend(v57, sel_bufferDataSize), v157);
        MetalTypeInfoForPointer = [v57 bufferAlignment];
        *&v157[8] = MetalTypeInfoForPointer;
        *(&v161 + 1) = *v157;
        LODWORD(v162) = MetalTypeInfoForPointer;
        v93 = *&v157[16];
        v92 = *&v157[24];
        *&v157[16] = 0;
        *&v157[24] = &str_67;
        v94 = BYTE8(v162);
        v62 = v163;
        *(&v162 + 1) = v93;
        *&v163 = v92;
        if (v94)
        {
LABEL_65:
        }
      }

      DWORD2(v163) = *&v157[32];
      WORD6(v163) = *&v157[36];
      re::FixedArray<re::MetalTypeInfo>::operator=(&v164, v158);
      *&v165[8] = v159[0];
      *&v165[14] = *(v159 + 6);
      v63 = re::FixedArray<re::MetalTypeInfo>::deinit(v158);
      if (v157[16])
      {
        if (v157[16])
        {
        }
      }

      *&v157[16] = 0;
      *&v157[24] = &str_67;
      if (v57)
      {
      }

      if (v165[20])
      {
        v64 = a3;
      }

      else
      {
        v64 = a2;
      }

      v65 = *(v64 + 16);
      if (v65 >= *(v64 + 8))
      {
        re::DynamicArray<re::TypedArgument>::growCapacity(v64, v65 + 1);
        v65 = *(v64 + 16);
      }

      v66 = *(v64 + 32) + 112 * v65;
      v67 = v160.var0;
      *v66 = *v66 & 0xFFFFFFFFFFFFFFFELL | *&v160.var0 & 1;
      *v66 = *&v160.var0 & 0xFFFFFFFFFFFFFFFELL | v67 & 1;
      *(v66 + 8) = v160.var1;
      *&v160.var0 = 0;
      v160.var1 = &str_67;
      *(v66 + 16) = v161;
      v68 = v162;
      *(v66 + 24) = *(&v161 + 1);
      *(v66 + 32) = v68;
      LOBYTE(v68) = BYTE8(v162);
      *(v66 + 40) = *(v66 + 40) & 0xFFFFFFFFFFFFFFFELL | BYTE8(v162) & 1;
      *(v66 + 40) = *(&v162 + 1) & 0xFFFFFFFFFFFFFFFELL | v68 & 1;
      *(v66 + 48) = v163;
      *(&v162 + 1) = 0;
      *&v163 = &str_67;
      v69 = DWORD2(v163);
      *(v66 + 60) = WORD6(v163);
      *(v66 + 56) = v69;
      *(v66 + 72) = 0;
      *(v66 + 80) = 0;
      *(v66 + 64) = 0;
      *(v66 + 64) = v164;
      *&v164 = 0;
      *(v66 + 72) = *(&v164 + 1);
      *(&v164 + 1) = 0;
      v70 = *(v66 + 80);
      *(v66 + 80) = *v165;
      *v165 = v70;
      v71 = *&v165[8];
      *(v66 + 94) = *&v165[14];
      *(v66 + 88) = v71;
      *(v66 + 104) = v166;
      ++*(v64 + 16);
      ++*(v64 + 24);
      v72 = re::FixedArray<re::MetalTypeInfo>::deinit(&v164);
      if (BYTE8(v162))
      {
        if (BYTE8(v162))
        {
        }
      }

      *(&v162 + 1) = 0;
      *&v163 = &str_67;
      if (*&v160.var0)
      {
        if (*&v160.var0)
        {
        }
      }

      goto LABEL_118;
    }

    goto LABEL_82;
  }

LABEL_147:
  *a9 = 0;
}