void llvm::object::WasmObjectFile::parseCustomSection(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v499 = *MEMORY[0x277D85DE8];
  if (a4 > 7)
  {
    if (a4 != 8)
    {
      if (a4 == 9)
      {
        if (*a3 == 0x72656375646F7270 && *(a3 + 8) == 115)
        {
          *&__dst = v484;
          *(&__dst + 1) = 0x300000000;
          v488 = 0;
          v487 = 0;
          v486 = &v487;
          Varuint32 = readVaruint32(a5, a2, a3);
          if (Varuint32)
          {
            v380 = 0;
            v436 = Varuint32;
            do
            {
              String = readString(v5, v378, v379);
              v452.__r_.__value_.__r.__words[0] = String;
              v452.__r_.__value_.__l.__size_ = v382;
              if (v488)
              {
                std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v486, &v452, &v452);
                if ((v383 & 1) == 0)
                {
                  goto LABEL_644;
                }
              }

              else
              {
                v385 = String;
                v386 = v382;
                v387 = DWORD2(__dst);
                if (!DWORD2(__dst))
                {
                  goto LABEL_543;
                }

                v388 = 16 * DWORD2(__dst);
                v389 = (__dst + 8);
                while (*v389 != v386 || v386 && memcmp(*(v389 - 1), v385, v386))
                {
                  v389 += 2;
                  v388 -= 16;
                  if (!v388)
                  {
                    goto LABEL_542;
                  }
                }

                if (v388)
                {
LABEL_644:
                  operator new();
                }

LABEL_542:
                if (v387 >= 3)
                {
                  do
                  {
                    std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v486, (__dst + 16 * v387 - 16), (__dst + 16 * v387 - 16));
                    v387 = --DWORD2(__dst);
                  }

                  while (DWORD2(__dst));
                  std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v486, &v452, &v452);
                }

                else
                {
LABEL_543:
                  llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&__dst, v385, v386);
                }
              }

              switch(v452.__r_.__value_.__l.__size_)
              {
                case 3uLL:
                  v392 = *v452.__r_.__value_.__l.__data_ == 25715 && *(v452.__r_.__value_.__r.__words[0] + 2) == 107;
                  v390 = a2 + 232;
                  if (!v392)
                  {
LABEL_643:
                    operator new();
                  }

                  break;
                case 0xCuLL:
                  v391 = *v452.__r_.__value_.__l.__data_ == 0x65737365636F7270 && *(v452.__r_.__value_.__r.__words[0] + 8) == 2036477284;
                  v390 = a2 + 208;
                  if (!v391)
                  {
                    goto LABEL_643;
                  }

                  break;
                case 8uLL:
                  v390 = a2 + 184;
                  if (*v452.__r_.__value_.__l.__data_ != 0x65676175676E616CLL)
                  {
                    goto LABEL_643;
                  }

                  break;
                default:
                  goto LABEL_643;
              }

              v393 = readVaruint32(v5, v383, v384);
              *&v489 = &v490;
              *(&v489 + 1) = 0x800000000;
              v494 = 0;
              v495 = 0;
              v493 = &v494;
              if (v393)
              {
                v432 = v380;
                v396 = 0;
                v447 = v393;
                do
                {
                  v450[0] = readString(v5, v394, v395);
                  v450[1] = v397;
                  v399 = readString(v5, v397, v398);
                  v401 = v400;
                  if (v495)
                  {
                    std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v493, v450, v450);
                    if ((v394 & 1) == 0)
                    {
                      goto LABEL_616;
                    }
                  }

                  else
                  {
                    v402 = DWORD2(v489);
                    v403 = v450[0];
                    v404 = v450[1];
                    if (!DWORD2(v489))
                    {
                      goto LABEL_575;
                    }

                    v405 = 16 * DWORD2(v489);
                    v406 = (v489 + 8);
                    while (*v406 != v404 || v404 && memcmp(*(v406 - 1), v403, v404))
                    {
                      v406 += 2;
                      v405 -= 16;
                      if (!v405)
                      {
                        goto LABEL_574;
                      }
                    }

                    if (v405)
                    {
LABEL_616:
                      LODWORD(v457[0]) = 3;
                      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
                    }

LABEL_574:
                    if (v402 >= 8)
                    {
                      do
                      {
                        std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v493, (v489 + 16 * v402 - 16), (v489 + 16 * v402 - 16));
                        v402 = --DWORD2(v489);
                      }

                      while (DWORD2(v489));
                      std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v493, v450, v450);
                    }

                    else
                    {
LABEL_575:
                      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v489, v403, v404);
                    }
                  }

                  v407 = v450[1];
                  if (v450[1] > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_658;
                  }

                  if (v450[1] >= 0x17)
                  {
                    operator new();
                  }

                  HIBYTE(v457[2]) = v450[1];
                  if (v450[1])
                  {
                    memmove(v457, v450[0], v450[1]);
                  }

                  v5 = a5;
                  *(v457 + v407) = 0;
                  if (v401 > 0x7FFFFFFFFFFFFFF7)
                  {
LABEL_658:
                    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                  }

                  if (v401 >= 0x17)
                  {
                    operator new();
                  }

                  HIBYTE(p_ULEB128) = v401;
                  if (v401)
                  {
                    memmove(v454, v399, v401);
                  }

                  *(v454 + v401) = 0;
                  v408 = *(v390 + 8);
                  v409 = *(v390 + 16);
                  if (v408 >= v409)
                  {
                    v411 = *v390;
                    v412 = v408 - *v390;
                    v413 = 0xAAAAAAAAAAAAAAABLL * (v412 >> 4) + 1;
                    if (v413 > 0x555555555555555)
                    {
                      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                    }

                    v414 = 0xAAAAAAAAAAAAAAABLL * ((v409 - v411) >> 4);
                    if (2 * v414 > v413)
                    {
                      v413 = 2 * v414;
                    }

                    if (v414 >= 0x2AAAAAAAAAAAAAALL)
                    {
                      v415 = 0x555555555555555;
                    }

                    else
                    {
                      v415 = v413;
                    }

                    if (v415)
                    {
                      if (v415 <= 0x555555555555555)
                      {
                        operator new();
                      }

                      goto LABEL_659;
                    }

                    v416 = 16 * (v412 >> 4);
                    *v416 = *v457;
                    *(v416 + 16) = v457[2];
                    *(v416 + 24) = *v454;
                    *(v416 + 40) = p_ULEB128;
                    v410 = v416 + 48;
                    v417 = v416 - v412;
                    memcpy((v416 - v412), v411, v412);
                    *v390 = v417;
                    *(v390 + 8) = v410;
                    *(v390 + 16) = 0;
                    if (v411)
                    {
                      operator delete(v411);
                    }
                  }

                  else
                  {
                    *v408 = *v457;
                    *(v408 + 16) = v457[2];
                    *(v408 + 24) = *v454;
                    *(v408 + 40) = p_ULEB128;
                    v410 = v408 + 48;
                  }

                  *(v390 + 8) = v410;
                  ++v396;
                }

                while (v396 != v447);
                v418 = v494;
                v380 = v432;
              }

              else
              {
                v418 = 0;
              }

              std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(&v493, v418);
              if (v489 != &v490)
              {
                free(v489);
              }

              ++v380;
            }

            while (v380 != v436);
          }

          if (*(v5 + 8) != *(v5 + 16))
          {
            operator new();
          }

          v420 = a1;
          *a1 = 0;
          std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(&v486, v487);
          if (__dst != v484)
          {
            free(__dst);
          }

          goto LABEL_647;
        }
      }

      else
      {
        if (a4 != 15)
        {
          goto LABEL_444;
        }

        if (*a3 == 0x665F746567726174 && *(a3 + 7) == 0x7365727574616566)
        {
          *&v489 = &v490;
          *(&v489 + 1) = 0x800000000;
          v498 = 0;
          v497 = 0;
          v496 = &v497;
          v193 = readVaruint32(a5, a2, a3);
          if (v193)
          {
            v195 = 0;
            v443 = v193;
            do
            {
              v457[1] = 0;
              v457[2] = 0;
              v458 = 0;
              v196 = *(v5 + 8);
              if (v196 == *(v5 + 16))
              {
LABEL_662:
                llvm::report_fatal_error("EOF while reading uint8", 1, v39);
              }

              *(v5 + 8) = v196 + 1;
              v197 = *v196;
              LOBYTE(v457[0]) = v197;
              v198 = v197 > 0x3D;
              v199 = (1 << v197) & 0x2000280000000000;
              if (v198 || v199 == 0)
              {
                LODWORD(__dst) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "unknown feature policy prefix", &__dst);
              }

              v201 = readString(v5, v194, v39);
              if (v202 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_658;
              }

              v203 = v202;
              if (v202 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v484[0]) = v202;
              if (v202)
              {
                memmove(&__dst, v201, v202);
              }

              *(&v484[-2] + v203) = 0;
              if (SHIBYTE(v458) < 0)
              {
                operator delete(v457[1]);
              }

              *&v457[1] = __dst;
              v458 = v484[0];
              if (v498)
              {
                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v496, &v457[1], &v457[1]);
                if ((v194 & 1) == 0)
                {
                  goto LABEL_625;
                }
              }

              else
              {
                v204 = DWORD2(v489);
                if (!DWORD2(v489))
                {
                  goto LABEL_309;
                }

                v205 = v489;
                if (v458 >= 0)
                {
                  v206 = HIBYTE(v458);
                }

                else
                {
                  v206 = v457[2];
                }

                if (v458 >= 0)
                {
                  v207 = &v457[1];
                }

                else
                {
                  v207 = v457[1];
                }

                v208 = 24 * DWORD2(v489);
                while (1)
                {
                  v209 = *(v205 + 23);
                  v210 = v209;
                  if ((v209 & 0x80u) != 0)
                  {
                    v209 = *(v205 + 8);
                  }

                  if (v209 == v206)
                  {
                    v211 = v210 >= 0 ? v205 : *v205;
                    if (!memcmp(v211, v207, v206))
                    {
                      break;
                    }
                  }

                  v205 += 24;
                  v208 -= 24;
                  if (!v208)
                  {
                    goto LABEL_308;
                  }
                }

                if (v208)
                {
LABEL_625:
                  std::operator+<char>();
                  v421 = std::string::append(&v452, "");
                  v422 = v421->__r_.__value_.__r.__words[2];
                  *v454 = *&v421->__r_.__value_.__l.__data_;
                  p_ULEB128 = v422;
                  v421->__r_.__value_.__l.__size_ = 0;
                  v421->__r_.__value_.__r.__words[2] = 0;
                  v421->__r_.__value_.__r.__words[0] = 0;
                  operator new();
                }

LABEL_308:
                if (v204 >= 8)
                {
                  do
                  {
                    while (1)
                    {
                      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v496, (v489 + 24 * v204 - 24), v489 + 24 * v204 - 24);
                      v204 = DWORD2(v489) - 1;
                      DWORD2(v489) = v204;
                      v212 = v489 + 24 * v204;
                      if (*(v212 + 23) < 0)
                      {
                        break;
                      }

                      if (!v204)
                      {
                        goto LABEL_314;
                      }
                    }

                    operator delete(*v212);
                    v204 = DWORD2(v489);
                  }

                  while (DWORD2(v489));
LABEL_314:
                  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v496, &v457[1], &v457[1]);
                }

                else
                {
LABEL_309:
                  llvm::SmallVectorTemplateBase<std::string,false>::push_back(&v489, &v457[1]);
                }
              }

              v214 = *(a2 + 264);
              v213 = *(a2 + 272);
              if (v214 >= v213)
              {
                v217 = *(a2 + 256);
                v218 = (v214 - v217) >> 5;
                if ((v218 + 1) >> 59)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v219 = v213 - v217;
                v220 = v219 >> 4;
                if (v219 >> 4 <= (v218 + 1))
                {
                  v220 = v218 + 1;
                }

                if (v219 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v221 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v221 = v220;
                }

                if (v221)
                {
                  if (!(v221 >> 59))
                  {
                    operator new();
                  }

                  goto LABEL_659;
                }

                v223 = 32 * v218;
                *(32 * v218) = v457[0];
                if (SHIBYTE(v458) < 0)
                {
                  std::string::__init_copy_ctor_external((32 * v218 + 8), v457[1], v457[2]);
                }

                else
                {
                  *(32 * v218 + 8) = *&v457[1];
                  *(32 * v218 + 0x18) = v458;
                }

                v224 = *(a2 + 256);
                v225 = *(a2 + 264);
                v226 = v223 + v224 - v225;
                if (v225 != v224)
                {
                  v227 = *(a2 + 256);
                  v228 = v223 + v224 - v225;
                  do
                  {
                    *v228 = *v227;
                    v229 = *(v227 + 8);
                    *(v228 + 24) = *(v227 + 24);
                    *(v228 + 8) = v229;
                    *(v227 + 16) = 0;
                    *(v227 + 24) = 0;
                    *(v227 + 8) = 0;
                    v227 += 32;
                    v228 += 32;
                  }

                  while (v227 != v225);
                  do
                  {
                    if (*(v224 + 31) < 0)
                    {
                      operator delete(*(v224 + 8));
                    }

                    v224 += 32;
                  }

                  while (v224 != v225);
                  v224 = *(a2 + 256);
                }

                v222 = v223 + 32;
                *(a2 + 256) = v226;
                *(a2 + 264) = v223 + 32;
                *(a2 + 272) = 0;
                if (v224)
                {
                  operator delete(v224);
                }

                v5 = a5;
              }

              else
              {
                *v214 = v457[0];
                v215 = (v214 + 8);
                if (SHIBYTE(v458) < 0)
                {
                  std::string::__init_copy_ctor_external(v215, v457[1], v457[2]);
                }

                else
                {
                  v216 = *&v457[1];
                  *(v214 + 24) = v458;
                  *&v215->__r_.__value_.__l.__data_ = v216;
                }

                v222 = v214 + 32;
              }

              *(a2 + 264) = v222;
              if (SHIBYTE(v458) < 0)
              {
                operator delete(v457[1]);
              }

              ++v195;
            }

            while (v195 != v443);
          }

          if (*(v5 + 8) != *(v5 + 16))
          {
            operator new();
          }

          v420 = a1;
          *a1 = 0;
          std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&v496, v497);
          llvm::SmallVector<std::string,2u>::~SmallVector(&v489);
          goto LABEL_647;
        }
      }

LABEL_461:
      if (*a3 == 1869374834 && *(a3 + 4) == 11875)
      {
        v333 = readVaruint32(a5, a2, a3);
        v336 = *(a2 + 72);
        if (0x8E38E38E38E38E39 * ((*(a2 + 80) - v336) >> 3) <= v333)
        {
          LODWORD(v489) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid section index", &v489);
        }

        v337 = v333;
        v338 = readVaruint32(v5, v334, v335);
        if (v338)
        {
          v341 = v338;
          v342 = 0;
          v343 = v336 + 72 * v337;
          v446 = *(v343 + 40);
          while (1)
          {
            v344 = readVaruint32(v5, v339, v340);
            v347 = readVaruint32(v5, v345, v346);
            if (v347 < v342)
            {
              LODWORD(v489) = 3;
              goto LABEL_623;
            }

            v342 = v347;
            v350 = readVaruint32(v5, v348, v349);
            v351 = v350;
            switch(v344)
            {
              case 0u:
              case 1u:
              case 2u:
              case 0xCu:
              case 0x12u:
              case 0x13u:
              case 0x18u:
                v352 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v352) >> 5) || *(*(v352 + 32 * v350) + 16))
                {
                  goto LABEL_628;
                }

                Varint32 = 0;
                goto LABEL_480;
              case 3u:
              case 4u:
              case 5u:
              case 0xBu:
              case 0x15u:
              case 0x17u:
                v354 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v354) >> 5) || *(*(v354 + 32 * v350) + 16) != 1)
                {
                  goto LABEL_626;
                }

                Varint32 = readVarint32(v5, v339, v340);
                goto LABEL_480;
              case 6u:
                if (v350 < ((*(a2 + 288) - *(a2 + 280)) >> 6))
                {
                  goto LABEL_524;
                }

                LODWORD(v489) = 3;
                v423 = "invalid relocation type index";
                goto LABEL_627;
              case 7u:
                v371 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v371) >> 5) || *(*(v371 + 32 * v350) + 16) >= 3u)
                {
                  goto LABEL_650;
                }

                goto LABEL_524;
              case 8u:
                v374 = *(a2 + 536);
                if (v350 < ((*(a2 + 544) - v374) >> 5) && !*(*(v374 + 32 * v350) + 16))
                {
                  goto LABEL_519;
                }

                goto LABEL_628;
              case 9u:
                v370 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v370) >> 5) || *(*(v370 + 32 * v350) + 16) != 3)
                {
                  LODWORD(v489) = 3;
                  v330 = "invalid relocation section index";
LABEL_456:
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, v330, &v489);
                }

LABEL_519:
                Varint32 = readVarint32(v5, v339, v340);
LABEL_485:
                v356 = 4;
LABEL_486:
                if (v344 <= 0x16u && ((1 << v344) & 0x490000) != 0)
                {
LABEL_488:
                  v356 = 8;
                }

LABEL_489:
                if (v356 + v342 > v446)
                {
                  LODWORD(v489) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid relocation offset", &v489);
                }

                v357 = *(v343 + 56);
                v358 = *(v343 + 64);
                if (v357 >= v358)
                {
                  v360 = *(v343 + 48);
                  v361 = 0xAAAAAAAAAAAAAAABLL * ((v357 - v360) >> 3);
                  v362 = v361 + 1;
                  if (v361 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                  }

                  v363 = 0xAAAAAAAAAAAAAAABLL * ((v358 - v360) >> 3);
                  if (2 * v363 > v362)
                  {
                    v362 = 2 * v363;
                  }

                  if (v363 >= 0x555555555555555)
                  {
                    v364 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v364 = v362;
                  }

                  if (v364)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmRelocation>>(v364);
                  }

                  v365 = 24 * v361;
                  *v365 = v344;
                  *(v365 + 1) = 0;
                  *(v365 + 3) = 0;
                  *(v365 + 4) = v351;
                  *(v365 + 8) = v342;
                  *(v365 + 16) = Varint32;
                  v359 = 24 * v361 + 24;
                  v366 = *(v343 + 48);
                  v367 = *(v343 + 56) - v366;
                  v368 = v365 - v367;
                  memcpy((v365 - v367), v366, v367);
                  v369 = *(v343 + 48);
                  *(v343 + 48) = v368;
                  *(v343 + 56) = v359;
                  *(v343 + 64) = 0;
                  if (v369)
                  {
                    operator delete(v369);
                  }

                  v5 = a5;
                }

                else
                {
                  *v357 = v344;
                  *(v357 + 1) = 0;
                  *(v357 + 3) = 0;
                  *(v357 + 4) = v351;
                  v359 = v357 + 24;
                  *(v357 + 8) = v342;
                  *(v357 + 16) = Varint32;
                }

                *(v343 + 56) = v359;
                if (!--v341)
                {
                  goto LABEL_611;
                }

                break;
              case 0xAu:
                v375 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v375) >> 5) || *(*(v375 + 32 * v350) + 16) != 4)
                {
                  LODWORD(v489) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid relocation tag index", &v489);
                }

                goto LABEL_524;
              case 0xDu:
                v376 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v376) >> 5) || *(*(v376 + 32 * v350) + 16) != 2)
                {
LABEL_650:
                  LODWORD(v489) = 3;
LABEL_623:
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
                }

                Varint32 = 0;
                goto LABEL_485;
              case 0xEu:
              case 0xFu:
              case 0x10u:
              case 0x11u:
              case 0x19u:
                v355 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v355) >> 5) || *(*(v355 + 32 * v350) + 16) != 1)
                {
LABEL_626:
                  LODWORD(v489) = 3;
                  v423 = "invalid relocation data index";
LABEL_627:
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, v423, &v489);
                }

                Varint32 = readLEB128(v5, v339, v340);
LABEL_480:
                if ((v344 - 14) > 3u)
                {
                  v356 = 5;
                }

                else
                {
                  v356 = qword_2750C7FB0[(v344 - 14)];
                }

                if (v344 <= 0x17u && ((1 << v344) & 0x802324) != 0)
                {
                  goto LABEL_485;
                }

                goto LABEL_486;
              case 0x14u:
                v373 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v373) >> 5) || *(*(v373 + 32 * v350) + 16) != 5)
                {
                  LODWORD(v489) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid relocation table index", &v489);
                }

LABEL_524:
                Varint32 = 0;
                v356 = 5;
                goto LABEL_489;
              case 0x16u:
                v372 = *(a2 + 536);
                if (v350 >= ((*(a2 + 544) - v372) >> 5) || *(*(v372 + 32 * v350) + 16))
                {
LABEL_628:
                  LODWORD(v489) = 3;
                  v424 = "invalid relocation function index";
                  goto LABEL_640;
                }

                Varint32 = readLEB128(v5, v339, v340);
                goto LABEL_488;
              default:
                *&v489 = "invalid relocation type: ";
                v490 = v344;
                goto LABEL_618;
            }
          }
        }

LABEL_611:
        if (*(v5 + 8) != *(v5 + 16))
        {
          LODWORD(v489) = 3;
          goto LABEL_623;
        }
      }

      goto LABEL_648;
    }

    if (*a3 != 0x302E6B6E696C7964)
    {
      goto LABEL_461;
    }

    *(a2 + 589) = 1;
    v262 = *(a5 + 8);
    v263 = *(a5 + 16);
    if (v262 >= v263)
    {
      if (v262 != v263)
      {
        LODWORD(v489) = 3;
        llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "dylink.0 section ended prematurely", &v489);
      }

      goto LABEL_648;
    }

    v445 = *(a5 + 16);
    while (1)
    {
      *(v5 + 8) = v262 + 1;
      *(v5 + 16) = v263;
      v264 = *v262;
      v265 = *(v5 + 8) + readVaruint32(v5, a2, a3);
      *(v5 + 16) = v265;
      if (v264 > 2)
      {
        if (v264 == 3)
        {
          v298 = readVaruint32(v5, a2, a3);
          if (v298)
          {
            v299 = v298;
            do
            {
              v300 = readString(v5, a2, a3);
              v302 = v301;
              v304 = readVaruint32(v5, v301, v303);
              v306 = *(a2 + 168);
              v305 = *(a2 + 176);
              if (v306 >= v305)
              {
                v308 = *(a2 + 160);
                v309 = v306 - v308;
                v310 = 0xAAAAAAAAAAAAAAABLL * ((v306 - v308) >> 3);
                v311 = v310 + 1;
                if (v310 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v312 = 0xAAAAAAAAAAAAAAABLL * ((v305 - v308) >> 3);
                if (2 * v312 > v311)
                {
                  v311 = 2 * v312;
                }

                if (v312 >= 0x555555555555555)
                {
                  v313 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v313 = v311;
                }

                if (v313)
                {
                  if (v313 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

LABEL_659:
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v314 = 24 * v310;
                *v314 = v300;
                *(v314 + 8) = v302;
                *(v314 + 16) = v304;
                v307 = 24 * v310 + 24;
                v315 = (24 * v310 - v309);
                memcpy(v315, v308, v309);
                *(a2 + 160) = v315;
                *(a2 + 168) = v307;
                *(a2 + 176) = 0;
                if (v308)
                {
                  operator delete(v308);
                }
              }

              else
              {
                *v306 = v300;
                *(v306 + 8) = v302;
                v307 = v306 + 24;
                *(v306 + 16) = v304;
              }

              *(a2 + 168) = v307;
              --v299;
            }

            while (v299);
          }

          goto LABEL_441;
        }

        if (v264 == 4)
        {
          v269 = readVaruint32(v5, a2, a3);
          if (v269)
          {
            v270 = v269;
            while (1)
            {
              v271 = readString(v5, a2, a3);
              v273 = v272;
              v275 = readString(v5, v272, v274);
              v276 = v5;
              v278 = v277;
              v280 = readVaruint32(v276, v277, v279);
              v281 = *(a2 + 144);
              v282 = *(a2 + 152);
              if (v281 >= v282)
              {
                v284 = *(a2 + 136);
                v285 = v281 - v284;
                v286 = 0xCCCCCCCCCCCCCCCDLL * ((v281 - v284) >> 3);
                v287 = v286 + 1;
                if (v286 + 1 > 0x666666666666666)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v288 = 0xCCCCCCCCCCCCCCCDLL * ((v282 - v284) >> 3);
                if (2 * v288 > v287)
                {
                  v287 = 2 * v288;
                }

                if (v288 >= 0x333333333333333)
                {
                  v289 = 0x666666666666666;
                }

                else
                {
                  v289 = v287;
                }

                if (v289)
                {
                  if (v289 <= 0x666666666666666)
                  {
                    operator new();
                  }

                  goto LABEL_659;
                }

                v290 = 40 * v286;
                *v290 = v271;
                *(v290 + 8) = v273;
                *(v290 + 16) = v275;
                *(v290 + 24) = v278;
                *(v290 + 32) = v280;
                v283 = 40 * v286 + 40;
                v291 = (40 * v286 - v285);
                memcpy(v291, v284, v285);
                *(a2 + 136) = v291;
                *(a2 + 144) = v283;
                *(a2 + 152) = 0;
                if (v284)
                {
                  operator delete(v284);
                }
              }

              else
              {
                *v281 = v271;
                *(v281 + 8) = v273;
                *(v281 + 16) = v275;
                *(v281 + 24) = v278;
                v283 = v281 + 40;
                *(v281 + 32) = v280;
              }

              v5 = a5;
              *(a2 + 144) = v283;
              if (!--v270)
              {
                goto LABEL_441;
              }
            }
          }

          goto LABEL_441;
        }
      }

      else
      {
        if (v264 == 1)
        {
          *(a2 + 96) = readVaruint32(v5, a2, a3);
          *(a2 + 100) = readVaruint32(v5, v292, v293);
          *(a2 + 104) = readVaruint32(v5, v294, v295);
          *(a2 + 108) = readVaruint32(v5, v296, v297);
          goto LABEL_441;
        }

        if (v264 == 2)
        {
          v266 = readVaruint32(v5, a2, a3);
          if (v266)
          {
            v267 = v266;
            do
            {
              --v267;
              *&v489 = readString(v5, a2, a3);
              *(&v489 + 1) = v268;
              std::vector<llvm::StringRef>::push_back[abi:nn200100](a2 + 112, &v489);
            }

            while (v267);
          }

          goto LABEL_441;
        }
      }

      *(v5 + 8) = v265;
LABEL_441:
      v262 = *(v5 + 8);
      if (v262 != *(v5 + 16))
      {
        operator new();
      }

      v263 = v445;
      if (v262 >= v445)
      {
        goto LABEL_648;
      }
    }
  }

  if (a4 == 4)
  {
    if (*a3 != 1701667182)
    {
      goto LABEL_648;
    }

    __dst = 0uLL;
    LODWORD(v484[0]) = 0;
    memset(v457, 0, 20);
    v454[0] = 0;
    v454[1] = 0;
    LODWORD(p_ULEB128) = 0;
    v230 = *(a5 + 8);
    while (1)
    {
      v231 = *(v5 + 16);
      if (v230 >= v231)
      {
        break;
      }

      *(v5 + 8) = v230 + 1;
      v232 = *v230;
      v233 = readVaruint32(v5, a2, a3);
      v234 = v232 > 9 || ((1 << v232) & 0x282) == 0;
      v444 = (*(v5 + 8) + v233);
      if (v234)
      {
        *(v5 + 8) += v233;
      }

      else
      {
        v235 = readVaruint32(v5, a2, a3);
        if (v235)
        {
          for (i = v235; i; --i)
          {
            v237 = readVaruint32(v5, a2, a3);
            v240 = readString(v5, v238, v239);
            v242 = v241;
            if (v232 == 7)
            {
              v452.__r_.__value_.__r.__words[0] = v237;
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v457, &v452, &v489);
              if ((v490 & 1) == 0)
              {
                LODWORD(v489) = 3;
                v425 = "global named more than once";
                goto LABEL_636;
              }

              if (*(a2 + 672) + ((*(a2 + 360) - *(a2 + 352)) >> 6) <= v237 || v242 == 0)
              {
                LODWORD(v489) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid global name entry", &v489);
              }

              v246 = 1;
            }

            else if (v232 == 1)
            {
              v452.__r_.__value_.__r.__words[0] = v237;
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&__dst, &v452, &v489);
              if ((v490 & 1) == 0)
              {
                LODWORD(v489) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "function named more than once", &v489);
              }

              v243 = *(a2 + 680);
              v244 = *(a2 + 512);
              if (v243 + ((*(a2 + 520) - v244) >> 7) <= v237 || v242 == 0)
              {
                LODWORD(v489) = 3;
                v425 = "invalid function name entry";
LABEL_636:
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, v425, &v489);
              }

              v246 = 0;
              v247 = v237 >= v243;
              v248 = v237 - v243;
              if (v247)
              {
                v249 = v244 + (v248 << 7);
                *(v249 + 104) = v240;
                *(v249 + 112) = v242;
              }
            }

            else
            {
              v452.__r_.__value_.__r.__words[0] = v237;
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v454, &v452, &v489);
              if ((v490 & 1) == 0)
              {
                LODWORD(v489) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "segment named more than once", &v489);
              }

              if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 480) - *(a2 + 472)) >> 3) < v237)
              {
                LODWORD(v489) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
              }

              v246 = 2;
            }

            v251 = *(a2 + 568);
            v252 = *(a2 + 576);
            if (v251 >= v252)
            {
              v254 = *(a2 + 560);
              v255 = v251 - v254;
              v256 = 0xAAAAAAAAAAAAAAABLL * ((v251 - v254) >> 3);
              v257 = v256 + 1;
              if (v256 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v258 = 0xAAAAAAAAAAAAAAABLL * ((v252 - v254) >> 3);
              if (2 * v258 > v257)
              {
                v257 = 2 * v258;
              }

              if (v258 >= 0x555555555555555)
              {
                v259 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v259 = v257;
              }

              if (v259)
              {
                if (v259 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                goto LABEL_659;
              }

              v260 = 24 * v256;
              *v260 = v246;
              *(v260 + 4) = v237;
              *(v260 + 8) = v240;
              *(v260 + 16) = v242;
              v253 = 24 * v256 + 24;
              v261 = (24 * v256 - v255);
              memcpy(v261, v254, v255);
              *(a2 + 560) = v261;
              *(a2 + 568) = v253;
              *(a2 + 576) = 0;
              if (v254)
              {
                operator delete(v254);
              }

              v5 = a5;
            }

            else
            {
              *v251 = v246;
              *(v251 + 4) = v237;
              v253 = v251 + 24;
              *(v251 + 8) = v240;
              *(v251 + 16) = v242;
            }

            *(a2 + 568) = v253;
          }
        }
      }

      v230 = *(v5 + 8);
      if (v230 != v444)
      {
        LODWORD(v489) = 3;
        llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "name sub-section ended prematurely", &v489);
      }
    }

    if (v230 != v231)
    {
      LODWORD(v489) = 3;
      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "name section ended prematurely", &v489);
    }

    v420 = a1;
    *a1 = 0;
    MEMORY[0x277C69E30](v454[0], 8);
    MEMORY[0x277C69E30](v457[0], 8);
    MEMORY[0x277C69E30](__dst, 8);
LABEL_647:
    if (*v420)
    {
      return;
    }

    goto LABEL_648;
  }

  if (a4 == 6)
  {
    if (*a3 == 1768716644 && *(a3 + 4) == 27502)
    {
      *(a2 + 589) = 1;
      *(a2 + 96) = readVaruint32(a5, a2, a3);
      *(a2 + 100) = readVaruint32(v5, v317, v318);
      *(a2 + 104) = readVaruint32(v5, v319, v320);
      *(a2 + 108) = readVaruint32(v5, v321, v322);
      v325 = readVaruint32(v5, v323, v324);
      if (v325)
      {
        v328 = v325;
        do
        {
          --v328;
          *&v489 = readString(v5, v326, v327);
          *(&v489 + 1) = v329;
          std::vector<llvm::StringRef>::push_back[abi:nn200100](a2 + 112, &v489);
        }

        while (v328);
      }

      if (*(v5 + 8) != *(v5 + 16))
      {
        LODWORD(v489) = 3;
        v330 = "dylink section ended prematurely";
        goto LABEL_456;
      }

      goto LABEL_648;
    }

    goto LABEL_461;
  }

  if (a4 != 7)
  {
LABEL_444:
    if (a4 >= 6)
    {
      goto LABEL_461;
    }

LABEL_648:
    *a1 = 0;
    return;
  }

  if (*a3 != 1802398060 || *(a3 + 3) != 1735289195)
  {
    goto LABEL_461;
  }

  *(a2 + 588) = 1;
  v8 = readVaruint32(a5, a2, a3);
  *(a2 + 592) = v8;
  v11 = ")";
  if (v8 != 2)
  {
    v454[0] = "unexpected metadata version: ";
    p_ULEB128 = v8;
    v456 = 2051;
    v457[0] = v454;
    v457[2] = " (Expected: ";
    v419 = 770;
    v459 = 770;
    *&__dst = v457;
    v484[0] = 2;
    v485 = 2050;
    *&v489 = &__dst;
    v490 = ")";
    goto LABEL_619;
  }

  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  v426 = (a2 + 624);
  v427 = v13;
  while (1)
  {
    if (v12 >= v13)
    {
      if (v12 != v13)
      {
        LODWORD(v489) = 3;
        v424 = "linking section ended prematurely";
LABEL_640:
        llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, v424, &v489);
      }

      goto LABEL_648;
    }

    *(v5 + 8) = v12 + 1;
    *(v5 + 16) = v13;
    v14 = *v12;
    v15 = *(v5 + 8) + readVaruint32(v5, v9, v10);
    *(v5 + 16) = v15;
    if (v14 <= 6)
    {
      if (v14 == 5)
      {
        v139 = readVaruint32(v5, v9, v10);
        if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 480) - *(a2 + 472)) >> 3) < v139)
        {
          LODWORD(v489) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "too many segment names", &v489);
        }

        if (v139)
        {
          v140 = 0;
          v141 = 104 * v139;
          do
          {
            v142 = readString(v5, v9, v10);
            v143 = *(a2 + 472) + v140;
            *(v143 + 72) = v142;
            *(v143 + 80) = v144;
            *(*(a2 + 472) + v140 + 88) = readVaruint32(v5, v144, v145);
            *(*(a2 + 472) + v140 + 92) = readVaruint32(v5, v146, v147);
            v140 += 104;
          }

          while (v141 != v140);
        }
      }

      else
      {
        if (v14 != 6)
        {
          goto LABEL_189;
        }

        v16 = readVaruint32(v5, v9, v10);
        if (v16 > ((*(a2 + 616) - *(a2 + 600)) >> 3))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>(v16);
        }

        if (v16)
        {
          while (1)
          {
            v17 = readVaruint32(v5, v9, v10);
            v20 = readVaruint32(v5, v18, v19);
            v21 = v20;
            v22 = *(a2 + 536);
            if (v20 >= ((*(a2 + 544) - v22) >> 5) || *(*(v22 + 32 * v20) + 16))
            {
              break;
            }

            v23 = *(a2 + 608);
            v24 = *(a2 + 616);
            if (v23 >= v24)
            {
              v26 = *(a2 + 600);
              v27 = (v23 - v26) >> 3;
              if ((v27 + 1) >> 61)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v28 = v24 - v26;
              v29 = v28 >> 2;
              if (v28 >> 2 <= (v27 + 1))
              {
                v29 = v27 + 1;
              }

              if (v28 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v29;
              }

              if (v30)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>(v30);
              }

              *(8 * v27) = v17 | (v21 << 32);
              v25 = 8 * v27 + 8;
              v31 = *(a2 + 600);
              v32 = *(a2 + 608) - v31;
              v33 = (8 * v27 - v32);
              memcpy(v33, v31, v32);
              v34 = *(a2 + 600);
              *(a2 + 600) = v33;
              *(a2 + 608) = v25;
              *(a2 + 616) = 0;
              if (v34)
              {
                operator delete(v34);
              }
            }

            else
            {
              *v23 = v17 | (v20 << 32);
              v25 = (v23 + 1);
            }

            *(a2 + 608) = v25;
            if (!--v16)
            {
              goto LABEL_258;
            }
          }

          *&v489 = "invalid function symbol: ";
          v490 = v20;
LABEL_618:
          v419 = 2051;
LABEL_619:
          v492 = v419;
          operator new();
        }
      }

      goto LABEL_258;
    }

    if (v14 != 7)
    {
      break;
    }

    v148 = readVaruint32(v5, v9, v10);
    __dst = 0uLL;
    v484[0] = 0x800000000;
    if (v148)
    {
      v151 = v148;
      for (j = 0; j != v151; ++j)
      {
        v154 = readString(v5, v149, v150);
        v155 = v153;
        if (!v153 || (llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace<>(&__dst, v154, v153), (v156 & 1) == 0))
        {
          *&v489 = "bad/duplicate COMDAT name ";
          v490 = v154;
          v491 = v155;
          v492 = 1283;
          operator new();
        }

        v158 = *(a2 + 632);
        v159 = *(a2 + 640);
        if (v158 >= v159)
        {
          v161 = (v158 - *v426) >> 4;
          v162 = v161 + 1;
          if ((v161 + 1) >> 60)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v163 = v159 - *v426;
          if (v163 >> 3 > v162)
          {
            v162 = v163 >> 3;
          }

          if (v163 >= 0x7FFFFFFFFFFFFFF0)
          {
            v164 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v164 = v162;
          }

          if (v164)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(v426, v164);
          }

          v165 = (16 * v161);
          *v165 = v154;
          v165[1] = v155;
          v160 = 16 * v161 + 16;
          v166 = *(a2 + 624);
          v167 = *(a2 + 632) - v166;
          v168 = v165 - v167;
          memcpy(v165 - v167, v166, v167);
          v169 = *(a2 + 624);
          *(a2 + 624) = v168;
          *(a2 + 632) = v160;
          *(a2 + 640) = 0;
          if (v169)
          {
            operator delete(v169);
          }
        }

        else
        {
          *v158 = v154;
          v158[1] = v155;
          v160 = (v158 + 2);
        }

        *(a2 + 632) = v160;
        if (readVaruint32(v5, v156, v157))
        {
          LODWORD(v489) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "unsupported COMDAT flags", &v489);
        }

        v172 = readVaruint32(v5, v170, v171);
        if (v172)
        {
          for (k = v172; k; --k)
          {
            v174 = readVaruint32(v5, v149, v150);
            v177 = readVaruint32(v5, v175, v176);
            if (v174)
            {
              if (v174 == 1)
              {
                v181 = *(a2 + 680);
                if (v177 < v181 || (v182 = *(a2 + 512), v181 + ((*(a2 + 520) - v182) >> 7) <= v177))
                {
                  LODWORD(v489) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "COMDAT function index out of range", &v489);
                }

                v183 = v182 + ((v177 - v181) << 7);
                v184 = *(v183 + 120);
                v180 = (v183 + 120);
                if (v184 != -1)
                {
                  LODWORD(v489) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "function in two COMDATs", &v489);
                }
              }

              else
              {
                if (v174 != 5)
                {
                  LODWORD(v489) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid COMDAT entry type", &v489);
                }

                v178 = *(a2 + 72);
                if (0x8E38E38E38E38E39 * ((*(a2 + 80) - v178) >> 3) <= v177)
                {
                  LODWORD(v489) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "COMDAT section index out of range", &v489);
                }

                v179 = (v178 + 72 * v177);
                if (*v179)
                {
                  LODWORD(v489) = 3;
                  v188 = a1;
                  v189 = "non-custom section in a COMDAT";
LABEL_237:
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(v188, v189, &v489);
                }

                v180 = v179 + 6;
              }
            }

            else
            {
              v185 = *(a2 + 472);
              if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 480) - v185) >> 3) <= v177)
              {
                LODWORD(v489) = 3;
                v188 = a1;
                v189 = "COMDAT data index out of range";
                goto LABEL_237;
              }

              v186 = v185 + 104 * v177;
              v187 = *(v186 + 96);
              v180 = (v186 + 96);
              if (v187 != -1)
              {
                LODWORD(v489) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "data segment in two COMDATs", &v489);
              }
            }

            *v180 = j;
          }
        }
      }
    }

    *a1 = 0;
    llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(&__dst);
    if (*a1)
    {
      return;
    }

LABEL_258:
    v12 = *(v5 + 8);
    v13 = v427;
    if (v12 != *(v5 + 16))
    {
      LODWORD(v489) = 3;
      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "linking sub-section ended prematurely", &v489);
    }
  }

  if (v14 != 8)
  {
LABEL_189:
    *(v5 + 8) = v15;
    goto LABEL_258;
  }

  v35 = readVaruint32(v5, v9, v10);
  v36 = v35;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 664) - *(a2 + 648)) >> 3) < v35)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSymbolInfo>>(v35);
  }

  if (v35 > ((*(a2 + 552) - *(a2 + 536)) >> 5))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSymbol>>(v35);
  }

  v479[0] = 0;
  v479[1] = 0;
  v479[2] = 0x800000000;
  v476 = 0;
  v477 = 0;
  v478 = 0;
  v473 = 0;
  v474 = 0;
  v475 = 0;
  v470 = 0;
  v471 = 0;
  v472 = 0;
  v37 = (*(a2 + 408) - *(a2 + 400)) >> 3;
  __p = 0;
  v468 = 0;
  v469 = 0;
  std::vector<llvm::wasm::WasmImport *>::reserve(&v476, 0x8E38E38E38E38E39 * v37);
  std::vector<llvm::wasm::WasmImport *>::reserve(&v473, 0x8E38E38E38E38E39 * ((*(a2 + 408) - *(a2 + 400)) >> 3));
  std::vector<llvm::wasm::WasmImport *>::reserve(&v470, 0x8E38E38E38E38E39 * ((*(a2 + 408) - *(a2 + 400)) >> 3));
  std::vector<llvm::wasm::WasmImport *>::reserve(&__p, 0x8E38E38E38E38E39 * ((*(a2 + 408) - *(a2 + 400)) >> 3));
  v41 = *(a2 + 400);
  v40 = *(a2 + 408);
  if (v41 != v40)
  {
    v437 = v36;
    v42 = v468;
    v43 = v471;
    v439 = v472;
    v441 = v469;
    __src = __p;
    v429 = v470;
    v11 = v477;
    v433 = v475;
    v434 = v478;
    v44 = v474;
    v430 = v476;
    v431 = v473;
    while (1)
    {
      v45 = *(v41 + 32);
      if (v45 > 2)
      {
        if (v45 == 3)
        {
          if (v11 >= v434)
          {
            v58 = v11 - v430;
            v59 = (v11 - v430) >> 3;
            v60 = v59 + 1;
            if ((v59 + 1) >> 61)
            {
LABEL_665:
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            if ((v434 - v430) >> 2 > v60)
            {
              v60 = (v434 - v430) >> 2;
            }

            if (v434 - v430 >= 0x7FFFFFFFFFFFFFF8)
            {
              v61 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v60;
            }

            if (v61)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v61);
            }

            v434 = 0;
            *(8 * v59) = v41;
            v11 = (8 * v59 + 8);
            memcpy(0, v430, v58);
            if (v430)
            {
              operator delete(v430);
            }

            v430 = 0;
            goto LABEL_100;
          }

          *v11 = v41;
          v11 += 8;
        }

        else if (v45 == 4)
        {
          if (v43 >= v439)
          {
            v50 = v43 - v429;
            v51 = (v43 - v429) >> 3;
            v52 = v51 + 1;
            if ((v51 + 1) >> 61)
            {
              goto LABEL_665;
            }

            if ((v439 - v429) >> 2 > v52)
            {
              v52 = (v439 - v429) >> 2;
            }

            if (v439 - v429 >= 0x7FFFFFFFFFFFFFF8)
            {
              v53 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v53 = v52;
            }

            if (v53)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v53);
            }

            v439 = 0;
            *(8 * v51) = v41;
            v43 = (8 * v51 + 8);
            memcpy(0, v429, v50);
            if (v429)
            {
              operator delete(v429);
            }

            v429 = 0;
            goto LABEL_100;
          }

          *v43 = v41;
          v43 += 8;
        }
      }

      else if (*(v41 + 32))
      {
        if (v45 == 1)
        {
          if (v42 >= v441)
          {
            v46 = v42 - __src;
            v47 = (v42 - __src) >> 3;
            v48 = v47 + 1;
            if ((v47 + 1) >> 61)
            {
              goto LABEL_665;
            }

            if ((v441 - __src) >> 2 > v48)
            {
              v48 = (v441 - __src) >> 2;
            }

            if (v441 - __src >= 0x7FFFFFFFFFFFFFF8)
            {
              v49 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v48;
            }

            if (v49)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v49);
            }

            v441 = 0;
            *(8 * v47) = v41;
            v42 = (8 * v47 + 8);
            memcpy(0, __src, v46);
            if (__src)
            {
              operator delete(__src);
            }

            __src = 0;
LABEL_100:
            v5 = a5;
            goto LABEL_101;
          }

          *v42 = v41;
          v42 += 8;
        }
      }

      else
      {
        if (v44 >= v433)
        {
          v54 = v44 - v431;
          v55 = (v44 - v431) >> 3;
          v56 = v55 + 1;
          if ((v55 + 1) >> 61)
          {
            goto LABEL_665;
          }

          if ((v433 - v431) >> 2 > v56)
          {
            v56 = (v433 - v431) >> 2;
          }

          if (v433 - v431 >= 0x7FFFFFFFFFFFFFF8)
          {
            v57 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v57);
          }

          v433 = 0;
          *(8 * v55) = v41;
          v44 = (8 * v55 + 8);
          memcpy(0, v431, v54);
          if (v431)
          {
            operator delete(v431);
          }

          v431 = 0;
          goto LABEL_100;
        }

        *v44 = v41;
        v44 += 8;
      }

LABEL_101:
      v41 += 72;
      if (v41 == v40)
      {
        v468 = v42;
        v469 = v441;
        __p = __src;
        v471 = v43;
        v472 = v439;
        v470 = v429;
        v477 = v11;
        v478 = v434;
        v475 = v433;
        v476 = v430;
        v473 = v431;
        v474 = v44;
        v36 = v437;
        break;
      }
    }
  }

  if (v36)
  {
    while (2)
    {
      v438 = v36;
      v62 = *(v5 + 8);
      if (v62 == *(v5 + 16))
      {
        goto LABEL_662;
      }

      *(v5 + 8) = v62 + 1;
      v63 = *v62;
      v440 = readVaruint32(v5, v38, v39);
      v66 = v440 & 0x10;
      v442 = v63;
      if (v63 > 2)
      {
        if (v63 == 3)
        {
          if ((v440 & 3) != 2)
          {
            operator new();
          }

          LODWORD(v11) = readVaruint32(v5, v64, v65);
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v73 = 0;
          v435 = 0;
          v87 = *(a2 + 72) + 72 * v11;
          v70 = *(v87 + 8);
          v71 = *(v87 + 16);
          goto LABEL_157;
        }

        if (v63 != 4)
        {
          if (v63 != 5)
          {
            *&v489 = "invalid symbol type: ";
            v490 = v63;
            v492 = 2051;
            operator new();
          }

          v79 = readVaruint32(v5, v64, v65);
          v80 = *(a2 + 676);
          if (v80 + 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 312) - *(a2 + 304)) >> 3) <= v79 || (LODWORD(v11) = v79, v80 <= v79 == v66 >> 4))
          {
            LODWORD(v489) = 3;
            llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid table symbol index", &v489);
          }

          if ((v440 & 0x10) == 0)
          {
            v81 = readString(v5, v38, v39);
            v70 = v81;
            v71 = v38;
            v82 = *(a2 + 304) + 56 * (v11 - *(a2 + 676));
            v435 = v82 + 8;
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v73 = 0;
            if (!*(v82 + 48))
            {
              *(v82 + 40) = v81;
              *(v82 + 48) = v38;
            }

            goto LABEL_157;
          }

          if ((v440 & 3) == 1)
          {
            LODWORD(v489) = 3;
            v190 = a1;
            v191 = "undefined weak table symbol";
LABEL_243:
            llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(v190, v191, &v489);
          }

          v98 = *(__p + v79);
          if ((v440 & 0x40) != 0)
          {
            v70 = readString(a5, v38, v39);
            v71 = v38;
            v75 = v98[16];
            v481[0] = *(v98 + 17);
            *(v481 + 7) = *(v98 + 3);
            v99 = 1;
          }

          else
          {
            v99 = 0;
            v75 = 0;
            v70 = *(v98 + 2);
            v71 = *(v98 + 3);
          }

          v78 = 0;
          v73 = 0;
          v435 = (v98 + 40);
          goto LABEL_156;
        }

        v94 = readVaruint32(v5, v64, v65);
        v95 = *(a2 + 684);
        if (v95 - 0x5555555555555555 * ((*(a2 + 384) - *(a2 + 376)) >> 3) <= v94 || (LODWORD(v11) = v94, v95 <= v94 == v66 >> 4))
        {
          LODWORD(v489) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid tag symbol index", &v489);
        }

        if ((v440 & 0x10) == 0)
        {
          v96 = readString(v5, v38, v39);
          v70 = v96;
          v71 = v38;
          v97 = *(a2 + 376) + 24 * (v11 - *(a2 + 684));
          v78 = *(a2 + 280) + (*(v97 + 4) << 6);
          if (!*(v97 + 16))
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = 0;
            v73 = 0;
            v435 = 0;
            *(v97 + 8) = v96;
            *(v97 + 16) = v38;
            goto LABEL_157;
          }

LABEL_136:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          goto LABEL_137;
        }

        if ((v440 & 3) == 1)
        {
LABEL_260:
          LODWORD(v489) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "undefined weak global symbol", &v489);
        }

        v100 = v470;
      }

      else
      {
        if (v63)
        {
          if (v63 != 1)
          {
            v67 = readVaruint32(v5, v64, v65);
            v68 = *(a2 + 672);
            if (v68 + ((*(a2 + 360) - *(a2 + 352)) >> 6) <= v67 || (LODWORD(v11) = v67, v68 <= v67 == v66 >> 4))
            {
              LODWORD(v489) = 3;
              v190 = a1;
              v191 = "invalid global symbol index";
              goto LABEL_243;
            }

            if ((v440 & 0x10) == 0)
            {
              v69 = readString(v5, v38, v39);
              v70 = v69;
              v71 = v38;
              v72 = *(a2 + 352) + ((v11 - *(a2 + 672)) << 6);
              v73 = v72 + 4;
              if (*(v72 + 56))
              {
                v74 = 0;
                v75 = 0;
                v76 = 0;
                v77 = 0;
                v78 = 0;
                goto LABEL_138;
              }

              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = 0;
              v78 = 0;
              v435 = 0;
              *(v72 + 48) = v69;
              *(v72 + 56) = v38;
LABEL_157:
              if ((v440 & 3) != 2)
              {
                v103 = v71;
                v104 = v71;
                v105 = v75;
                v106 = v77;
                v107 = v78;
                v108 = v76;
                llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace<>(v479, v70, v103);
                v76 = v108;
                v78 = v107;
                v77 = v106;
                v75 = v105;
                v71 = v104;
                if ((v38 & 1) == 0)
                {
                  *&v489 = "duplicate symbol name ";
                  v490 = v70;
                  v491 = v104;
                  v492 = 1283;
                  operator new();
                }
              }

              v109 = *(a2 + 656);
              v110 = *(a2 + 664);
              if (v109 >= v110)
              {
                v114 = *(a2 + 648);
                v115 = 0xEEEEEEEEEEEEEEEFLL * ((v109 - v114) >> 3);
                v116 = v115 + 1;
                if (v115 + 1 > 0x222222222222222)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v117 = 0xEEEEEEEEEEEEEEEFLL * ((v110 - v114) >> 3);
                if (2 * v117 > v116)
                {
                  v116 = 2 * v117;
                }

                if (v117 >= 0x111111111111111)
                {
                  v118 = 0x222222222222222;
                }

                else
                {
                  v118 = v116;
                }

                if (v118)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSymbolInfo>>(v118);
                }

                v119 = 120 * v115;
                *v119 = v70;
                *(v119 + 8) = v71;
                *(v119 + 16) = v442;
                *(v119 + 17) = v465;
                *(v119 + 19) = v466;
                *(v119 + 20) = v440;
                *(v119 + 24) = v77;
                *(v119 + 25) = v482[0];
                *(v119 + 32) = *(v482 + 7);
                *(v119 + 40) = v76;
                *(v119 + 44) = *&v464[3];
                *(v119 + 41) = *v464;
                *(v119 + 48) = v75;
                *(v119 + 49) = v481[0];
                *(v119 + 56) = *(v481 + 7);
                *(v119 + 64) = v74;
                *(v119 + 65) = *v463;
                *(v119 + 68) = *&v463[3];
                *(v119 + 72) = 0;
                *(v119 + 73) = *v480;
                *(v119 + 80) = *&v480[7];
                *(v119 + 88) = 0;
                v120 = *v462;
                *(v119 + 92) = *&v462[3];
                *(v119 + 96) = v11;
                *(v119 + 89) = v120;
                *(v119 + 104) = v433;
                *(v119 + 112) = v431;
                v112 = 120 * v115 + 120;
                v121 = *(a2 + 648);
                v122 = *(a2 + 656) - v121;
                v123 = v119 - v122;
                memcpy((v119 - v122), v121, v122);
                v124 = *(a2 + 648);
                *(a2 + 648) = v123;
                *(a2 + 656) = v112;
                *(a2 + 664) = 0;
                if (v124)
                {
                  operator delete(v124);
                }

                v5 = a5;
                v113 = v438;
              }

              else
              {
                *v109 = v70;
                *(v109 + 8) = v71;
                *(v109 + 16) = v442;
                *(v109 + 17) = v465;
                *(v109 + 19) = v466;
                *(v109 + 20) = v440;
                *(v109 + 24) = v77;
                *(v109 + 25) = v482[0];
                *(v109 + 32) = *(v482 + 7);
                *(v109 + 40) = v76;
                *(v109 + 44) = *&v464[3];
                *(v109 + 41) = *v464;
                *(v109 + 48) = v75;
                *(v109 + 49) = v481[0];
                *(v109 + 56) = *(v481 + 7);
                *(v109 + 64) = v74;
                *(v109 + 65) = *v463;
                *(v109 + 68) = *&v463[3];
                *(v109 + 72) = 0;
                *(v109 + 73) = *v480;
                *(v109 + 80) = *&v480[7];
                *(v109 + 88) = 0;
                v111 = *v462;
                *(v109 + 92) = *&v462[3];
                *(v109 + 96) = v11;
                *(v109 + 89) = v111;
                v112 = v109 + 120;
                *(v109 + 104) = v433;
                *(v109 + 112) = v431;
                v5 = a5;
                v113 = v438;
              }

              *(a2 + 656) = v112;
              v125 = v112 - 120;
              v126 = *(a2 + 544);
              v127 = *(a2 + 552);
              if (v126 >= v127)
              {
                v129 = *(a2 + 536);
                v130 = (v126 - v129) >> 5;
                v131 = v130 + 1;
                if ((v130 + 1) >> 59)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v132 = v127 - v129;
                if (v132 >> 4 > v131)
                {
                  v131 = v132 >> 4;
                }

                if (v132 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v133 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v133 = v131;
                }

                if (v133)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSymbol>>(v133);
                }

                v134 = (32 * v130);
                *v134 = v125;
                v134[1] = v73;
                v134[2] = v435;
                v134[3] = v78;
                v128 = 32 * v130 + 32;
                v135 = *(a2 + 536);
                v136 = *(a2 + 544) - v135;
                v137 = v134 - v136;
                memcpy(v134 - v136, v135, v136);
                v138 = *(a2 + 536);
                *(a2 + 536) = v137;
                *(a2 + 544) = v128;
                *(a2 + 552) = 0;
                if (v138)
                {
                  operator delete(v138);
                }
              }

              else
              {
                *v126 = v125;
                v126[1] = v73;
                v128 = (v126 + 4);
                v126[2] = v435;
                v126[3] = v78;
              }

              *(a2 + 544) = v128;
              v36 = v113 - 1;
              if (!v36)
              {
                goto LABEL_229;
              }

              continue;
            }

            if ((v440 & 3) == 1)
            {
              goto LABEL_260;
            }

            v98 = *(v476 + v67);
            if ((v440 & 0x40) != 0)
            {
              v70 = readString(a5, v38, v39);
              v71 = v38;
              v75 = v98[16];
              v481[0] = *(v98 + 17);
              *(v481 + 7) = *(v98 + 3);
              v99 = 1;
            }

            else
            {
              v99 = 0;
              v75 = 0;
              v70 = *(v98 + 2);
              v71 = *(v98 + 3);
            }

            v78 = 0;
            v435 = 0;
            v73 = (v98 + 40);
LABEL_156:
            v77 = *v98;
            v482[0] = *(v98 + 1);
            *(v482 + 7) = *(v98 + 1);
            v76 = 1;
            v74 = v99;
            goto LABEL_157;
          }

          v70 = readString(v5, v64, v65);
          v71 = v38;
          if ((v440 & 0x10) == 0)
          {
            v88 = readVaruint32(v5, v38, v39);
            if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 480) - *(a2 + 472)) >> 3) <= v88)
            {
              LODWORD(v489) = 3;
              llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid data symbol index", &v489);
            }

            LODWORD(v11) = v88;
            v91 = v88;
            ULEB128 = readULEB128(v5, v89, v90);
            v431 = readULEB128(v5, v92, v93);
            v433 = ULEB128;
            v460 = *(*(a2 + 472) + 104 * v91 + 64);
            if (ULEB128 > v460)
            {
              v451 = 1283;
              v450[2] = v70;
              v450[3] = v71;
              v452.__r_.__value_.__r.__words[0] = v450;
              v453 = 770;
              v454[0] = &v452;
              p_ULEB128 = &ULEB128;
              v456 = 3074;
              v457[0] = v454;
              v457[2] = " segment size: ";
              v459 = 770;
              *&__dst = v457;
              v484[0] = &v460;
              v485 = 2562;
              *&v489 = &__dst;
              v490 = ")";
              v492 = 770;
              operator new();
            }
          }

          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
LABEL_137:
          v73 = 0;
LABEL_138:
          v435 = 0;
          goto LABEL_157;
        }

        v83 = readVaruint32(v5, v64, v65);
        v84 = *(a2 + 680);
        if (v84 + ((*(a2 + 520) - *(a2 + 512)) >> 7) <= v83 || (LODWORD(v11) = v83, v84 <= v83 == v66 >> 4))
        {
          LODWORD(v489) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(a1, "invalid function symbol index", &v489);
        }

        if ((v440 & 0x10) == 0)
        {
          v85 = readString(v5, v38, v39);
          v70 = v85;
          v71 = v38;
          v86 = *(a2 + 512) + ((v11 - *(a2 + 680)) << 7);
          v78 = *(a2 + 280) + (*(v86 + 4) << 6);
          if (!*(v86 + 96))
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = 0;
            v73 = 0;
            v435 = 0;
            *(v86 + 88) = v85;
            *(v86 + 96) = v38;
            goto LABEL_157;
          }

          goto LABEL_136;
        }

        v100 = v473;
      }

      break;
    }

    v101 = v100[v11];
    if ((v440 & 0x40) != 0)
    {
      v70 = readString(a5, v38, v39);
      v71 = v38;
      v75 = v101[16];
      v481[0] = *(v101 + 17);
      *(v481 + 7) = *(v101 + 3);
      v102 = 1;
    }

    else
    {
      v102 = 0;
      v75 = 0;
      v70 = *(v101 + 2);
      v71 = *(v101 + 3);
    }

    v73 = 0;
    v435 = 0;
    v78 = *(a2 + 280) + (*(v101 + 10) << 6);
    v77 = *v101;
    v482[0] = *(v101 + 1);
    *(v482 + 7) = *(v101 + 1);
    v76 = 1;
    v74 = v102;
    goto LABEL_157;
  }

LABEL_229:
  *a1 = 0;
  v11 = ")";
  if (__p)
  {
    operator delete(__p);
  }

  if (v470)
  {
    operator delete(v470);
  }

  if (v473)
  {
    operator delete(v473);
  }

  if (v476)
  {
    operator delete(v476);
  }

  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(v479);
  if (!*a1)
  {
    goto LABEL_258;
  }
}

unint64_t readVaruint32(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = readULEB128(a1, a2, a3);
  if (HIDWORD(result))
  {
    llvm::report_fatal_error("LEB is outside Varuint32 range", 1, v4);
  }

  return result;
}

uint64_t readString(uint64_t a1, uint64_t a2, unint64_t a3)
{
  ULEB128 = readULEB128(a1, a2, a3);
  result = *(a1 + 8);
  v7 = result + ULEB128;
  if (v7 > *(a1 + 16))
  {
    llvm::report_fatal_error("EOF while reading string", 1, v4);
  }

  *(a1 + 8) = v7;
  return result;
}

void std::vector<llvm::wasm::WasmImport *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }
}

uint64_t readVarint32(uint64_t a1, uint64_t a2, BOOL a3)
{
  result = readLEB128(a1, a2, a3);
  if (result != result)
  {
    llvm::report_fatal_error("LEB is outside Varint32 range", 1, v4);
  }

  return result;
}

unint64_t readVaruint1(uint64_t a1, uint64_t a2, BOOL a3)
{
  result = readLEB128(a1, a2, a3);
  if (result >= 2)
  {
    llvm::report_fatal_error("LEB is outside Varuint1 range", 1, v4);
  }

  return result;
}

uint64_t readLimits(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Varuint32 = readVaruint32(a2, a2, a3);
  *a1 = Varuint32;
  result = readULEB128(a2, v6, v7);
  *(a1 + 8) = result;
  if (Varuint32)
  {
    result = readULEB128(a2, v9, v10);
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t *readInitExpr(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v3 = *(a3 + 8);
  *a2 = 0;
  v4 = *(a3 + 16);
  if (v3 == v4)
  {
    goto LABEL_41;
  }

  v7 = result;
  v8 = (v3 + 1);
  *(a3 + 8) = v3 + 1;
  v9 = *v3;
  *(a2 + 8) = v9;
  if (v9 > 66)
  {
    switch(v9)
    {
      case 67:
        if ((v3 + 5) <= v4)
        {
          v10 = *v8;
          *(a3 + 8) = v3 + 5;
          *(a2 + 16) = v10;
          goto LABEL_18;
        }

        break;
      case 68:
        if ((v3 + 9) <= v4)
        {
          v11 = *v8;
          *(a3 + 8) = v3 + 9;
          *(a2 + 16) = v11;
          goto LABEL_18;
        }

        break;
      case 208:
        result = readULEB128(a3, a2, a3);
        if (result != 111)
        {
          LODWORD(v17[0]) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(v7, "invalid type for ref.null", v17);
        }

        goto LABEL_18;
      default:
        goto LABEL_21;
    }

    v16 = "EOF while reading float64";
LABEL_42:
    llvm::report_fatal_error(v16, 1, a3);
  }

  switch(v9)
  {
    case '#':
      result = readULEB128(a3, a2, a3);
      *(a2 + 16) = result;
      break;
    case 'A':
      result = readVarint32(a3, a2, a3);
      *(a2 + 16) = result;
      break;
    case 'B':
      result = readLEB128(a3, a2, a3);
      *(a2 + 16) = result;
      break;
    default:
      goto LABEL_21;
  }

LABEL_18:
  v4 = *(a3 + 16);
  if (*a2)
  {
    goto LABEL_22;
  }

  v12 = *(a3 + 8);
  if (v12 == v4)
  {
LABEL_41:
    v16 = "EOF while reading uint8";
    goto LABEL_42;
  }

  *(a3 + 8) = v12 + 1;
  if (*v12 == 11)
  {
    goto LABEL_39;
  }

LABEL_21:
  *a2 = 1;
LABEL_22:
  *(a3 + 8) = v3;
  if (v3 == v4)
  {
    goto LABEL_41;
  }

  v13 = v3;
  while (1)
  {
    *(a3 + 8) = v13 + 1;
    v14 = *v13;
    if (*v13 <= 0x69u)
    {
      break;
    }

    v15 = (v14 - 106) > 0x14 || ((1 << (v14 - 106)) & 0x1C0007) == 0;
    ++v13;
    if (!v15)
    {
      goto LABEL_34;
    }

    if (v14 != 208)
    {
      goto LABEL_40;
    }

LABEL_33:
    result = readULEB128(a3, a2, a3);
    v13 = *(a3 + 8);
    v4 = *(a3 + 16);
LABEL_34:
    if (v13 == v4)
    {
      goto LABEL_41;
    }
  }

  if ((v14 - 65) < 4 || v14 == 35)
  {
    goto LABEL_33;
  }

  if (v14 != 11)
  {
LABEL_40:
    v17[0] = "invalid opcode in init_expr: ";
    v17[2] = v14;
    v18 = 2051;
    operator new();
  }

  *(a2 + 24) = v3;
  *(a2 + 32) = v13 + 1 - v3;
LABEL_39:
  *v7 = 0;
  return result;
}

uint64_t llvm::object::WasmObjectFile::getSymbolFlags@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*(result + 536) + ((a2 >> 27) & 0x1FFFFFFFE0));
  v4 = *(v3 + 20);
  if ((v4 & 3) == 1)
  {
    v5 = 6;
  }

  else if ((v4 & 3) == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  if ((v4 & 0xC) == 4)
  {
    v5 |= 0x200u;
  }

  v6 = v5 | (v4 >> 4) & 1;
  if (*(v3 + 16))
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 0x800;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v7;
  return result;
}

__n128 llvm::object::WasmObjectFile::getSymbolName@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(*(a1 + 536) + ((a2 >> 27) & 0x1FFFFFFFE0));
  a3[1].n128_u8[0] &= ~1u;
  result = *v3;
  *a3 = *v3;
  return result;
}

uint64_t llvm::object::WasmObjectFile::getSymbolAddress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*(a1 + 536) + ((a2 >> 27) & 0x1FFFFFFFE0));
  if (*(v3 + 16))
  {
    return llvm::object::ObjectFile::getSymbolValue(a1, a2, a3);
  }

  v4 = *(v3 + 96);
  v5 = *(a1 + 680);
  if (v4 < v5)
  {
    return llvm::object::ObjectFile::getSymbolValue(a1, a2, a3);
  }

  v6 = *(a1 + 512);
  if (v5 + ((*(a1 + 520) - v6) >> 7) <= v4)
  {
    return llvm::object::ObjectFile::getSymbolValue(a1, a2, a3);
  }

  *(a3 + 8) &= ~1u;
  *a3 = *(v6 + ((v4 - v5) << 7) + 48);
  return a1;
}

uint64_t llvm::object::WasmObjectFile::getSymbolValueImpl(uint64_t a1, unint64_t a2)
{
  v3 = *(*(a1 + 536) + ((a2 >> 27) & 0x1FFFFFFFE0));
  v4 = *(v3 + 16);
  if (((1 << v4) & 0x35) != 0)
  {
    return *(v3 + 96);
  }

  result = 0;
  if (v4 == 1)
  {
    v6 = *(a1 + 472) + 104 * *(v3 + 96);
    if (*(v6 + 24) == 65)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = *(v6 + 32);
    }

    return *(v3 + 104) + v7;
  }

  return result;
}

uint64_t llvm::object::WasmObjectFile::getSymbolType@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*(*(result + 536) + ((a2 >> 27) & 0x1FFFFFFFE0)) + 16);
  *(a3 + 8) &= ~1u;
  *a3 = dword_2750C7FD0[v3];
  return result;
}

unsigned int *llvm::object::WasmObjectFile::getSymbolSection@<X0>(unsigned int *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(result + 67) + ((a2 >> 27) & 0x1FFFFFFFE0));
  if ((*(v4 + 20) & 0x10) != 0)
  {
    v7 = (*(*result + 360))(result);
    result = v8;
  }

  else
  {
    v5 = *(v4 + 16);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v6 = (v4 + 96);
      }

      else if (v5 == 4)
      {
        v6 = result + 174;
      }

      else
      {
        v6 = result + 176;
      }
    }

    else if (*(v4 + 16))
    {
      if (v5 == 1)
      {
        v6 = result + 173;
      }

      else
      {
        v6 = result + 175;
      }
    }

    else
    {
      v6 = result + 172;
    }

    v7 = *v6;
  }

  *(a3 + 16) &= ~1u;
  *a3 = v7;
  *(a3 + 8) = result;
  return result;
}

char *llvm::object::WasmObjectFile::getSectionName@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = (*(a1 + 72) + 72 * a2);
  result = *v4;
  if (result)
  {
    if (result >= 0xE)
    {
      llvm::object::object_category(result);
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    result = llvm::wasm::sectionTypeToString(result);
    *(a3 + 16) &= ~1u;
    *a3 = result;
    *(a3 + 8) = v6;
  }

  else
  {
    *(a3 + 16) &= ~1u;
    *a3 = *(v4 + 2);
  }

  return result;
}

__n128 llvm::object::WasmObjectFile::getSectionContents@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v3 = (*(a1 + 72) + 72 * a2);
  a3[1].n128_u8[0] &= ~1u;
  result = v3[2];
  *a3 = result;
  return result;
}

unint64_t llvm::object::WasmObjectFile::getRelocationSymbol(void *a1, uint64_t a2)
{
  v2 = *(a1[9] + 72 * a2 + 48) + 24 * HIDWORD(a2);
  if (*v2 == 6)
  {
    return (*(*a1 + 56))(a1);
  }

  else
  {
    return (*(v2 + 4) << 32) | 1;
  }
}

void *llvm::object::WasmObjectFile::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(a1 + 72) + 72 * a2 + 48) + 24 * HIDWORD(a2));
  if (v3 > 0x19)
  {
    v4 = "Unknown";
    v5 = 7;
  }

  else
  {
    v4 = off_279EFF250[v3];
    v5 = qword_2750C7FE8[v3];
  }

  return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v4, &v4[v5]);
}

uint64_t llvm::object::WasmObjectFile::getBytesInAddress(llvm::object::WasmObjectFile *this)
{
  if (*(this + 590))
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

uint64_t llvm::object::WasmObjectFile::getArch(llvm::object::WasmObjectFile *this)
{
  if (*(this + 590))
  {
    return 57;
  }

  else
  {
    return 56;
  }
}

void llvm::object::WasmObjectFile::getFeatures(uint64_t a1@<X8>)
{
  memset(&v2, 0, sizeof(v2));
  llvm::SubtargetFeatures::Split(&v2, "", 0);
  *(a1 + 24) &= ~1u;
  *a1 = v2;
  memset(&v2, 0, sizeof(v2));
  v3 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void llvm::object::WasmObjectFile::~WasmObjectFile(llvm::object::WasmObjectFile *this)
{
  llvm::object::WasmObjectFile::~WasmObjectFile(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883EF730;
  v2 = *(this + 81);
  if (v2)
  {
    *(this + 82) = v2;
    operator delete(v2);
  }

  v3 = *(this + 78);
  if (v3)
  {
    *(this + 79) = v3;
    operator delete(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    *(this + 76) = v4;
    operator delete(v4);
  }

  v5 = *(this + 70);
  if (v5)
  {
    *(this + 71) = v5;
    operator delete(v5);
  }

  v6 = *(this + 67);
  if (v6)
  {
    *(this + 68) = v6;
    operator delete(v6);
  }

  v7 = *(this + 64);
  if (v7)
  {
    v8 = *(this + 65);
    v9 = *(this + 64);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 120);
        if (v10)
        {
          *(v8 - 112) = v10;
          operator delete(v10);
        }

        v8 -= 128;
      }

      while (v8 != v7);
      v9 = *(this + 64);
    }

    *(this + 65) = v7;
    operator delete(v9);
  }

  v11 = *(this + 59);
  if (v11)
  {
    *(this + 60) = v11;
    operator delete(v11);
  }

  v12 = *(this + 56);
  if (v12)
  {
    v13 = *(this + 57);
    v14 = *(this + 56);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 24);
        if (v15)
        {
          *(v13 - 16) = v15;
          operator delete(v15);
        }

        v13 -= 80;
      }

      while (v13 != v12);
      v14 = *(this + 56);
    }

    *(this + 57) = v12;
    operator delete(v14);
  }

  v16 = *(this + 53);
  if (v16)
  {
    *(this + 54) = v16;
    operator delete(v16);
  }

  v17 = *(this + 50);
  if (v17)
  {
    *(this + 51) = v17;
    operator delete(v17);
  }

  v18 = *(this + 47);
  if (v18)
  {
    *(this + 48) = v18;
    operator delete(v18);
  }

  v19 = *(this + 44);
  if (v19)
  {
    *(this + 45) = v19;
    operator delete(v19);
  }

  v20 = *(this + 41);
  if (v20)
  {
    *(this + 42) = v20;
    operator delete(v20);
  }

  v21 = *(this + 38);
  if (v21)
  {
    *(this + 39) = v21;
    operator delete(v21);
  }

  v22 = *(this + 35);
  if (v22)
  {
    v23 = *(this + 36);
    v24 = *(this + 35);
    if (v23 != v22)
    {
      do
      {
        v23 -= 64;
        std::allocator<llvm::wasm::WasmSignature>::destroy[abi:nn200100](v23);
      }

      while (v23 != v22);
      v24 = *(this + 35);
    }

    *(this + 36) = v22;
    operator delete(v24);
  }

  v25 = *(this + 32);
  if (v25)
  {
    v26 = *(this + 33);
    v27 = *(this + 32);
    if (v26 != v25)
    {
      do
      {
        if (*(v26 - 1) < 0)
        {
          operator delete(*(v26 - 24));
        }

        v26 -= 32;
      }

      while (v26 != v25);
      v27 = *(this + 32);
    }

    *(this + 33) = v25;
    operator delete(v27);
  }

  v35 = (this + 232);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:nn200100](&v35);
  v35 = (this + 208);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:nn200100](&v35);
  v35 = (this + 184);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:nn200100](&v35);
  v28 = *(this + 20);
  if (v28)
  {
    *(this + 21) = v28;
    operator delete(v28);
  }

  v29 = *(this + 17);
  if (v29)
  {
    *(this + 18) = v29;
    operator delete(v29);
  }

  v30 = *(this + 14);
  if (v30)
  {
    *(this + 15) = v30;
    operator delete(v30);
  }

  v31 = *(this + 9);
  if (v31)
  {
    v32 = *(this + 10);
    v33 = *(this + 9);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 24);
        if (v34)
        {
          *(v32 - 16) = v34;
          operator delete(v34);
        }

        v32 -= 72;
      }

      while (v32 != v31);
      v33 = *(this + 9);
    }

    *(this + 10) = v31;
    operator delete(v33);
  }
}

void llvm::to_string<unsigned int>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2883EB8F0;
  v13 = v14;
  llvm::raw_ostream::SetUnbuffered(&v5);
  write_unsigned<unsigned long>(&v5, *a1, 0, 0, 0);
  if (*(v13 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v13, v13[1]);
  }

  else
  {
    v4 = *v13;
    a2->__r_.__value_.__r.__words[2] = v13[2];
    *&a2->__r_.__value_.__l.__data_ = v4;
  }

  llvm::raw_ostream::~raw_ostream(&v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

uint64_t readULEB128(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = "malformed uleb128, extends past end";
  v7 = *(a1 + 8);
  do
  {
    if (v7 == *(a1 + 16))
    {
      goto LABEL_9;
    }

    v8 = *v7;
    v9 = *v7 & 0x7F;
    if (v5 >= 0x40 && (*v7 & 0x7F) != 0 || (a3 = (v9 << v5) >> v5, a3 != v9))
    {
      v6 = "uleb128 too big for uint64";
LABEL_9:
      llvm::report_fatal_error(v6, 1, a3);
    }

    v4 += v9 << v5;
    v5 += 7;
    ++v7;
    ++v3;
  }

  while (v8 < 0);
  *(a1 + 8) += v3;
  return v4;
}

uint64_t readLEB128(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = "malformed sleb128, extends past end";
  v7 = *(a1 + 8);
  do
  {
    if (v7 == *(a1 + 16))
    {
      goto LABEL_18;
    }

    v8 = *v7;
    v9 = v8 & 0x7F;
    if (v5 < 0x40)
    {
      if (v5 == 63 && v8 - 127 >= 2 && v8 != 255 && *v7)
      {
LABEL_17:
        v6 = "sleb128 too big for int64";
LABEL_18:
        llvm::report_fatal_error(v6, 1, a3);
      }
    }

    else if (((v4 >> 63) & 0x7F) != v9)
    {
      goto LABEL_17;
    }

    v4 |= v9 << v5;
    v5 += 7;
    ++v7;
    ++v3;
  }

  while ((v8 & 0x80) != 0);
  v10 = v8 < 0x40 || v5 > 0x3F;
  v11 = -1 << v5;
  if (v10)
  {
    v11 = 0;
  }

  *(a1 + 8) += v3;
  return v4 | v11;
}

void std::allocator<llvm::wasm::WasmSignature>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  v3 = *a1;
  if (*a1 != a1 + 16)
  {

    free(v3);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v6 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<llvm::wasm::WasmRelocation>::vector[abi:nn200100](void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3);
    if (v3 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmRelocation>>(v3);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmRelocation>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSymbolInfo>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSymbol>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void llvm::SmallVectorTemplateBase<std::string,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(a1, a2, 1);
  v4 = *a1 + 24 * *(a1 + 8);
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((*a1 + 24 * *(a1 + 8)), *v3, *(v3 + 8));
  }

  else
  {
    v5 = *v3;
    *(v4 + 16) = *(v3 + 16);
    *v4 = v5;
  }

  ++*(a1 + 8);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>,llvm::wasm::WasmSignature*>(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      std::allocator_traits<std::allocator<llvm::wasm::WasmSignature>>::construct[abi:nn200100]<llvm::wasm::WasmSignature,llvm::wasm::WasmSignature,0>(a3, v6);
      v6 += 16;
      a3 += 64;
    }

    while (v6 != a2);
    do
    {
      std::allocator<llvm::wasm::WasmSignature>::destroy[abi:nn200100](v5);
      v5 += 64;
    }

    while (v5 != a2);
  }
}

uint64_t std::allocator_traits<std::allocator<llvm::wasm::WasmSignature>>::construct[abi:nn200100]<llvm::wasm::WasmSignature,llvm::wasm::WasmSignature,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  if (a2[2])
  {
    llvm::SmallVectorImpl<llvm::wasm::ValType>::operator=(a1, a2);
  }

  *(a1 + 24) = a1 + 40;
  result = a1 + 24;
  *(a1 + 32) = 0x400000000;
  if (a2[8])
  {
    result = llvm::SmallVectorImpl<llvm::wasm::ValType>::operator=(result, (a2 + 6));
  }

  *(a1 + 56) = a2[14];
  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::wasm::ValType>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 4 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 4 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 4 * v9), (*a2 + 4 * v9), 4 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

uint64_t std::__split_buffer<llvm::wasm::WasmSignature>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::allocator<llvm::wasm::WasmSignature>::destroy[abi:nn200100](i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmImport>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>>(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>,llvm::wasm::WasmFunction*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = 0;
      v7 = *(v5 + 80);
      v6 = *(v5 + 96);
      v8 = *(v5 + 64);
      *(a3 + 108) = *(v5 + 108);
      *(a3 + 80) = v7;
      *(a3 + 96) = v6;
      *(a3 + 64) = v8;
      v9 = *(v5 + 48);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 48) = v9;
      v5 += 128;
      a3 += 128;
    }

    while (v5 != a2);
    do
    {
      v10 = *(v4 + 8);
      if (v10)
      {
        *(v4 + 16) = v10;
        operator delete(v10);
      }

      v4 += 128;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<llvm::wasm::WasmFunction>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 128;
    v4 = *(v2 - 120);
    if (v4)
    {
      *(v2 - 112) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 128;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLocalDecl>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTable>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLimits>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTag>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmGlobal>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmExport>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>,llvm::wasm::WasmElemSegment*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[2];
      v8 = *(v5 + 6);
      *(a3 + 16) = v5[1];
      *(a3 + 32) = v7;
      *a3 = v6;
      *(a3 + 48) = v8;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      *(a3 + 56) = *(v5 + 56);
      *(a3 + 72) = *(v5 + 9);
      *(v5 + 7) = 0;
      *(v5 + 8) = 0;
      *(v5 + 9) = 0;
      v5 += 5;
      a3 += 80;
    }

    while (v5 != a2);
    do
    {
      v9 = *(v4 + 7);
      if (v9)
      {
        *(v4 + 8) = v9;
        operator delete(v9);
      }

      v4 += 5;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<llvm::wasm::WasmElemSegment>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 80;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 80;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSegment>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void llvm::object::WindowsResource::createWindowsResource(void *a1)
{
  if (a1[1] <= 0x1FuLL)
  {
    v2 = a1[2];
    v3 = a1[3];
    v7 = 773;
    v4 = v2;
    v5 = v3;
    v6 = ": too small to be a resource file";
    operator new();
  }

  operator new();
}

uint64_t llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader64,llvm::object::XCOFFRelocation64>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[6];
  v7 = *(a3 + 40);
  if ((*(*a2 + 64))(a2))
  {
    v8 = *(a3 + 56);
LABEL_3:
    v9 = bswap32(v8);
LABEL_5:
    v10 = v9;
    v11 = 1;
    goto LABEL_6;
  }

  v9 = bswap32(*(a3 + 56));
  if (v9 < 0xFFFF)
  {
    goto LABEL_5;
  }

  v19 = a2[8];
  v20 = (*(*a2 + 64))(a2);
  v21 = a2[6];
  if (*(v21 + 2))
  {
    v22 = (v19 + 36);
    v23 = 40 * __rev16(*(v21 + 2));
    while (*v22 != 0x800000 || bswap32(*(v22 - 2)) >> 16 != (-29127 * ((a3 - v19) >> 3) + 1))
    {
      v22 += 10;
      v23 -= 40;
      if (!v23)
      {
        goto LABEL_18;
      }
    }

    v8 = *(v22 - 7);
    goto LABEL_3;
  }

LABEL_18:
  *&v41.__val_ = llvm::object::object_category(v20);
  result = llvm::errorCodeToError(3, v41, &v37);
  v24 = v37;
  if (v37)
  {
    *(a1 + 16) |= 1u;
    *a1 = v24;
    return result;
  }

  v11 = 0;
  v10 = 0;
LABEL_6:
  v12 = bswap64(v7) + v6;
  v13 = *(a2 + 2);
  v37 = *(a2 + 1);
  v38 = v13;
  result = llvm::object::Binary::checkOffset(&v37, v12, 14 * v10, v35);
  if (v35[0])
  {
    v27 = v35[0];
    llvm::toString(&v27, &v28);
    v15 = std::string::append(&v28, ": relocations with offset 0x");
    v16 = v15->__r_.__value_.__r.__words[2];
    *__p = *&v15->__r_.__value_.__l.__data_;
    v30 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = bswap64(*(a3 + 40));
    v25 = 14 * v10;
    v26 = v17;
    v31[0] = __p;
    v31[2] = &v26;
    v32 = 3588;
    v33[0] = v31;
    v33[2] = " and size 0x";
    v34 = 770;
    v35[0] = v33;
    v35[2] = &v25;
    v36 = 3586;
    *&v37 = v35;
    *&v38 = " go past the end of the file";
    v39 = 770;
    v40 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a1 + 16) &= ~1u;
  *a1 = v12;
  *(a1 + 8) = 0x6DB6DB6DB6DB6DB7 * ((14 * v10) >> 1);
  if (v10)
  {
    v18 = v11;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader32,llvm::object::XCOFFRelocation32>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[6];
  v7 = *(a3 + 24);
  if ((*(*a2 + 64))(a2))
  {
    v8 = bswap32(*(a3 + 32)) >> 16;
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v9 = *(a3 + 32);
  if (v9 != 0xFFFF)
  {
    v8 = __rev16(v9);
    goto LABEL_5;
  }

  v18 = a2[8];
  v19 = (*(*a2 + 64))(a2);
  v20 = a2[6];
  if (*(v20 + 2))
  {
    v21 = (v18 + 36);
    v22 = 40 * __rev16(*(v20 + 2));
    while (*v21 != 0x800000 || bswap32(*(v21 - 2)) >> 16 != (-13107 * ((a3 - v18) >> 3) + 1))
    {
      v21 += 10;
      v22 -= 40;
      if (!v22)
      {
        goto LABEL_19;
      }
    }

    v8 = bswap32(*(v21 - 7));
    goto LABEL_5;
  }

LABEL_19:
  *&v40.__val_ = llvm::object::object_category(v19);
  result = llvm::errorCodeToError(3, v40, &v36);
  v23 = v36;
  if (v36)
  {
    *(a1 + 16) |= 1u;
    *a1 = v23;
    return result;
  }

  v10 = 0;
  v8 = 0;
LABEL_6:
  v11 = bswap32(v7) + v6;
  v12 = *(a2 + 2);
  v36 = *(a2 + 1);
  v37 = v12;
  result = llvm::object::Binary::checkOffset(&v36, v11, 10 * v8, v34);
  if (v34[0])
  {
    v26 = v34[0];
    llvm::toString(&v26, &v27);
    v14 = std::string::append(&v27, ": relocations with offset 0x");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v29 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = bswap32(*(a3 + 24));
    v24 = 10 * v8;
    v25 = v16;
    v30[0] = __p;
    v30[2] = &v25;
    v31 = 3588;
    v32[0] = v30;
    v32[2] = " and size 0x";
    v33 = 770;
    v34[0] = v32;
    v34[2] = &v24;
    v35 = 3586;
    *&v36 = v34;
    *&v37 = " go past the end of the file";
    v38 = 770;
    v39 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a1 + 16) &= ~1u;
  *a1 = v11;
  *(a1 + 8) = v8;
  if (v8)
  {
    v17 = v10;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::moveSymbolNext(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = (*(*a1 + 64))(a1);
  v5 = v3;
  if ((result & 1) == 0)
  {
    v5 = v3;
  }

  *a2 = v3 + 18 * *(v5 + 17) + 18;
  return result;
}

void llvm::object::XCOFFObjectFile::getStringTableEntry(llvm::object::XCOFFObjectFile *this, uint64_t a2, unsigned int a3)
{
  if (a3 > 3)
  {
    v4 = *(a2 + 88);
    v5 = *(a2 + 80);
    if (v4)
    {
      v6 = v5 > a3;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v9 = a3;
      v10[0] = "entry with offset 0x";
      v10[2] = &v9;
      v11 = 3587;
      v12[0] = v10;
      v12[2] = " in a string table with size 0x";
      v13 = 770;
      v8 = v5;
      v14[0] = v12;
      v14[2] = &v8;
      v15 = 3586;
      v16 = v14;
      v17 = " is invalid";
      v18 = 770;
      v19 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = (v4 + a3);
    *(this + 16) &= ~1u;
    *this = v7;
    *(this + 1) = strlen(v7);
  }

  else
  {
    *(this + 16) &= ~1u;
    *this = 0;
    *(this + 1) = 0;
  }
}

void llvm::object::XCOFFObjectFile::getSymbolName(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::object::XCOFFSymbolRef *a3@<X8>)
{
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = a1;
  v5 = (*(*a1 + 64))(a1);
  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  v7[v6] = a2;
  llvm::object::XCOFFSymbolRef::getName(a3, v7);
}

void llvm::object::XCOFFSymbolRef::getName(llvm::object::XCOFFSymbolRef *this, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    v6 = *(a2 + 16);
    if ((*(v6 + 16) & 0x80000000) == 0)
    {
      v7 = *a2;
      v8 = *(v6 + 8);
      goto LABEL_11;
    }

LABEL_9:
    *(this + 16) &= ~1u;
    *this = "Unimplemented Debug Name";
    *(this + 1) = 24;
    return;
  }

  if (*(v3 + 16) < 0)
  {
    goto LABEL_9;
  }

  if (*v3)
  {
    v4 = memchr(*(a2 + 8), 0, 8uLL);
    v5 = v4 - v3;
    *(this + 16) &= ~1u;
    if (!v4)
    {
      v5 = 8;
    }

    *this = v3;
    *(this + 1) = v5;
    return;
  }

  v7 = *a2;
  v8 = *(v3 + 4);
LABEL_11:
  v9 = bswap32(v8);

  llvm::object::XCOFFObjectFile::getStringTableEntry(this, v7, v9);
}

uint64_t llvm::object::XCOFFObjectFile::getSymbolAddress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    v6 = bswap64(*a2);
  }

  else
  {
    v6 = bswap32(*(a2 + 8));
  }

  *(a3 + 8) &= ~1u;
  *a3 = v6;
  return result;
}

unint64_t llvm::object::XCOFFObjectFile::getSymbolValueImpl(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    return bswap64(*a2);
  }

  else
  {
    return bswap32(*(a2 + 8));
  }
}

uint64_t llvm::object::XCOFFObjectFile::getSymbolAlignment(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v9 = a1;
  v3 = (*(*a1 + 64))(a1);
  v4 = 8;
  if (v3)
  {
    v4 = 16;
  }

  *(&v9 + v4) = a2;
  v5 = v10;
  if (!v10)
  {
    v5 = v11;
  }

  v6 = *(v5 + 16);
  if (v6 != 2 && v6 != 111 && v6 != 107)
  {
    return 0;
  }

  llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(v13, &v9);
  v7 = v13[0];
  if (v14)
  {
    v12 = v13[0];
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    return 0;
  }

  if (!v13[0])
  {
    v7 = v13[1];
  }

  return (1 << (*(v7 + 10) >> 3));
}

void llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(llvm::object::XCOFFSymbolRef *this, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  if (!v4)
  {
    v4 = a2[2];
  }

  v5 = *(v4 + 17);
  llvm::object::XCOFFSymbolRef::getName(&v28, a2);
  v6 = v30;
  if (v30)
  {
    v7 = v28;
    v28 = 0;
    if (v7)
    {
      *(this + 16) |= 1u;
      *this = v7;
      return;
    }
  }

  v8 = *a2;
  v9 = a2[1];
  if (!v9)
  {
    v9 = a2[2];
  }

  v10 = (v9 - v8[9]) / 0x12uLL;
  if (!v5)
  {
    v16 = 1283;
    v15[0] = "csect symbol ";
    v15[2] = v28;
    v15[3] = v29;
    v17[0] = v15;
    v18 = " with index ";
    v20 = 770;
    v21[0] = v17;
    v22 = v10;
    v23 = 2050;
    v24 = v21;
    v25 = " contains no auxiliary entry";
    v26 = 770;
    v27 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v11 = (*(*v8 + 64))(v8);
  v12 = a2[1];
  if (v11)
  {
    while (1)
    {
      v13 = a2[1];
      if (!v12)
      {
        v13 = a2[2];
      }

      v14 = v13 + 18 * v5;
      if (*(v14 + 17) == 251)
      {
        break;
      }

      LOBYTE(v5) = v5 - 1;
      if (!v5)
      {
        v20 = 1283;
        v17[0] = "a csect auxiliary entry has not been found for symbol ";
        v18 = v28;
        v19 = v29;
        v21[0] = v17;
        v22 = " with index ";
        v23 = 770;
        v24 = v21;
        v25 = v10;
        v26 = 2050;
        LODWORD(v15[0]) = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }
    }

    *(this + 16) &= ~1u;
    *this = 0;
    *(this + 1) = v14;
    if (v6)
    {
LABEL_21:
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }
  }

  else
  {
    if (!v12)
    {
      v12 = a2[2];
    }

    *(this + 16) &= ~1u;
    *this = v12 + 18 * v5;
    *(this + 1) = 0;
    if (v6)
    {
      goto LABEL_21;
    }
  }
}

unint64_t llvm::object::XCOFFObjectFile::getCommonSymbolSizeImpl(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  v8 = a1;
  v3 = (*(*a1 + 64))(a1);
  v4 = 8;
  if (v3)
  {
    v4 = 16;
  }

  *(&v8 + v4) = a2;
  v5 = v9;
  if (!v9)
  {
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 == 2 || v6 == 111 || (result = 0, v6 == 107))
  {
    llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(&v12, &v8);
    if (v14)
    {
      v11 = v12;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v11);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      return 0;
    }

    else if (v12)
    {
      return bswap32(*v12);
    }

    else
    {
      return bswap64(v13[3] | (*v13 << 32));
    }
  }

  return result;
}

void llvm::object::XCOFFObjectFile::getSymbolType(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v27 = a1;
  v6 = (*(*a1 + 64))(a1);
  v7 = 1;
  if (v6)
  {
    v7 = 2;
  }

  (&v27)[v7] = a2;
  v8 = v28;
  v9 = v29;
  if (v28)
  {
    v10 = v28;
  }

  else
  {
    v10 = v29;
  }

  v11 = *(v10 + 16);
  if (v11 != 2 && v11 != 107 && v11 != 111)
  {
    goto LABEL_17;
  }

  if ((*(v10 + 14) & 0x2000) != 0)
  {
    goto LABEL_50;
  }

  llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(&v33, &v27);
  v12 = v33;
  if (v35)
  {
    v31 = v33;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v31);
    v13 = v31;
    if (!v31)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (!v33)
  {
    v12 = v34;
  }

  if ((v12[5] & 7) == 2 && !*(v12 + 11))
  {
    llvm::object::XCOFFObjectFile::getSectionByNum(&v31, a1, bswap32(*(v10 + 12)) >> 16);
    if (v32)
    {
      v30 = v31;
      llvm::consumeError(&v30);
      v13 = v30;
      if (v30)
      {
LABEL_12:
        (*(*v13 + 8))(v13);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v23 = v31;
    v24 = (*(*a1 + 64))(a1);
    v25 = 36;
    if (v24)
    {
      v25 = 64;
    }

    if ((*&v23[v25] & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_50:
    *(a3 + 8) &= ~1u;
    v15 = 5;
    goto LABEL_51;
  }

LABEL_17:
  if (!v8)
  {
    if (*(v9 + 16) != 103)
    {
      v14 = bswap32(*(v9 + 12)) >> 16;
      if (v14 <= 0)
      {
LABEL_42:
        *(a3 + 8) &= ~1u;
LABEL_43:
        v15 = 1;
        goto LABEL_51;
      }

      goto LABEL_24;
    }

LABEL_22:
    *(a3 + 8) &= ~1u;
    v15 = 4;
    goto LABEL_51;
  }

  if (*(v8 + 16) == 103)
  {
    goto LABEL_22;
  }

  v14 = bswap32(*(v8 + 12)) >> 16;
  if (v14 < 1)
  {
    goto LABEL_42;
  }

LABEL_24:
  llvm::object::XCOFFObjectFile::getSectionByNum(&v31, a1, v14);
  if (v32)
  {
    v16 = v31;
LABEL_28:
    *(a3 + 8) |= 1u;
    *a3 = v16;
    return;
  }

  v17 = v31;
  llvm::object::XCOFFSymbolRef::getName(&v33, &v27);
  if (v35)
  {
    v16 = v33;
    goto LABEL_28;
  }

  v18 = v33;
  v19 = v34;
  if (v34 == 3 && *v33 == 20308 && *(v33 + 2) == 67)
  {
    goto LABEL_42;
  }

  (*(*a1 + 64))(a1);
  v21 = memchr(v17, 0, 8uLL);
  v22 = v21 - v17;
  if (!v21)
  {
    v22 = 8;
  }

  if (v22 == v19 && (!v19 || !memcmp(v17, v18, v19)))
  {
    goto LABEL_42;
  }

  if (((*(*a1 + 208))(a1, v17) & 1) == 0 && !(*(*a1 + 216))(a1, v17))
  {
    v26 = (*(*a1 + 264))(a1, v17);
    *(a3 + 8) &= ~1u;
    if (v26)
    {
      v15 = 3;
      goto LABEL_51;
    }

    goto LABEL_43;
  }

  *(a3 + 8) &= ~1u;
  v15 = 2;
LABEL_51:
  *a3 = v15;
}

void llvm::object::XCOFFObjectFile::getSectionByNum(llvm::object::XCOFFObjectFile *this, void *a2, int a3)
{
  v4 = this;
  v5 = a3 - 1;
  if (a3 < 1 || (this = (*(*a2 + 64))(a2), a3 > (bswap32(*(a2[6] + 2)) >> 16)))
  {
    v7 = llvm::object::object_category(this);
    v12[0] = "the section index (";
    v12[2] = a3;
    v13 = 2307;
    v14[0] = v12;
    v14[2] = ") is invalid";
    v15 = 770;
    llvm::Twine::str(v14, v16);
    if (v17 >= 0)
    {
      v8 = v16;
    }

    else
    {
      v8 = v16[0];
    }

    v19 = 6;
    v20 = v7;
    v18 = v8;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v9 = a2[8];
  v10 = (*(*a2 + 64))(a2);
  v11 = 40;
  if (v10)
  {
    v11 = 72;
  }

  *(v4 + 8) &= ~1u;
  *v4 = v9 + v11 * v5;
}

void llvm::object::XCOFFObjectFile::getSymbolSection(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*a1 + 64))(a1);
  v6 = bswap32(*(a2 + 12));
  if ((HIWORD(v6) + 2) > 2u)
  {
    llvm::object::XCOFFObjectFile::getSectionByNum(&v12, a1, v6 >> 16);
    v9 = *(a3 + 16);
    v10 = v12;
    if (v13)
    {
      v11 = v9 | 1;
    }

    else
    {
      v11 = v9 & 0xFE;
      *(a3 + 8) = a1;
    }

    *(a3 + 16) = v11;
    *a3 = v10;
  }

  else
  {
    v7 = (*(*a1 + 360))(a1);
    *(a3 + 16) &= ~1u;
    *a3 = v7;
    *(a3 + 8) = v8;
  }
}

uint64_t llvm::object::XCOFFObjectFile::moveSectionNext(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = (*(*a1 + 64))(a1);
  v5 = 40;
  if (result)
  {
    v5 = 72;
  }

  *a2 = v5 + v3;
  return result;
}

_BYTE *llvm::object::XCOFFObjectFile::getSectionName@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(*a1 + 64))(a1);
  result = memchr(a2, 0, 8uLL);
  v6 = result - a2;
  *(a3 + 16) &= ~1u;
  if (!result)
  {
    v6 = 8;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  return result;
}

unint64_t llvm::object::XCOFFObjectFile::getSectionAddress(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    return bswap64(*(a2 + 16));
  }

  else
  {
    return bswap32(*(a2 + 12));
  }
}

uint64_t llvm::object::XCOFFObjectFile::getSectionIndex(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = 40;
  if (v4)
  {
    v5 = 72;
  }

  return (a2 - a1[8]) / v5 + 1;
}

unint64_t llvm::object::XCOFFObjectFile::getSectionSize(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    return bswap64(*(a2 + 24));
  }

  else
  {
    return bswap32(*(a2 + 16));
  }
}

llvm::object *llvm::object::XCOFFObjectFile::getSectionContents@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*a1 + 224))(a1);
  if (result)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) &= ~1u;
  }

  else
  {
    if ((*(*a1 + 64))(a1))
    {
      v7 = bswap64(*(a2 + 32));
    }

    else
    {
      v7 = bswap32(*(a2 + 20));
    }

    v28 = v7;
    v8 = *(a1 + 16) + v7;
    v9 = (*(*a1 + 168))(a1, a2);
    v27 = v9;
    v10 = *(a1 + 32);
    v23 = *(a1 + 16);
    v24 = v10;
    result = llvm::object::Binary::checkOffset(&v23, v8, v9, &v26);
    if (v26)
    {
      v13 = v26;
      v26 = 0;
      llvm::toString(&v13, &v14);
      v11 = std::string::append(&v14, ": section data with offset 0x");
      v12 = v11->__r_.__value_.__r.__words[2];
      *__p = *&v11->__r_.__value_.__l.__data_;
      v16 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v17[0] = __p;
      v17[2] = &v28;
      v18 = 3588;
      v19[0] = v17;
      v19[2] = " and size 0x";
      v20 = 770;
      v21[0] = v19;
      v21[2] = &v27;
      v22 = 3586;
      *&v23 = v21;
      *&v24 = " goes past the end of the file";
      v25 = 770;
      v29 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a3 + 16) &= ~1u;
    *a3 = v8;
    *(a3 + 8) = v9;
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::isSectionText(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 36;
  if (v3)
  {
    v4 = 64;
  }

  return (*(a2 + v4 + 3) >> 5) & 1;
}

BOOL llvm::object::XCOFFObjectFile::isSectionData(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 36;
  if (v3)
  {
    v4 = 64;
  }

  return (*(a2 + v4 + 2) & 0x4004) != 0;
}

BOOL llvm::object::XCOFFObjectFile::isSectionBSS(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 36;
  if (v3)
  {
    v4 = 64;
  }

  return (*(a2 + v4 + 2) & 0x8008) != 0;
}

BOOL llvm::object::XCOFFObjectFile::isDebugSection(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 36;
  if (v3)
  {
    v4 = 64;
  }

  return (*(a2 + v4 + 2) & 0x1020) != 0;
}

BOOL llvm::object::XCOFFObjectFile::isSectionVirtual(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    return *(a2 + 32) == 0;
  }

  else
  {
    return *(a2 + 20) == 0;
  }
}

uint64_t llvm::object::XCOFFObjectFile::section_rel_begin(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader64,llvm::object::XCOFFRelocation64>(v6, a1, a2);
  }

  else
  {
    llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader32,llvm::object::XCOFFRelocation32>(v6, a1, a2);
  }

  result = v6[0];
  if ((v7 & 1) != 0 && v6[0])
  {
    v5 = v6[0];
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    return 0;
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::section_rel_end(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 64))(a1))
  {
    llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader32,llvm::object::XCOFFRelocation32>(&v9, a1, a2);
    v4 = v9;
    if (v11)
    {
      if (!v9)
      {
        return 10 * v10;
      }

      goto LABEL_7;
    }

    v6 = v10;
    v7 = 10;
    return v4 + v6 * v7;
  }

  llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader64,llvm::object::XCOFFRelocation64>(&v9, a1, a2);
  v4 = v9;
  if ((v11 & 1) == 0)
  {
    v6 = v10;
    v7 = 14;
    return v4 + v6 * v7;
  }

  if (!v9)
  {
    return 14 * v10;
  }

LABEL_7:
  v8 = v4;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return 0;
}

uint64_t llvm::object::XCOFFObjectFile::moveRelocationNext(uint64_t a1, void *a2)
{
  result = (*(*a1 + 64))(a1);
  v4 = 10;
  if (result)
  {
    v4 = 14;
  }

  *a2 += v4;
  return result;
}

unint64_t llvm::object::XCOFFObjectFile::getRelocationOffset(void *a1, unint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = a1[8];
  v6 = *(*a1 + 64);
  if (v4)
  {
    v7 = *a2;
    v6(a1);
    v8 = a1[6];
    v9 = *(v8 + 2);
    if (*(v8 + 2))
    {
      v10 = 0;
      v11 = bswap64(v7);
      v12 = __rev16(v9);
      for (i = (v5 + 24); ; i += 9)
      {
        v14 = bswap64(*(i - 1));
        result = v11 - v14;
        if (v11 >= v14 && v11 < bswap64(*i) + v14)
        {
          break;
        }

        if (v12 <= ++v10)
        {
          return -1;
        }
      }

      return result;
    }

    return -1;
  }

  v16 = *a2;
  v6(a1);
  v17 = a1[6];
  v18 = *(v17 + 2);
  if (!*(v17 + 2))
  {
    return -1;
  }

  v19 = 0;
  v20 = bswap32(v16);
  v21 = __rev16(v18);
  for (j = (v5 + 16); ; j += 10)
  {
    v23 = bswap32(*(j - 1));
    result = v20 - v23;
    if (v20 >= v23 && v20 < bswap32(*j) + v23)
    {
      break;
    }

    if (v21 <= ++v19)
    {
      return -1;
    }
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::getRelocationSymbol(void *a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    v4 = bswap32(*(a2 + 8));
    v5 = bswap32(*(a1[6] + 20));
  }

  else
  {
    v4 = bswap32(*(a2 + 4));
    v6 = bswap32(*(a1[6] + 12));
    v5 = v6 & ~(v6 >> 31);
  }

  if (v4 >= v5)
  {
    return (*(*a1 + 56))(a1);
  }

  else
  {
    return a1[9] + 18 * v4;
  }
}

uint64_t llvm::object::XCOFFObjectFile::getRelocationType(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 9;
  if (v3)
  {
    v4 = 13;
  }

  return *(a2 + v4);
}

void *llvm::object::XCOFFObjectFile::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 64))(a1);
  v6 = 9;
  if (v5)
  {
    v6 = 13;
  }

  RelocationTypeString = llvm::XCOFF::getRelocationTypeString(*(a2 + v6));

  return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, RelocationTypeString, &RelocationTypeString[v7]);
}

void llvm::object::XCOFFObjectFile::getSymbolFlags(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v20 = a1;
  v6 = (*(*a1 + 64))(a1);
  v7 = 1;
  if (v6)
  {
    v7 = 2;
  }

  (&v20)[v7] = a2;
  if (v21)
  {
    v8 = v21;
  }

  else
  {
    v8 = v22;
  }

  v9 = *(v8 + 12);
  v10 = *(v8 + 16);
  if (v10 == 111)
  {
    v11 = 6;
  }

  else
  {
    v11 = 2;
  }

  v12 = v11 | (8 * (v9 == 0xFFFF));
  if (v10 == 111 || v10 == 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 8 * (v9 == 0xFFFF);
  }

  if (v10 == 2 || v10 == 111 || v10 == 107)
  {
    llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(v23, &v20);
    v15 = v23[0];
    if (v24)
    {
      *(a3 + 8) |= 1u;
      *a3 = v15;
      return;
    }

    if (!v23[0])
    {
      v15 = v23[1];
    }

    if ((*(v15 + 10) & 7) == 3)
    {
      v14 |= 0x10u;
    }

    v9 = *(v8 + 12);
  }

  v16 = v14 | (v9 == 0);
  if (((*(*a1 + 64))(a1) & 1) != 0 || (v17 = a1[7]) != 0 && *(v17 + 2) == 512)
  {
    v18 = (*(v8 + 14) << 8) & 0x7000;
    v19 = v16 | 0x200;
    if (v18 != 0x2000)
    {
      v19 = v16;
    }

    if (v18 == 0x4000)
    {
      v16 |= 0x40u;
    }

    else
    {
      v16 = v19;
    }
  }

  *(a3 + 8) &= ~1u;
  *a3 = v16;
}

uint64_t llvm::object::XCOFFObjectFile::symbol_end(llvm::object::XCOFFObjectFile *this)
{
  v2 = (*(*this + 64))(this);
  v3 = *(this + 6);
  if (v2)
  {
    v4 = bswap32(*(v3 + 20));
  }

  else
  {
    v5 = bswap32(*(v3 + 12));
    v4 = v5 & ~(v5 >> 31);
  }

  return *(this + 9) + 18 * v4;
}

uint64_t llvm::object::XCOFFObjectFile::section_end(llvm::object::XCOFFObjectFile *this)
{
  v2 = *(this + 8);
  (*(*this + 64))(this);
  v3 = bswap32(*(*(this + 6) + 2)) >> 16;
  v4 = (*(*this + 64))(this);
  v5 = 40;
  if (v4)
  {
    v5 = 72;
  }

  return v2 + v5 * v3;
}

uint64_t llvm::object::XCOFFObjectFile::getBytesInAddress(llvm::object::XCOFFObjectFile *this)
{
  if ((*(*this + 64))(this))
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

const char *llvm::object::XCOFFObjectFile::getFileFormatName(llvm::object::XCOFFObjectFile *this)
{
  if ((*(*this + 64))(this))
  {
    return "aix5coff64-rs6000";
  }

  else
  {
    return "aixcoff-rs6000";
  }
}

uint64_t llvm::object::XCOFFObjectFile::getArch(llvm::object::XCOFFObjectFile *this)
{
  if ((*(*this + 64))(this))
  {
    return 23;
  }

  else
  {
    return 21;
  }
}

void llvm::object::XCOFFObjectFile::getFeatures(uint64_t a1@<X8>)
{
  memset(&v2, 0, sizeof(v2));
  llvm::SubtargetFeatures::Split(&v2, "", 0);
  *(a1 + 24) &= ~1u;
  *a1 = v2;
  memset(&v2, 0, sizeof(v2));
  v3 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
}

const char *llvm::object::XCOFFObjectFile::mapDebugSectionName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  switch(a3)
  {
    case 5:
      if (*a2 == 1953724260 && *(a2 + 4) == 114)
      {
        return "debug_str";
      }

      else if (*a2 == 1869379428 && *(a2 + 4) == 99)
      {
        return "debug_loc";
      }

      else if (!(*a2 ^ 0x616D7764 | *(a2 + 4) ^ 0x63))
      {
        return "debug_macinfo";
      }

      break;
    case 7:
      if (*a2 == 1651537764 && *(a2 + 3) == 1936551522)
      {
        return "debug_pubnames";
      }

      else if (*a2 == 1651537764 && *(a2 + 3) == 1887007842)
      {
        return "debug_pubtypes";
      }

      else if (*a2 == 1918990180 && *(a2 + 3) == 1701277298)
      {
        return "debug_aranges";
      }

      else if (*a2 == 1650554724 && *(a2 + 3) == 1986359906)
      {
        return "debug_abbrev";
      }

      else if (*a2 == 1852995428 && *(a2 + 3) == 1936025454)
      {
        return "debug_ranges";
      }

      else if (*a2 == 1919317860 && *(a2 + 3) == 1701667186)
      {
        return "debug_frame";
      }

      break;
    case 6:
      if (*a2 == 1852405604 && *(a2 + 4) == 28518)
      {
        return "debug_info";
      }

      else if (*a2 == 1768716132 && *(a2 + 4) == 25966)
      {
        return "debug_line";
      }

      break;
  }

  return result;
}

uint64_t llvm::opt::Arg::Arg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a9;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 44) &= 0xFCu;
  *(a1 + 48) = a1 + 64;
  v11 = (a1 + 48);
  *(a1 + 56) = 0x200000000;
  *(a1 + 80) = 0;
  llvm::SmallVectorTemplateBase<void *,true>::push_back((a1 + 48), a7);
  llvm::SmallVectorTemplateBase<void *,true>::push_back(v11, a8);
  return a1;
}

void llvm::opt::Arg::~Arg(llvm::opt::Arg *this)
{
  if ((*(this + 44) & 2) != 0)
  {
    v2 = *(this + 14);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(this + 6) + v3);
        if (v5)
        {
          MEMORY[0x277C69E10](v5, 0x1000C8077774924);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    llvm::opt::Arg::~Arg(v6);
    MEMORY[0x277C69E40]();
  }

  v7 = *(this + 6);
  if (v7 != this + 64)
  {
    free(v7);
  }
}

uint64_t llvm::opt::ArgList::MakeArgString(llvm::opt::ArgList *this, const char **a2)
{
  v9[32] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = xmmword_2750C12F0;
  v3 = llvm::Twine::toStringRef(a2, &v7);
  v5 = (*(*this + 16))(this, v3, v4);
  if (v7 != v9)
  {
    free(v7);
  }

  return v5;
}

void *llvm::opt::ArgList::append(llvm::opt::ArgList *this, llvm::opt::Arg *a2)
{
  llvm::SmallVectorTemplateBase<void *,true>::push_back(this + 2, a2);
  result = llvm::opt::Option::getUnaliasedOption(a2);
  if (result)
  {
    v6 = result;
    v7 = v5;
    do
    {
      LODWORD(v14[0]) = *(v6 + 12);
      *(v14 + 4) = 0xFFFFFFFFLL;
      v12 = v14[0];
      v13 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::try_emplace<std::pair<unsigned int,unsigned int>>(this + 152, &v12, (&v12 + 4), v14);
      v8 = v14[0];
      v9 = *(this + 4);
      v10 = v9 - 1;
      if ((v9 - 1) >= *(v14[0] + 4))
      {
        v10 = *(v14[0] + 4);
      }

      *(v14[0] + 4) = v10;
      *(v8 + 8) = v9;
      if (!*(v6 + 30))
      {
        break;
      }

      v11 = *(v7 + 8);
      v6 = (v11 + 80 * (*(v6 + 30) - 1));
    }

    while (v11);
  }

  return result;
}

uint64_t llvm::opt::Option::getUnaliasedOption(llvm::opt::Option *this)
{
  result = *this;
  if (*(result + 62))
  {
    v3 = *(this + 1);
    v4 = *(v3 + 8);
    v5[0] = v4 + 80 * (*(result + 62) - 1);
    v5[1] = v3;
    if (v4)
    {
      return llvm::opt::Option::getUnaliasedOption(v5);
    }
  }

  return result;
}

uint64_t llvm::opt::InputArgList::releaseMemory(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  if (v2 && !*v1)
  {
    v5 = 8 * v2 - 8;
    v3 = *(this + 8);
    while (v5)
    {
      v6 = v3[1];
      ++v3;
      v5 -= 8;
      if (v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v3 = *(this + 8);
LABEL_4:
    v4 = &v1[v2];
    if (v3 != v4)
    {
LABEL_5:
      this = *v3;
      if (*v3)
      {
        llvm::opt::Arg::~Arg(this);
        this = MEMORY[0x277C69E40]();
      }

      while (++v3 != v4)
      {
        if (*v3)
        {
          if (v3 != v4)
          {
            goto LABEL_5;
          }

          return this;
        }
      }
    }
  }

  return this;
}

llvm::opt::InputArgList *llvm::opt::InputArgList::InputArgList(llvm::opt::InputArgList *this, const char **a2, const char **a3)
{
  *(this + 2) = 0x1000000000;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *this = &unk_2883EFAF8;
  *(this + 1) = this + 24;
  *(this + 22) = this + 192;
  *(this + 23) = 0x1000000000;
  *(this + 40) = this + 320;
  *(this + 41) = this + 320;
  *(this + 42) = 0;
  *(this + 86) = (a3 - a2) >> 3;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(this + 44, a2, a3);
  return this;
}

void llvm::opt::InputArgList::MakeArgStringRef(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 < 0x7FFFFFFFFFFFFFF8)
  {
    if (a3 < 0x17)
    {
      v5 = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      operator new();
    }

    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

llvm::opt::Arg **std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](llvm::opt::Arg **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::opt::Arg::~Arg(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::try_emplace<std::pair<unsigned int,unsigned int>>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<unsigned int>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 4) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 12 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 12 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 12 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(12 * v8, 4uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 12 * v10 - 12;
      v13 = vdupq_n_s64(v12 / 0xC);
      v14 = result + 24;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1210)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 6) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 3) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1830)))).i32[1])
        {
          *v14 = -1;
          *(v14 + 3) = -1;
        }

        v11 += 4;
        v14 += 48;
      }

      while (((v12 / 0xC + 4) & 0x3FFFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 12 * v3;
      v18 = v4;
      do
      {
        if (*v18 <= 0xFFFFFFFD)
        {
          v27 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<unsigned int>(a1, v18, &v27);
          v19 = v27;
          *v27 = *v18;
          *(v19 + 1) = *(v18 + 4);
          ++*(a1 + 8);
        }

        v18 += 12;
        v17 -= 12;
      }

      while (v17);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 12 * v20 - 12;
    v23 = vdupq_n_s64(v22 / 0xC);
    v24 = result + 24;
    do
    {
      v25 = vdupq_n_s64(v21);
      v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_2750C1210)));
      if (vuzp1_s16(v26, *v23.i8).u8[0])
      {
        *(v24 - 6) = -1;
      }

      if (vuzp1_s16(v26, *&v23).i8[2])
      {
        *(v24 - 3) = -1;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_2750C1830)))).i32[1])
      {
        *v24 = -1;
        *(v24 + 3) = -1;
      }

      v21 += 4;
      v24 += 48;
    }

    while (((v22 / 0xC + 4) & 0x3FFFFFFFFFFFFFFCLL) != v21);
  }

  return result;
}

const char *llvm::opt::Option::accept@<X0>(_OWORD *a1@<X0>, llvm::opt::ArgList *a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, int a5@<W4>, unsigned int *a6@<X5>, uint64_t *a7@<X8>)
{
  if (a5 && *(*a1 + 52) == 3)
  {
    operator new();
  }

  *&v20 = a3;
  *(&v20 + 1) = a4;
  result = (**a2)(a2, *a6, a3);
  if (result)
  {
    result = strlen(result);
    v13 = result;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*a1 + 52);
  if (v14 <= 7)
  {
    if (*(*a1 + 52) > 5u)
    {
      if (v14 == 6)
      {
        if (a4 != v13)
        {
          goto LABEL_35;
        }

        v16 = *a6 + 2;
        goto LABEL_20;
      }

      if (a4 == v13)
      {
        ++*a6;
        operator new();
      }
    }

    else
    {
      if (v14 != 3)
      {
        v15 = *a6;
        goto LABEL_29;
      }

      if (a4 == v13)
      {
        ++*a6;
        operator new();
      }
    }
  }

  else
  {
    if (*(*a1 + 52) <= 9u)
    {
      if (v14 == 8)
      {
        operator new();
      }

      (**a2)(a2, *a6);
      ++*a6;
      operator new();
    }

    if (v14 == 10)
    {
      if (a4 == v13)
      {
        v18 = *(*a1 + 53) + *a6 + 1;
        *a6 = v18;
        result = (*(*a2 + 8))(a2);
        if (v18 <= result)
        {
          (**a2)(a2, *a6 - *(*a1 + 53));
          operator new();
        }
      }
    }

    else
    {
      if (v14 == 11)
      {
        v15 = *a6;
        if (a4 == v13)
        {
          v16 = v15 + 2;
LABEL_20:
          *a6 = v16;
          result = (*(*a2 + 8))(a2);
          if (v16 <= result)
          {
            result = (**a2)(a2, *a6 - 1);
            if (result)
            {
              v17 = *a6;
              v23 = *a6 - 2;
              v22 = (**a2)(a2, (v17 - 1));
              std::make_unique[abi:nn200100]<llvm::opt::Arg,llvm::opt::Option const&,llvm::StringRef &,unsigned int,char const*,0>(&v21, a1, &v20, &v23, &v22);
            }
          }

          goto LABEL_35;
        }

LABEL_29:
        (**a2)(a2, v15);
        ++*a6;
        operator new();
      }

      v19 = *a6 + 2;
      *a6 = v19;
      result = (*(*a2 + 8))(a2);
      if (v19 <= result)
      {
        result = (**a2)(a2, *a6 - 1);
        if (result)
        {
          (**a2)(a2, *a6 - 2);
          (**a2)(a2, *a6 - 1);
          operator new();
        }
      }
    }
  }

LABEL_35:
  *a7 = 0;
  return result;
}

uint64_t llvm::opt::OptTable::OptTable(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *result = &unk_2883EFB20;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 25) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = result + 80;
  *(result + 64) = xmmword_2750C12B0;
  if (a3)
  {
    v4 = 0;
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 4);
      if (*(v5 + 4))
      {
        if (v6 == 2)
        {
          *(result + 44) = *v5;
        }

        else
        {
          if (v6 != 1)
          {
            *(result + 48) = v4;
            return result;
          }

          *(result + 40) = *v5;
        }
      }

      ++v4;
      v5 += 80;
    }

    while (a3 != v4);
  }

  return result;
}

char *llvm::opt::OptTable::buildPrefixChars(uint64_t (***this)(size_t *))
{
  result = (**this)(this);
  if (v3)
  {
    v4 = result;
    v5 = &result[16 * v3];
    do
    {
      v6 = *(v4 + 1);
      if (v6)
      {
        v7 = *v4;
        do
        {
          v8 = *v7;
          v9 = this[7];
          v10 = this[8];
          v11 = v9 + v10;
          result = memchr(v9, *v7, v10);
          if (result)
          {
            v12 = result == v11;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            result = llvm::SmallVectorTemplateBase<char,true>::push_back(this + 7, v8);
          }

          ++v7;
          --v6;
        }

        while (v6);
      }

      v4 += 16;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t llvm::opt::OptTable::parseOneArgGrouped@<X0>(llvm::opt::OptTable *this@<X0>, llvm::opt::InputArgList *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(a2 + 22) + 8 * *a3);
  v45[0] = v7;
  if (v7)
  {
    v8 = strlen(v7);
  }

  else
  {
    v8 = 0;
  }

  v45[1] = v8;
  v9 = (**this)(this);
  if (isInput(v9, v10, v7, v8))
  {
    ++*a3;
    operator new();
  }

  v35 = a3;
  v11 = v7;
  v37 = a4;
  v12 = *(this + 1);
  v13 = *(this + 2);
  v39 = (v12 + 80 * v13);
  first_not_of = llvm::StringRef::find_first_not_of(v45, *(this + 7), *(this + 8), 0);
  if (first_not_of >= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = first_not_of;
  }

  v36 = this;
  v16 = *(this + 12);
  v17 = (v12 + 80 * v16);
  if (v13 == v16)
  {
    v18 = v11;
  }

  else
  {
    v19 = v8 - v15;
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((80 * v13 - 80 * v16) >> 4);
    v18 = v11;
    do
    {
      v21 = &v17[10 * (v20 >> 1)];
      v22 = v21[3];
      if (v19 >= v22)
      {
        v23 = v21[3];
      }

      else
      {
        v23 = v8 - v15;
      }

      v24 = ascii_strncasecmp(v21[2], &v18[v15], v23);
      if (v23 == v22)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v22 == v19)
      {
        v25 = 0;
      }

      if (v24)
      {
        v25 = v24;
      }

      if (v25 >= 0)
      {
        v20 >>= 1;
      }

      else
      {
        v20 += ~(v20 >> 1);
      }

      if (v25 < 0)
      {
        v17 = v21 + 10;
      }
    }

    while (v20);
  }

  v26 = *v35;
  if (v17 == v39)
  {
    goto LABEL_47;
  }

  v27 = 0;
  do
  {
    matched = matchOption(v17, v18, v8, *(v36 + 24));
    if (matched)
    {
      v29 = matched;
      *&v40 = v17;
      *(&v40 + 1) = v36;
      result = llvm::opt::Option::accept(&v40, a2, *(*(a2 + 22) + 8 * v26), matched, 0, v35, v37);
      if (*v37)
      {
        return result;
      }

      result = std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](v37);
      if (v29 == 2 && *(v40 + 52) == 3)
      {
        v27 = v17;
      }

      if (v26 != *v35)
      {
        *v37 = 0;
        return result;
      }
    }

    v17 += 10;
  }

  while (v17 != v39);
  if (!v27)
  {
LABEL_47:
    if (v18[1] == 45)
    {
      ++*v35;
      operator new();
    }

    v43 = 261;
    if (v8 >= 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = v8;
    }

    *&v40 = v18;
    *(&v40 + 1) = v33;
    llvm::opt::ArgList::MakeArgString(a2, &v40);
    v34 = *v35;
    *&v40 = 45;
    v41 = &v18[v33];
    v42 = v8 - v33;
    v43 = 1287;
    *(*(a2 + 22) + 8 * v34) = llvm::opt::ArgList::MakeArgString(a2, &v40);
    operator new();
  }

  *&v44 = v27;
  *(&v44 + 1) = v36;
  if (v18[2] == 61)
  {
    *v35 = v26 + 1;
    operator new();
  }

  if (v8 >= 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = v8;
  }

  llvm::opt::Option::accept(&v44, a2, v18, v31, 1, v35, v37);
  if (!*v37)
  {
    std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](v37);
    goto LABEL_47;
  }

  v32 = *v35;
  *&v40 = 45;
  v41 = &v18[v31];
  v42 = v8 - v31;
  v43 = 1287;
  result = llvm::opt::ArgList::MakeArgString(a2, &v40);
  *(*(a2 + 22) + 8 * v32) = result;
  return result;
}

uint64_t isInput(uint64_t a1, uint64_t a2, _BYTE *__s1, size_t a4)
{
  v6 = a1;
  if ((a4 != 1 || *__s1 != 45) && a2)
  {
    v7 = a1 + 16 * a2;
    do
    {
      v8 = *(v6 + 8);
      if (a4 >= v8)
      {
        if (!v8)
        {
          return 0;
        }

        result = memcmp(__s1, *v6, v8);
        if (!result)
        {
          return result;
        }
      }

      v6 += 16;
    }

    while (v6 != v7);
  }

  return 1;
}

uint64_t matchOption(uint64_t *a1, char *__s1, unint64_t a3, int a4)
{
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a1 + 16 * v4;
  while (1)
  {
    v11 = *(v9 + 8);
    v12 = a3 - v11;
    if (a3 < v11 || v11 && memcmp(__s1, *v9, *(v9 + 8)))
    {
      goto LABEL_13;
    }

    v13 = a1[2];
    v14 = a1[3];
    if (!a4)
    {
      break;
    }

    if (v12 >= v14 && !ascii_strncasecmp(&__s1[v11], v13, a1[3]))
    {
      return (v14 + v11);
    }

LABEL_13:
    v9 += 16;
    if (v9 == v10)
    {
      return 0;
    }
  }

  if (v12 < v14 || v14 && memcmp(&__s1[v11], v13, a1[3]))
  {
    goto LABEL_13;
  }

  return (v14 + v11);
}

void *llvm::opt::OptTable::ParseOneArg@<X0>(llvm::opt::OptTable *this@<X0>, const llvm::opt::ArgList *a2@<X1>, unsigned int *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v12 = *a3;
  v13 = (**a2)(a2, *a3);
  v14 = v13;
  v50[0] = v13;
  if (v13)
  {
    v15 = strlen(v13);
  }

  else
  {
    v15 = 0;
  }

  v50[1] = v15;
  v16 = (**this)(this);
  if (isInput(v16, v17, v14, v15))
  {
    ++*a3;
    operator new();
  }

  v41 = v12;
  v42 = a2;
  v43 = a4;
  v46 = a6;
  v47 = a3;
  v18 = *(this + 12);
  v19 = *(this + 1);
  v20 = *(this + 2);
  v21 = v19 + 80 * v18;
  v48 = v19 + 80 * v20;
  v45 = this;
  first_not_of = llvm::StringRef::find_first_not_of(v50, *(this + 7), *(this + 8), 0);
  if (first_not_of >= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = first_not_of;
  }

  v44 = v15;
  if (v20 != v18)
  {
    v24 = v15 - v23;
    v25 = 0xCCCCCCCCCCCCCCCDLL * ((80 * v20 - 80 * v18) >> 4);
    do
    {
      v26 = v21 + 80 * (v25 >> 1);
      v27 = *(v26 + 24);
      if (v24 >= v27)
      {
        v28 = *(v26 + 24);
      }

      else
      {
        v28 = v24;
      }

      v29 = ascii_strncasecmp(*(v26 + 16), &v14[v23], v28);
      if (v28 == v27)
      {
        v30 = 1;
      }

      else
      {
        v30 = -1;
      }

      if (v27 == v24)
      {
        v30 = 0;
      }

      if (v29)
      {
        v30 = v29;
      }

      if (v30 >= 0)
      {
        v25 >>= 1;
      }

      else
      {
        v25 += ~(v25 >> 1);
      }

      if (v30 < 0)
      {
        v21 = v26 + 80;
      }
    }

    while (v25);
  }

  v31 = v48;
  if (v21 == v48)
  {
LABEL_44:
    ++*v47;
    operator new();
  }

  while (1)
  {
    v32 = *(v45 + 24);
    v21 += 80;
    while (1)
    {
      matched = matchOption((v21 - 80), v14, v44, v32);
      if (matched)
      {
        break;
      }

      v35 = v21 == v31;
      v21 += 80;
      if (v35)
      {
        goto LABEL_44;
      }
    }

    v34 = *(v21 - 24);
    v35 = (v34 & v43) != 0 || v43 == 0;
    *&v49 = v21 - 80;
    *(&v49 + 1) = v45;
    v36 = v34 & a5;
    if (v35 && v36 == 0)
    {
      v38 = matched;
      v39 = (**v42)(v42, *v47);
      result = llvm::opt::Option::accept(&v49, v42, v39, v38, 0, v47, v46);
      if (*v46)
      {
        return result;
      }

      result = std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](v46);
      v31 = v48;
      if (v41 != *v47)
      {
        break;
      }
    }

    if (v21 == v31)
    {
      goto LABEL_44;
    }
  }

  *v46 = 0;
  return result;
}

void *llvm::opt::OptTable::ParseArgs@<X0>(llvm::opt::OptTable *a1@<X0>, const char **a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, _DWORD *a5@<X4>, int a6@<W5>, int a7@<W6>, llvm::opt::InputArgList *a8@<X8>)
{
  v12 = a3;
  result = llvm::opt::InputArgList::InputArgList(a8, a2, &a2[a3]);
  *a5 = 0;
  *a4 = 0;
  v20 = 0;
  if (v12)
  {
    v16 = 0;
    do
    {
      v17 = *(*(a8 + 22) + 8 * v16);
      if (v17 && *v17)
      {
        if (*(a1 + 25) == 1)
        {
          llvm::opt::OptTable::parseOneArgGrouped(a1, a8, &v20, &v19);
        }

        else
        {
          llvm::opt::OptTable::ParseOneArg(a1, a8, &v20, a6, a7, &v19);
        }

        v18 = v19;
        if (v19)
        {
          v19 = 0;
          llvm::opt::ArgList::append(a8, v18);
        }

        else
        {
          *a4 = v16;
          *a5 = v20 + ~v16;
        }

        result = std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](&v19);
        if (!v18)
        {
          return result;
        }

        v16 = v20;
      }

      else
      {
        v20 = ++v16;
      }
    }

    while (v16 < v12);
  }

  return result;
}

void llvm::readWideAPInt(unint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, llvm::APInt *a4@<X8>)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x800000000;
  llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(&v16, a2);
  v8 = v16;
  if (a2)
  {
    v9 = 8 * a2;
    v10 = v16;
    do
    {
      v12 = *a1++;
      v11 = v12;
      v13 = -(v12 >> 1);
      if (v12 == 1)
      {
        v13 = 0x8000000000000000;
      }

      if (v11)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11 >> 1;
      }

      *v10++ = v14;
      v9 -= 8;
    }

    while (v9);
  }

  v15 = v17;
  *(a4 + 2) = a3;
  llvm::APInt::initFromArray(a4, v8, v15);
  if (v16 != v18)
  {
    free(v16);
  }
}

void (***llvm::BitcodeErrorCategory(llvm *this))(_anonymous_namespace_::BitcodeErrorCategoryType *__hidden this)
{
  {
  }

  return llvm::BitcodeErrorCategory(void)::ErrorCategory;
}

uint64_t llvm::getBitcodeModuleList@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  llvm::getBitcodeFileContents(v6, &v7);
  if (v9)
  {
    v4 = v7;
    v7 = 0;
    *(a2 + 24) |= 1u;
  }

  else
  {
    *(a2 + 24) &= ~1u;
    v4 = v7;
    *(a2 + 8) = v8;
    v7 = 0;
    v8 = 0uLL;
  }

  *a2 = v4;
  return llvm::Expected<llvm::BitcodeFileContents>::~Expected(&v7);
}

void llvm::getBitcodeFileContents(llvm *a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1);
  if ((v3 & 3) != 0)
  {
    v4 = "Invalid bitcode signature";
    goto LABEL_3;
  }

  v6 = *a1;
  v7 = (*a1 + v3);
  if (v3 && *v6 == 222 && v6[1] == 192 && v6[2] == 23 && v6[3] == 11)
  {
    if ((v3 & 0xFFFFFFF0) == 0 || (v8 = *(v6 + 2), v9 = *(v6 + 3), v9 + v8 > v3))
    {
      v4 = "Invalid bitcode wrapper header";
LABEL_3:
      *&v60 = v4;
      LOWORD(v62) = 259;
      llvm::BitcodeErrorCategory(a1);
      operator new();
    }

    v6 += v8;
    v7 = &v6[v9];
  }

  *&v60 = v6;
  *(&v60 + 1) = v7 - v6;
  v61 = 0uLL;
  v62 = 0x200000000;
  memset(v63, 0, sizeof(v63));
  v64 = &v66;
  v65 = 0x800000000;
  v67 = 0;
  if ((v7 - v6) <= 3)
  {
    *&v52 = 92;
    *(&v52 + 1) = std::generic_category();
    *&v70 = "file too small to contain bitcode header";
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v10 = 0;
  v11 = 66;
  do
  {
    v12 = v10;
    llvm::SimpleBitstreamCursor::Read(&v70, &v60, 8u);
    if (BYTE8(v70))
    {
      v15 = v70;
      goto LABEL_28;
    }

    if (v70 != v11)
    {
      *&v52 = 92;
      *(&v52 + 1) = std::generic_category();
      v68 = "file doesn't start with bitcode header";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v10 = 1;
    v11 = 67;
  }

  while ((v12 & 1) == 0);
  v13 = 0;
  v70 = xmmword_2750C80C0;
  while (1)
  {
    v14 = *(&v70 + v13);
    llvm::SimpleBitstreamCursor::Read(&v68, &v60, 4u);
    if (v69)
    {
      break;
    }

    if (v68 != v14)
    {
      *&v52 = 92;
      *(&v52 + 1) = std::generic_category();
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v13 += 4;
    if (v13 == 16)
    {
      goto LABEL_30;
    }
  }

  v15 = v68;
LABEL_28:
  if (v15)
  {
    v59 = -1;
    *&v52 = v15;
  }

  else
  {
LABEL_30:
    v59 = 0;
    v54 = v62;
    v52 = v60;
    v53 = v61;
    v55 = *v63;
    v16 = *&v63[16];
    memset(v63, 0, sizeof(v63));
    v56 = v16;
    v57[0] = v58;
    v57[1] = 0x800000000;
    if (v65)
    {
      llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=(v57, &v64);
    }

    v58[32] = v67;
  }

  llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(&v64);
  *&v70 = v63;
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v70);
  if (v59)
  {
    v17 = v52;
    *&v52 = 0;
    *(a2 + 56) |= 1u;
    *a2 = v17;
    goto LABEL_35;
  }

  v19 = 8 * v53 - v54;
  v20 = v19 >> 3;
  if ((v19 >> 3) + 8 < *(&v52 + 1))
  {
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *a2;
    v24 = *(a2 + 56);
    while (1)
    {
      llvm::BitstreamCursor::advance(&v70, &v52, 0);
      if (BYTE8(v70))
      {
        v23 = v70;
        *&v70 = 0;
        goto LABEL_44;
      }

      if (v70 < 2)
      {
        *&v60 = "Malformed block";
        LOWORD(v62) = 259;
        llvm::BitcodeErrorCategory(v25);
        operator new();
      }

      if (v70 == 2)
      {
        if (SDWORD1(v70) > 22)
        {
          if (DWORD1(v70) != 23)
          {
            if (DWORD1(v70) == 25)
            {
              readBlobInRecord(&v60, &v52, 25);
              if ((v61 & 1) == 0)
              {
                if (!v50)
                {
                  v26 = 2;
                  v50 = *(&v60 + 1);
                  v21 = v60;
                  goto LABEL_71;
                }

LABEL_63:
                v26 = 2;
                goto LABEL_71;
              }

LABEL_78:
              v23 = v60;
LABEL_44:
              v24 |= 1u;
              v26 = 1;
              goto LABEL_71;
            }

LABEL_64:
            llvm::BitstreamCursor::SkipBlock(&v60, &v52);
            v24 |= v60 != 0;
            if (v60)
            {
              v23 = v60;
              v26 = 1;
            }

            else
            {
              v26 = 2;
            }

            goto LABEL_71;
          }

          readBlobInRecord(&v60, &v52, 23);
          if (v61)
          {
            goto LABEL_78;
          }

          for (i = v51; i; i -= 64)
          {
            if (*(i - 24))
            {
              break;
            }

            *(i - 32) = v60;
          }

          v26 = 2;
          if (v50 && !v49)
          {
            v26 = 2;
            v49 = *(&v60 + 1);
            v22 = v60;
          }
        }

        else
        {
          if (DWORD1(v70) == 8)
          {
            v27 = v22;
            v48 = v21;
            v32 = v19 & 0xFFFFFFFFFFFFFFF8;
            v33 = -1;
          }

          else
          {
            if (DWORD1(v70) != 13)
            {
              goto LABEL_64;
            }

            v27 = v22;
            v48 = v21;
            v28 = v53;
            v29 = v54;
            llvm::BitstreamCursor::SkipBlock(&v60, &v52);
            v30 = v60;
            if (v60)
            {
              goto LABEL_69;
            }

            llvm::BitstreamCursor::advance(&v60, &v52, 0);
            if (BYTE8(v60))
            {
              v23 = v60;
              v24 |= 1u;
              v26 = 1;
LABEL_70:
              v21 = v48;
              v22 = v27;
              goto LABEL_71;
            }

            if (v60 != 0x800000002)
            {
              *&v60 = "Malformed block";
              LOWORD(v62) = 259;
              llvm::BitcodeErrorCategory(v31);
              operator new();
            }

            v45 = 8 * v28;
            v32 = v19 & 0xFFFFFFFFFFFFFFF8;
            v33 = v45 - ((v19 & 0xFFFFFFFFFFFFFFF8) + v29);
          }

          v47 = v33;
          v34 = v53;
          v35 = v54;
          llvm::BitstreamCursor::SkipBlock(&v60, &v52);
          v30 = v60;
          if (v60)
          {
LABEL_69:
            v24 |= 1u;
            v26 = 1;
            v23 = v30;
            goto LABEL_70;
          }

          v38 = 8 * v34 - (v32 + v35);
          v39 = ((8 * v53 - v54) >> 3) - v20;
          v40 = v52 + v20;
          v42 = *(a1 + 2);
          v41 = *(a1 + 3);
          v43 = v51;
          v44 = v51 >> 6;
          if (((v51 >> 6) + 1) >> 58)
          {
            *(a2 + 56) = v24;
            *a2 = v23;
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v22 = v27;
          if (v51 >> 6 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::BitcodeModule>>((v51 >> 6) + 1);
          }

          v46 = (v44 << 6);
          *v46 = v40;
          v46[1] = v39;
          v46[2] = v42;
          v46[3] = v41;
          v46[4] = 0;
          v46[5] = 0;
          v51 = (v44 << 6) + 64;
          v46[6] = v47;
          v46[7] = v38;
          memcpy(0, 0, v43);
          v26 = 2;
          v21 = v48;
        }
      }

      else if (v70 == 3)
      {
        llvm::BitstreamCursor::skipRecord(&v60, &v52, SDWORD1(v70));
        if ((BYTE8(v60) & 1) == 0 || !v60)
        {
          goto LABEL_63;
        }

        v24 |= 1u;
        v26 = 1;
        v23 = v60;
      }

      else
      {
        v26 = 0;
      }

LABEL_71:
      if (BYTE8(v70))
      {
        v36 = v70;
        *&v70 = 0;
        if (v36)
        {
          (*(*v36 + 8))(v36);
        }
      }

      if ((v26 | 2) != 2)
      {
        *(a2 + 56) = v24;
        *a2 = v23;
        goto LABEL_35;
      }

      v19 = 8 * v53 - v54;
      v20 = v19 >> 3;
      if ((v19 >> 3) + 8 >= *(&v52 + 1))
      {
        goto LABEL_94;
      }
    }
  }

  v21 = 0;
  v50 = 0;
  v22 = 0;
  v49 = 0;
  v51 = 0;
  LOBYTE(v24) = *(a2 + 56);
LABEL_94:
  *(a2 + 56) = v24 & 0xFE;
  *a2 = 0;
  a2[1] = v51;
  a2[2] = 0;
  a2[3] = v21;
  a2[4] = v50;
  a2[5] = v22;
  a2[6] = v49;
LABEL_35:
  if (v59)
  {
    v18 = v52;
    *&v52 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  else
  {
    llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(v57);
    *&v60 = &v55;
    std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v60);
  }
}

void llvm::BitstreamCursor::advance(uint64_t **__return_ptr a1@<X8>, uint64_t *this@<X0>, char a3@<W1>)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  if (!*(this + 8) && this[1] <= this[2])
  {
    *(a1 + 8) = v6 & 0xFE;
    *a1 = 0;
    return;
  }

  llvm::BitstreamCursor::ReadCode(&v12, this);
  if (v13)
  {
    v7 = v12;
    v12 = 0;
LABEL_5:
    v8 = v6 | 1;
LABEL_20:
    *a1 = v7;
    goto LABEL_21;
  }

  if (v12 == 2)
  {
    if ((a3 & 2) == 0)
    {
      llvm::BitstreamCursor::ReadAbbrevRecord();
    }

    goto LABEL_16;
  }

  if (v12 == 1)
  {
    llvm::SimpleBitstreamCursor::ReadVBR(&v10, this, 8u);
    if (v11)
    {
      v7 = v10;
      goto LABEL_5;
    }

    v7 = ((v10 << 32) | 2);
LABEL_19:
    v8 = v6 & 0xFE;
    goto LABEL_20;
  }

  if (v12)
  {
LABEL_16:
    v7 = ((v12 << 32) | 3);
    goto LABEL_19;
  }

  if ((a3 & 1) != 0 || !llvm::BitstreamCursor::ReadBlockEnd(this))
  {
    v8 = v6 & 0xFE;
    *a1 = 1;
  }

  else
  {
    v8 = v6 & 0xFE;
    *a1 = 0;
  }

LABEL_21:
  if (v13)
  {
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  *(a1 + 8) = v8;
}

void llvm::BitstreamCursor::SkipBlock(uint64_t *__return_ptr a1@<X8>, llvm::BitstreamCursor *this@<X0>)
{
  v25 = *MEMORY[0x277D85DE8];
  llvm::SimpleBitstreamCursor::ReadVBR(&v16, this, 4u);
  if (v17 & 1) != 0 || ((v4 = *(this + 8), v5 = v4 >= 0x20, v6 = v4 - 32, v5) ? (*(this + 3) >>= v6, v7 = 32) : (v7 = 0), *(this + 8) = v7, llvm::SimpleBitstreamCursor::Read(&v16, this, 0x20u), (v17))
  {
    *a1 = v16;
  }

  else
  {
    v8 = *(this + 8);
    v9 = *(this + 1);
    v10 = *(this + 2);
    if (!v8 && v9 <= v10)
    {
      v11 = std::generic_category();
      v16 = 92;
      v17 = v11;
      v14[0] = "can't skip block: already at end of stream";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v12 = 8 * v10 - v8;
    v13 = v12 + 32 * v16;
    if (v9 < v13 >> 3)
    {
      __p[3] = 92;
      __p[4] = std::generic_category();
      memset(__p, 0, 24);
      LODWORD(v17) = 0;
      v21 = 0;
      v22 = 0;
      v23 = 1;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      v16 = &unk_2883EB8F0;
      v24 = __p;
      llvm::raw_ostream::SetUnbuffered(&v16);
      v14[0] = &unk_2883EFD80;
      v14[1] = "can't skip to bit %zu from %llu";
      v14[2] = v13;
      v14[3] = v12;
      llvm::raw_ostream::operator<<(&v16, v14);
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }

    llvm::SimpleBitstreamCursor::JumpToBit(a1, this, v13);
  }
}

void readBlobInRecord(llvm::BitstreamCursor *a1, llvm::BitstreamCursor *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock(v17, a2, 0, a3);
  v5 = v17[0];
  if (v17[0])
  {
    *(a1 + 16) |= 1u;
    *a1 = v5;
  }

  else
  {
    v14 = 0uLL;
    v6 = *a1;
    v7 = *(a1 + 16);
    llvm::BitstreamCursor::advance(&v19, a2, 0);
    while ((v20 & 1) == 0)
    {
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          v13 = 0uLL;
          v17[0] = v18;
          v17[1] = 0x100000000;
          llvm::BitstreamCursor::readRecord(&v15, a2, SHIDWORD(v19), v17, &v13);
          v10 = v16;
          if (v16)
          {
            v6 = v15;
            v7 |= 1u;
          }

          else if (v15 == 1)
          {
            v14 = v13;
          }

          if (v17[0] != v18)
          {
            free(v17[0]);
          }

          if (v10)
          {
            *(a1 + 16) = v7;
            *a1 = v6;
            goto LABEL_25;
          }
        }
      }

      else
      {
        switch(v19)
        {
          case 2:
            llvm::BitstreamCursor::SkipBlock(v17, a2);
            v9 = v17[0];
            if (v17[0])
            {
              goto LABEL_24;
            }

            break;
          case 0:
            v17[0] = "Malformed block";
            v18[8] = 259;
            llvm::BitcodeErrorCategory(v8);
            operator new();
          case 1:
            *(a1 + 16) = v7 & 0xFE;
            *a1 = v14;
            goto LABEL_25;
        }
      }

      if (v20)
      {
        v11 = v19;
        v19 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      llvm::BitstreamCursor::advance(&v19, a2, 0);
    }

    v9 = v19;
    v19 = 0;
LABEL_24:
    *(a1 + 16) = v7 | 1;
    *a1 = v9;
LABEL_25:
    if (v20)
    {
      v12 = v19;
      v19 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }
}

void llvm::BitcodeModule::getModuleImpl(__int128 *a1@<X0>, uint64_t a6@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v26[0] = *a1;
  v26[1] = 0uLL;
  v27 = 0x200000000;
  v28 = 0;
  v29 = 0u;
  v30[0] = v31;
  v30[1] = 0x800000000;
  v31[32] = 0;
  v17 = 0;
  v18 = 0;
  v8 = *(a1 + 6);
  if (v8 == -1)
  {
    goto LABEL_36;
  }

  llvm::SimpleBitstreamCursor::JumpToBit(v41, v26, v8);
  v9 = v41[0];
  if (v41[0])
  {
LABEL_37:
    *(a6 + 8) |= 1u;
    *a6 = v9;
    goto LABEL_38;
  }

  llvm::BitstreamCursor::EnterSubBlock(v41, v26, 0, 13);
  v10 = v41[0];
  if (v41[0])
  {
    v25 |= 1u;
    v24.__r_.__value_.__r.__words[0] = 0;
    llvm::Expected<std::string>::~Expected(&v24);
    goto LABEL_5;
  }

  v41[0] = &v42;
  v41[1] = 0x4000000000;
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    llvm::BitstreamCursor::advance(&p_dst, v26, 0);
    if ((v36 & 1) == 0)
    {
      break;
    }

    if (p_dst)
    {
      v25 |= 1u;
      v24.__r_.__value_.__r.__words[0] = p_dst;
      goto LABEL_28;
    }

LABEL_12:
    LODWORD(v41[1]) = 0;
    llvm::BitstreamCursor::readRecord(&v39, v26, v10, v41, 0);
    if (v40)
    {
      v15 = v39;
      v39 = 0;
      v25 |= 1u;
      v24.__r_.__value_.__r.__words[0] = v15;
      if (v40)
      {
        v39 = 0;
      }

      goto LABEL_28;
    }

    if (v39 == 1)
    {
      std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v41[0], (v41[0] + 8 * LODWORD(v41[1])));
      if (v40)
      {
        v14 = v39;
        v39 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }
    }

    else
    {
      if (v39 != 2)
      {
        p_dst = "Invalid value";
        v16 = 259;
LABEL_25:
        LOWORD(v38) = v16;
        llvm::BitcodeErrorCategory(v12);
        operator new();
      }

      v13 = *v41[0];
      if (*v41[0])
      {
        v19[0] = "Incompatible epoch: Bitcode '";
        v19[2] = v13;
        v20 = 2051;
        v21[0] = v19;
        v21[2] = "' vs current: '";
        v16 = 770;
        v22 = 770;
        *&__dst = v21;
        v33 = 0;
        v34 = 2306;
        p_dst = &__dst;
        v37 = "'";
        goto LABEL_25;
      }
    }
  }

  if (p_dst == 3)
  {
    LODWORD(v10) = HIDWORD(p_dst);
    goto LABEL_12;
  }

  if (p_dst != 1)
  {
    p_dst = "Malformed block";
    LOWORD(v38) = 259;
    llvm::BitcodeErrorCategory(v11);
    operator new();
  }

  v25 &= ~1u;
  v24 = __p;
  memset(&__p, 0, sizeof(__p));
LABEL_28:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v41[0] != &v42)
  {
    free(v41[0]);
  }

  if ((v25 & 1) == 0)
  {
    v17 = v24.__r_.__value_.__r.__words[0];
    v18 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    *(&v24.__r_.__value_.__s + 23) = 0;
    v24.__r_.__value_.__s.__data_[0] = 0;
    llvm::Expected<std::string>::~Expected(&v24);
LABEL_36:
    llvm::SimpleBitstreamCursor::JumpToBit(v41, v26, *(a1 + 7));
    v9 = v41[0];
    if (!v41[0])
    {
      operator new();
    }

    goto LABEL_37;
  }

  v10 = v24.__r_.__value_.__r.__words[0];
  v24.__r_.__value_.__r.__words[0] = 0;
  llvm::Expected<std::string>::~Expected(&v24);
  if (!v10)
  {
    goto LABEL_36;
  }

LABEL_5:
  *(a6 + 8) |= 1u;
  *a6 = v10;
LABEL_38:
  if (v18 < 0)
  {
    operator delete(v17);
  }

  llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(v30);
  v41[0] = &v28;
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](v41);
}

void llvm::SimpleBitstreamCursor::JumpToBit(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unint64_t a3@<X1>)
{
  v8 = *MEMORY[0x277D85DE8];
  this[2] = (a3 >> 3) & 0x1FFFFFFFFFFFFFF8;
  *(this + 8) = 0;
  v4 = a3 & 0x3F;
  if (v4)
  {
    llvm::SimpleBitstreamCursor::Read(&v6, this, v4);
    if (v7)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  else
  {
    *a1 = 0;
  }
}

_anonymous_namespace_::BitcodeReaderBase *anonymous namespace::BitcodeReader::materializeForwardReferencedFunctions(_anonymous_namespace_::BitcodeReaderBase *this, uint64_t a2)
{
  v2 = this;
  if (*(a2 + 1713) == 1)
  {
    goto LABEL_15;
  }

  *(a2 + 1713) = 1;
  while (1)
  {
    v4 = *(a2 + 1680);
    if (!v4)
    {
      break;
    }

    v5 = *(a2 + 1648);
    v6 = *(a2 + 1672);
    v7 = (*(v5 + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)))[v6 & 0x1FF];
    *(a2 + 1680) = v4 - 1;
    *(a2 + 1672) = v6 + 1;
    if (v6 + 1 >= 0x400)
    {
      operator delete(*v5);
      *(a2 + 1648) += 8;
      *(a2 + 1672) -= 512;
    }

    if (this)
    {
      if ((*(v7 + 35) & 1) == 0)
      {
        v10[0] = "Never resolved function from blockaddress";
        v11 = 259;
      }

      this = (*(*a2 + 16))(a2, v7);
      if (*v2)
      {
        return this;
      }
    }
  }

  v8 = *(a2 + 1688);
  v9 = *(a2 + 1696);
  if (v8 == v9)
  {
LABEL_14:
    *(a2 + 1696) = v8;
    *(a2 + 1713) = 0;
LABEL_15:
    *v2 = 0;
    return this;
  }

  while (1)
  {
    this = (*(*a2 + 16))(a2, *v8);
    if (*v2)
    {
      return this;
    }

    if (++v8 == v9)
    {
      v8 = *(a2 + 1688);
      goto LABEL_14;
    }
  }
}

void llvm::BitcodeModule::getLazyModule(__int128 *a1@<X0>, _BYTE *a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v9 = 0;
  if (a4[32] == 1)
  {
    std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::__value_func[abi:nn200100](v8, a4);
    v9 = 1;
  }

  v10[0] = 0;
  v11 = 0;
  if (a4[72] == 1)
  {
    std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](v10, (a4 + 40));
    v11 = 1;
  }

  v12[0] = 0;
  v13 = 0;
  if (a4[112] == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](v12, (a4 + 80));
    v13 = 1;
  }

  llvm::BitcodeModule::getModuleImpl(a1, a5);
  if (v13 == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](v12);
  }

  if (v11 == 1)
  {
    std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](v10);
  }

  if (v9 == 1)
  {
    std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::~__value_func[abi:nn200100](v8);
  }
}

void anonymous namespace::BitcodeErrorCategoryType::~BitcodeErrorCategoryType(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

void llvm::SimpleBitstreamCursor::Read(unint64_t *__return_ptr a1@<X8>, llvm::SimpleBitstreamCursor *this@<X0>, unsigned int a3@<W1>)
{
  v6 = *(this + 8);
  if (a3 <= v6)
  {
    v8 = *(this + 3);
    *(this + 3) = v8 >> a3;
    *(this + 8) = v6 - a3;
    *(a1 + 8) &= ~1u;
    *a1 = v8 & (0xFFFFFFFFFFFFFFFFLL >> -a3);
  }

  else
  {
    if (v6)
    {
      v7 = *(this + 3);
    }

    else
    {
      v7 = 0;
    }

    llvm::SimpleBitstreamCursor::fillCurWord(&v15, this);
    v9 = v15;
    if (v15)
    {
      v10 = *(a1 + 8) | 1;
    }

    else
    {
      v11 = *(this + 8);
      v12 = v11 >= a3 - v6;
      v13 = v11 - (a3 - v6);
      if (!v12)
      {
        std::generic_category();
        memset(__p, 0, sizeof(__p));
        v16 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 1;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v15 = &unk_2883EB8F0;
        v23 = __p;
        llvm::raw_ostream::SetUnbuffered(&v15);
        v25[0] = &unk_2883EFD60;
        v25[1] = "Unexpected end of file reading %u of %u bits";
        v26 = *(this + 8);
        v27 = a3 - v6;
        llvm::raw_ostream::operator<<(&v15, v25);
        operator new();
      }

      v14 = *(this + 3);
      *(this + 3) = v14 >> (a3 - v6);
      *(this + 8) = v13;
      v9 = ((v14 & (0xFFFFFFFFFFFFFFFFLL >> (v6 - a3))) << v6) | v7;
      v10 = a1[1] & 0xFE;
    }

    *(a1 + 8) = v10;
    *a1 = v9;
  }
}

void llvm::SimpleBitstreamCursor::fillCurWord(uint64_t *__return_ptr a1@<X8>, llvm::SimpleBitstreamCursor *this@<X0>)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  v6 = v5 - v4;
  if (v5 <= v4)
  {
    v22[3] = 5;
    v22[4] = std::generic_category();
    memset(v22, 0, 24);
    v14 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v13 = &unk_2883EB8F0;
    v21 = v22;
    llvm::raw_ostream::SetUnbuffered(&v13);
    v11 = *(this + 2);
    v12[0] = &unk_2883EFD40;
    v12[1] = "Unexpected end of file reading %u of %u bytes";
    v12[2] = v11;
    v12[3] = v5;
    llvm::raw_ostream::operator<<(&v13, v12);
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  v7 = (*this + v4);
  if (v5 >= v4 + 8)
  {
    *(this + 3) = *v7;
    v6 = 8;
  }

  else
  {
    *(this + 3) = 0;
    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *v7;
        v7 = (v7 + 1);
        v9 |= v10 << (v8 & 0xF8);
        *(this + 3) = v9;
        v8 += 8;
      }

      while (8 * v6 != v8);
    }
  }

  *(this + 2) = v4 + v6;
  *(this + 8) = 8 * v6;
  *a1 = 0;
}

void llvm::BitstreamCursor::ReadCode(uint64_t *__return_ptr a1@<X8>, llvm::BitstreamCursor *this@<X0>)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::SimpleBitstreamCursor::Read(&v4, this, *(this + 9));
  v3 = v5;
  *(a1 + 8) = a1[1] & 0xFE | v5 & 1;
  if (v3)
  {
    *a1 = v4;
  }

  else
  {
    *a1 = v4;
  }
}

BOOL llvm::BitstreamCursor::ReadBlockEnd(llvm::BitstreamCursor *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = *(this + 8);
    v3 = v2 >= 0x20;
    v4 = v2 - 32;
    if (v3)
    {
      *(this + 3) >>= v4;
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    *(this + 8) = v5;
    llvm::BitstreamCursor::popBlockScope(this);
  }

  return v1 == 0;
}

void llvm::BitstreamCursor::popBlockScope(llvm::BitstreamCursor *this)
{
  v2 = *(this + 8) + 32 * *(this + 18);
  *(this + 9) = *(v2 - 32);
  std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vdeallocate(this + 5);
  *(this + 40) = *(v2 - 24);
  *(this + 7) = *(v2 - 8);
  *(v2 - 24) = 0;
  *(v2 - 16) = 0;
  *(v2 - 8) = 0;
  v3 = (*(this + 18) - 1);
  *(this + 18) = v3;
  v4 = (*(this + 8) + 32 * v3 + 8);
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void llvm::SimpleBitstreamCursor::ReadVBR(uint64_t *__return_ptr a1@<X8>, llvm::SimpleBitstreamCursor *this@<X0>, unsigned int a3@<W1>)
{
  v21 = *MEMORY[0x277D85DE8];
  llvm::SimpleBitstreamCursor::Read(&v19, this, a3);
  v18 = v20 & 1;
  if (v20)
  {
    v6 = v19;
    *(a1 + 8) = a1[1] & 0xFE | v20 & 1;
    *a1 = v6;
  }

  else
  {
    v7 = v19;
    LODWORD(v17) = v19;
    v8 = 1 << (a3 - 1);
    if ((v19 & v8) != 0)
    {
      v9 = (v8 - 1) & v19;
      v10 = a3 - 1;
      while (1)
      {
        if (v10 >= 0x20)
        {
          v14 = std::generic_category();
          v19 = 92;
          v20 = v14;
          v15 = "Unterminated VBR";
          llvm::make_error<llvm::StringError,char const*&,std::error_code>();
        }

        llvm::SimpleBitstreamCursor::Read(&v15, this, a3);
        LOBYTE(v20) = v20 & 0xFE | v16 & 1;
        if (v16)
        {
          v11 = v15;
          v15 = 0;
          v19 = v11;
        }

        else
        {
          LODWORD(v19) = v15;
        }

        llvm::Expected<unsigned int>::moveAssign<unsigned int>(&v17, &v19);
        if (v20)
        {
          v12 = v19;
          v19 = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        if (v16)
        {
          v13 = v15;
          v15 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        if (v18)
        {
          break;
        }

        v9 |= (v17 & (v8 - 1)) << v10;
        v10 += a3 - 1;
        if ((v17 & v8) == 0)
        {
          *(a1 + 8) &= ~1u;
          *a1 = v9;
          return;
        }
      }

      *(a1 + 8) = a1[1] & 0xFE | v18 & 1;
      *a1 = v17;
    }

    else
    {
      *(a1 + 8) &= ~1u;
      *a1 = v7;
    }
  }
}

_BYTE *llvm::Expected<unsigned int>::moveAssign<unsigned int>(_BYTE *result, _BYTE *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[8];
    if (v4)
    {
      result = *result;
      *v3 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
        v4 = v3[8];
      }
    }

    v5 = a2[8];
    v3[8] = v4 & 0xFE | v5 & 1;
    if (v5)
    {
      v6 = *a2;
      *a2 = 0;
      *v3 = v6;
    }

    else
    {
      *v3 = *a2;
    }
  }

  return result;
}

std::string *std::string::append[abi:nn200100]<unsigned long long const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  v4 = a2;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = a3 - a2;
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    v7 = a3 - a2;
    if (a3 == a2)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  v12 = v7 >> 3;
  if (v10 > v4 || (&v10->__r_.__value_.__l.__data_ + size + 1) <= v4)
  {
    if (v8 - size < v12)
    {
      std::string::__grow_by(this, v8, size - v8 + v12, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    do
    {
      v16 = v4->__r_.__value_.__r.__words[0];
      v4 = (v4 + 8);
      *v15++ = v16;
    }

    while (v4 != a3);
    *v15 = 0;
    v17 = v12 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (v12 > 0x16)
    {
      operator new();
    }

    v23 = v7 >> 3;
    v13 = __p;
    do
    {
      v18 = v4->__r_.__value_.__r.__words[0];
      v4 = (v4 + 8);
      *v13 = v18;
      v13 = (v13 + 1);
    }

    while (v4 != a3);
    *v13 = 0;
    if ((v23 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v20 = v23;
    }

    else
    {
      v20 = __p[1];
    }

    std::string::append(this, v19, v20);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

char ***llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=(char ***a1, char **a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 2);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 2);
    v7 = *(a1 + 2);
    if (v7 >= v6)
    {
      v10 = *a1;
      if (v6)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *>(&v27, v4, &v4[32 * v6], v10);
        v12 = v11;
        v10 = *a1;
        v7 = *(a1 + 2);
      }

      else
      {
        v12 = *a1;
      }

      v21 = &v10[4 * v7];
      if (v21 != v12)
      {
        do
        {
          v22 = v21 - 4;
          v27 = (v21 - 3);
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v27);
          v21 = v22;
        }

        while (v22 != v12);
      }

      *(a1 + 2) = v6;
      v23 = *(a2 + 2);
      if (v23)
      {
        v24 = &(*a2)[32 * v23 - 24];
        v25 = -32 * v23;
        do
        {
          v27 = v24;
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v27);
          v24 -= 4;
          v25 += 32;
        }

        while (v25);
      }

      goto LABEL_29;
    }

    if (*(a1 + 3) >= v6)
    {
      if (v7)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *>(&v27, v4, &v4[32 * v7], *a1);
LABEL_15:
        v13 = *a2;
        v14 = *(a2 + 2);
        if (v7 != v14)
        {
          v15 = &v13[32 * v14];
          v16 = &(*a1)[4 * v7];
          v17 = &v13[32 * v7];
          do
          {
            *v16 = *v17;
            *(v16 + 16) = 0;
            *(v16 + 24) = 0;
            *(v16 + 8) = 0;
            *(v16 + 8) = *(v17 + 8);
            *(v16 + 24) = *(v17 + 3);
            *(v17 + 1) = 0;
            *(v17 + 2) = 0;
            *(v17 + 3) = 0;
            v16 += 32;
            v17 += 32;
          }

          while (v17 != v15);
          v13 = *a2;
        }

        *(a1 + 2) = v6;
        v18 = *(a2 + 2);
        if (v18)
        {
          v19 = &v13[32 * v18 - 24];
          v20 = -32 * v18;
          do
          {
            v27 = v19;
            std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v27);
            v19 -= 4;
            v20 += 32;
          }

          while (v20);
        }

LABEL_29:
        *(a2 + 2) = 0;
        return a1;
      }
    }

    else
    {
      if (v7)
      {
        v8 = &(*a1)[4 * v7 - 3];
        v9 = -32 * v7;
        do
        {
          v27 = v8;
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v27);
          v8 -= 4;
          v9 += 32;
        }

        while (v9);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::grow(a1, v6);
    }

    v7 = 0;
    goto LABEL_15;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::assignRemote(char ***a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[4 * v5 - 3];
    v7 = -32 * v5;
    do
    {
      v9 = v6;
      std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v9);
      v6 -= 4;
      v7 += 32;
    }

    while (v7);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v6);
  llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vdeallocate((a4 + 8));
    *(a4 + 8) = *(v5 + 8);
    *(a4 + 24) = *(v5 + 24);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v5 += 32;
    a4 += 32;
  }

  while (v5 != v6);
  return v6;
}

void llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 32 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(a2 + 8) = *(v3 + 8);
      *(a2 + 24) = *(v3 + 24);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      a2 += 32;
      v3 += 32;
    }

    while (v3 != v4);
    v5 = *(a1 + 2);
    if (v5)
    {
      v6 = (*a1 + 32 * v5 - 24);
      v7 = -32 * v5;
      do
      {
        v8 = v6;
        std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v8);
        v6 -= 4;
        v7 += 32;
      }

      while (v7);
    }
  }
}

void anonymous namespace::BitcodeReader::~BitcodeReader(_anonymous_namespace_::BitcodeReader *this)
{
  *this = &unk_2883EFB90;
  v2 = *(this + 234);
  if (v2)
  {
    *(this + 235) = v2;
    operator delete(v2);
  }

  if (*(this + 1864) == 1)
  {
    std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](this + 1832);
  }

  v3 = *(this + 225);
  if (v3 != this + 1824)
  {
    free(v3);
  }

  v34 = (this + 1776);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v34);
  MEMORY[0x277C69E30](*(this + 219), 8);
  MEMORY[0x277C69E30](*(this + 216), 8);
  v4 = *(this + 211);
  if (v4)
  {
    *(this + 212) = v4;
    operator delete(v4);
  }

  v5 = *(this + 206);
  v6 = *(this + 207);
  *(this + 210) = 0;
  v7 = v6 - v5;
  if (v7 >= 3)
  {
    do
    {
      operator delete(*v5);
      v5 = (*(this + 206) + 8);
      *(this + 206) = v5;
      v6 = *(this + 207);
      v7 = v6 - v5;
    }

    while (v7 > 2);
  }

  if (v7 == 1)
  {
    v8 = 256;
    goto LABEL_15;
  }

  if (v7 == 2)
  {
    v8 = 512;
LABEL_15:
    *(this + 209) = v8;
  }

  if (v5 != v6)
  {
    do
    {
      v9 = *v5++;
      operator delete(v9);
    }

    while (v5 != v6);
    v10 = *(this + 206);
    v11 = *(this + 207);
    if (v11 != v10)
    {
      *(this + 207) = v11 + ((v10 - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v12 = *(this + 205);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 408);
  v14 = *(this + 202);
  if (v13)
  {
    v15 = (v14 + 16);
    v16 = 32 * v13;
    do
    {
      if ((*(v15 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(v15 - 1);
        if (v17)
        {
          *v15 = v17;
          operator delete(v17);
        }
      }

      v15 += 4;
      v16 -= 32;
    }

    while (v16);
    v14 = *(this + 202);
  }

  MEMORY[0x277C69E30](v14, 8);
  v18 = *(this + 199);
  if (v18)
  {
    *(this + 200) = v18;
    operator delete(v18);
  }

  MEMORY[0x277C69E30](*(this + 196), 8);
  MEMORY[0x277C69E30](*(this + 192), 8);
  v19 = *(this + 189);
  if (v19)
  {
    *(this + 190) = v19;
    operator delete(v19);
  }

  v20 = *(this + 186);
  if (v20)
  {
    *(this + 187) = v20;
    operator delete(v20);
  }

  std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(*(this + 184));
  v21 = *(this + 180);
  if (v21)
  {
    *(this + 181) = v21;
    operator delete(v21);
  }

  v22 = *(this + 177);
  if (v22)
  {
    *(this + 178) = v22;
    operator delete(v22);
  }

  v23 = *(this + 174);
  if (v23)
  {
    *(this + 175) = v23;
    operator delete(v23);
  }

  v24 = *(this + 171);
  if (v24)
  {
    *(this + 172) = v24;
    operator delete(v24);
  }

  v25 = *(this + 105);
  if (v25 != this + 856)
  {
    free(v25);
  }

  MEMORY[0x277C69E30](*(this + 102), 8);
  v26 = *(this + 99);
  if (v26)
  {
    *(this + 100) = v26;
    operator delete(v26);
  }

  if (*(this + 784) == 1)
  {
    std::unique_ptr<llvm::MetadataLoader::MetadataLoaderImpl>::reset[abi:nn200100](this + 97, 0);
  }

  std::__function::__value_func<llvm::Expected<llvm::Value *> ()(unsigned int,llvm::BasicBlock *)>::~__value_func[abi:nn200100](this + 744);
  v27 = *(this + 89);
  if (v27)
  {
    std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__base_destruct_at_end[abi:nn200100](this + 712, v27);
    operator delete(*(this + 89));
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 616);
  MEMORY[0x277C69E30](*(this + 74), 8);
  MEMORY[0x277C69E30](*(this + 71), 8);
  v28 = *(this + 140);
  v29 = *(this + 68);
  if (v28)
  {
    v30 = 32 * v28;
    v31 = (v29 + 24);
    do
    {
      if (*(v31 - 6) <= 0xFFFFFFFD)
      {
        v32 = *(v31 - 2);
        if (v31 != v32)
        {
          free(v32);
        }
      }

      v31 += 4;
      v30 -= 32;
    }

    while (v30);
    v29 = *(this + 68);
  }

  MEMORY[0x277C69E30](v29, 8);
  v33 = *(this + 65);
  if (v33)
  {
    *(this + 66) = v33;
    operator delete(v33);
  }

  v34 = (this + 496);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = (this + 472);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v34);
  if (*(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(this + 12);
  v34 = (this + 72);
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = (this + 8);
  std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](&v34);
}

{

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::BitcodeReader::materialize(_anonymous_namespace_::BitcodeReader *this@<X0>, llvm::GlobalValue *a2@<X1>, uint64_t *a3@<X8>)
{
  v81 = *MEMORY[0x277D85DE8];
  if (!a2 || *(a2 + 16) || (*(a2 + 35) & 1) == 0)
  {
    *a3 = 0;
    return;
  }

  v6 = *(this + 196);
  v7 = *(this + 396);
  if (v7)
  {
    LODWORD(v8) = (v7 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v9 = v6 + 16 * v8;
    v10 = *v9;
    if (*v9 == a2)
    {
      goto LABEL_13;
    }

    v11 = 1;
    while (v10 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v7 - 1);
      v10 = *(v6 + 16 * v8);
      if (v10 == a2)
      {
        v9 = v6 + 16 * v8;
        goto LABEL_13;
      }
    }
  }

  v9 = v6 + 16 * v7;
LABEL_13:
  if (!*(v9 + 8))
  {
    while (!*(v9 + 8))
    {
      llvm::SimpleBitstreamCursor::JumpToBit(a3, this + 4, *(this + 55));
      if (*a3)
      {
        return;
      }

      if (!*(this + 16) && *(this + 5) <= *(this + 6))
      {
        v77[0] = "Could not find function in stream";
LABEL_46:
        v80 = 259;
      }

      if ((*(this + 1560) & 1) == 0)
      {
        v77[0] = "Trying to materialize functions before seeing function blocks";
        goto LABEL_46;
      }

      v77[0] = &v78;
      v77[1] = 0x4000000000;
      llvm::BitstreamCursor::advance(&v75, this + 4, 0);
      if (v76)
      {
        v24 = v75;
        v75 = 0;
        *a3 = v24;
      }

      else
      {
        if (v75 != 2)
        {
          v73 = "Expect SubBlock";
          goto LABEL_49;
        }

        if (HIDWORD(v75) != 12)
        {
          v73 = "Expect function block";
LABEL_49:
          v74 = 259;
        }

        if (!*a3)
        {
          *(this + 55) = 8 * *(this + 6) - *(this + 16);
        }
      }

      if (v76)
      {
        v25 = v75;
        v75 = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

      if (v77[0] != &v78)
      {
        free(v77[0]);
      }

      if (*a3)
      {
        return;
      }
    }

    *a3 = 0;
  }

  (*(*this + 32))(this);
  if (!*a3)
  {
    llvm::SimpleBitstreamCursor::JumpToBit(a3, this + 4, *(v9 + 8));
    if (!*a3)
    {
      if (!*a3)
      {
        *(a2 + 8) &= ~0x1000000u;
        if (*(this + 1714) == 1)
        {
          llvm::stripDebugInfo(a2, v13);
        }

        if (*(this + 386))
        {
          v15 = *(this + 388);
          if (v15)
          {
            v16 = 16 * v15;
            v17 = *(this + 192);
            while ((*v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v17 += 2;
              v16 -= 16;
              if (!v16)
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
            v17 = *(this + 192);
          }

          v26 = *(this + 192) + 16 * v15;
LABEL_60:
          if (v17 != v26)
          {
            v27 = *(*v17 + 1);
            while (v27)
            {
              v28 = *(v27 + 24);
              v27 = *(v27 + 8);
              if (v28 && *(v28 + 16) == 84)
              {
                llvm::UpgradeIntrinsicCall(v28, v17[1], v14);
              }
            }

            while (1)
            {
              v17 += 2;
              if (v17 == v26)
              {
                break;
              }

              if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                goto LABEL_60;
              }
            }
          }
        }

LABEL_24:
        v72 = this + 776;
        v18 = llvm::MetadataLoader::lookupSubprogramForFunction((this + 776), a2);
        if (v18)
        {
          llvm::Value::setMetadata(a2, 0, v18);
        }

        if ((*(*v72 + 1040) & 1) == 0)
        {
          v20 = a2 + 72;
          v21 = *(a2 + 10);
          if (v21 == a2 + 72)
          {
            v23 = 0;
          }

          else
          {
            do
            {
              v22 = v21 - 24;
              if (!v21)
              {
                v22 = 0;
              }

              v23 = *(v22 + 6);
              if (v23 != v22 + 40)
              {
                break;
              }

              v21 = *(v21 + 1);
            }

            while (v21 != v20);
          }

          if (v21 != v20)
          {
            do
            {
              if (v23)
              {
                v29 = (v23 - 24);
              }

              else
              {
                v29 = 0;
              }

              if (v29[6] || (*(v29 + 23) & 0x20) != 0)
              {
                Metadata = llvm::Value::getMetadata(v29, 1);
                if (Metadata)
                {
                  if ((llvm::TBAAVerifier::visitTBAAMetadata(this + 215, v29, Metadata) & 1) == 0)
                  {
                    *(*v72 + 1040) = 1;
                    v34 = *(a2 + 5);
                    v35 = v34 + 24;
                    for (i = *(v34 + 32); i != v35; i = *(i + 8))
                    {
                      v37 = i - 56;
                      if (!i)
                      {
                        v37 = 0;
                      }

                      if ((*(v37 + 35) & 1) == 0)
                      {
                        v38 = v37 + 72;
                        v39 = *(v37 + 80);
                        if (v39 == v37 + 72)
                        {
                          v41 = 0;
                        }

                        else
                        {
                          do
                          {
                            v40 = v39 - 24;
                            if (!v39)
                            {
                              v40 = 0;
                            }

                            v41 = *(v40 + 48);
                            if (v41 != v40 + 40)
                            {
                              break;
                            }

                            v39 = *(v39 + 8);
                          }

                          while (v39 != v38);
                        }

                        while (v39 != v38)
                        {
                          if (v41)
                          {
                            v42 = v41 - 24;
                          }

                          else
                          {
                            v42 = 0;
                          }

                          if (*(v42 + 48) || (*(v42 + 23) & 0x20) != 0)
                          {
                            llvm::Value::setMetadata(v42, 1, 0);
                          }

                          v41 = *(v41 + 8);
                          v43 = v39 - 24;
                          if (!v39)
                          {
                            v43 = 0;
                          }

                          while (v41 == v43 + 40)
                          {
                            v39 = *(v39 + 8);
                            if (v39 == v38)
                            {
                              break;
                            }

                            v43 = v39 - 24;
                            if (!v39)
                            {
                              v43 = 0;
                            }

                            v41 = *(v43 + 48);
                          }
                        }
                      }
                    }
                  }
                }
              }

              v23 = *(v23 + 1);
              v31 = v21 - 24;
              if (!v21)
              {
                v31 = 0;
              }

              if (v23 == v31 + 40)
              {
                v21 = *(v21 + 1);
                v32 = a2 + 72;
                while (v21 != a2 + 72)
                {
                  v33 = v21 - 24;
                  if (!v21)
                  {
                    v33 = 0;
                  }

                  v23 = *(v33 + 6);
                  if (v23 != v33 + 40)
                  {
                    break;
                  }

                  v21 = *(v21 + 1);
                }
              }

              else
              {
                v32 = a2 + 72;
              }
            }

            while (v21 != v32);
          }
        }

        v44 = a2 + 72;
        v45 = *(a2 + 10);
        if (v45 == a2 + 72)
        {
          v47 = 0;
        }

        else
        {
          do
          {
            v46 = v45 - 24;
            if (!v45)
            {
              v46 = 0;
            }

            v47 = *(v46 + 6);
            if (v47 != v46 + 40)
            {
              break;
            }

            v45 = *(v45 + 1);
          }

          while (v45 != v44);
        }

        if (v45 == v44)
        {
LABEL_180:
          llvm::UpgradeFunctionAttributes(a2, v19);
          return;
        }

        while (1)
        {
          if (v47)
          {
            v48 = (v47 - 24);
          }

          else
          {
            v48 = 0;
          }

          if (!*(v48 + 48) && (*(v48 + 23) & 0x20) == 0)
          {
            goto LABEL_136;
          }

          v49 = llvm::Value::getMetadata(v48, 2);
          if (!v49)
          {
            goto LABEL_136;
          }

          v50 = *(v49 - 16);
          v51 = (v50 & 2) != 0 ? *(v49 - 32) : (v49 - 16 - 8 * ((v50 >> 2) & 0xF));
          v52 = *v51;
          if (!v52 || *v52)
          {
            goto LABEL_136;
          }

          v65 = *(v52 + 8);
          if (*v65 == 14)
          {
            v66 = v65[3];
            v67 = *(v65 + 30);
            if (v66 == 0x775F68636E617262 && v67 == 0x737468676965775FLL)
            {
              v69 = *(v48 + 16);
              if (v47 && v69 == 30)
              {
                if ((*(v47 - 1) & 0x7FFFFFF) == 3)
                {
                  v70 = 2;
                }

                else
                {
                  v70 = 1;
                }

                goto LABEL_173;
              }

              if (v47 && v69 == 31)
              {
                v70 = (*(v47 - 1) >> 1) & 0x3FFFFFF;
                goto LABEL_173;
              }

              if (v69 == 84)
              {
                v70 = 1;
                goto LABEL_173;
              }

              if (v47 && v69 == 32)
              {
                v70 = (*(v47 - 1) & 0x7FFFFFF) - 1;
                goto LABEL_173;
              }

              if (v69 == 85)
              {
                v70 = 2;
LABEL_173:
                if ((v50 & 2) != 0)
                {
                  v71 = *(v49 - 24);
                }

                else
                {
                  v71 = (v50 >> 6) & 0xF;
                }

                if (v71 != v70 + 1 && (*(v48 + 48) || (*(v48 + 23) & 0x20) != 0))
                {
                  llvm::Value::setMetadata(v48, 2, 0);
                }

LABEL_136:
                v53 = *(v48 + 16) - 33;
                v54 = v53 > 0x33;
                v55 = (1 << v53) & 0x8000000000041;
                if (!v54 && v55 != 0)
                {
                  llvm::AttributeFuncs::typeIncompatible(**(*(v48 + 72) + 16), 3, v77);
                  *(v48 + 64) = llvm::AttributeList::removeAttributesAtIndex((v48 + 64), **v48, 0, v77);
                  std::__tree<llvm::SmallString<32u>>::destroy(&v78, v79);
                  v57 = llvm::CallBase::arg_end(v48);
                  v58 = *(v48 + 20) & 0x7FFFFFF;
                  if (((v57 - v48 + 32 * v58) & 0x1FFFFFFFE0) != 0)
                  {
                    v59 = 0;
                    v60 = -v58;
                    v61 = v48;
                    do
                    {
                      llvm::AttributeFuncs::typeIncompatible(**(v61 + 32 * v60), 3, v77);
                      *(v48 + 64) = llvm::AttributeList::removeAttributesAtIndex((v48 + 64), **v48, ++v59, v77);
                      std::__tree<llvm::SmallString<32u>>::destroy(&v78, v79);
                      v62 = llvm::CallBase::arg_end(v48);
                      v63 = *(v48 + 20) & 0x7FFFFFF;
                      v60 = -v63;
                      v61 += 32;
                    }

                    while (v59 < ((v62 - v48 + 32 * v63) >> 5));
                  }
                }
              }
            }
          }

          v47 = *(v47 + 1);
          v64 = v45 - 24;
          if (!v45)
          {
            v64 = 0;
          }

          while (v47 == v64 + 40)
          {
            v45 = *(v45 + 1);
            if (v45 == v44)
            {
              break;
            }

            v64 = v45 - 24;
            if (!v45)
            {
              v64 = 0;
            }

            v47 = *(v64 + 6);
          }

          if (v45 == v44)
          {
            goto LABEL_180;
          }
        }
      }
    }
  }
}

void anonymous namespace::BitcodeReader::materializeModule(_anonymous_namespace_::BitcodeReader *this@<X0>, _anonymous_namespace_::BitcodeReaderBase *a2@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  (*(*this + 32))(a2);
  if (!*a2)
  {
    *(this + 1713) = 1;
    v6 = *(this + 54);
    v7 = v6 + 24;
    for (i = *(v6 + 32); i != v7; i = *(i + 8))
    {
      if (i)
      {
        v9 = i - 56;
      }

      else
      {
        v9 = 0;
      }

      (*(*this + 16))(this, v9);
      if (*a2)
      {
        return;
      }
    }

    v11 = *(this + 55);
    v10 = *(this + 56);
    if (*(this + 440) == 0)
    {
      goto LABEL_81;
    }

    v57 = 0;
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    memset(v56, 0, sizeof(v56));
    v55 = 0u;
    memset(v54, 0, sizeof(v54));
    if (v57 == 1)
    {
      std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](v56);
    }

    if (BYTE8(v55) == 1)
    {
      std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](&v54[2] + 8);
    }

    if (LOBYTE(v54[2]) == 1)
    {
      std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::~__value_func[abi:nn200100](v54);
    }

    if (!*a2)
    {
LABEL_81:
      if (*(this + 406))
      {
        v52 = "Never resolved function from blockaddress";
        v53 = 259;
      }

      v13 = (this + 1536);
      v14 = *(this + 386);
      if (!v14)
      {
        goto LABEL_49;
      }

      v15 = *(this + 388);
      if (v15)
      {
        v16 = 16 * v15;
        v17 = *(this + 192);
        while ((*v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v17 += 2;
          v16 -= 16;
          if (!v16)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v17 = *(this + 192);
      }

      v18 = *(this + 192) + 16 * v15;
      if (v17 != v18)
      {
LABEL_31:
        v19 = *v17;
        v20 = *(*v17 + 1);
        if (v20)
        {
          do
          {
            v21 = *(v20 + 24);
            if (v21 && *(v21 + 16) == 84)
            {
              llvm::UpgradeIntrinsicCall(v21, v17[1], v5);
            }

            v20 = *(v20 + 8);
          }

          while (v20);
          v19 = *v17;
          if (*(*v17 + 1))
          {
            llvm::Value::doRAUW(*v17, v17[1], 1);
            v19 = *v17;
          }
        }

        llvm::iplist_impl<llvm::simple_ilist<llvm::Function>,llvm::SymbolTableListTraits<llvm::Function>>::erase(*(v19 + 5) + 24, v19 + 56);
        while (1)
        {
          v17 += 2;
          if (v17 == v18)
          {
            break;
          }

          if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v17 != v18)
            {
              goto LABEL_31;
            }

            break;
          }
        }

        v14 = *(this + 386);
      }

LABEL_43:
      if (v14)
      {
        v22 = *(this + 388);
        if (v22 > 4 * v14 && v22 >= 0x41)
        {
          v23 = 1 << (33 - __clz(v14 - 1));
          if (v23 <= 64)
          {
            v24 = 64;
          }

          else
          {
            v24 = v23;
          }

LABEL_52:
          if (v24 == v22)
          {
            v25 = 0;
            *(this + 193) = 0;
            v26 = v22 + 0xFFFFFFFFFFFFFFFLL;
            v27 = v26 & 0xFFFFFFFFFFFFFFFLL;
            v28 = (v26 & 0xFFFFFFFFFFFFFFFLL) - (v26 & 1) + 2;
            v29 = vdupq_n_s64(v27);
            v30 = (*(this + 192) + 16);
            do
            {
              v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_2750C1210)));
              if (v31.i8[0])
              {
                *(v30 - 2) = -4096;
              }

              if (v31.i8[4])
              {
                *v30 = -4096;
              }

              v25 += 2;
              v30 += 4;
            }

            while (v28 != v25);
          }

          else
          {
            MEMORY[0x277C69E30](*v13, 8);
            if (v24)
            {
              v41 = (4 * v24 / 3u + 1) | ((4 * v24 / 3u + 1) >> 1);
              v42 = v41 | (v41 >> 2) | ((v41 | (v41 >> 2)) >> 4);
              LODWORD(v42) = (((v42 | (v42 >> 8)) >> 16) | v42 | (v42 >> 8)) + 1;
              *(this + 388) = v42;
              v43 = operator new(16 * v42, 8uLL);
              *(this + 192) = v43;
              *(this + 193) = 0;
              v44 = *(this + 388);
              if (v44)
              {
                v45 = 0;
                v46 = v44 + 0xFFFFFFFFFFFFFFFLL;
                v47 = v46 & 0xFFFFFFFFFFFFFFFLL;
                v48 = (v46 & 0xFFFFFFFFFFFFFFFLL) - (v46 & 1) + 2;
                v49 = vdupq_n_s64(v47);
                v50 = v43 + 16;
                do
                {
                  v51 = vmovn_s64(vcgeq_u64(v49, vorrq_s8(vdupq_n_s64(v45), xmmword_2750C1210)));
                  if (v51.i8[0])
                  {
                    *(v50 - 2) = -4096;
                  }

                  if (v51.i8[4])
                  {
                    *v50 = -4096;
                  }

                  v45 += 2;
                  v50 += 4;
                }

                while (v48 != v45);
              }
            }

            else
            {
              *v13 = 0;
              *(this + 193) = 0;
              *(this + 388) = 0;
            }
          }

          goto LABEL_68;
        }
      }

      else
      {
LABEL_49:
        if (!*(this + 387))
        {
LABEL_68:
          llvm::UpgradeDebugInfo(*(this + 54), v4);
          llvm::UpgradeModuleFlags(*(this + 54), v39);
          llvm::UpgradeARCRuntime(*(this + 54), v40);
          *a2 = 0;
          return;
        }

        v22 = *(this + 388);
        if (v22 > 0x40)
        {
          v24 = 0;
          goto LABEL_52;
        }
      }

      if (v22)
      {
        v32 = 0;
        v33 = v22 + 0xFFFFFFFFFFFFFFFLL;
        v34 = v33 & 0xFFFFFFFFFFFFFFFLL;
        v35 = (v33 & 0xFFFFFFFFFFFFFFFLL) - (v33 & 1) + 2;
        v36 = vdupq_n_s64(v34);
        v37 = (*v13 + 16);
        do
        {
          v38 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(vdupq_n_s64(v32), xmmword_2750C1210)));
          if (v38.i8[0])
          {
            *(v37 - 2) = -4096;
          }

          if (v38.i8[4])
          {
            *v37 = -4096;
          }

          v32 += 2;
          v37 += 4;
        }

        while (v35 != v32);
      }

      *(this + 193) = 0;
      goto LABEL_68;
    }
  }
}

void anonymous namespace::BitcodeReader::materializeMetadata(_anonymous_namespace_::BitcodeReader *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 199);
  v5 = *(this + 200);
  while (v4 != v5)
  {
    llvm::SimpleBitstreamCursor::JumpToBit(a2, this + 4, *v4);
    if (*a2)
    {
      return;
    }

    llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(*(this + 97), 1, a2);
    if (*a2)
    {
      return;
    }

    ++v4;
  }

  v6 = *(this + 54);
  v15[0] = "llvm.linker.options";
  v16 = 259;
  if (!llvm::Module::getNamedMetadata(v6, v15))
  {
    ModuleFlag = llvm::Module::getModuleFlag(*(this + 54), "Linker Options", 0xEuLL);
    if (ModuleFlag)
    {
      v8 = ModuleFlag;
      inserted = llvm::Module::getOrInsertNamedMetadata(*(this + 54), "llvm.linker.options", 0x13uLL);
      v10 = *(v8 - 16);
      if ((v10 & 2) == 0)
      {
        v11 = (v8 - 16 - 8 * ((v10 >> 2) & 0xF));
        v12 = (v10 >> 6) & 0xF;
        if (!v12)
        {
          goto LABEL_7;
        }

LABEL_14:
        v13 = 8 * v12;
        do
        {
          v14 = *v11++;
          v15[0] = v14;
          llvm::SmallVectorImpl<llvm::TrackingMDRef>::emplace_back<llvm::MDNode *&>(*(inserted + 48), v15);
          v13 -= 8;
        }

        while (v13);
        goto LABEL_7;
      }

      v11 = *(v8 - 32);
      v12 = *(v8 - 24);
      if (*(v8 - 24))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_7:
  *(this + 200) = *(this + 199);
  *a2 = 0;
}