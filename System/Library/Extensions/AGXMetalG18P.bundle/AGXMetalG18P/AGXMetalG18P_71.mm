void sub_29CE0E4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, char *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19, void **a20, void **a21, void **a22, uint64_t a23, void **a24, void **a25, void **a26, void **a27, void **a28, uint64_t a29, uint64_t a30, void **a31, void **a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38)
{
  CompileStatistics::~CompileStatistics(a18);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a38);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v38 + 1560));
  v41 = *a31;
  if (*a31)
  {
    *(v38 + 1544) = v41;
    operator delete(v41);
  }

  v42 = *a32;
  if (*a32)
  {
    *(v38 + 1520) = v42;
    operator delete(v42);
  }

  if (*a11 < 0)
  {
    operator delete(*a10);
    if ((*(v38 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v38 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v38 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a25);
  if (*(v38 + 887) < 0)
  {
LABEL_8:
    operator delete(*a26);
    if ((*(v38 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v38 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v38 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a27);
  if ((*(v38 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a34);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a12);
    v43 = *a19;
    if (*a19)
    {
      *(v38 + 336) = v43;
      operator delete(v43);
    }

    v44 = *a21;
    if (*a21)
    {
      *(v38 + 312) = v44;
      operator delete(v44);
    }

    v45 = *a20;
    if (*a20)
    {
      *(v38 + 288) = v45;
      operator delete(v45);
    }

    v46 = *a22;
    if (*a22)
    {
      *(v38 + 264) = v46;
      operator delete(v46);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v38 + 168);
    v47 = *a24;
    if (*a24)
    {
      *(v38 + 152) = v47;
      operator delete(v47);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a35);
    if (*(v39 - 201) < 0)
    {
      operator delete(*(v39 - 224));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a28);
  goto LABEL_11;
}

void AGX::TileDispatchVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::TileDispatchVertexProgramVariant(unint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v467 = *MEMORY[0x29EDCA608];
  *(&__str[0].__r_.__value_.__s + 23) = 0;
  __str[0].__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7EE0;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  v457 = (a1 + 56);
  *(a1 + 144) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v455 = (a1 + 544);
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *(a1 + 640) = v11;
  *(a1 + 656) = v11;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v11;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v445 = (a1 + 896);
  *(a1 + 904) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v12 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v448 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v454 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v459 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v13 = a3[29] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = 28;
  if (v13)
  {
    v14 = 98;
    v15 = a3 + 98;
  }

  else
  {
    v15 = a3 + 28;
  }

  v16 = a3[v14];
  if (v16 && v15[1])
  {
    v10 = (v16 + *v16);
  }

  v17 = (v10 - *v10);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v452 = (v10 + v18 + *(v10 + v18));
  }

  else
  {
    v452 = 0;
  }

  v19 = 0;
  v20 = a3 + 128;
  if (a3[58])
  {
    v21 = a3[59] == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 58;
  if (v21)
  {
    v22 = 128;
  }

  else
  {
    v20 = a3 + 58;
  }

  v23 = a3[v22];
  if (v23 && v20[1])
  {
    v19 = (v23 + *v23);
  }

  v24 = (v19 - *v19);
  if (*v24 < 5u)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24[2];
    if (v25)
    {
      v25 = (v25 + v19 + *(v25 + v19));
    }
  }

  v26 = *v25;
  v27 = -v26;
  v458 = v25;
  v28 = (v25 - v26);
  v29 = *v28;
  if (v29 < 0x25)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v30 = v28[18];
    if (v28[18])
    {
      LOBYTE(v30) = *(v458 + v30) != 0;
    }
  }

  *(a1 + 1585) = v30;
  v31 = (v452 - *v452);
  if (*v31 < 0x55u || (v32 = v31[42]) == 0 || !*(v452 + v32))
  {
LABEL_63:
    if (v29 < 7)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      v46 = *(v458 + v27 + 6);
      if (*(v458 + v27 + 6))
      {
        LODWORD(v46) = *(v458 + v46);
      }
    }

    v442 = (a1 + 304);
    v443 = (a1 + 256);
    v440 = (a1 + 328);
    v441 = (a1 + 280);
    *(a1 + 800) = v46;
    v47 = (v458 - *v458);
    v438 = a1 + 928;
    if (*v47 >= 0x13u && (v48 = v47[9]) != 0)
    {
      v49 = v458 + v48 + *(v458 + v48) + 4;
    }

    else
    {
      v49 = "";
    }

    v446 = (a1 + 864);
    v447 = (a1 + 840);
    v436 = a1 + 1400;
    v453 = a1 + 1536;
    v439 = (a1 + 1616);
    v444 = (a1 + 144);
    MEMORY[0x29ED51E00](v448, v49);
    v50 = (v458 - *v458);
    if (*v50 >= 9u && (v51 = v50[4]) != 0)
    {
      v52 = v458 + v51 + *(v458 + v51) + 4;
    }

    else
    {
      v52 = "";
    }

    MEMORY[0x29ED51E00](v447, v52);
    v53 = (v458 - *v458);
    if (*v53 < 0x29u)
    {
      LOBYTE(v54) = 0;
    }

    else
    {
      v54 = v53[20];
      if (v54)
      {
        LOBYTE(v54) = *(v458 + v54) != 0;
      }
    }

    *(a1 + 888) = v54;
    std::string::operator=(v446, __str);
    v55 = (v458 - *v458);
    if (*v55 >= 0x51u && (v56 = v55[40]) != 0)
    {
      v57 = v458 + v56 + *(v458 + v56) + 4;
    }

    else
    {
      v57 = "";
    }

    MEMORY[0x29ED51E00](v445, v57);
    v58 = (v458 - *v458);
    if (*v58 >= 5u && v58[2] && *(a2 + 16608) == 1)
    {
      v59 = a3[1];
      if (v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_698;
      }

      v60 = *a3;
      if (v59 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v59)
      {
        memmove(__dst, v60, v59);
      }

      __dst[v59] = 0;
      if (*v12 < 0)
      {
        operator delete(*v436);
      }

      *v436 = *__dst;
      *(v436 + 16) = *&__dst[16];
      v61 = a3[3];
      if (a3[4])
      {
        v62 = v61 == 0;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v61 = a3[73];
      }

      *(a1 + 1424) = v61 - *a3;
    }

    v437 = a5;
    v456 = a2;
    v63 = a3 + 113;
    if (a3[43])
    {
      v64 = a3[44] == 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = 43;
    if (v64)
    {
      v65 = 113;
    }

    else
    {
      v63 = a3 + 43;
    }

    v449 = a3;
    v66 = a3[v65];
    if (!v66 || !v63[1])
    {
LABEL_126:
      v79 = v449;
      v80 = v449 + 138;
      if (v449[68])
      {
        v81 = v449[69] == 0;
      }

      else
      {
        v81 = 1;
      }

      v82 = 68;
      if (v81)
      {
        v82 = 138;
      }

      else
      {
        v80 = v449 + 68;
      }

      v83 = v449[v82];
      v84 = v80[1];
      if (v83)
      {
        v85 = v84 == 0;
      }

      else
      {
        v85 = 1;
      }

      if (v85)
      {
        v86 = 0;
        v87 = v458;
        v88 = v452;
      }

      else
      {
        v89 = (v83 + *v83);
        v90 = (v89 - *v89);
        v87 = v458;
        v88 = v452;
        if (*v90 >= 5u && (v91 = v90[2]) != 0)
        {
          v86 = *(v89 + v91);
        }

        else
        {
          v86 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 1624) = (v86 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v92 = (v88 - *v88);
      if (*v92 < 5u)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v93 = v92[2];
        if (v93)
        {
          LODWORD(v93) = *(v88 + v93);
        }
      }

      *v439 = v93;
      v94 = (v88 - *v88);
      if (*v94 < 0x2Du)
      {
        LODWORD(v95) = 0;
      }

      else
      {
        v95 = v94[22];
        if (v95)
        {
          LODWORD(v95) = *(v88 + v95);
        }
      }

      *(a1 + 1620) = v95;
      v96 = (v88 - *v88);
      if (*v96 < 0x35u)
      {
        LODWORD(v97) = 0;
      }

      else
      {
        v97 = v96[26];
        if (v97)
        {
          LODWORD(v97) = *(v88 + v97);
        }
      }

      *(a1 + 1660) = v97;
      v98 = (v88 - *v88);
      if (*v98 < 0x43u)
      {
        LODWORD(v99) = 0;
      }

      else
      {
        v99 = v98[33];
        if (v99)
        {
          LODWORD(v99) = *(v88 + v99);
        }
      }

      *(a1 + 1696) = v99;
      v100 = v449 + 108;
      if (v449[38])
      {
        v101 = v449[39] == 0;
      }

      else
      {
        v101 = 1;
      }

      v102 = 38;
      if (v101)
      {
        v102 = 108;
      }

      else
      {
        v100 = v449 + 38;
      }

      v103 = v449[v102];
      if (v103 && v100[1])
      {
        v104 = (v103 + *v103);
        v105 = (v104 - *v104);
        if (*v105 < 0xDu)
        {
          LODWORD(v106) = 0;
        }

        else
        {
          v106 = v105[6];
          if (v106)
          {
            LODWORD(v106) = *(v104 + v106);
          }
        }

        *(a1 + 1620) = v106;
        v107 = (v104 - *v104);
        if (*v107 < 0xBu)
        {
          LODWORD(v108) = 0;
        }

        else
        {
          v108 = v107[5];
          if (v108)
          {
            LODWORD(v108) = *(v104 + v108);
          }
        }

        *(a1 + 1628) = v108;
        v109 = (v104 - *v104);
        if (*v109 < 0x11u)
        {
          LODWORD(v110) = 0;
        }

        else
        {
          v110 = v109[8];
          if (v110)
          {
            LODWORD(v110) = *(v104 + v110);
          }
        }

        *(a1 + 1632) = v110;
        v111 = (v104 - *v104);
        if (*v111 < 0x13u)
        {
          LODWORD(v112) = 0;
        }

        else
        {
          v112 = v111[9];
          if (v112)
          {
            LODWORD(v112) = *(v104 + v112);
          }
        }

        *(a1 + 1636) = v112;
        v113 = (v104 - *v104);
        if (*v113 < 0x17u)
        {
          LODWORD(v114) = 0;
        }

        else
        {
          v114 = v113[11];
          if (v114)
          {
            LODWORD(v114) = *(v104 + v114);
          }
        }

        *(a1 + 1640) = v114;
        v115 = (v104 - *v104);
        if (*v115 < 0x1Bu)
        {
          LODWORD(v116) = 0;
        }

        else
        {
          v116 = v115[13];
          if (v116)
          {
            LODWORD(v116) = *(v104 + v116);
          }
        }

        *(a1 + 1644) = v116;
        v117 = (v104 - *v104);
        if (*v117 < 0x15u)
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = v117[10];
          if (v118)
          {
            LODWORD(v118) = *(v104 + v118);
          }
        }

        *(a1 + 1648) = v118;
        v119 = (v104 - *v104);
        if (*v119 < 0x19u)
        {
          LODWORD(v120) = 0;
        }

        else
        {
          v120 = v119[12];
          if (v120)
          {
            LODWORD(v120) = *(v104 + v120);
          }
        }

        *(a1 + 1652) = v120;
        v121 = (v104 - *v104);
        if (*v121 < 0x1Du)
        {
          LODWORD(v122) = 0;
        }

        else
        {
          v122 = v121[14];
          if (v122)
          {
            LODWORD(v122) = *(v104 + v122);
          }
        }

        *(a1 + 1656) = v122;
        v123 = (v104 - *v104);
        if (*v123 < 0xFu)
        {
          LODWORD(v124) = 0;
        }

        else
        {
          v124 = v123[7];
          if (v124)
          {
            LODWORD(v124) = *(v104 + v124);
          }
        }

        *(a1 + 1660) = v124;
        v125 = (v104 - *v104);
        if (*v125 < 0x1Fu)
        {
          LODWORD(v126) = 0;
        }

        else
        {
          v126 = v125[15];
          if (v126)
          {
            LODWORD(v126) = *(v104 + v126);
          }
        }

        *(a1 + 1664) = v126;
        v127 = (v104 - *v104);
        if (*v127 < 0x21u)
        {
          LODWORD(v128) = 0;
        }

        else
        {
          v128 = v127[16];
          if (v128)
          {
            LODWORD(v128) = *(v104 + v128);
          }
        }

        *(a1 + 1668) = v128;
        v129 = (v104 - *v104);
        if (*v129 < 0x23u)
        {
          LODWORD(v130) = 0;
        }

        else
        {
          v130 = v129[17];
          if (v130)
          {
            LODWORD(v130) = *(v104 + v130);
          }
        }

        *(a1 + 1672) = v130;
        v131 = (v104 - *v104);
        if (*v131 < 0x25u)
        {
          LODWORD(v132) = 0;
        }

        else
        {
          v132 = v131[18];
          if (v132)
          {
            LODWORD(v132) = *(v104 + v132);
          }
        }

        *(a1 + 1676) = v132;
        v133 = (v104 - *v104);
        if (*v133 < 0x27u)
        {
          LODWORD(v134) = 0;
        }

        else
        {
          v134 = v133[19];
          if (v134)
          {
            LODWORD(v134) = *(v104 + v134);
          }
        }

        *(a1 + 1680) = v134;
        v135 = (v104 - *v104);
        if (*v135 < 0x29u)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[20];
          if (v136)
          {
            LODWORD(v136) = *(v104 + v136);
          }
        }

        *(a1 + 1684) = v136;
        v137 = (v104 - *v104);
        if (*v137 < 0x2Bu)
        {
          LODWORD(v138) = 0;
        }

        else
        {
          v138 = v137[21];
          if (v138)
          {
            LODWORD(v138) = *(v104 + v138);
          }
        }

        *(a1 + 1688) = v138;
        v139 = (v104 - *v104);
        if (*v139 < 7u)
        {
          LODWORD(v140) = 0;
        }

        else
        {
          v140 = v139[3];
          if (v140)
          {
            LODWORD(v140) = *(v104 + v140);
          }
        }

        *(a1 + 1692) = v140;
        v141 = (v104 - *v104);
        if (*v141 >= 5u && (v142 = v141[2]) != 0)
        {
          v143 = *(v104 + v142);
        }

        else
        {
          v143 = 0;
        }

        *(a1 + 1700) = v143;
      }

      if (v449[53])
      {
        v144 = v449[54];
        if (v144)
        {
          v145 = v449[53];
        }

        else
        {
          v145 = v449[123];
        }

        if (v144)
        {
          v146 = v449 + 53;
        }

        else
        {
          v146 = v449 + 123;
        }
      }

      else
      {
        v146 = v449 + 123;
        v145 = v449[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v145, v146[1]);
      std::string::push_back((a1 + 1760), 0);
      v147 = *v88;
      v148 = v88 - v147;
      v149 = *(v88 - v147);
      if (v149 < 0x39)
      {
        goto LABEL_271;
      }

      v150 = -v147;
      v151 = *(v148 + 28);
      if (v151)
      {
        v152 = (v88 + v151 + *(v88 + v151));
        if (*v152)
        {
          *(a1 + 1504) = 1;
          v153 = (v152 + v152[1] + 4);
          v154 = (v153 - *v153);
          if (*v154 >= 9u && (v155 = v154[4]) != 0)
          {
            v156 = *(v153 + v155);
          }

          else
          {
            v156 = 0;
          }

          *(a1 + 1704) = v156;
          *(a1 + 1708) = 1;
          v157 = *v88;
          v150 = -v157;
          v149 = *(v88 - v157);
        }
      }

      if (v149 < 0x3B)
      {
        goto LABEL_271;
      }

      v158 = v88 + v150;
      if (*(v158 + 29))
      {
        v159 = (v88 + *(v158 + 29) + *(v88 + *(v158 + 29)));
        v160 = *v159;
        if (v160)
        {
          v161 = v159 + 1;
          do
          {
            v163 = *v161++;
            v162 = v163;
            if (!(v163 >> 20))
            {
              *(a1 + 1488 + 8 * (v162 > 0x3F)) |= 1 << v162;
            }

            --v160;
          }

          while (v160);
        }
      }

      if (v149 < 0x57)
      {
LABEL_271:
        LODWORD(v164) = 0;
      }

      else
      {
        v164 = *(v158 + 43);
        if (*(v158 + 43))
        {
          LODWORD(v164) = *(v88 + v164);
        }
      }

      *(a1 + 692) = v164;
      v165 = (v88 - *v88);
      if (*v165 >= 0x21u && (v166 = v165[16]) != 0)
      {
        v167 = *(v88 + v166);
      }

      else
      {
        v167 = 0;
      }

      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v167;
      v168 = (v88 - *v88);
      if (*v168 < 0x59u)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        v169 = v168[44];
        if (v169)
        {
          LODWORD(v169) = *(v88 + v169);
        }
      }

      *(a1 + 720) = v169;
      v170 = (v88 - *v88);
      if (*v170 < 0x51u)
      {
        LODWORD(v171) = 0;
      }

      else
      {
        v171 = v170[40];
        if (v171)
        {
          LODWORD(v171) = *(v88 + v171);
        }
      }

      *(a1 + 724) = v171;
      v172 = (v88 - *v88);
      if (*v172 < 0x4Bu)
      {
        LODWORD(v173) = 0;
      }

      else
      {
        v173 = v172[37];
        if (v173)
        {
          LODWORD(v173) = *(v88 + v173);
        }
      }

      *(a1 + 732) = v173;
      v174 = (v88 - *v88);
      v175 = *v174;
      if (v175 >= 0x25)
      {
        if (v174[18] && *(v88 + v174[18]))
        {
          if (v175 < 0x27)
          {
            LOBYTE(v176) = 0;
            v177 = 1;
            goto LABEL_300;
          }

          v176 = v174[19];
          goto LABEL_294;
        }

        if (v175 >= 0x27)
        {
          v176 = v174[19];
          if (v174[19] && *(v88 + v174[19]))
          {
            v177 = 1;
            LOBYTE(v176) = 1;
            goto LABEL_300;
          }

          if (v175 < 0x29)
          {
            goto LABEL_694;
          }

          if (v174[20] && *(v88 + v174[20]))
          {
LABEL_294:
            v177 = 1;
            goto LABEL_695;
          }

          if (v175 >= 0x71 && (v428 = v174[56]) != 0)
          {
            v177 = *(v88 + v428) != 0;
          }

          else
          {
LABEL_694:
            v177 = 0;
          }

LABEL_695:
          if (v176)
          {
            LOBYTE(v176) = *(v88 + v176) != 0;
          }

LABEL_300:
          *(a1 + 742) = v176;
          v178 = (v87 - *v87);
          v179 = *v178;
          if (v179 < 0x21)
          {
            v181 = 0;
            LODWORD(v180) = 0;
          }

          else
          {
            v180 = v178[16];
            if (v178[16])
            {
              LODWORD(v180) = *(v87 + v180);
            }

            if (v179 < 0x4D)
            {
              v181 = 0;
            }

            else
            {
              v181 = v178[38];
              if (v178[38])
              {
                v181 = *(v87 + v181);
              }

              if (v179 >= 0x4F)
              {
                v182 = v178[39];
                if (v182)
                {
                  v182 = *(v87 + v182);
                }

LABEL_312:
                *(a1 + 784) = v180 | (v181 << 32);
                *(a1 + 792) = v182;
                *(a1 + 746) = (v177 | v176) & 1;
                v183 = *v88;
                v184 = (v88 - v183);
                v185 = *(v88 - v183);
                if (v185 < 0x37)
                {
                  LOBYTE(v186) = 0;
                }

                else
                {
                  v186 = v184[27];
                  if (v184[27])
                  {
                    LOBYTE(v186) = *(v88 + v186) != 0;
                  }
                }

                *(a1 + 741) = v186;
                v187 = (v87 - *v87);
                v188 = *v187;
                if (v188 < 0x33)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v187[25];
                  if (v187[25])
                  {
                    LOBYTE(v189) = *(v87 + v189) != 0;
                  }
                }

                *(a1 + 747) = v189;
                if (v185 < 0x3F)
                {
                  LOBYTE(v190) = 0;
                }

                else
                {
                  v190 = v184[31];
                  if (v184[31])
                  {
                    v191 = (v88 + v190 + *(v88 + v190));
                    v190 = *v191;
                    if (v190)
                    {
                      v192 = v191 + 1;
                      while (1)
                      {
                        v194 = *v192++;
                        v193 = v194;
                        if (v194 < 0x36 && ((0x3F000000000777uLL >> v193) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v190)
                        {
                          goto LABEL_329;
                        }
                      }

                      LOBYTE(v190) = 1;
                    }
                  }
                }

LABEL_329:
                *(a1 + 749) = v190;
                if (v188 <= 0x14)
                {
                  LOBYTE(v196) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v195 = v187[10];
                  if (v187[10])
                  {
                    LOBYTE(v195) = *(v87 + v195) != 0;
                  }

                  *(a1 + 743) = v195;
                  if (v188 < 0x25)
                  {
                    LOBYTE(v196) = 0;
                  }

                  else
                  {
                    v196 = v187[18];
                    if (v187[18])
                    {
                      LOBYTE(v196) = *(v87 + v196) != 0;
                    }
                  }
                }

                v197 = -v183;
                *(a1 + 1585) = v196;
                if (v185 < 0x5D)
                {
                  LOBYTE(v198) = 0;
                }

                else
                {
                  v198 = v184[46];
                  if (v198)
                  {
                    LOBYTE(v198) = *(v88 + v198) != 0;
                  }
                }

                v450 = v177;
                *(a1 + 748) = v198;
                if (v188 >= 0x23 && (v199 = v187[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v200 = (v87 + v199 + *(v87 + v199));
                  v201 = *v200;
                  if (v201)
                  {
                    v202 = &v200[v201];
                    while (1)
                    {
                      v203 = v200[1];
                      v204 = (++v200 + v203);
                      v205 = (v204 - *v204);
                      v206 = *v205;
                      if (v206 < 7)
                      {
                        v207 = 0;
                        v209 = 0;
                        if (v206 < 5)
                        {
                          goto LABEL_353;
                        }

                        v208 = v205[2];
                        if (v208)
                        {
                          goto LABEL_352;
                        }
                      }

                      else if (v205[3])
                      {
                        v207 = *(v204 + v205[3]);
                        v208 = v205[2];
                        if (v208)
                        {
                          goto LABEL_352;
                        }
                      }

                      else
                      {
                        v207 = 0;
                        v208 = v205[2];
                        if (v208)
                        {
LABEL_352:
                          v209 = *(v204 + v208);
                          goto LABEL_353;
                        }
                      }

                      v209 = 0;
LABEL_353:
                      v210 = v459;
LABEL_354:
                      v211 = *v210;
                      if (!*v210)
                      {
LABEL_358:
                        operator new();
                      }

                      while (1)
                      {
                        v210 = v211;
                        v212 = *(v211 + 28);
                        if (v209 < v212)
                        {
                          goto LABEL_354;
                        }

                        if (v212 >= v209)
                        {
                          break;
                        }

                        v211 = v210[1];
                        if (!v211)
                        {
                          goto LABEL_358;
                        }
                      }

                      *(v210 + 8) = v207;
                      if (v200 == v202)
                      {
                        v88 = v452;
                        v213 = *v452;
                        v197 = -v213;
                        v185 = *(v452 - v213);
                        v79 = v449;
                        v87 = v458;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v185 >= 0x21 && *(v88 + v197 + 32))
                {
                  v214 = *(v88 + *(v88 + v197 + 32));
                }

                else
                {
                  v214 = 0;
                }

                {
                  getAdditionalSpillBufferBytes(void)::extra = 0;
                }

                v215 = getAdditionalSpillBufferBytes(void)::extra + v214;
                *(a1 + 688) = getAdditionalSpillBufferBytes(void)::extra + v214;
                v216 = (v88 - *v88);
                if (*v216 < 0x43u)
                {
                  LODWORD(v217) = 0;
                }

                else
                {
                  v217 = v216[33];
                  if (v217)
                  {
                    LODWORD(v217) = *(v88 + v217);
                  }
                }

                *(a1 + 700) = v217;
                v218 = (v88 - *v88);
                if (*v218 < 5u)
                {
                  LODWORD(v219) = 0;
                }

                else
                {
                  v219 = v218[2];
                  if (v219)
                  {
                    LODWORD(v219) = *(v88 + v219);
                  }
                }

                *(a1 + 684) = v219;
                v220 = (v88 - *v88);
                if (*v220 < 0x51u)
                {
                  LODWORD(v221) = 0;
                }

                else
                {
                  v221 = v220[40];
                  if (v221)
                  {
                    LODWORD(v221) = *(v88 + v221);
                  }
                }

                *(a1 + 716) = v221;
                v222 = (v88 - *v88);
                if (*v222 < 0x4Fu)
                {
                  LODWORD(v223) = 0;
                }

                else
                {
                  v223 = v222[39];
                  if (v223)
                  {
                    LODWORD(v223) = *(v88 + v223);
                  }
                }

                *(a1 + 728) = v223;
                *(a1 + 736) = *(a4 + 468);
                v224 = (v88 - *v88);
                if ((*(v88 + v224[6] + *(v88 + v224[6])) | v215) != 0 || v450)
                {
                  goto LABEL_401;
                }

                v225 = *v224;
                if (v225 < 0x21)
                {
                  v226 = 0;
                }

                else
                {
                  if (v224[16])
                  {
                    v226 = *(v88 + v224[16]);
                  }

                  else
                  {
                    v226 = 0;
                  }

                  if (v225 >= 0x43 && v224[33])
                  {
                    v227 = *(v88 + v224[33]);
LABEL_396:
                    {
                      getAdditionalSpillBufferBytes(void)::extra = 0;
                    }

                    if (!(v227 + v226 + getAdditionalSpillBufferBytes(void)::extra))
                    {
                      v228 = (v88 - *v88);
                      if (*v228 < 0x5Fu)
                      {
                        LOBYTE(v229) = 0;
                      }

                      else
                      {
                        v229 = v228[47];
                        if (v229)
                        {
                          LOBYTE(v229) = *(v88 + v229) != 0;
                        }
                      }

LABEL_402:
                      *(a1 + 740) = v229;
                      v230 = (v87 - *v87);
                      if (*v230 < 0x11u)
                      {
                        LODWORD(v231) = 0;
                      }

                      else
                      {
                        v231 = v230[8];
                        if (v231)
                        {
                          LODWORD(v231) = *(v87 + v231);
                        }
                      }

                      v232 = (a1 + 1200);
                      *(a1 + 1392) = v231;
                      {
                      }

                      v233 = v79 + 3;
                      if (v79[4])
                      {
                        v234 = v79[3] == 0;
                      }

                      else
                      {
                        v234 = 1;
                      }

                      v235 = v79 + 73;
                      if (v234)
                      {
                        v236 = v79 + 73;
                      }

                      else
                      {
                        v236 = v79 + 3;
                      }

                      AGX::Heap<true>::allocateImpl(__dst, v456 + 6496, v236[1], (a1 + 1448));
                      *(a1 + 1480) += *&__dst[16];
                      v237 = *&__dst[16];
                      *v232 = *__dst;
                      *(a1 + 1216) = v237;
                      *(a1 + 1225) = *&__dst[25];
                      *(a1 + 920) = *(a1 + 1200);
                      *(a1 + 952) = v456 + 6496;
                      v238 = *(a1 + 1216);
                      *(a1 + 960) = *v232;
                      *(a1 + 976) = v238;
                      *(a1 + 985) = *(a1 + 1225);
                      if (*v233)
                      {
                        v239 = v79[4];
                        if (v239)
                        {
                          v240 = *v233;
                        }

                        else
                        {
                          v240 = v79[73];
                        }

                        if (v239)
                        {
                          v235 = v79 + 3;
                        }
                      }

                      else
                      {
                        v240 = *v235;
                      }

                      memcpy(*(a1 + 1208), v240, v235[1]);
                      v241 = *(a1 + 1208);
                      v242 = *(a1 + 1216);
                      *(a1 + 928) = *(a1 + 920);
                      *(a1 + 936) = v241;
                      *(a1 + 944) = v242;
                      v243 = v79 + 8;
                      if (v79[8])
                      {
                        if (v79[9])
                        {
                          v244 = v79 + 8;
                        }

                        else
                        {
                          v244 = v79 + 78;
                        }

                        v245 = v244[1];
                      }

                      else
                      {
                        v245 = v79[79];
                      }

                      if (v245)
                      {
                        AGX::Heap<true>::allocateImpl(__dst, v456 + 6328, v245, (a1 + 1456));
                        *(a1 + 1480) += *&__dst[16];
                        v246 = *&__dst[16];
                        *(a1 + 1248) = *__dst;
                        *(a1 + 1264) = v246;
                        *(a1 + 1273) = *&__dst[25];
                        v247 = *(a1 + 1264);
                        *(a1 + 1008) = *(a1 + 1248);
                        *(a1 + 1024) = v247;
                        *(a1 + 1033) = *(a1 + 1273);
                        if (*v243)
                        {
                          v248 = v79[9];
                          if (v248)
                          {
                            v249 = *v243;
                          }

                          else
                          {
                            v249 = v79[78];
                          }

                          if (v248)
                          {
                            v250 = v79 + 8;
                          }

                          else
                          {
                            v250 = v79 + 78;
                          }
                        }

                        else
                        {
                          v250 = v79 + 78;
                          v249 = v79[78];
                        }

                        memcpy(*(a1 + 1256), v249, v250[1]);
                      }

                      v251 = v79 + 13;
                      if (v79[13])
                      {
                        if (v79[14])
                        {
                          v252 = v79 + 13;
                        }

                        else
                        {
                          v252 = v79 + 83;
                        }

                        v253 = v252[1];
                        if (!v253)
                        {
                          goto LABEL_453;
                        }
                      }

                      else
                      {
                        v253 = v79[84];
                        if (!v253)
                        {
                          goto LABEL_453;
                        }
                      }

                      AGX::Heap<true>::allocateImpl(__dst, v456 + 6328, v253, (a1 + 1464));
                      *(a1 + 1480) += *&__dst[16];
                      v254 = *&__dst[16];
                      *(a1 + 1296) = *__dst;
                      *(a1 + 1312) = v254;
                      *(a1 + 1321) = *&__dst[25];
                      v255 = *(a1 + 1312);
                      *(a1 + 1056) = *(a1 + 1296);
                      *(a1 + 1072) = v255;
                      *(a1 + 1081) = *(a1 + 1321);
                      if (*v251)
                      {
                        v256 = v79[14];
                        if (v256)
                        {
                          v257 = *v251;
                        }

                        else
                        {
                          v257 = v79[83];
                        }

                        if (v256)
                        {
                          v258 = v79 + 13;
                        }

                        else
                        {
                          v258 = v79 + 83;
                        }
                      }

                      else
                      {
                        v258 = v79 + 83;
                        v257 = v79[83];
                      }

                      memcpy(*(a1 + 1304), v257, v258[1]);
                      v259 = *(a1 + 1312);
                      *(a1 + 1152) = *(a1 + 1296);
                      *(a1 + 1168) = v259;
LABEL_453:
                      v260 = v79 + 23;
                      if (v79[23])
                      {
                        if (!v79[24])
                        {
                          v260 = v79 + 93;
                        }

                        v261 = v260[1];
                        v262 = v452;
                        if (!v261)
                        {
                          goto LABEL_458;
                        }
                      }

                      else
                      {
                        v261 = v79[94];
                        v262 = v452;
                        if (!v261)
                        {
LABEL_458:
                          v266 = v457;
                          if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                          {
                            {
                              {
                                v268 = v448;
                                if (*(a1 + 839) < 0)
                                {
                                  v268 = *v448;
                                }

                                v269 = v446;
                                if (*(a1 + 887) < 0)
                                {
                                  v269 = v446->__r_.__value_.__r.__words[0];
                                }

                                v270 = v447;
                                if (*(a1 + 863) < 0)
                                {
                                  v270 = *v447;
                                }

                                v271 = *(a1 + 800);
                                v272 = *(a1 + 808);
                                v273 = v445;
                                if (*(a1 + 919) < 0)
                                {
                                  v273 = *v445;
                                }

                                v274 = *(a1 + 920);
                                v275 = *(a1 + 1216);
                                *__dst = 136448002;
                                *&__dst[4] = v268;
                                *&__dst[12] = 2082;
                                *&__dst[14] = v269;
                                *&__dst[22] = 2082;
                                *&__dst[24] = v270;
                                *&__dst[32] = 1026;
                                *&__dst[34] = v271;
                                *&__dst[38] = 2050;
                                *&__dst[40] = v272;
                                *v464 = 2082;
                                *&v464[2] = v273;
                                *&v464[10] = 2050;
                                *&v464[12] = v274;
                                v465 = 2050;
                                v466 = v275;
                                _os_signpost_emit_with_name_impl(&dword_29CA13000, v267, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                              }
                            }

                            v276 = *(a1 + 8);
                            v277 = v448;
                            if (*(a1 + 839) < 0)
                            {
                              v277 = *v448;
                            }

                            v278 = v446;
                            if (*(a1 + 887) < 0)
                            {
                              v278 = v446->__r_.__value_.__r.__words[0];
                            }

                            v279 = v447;
                            if (*(a1 + 863) < 0)
                            {
                              v279 = *v447;
                            }

                            v280 = v445;
                            if (*(a1 + 919) < 0)
                            {
                              v280 = *v445;
                            }

                            v281 = *(a1 + 800);
                            v282 = *(a1 + 808);
                            v283 = *(a1 + 920);
                            v284 = *(a1 + 1216);
                            v285 = *(a1 + 888);
                            *__dst = v277;
                            *&__dst[8] = v278;
                            *&__dst[16] = v279;
                            *&__dst[24] = v280;
                            *&__dst[32] = v281;
                            *&__dst[40] = v282;
                            *v464 = v283;
                            *&v464[8] = v284;
                            v464[16] = v285;
                            AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v276, a1, __dst);
                          }

                          v286 = *(a4 + 208);
                          v288 = *(a4 + 144);
                          v287 = *(a4 + 148);
                          if (v286)
                          {
                            v289 = *(a4 + 144);
                          }

                          else
                          {
                            v289 = 0;
                          }

                          v290 = *(a4 + 176);
                          if (*(a4 + 176) == 0)
                          {
                            v288 = 0;
                          }

                          v291 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                          *(a1 + 48) = v289 + v287 + v288 + *(a4 + 152) + ((v291 + 3) & 0xFFFFFFFC);
                          v292 = *(a1 + 56);
                          v293 = (*(a1 + 64) - v292) >> 2;
                          if (v291 <= v293)
                          {
                            if (v291 < v293)
                            {
                              *(a1 + 64) = v292 + 4 * v291;
                            }
                          }

                          else
                          {
                            std::vector<unsigned int>::__append(v457, v291 - v293);
                            v290 = *(a4 + 176);
                            v287 = *(a4 + 148);
                            v286 = *(a4 + 208);
                          }

                          if (v286)
                          {
                            v294 = *(a4 + 144);
                          }

                          else
                          {
                            v294 = 0;
                          }

                          if (v290 | *(a4 + 184))
                          {
                            v295 = *(a4 + 144);
                          }

                          else
                          {
                            v295 = 0;
                          }

                          v296 = (v287 + v294 + v295);
                          v297 = *(a1 + 144);
                          v298 = (*(a1 + 152) - v297) >> 2;
                          if (v296 <= v298)
                          {
                            if (v296 < v298)
                            {
                              *(a1 + 152) = v297 + 4 * v296;
                            }
                          }

                          else
                          {
                            std::vector<unsigned int>::__append(v444, v296 - v298);
                          }

                          v299 = *v262;
                          v300 = *(v262 - v299 + 16);
                          v301 = *(v262 + v300);
                          v302 = *(v262 + v300 + v301);
                          if (v302)
                          {
                            v303 = 4 * v302;
                            v304 = v300 + v301;
                            while (1)
                            {
                              v306 = *(v262 + v304 + 4);
                              v307 = v262 + v304 + v306;
                              v308 = v306 - *(v307 + 1);
                              v309 = v262 + v304 + v308;
                              v310 = *(v309 + 2);
                              if (v310 < 7)
                              {
                                goto LABEL_511;
                              }

                              v311 = *(v309 + 5);
                              if (!v311 || (*(v262 + v304 + v306 + v311 + 4) & 0x80000000) == 0)
                              {
                                break;
                              }

LABEL_504:
                              v304 += 4;
                              v303 -= 4;
                              if (!v303)
                              {
                                v299 = *v262;
                                goto LABEL_518;
                              }
                            }

                            if (v310 < 9)
                            {
LABEL_511:
                              LODWORD(v312) = 0;
                            }

                            else
                            {
                              v312 = *(v262 + v304 + v308 + 12);
                              if (v312)
                              {
                                LODWORD(v312) = 4 * *(v262 + v304 + v306 + v312 + 4);
                              }
                            }

                            v313 = v312 - *(a4 + 120);
                            v457->__begin_[v313] = 1610612735;
                            v457->__begin_[v313 + 1] = 0x40000000;
                            v457->__begin_[v313 + 2] = 1073741825;
                            v457->__begin_[v313 + 3] = 1073741826;
                            v314 = v306 - *(v307 + 1);
                            if (*(v262 + v304 + v314 + 4) >= 0xBu && *(v262 + v304 + v314 + 14) && *(v262 + v304 + v306 + *(v262 + v304 + v314 + 14) + 4))
                            {
                              v315 = *(v262 + v304 + v314 + 10);
                              if (v315)
                              {
                                v305 = *(v262 + v304 + v306 + v315 + 4) & 0xFFFFF;
                              }

                              else
                              {
                                v305 = 0;
                              }

                              *(a1 + 768 + 8 * (v305 > 0x3F)) |= 1 << v305;
                            }

                            goto LABEL_504;
                          }

LABEL_518:
                          v316 = -v299;
                          v317 = v262 + v316;
                          if (*(a1 + 742))
                          {
                            v318 = *(v317 + 12);
                            v319 = *(v262 + v318);
                            v320 = (v262 + v318 + v319);
                            v321 = *v320;
                            if (v321)
                            {
                              v322 = 0;
                              v323 = 4 * v321;
                              v324 = v262 + v318 + v319;
                              while (1)
                              {
                                v325 = v320[v322 / 4 + 1];
                                v326 = v325 - *(&v320[v322 / 4 + 1] + v325);
                                v327 = &v324[v322 + v326];
                                v328 = *(v327 + 2);
                                if (v328 >= 5)
                                {
                                  v329 = *(v327 + 4);
                                  if (v329)
                                  {
                                    if (v324[v322 + 4 + v325 + v329] == 93)
                                    {
                                      if (v328 < 7)
                                      {
                                        break;
                                      }

                                      v330 = *&v324[v322 + 10 + v326];
                                      if (!v330)
                                      {
                                        break;
                                      }

                                      v331 = *&v324[v322 + 4 + v325 + v330];
                                      if ((v331 & 0x80000000) == 0 && (v331 & 0xFFF00000) != 0x400000)
                                      {
                                        break;
                                      }
                                    }
                                  }
                                }

                                v322 += 4;
                                if (v323 == v322)
                                {
                                  goto LABEL_530;
                                }
                              }

                              *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                            }
                          }

LABEL_530:
                          v332 = *(v317 + 10);
                          v333 = *(v262 + v332);
                          v334 = *(v262 + v332 + v333);
                          if (!v334)
                          {
                            goto LABEL_546;
                          }

                          v335 = 4 * v334;
                          v336 = v332 + v333;
                          while (1)
                          {
                            v337 = *(v262 + v336 + 4);
                            v338 = v337 - *(v262 + v336 + v337 + 4);
                            v339 = v262 + v336 + v338;
                            v340 = *(v339 + 2);
                            if (v340 < 7)
                            {
                              goto LABEL_539;
                            }

                            v341 = *(v339 + 5);
                            if (!v341 || (*(v262 + v336 + v337 + v341 + 4) & 0x80000000) == 0)
                            {
                              break;
                            }

LABEL_532:
                            v336 += 4;
                            v335 -= 4;
                            if (!v335)
                            {
                              v316 = -*v262;
LABEL_546:
                              v451 = a1 + 752;
                              v346 = (v262 + *(v262 + v316 + 12));
                              v347 = (v346 + *v346);
                              v348 = *v347;
                              if (v348)
                              {
                                v349 = &v347[v348];
                                while (1)
                                {
                                  v350 = v347[1];
                                  v351 = (++v347 + v350);
                                  v352 = (v351 - *v351);
                                  v353 = *v352;
                                  if (v353 < 7)
                                  {
                                    break;
                                  }

                                  if (!v352[3] || (*(v351 + v352[3]) & 0x80000000) == 0)
                                  {
                                    if (v353 < 9)
                                    {
                                      LODWORD(v354) = 0;
                                      goto LABEL_557;
                                    }

                                    v354 = v352[4];
                                    if (v352[4])
                                    {
                                      LODWORD(v354) = (*(v351 + v354) >> 1) & 0x1FFFFFFF;
LABEL_557:
                                      v355 = v352[3];
                                      if (v355)
                                      {
                                        LODWORD(v355) = *(v351 + v355) & 0xFFFFF;
                                      }

                                      goto LABEL_561;
                                    }

LABEL_556:
                                    if (v353 >= 7)
                                    {
                                      goto LABEL_557;
                                    }

                                    LODWORD(v355) = 0;
LABEL_561:
                                    v356 = *(a4 + 124) + v354 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                                    *(*v266 + 4 * v356) = 0x1FFFFFFF;
                                    v357 = (v351 - *v351);
                                    if (*v357 >= 0xBu)
                                    {
                                      v358 = v357[5];
                                      if (v358)
                                      {
                                        if (*(v351 + v358))
                                        {
                                          *(v451 + 8 * (v355 > 0x3F)) |= 1 << v355;
                                        }
                                      }
                                    }

                                    if (*(a1 + 1587) == 1)
                                    {
                                      v359 = *v459;
                                      if (!*v459)
                                      {
LABEL_697:
                                        abort();
                                      }

                                      v360 = 2 * v356;
                                      v361 = (2 * v356) | 1;
                                      while (1)
                                      {
                                        while (1)
                                        {
                                          v362 = *(v359 + 7);
                                          if (v355 >= v362)
                                          {
                                            break;
                                          }

                                          v359 = *v359;
                                          if (!v359)
                                          {
                                            goto LABEL_697;
                                          }
                                        }

                                        if (v362 >= v355)
                                        {
                                          break;
                                        }

                                        v359 = v359[1];
                                        if (!v359)
                                        {
                                          goto LABEL_697;
                                        }
                                      }

                                      v363 = v455;
LABEL_574:
                                      v364 = *v363;
                                      if (!*v363)
                                      {
LABEL_578:
                                        operator new();
                                      }

                                      while (1)
                                      {
                                        v363 = v364;
                                        v365 = *(v364 + 7);
                                        if (v361 < v365)
                                        {
                                          goto LABEL_574;
                                        }

                                        if (v365 > v360)
                                        {
                                          break;
                                        }

                                        v364 = v363[1];
                                        if (!v364)
                                        {
                                          goto LABEL_578;
                                        }
                                      }

                                      v266 = v457;
                                      *(v363 + 8) = *(v359 + 8);
                                    }
                                  }

                                  if (v347 == v349)
                                  {
                                    goto LABEL_580;
                                  }
                                }

                                LODWORD(v354) = 0;
                                goto LABEL_556;
                              }

LABEL_580:
                              AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v266);
                              v368 = *(a4 + 120);
                              v367 = *(a4 + 124);
                              v369 = *(a4 + 128);
                              v370 = *(a4 + 132);
                              v371 = *(a4 + 136);
                              v372 = *(a4 + 140);
                              v373 = (v367 + v370 + v372 - (v368 + v369 + v371) + 3) & 0xFFFFFFFC;
                              v374 = *(a4 + 160);
                              v375 = *(a4 + 168);
                              if (*(a4 + 160) == 0)
                              {
                                goto LABEL_598;
                              }

                              v376 = 0;
                              v377 = *(a4 + 144);
                              if (*(a4 + 208) != 1 || !v377)
                              {
                                goto LABEL_592;
                              }

                              v378 = 0;
                              *__dst = *(a4 + 160);
                              *&v461 = v375;
                              v379 = v374;
                              while (2)
                              {
                                if (v379)
                                {
                                  v380 = __dst;
LABEL_585:
                                  *v380 = v379 & (v379 - 1);
                                  *&v444->__begin_[v378] = xmmword_29D2F21F0;
                                  v378 += 4;
                                  v379 = *__dst;
                                  continue;
                                }

                                break;
                              }

                              v379 = v461;
                              if (v461)
                              {
                                v380 = &v461;
                                goto LABEL_585;
                              }

                              v371 = *(a4 + 136);
                              v372 = *(a4 + 140);
                              v369 = *(a4 + 128);
                              v370 = *(a4 + 132);
                              v368 = *(a4 + 120);
                              v367 = *(a4 + 124);
                              v377 = *(a4 + 144);
                              v376 = v377;
LABEL_592:
                              v381 = *(a4 + 176);
                              if (*&v381 != 0 && v377 != 0)
                              {
                                v392 = v376 - v373 + ((v372 + v370 - (v371 + v369 + v368) + v367 + 3) & 0xFFFFFFFC);
                                *__dst = v374;
                                *&v461 = v375;
                                while (1)
                                {
                                  if (v374)
                                  {
                                    v393 = __dst;
                                  }

                                  else
                                  {
                                    v374 = v461;
                                    if (!v461)
                                    {
                                      break;
                                    }

                                    v393 = &v461;
                                  }

                                  *v393 = v374 & (v374 - 1);
                                  begin = v444->__begin_;
                                  v444->__begin_[v392] = -1;
                                  begin[v392 + 1] = 0;
                                  begin[v392 + 2] = 1;
                                  begin[v392 + 3] = 2;
                                  v392 += 4;
                                  v374 = *__dst;
                                }
                              }

                              v366 = vorrq_s8(*(a1 + 768), v381);
                              *(a1 + 768) = v366;
LABEL_598:
                              if (*(a4 + 148))
                              {
                                v383 = *(a4 + 144);
                                if (*(a4 + 208))
                                {
                                  v384 = *(a4 + 144);
                                }

                                else
                                {
                                  v384 = 0;
                                }

                                if (*(a4 + 176) == 0)
                                {
                                  v383 = 0;
                                }

                                v385 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v373 + v384 + v383;
                                v387 = *(a4 + 192);
                                v386 = *(a4 + 200);
                                *__dst = v387;
                                *&v461 = v386;
                                while (1)
                                {
                                  if (v387)
                                  {
                                    v388 = __dst;
                                  }

                                  else
                                  {
                                    v387 = v461;
                                    if (!v461)
                                    {
                                      break;
                                    }

                                    v388 = &v461;
                                  }

                                  *v388 = v387 & (v387 - 1);
                                  v389 = *(a1 + 144);
                                  *(v389 + 4 * v385) = -1;
                                  if (*(a1 + 1584) == 1)
                                  {
                                    *(v389 + 4 * (v385 + 1)) = -1;
                                    *(v389 + 4 * (v385 + 2)) = 0;
                                  }

                                  v385 += 4;
                                  v387 = *__dst;
                                }
                              }

                              if (*(a4 + 467) == 1)
                              {
                                v390 = (v452 - *v452);
                                if (*v390 < 0x17u)
                                {
                                  LODWORD(v391) = 0;
                                }

                                else
                                {
                                  v391 = v390[11];
                                  if (v391)
                                  {
                                    v391 = (*(v452 + v391) + 3) >> 2;
                                  }
                                }

                                *(a1 + 408) = v391;
                                *(a1 + 412) = 1073741822;
                              }

                              v395 = (v452 - *v452);
                              if (*v395 >= 0x17u && (v396 = v395[11]) != 0)
                              {
                                v397 = *(v452 + v396) + 3;
                                v398 = (a1 + 176);
                                v399 = *(a1 + 176);
                                v400 = v397 >> 2;
                                *(a1 + 52) = v400;
                                v401 = *(a1 + 168);
                                v402 = (v399 - v401) >> 2;
                                if (v400 > v402)
                                {
                                  std::vector<unsigned int>::__append((a1 + 168), v400 - v402);
                                  goto LABEL_630;
                                }
                              }

                              else
                              {
                                v400 = 0;
                                v398 = (a1 + 176);
                                v403 = *(a1 + 176);
                                *(a1 + 52) = 0;
                                v401 = *(a1 + 168);
                                v402 = (v403 - v401) >> 2;
                              }

                              if (v402 > v400)
                              {
                                *v398 = v401 + 4 * v400;
                              }

LABEL_630:
                              if (v443 != (a4 + 216))
                              {
                                std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v443, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                              }

                              if (v442 != (a4 + 240))
                              {
                                std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v442, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                              }

                              if (v441 != (a4 + 320))
                              {
                                std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v441, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                              }

                              if (v440 != (a4 + 368))
                              {
                                std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v440, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                              }

                              *(a1 + 352) = *(a4 + 416);
                              *(a1 + 744) = *(a4 + 160) != 0;
                              *(a1 + 745) = *(a4 + 148) != 0;
                              v404 = *(v452 - *v452 + 24);
                              v405 = *(v452 + v404);
                              v406 = (v452 + v404 + v405);
                              v407 = *v406;
                              if (v407)
                              {
                                v408 = 0;
                                v409 = 4 * v407;
                                v410 = v452 + v404 + v405;
                                do
                                {
                                  v411 = v406[v408 / 4 + 1];
                                  v412 = v411 - *(&v406[v408 / 4 + 1] + v411);
                                  v413 = &v410[v408 + v412];
                                  v414 = *(v413 + 2);
                                  if (v414 >= 5)
                                  {
                                    v415 = *(v413 + 4);
                                    if (v415)
                                    {
                                      if (v414 >= 7 && v410[v408 + 4 + v411 + v415] == 139)
                                      {
                                        if (*&v410[v408 + 10 + v412])
                                        {
                                          v416 = *&v410[v408 + 4 + v411 + *&v410[v408 + 10 + v412]] & 0xFFFFF;
                                          if (v414 >= 0xB)
                                          {
                                            goto LABEL_649;
                                          }
                                        }

                                        else
                                        {
                                          v416 = 0;
                                          if (v414 >= 0xB)
                                          {
LABEL_649:
                                            v417 = *&v410[v408 + 14 + v412];
                                            if (v417 && v410[v408 + 4 + v411 + v417])
                                            {
                                              *(v451 + 8 * (v416 > 0x3F)) |= 1 << v416;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v408 += 4;
                                }

                                while (v409 != v408);
                              }

                              v418 = (v458 - *v458);
                              if (*v418 >= 0xDu)
                              {
                                v419 = v418[6];
                                if (v418[6])
                                {
                                  v420 = v458 + v419;
                                  v421 = *(v458 + v419);
                                  if (*(v458 + v419 + v421) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                                  {
                                    operator new();
                                  }

                                  v422 = (v458 - *v458);
                                  if (*v422 >= 0x41u && (v423 = v422[32]) != 0)
                                  {
                                    v424 = v458 + v423 + *(v458 + v423);
                                    if (!*&v420[v421])
                                    {
                                      goto LABEL_677;
                                    }

LABEL_661:
                                    if (v424)
                                    {
                                      v425 = 0;
                                      v426 = v458 + v419 + v421 + 4;
                                      do
                                      {
                                        if (*v424)
                                        {
                                          v427 = *(v424 + 8 * v425 + 4);
                                        }

                                        else
                                        {
                                          v427 = 0;
                                        }

                                        *__dst = *(v426 + 8 * v425);
                                        *&__dst[8] = v427;
                                        std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v454, __dst);
                                        ++v425;
                                      }

                                      while (v425 < *&v420[v421]);
                                    }

                                    else
                                    {
                                      v429 = v458 + v419 + v421 + 4;
                                      do
                                      {
                                        *__dst = *(v429 + 8 * v424);
                                        std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v454, __dst);
                                        ++v424;
                                      }

                                      while (v424 < *&v420[v421]);
                                    }
                                  }

                                  else
                                  {
                                    v424 = 0;
                                    if (*&v420[v421])
                                    {
                                      goto LABEL_661;
                                    }
                                  }
                                }
                              }

LABEL_677:
                              v430 = (v458 - *v458);
                              if (*v430 >= 0xBu)
                              {
                                v431 = v430[5];
                                if (v431)
                                {
                                  v432 = (v458 + v431 + *(v458 + v431));
                                  if (*v432 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                                  {
                                    operator new();
                                  }

                                  if (*v432 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                                  {
                                    operator new();
                                  }

                                  if (*v432)
                                  {
                                    v433 = 0;
                                    v434 = v432 + 1;
                                    do
                                    {
                                      AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v434 + *v434), *v366.i32);
                                      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v461, v456, __dst);
                                      std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v461);
                                      v460 = *(v461 + 96);
                                      std::vector<unsigned long long>::push_back[abi:nn200100](v453, &v460);
                                      v435 = *(&v461 + 1);
                                      if (*(&v461 + 1) && !atomic_fetch_add((*(&v461 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                      {
                                        (v435->__on_zero_shared)(v435);
                                        std::__shared_weak_count::__release_weak(v435);
                                      }

                                      if (SBYTE1(v466) < 0)
                                      {
                                        operator delete(*v464);
                                      }

                                      ++v433;
                                      ++v434;
                                    }

                                    while (v433 < *v432);
                                  }
                                }
                              }

                              *(a1 + 1396) = 0;
                              if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__str[0].__r_.__value_.__l.__data_);
                              }

                              *a1 = &unk_2A23F7810;
                              *__dst = *v438;
                              *&__dst[16] = *(v438 + 16);
                              AGX::TileDispatchVertexProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::TileDispatchVertexProgramVariantESLState(a1 + 1784, v456, v449, a4, __dst, v437);
                            }
                          }

                          if (v340 >= 9 && (v342 = *(v262 + v336 + v338 + 12)) != 0)
                          {
                            v343 = *(v262 + v336 + v337 + v342 + 4);
                          }

                          else
                          {
LABEL_539:
                            v343 = 0;
                          }

                          if (*(a1 + 1584))
                          {
                            v344 = 3;
                          }

                          else
                          {
                            v344 = 1;
                          }

                          v345 = *(a4 + 124) + v344 * v343 - (*(a4 + 120) + *(a4 + 128));
                          *(*(a1 + 56) + 4 * v345) = 0x7FFFFFFF;
                          if (*(a1 + 1584) == 1)
                          {
                            v457->__begin_[v345 + 1] = 0x7FFFFFFF;
                            v457->__begin_[v345 + 2] = 1610612736;
                          }

                          goto LABEL_532;
                        }
                      }

                      AGX::Heap<true>::allocateImpl(__dst, v456 + 6328, v261, (a1 + 1472));
                      *(a1 + 1480) += *&__dst[16];
                      v263 = *&__dst[16];
                      *(a1 + 1344) = *__dst;
                      *(a1 + 1360) = v263;
                      *(a1 + 1369) = *&__dst[25];
                      v264 = *(a1 + 1360);
                      *(a1 + 1104) = *(a1 + 1344);
                      *(a1 + 1120) = v264;
                      *(a1 + 1129) = *(a1 + 1369);
                      v265 = *(a1 + 1360);
                      *(a1 + 1176) = *(a1 + 1344);
                      *(a1 + 1192) = v265;
                      goto LABEL_458;
                    }

LABEL_401:
                    LOBYTE(v229) = 1;
                    goto LABEL_402;
                  }
                }

                v227 = 0;
                goto LABEL_396;
              }
            }
          }

          v182 = 0;
          goto LABEL_312;
        }
      }

      v177 = 0;
      LOBYTE(v176) = 0;
      goto LABEL_300;
    }

    v67 = (v66 + *v66);
    v68 = (v67 - *v67);
    v69 = *v68;
    if (v68[2])
    {
      v70 = (v67 + v68[2] + *(v67 + v68[2]));
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v70 = 0;
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    v71 = v68[3];
    if (v71)
    {
      v72 = v67 + v71 + *(v67 + v71);
      if (!*v70)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v72 = 0;
    if (!*v70)
    {
      goto LABEL_126;
    }

LABEL_116:
    v73 = 0;
    v74 = v72 + 4;
    v75 = (v70 + 2);
    while (1)
    {
      v76 = *(v75 - 1);
      v77 = strlen(&v75[v76]);
      if (v77 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v78 = v77;
      if (v77 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v77;
      if (v77)
      {
        memmove(__dst, &v75[v76], v77);
      }

      __dst[v78] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v74[4 * v73];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v73;
      v75 += 4;
      if (v73 >= *v70)
      {
        goto LABEL_126;
      }
    }

LABEL_698:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v29 < 0x45)
  {
    if (v29 < 0x3D)
    {
      LOWORD(v34) = 0;
      if (v29 < 0x3B)
      {
        LODWORD(v36) = 0;
        v37 = 0;
        LOWORD(v33) = 0;
        v35 = 0;
LABEL_56:
        *(a1 + 560) = v36;
        v38 = v34 + v36 - 1;
        v39 = -v36;
        v40 = *(a1 + 568);
        v41 = (v33 | ((v39 & v38) << 32) | (v35 << 48)) + v37 + (v40 & 0xFF000000);
        *(a1 + 568) = v41;
        if (v41 != v40)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v42 = -1;
          *(&v42 + 1) = -1;
          *(a1 + 624) = v42;
          *(a1 + 640) = v42;
          *(a1 + 656) = v42;
          *(a1 + 672) = -1;
        }

        v43 = (v458 - *v458);
        if (*v43 < 0x57u)
        {
          LODWORD(v44) = 0;
        }

        else
        {
          v44 = v43[43];
          if (v44)
          {
            LODWORD(v44) = *(v458 + v44);
          }
        }

        *(a1 + 680) = v44;
        v45 = *v458;
        v27 = -v45;
        v29 = *(v458 - v45);
        goto LABEL_63;
      }

      LOWORD(v33) = 0;
      v35 = v28[29];
      if (!v28[29])
      {
LABEL_41:
        if (v29 < 0x3F)
        {
          LODWORD(v36) = 0;
          v37 = 0;
        }

        else
        {
          v36 = v28[31];
          if (v28[31])
          {
            v36 = *(v458 + v36);
          }

          if (v29 < 0x4B)
          {
            v37 = 0;
          }

          else
          {
            v37 = v28[37];
            if (v28[37])
            {
              v37 = *(v458 + v37) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v35 = *(v458 + v35);
      goto LABEL_41;
    }

    LOWORD(v33) = 0;
    v34 = v28[30];
    if (v28[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v33 = v28[34];
    if (v28[34])
    {
      LODWORD(v33) = *(v458 + v33);
    }

    v34 = v28[30];
    if (v28[30])
    {
LABEL_38:
      LODWORD(v34) = *(v458 + v34);
    }
  }

  v35 = v28[29];
  if (!v28[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CE1173C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void **a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31, void **a32, void **a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  CompileStatistics::~CompileStatistics(a18);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a37);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v46 + 1560));
  v48 = *a31;
  if (*a31)
  {
    *(v46 + 1544) = v48;
    operator delete(v48);
  }

  v49 = *a32;
  if (*a32)
  {
    *(v46 + 1520) = v49;
    operator delete(v49);
  }

  if (*a9 < 0)
  {
    operator delete(*a10);
    if ((*(v46 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v46 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v46 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a24);
  if (*(v46 + 887) < 0)
  {
LABEL_8:
    operator delete(*a25);
    if ((*(v46 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v46 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v46 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a26);
  if ((*(v46 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a33);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a11);
    v50 = *a19;
    if (*a19)
    {
      *(v46 + 336) = v50;
      operator delete(v50);
    }

    v51 = *a21;
    if (*a21)
    {
      *(v46 + 312) = v51;
      operator delete(v51);
    }

    v52 = *a20;
    if (*a20)
    {
      *(v46 + 288) = v52;
      operator delete(v52);
    }

    v53 = *a22;
    if (*a22)
    {
      *(v46 + 264) = v53;
      operator delete(v53);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v46 + 168);
    v54 = *a23;
    if (*a23)
    {
      *(v46 + 152) = v54;
      operator delete(v54);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a35);
    if (a46 < 0)
    {
      operator delete(__p);
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a27);
  goto LABEL_11;
}

void AGX::IntersectionProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::IntersectionProgramVariant(unint64_t a1, uint64_t a2, const void **a3, uint64_t a4, unsigned int a5, void *a6)
{
  v8 = 0;
  v316 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xFFFFFFFF00000001;
  *(a1 + 104) = 1610612736;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = v9;
  *(a1 + 176) = v9;
  *(a1 + 192) = v9;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 437) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1;
  *(a1 + 576) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *a1 = &unk_2A23F7A50;
  *(a1 + 592) = a2;
  *(a1 + 944) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 817) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 1073) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 1120) = a1 + 1128;
  *(a1 + 1144) = 0xFFFFFFFF00000001;
  *(a1 + 1152) = 1610612736;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1256) = -1;
  *(a1 + 1224) = v9;
  *(a1 + 1240) = v9;
  *(a1 + 1208) = v9;
  *(a1 + 1264) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1392) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v297 = (a1 + 1544);
  *(a1 + 1576) = 0;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 0u;
  v293 = (a1 + 1592);
  *(a1 + 1624) = 0;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 0u;
  v294 = (a1 + 1640);
  *(a1 + 1672) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  v296 = (a1 + 1688);
  *(a1 + 1960) = 0;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  v295 = (a1 + 1928);
  *(a1 + 1976) = 0;
  *(a1 + 1980) = 0;
  *(a1 + 1984) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  v303 = (a1 + 1400);
  *(a1 + 1457) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = 0;
  *(a1 + 2052) = 0u;
  *(a1 + 2023) = 0u;
  *(a1 + 2039) = 0u;
  v291 = (a1 + 2007);
  *(a1 + 2007) = 0u;
  *(a1 + 2088) = 0;
  v298 = a1 + 2072;
  *(a1 + 2072) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0;
  *(a1 + 2168) = *(a4 + 465);
  *(a1 + 2170) = 0;
  *(a1 + 2184) = 0u;
  v307 = (a1 + 2184);
  *(a1 + 2176) = a1 + 2184;
  *(a1 + 2200) = 0u;
  *(a1 + 2216) = 0u;
  *(a1 + 2232) = 0u;
  *(a1 + 2248) = 0u;
  *(a1 + 2264) = 0u;
  *(a1 + 2280) = 0u;
  *(a1 + 2296) = 0u;
  *(a1 + 2312) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0u;
  v299 = (a1 + 2200);
  *(a1 + 2360) = 0;
  if (a3[28])
  {
    v10 = a3[29] == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = 98;
  if (!v10)
  {
    v11 = 28;
  }

  v12 = a3 + 98;
  if (!v10)
  {
    v12 = a3 + 28;
  }

  v13 = a3[v11];
  if (v13 && v12[1])
  {
    v8 = (v13 + *v13);
  }

  v14 = (v8 - *v8);
  if (*v14 >= 5u && (v15 = v14[2]) != 0)
  {
    v306 = (v8 + v15 + *(v8 + v15));
  }

  else
  {
    v306 = 0;
  }

  v16 = 0;
  if (a3[58])
  {
    v17 = a3[59] == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = 58;
  if (v17)
  {
    v18 = 128;
    v19 = a3 + 128;
  }

  else
  {
    v19 = a3 + 58;
  }

  v20 = a3[v18];
  if (v20 && v19[1])
  {
    v16 = (v20 + *v20);
  }

  v21 = (v16 - *v16);
  if (*v21 >= 5u && (v22 = v21[2]) != 0)
  {
    v23 = (v16 + v22 + *(v16 + v22));
  }

  else
  {
    v23 = 0;
  }

  v24 = *v23;
  v25 = -v24;
  v26 = (v23 - v24);
  v27 = *(v23 - v24);
  if (v27 < 0x25)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v28 = v26[18];
    if (v26[18])
    {
      LOBYTE(v28) = *(v23 + v28) != 0;
    }
  }

  *(a1 + 2169) = v28;
  v29 = (v306 - *v306);
  if (*v29 < 0x55u || (v30 = v29[42]) == 0 || !*(v306 + v30))
  {
LABEL_64:
    if (v27 < 7)
    {
      LODWORD(v44) = 0;
    }

    else
    {
      v44 = *(v23 + v25 + 6);
      if (*(v23 + v25 + 6))
      {
        LODWORD(v44) = *(v23 + v44);
      }
    }

    *(a1 + 1384) = v44;
    v45 = (v23 - *v23);
    if (*v45 >= 0x13u && (v46 = v45[9]) != 0)
    {
      v47 = v23 + v46 + *(v23 + v46) + 4;
    }

    else
    {
      v47 = "";
    }

    v301 = (a1 + 1448);
    v302 = (a1 + 1424);
    v300 = (a1 + 1480);
    v292 = a1 + 1984;
    MEMORY[0x29ED51E00](v303, v47);
    v48 = (v23 - *v23);
    if (*v48 >= 9u && (v49 = v48[4]) != 0)
    {
      v50 = v23 + v49 + *(v23 + v49) + 4;
    }

    else
    {
      v50 = "";
    }

    MEMORY[0x29ED51E00](v302, v50);
    v51 = (v23 - *v23);
    if (*v51 < 0x29u)
    {
      LOBYTE(v52) = 0;
    }

    else
    {
      v52 = v51[20];
      if (v52)
      {
        LOBYTE(v52) = *(v23 + v52) != 0;
      }
    }

    *(a1 + 1472) = v52;
    std::string::operator=(v301, &__str);
    v53 = (v23 - *v23);
    if (*v53 >= 0x51u && (v54 = v53[40]) != 0)
    {
      v55 = v23 + v54 + *(v23 + v54) + 4;
    }

    else
    {
      v55 = "";
    }

    MEMORY[0x29ED51E00](v300, v55);
    v56 = (v23 - *v23);
    v309 = v23;
    if (*v56 >= 5u && v56[2] && *(a2 + 16608) == 1)
    {
      v57 = a3[1];
      if (v57 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_503;
      }

      v58 = *a3;
      if (v57 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v57)
      {
        memmove(__dst, v58, v57);
      }

      __dst[v57] = 0;
      if (*v291 < 0)
      {
        operator delete(*v292);
      }

      *v292 = *__dst;
      *(v292 + 16) = *&__dst[16];
      v59 = a3[3];
      if (a3[4])
      {
        v60 = v59 == 0;
      }

      else
      {
        v60 = 1;
      }

      if (v60)
      {
        v59 = a3[73];
      }

      *(a1 + 2008) = v59 - *a3;
    }

    v61 = a3 + 113;
    if (a3[43])
    {
      v62 = a3[44] == 0;
    }

    else
    {
      v62 = 1;
    }

    v63 = 43;
    if (v62)
    {
      v63 = 113;
    }

    else
    {
      v61 = a3 + 43;
    }

    v308 = a3;
    v64 = a3[v63];
    if (!v64 || !v61[1])
    {
LABEL_127:
      v77 = v308;
      v78 = v308 + 138;
      if (v308[68])
      {
        v79 = v308[69] == 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = 68;
      if (v79)
      {
        v80 = 138;
      }

      else
      {
        v78 = v308 + 68;
      }

      v81 = v308[v80];
      v82 = v78[1];
      if (v81)
      {
        v83 = v82 == 0;
      }

      else
      {
        v83 = 1;
      }

      if (v83)
      {
        v84 = 0;
        v85 = v298;
      }

      else
      {
        v86 = (v81 + *v81);
        v87 = (v86 - *v86);
        v85 = v298;
        if (*v87 >= 5u && (v88 = v87[2]) != 0)
        {
          v84 = *(v86 + v88);
        }

        else
        {
          v84 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 2208) = (v84 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v89 = (v306 - *v306);
      if (*v89 < 5u)
      {
        LODWORD(v90) = 0;
      }

      else
      {
        v90 = v89[2];
        if (v90)
        {
          LODWORD(v90) = *(v306 + v90);
        }
      }

      *v299 = v90;
      v91 = (v306 - *v306);
      if (*v91 < 0x2Du)
      {
        LODWORD(v92) = 0;
      }

      else
      {
        v92 = v91[22];
        if (v92)
        {
          LODWORD(v92) = *(v306 + v92);
        }
      }

      *(a1 + 2204) = v92;
      v93 = (v306 - *v306);
      if (*v93 < 0x35u)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[26];
        if (v94)
        {
          LODWORD(v94) = *(v306 + v94);
        }
      }

      *(a1 + 2244) = v94;
      v95 = (v306 - *v306);
      if (*v95 < 0x43u)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[33];
        if (v96)
        {
          LODWORD(v96) = *(v306 + v96);
        }
      }

      *(a1 + 2280) = v96;
      v97 = v308 + 108;
      if (v308[38])
      {
        v98 = v308[39] == 0;
      }

      else
      {
        v98 = 1;
      }

      v99 = 38;
      if (v98)
      {
        v99 = 108;
      }

      else
      {
        v97 = v308 + 38;
      }

      v100 = v308[v99];
      if (v100 && v97[1])
      {
        v101 = (v100 + *v100);
        v102 = (v101 - *v101);
        if (*v102 < 0xDu)
        {
          LODWORD(v103) = 0;
        }

        else
        {
          v103 = v102[6];
          if (v103)
          {
            LODWORD(v103) = *(v101 + v103);
          }
        }

        *(a1 + 2204) = v103;
        v104 = (v101 - *v101);
        if (*v104 < 0xBu)
        {
          LODWORD(v105) = 0;
        }

        else
        {
          v105 = v104[5];
          if (v105)
          {
            LODWORD(v105) = *(v101 + v105);
          }
        }

        *(a1 + 2212) = v105;
        v106 = (v101 - *v101);
        if (*v106 < 0x11u)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = v106[8];
          if (v107)
          {
            LODWORD(v107) = *(v101 + v107);
          }
        }

        *(a1 + 2216) = v107;
        v108 = (v101 - *v101);
        if (*v108 < 0x13u)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          v109 = v108[9];
          if (v109)
          {
            LODWORD(v109) = *(v101 + v109);
          }
        }

        *(a1 + 2220) = v109;
        v110 = (v101 - *v101);
        if (*v110 < 0x17u)
        {
          LODWORD(v111) = 0;
        }

        else
        {
          v111 = v110[11];
          if (v111)
          {
            LODWORD(v111) = *(v101 + v111);
          }
        }

        *(a1 + 2224) = v111;
        v112 = (v101 - *v101);
        if (*v112 < 0x1Bu)
        {
          LODWORD(v113) = 0;
        }

        else
        {
          v113 = v112[13];
          if (v113)
          {
            LODWORD(v113) = *(v101 + v113);
          }
        }

        *(a1 + 2228) = v113;
        v114 = (v101 - *v101);
        if (*v114 < 0x15u)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = v114[10];
          if (v115)
          {
            LODWORD(v115) = *(v101 + v115);
          }
        }

        *(a1 + 2232) = v115;
        v116 = (v101 - *v101);
        if (*v116 < 0x19u)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = v116[12];
          if (v117)
          {
            LODWORD(v117) = *(v101 + v117);
          }
        }

        *(a1 + 2236) = v117;
        v118 = (v101 - *v101);
        if (*v118 < 0x1Du)
        {
          LODWORD(v119) = 0;
        }

        else
        {
          v119 = v118[14];
          if (v119)
          {
            LODWORD(v119) = *(v101 + v119);
          }
        }

        *(a1 + 2240) = v119;
        v120 = (v101 - *v101);
        if (*v120 < 0xFu)
        {
          LODWORD(v121) = 0;
        }

        else
        {
          v121 = v120[7];
          if (v121)
          {
            LODWORD(v121) = *(v101 + v121);
          }
        }

        *(a1 + 2244) = v121;
        v122 = (v101 - *v101);
        if (*v122 < 0x1Fu)
        {
          LODWORD(v123) = 0;
        }

        else
        {
          v123 = v122[15];
          if (v123)
          {
            LODWORD(v123) = *(v101 + v123);
          }
        }

        *(a1 + 2248) = v123;
        v124 = (v101 - *v101);
        if (*v124 < 0x21u)
        {
          LODWORD(v125) = 0;
        }

        else
        {
          v125 = v124[16];
          if (v125)
          {
            LODWORD(v125) = *(v101 + v125);
          }
        }

        *(a1 + 2252) = v125;
        v126 = (v101 - *v101);
        if (*v126 < 0x23u)
        {
          LODWORD(v127) = 0;
        }

        else
        {
          v127 = v126[17];
          if (v127)
          {
            LODWORD(v127) = *(v101 + v127);
          }
        }

        *(a1 + 2256) = v127;
        v128 = (v101 - *v101);
        if (*v128 < 0x25u)
        {
          LODWORD(v129) = 0;
        }

        else
        {
          v129 = v128[18];
          if (v129)
          {
            LODWORD(v129) = *(v101 + v129);
          }
        }

        *(a1 + 2260) = v129;
        v130 = (v101 - *v101);
        if (*v130 < 0x27u)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          v131 = v130[19];
          if (v131)
          {
            LODWORD(v131) = *(v101 + v131);
          }
        }

        *(a1 + 2264) = v131;
        v132 = (v101 - *v101);
        if (*v132 < 0x29u)
        {
          LODWORD(v133) = 0;
        }

        else
        {
          v133 = v132[20];
          if (v133)
          {
            LODWORD(v133) = *(v101 + v133);
          }
        }

        *(a1 + 2268) = v133;
        v134 = (v101 - *v101);
        if (*v134 < 0x2Bu)
        {
          LODWORD(v135) = 0;
        }

        else
        {
          v135 = v134[21];
          if (v135)
          {
            LODWORD(v135) = *(v101 + v135);
          }
        }

        *(a1 + 2272) = v135;
        v136 = (v101 - *v101);
        if (*v136 < 7u)
        {
          LODWORD(v137) = 0;
        }

        else
        {
          v137 = v136[3];
          if (v137)
          {
            LODWORD(v137) = *(v101 + v137);
          }
        }

        *(a1 + 2276) = v137;
        v138 = (v101 - *v101);
        if (*v138 >= 5u && (v139 = v138[2]) != 0)
        {
          v140 = *(v101 + v139);
        }

        else
        {
          v140 = 0;
        }

        *(a1 + 2284) = v140;
      }

      if (v308[53])
      {
        v141 = v308[54];
        if (v141)
        {
          v142 = v308[53];
        }

        else
        {
          v142 = v308[123];
        }

        if (v141)
        {
          v143 = v308 + 53;
        }

        else
        {
          v143 = v308 + 123;
        }
      }

      else
      {
        v143 = v308 + 123;
        v142 = v308[123];
      }

      MEMORY[0x29ED51E10](a1 + 2344, v142, v143[1]);
      std::string::push_back((a1 + 2344), 0);
      v144 = *v306;
      v145 = v306 - v144;
      v146 = *(v306 - v144);
      if (v146 < 0x39)
      {
        goto LABEL_272;
      }

      v147 = -v144;
      v148 = *(v145 + 28);
      if (v148)
      {
        v149 = (v306 + v148 + *(v306 + v148));
        if (*v149)
        {
          *(a1 + 2088) = 1;
          v150 = (v149 + v149[1] + 4);
          v151 = (v150 - *v150);
          if (*v151 >= 9u && (v152 = v151[4]) != 0)
          {
            v153 = *(v150 + v152);
          }

          else
          {
            v153 = 0;
          }

          *(a1 + 2288) = v153;
          *(a1 + 2292) = 1;
          v154 = *v306;
          v147 = -v154;
          v146 = *(v306 - v154);
        }
      }

      if (v146 < 0x3B)
      {
        goto LABEL_272;
      }

      v155 = v306 + v147;
      if (*(v155 + 29))
      {
        v156 = (v306 + *(v155 + 29) + *(v306 + *(v155 + 29)));
        v157 = *v156;
        if (v157)
        {
          v158 = v156 + 1;
          do
          {
            v160 = *v158++;
            v159 = v160;
            if (!(v160 >> 20))
            {
              *(v85 + 8 * (v159 > 0x3F)) |= 1 << v159;
            }

            --v157;
          }

          while (v157);
        }
      }

      if (v146 < 0x57)
      {
LABEL_272:
        LODWORD(v161) = 0;
      }

      else
      {
        v161 = *(v155 + 43);
        if (*(v155 + 43))
        {
          LODWORD(v161) = *(v306 + v161);
        }
      }

      *(a1 + 1276) = v161;
      v162 = (v306 - *v306);
      if (*v162 >= 0x21u && (v163 = v162[16]) != 0)
      {
        v164 = *(v306 + v163);
      }

      else
      {
        v164 = 0;
      }

      v165 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 1280) = getAdditionalSpillBufferBytes(void)::extra + v164;
      v166 = v306;
      v167 = (v306 - *v306);
      if (*v167 < 0x59u)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = v167[44];
        if (v168)
        {
          LODWORD(v168) = *(v306 + v168);
        }
      }

      *(a1 + 1304) = v168;
      v169 = (v306 - *v306);
      if (*v169 < 0x51u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[40];
        if (v170)
        {
          LODWORD(v170) = *(v306 + v170);
        }
      }

      *(a1 + 1308) = v170;
      v171 = (v306 - *v306);
      if (*v171 < 0x4Bu)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[37];
        if (v172)
        {
          LODWORD(v172) = *(v306 + v172);
        }
      }

      *(a1 + 1316) = v172;
      v173 = (v306 - *v306);
      v174 = *v173;
      if (v174 >= 0x25)
      {
        if (v173[18] && *(v306 + v173[18]))
        {
          if (v174 < 0x27)
          {
            LOBYTE(v175) = 0;
            v176 = 1;
            goto LABEL_301;
          }

          v175 = v173[19];
          goto LABEL_295;
        }

        if (v174 >= 0x27)
        {
          v175 = v173[19];
          if (v173[19] && *(v306 + v173[19]))
          {
            v176 = 1;
            LOBYTE(v175) = 1;
            goto LABEL_301;
          }

          if (v174 < 0x29)
          {
            goto LABEL_500;
          }

          if (v173[20] && *(v306 + v173[20]))
          {
LABEL_295:
            v176 = 1;
            goto LABEL_501;
          }

          if (v174 >= 0x71 && (v290 = v173[56]) != 0)
          {
            v176 = *(v306 + v290) != 0;
          }

          else
          {
LABEL_500:
            v176 = 0;
          }

LABEL_501:
          if (v175)
          {
            LOBYTE(v175) = *(v306 + v175) != 0;
          }

LABEL_301:
          *(a1 + 1326) = v175;
          v177 = (v23 - *v23);
          v178 = *v177;
          if (v178 < 0x21)
          {
            v180 = 0;
            LODWORD(v179) = 0;
          }

          else
          {
            v179 = v177[16];
            if (v177[16])
            {
              LODWORD(v179) = *(v23 + v179);
            }

            if (v178 < 0x4D)
            {
              v180 = 0;
            }

            else
            {
              v180 = v177[38];
              if (v177[38])
              {
                v180 = *(v23 + v180);
              }

              if (v178 >= 0x4F)
              {
                v181 = v177[39];
                if (v181)
                {
                  v181 = *(v23 + v181);
                }

LABEL_313:
                *(a1 + 1368) = v179 | (v180 << 32);
                *(a1 + 1376) = v181;
                *(a1 + 1330) = (v176 | v175) & 1;
                v182 = *v306;
                v183 = (v306 - v182);
                v184 = *(v306 - v182);
                if (v184 < 0x37)
                {
                  LOBYTE(v185) = 0;
                }

                else
                {
                  v185 = v183[27];
                  if (v183[27])
                  {
                    LOBYTE(v185) = *(v306 + v185) != 0;
                  }
                }

                *(a1 + 1325) = v185;
                v186 = (v23 - *v23);
                v187 = *v186;
                if (v187 < 0x33)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v186[25];
                  if (v186[25])
                  {
                    LOBYTE(v188) = *(v23 + v188) != 0;
                  }
                }

                *(a1 + 1331) = v188;
                if (v184 < 0x3F)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v183[31];
                  if (v183[31])
                  {
                    v190 = (v306 + v189 + *(v306 + v189));
                    v189 = *v190;
                    if (v189)
                    {
                      v191 = v190 + 1;
                      while (1)
                      {
                        v193 = *v191++;
                        v192 = v193;
                        if (v193 < 0x36 && ((0x3F000000000777uLL >> v192) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v189)
                        {
                          goto LABEL_330;
                        }
                      }

                      LOBYTE(v189) = 1;
                    }
                  }
                }

LABEL_330:
                *(a1 + 1333) = v189;
                if (v187 <= 0x14)
                {
                  LOBYTE(v195) = 0;
                  *(a1 + 1327) = 0;
                }

                else
                {
                  v194 = v186[10];
                  if (v186[10])
                  {
                    LOBYTE(v194) = *(v23 + v194) != 0;
                  }

                  *(a1 + 1327) = v194;
                  if (v187 < 0x25)
                  {
                    LOBYTE(v195) = 0;
                  }

                  else
                  {
                    v195 = v186[18];
                    if (v186[18])
                    {
                      LOBYTE(v195) = *(v23 + v195) != 0;
                    }
                  }
                }

                v196 = -v182;
                *(a1 + 2169) = v195;
                if (v184 < 0x5D)
                {
                  LOBYTE(v197) = 0;
                }

                else
                {
                  v197 = v183[46];
                  if (v197)
                  {
                    LOBYTE(v197) = *(v306 + v197) != 0;
                  }
                }

                *(a1 + 1332) = v197;
                if (v187 >= 0x23 && (v198 = v186[17]) != 0)
                {
                  *(a1 + 2171) = 1;
                  v199 = (v23 + v198 + *(v23 + v198));
                  v200 = *v199;
                  if (v200)
                  {
                    v201 = &v199[v200];
                    while (1)
                    {
                      v202 = v199[1];
                      v203 = (++v199 + v202);
                      v204 = (v203 - *v203);
                      v205 = *v204;
                      if (v205 < 7)
                      {
                        v206 = 0;
                        v208 = 0;
                        if (v205 < 5)
                        {
                          goto LABEL_354;
                        }

                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_353;
                        }
                      }

                      else if (v204[3])
                      {
                        v206 = *(v203 + v204[3]);
                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_353;
                        }
                      }

                      else
                      {
                        v206 = 0;
                        v207 = v204[2];
                        if (v207)
                        {
LABEL_353:
                          v208 = *(v203 + v207);
                          goto LABEL_354;
                        }
                      }

                      v208 = 0;
LABEL_354:
                      v209 = v307;
LABEL_355:
                      v210 = *v209;
                      if (!*v209)
                      {
LABEL_359:
                        operator new();
                      }

                      while (1)
                      {
                        v209 = v210;
                        v211 = *(v210 + 28);
                        if (v208 < v211)
                        {
                          goto LABEL_355;
                        }

                        if (v211 >= v208)
                        {
                          break;
                        }

                        v210 = v209[1];
                        if (!v210)
                        {
                          goto LABEL_359;
                        }
                      }

                      v212 = v209;
                      v77 = v308;
                      *(v212 + 8) = v206;
                      if (v199 == v201)
                      {
                        v166 = v306;
                        v215 = *v306;
                        v196 = -v215;
                        v165 = &qword_2A17A1000;
                        if (*(v306 - v215) < 0x21u)
                        {
LABEL_369:
                          v214 = 0;
                          v213 = v309;
                          {
                            goto LABEL_506;
                          }

                          goto LABEL_372;
                        }

LABEL_365:
                        v213 = v309;
                        if (*(v166 + v196 + 32))
                        {
                          v214 = *(v166 + *(v166 + v196 + 32));
                          {
                            goto LABEL_372;
                          }
                        }

                        else
                        {
                          v214 = 0;
                          {
                            goto LABEL_372;
                          }
                        }

LABEL_506:
                        {
                          *(v165 + 402) = 0;
                        }

LABEL_372:
                        v216 = *(v165 + 402) + v214;
                        *(a1 + 1272) = v216;
                        v217 = (v306 - *v306);
                        if (*v217 < 0x43u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[33];
                          if (v218)
                          {
                            LODWORD(v218) = *(v306 + v218);
                          }
                        }

                        *(a1 + 1284) = v218;
                        v219 = (v306 - *v306);
                        if (*v219 < 5u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[2];
                          if (v220)
                          {
                            LODWORD(v220) = *(v306 + v220);
                          }
                        }

                        *(a1 + 1268) = v220;
                        v221 = (v306 - *v306);
                        if (*v221 < 0x51u)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[40];
                          if (v222)
                          {
                            LODWORD(v222) = *(v306 + v222);
                          }
                        }

                        *(a1 + 1300) = v222;
                        v223 = (v306 - *v306);
                        if (*v223 < 0x4Fu)
                        {
                          LODWORD(v224) = 0;
                        }

                        else
                        {
                          v224 = v223[39];
                          if (v224)
                          {
                            LODWORD(v224) = *(v306 + v224);
                          }
                        }

                        *(a1 + 1312) = v224;
                        *(a1 + 1320) = *(a4 + 468);
                        v225 = (v306 - *v306);
                        if ((*(v306 + v225[6] + *(v306 + v225[6])) | v216) != 0 || v176)
                        {
                          goto LABEL_399;
                        }

                        v226 = *v225;
                        if (v226 < 0x21)
                        {
                          v227 = 0;
                        }

                        else if (v225[16])
                        {
                          v227 = *(v306 + v225[16]);
                          if (v226 >= 0x43)
                          {
LABEL_490:
                            if (v225[33])
                            {
                              v228 = *(v306 + v225[33]);
                              {
                                goto LABEL_492;
                              }

                              goto LABEL_395;
                            }
                          }
                        }

                        else
                        {
                          v227 = 0;
                          if (v226 >= 0x43)
                          {
                            goto LABEL_490;
                          }
                        }

                        v228 = 0;
                        {
LABEL_492:
                          {
                            *(v165 + 402) = 0;
                          }
                        }

LABEL_395:
                        if (v228 + v227 + *(v165 + 402))
                        {
LABEL_399:
                          LOBYTE(v230) = 1;
                        }

                        else
                        {
                          v229 = (v306 - *v306);
                          if (*v229 < 0x5Fu)
                          {
                            LOBYTE(v230) = 0;
                          }

                          else
                          {
                            v230 = v229[47];
                            if (v230)
                            {
                              LOBYTE(v230) = *(v306 + v230) != 0;
                            }
                          }
                        }

                        *(a1 + 1324) = v230;
                        v231 = (v213 - *v213);
                        if (*v231 < 0x11u)
                        {
                          LODWORD(v232) = 0;
                        }

                        else
                        {
                          v232 = v231[8];
                          if (v232)
                          {
                            LODWORD(v232) = *(v213 + v232);
                          }
                        }

                        v233 = a2 + 6328;
                        v234 = (a1 + 1784);
                        *(a1 + 1976) = v232;
                        {
                        }

                        v235 = v77 + 3;
                        if (v77[4])
                        {
                          v236 = v77[3] == 0;
                        }

                        else
                        {
                          v236 = 1;
                        }

                        v237 = v77 + 73;
                        if (v236)
                        {
                          v238 = v77 + 73;
                        }

                        else
                        {
                          v238 = v77 + 3;
                        }

                        v239 = v238[1];
                        v240 = 168;
                        if (a5)
                        {
                          v240 = 504;
                        }

                        v241 = v233 + v240;
                        if (a5)
                        {
                          v242 = 0x1000000000;
                        }

                        else
                        {
                          v242 = 0;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v241, v239, (a1 + 2032));
                        *(a1 + 2064) += *&__dst[16];
                        v243 = *&__dst[16];
                        *v234 = *__dst;
                        *(a1 + 1800) = v243;
                        *(a1 + 1809) = *&__dst[25];
                        *(a1 + 1504) = *(a1 + 1784) + v242;
                        *(a1 + 1536) = v241;
                        v244 = *(a1 + 1800);
                        *v297 = *v234;
                        v297[1] = v244;
                        *(v297 + 25) = *(a1 + 1809);
                        if (*v235)
                        {
                          v245 = v77[4];
                          if (v245)
                          {
                            v246 = *v235;
                          }

                          else
                          {
                            v246 = v77[73];
                          }

                          if (v245)
                          {
                            v237 = v77 + 3;
                          }
                        }

                        else
                        {
                          v246 = *v237;
                        }

                        memcpy(*(a1 + 1792), v246, v237[1]);
                        v247 = *(a1 + 1792);
                        v248 = *(a1 + 1800);
                        *(a1 + 1512) = *(a1 + 1504);
                        *(a1 + 1520) = v247;
                        *(a1 + 1528) = v248;
                        v249 = v77 + 8;
                        if (v77[8])
                        {
                          if (v77[9])
                          {
                            v250 = v77 + 8;
                          }

                          else
                          {
                            v250 = v77 + 78;
                          }

                          v251 = v250[1];
                          if (!v251)
                          {
                            goto LABEL_440;
                          }
                        }

                        else
                        {
                          v251 = v77[79];
                          if (!v251)
                          {
                            goto LABEL_440;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v233, v251, (a1 + 2040));
                        *(a1 + 2064) += *&__dst[16];
                        v252 = *&__dst[16];
                        *(a1 + 1832) = *__dst;
                        *(a1 + 1848) = v252;
                        *(a1 + 1857) = *&__dst[25];
                        v253 = *(a1 + 1848);
                        *v293 = *(a1 + 1832);
                        v293[1] = v253;
                        *(v293 + 25) = *(a1 + 1857);
                        if (*v249)
                        {
                          v254 = v77[9];
                          if (v254)
                          {
                            v255 = *v249;
                          }

                          else
                          {
                            v255 = v77[78];
                          }

                          if (v254)
                          {
                            v256 = v77 + 8;
                          }

                          else
                          {
                            v256 = v77 + 78;
                          }
                        }

                        else
                        {
                          v256 = v77 + 78;
                          v255 = v77[78];
                        }

                        memcpy(*(a1 + 1840), v255, v256[1]);
LABEL_440:
                        v257 = v77 + 13;
                        if (v77[13])
                        {
                          if (v77[14])
                          {
                            v258 = v77 + 13;
                          }

                          else
                          {
                            v258 = v77 + 83;
                          }

                          v259 = v258[1];
                          if (!v259)
                          {
                            goto LABEL_456;
                          }
                        }

                        else
                        {
                          v259 = v77[84];
                          if (!v259)
                          {
                            goto LABEL_456;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v233, v259, (a1 + 2048));
                        *(a1 + 2064) += *&__dst[16];
                        v260 = *&__dst[16];
                        *(a1 + 1880) = *__dst;
                        *(a1 + 1896) = v260;
                        *(a1 + 1905) = *&__dst[25];
                        v261 = *(a1 + 1896);
                        *v294 = *(a1 + 1880);
                        v294[1] = v261;
                        *(v294 + 25) = *(a1 + 1905);
                        if (*v257)
                        {
                          v262 = v77[14];
                          if (v262)
                          {
                            v263 = *v257;
                          }

                          else
                          {
                            v263 = v77[83];
                          }

                          if (v262)
                          {
                            v264 = v77 + 13;
                          }

                          else
                          {
                            v264 = v77 + 83;
                          }
                        }

                        else
                        {
                          v264 = v77 + 83;
                          v263 = v77[83];
                        }

                        memcpy(*(a1 + 1888), v263, v264[1]);
                        v265 = *(a1 + 1896);
                        *(a1 + 1736) = *(a1 + 1880);
                        *(a1 + 1752) = v265;
LABEL_456:
                        v266 = v77 + 23;
                        if (v77[23])
                        {
                          if (!v77[24])
                          {
                            v266 = v77 + 93;
                          }

                          v267 = v266[1];
                          if (v267)
                          {
LABEL_460:
                            AGX::Heap<true>::allocateImpl(__dst, v233, v267, (a1 + 2056));
                            *(a1 + 2064) += *&__dst[16];
                            v268 = *&__dst[16];
                            *v295 = *__dst;
                            v295[1] = v268;
                            *(v295 + 25) = *&__dst[25];
                            v269 = v295[1];
                            *v296 = *v295;
                            v296[1] = v269;
                            *(v296 + 25) = *(v295 + 25);
                            v270 = *(a1 + 1944);
                            *(a1 + 1760) = *(a1 + 1928);
                            *(a1 + 1776) = v270;
                          }
                        }

                        else
                        {
                          v267 = v77[94];
                          if (v267)
                          {
                            goto LABEL_460;
                          }
                        }

                        if ((*(a1 + 1472) & 1) != 0 || *(*(a1 + 592) + 16945) == 1)
                        {
                          {
                            {
                              v272 = v303;
                              if (*(a1 + 1423) < 0)
                              {
                                v272 = *v303;
                              }

                              v273 = v301;
                              if (*(a1 + 1471) < 0)
                              {
                                v273 = v301->__r_.__value_.__r.__words[0];
                              }

                              v274 = v302;
                              if (*(a1 + 1447) < 0)
                              {
                                v274 = *v302;
                              }

                              v275 = *(a1 + 1384);
                              v276 = *(a1 + 1392);
                              v277 = v300;
                              if (*(a1 + 1503) < 0)
                              {
                                v277 = *v300;
                              }

                              v278 = *(a1 + 1504);
                              v279 = *(a1 + 1800);
                              *__dst = 136448002;
                              *&__dst[4] = v272;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v273;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v274;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v275;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v276;
                              *v313 = 2082;
                              *&v313[2] = v277;
                              *&v313[10] = 2050;
                              *&v313[12] = v278;
                              v314 = 2050;
                              v315 = v279;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v271, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v280 = *(a1 + 592);
                          v281 = v303;
                          if (*(a1 + 1423) < 0)
                          {
                            v281 = *v303;
                          }

                          v282 = v301;
                          if (*(a1 + 1471) < 0)
                          {
                            v282 = v301->__r_.__value_.__r.__words[0];
                          }

                          v283 = v302;
                          if (*(a1 + 1447) < 0)
                          {
                            v283 = *v302;
                          }

                          v284 = v300;
                          if (*(a1 + 1503) < 0)
                          {
                            v284 = *v300;
                          }

                          v285 = *(a1 + 1384);
                          v286 = *(a1 + 1392);
                          v287 = *(a1 + 1504);
                          v288 = *(a1 + 1800);
                          v289 = *(a1 + 1472);
                          *__dst = v281;
                          *&__dst[8] = v282;
                          *&__dst[16] = v283;
                          *&__dst[24] = v284;
                          *&__dst[32] = v285;
                          *&__dst[40] = v286;
                          *v313 = v287;
                          *&v313[8] = v288;
                          v313[16] = v289;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v280, a1, __dst);
                        }

                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 2171) = 0;
                }

                if (v184 < 0x21)
                {
                  goto LABEL_369;
                }

                goto LABEL_365;
              }
            }
          }

          v181 = 0;
          goto LABEL_313;
        }
      }

      v176 = 0;
      LOBYTE(v175) = 0;
      goto LABEL_301;
    }

    v65 = (v64 + *v64);
    v66 = (v65 - *v65);
    v67 = *v66;
    if (v66[2])
    {
      v68 = (v65 + v66[2] + *(v65 + v66[2]));
      if (v67 < 7)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v68 = 0;
      if (v67 < 7)
      {
        goto LABEL_116;
      }
    }

    v69 = v66[3];
    if (v69)
    {
      v70 = v65 + v69 + *(v65 + v69);
      if (!*v68)
      {
        goto LABEL_127;
      }

      goto LABEL_117;
    }

LABEL_116:
    v70 = 0;
    if (!*v68)
    {
      goto LABEL_127;
    }

LABEL_117:
    v71 = 0;
    v72 = v70 + 4;
    v73 = (v68 + 2);
    while (1)
    {
      v74 = *(v73 - 1);
      v75 = strlen(&v73[v74]);
      if (v75 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v76 = v75;
      if (v75 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v75;
      if (v75)
      {
        memmove(__dst, &v73[v74], v75);
      }

      __dst[v76] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 2296, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v72[4 * v71];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 2320, __dst);
      ++v71;
      v73 += 4;
      if (v71 >= *v68)
      {
        goto LABEL_127;
      }
    }

LABEL_503:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v27 < 0x45)
  {
    if (v27 < 0x3D)
    {
      LOWORD(v32) = 0;
      if (v27 < 0x3B)
      {
        LODWORD(v34) = 0;
        v35 = 0;
        LOWORD(v31) = 0;
        v33 = 0;
LABEL_57:
        *(a1 + 1144) = v34;
        v36 = v32 + v34 - 1;
        v37 = -v34;
        v38 = *(a1 + 1152);
        v39 = (v31 | ((v37 & v36) << 32) | (v33 << 48)) + v35 + (v38 & 0xFF000000);
        *(a1 + 1152) = v39;
        if (v39 != v38)
        {
          *(a1 + 1176) = 0uLL;
          *(a1 + 1192) = 0uLL;
          *(a1 + 1160) = 0uLL;
          *&v40 = -1;
          *(&v40 + 1) = -1;
          *(a1 + 1208) = v40;
          *(a1 + 1224) = v40;
          *(a1 + 1240) = v40;
          *(a1 + 1256) = -1;
        }

        v41 = (v23 - *v23);
        if (*v41 < 0x57u)
        {
          LODWORD(v42) = 0;
        }

        else
        {
          v42 = v41[43];
          if (v42)
          {
            LODWORD(v42) = *(v23 + v42);
          }
        }

        *(a1 + 1264) = v42;
        v43 = *v23;
        v25 = -v43;
        v27 = *(v23 - v43);
        goto LABEL_64;
      }

      LOWORD(v31) = 0;
      v33 = v26[29];
      if (!v26[29])
      {
LABEL_42:
        if (v27 < 0x3F)
        {
          LODWORD(v34) = 0;
          v35 = 0;
        }

        else
        {
          v34 = v26[31];
          if (v26[31])
          {
            v34 = *(v23 + v34);
          }

          if (v27 < 0x4B)
          {
            v35 = 0;
          }

          else
          {
            v35 = v26[37];
            if (v26[37])
            {
              v35 = *(v23 + v35) << 16;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_41:
      v33 = *(v23 + v33);
      goto LABEL_42;
    }

    LOWORD(v31) = 0;
    v32 = v26[30];
    if (v26[30])
    {
      goto LABEL_39;
    }
  }

  else
  {
    v31 = v26[34];
    if (v26[34])
    {
      LODWORD(v31) = *(v23 + v31);
    }

    v32 = v26[30];
    if (v26[30])
    {
LABEL_39:
      LODWORD(v32) = *(v23 + v32);
    }
  }

  v33 = v26[29];
  if (!v26[29])
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void sub_29CE13E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, char *a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, void **a28, void **a29, void **a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, void **a36, void **a37)
{
  CompileStatistics::~CompileStatistics(a27);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a37);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v37 + 2144));
  v40 = *a35;
  if (*a35)
  {
    *(v37 + 2128) = v40;
    operator delete(v40);
  }

  v41 = *a36;
  if (*a36)
  {
    *(v37 + 2104) = v41;
    operator delete(v41);
  }

  if (*a11 < 0)
  {
    operator delete(*a12);
    if ((*(v37 + 1503) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v37 + 1503) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v37 + 1471) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  operator delete(*a28);
  if (*(v37 + 1471) < 0)
  {
LABEL_8:
    operator delete(*a29);
    if ((*(v37 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((*(v37 + 1447) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v37 + 1423) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  operator delete(*a30);
  if ((*(v37 + 1423) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v37 + 1128));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v37 + 992));
    v42 = *(v37 + 912);
    if (v42)
    {
      *(v37 + 920) = v42;
      operator delete(v42);
      v43 = *(v37 + 888);
      if (!v43)
      {
LABEL_13:
        v44 = *(v37 + 864);
        if (!v44)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v43 = *(v37 + 888);
      if (!v43)
      {
        goto LABEL_13;
      }
    }

    *(v37 + 896) = v43;
    operator delete(v43);
    v44 = *(v37 + 864);
    if (!v44)
    {
LABEL_15:
      v45 = *a9;
      if (*a9)
      {
        *(v37 + 848) = v45;
        operator delete(v45);
      }

      AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v37 + 752);
      v46 = *a10;
      if (*a10)
      {
        *(v37 + 736) = v46;
        operator delete(v46);
      }

      AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v37 + 640);
      AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a26);
      if (*(v38 - 193) < 0)
      {
        operator delete(*(v38 - 216));
      }

      _Unwind_Resume(a1);
    }

LABEL_14:
    *(v37 + 872) = v44;
    operator delete(v44);
    goto LABEL_15;
  }

LABEL_10:
  operator delete(*a31);
  goto LABEL_11;
}

uint64_t AGX::IntersectionProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t result)
{
  v1 = *(result + 584);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 576);
    v4 = *(v1 + 208);
    v6 = *(v1 + 144);
    v5 = *(v1 + 148);
    if (v4)
    {
      v7 = *(v1 + 144);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v1 + 176);
    if (*(v1 + 176) == 0)
    {
      v6 = 0;
    }

    v9 = (*(v1 + 132) + *(v1 + 124) + *(v1 + 140) - (*(v1 + 128) + *(v1 + 120) + *(v1 + 136)));
    *(result + 632) = v7 + v5 + v6 + *(v1 + 152) + ((v9 + 3) & 0xFFFFFFFC);
    v10 = (result + 640);
    v11 = *(result + 640);
    v12 = (*(result + 648) - v11) >> 2;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        *(result + 648) = v11 + 4 * v9;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((result + 640), v9 - v12);
      v8 = *(v1 + 176);
      v5 = *(v1 + 148);
      v4 = *(v1 + 208);
    }

    if (v4)
    {
      v13 = *(v1 + 144);
    }

    else
    {
      v13 = 0;
    }

    if (v8 | *(v1 + 184))
    {
      v14 = *(v1 + 144);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v5 + v13 + v14);
    v16 = *(v2 + 728);
    v17 = (*(v2 + 736) - v16) >> 2;
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        *(v2 + 736) = v16 + 4 * v15;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((v2 + 728), v15 - v17);
    }

    v18 = *v3;
    v19 = v3[1];
    if (*v3 != v19)
    {
      do
      {
        v20 = *v18;
        if ((*(*v18 + 4) & 0x80000000) == 0)
        {
          v21 = 4 * *(v20 + 8) - *(v1 + 120);
          *(*v10 + 4 * v21) = 1610612735;
          *(*v10 + 4 * (v21 + 1)) = 0x40000000;
          *(*v10 + 4 * (v21 + 2)) = 1073741825;
          *(*v10 + 4 * (v21 + 3)) = 1073741826;
          if (*(v20 + 12) == 1)
          {
            *(v2 + 1352 + 8 * ((*(v20 + 4) & 0xFFFC0) != 0)) |= 1 << *(v20 + 4);
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    if (*(v2 + 1326))
    {
      for (i = v3[9]; i != v3[10]; ++i)
      {
        if (**i == 93)
        {
          v23 = *(*i + 4);
          if ((v23 & 0x80000000) == 0 && (v23 & 0xFFF00000) != 0x400000)
          {
            *(v2 + 1352) = vorrq_s8(*(v2 + 1352), *(v2 + 1368));
            break;
          }
        }
      }
    }

    v24 = v3[3];
    for (j = v3[4]; v24 != j; ++v24)
    {
      if ((*(*v24 + 4) & 0x80000000) == 0)
      {
        v26 = *(v2 + 2168) ? 3 : 1;
        v27 = *(v1 + 124) + v26 * *(*v24 + 8) - (*(v1 + 120) + *(v1 + 128));
        *(*(v2 + 640) + 4 * v27) = 0x7FFFFFFF;
        if (*(v2 + 2168) == 1)
        {
          *(*v10 + 4 * (v27 + 1)) = 0x7FFFFFFF;
          *(*v10 + 4 * (v27 + 2)) = 1610612736;
        }
      }
    }

    v28 = v3[6];
    for (k = v3[7]; v28 != k; ++v28)
    {
      v30 = *v28;
      v31 = *(*v28 + 4);
      if ((v31 & 0x80000000) == 0)
      {
        v32 = ((*(v30 + 8) >> 1) & 0x1FFFFFFF) + *(v1 + 124) + *(v1 + 132) - (*(v1 + 120) + *(v1 + 128) + *(v1 + 136));
        v33 = v31 & 0xFFFFF;
        *(*v10 + 4 * v32) = (v31 & 0xFFFFF) + 536870963;
        if (*(v30 + 12) == 1)
        {
          *(v2 + 1336 + 8 * (v33 > 0x3F)) |= 1 << v31;
        }

        if (*(v2 + 2171) == 1)
        {
          v34 = *(v2 + 2184);
          if (!v34)
          {
LABEL_147:
            abort();
          }

          v35 = 2 * v32;
          v36 = (2 * v32) | 1;
          while (1)
          {
            while (1)
            {
              v37 = *(v34 + 7);
              if (v33 >= v37)
              {
                break;
              }

              v34 = *v34;
              if (!v34)
              {
                goto LABEL_147;
              }
            }

            if (v37 >= v33)
            {
              break;
            }

            v34 = v34[1];
            if (!v34)
            {
              goto LABEL_147;
            }
          }

          v38 = v2 + 1128;
LABEL_60:
          v39 = *v38;
          if (!*v38)
          {
LABEL_64:
            operator new();
          }

          while (1)
          {
            v38 = v39;
            v40 = *(v39 + 28);
            if (v36 < v40)
            {
              goto LABEL_60;
            }

            if (v40 > v35)
            {
              break;
            }

            v39 = *(v38 + 8);
            if (!v39)
            {
              goto LABEL_64;
            }
          }

          *(v38 + 32) = *(v34 + 8);
        }
      }
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((v2 + 640));
    v42 = *(v1 + 120);
    v41 = *(v1 + 124);
    v43 = *(v1 + 128);
    v44 = *(v1 + 132);
    v45 = *(v1 + 136);
    v46 = *(v1 + 140);
    v47 = (v41 + v44 + v46 - (v42 + v43 + v45) + 3) & 0xFFFFFFFC;
    v48 = *(v1 + 160);
    v49 = *(v1 + 168);
    if (*(v1 + 160) != 0)
    {
      v50 = 0;
      v51 = *(v1 + 144);
      if (*(v1 + 208) == 1)
      {
        v52 = (v2 + 728);
        if (!v51)
        {
          goto LABEL_76;
        }

        v53 = 0;
        v99 = *(v1 + 168);
        n = v48;
        for (m = v48; ; m = n)
        {
          if (m)
          {
            v55 = &n;
          }

          else
          {
            m = v99;
            if (!v99)
            {
              v45 = *(v1 + 136);
              v46 = *(v1 + 140);
              v43 = *(v1 + 128);
              v44 = *(v1 + 132);
              v42 = *(v1 + 120);
              v41 = *(v1 + 124);
              v51 = *(v1 + 144);
              v50 = v51;
              goto LABEL_76;
            }

            v55 = &v99;
          }

          *v55 = m & (m - 1);
          *(*(v2 + 728) + 4 * v53) = xmmword_29D2F21F0;
          v53 += 4;
        }
      }

      v52 = (v2 + 728);
LABEL_76:
      v56 = *(v1 + 176);
      if (*&v56 != 0 && v51 != 0)
      {
        v96 = v50 - v47 + ((v46 + v44 - (v45 + v43 + v42) + v41 + 3) & 0xFFFFFFFC);
        v99 = v49;
        for (n = v48; ; v48 = n)
        {
          if (v48)
          {
            p_n = &n;
          }

          else
          {
            v48 = v99;
            if (!v99)
            {
              break;
            }

            p_n = &v99;
          }

          v98 = *v52;
          *(*v52 + 4 * v96) = -1;
          *(v98 + 4 * (v96 + 1)) = 0;
          *(v98 + 4 * (v96 + 2)) = 1;
          *p_n = v48 & (v48 - 1);
          *(v98 + 4 * (v96 + 3)) = 2;
          v96 += 4;
        }
      }

      *(v2 + 1352) = vorrq_s8(*(v2 + 1352), v56);
    }

    if (*(v1 + 148))
    {
      v58 = *(v1 + 144);
      if (*(v1 + 208))
      {
        v59 = *(v1 + 144);
      }

      else
      {
        v59 = 0;
      }

      if (*(v1 + 176) == 0)
      {
        v58 = 0;
      }

      v60 = ((*(v1 + 124) + *(v1 + 132) + *(v1 + 140) - (*(v1 + 120) + *(v1 + 128) + *(v1 + 136)) + 3) & 0xFFFFFFFC) - v47 + v59 + v58;
      v61 = *(v1 + 192);
      v99 = *(v1 + 200);
      for (n = v61; ; v61 = n)
      {
        if (v61)
        {
          v62 = &n;
        }

        else
        {
          v61 = v99;
          if (!v99)
          {
            break;
          }

          v62 = &v99;
        }

        *v62 = v61 & (v61 - 1);
        v63 = *(v2 + 728);
        *(v63 + 4 * v60) = -1;
        if (*(v2 + 2168) == 1)
        {
          *(v63 + 4 * (v60 + 1)) = -1;
          *(v63 + 4 * (v60 + 2)) = 0;
        }

        v60 += 4;
      }
    }

    v64 = (*(v3 + 24) + 3) >> 2;
    if (*(v1 + 467) == 1)
    {
      *(v2 + 992) = v64;
      *(v2 + 996) = 102;
    }

    *(v2 + 636) = v64;
    v65 = *(v2 + 752);
    v66 = (*(v2 + 760) - v65) >> 2;
    if (v64 <= v66)
    {
      if (v64 < v66)
      {
        *(v2 + 760) = v65 + 4 * v64;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((v2 + 752), v64 - v66);
    }

    if (v2 + 840 != v1 + 216)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v2 + 840), *(v1 + 216), *(v1 + 224), (*(v1 + 224) - *(v1 + 216)) >> 2);
    }

    if (v2 + 888 != v1 + 240)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v2 + 888), *(v1 + 240), *(v1 + 248), (*(v1 + 248) - *(v1 + 240)) >> 2);
    }

    if (v2 + 864 != v1 + 320)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((v2 + 864), *(v1 + 320), *(v1 + 328), (*(v1 + 328) - *(v1 + 320)) >> 1);
    }

    if (v2 + 912 != v1 + 368)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((v2 + 912), *(v1 + 368), *(v1 + 376), (*(v1 + 376) - *(v1 + 368)) >> 1);
    }

    *(v2 + 936) = *(v1 + 416);
    *(v2 + 1328) = *(v1 + 160) != 0;
    *(v2 + 1329) = *(v1 + 148) != 0;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::finalizeGatherSizes(v2, v1);
    if ((*(v2 + 3679) & 1) == 0)
    {
      v67 = *(v2 + 2368);
      v68 = *(v2 + 2988);
      v69 = *(v2 + 3000);
      v70 = ((*(v2 + 2984) + 3) >> 2);
      *(v67 + 140) = *(v67 + 140) & 0xFFFFF00000000000 | (v70 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(v2 + 2996) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v70;
      *(v67 + 320) = (v68 + 3) >> 2;
      *(v67 + 324) = (((v69 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v67 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(v67 + 48, *(v67 + 312), *v67 + *(v67 + 316));
      }
    }

    v71 = *(v2 + 3680);
    if (v71 != -1)
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(*(v2 + 2368), v71, *(v2 + 3684), *(v2 + 3032), *(v2 + 3040), *(v2 + 3048), *(v2 + 3692));
    }

    v72 = *(v2 + 3248);
    if (v72)
    {
      v73 = *(v2 + 2988);
      v74 = *(v2 + 3000);
      v75 = ((*(v2 + 2984) + 3) >> 2);
      *(v72 + 140) = *(v72 + 140) & 0xFFFFF00000000000 | (v75 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(v2 + 2996) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v75;
      *(v72 + 320) = (v73 + 3) >> 2;
      *(v72 + 324) = (((v74 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v72 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(v72 + 48, *(v72 + 312), *v72 + *(v72 + 316));
      }

      v76 = *(v2 + 3248);
      v77 = *(v2 + 3200);
      memcpy(v77, *v76, *(v76 + 8) - *v76);
      if (*(v76 + 272) == 1)
      {
        *&v77[*(v76 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v77[*(v76 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v78 = *(v2 + 3248);
      v80 = *(v78 + 64);
      v79 = *(v78 + 80);
      *(v2 + 3256) = *(v78 + 48);
      *(v2 + 3272) = v80;
      *(v2 + 3288) = v79;
      v81 = *(v78 + 144);
      v83 = *(v78 + 96);
      v82 = *(v78 + 112);
      *(v2 + 3336) = *(v78 + 128);
      *(v2 + 3352) = v81;
      *(v2 + 3304) = v83;
      *(v2 + 3320) = v82;
      v85 = *(v78 + 176);
      v84 = *(v78 + 192);
      v86 = *(v78 + 160);
      *(v2 + 3416) = *(v78 + 208);
      *(v2 + 3384) = v85;
      *(v2 + 3400) = v84;
      *(v2 + 3368) = v86;
    }

    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::finish(*(v2 + 2368));
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(v2 + 2368);
    v87 = *(v2 + 576);
    v88 = *(v87 + 72);
    v89 = *(v87 + 80);
    if (v88 != v89)
    {
      while (1)
      {
        v90 = *v88;
        v91 = **v88;
        v92 = (v91 - 11);
        if (v92 > 0x35)
        {
          break;
        }

        if (((1 << (v91 - 11)) & 0x8000000000067) != 0)
        {
          goto LABEL_133;
        }

        if (v92 != 53)
        {
          break;
        }

LABEL_124:
        *(*(v2 + 752) + 4 * v90[2]) = 0x100000000;
LABEL_125:
        if (++v88 == v89)
        {
          goto LABEL_136;
        }
      }

      if ((v91 - 93) > 0x14 || ((1 << (v91 - 93)) & 0x100031) == 0)
      {
        goto LABEL_125;
      }

LABEL_133:
      if (v91 != 64 || v90[1] < 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }

LABEL_136:
    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((v2 + 752));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::finalizeGatherSizes(v2, v1);
    v94 = *(v2 + 584);
    if (v94)
    {
      v95 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v94);
      MEMORY[0x29ED520D0](v95, 0x1030C40704B4075);
    }

    *(v2 + 584) = 0;
    result = *(v2 + 576);
    if (result)
    {
      ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(result);
      result = MEMORY[0x29ED520D0]();
    }

    *(v2 + 576) = 0;
  }

  return result;
}

uint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::finalizeGatherSizes(uint64_t result, uint64_t a2)
{
  v2 = *(result + 636);
  v3 = *(result + 1104);
  v4 = *(result + 1096);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(result + 992) & 1;
  }

  v6 = (*(result + 848) - *(result + 840)) >> 2;
  *(result + 600) = ((*(result + 896) - *(result + 888) + 4 * (*(result + 1000) + v2 + *(result + 1004) + v5 + (((v3 - v4) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (v6 + *(result + 632));
  v7 = (*(a2 + 124) + *(a2 + 132) + *(a2 + 140) - (*(a2 + 120) + *(a2 + 128) + *(a2 + 136)) + 3) & 0xFFFFFFFC;
  *(result + 604) = 8 * v7;
  v8 = *(a2 + 208);
  v9 = *(a2 + 144);
  if (!*(a2 + 208))
  {
    v9 = 0;
  }

  *(result + 608) = 8 * (v9 + v7);
  v10 = *(result + 712);
  *(result + 612) = 8 * v10;
  v11 = 8 * (v6 + v10);
  *(result + 616) = v11;
  *(result + 620) = v11 + 4 * v2;
  v12 = *(a2 + 144);
  if (v8)
  {
    v13 = *(a2 + 144);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 176);
  if (*(a2 + 176) == 0)
  {
    v12 = 0;
  }

  *(result + 624) = 8 * (v13 + v12 + v7);
  if (v14 | *(a2 + 184))
  {
    v15 = *(a2 + 144);
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 == 0;
  if (v8)
  {
    v17 = *(a2 + 144);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a2 + 148);
  *(result + 628) = 8 * (v17 + v18 + v15 + v7);
  if (v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + 144);
  }

  if (v14 | *(a2 + 184))
  {
    v20 = *(a2 + 144);
  }

  else
  {
    v20 = 0;
  }

  *(result + 1288) = v20 + v19;
  *(result + 1292) = v18;
  return result;
}

void AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry::signalPending(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_unfair_lock_s *a9, unint64_t *a10, atomic_ullong *a11)
{
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v15 = v14;
  v17 = v16;
  v18 = v11;
  v62 = *MEMORY[0x29EDCA608];
  v19 = v12 & 0x330003;
  if ((v12 & 0x330003) != 0)
  {
    v20 = v13;
    v21 = v12;
    v22 = *v11;
    os_unfair_lock_lock(*v11 + 274);
    v57[0] = a10;
    v23 = std::__tree<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::__map_value_compare<ReflectionKey,std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::less<ReflectionKey>,true>,std::allocator<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>>>::__emplace_unique_key_args<ReflectionKey,std::piecewise_construct_t const&,std::tuple<ReflectionKey const&>,std::tuple<>>(v22, a10, v57);
    v24 = v23;
    if (v20)
    {
      if ((v19 & ~v23[9]) != 0)
      {
        v25 = v23[10];
        if (v25)
        {
          dispatch_release(v25);
        }

        dispatch_retain(v20);
        v24[9] = v19;
        v24[10] = v20;
      }

      if ((v22[268]._os_unfair_lock_opaque & 1) == 0)
      {
        v48 = v18;
        v46 = [objc_alloc(MEMORY[0x29EDBB5B8]) initWithDevice:a11 reflectionData:v20 functionType:6 options:v21 | 0x8000];
        v47 = v17;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v26 = [v46 arguments];
        v27 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v27)
        {
          v28 = *v50;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v50 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v49 + 1) + 8 * i);
              if (![v30 type] && (objc_msgSend(objc_msgSend(v30, "dataTypeDescription"), "elementIsIndirectArgumentBuffer") & 1) != 0)
              {
                v31 = -[atomic_ullong newIndirectArgumentBufferLayoutWithStructType:](a11, "newIndirectArgumentBufferLayoutWithStructType:", [v30 bufferStructType]);
                v32 = v31[2];
                v31[2] = 0;
                *&v22[2 * [v30 index] + 12]._os_unfair_lock_opaque = v32;
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v27);
        }

        v17 = v47;
        LOBYTE(v22[268]._os_unfair_lock_opaque) = 1;
        v18 = v48;
      }
    }

    else
    {
      v23[8] = v23[9];
    }

    os_unfair_lock_unlock(v22 + 274);
  }

  if ((atomic_exchange(v18 + 40, 1u) & 1) == 0)
  {
    v18[2] = v15;
    v33 = v18[3];
    if (v33 != a9)
    {

      v18[3] = a9;
      v15 = v18[2];
    }

    if (v17 && !v15 && *(v17 + 32) != *(v17 + 24))
    {
      AGCDeserializedReply::AGCDeserializedReply(v57);
      v34 = *(v17 + 24);
      if (*(v17 + 32) == v34 || !AGCDeserializedReply::deserialize(v57, *v34, *(v34 + 8)))
      {
        v18[2] = 2;
        v35 = v18[3];
        if (v35 != @"Internal error during function compilation.")
        {

          v18[3] = @"Internal error during function compilation.";
        }
      }

      v36 = 0;
      v37 = v58;
      if (v58 == 0 || v59 == 0)
      {
        v37 = v60;
      }

      if (v37 && (v58 != 0 && v59 != 0 || v61 != 0))
      {
        v36 = (v37 + *v37);
      }

      v38 = (v36 - *v36);
      if (*v38 >= 0x13u && v38[9])
      {
        v54 = 0;
        __p = 0;
        v55 = 0;
        AGCDeserializedReply::AGCDeserializedReply(&v49);
        v39 = *(v17 + 24);
        if ((*(v17 + 32) - v39) >> 4 && AGCDeserializedReply::deserialize(&v49, *v39, *(v39 + 8)))
        {
          AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ProgramBindingRemap(v56, &v49, 6, 0, 0, &(*v18)[12], 0, 0, 2, 0);
          operator new();
        }

        v18[2] = 2;
        v41 = v18[3];
        if (v41 != @"Internal error during function compilation.")
        {

          v18[3] = @"Internal error during function compilation.";
        }

        AGCDeserializedReply::~AGCDeserializedReply(&v49);
        if (!v18[2])
        {
          operator new();
        }

        v42 = __p;
        if (__p)
        {
          v43 = v54;
          v44 = __p;
          if (v54 != __p)
          {
            do
            {
              v45 = *(v43 - 1);
              if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v45->__on_zero_shared)(v45);
                std::__shared_weak_count::__release_weak(v45);
              }

              v43 -= 16;
            }

            while (v43 != v42);
            v44 = __p;
          }

          v54 = v42;
          operator delete(v44);
        }
      }

      else
      {
        v18[2] = 2;
        v40 = v18[3];
        if (v40 != @"Internal error during function compilation.")
        {

          v18[3] = @"Internal error during function compilation.";
        }
      }

      AGCDeserializedReply::~AGCDeserializedReply(v57);
    }
  }

  dispatch_group_leave(v18[4]);
}

void sub_29CE15740(_Unwind_Exception *a1)
{
  MEMORY[0x29ED520D0](v1, 0x1022C4093E17AA9);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](&STACK[0x848]);
  AGCDeserializedReply::~AGCDeserializedReply(&STACK[0xAC8]);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::__map_value_compare<ReflectionKey,std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::less<ReflectionKey>,true>,std::allocator<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>>>::__emplace_unique_key_args<ReflectionKey,std::piecewise_construct_t const&,std::tuple<ReflectionKey const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_24:
    operator new();
  }

  v4 = bswap64(*a2);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = bswap64(v3[4]);
      if (v4 == v6)
      {
        break;
      }

      v7 = v4;
LABEL_10:
      if (v7 < v6)
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }

      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_24;
      }
    }

    v7 = bswap64(a2[1]);
    v6 = bswap64(v5[5]);
    if (v7 != v6)
    {
      goto LABEL_10;
    }

    v7 = bswap64(a2[2]);
    v6 = bswap64(v5[6]);
    if (v7 != v6)
    {
      goto LABEL_10;
    }

    v7 = bswap64(a2[3]);
    v6 = bswap64(v5[7]);
    if (v7 != v6)
    {
      goto LABEL_10;
    }

LABEL_14:
    v9 = bswap64(v5[4]);
    v10 = bswap64(*a2);
    if (v9 == v10 && (v9 = bswap64(v5[5]), v10 = bswap64(a2[1]), v9 == v10) && (v9 = bswap64(v5[6]), v10 = bswap64(a2[2]), v9 == v10) && (v9 = bswap64(v5[7]), v10 = bswap64(a2[3]), v9 == v10))
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 < v10 ? -1 : 1;
    }

    if ((v11 & 0x80000000) == 0)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_24;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<AGX::UserIntersectionProgramKey const,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,0>(v1 + 32);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getOrCreatePipelineSet(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock((a2 + 1096));
  v7 = *(a2 + 1080);
  if (v7)
  {
    v8 = *(a2 + 1088);
    *a1 = v7;
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = *(a2 + 24);
    if (v9 != a2 + 32 && *(v9 + 152))
    {
      operator new();
    }

    *a1 = 0;
    a1[1] = 0;
  }

  os_unfair_lock_unlock((a2 + 1096));
}

void sub_29CE15BB8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  os_unfair_lock_unlock(v1 + 274);
  _Unwind_Resume(a1);
}

uint64_t AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionPipelineSet(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char a6)
{
  v16 = a5;
  v17 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = a6;
  *(a1 + 32) = 0;
  v8 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = a3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v16;
  v15[3] = a3;
  v9 = *(a2 + 40);
  if (v9 == -1)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
    v12 = v7;
    v14 = v13;
    MEMORY[0x29ED520D0](v12, 0x10B0C40F8EBD84CLL);
    std::unique_ptr<AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>>::~unique_ptr[abi:nn200100]((v6 + 80));
    AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::~RangeAllocation(v8);
    std::vector<AGX::HAL300::IntersectionPipeline>::~vector[abi:nn200100](v6);
    _Unwind_Resume(v14);
  }

  v18 = v15;
  (off_2A23F7A60[v9])(&v18);
  if (*(a1 + 25) == 1 && !*(a1 + 80))
  {
    operator new();
  }

  return a1;
}

uint64_t AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionEslData(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v240 = *MEMORY[0x29EDCA608];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v182 = (a1 + 48);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (!((0x82FA0BE82FA0BE83 * ((v4 - *a2) >> 3)) >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  bzero(v214, 0x328uLL);
  v213 = 0;
  v6 = v2[7];
  v5 = v2[8];
  v214[49] = v214;
  v214[44] = v5;
  v214[50] = &v213;
  v214[95] = v6;
  v211 = 0;
  v212 = 0;
  v189 = *(v2 + 26);
  v7 = 168;
  if (*(v2 + 26))
  {
    v7 = 504;
  }

  AGX::Heap<true>::allocateImpl(&v218, v2[11] + 6328 + v7, 0, 0);
  v8 = *v219;
  *v3 = v218;
  *(v3 + 16) = v8;
  *(v3 + 25) = *&v219[9];
  v9 = 0x82FA0BE82FA0BE83 * ((v2[1] - *v2) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v3 + 64) - *(v3 + 48)) >> 3) < v9)
  {
    if (v9 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_192:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = *v2;
  if (v2[1] != *v2)
  {
    v11 = 0;
    do
    {
      v12 = (v10 + 344 * v11);
      v201 = *(v3 + 8);
      v199 = *(4 * v11);
      v13 = *v3 + v199;
      v198 = *(*v12 + 2368);
      if (v189)
      {
        v13 += 0x1000000000;
      }

      v200 = v13;
      if (v189)
      {
        v14 = *v3 + v199 + 0x1000000000;
      }

      else
      {
        v14 = *v3 + v199;
      }

      *&v218 = v12[4];
      v15 = v12[5];
      *(&v218 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      *v219 = v12[6];
      v16 = v12[7];
      *&v219[8] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v197 = v11;
      *&v219[16] = v12[8];
      v17 = v12[9];
      *&v219[24] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v12 + 6);
      v220 = *(v12 + 5);
      v221 = v18;
      v19 = *(v12 + 7);
      v20 = *(v12 + 8);
      v21 = *(v12 + 10);
      v224 = *(v12 + 9);
      v225 = v21;
      v222 = v19;
      v223 = v20;
      v22 = *(v12 + 11);
      v23 = *(v12 + 12);
      v24 = *(v12 + 14);
      v228 = *(v12 + 13);
      v229 = v24;
      v226 = v22;
      v227 = v23;
      v25 = *(v12 + 15);
      v26 = *(v12 + 16);
      v27 = *(v12 + 17);
      *(&v232[1] + 5) = *(v12 + 285);
      v231 = v26;
      *v232 = v27;
      v230 = v25;
      *&v232[3] = *(v12 + 37);
      v232[5] = v12[39];
      v232[6] = v12[40];
      v233 = *(v12 + 41);
      v28 = v221;
      v29 = DWORD2(v222) + DWORD1(v220);
      v30 = *(v3 + 104);
      v31 = *(v3 + 112);
      if (v30 >= v31)
      {
        v33 = *(v3 + 96);
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v33) >> 2) + 1;
        if (v34 > 0x1555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 2);
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0xAAAAAAAAAAAAAAALL)
        {
          v36 = 0x1555555555555555;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          if (v36 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_190;
        }

        v3 = a1;
        v37 = (4 * ((v30 - v33) >> 2));
        *v37 = v220;
        v37[1] = v29;
        v37[2] = v28;
        v32 = v37 + 3;
        v38 = v37 - (v30 - v33);
        memcpy(v38, v33, v30 - v33);
        *(a1 + 96) = v38;
        *(a1 + 104) = v32;
        *(a1 + 112) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        *v30 = v220;
        *(v30 + 1) = v29;
        v32 = v30 + 12;
        *(v30 + 2) = v28;
      }

      *(v3 + 104) = v32;
      v39 = *(v32 - 1);
      v196 = *(v32 - 2);
      v40 = *v12;
      v41 = *(*v12 + 1104);
      v42 = *(*v12 + 1096);
      v44 = v41 - v42;
      v43 = v41 == v42;
      v45 = *(*v12 + 992) & 1;
      if (v43)
      {
        v45 = 0;
      }

      v46 = v14;
      if (!*(*v12 + 600))
      {
        goto LABEL_116;
      }

      v191 = v44;
      v187 = v45;
      v188 = *(*v12 + 992);
      v47 = *(v40 + 632);
      v48 = *(v40 + 712);
      v49 = *(v40 + 636);
      v50 = *(v40 + 1329);
      if (*(v40 + 1329))
      {
        v214[93] = v14 + *(v40 + 624);
      }

      v51 = 0;
      v52 = v201 + v199;
      v53 = *(v40 + 1296);
      v185 = *(v40 + 840);
      v186 = *(v40 + 848);
      v192 = *(v40 + 1004);
      v193 = *(v40 + 1000);
      v194 = v49;
      v195 = v47;
      if (v47 != v53)
      {
        v183 = *(v40 + 1328);
        v184 = v48;
        v216 = v214;
        v215 = &v213;
        v54 = &unk_2A23F75E0;
        v234 = &unk_2A23F75E0;
        v235 = &v215;
        v236 = &v216;
        v237 = &v234;
        v55 = *(v40 + 664);
        v56 = *(v40 + 672);
        if (v55 == v56)
        {
          v3 = a1;
          goto LABEL_55;
        }

        v57 = v39;
        v58 = 0;
        while (1)
        {
          v217 = *v55;
          if (!v237)
          {
            break;
          }

          v60 = (*(*v237 + 6))(v237, &v217);
          v61 = *(v55 + 1);
          v62 = *(v55 + 2);
          if (v61 == v62)
          {
            v59 = v58;
          }

          else
          {
            do
            {
              v63 = *v61++;
              v59 = (v58 + 1);
              *(v52 + 8 * v58) = *(v60 + 8 * v63);
              LODWORD(v58) = v58 + 1;
            }

            while (v61 != v62);
          }

          v55 += 8;
          v58 = v59;
          if (v55 == v56)
          {
            if (v237 != &v234)
            {
              v3 = a1;
              v39 = v57;
              v46 = v14;
              if (v237)
              {
                (*(*v237 + 5))();
              }

LABEL_56:
              v49 = v194;
              v47 = v195;
              if (*(v40 + 1136))
              {
                v64 = *(v40 + 1120);
                if (v64 != (v40 + 1128))
                {
                  do
                  {
                    *(v52 + 4 * *(v64 + 7)) |= *(v64 + 8);
                    v73 = v64[1];
                    if (v73)
                    {
                      do
                      {
                        v74 = v73;
                        v73 = *v73;
                      }

                      while (v73);
                    }

                    else
                    {
                      do
                      {
                        v74 = v64[2];
                        v43 = *v74 == v64;
                        v64 = v74;
                      }

                      while (!v43);
                    }

                    v64 = v74;
                  }

                  while (v74 != (v40 + 1128));
                }
              }

              v65 = (v184 + 3) & 0xFFFFFFFC;
              if (v183)
              {
                v66 = *(v40 + 1288);
                if (v66 >= 4)
                {
                  v67 = v66 >> 2;
                  v68 = *(v40 + 728);
                  v69 = (v52 + 8 * v65);
                  do
                  {
                    v70 = *v68;
                    v68 += 4;
                    v71 = &v214[v70];
                    v72 = v71[1];
                    *v69 = *v71;
                    v69[1] = v72;
                    v69 += 2;
                    --v67;
                  }

                  while (v67);
                }

                v65 += v66;
                if (!v50)
                {
LABEL_76:
                  v51 = 8 * (v195 - v53);
                  goto LABEL_77;
                }
              }

              else
              {
                v66 = 0;
                if (!v50)
                {
                  goto LABEL_76;
                }
              }

              v75 = *(v40 + 1292);
              v76 = (v52 + 8 * v65);
              if (*(v40 + 2168) == 1)
              {
                if (v75)
                {
                  v160 = (*(v40 + 728) + 4 * v66);
                  do
                  {
                    v161 = *v160++;
                    *v76++ = v214[v161];
                    --v75;
                  }

                  while (v75);
                }
              }

              else if (v75 >= 4)
              {
                v77 = v75 >> 2;
                v78 = (*(v40 + 728) + 4 * v66);
                do
                {
                  v79 = *v78;
                  v78 += 4;
                  *v76 = v214[v79];
                  v76 += 4;
                  --v77;
                }

                while (v77);
              }

              goto LABEL_76;
            }

            v54 = *v237;
            v3 = a1;
            v39 = v57;
            v46 = v14;
LABEL_55:
            v54[4]();
            goto LABEL_56;
          }
        }

LABEL_189:
        std::__throw_bad_function_call[abi:nn200100]();
LABEL_190:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

LABEL_77:
      if (v53)
      {
        if (v53 >= 4)
        {
          v80 = *(v40 + 2896);
          v81 = v53 >> 2;
          v82 = (v52 + v51);
          do
          {
            v83 = *v80;
            v80 += 4;
            *v82 = v83;
            v82 += 4;
            --v81;
          }

          while (v81);
        }

        v51 += 8 * v53;
      }

      if (!v49)
      {
        v94 = v192;
        v93 = v193;
        goto LABEL_98;
      }

      v213 = v46 + v51 + 8;
      v216 = v214;
      v215 = &v213;
      v84 = &unk_2A23F7628;
      v234 = &unk_2A23F7628;
      v235 = &v215;
      v236 = &v216;
      v237 = &v234;
      v85 = *(v40 + 776);
      v86 = *(v40 + 784);
      if (v85 != v86)
      {
        v87 = 0;
        do
        {
          v217 = *v85;
          if (!v237)
          {
            goto LABEL_189;
          }

          v89 = (*(*v237 + 6))(v237, &v217);
          v90 = *(v85 + 1);
          v91 = *(v85 + 2);
          if (v90 == v91)
          {
            v88 = v87;
          }

          else
          {
            do
            {
              v92 = *v90++;
              v88 = (v87 + 1);
              *(v52 + v51 + 4 * v87) = *(v89 + 4 * v92);
              LODWORD(v87) = v87 + 1;
            }

            while (v90 != v91);
          }

          v85 += 8;
          v87 = v88;
        }

        while (v85 != v86);
        v3 = a1;
        if (v237 != &v234)
        {
          v46 = v14;
          v94 = v192;
          v93 = v193;
          if (v237)
          {
            (*(*v237 + 5))();
          }

          goto LABEL_97;
        }

        v84 = *v237;
        v46 = v14;
      }

      v94 = v192;
      v93 = v193;
      v84[4]();
LABEL_97:
      v47 = v195;
      v51 += 4 * v194;
LABEL_98:
      if ((v191 >> 2))
      {
        v95 = v47 + ((v186 - v185) >> 2);
        v96 = 4 * (v187 + v188);
        v97 = (v52 + (v96 + 8 * v95));
        v98 = *(v40 + 1096);
        v99 = v191 >> 2;
        do
        {
          v100 = *v98++;
          *v97++ = v214[v100];
          LODWORD(v99) = v99 - 1;
        }

        while (v99);
        v51 = v96 + 8 * (v95 + (v191 >> 2));
      }

      if (v94 != -v93)
      {
        v101 = (v52 + v51);
        v102 = 4 * *(v40 + 1000);
        memcpy(v101, v214 + 4 * *(v40 + 996), v102);
        v216 = v214;
        v215 = &v213;
        v103 = &unk_2A23F7628;
        v234 = &unk_2A23F7628;
        v235 = &v215;
        v236 = &v216;
        v237 = &v234;
        v104 = *(v40 + 1032);
        v105 = *(v40 + 1040);
        if (v104 == v105)
        {
          goto LABEL_115;
        }

        v106 = 0;
        do
        {
          v217 = *v104;
          if (!v237)
          {
            goto LABEL_189;
          }

          v108 = (*(*v237 + 6))(v237, &v217);
          v109 = *(v104 + 1);
          v110 = *(v104 + 2);
          if (v109 == v110)
          {
            v107 = v106;
          }

          else
          {
            do
            {
              v111 = *v109++;
              v107 = (v106 + 1);
              *&v101[4 * v106 + v102] = *(v108 + 4 * v111);
              LODWORD(v106) = v106 + 1;
            }

            while (v109 != v110);
          }

          v104 += 8;
          v106 = v107;
        }

        while (v104 != v105);
        if (v237 == &v234)
        {
          v103 = *v237;
          v3 = a1;
          v46 = v14;
LABEL_115:
          v103[4]();
          goto LABEL_116;
        }

        v3 = a1;
        v46 = v14;
        if (v237)
        {
          (*(*v237 + 5))();
        }
      }

LABEL_116:
      v112 = v201 + v199;
      v113 = *(v40 + 2368);
      memcpy((v201 + v199), *v113, *(v113 + 8) - *v113);
      if (*(v113 + 272) == 1)
      {
        v114.i64[0] = v46;
        v114.i64[1] = v46 >> 5;
        *(v112 + *(v113 + 276)) = vbslq_s8(xmmword_29D2F17C0, *(v112 + *(v113 + 276)), vshlq_u8(vqtbl1q_s8(v114, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v115 = *(v113 + 224);
      for (i = *(v113 + 232); v115 != i; v115 += 3)
      {
        v117.i64[0] = v214[v115[1]] + *v115;
        v117.i64[1] = v117.i64[0] >> 5;
        *(v112 + v115[2]) = vbslq_s8(xmmword_29D2F17C0, *(v112 + v115[2]), vshlq_u8(vqtbl1q_s8(v117, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v118 = *(v113 + 248);
      v119 = *(v113 + 256);
      if (v118 != v119)
      {
        v120 = v213;
        do
        {
          v121.i64[0] = v120 + *v118;
          v121.i64[1] = v121.i64[0] >> 5;
          *(v112 + v118[2]) = vbslq_s8(xmmword_29D2F17C0, *(v112 + v118[2]), vshlq_u8(vqtbl1q_s8(v121, xmmword_29D2F17A0), xmmword_29D2F17B0));
          v118 += 3;
        }

        while (v118 != v119);
      }

      if (*(v113 + 312))
      {
        v122 = v211;
        if (!v211)
        {
          goto LABEL_137;
        }

LABEL_131:
        v127 = *v113;
        v128 = *(v113 + 8);
        v129 = *(v40 + 2776);
        LODWORD(v130) = *(v122 + 2);
        v131 = v130 + 1;
        if (*(v122 + 3) >= (v130 + 1))
        {
          v134 = *v122;
        }

        else
        {
          v132 = -__clz(v130);
          v133 = malloc_type_malloc(40 << (v132 & 0x1F), 0x10800400D7C94D2uLL);
          v134 = v133;
          v130 = *(v122 + 2);
          if (v130)
          {
            memcpy(v133, *v122, 40 * v130);
            free(*v122);
            LODWORD(v130) = *(v122 + 2);
          }

          *(v122 + 3) = 1 << v132;
          *v122 = v134;
        }

        v135 = &v134[40 * v130];
        *v135 = 12;
        *(v135 + 1) = v200;
        *(v135 + 2) = v112;
        *(v135 + 3) = (v128 - v127);
        *(v135 + 8) = v129;
        *(v122 + 2) = v131;
        v3 = a1;
        goto LABEL_137;
      }

      v123 = v112 + *(v113 + 316);
      v124 = (((v39 + 3) >> 2) + 1) & 0x7FFFFFFE;
      AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(&v234, (v123 + 18));
      v125 = v238;
      v126 = v239 & 0xFFF;
      if (v238 <= (v196 + 3) >> 2)
      {
        v125 = (v196 + 3) >> 2;
      }

      if (v126 <= v124)
      {
        v126 = v124;
      }

      *(v123 + 18) = *(v123 + 18) & 0x1F | (32 * ((v126 >> 1) & 0x7FF));
      *(v123 + 24) = v125;
      v122 = v211;
      if (v211)
      {
        goto LABEL_131;
      }

LABEL_137:
      v136 = *(*(*v12 + 2368) + 8) - **(*v12 + 2368);
      v137 = *(v3 + 56);
      v138 = *(v3 + 64);
      if (v137 >= v138)
      {
        v140 = *v182;
        v141 = 0xAAAAAAAAAAAAAAABLL * ((v137 - *v182) >> 3);
        v142 = v141 + 1;
        if (v141 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_192;
        }

        v143 = 0xAAAAAAAAAAAAAAABLL * ((v138 - v140) >> 3);
        if (2 * v143 > v142)
        {
          v142 = 2 * v143;
        }

        if (v143 >= 0x555555555555555)
        {
          v144 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v144 = v142;
        }

        if (v144)
        {
          if (v144 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_190;
        }

        v145 = (8 * ((v137 - *v182) >> 3));
        *v145 = v200;
        v145[1] = v112;
        v145[2] = v136;
        v139 = 24 * v141 + 24;
        v146 = (24 * v141 - (v137 - v140));
        memcpy(v146, v140, v137 - v140);
        *(v3 + 48) = v146;
        *(v3 + 56) = v139;
        *(v3 + 64) = 0;
        if (v140)
        {
          operator delete(v140);
        }
      }

      else
      {
        *v137 = v200;
        *(v137 + 1) = v112;
        *(v137 + 2) = v136;
        v139 = (v137 + 24);
      }

      *(v3 + 56) = v139;
      v147 = v112 + *(v198 + 316);
      v149 = *(v3 + 80);
      v148 = *(v3 + 88);
      if (v149 >= v148)
      {
        v151 = *(v3 + 72);
        v152 = v149 - v151;
        v153 = (v149 - v151) >> 3;
        v154 = v153 + 1;
        if ((v153 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v155 = v148 - v151;
        if (v155 >> 2 > v154)
        {
          v154 = v155 >> 2;
        }

        if (v155 >= 0x7FFFFFFFFFFFFFF8)
        {
          v156 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v156 = v154;
        }

        if (v156)
        {
          if (!(v156 >> 61))
          {
            operator new();
          }

          goto LABEL_190;
        }

        *(8 * v153) = v147;
        v150 = 8 * v153 + 8;
        memcpy(0, v151, v152);
        *(v3 + 72) = 0;
        *(v3 + 80) = v150;
        *(v3 + 88) = 0;
        if (v151)
        {
          operator delete(v151);
        }
      }

      else
      {
        *v149 = v147;
        v150 = (v149 + 8);
      }

      *(v3 + 80) = v150;
      v157 = *&v219[24];
      if (*&v219[24] && !atomic_fetch_add((*&v219[24] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v157->__on_zero_shared)(v157);
        std::__shared_weak_count::__release_weak(v157);
        v158 = *&v219[8];
        if (*&v219[8])
        {
LABEL_166:
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
          }
        }
      }

      else
      {
        v158 = *&v219[8];
        if (*&v219[8])
        {
          goto LABEL_166;
        }
      }

      v159 = *(&v218 + 1);
      if (*(&v218 + 1) && !atomic_fetch_add((*(&v218 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v159->__on_zero_shared)(v159);
        std::__shared_weak_count::__release_weak(v159);
      }

      v11 = v197 + 1;
      v2 = a2;
      v10 = *a2;
    }

    while (v197 + 1 < 0x82FA0BE82FA0BE83 * ((a2[1] - *a2) >> 3));
  }

  if (*(v2 + 8))
  {
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v162 = *(v3 + 48);
    v163 = *(v3 + 56) - v162;
    if (v163)
    {
      v164 = 0xAAAAAAAAAAAAAAABLL * (v163 >> 3);
      if (v164 <= 1)
      {
        v164 = 1;
      }

      v165 = &v203 + 1;
      do
      {
        v166 = *v162;
        v162 += 3;
        v167 = *(*v10 + 2368);
        v168 = *(v167 + 320);
        v169 = v166 & 0xFFFFFFFFFFC0 | (v168 << 48);
        v170 = ((4 * (*(v167 + 324) & 0xFFF)) | WORD1(v168) & 3) & 0xFFFFFFC0FFFFFFFFLL | ((*(*v10 + 3712) & 7) << 32) & 0xFFFFFFC7FFFFFFFFLL | ((*(*v10 + 3704) & 7) << 35) | ((*(*v10 + 3704) > 0) << 38);
        if (*(*v10 + 3724) == 1)
        {
          v171 = 0x8000030000000000;
        }

        else
        {
          v171 = 0x8000010000000000;
        }

        *(v165 - 1) = v169;
        *v165 = v170 | v171 | 0x8000000000;
        v165 += 2;
        v10 += 344;
        --v164;
      }

      while (v164);
    }

    v172 = v2[5];
    os_unfair_lock_lock(v172 + 188);
    v173 = v2[5];
    v174 = *(v2 + 8);
    os_unfair_lock_assert_owner(v173 + 188);
    v175 = (*(*&v173[6 * v173[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *MEMORY[0x29EDC5638] + 24) + (v174 << 7));
    v176 = v208;
    v175[4] = v207;
    v175[5] = v176;
    v177 = v210;
    v175[6] = v209;
    v175[7] = v177;
    v178 = v204;
    *v175 = v203;
    v175[1] = v178;
    v179 = v206;
    v175[2] = v205;
    v175[3] = v179;
    os_unfair_lock_unlock(v172 + 188);
  }

  v180 = v211;
  if (v211)
  {
    free(*v211);
    MEMORY[0x29ED520D0](v180, 0x1020C4014030ADELL);
  }

  return v3;
}

void sub_29CE17254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  AGX::CommonUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~CommonUSCStateLoader(&a55);
  if (v56)
  {
    operator delete(v56);
    v58 = __p;
    if (!__p)
    {
LABEL_3:
      v59 = v55[12];
      if (!v59)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v58 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v58);
  v59 = v55[12];
  if (!v59)
  {
LABEL_4:
    v60 = v55[9];
    if (!v60)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v55[13] = v59;
  operator delete(v59);
  v60 = v55[9];
  if (!v60)
  {
LABEL_6:
    v61 = *a10;
    if (*a10)
    {
      v55[7] = v61;
      operator delete(v61);
    }

    _Unwind_Resume(a1);
  }

LABEL_5:
  v55[10] = v60;
  operator delete(v60);
  goto LABEL_6;
}

uint64_t AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionEslData(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = v2;
    v8[5] = a1;
    dispatch_sync(v3, v8);
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t *std::unique_ptr<AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionEslData(v2);
    MEMORY[0x29ED520D0](v4, 0x10B0C40F8EBD84CLL);
    return v3;
  }

  return v1;
}

void **std::vector<AGX::HAL300::IntersectionPipeline>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline(v3 - 43);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v2);
  }

  v3 = a1[9];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[3];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[1];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZN3AGX23IntersectionPipelineSetINS8_6HAL3008EncodersENSA_7ClassesENSA_10ObjClassesEEC1ERKNS8_29IntersectionProgramVariantSetISB_SC_SD_EERNSA_6DeviceEjjbEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJNSG_8VariantsENSG_15EmulationDylibsEEEEEEEDcSL_DpT0_(uint64_t **a1, std::__shared_weak_count ***a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 - *a2) >> 4;
  if (0x82FA0BE82FA0BE83 * ((*(v3 + 16) - *v3) >> 3) < v6)
  {
    if (v6 <= 0xBE82FA0BE82FA0)
    {
      v25 = **a1;
      operator new();
    }

LABEL_27:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v4 != v5)
  {
    v7 = *(v3 + 8);
    do
    {
      v8 = *v4;
      *(v3 + 25) = WORD1((*v4)[155].__vftable);
      v9 = v2[1];
      v10 = *(v3 + 16);
      if (v7 < v10)
      {
        std::allocator<AGX::HAL300::IntersectionPipeline>::construct[abi:nn200100]<AGX::HAL300::IntersectionPipeline,std::shared_ptr<AGX::HAL300::IntersectionProgramVariant> const&,decltype(nullptr),unsigned int &>(v7, v8, v4[1], v9);
        v7 += 344;
        *(v3 + 8) = v7;
      }

      else
      {
        v11 = 0x82FA0BE82FA0BE83 * ((v7 - *v3) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xBE82FA0BE82FA0)
        {
          goto LABEL_27;
        }

        v13 = 0x82FA0BE82FA0BE83 * ((v10 - *v3) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x5F417D05F417D0)
        {
          v14 = 0xBE82FA0BE82FA0;
        }

        else
        {
          v14 = v12;
        }

        v25 = v3;
        if (v14)
        {
          if (v14 <= 0xBE82FA0BE82FA0)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        __p = 0;
        v22 = 344 * v11;
        v23 = 344 * v11;
        v24 = 0;
        std::allocator<AGX::HAL300::IntersectionPipeline>::construct[abi:nn200100]<AGX::HAL300::IntersectionPipeline,std::shared_ptr<AGX::HAL300::IntersectionProgramVariant> const&,decltype(nullptr),unsigned int &>(344 * v11, v8, v4[1], v9);
        v23 += 344;
        std::vector<AGX::HAL300::IntersectionPipeline>::__swap_out_circular_buffer(v3, &__p);
        v7 = *(v3 + 8);
        v16 = v22;
          ;
        }

        if (__p)
        {
          operator delete(__p);
        }
      }

      *(v3 + 8) = v7;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v17 = *v2[2];
  if (v17 != -1)
  {
    AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::RangeAllocation(&__p, (v2[3] + 14136), 1, v17);
    v18 = *(v3 + 32);
    *(v3 + 32) = __p;
    __p = v18;
    v19 = *(v3 + 40);
    *(v3 + 40) = v22;
    v22 = v19;
    v20 = *(v3 + 48);
    *(v3 + 48) = v23;
    LOBYTE(v23) = v20;
    if (v18)
    {
      if ((v20 & 1) == 0)
      {
        os_unfair_lock_lock(v19 + 188);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(v22 + 696, __p, __p + HIDWORD(__p) - 1);
        os_unfair_lock_unlock(v19 + 188);
      }
    }
  }
}

void sub_29CE17950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<AGX::HAL300::IntersectionPipeline>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<AGX::HAL300::IntersectionPipeline>::construct[abi:nn200100]<AGX::HAL300::IntersectionPipeline,std::shared_ptr<AGX::HAL300::IntersectionProgramVariant> const&,decltype(nullptr),unsigned int &>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, int *a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a4;
    *a1 = a2;
    *(a1 + 8) = a3;
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *a4;
    *a1 = a2;
    *(a1 + 8) = 0;
  }

  *(a1 + 132) = 0xFFFFFFFF00000001;
  v7 = a1 + 132;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 140) = 1610612736;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a1 + 180) = 0u;
  *(a1 + 196) = v8;
  *(a1 + 212) = v8;
  *(a1 + 228) = v8;
  *(a1 + 260) = 0;
  *(a1 + 244) = -1;
  *(a1 + 252) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1024;
  *(a1 + 292) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 80) = *(a2 + 1268);
  v9 = *(a2 + 1276);
  *(a1 + 88) = v9;
  v10 = *(a2 + 1304);
  *(a1 + 100) = v10;
  *(a1 + 104) = v6;
  *(a1 + 272) = *(a2 + 2768);
  v11 = *(a2 + 1280) - v9;
  *(a1 + 108) = v11;
  *(a1 + 84) = v9 + v11 * v6;
  v12 = *(a2 + 1308);
  *(a1 + 116) = v12 - v10;
  *(a1 + 96) = v10 + v12 * v6;
  v13 = AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 132), (a2 + 1144));
  *(v7 + 120) = *(a2 + 1264);
  *(v7 + 124) = *(a2 + 1330);
  *(v7 + 125) = *(a2 + 1332);
  *(v7 + 128) = *(a2 + 1326);
  *(v7 + 164) = *(a2 + 1320);
  if (a3 && !atomic_fetch_add(&a3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a3->__on_zero_shared)(a3, v13);

    std::__shared_weak_count::__release_weak(a3);
  }
}

char *std::vector<AGX::HAL300::IntersectionPipeline>::__swap_out_circular_buffer(uint64_t a1, void *a2)
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
      *v9 = 0uLL;
      *(v9 + 1) = 0uLL;
      v22 = *(v8 + 5);
      *(v9 + 4) = *(v8 + 4);
      *(v9 + 5) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v23 = *(v8 + 7);
      *(v9 + 6) = *(v8 + 6);
      *(v9 + 7) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v24 = *(v8 + 9);
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 9) = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(v8 + 6);
      *(v9 + 5) = *(v8 + 5);
      *(v9 + 6) = v10;
      v11 = *(v8 + 7);
      v12 = *(v8 + 8);
      v13 = *(v8 + 10);
      *(v9 + 9) = *(v8 + 9);
      *(v9 + 10) = v13;
      *(v9 + 7) = v11;
      *(v9 + 8) = v12;
      v14 = *(v8 + 11);
      v15 = *(v8 + 12);
      v16 = *(v8 + 14);
      *(v9 + 13) = *(v8 + 13);
      *(v9 + 14) = v16;
      *(v9 + 11) = v14;
      *(v9 + 12) = v15;
      v17 = *(v8 + 15);
      v18 = *(v8 + 16);
      v19 = *(v8 + 17);
      *(v9 + 285) = *(v8 + 285);
      *(v9 + 16) = v18;
      *(v9 + 17) = v19;
      *(v9 + 15) = v17;
      *(v9 + 296) = *(v8 + 296);
      *(v9 + 39) = *(v8 + 39);
      *(v9 + 40) = *(v8 + 40);
      *(v9 + 328) = *(v8 + 328);
      v20 = *v9;
      *v9 = *v8;
      *v8 = v20;
      v21 = *(v9 + 1);
      *(v9 + 1) = *(v8 + 1);
      *(v8 + 1) = v21;
      v8 += 344;
      v9 += 344;
    }

    while (v8 != v5);
    do
    {
      result = (AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline(result) + 43);
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v25 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v25;
  v26 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v26;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<AGX::HAL300::IntersectionPipeline>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 344;
    AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline((i - 344));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionPipelineSet(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (0x82FA0BE82FA0BE83 * ((v3 - *a2) >> 3) < 0xBE82FA0BE82FA1)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 25);
  *(a1 + 25) = v4;
  v5 = *(a2 + 26);
  *(a1 + 32) = 0;
  *(a1 + 26) = v5;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 7);
  v7 = a2[9];
  *(a1 + 80) = 0;
  v8 = (a1 + 80);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = a2[11];
  *(a1 + 88) = v9;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = a2[13];
  *(a1 + 112) = 0;
  if (*(a2 + 8))
  {
    AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::RangeAllocation(&v14, v9 + 3534, 1, 0);
    v10 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v10;
    v11 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v11;
    v12 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v12;
    if (v10 && (v12 & 1) == 0)
    {
      os_unfair_lock_lock(v11 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v15[174], v14, v14 + HIDWORD(v14) - 1);
      os_unfair_lock_unlock(v11 + 188);
    }

    if ((*(a1 + 25) & 1) != 0 && !*v8)
    {
LABEL_12:
      operator new();
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  return a1;
}

void sub_29CE18010(_Unwind_Exception *a1)
{
  MEMORY[0x29ED520D0](v4, 0x10B0C40F8EBD84CLL);
  std::unique_ptr<AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>>::~unique_ptr[abi:nn200100](v3);
  AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::~RangeAllocation(v2);
  std::vector<AGX::HAL300::IntersectionPipeline>::~vector[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void sub_29CE18058(_Unwind_Exception *a1)
{
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v3 + 32));
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v4);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v3);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    operator new();
  }

  return *(*(v1 + 24) + 296) + *MEMORY[0x29EDC5638] + 32;
}

void AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchEslPrograms(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 112));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 8) - *a1;
    if (v3)
    {
      v4 = 0;
      v5 = 0x82FA0BE82FA0BE83 * (v3 >> 3);
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      v7 = (*a1 + 120);
      v8 = (*(v2 + 96) + 8);
      while (1)
      {
        v11 = *(v8 - 2);
        if (v11 < *(v7 - 10))
        {
          break;
        }

        v9 = *(v8 - 1);
        v10 = *v7 + *(v7 - 9);
        if (v9 < v10 || *v8 < *(v7 - 6))
        {
          goto LABEL_8;
        }

LABEL_19:
        ++v4;
        v7 += 86;
        v8 += 3;
        if (v6 == v4)
        {
          goto LABEL_24;
        }
      }

      v9 = *(v8 - 1);
      v10 = *v7 + *(v7 - 9);
      v11 = *(v7 - 10);
LABEL_8:
      if (v9 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v9;
      }

      *(v8 - 2) = v11;
      *(v8 - 1) = v12;
      if (*v8 <= *(v7 - 6))
      {
        v13 = *(v7 - 6);
      }

      else
      {
        v13 = *v8;
      }

      *v8 = v13;
      v14 = *(*(v2 + 72) + 8 * v4);
      AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(v17, (v14 + 18));
      v15 = (((v13 + 3) >> 2) + 1) & 0x7FFFFFFE;
      v16 = (v12 + 3) >> 2;
      if (v18 > v16)
      {
        LOWORD(v16) = v18;
      }

      if ((v19 & 0xFFFu) > v15)
      {
        v15 = v19 & 0xFFF;
      }

      *(v14 + 18) = *(v14 + 18) & 0x1F | (32 * ((v15 >> 1) & 0x7FF));
      *(v14 + 24) = v16;
      goto LABEL_19;
    }
  }

LABEL_24:
  os_unfair_lock_unlock((a1 + 112));
}

void AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::snapshotRuntimeStates(unint64_t *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 28);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *&a2[2]._os_unfair_lock_opaque;
  if (v4 != *&a2->_os_unfair_lock_opaque)
  {
    if (0x82FA0BE82FA0BE83 * ((v4 - *&a2->_os_unfair_lock_opaque) >> 3) <= 0xD20D20D20D20D2)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  os_unfair_lock_unlock(a2 + 28);
}

void sub_29CE18710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, os_unfair_lock_s *a10)
{
  std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>::~vector[abi:nn200100](v10);
  os_unfair_lock_unlock(a10 + 28);
  _Unwind_Resume(a1);
}

uint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(uint64_t result)
{
  v1 = *(result + 536) != 0;
  *(result + 336) = v1;
  if (*(result + 544))
  {
    v1 |= 2u;
    *(result + 336) = v1;
  }

  if (*(result + 552))
  {
    v1 |= 4u;
    *(result + 336) = v1;
  }

  if (*(result + 560))
  {
    v1 |= 8u;
    *(result + 336) = v1;
  }

  if (*(result + 568))
  {
    v1 |= 0x10u;
    *(result + 336) = v1;
  }

  if (*(result + 576))
  {
    v1 |= 0x20u;
    *(result + 336) = v1;
  }

  if (*(result + 584))
  {
    v1 |= 0x40u;
    *(result + 336) = v1;
  }

  if (*(result + 592))
  {
    v1 |= 0x80u;
    *(result + 336) = v1;
  }

  v2 = result + 536;
  v3 = MEMORY[0x29EDC5638];
  v4 = v1;
  do
  {
    v5 = __clz(__rbit32(v4));
    v4 &= ~(1 << v5);
    if (!v4)
    {
      break;
    }

    v6 = *v3;
    v7 = *(*(v2 + 8 * v5) + v6 + 48);
    v8 = v4;
    do
    {
      v9 = __clz(__rbit32(v8));
      v10 = 1 << v9;
      if (v7 == *(*(v2 + 8 * v9) + v6 + 48))
      {
        v1 &= ~v10;
        *(result + 336) = v1;
        v4 &= ~v10;
      }

      v8 &= ~v10;
    }

    while (v8);
  }

  while (v4);
  return result;
}

uint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(uint64_t a1)
{
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 464));
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,false>(unint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v11 = (a2 - 120);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      if (*(a2 - 16) >= *(v12 + 24))
      {
        return result;
      }

LABEL_112:
      v299 = *(v12 + 32);
      v236 = *v12;
      v269 = *(v12 + 16);
      v128 = *v9;
      v129 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v128;
      *(v12 + 16) = v129;
      result = v236;
      v130 = v269;
      *(a2 - 8) = v299;
LABEL_113:
      *v9 = result;
      *(a2 - 24) = v130;
      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v134 = (v12 + 40);
      v136 = v12 == a2 || v134 == a2;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = v12;
          do
          {
            v140 = v134;
            v141 = *(v138 + 64);
            if (v141 < *(v138 + 24))
            {
              v271 = v140[1].n128_u64[0];
              v238 = *v140;
              v142 = *(v138 + 72);
              v143 = v137;
              do
              {
                v144 = v12 + v143;
                v145 = *(v12 + v143 + 16);
                *(v144 + 40) = *(v12 + v143);
                *(v144 + 56) = v145;
                *(v144 + 72) = *(v12 + v143 + 32);
                if (!v143)
                {
                  v139 = v12;
                  goto LABEL_127;
                }

                v143 -= 40;
              }

              while (v141 < *(v144 - 16));
              v139 = v12 + v143 + 40;
LABEL_127:
              result = v238;
              *v139 = v238;
              *(v139 + 16) = v271;
              *(v139 + 24) = v141;
              *(v139 + 32) = v142;
            }

            v134 = (v140 + 40);
            v137 += 40;
            v138 = v140;
          }

          while (&v140[2].n128_i8[8] != a2);
        }
      }

      else if (!v136)
      {
        do
        {
          v196 = v134;
          v197 = *(a1 + 64);
          if (v197 < *(a1 + 24))
          {
            v276 = v134[1].n128_u64[0];
            v242 = *v134;
            v198 = *(a1 + 72);
            v199 = v196;
            do
            {
              v200 = *(v199 - 24);
              *v199 = *(v199 - 40);
              *(v199 + 16) = v200;
              *(v199 + 32) = *(v199 - 8);
              v201 = *(v199 - 56);
              v199 -= 40;
            }

            while (v197 < v201);
            result = v242;
            *v199 = v242;
            *(v199 + 16) = v276;
            *(v199 + 24) = v197;
            *(v199 + 32) = v198;
          }

          v134 = (v196 + 40);
          a1 = v196;
        }

        while (v196 + 40 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v146 = (v14 - 2) >> 1;
        v147 = v146;
        do
        {
          if (v146 >= v147)
          {
            v149 = (2 * (v147 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v150 = v12 + 40 * v149;
            if (2 * v147 + 2 < v14)
            {
              v151 = *(v150 + 24);
              v152 = *(v150 + 64);
              v153 = v151 >= v152;
              v154 = v151 >= v152 ? 0 : 40;
              v150 += v154;
              if (!v153)
              {
                v149 = 2 * v147 + 2;
              }
            }

            v155 = v12 + 40 * v147;
            v156 = *(v155 + 24);
            if (*(v150 + 24) >= v156)
            {
              v272 = *(v155 + 16);
              v239 = *v155;
              v157 = *(v155 + 32);
              do
              {
                v158 = v155;
                v155 = v150;
                v159 = *v150;
                v160 = *(v150 + 16);
                *(v158 + 32) = *(v150 + 32);
                *v158 = v159;
                *(v158 + 16) = v160;
                if (v146 < v149)
                {
                  break;
                }

                v161 = (2 * v149) | 1;
                v150 = v12 + 40 * v161;
                v162 = 2 * v149 + 2;
                if (v162 < v14)
                {
                  v163 = *(v150 + 24);
                  v164 = *(v150 + 64);
                  v165 = v163 >= v164;
                  v166 = v163 >= v164 ? 0 : 40;
                  v150 += v166;
                  if (!v165)
                  {
                    v161 = v162;
                  }
                }

                v149 = v161;
              }

              while (*(v150 + 24) >= v156);
              *v155 = v239;
              *(v155 + 16) = v272;
              *(v155 + 24) = v156;
              *(v155 + 32) = v157;
            }
          }

          v148 = v147-- <= 0;
        }

        while (!v148);
        v167 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v168 = 0;
          v301 = *(v12 + 32);
          v240 = *v12;
          v273 = *(v12 + 16);
          v169 = v12;
          do
          {
            v176 = v169 + 40 * v168;
            v173 = v176 + 40;
            v177 = (2 * v168) | 1;
            v168 = 2 * v168 + 2;
            if (v168 < v167)
            {
              v170 = *(v176 + 64);
              v171 = *(v176 + 104);
              v172 = v176 + 80;
              if (v170 >= v171)
              {
                v168 = v177;
              }

              else
              {
                v173 = v172;
              }
            }

            else
            {
              v168 = v177;
            }

            v174 = *v173;
            v175 = *(v173 + 16);
            *(v169 + 32) = *(v173 + 32);
            *v169 = v174;
            *(v169 + 16) = v175;
            v169 = v173;
          }

          while (v168 <= ((v167 - 2) >> 1));
          a2 -= 40;
          if (v173 == a2)
          {
            result = v240;
            *(v173 + 32) = v301;
            *v173 = v240;
            *(v173 + 16) = v273;
          }

          else
          {
            v178 = *a2;
            v179 = *(a2 + 16);
            *(v173 + 32) = *(a2 + 32);
            *v173 = v178;
            *(v173 + 16) = v179;
            result = v240;
            *(a2 + 32) = v301;
            *a2 = v240;
            *(a2 + 16) = v273;
            v180 = v173 - v12 + 40;
            if (v180 >= 41)
            {
              v181 = (-2 - 0x3333333333333333 * (v180 >> 3)) >> 1;
              v182 = v12 + 40 * v181;
              v183 = *(v173 + 24);
              if (*(v182 + 24) < v183)
              {
                v311 = *(v173 + 16);
                v308 = *v173;
                v184 = *(v173 + 32);
                do
                {
                  v185 = v173;
                  v173 = v182;
                  v186 = *v182;
                  v187 = *(v182 + 16);
                  *(v185 + 32) = *(v182 + 32);
                  *v185 = v186;
                  *(v185 + 16) = v187;
                  if (!v181)
                  {
                    break;
                  }

                  v181 = (v181 - 1) >> 1;
                  v182 = v12 + 40 * v181;
                }

                while (*(v182 + 24) < v183);
                result = v308;
                *v173 = v308;
                *(v173 + 16) = v311;
                *(v173 + 24) = v183;
                *(v173 + 32) = v184;
              }
            }
          }

          v148 = v167-- <= 2;
        }

        while (!v148);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    v17 = *(a2 - 16);
    if (v13 < 0x1401)
    {
      v21 = *(v12 + 24);
      if (v21 < *(v16 + 24))
      {
        if (v17 < v21)
        {
          v282 = *(v16 + 32);
          v219 = *v16;
          v247 = *(v16 + 16);
          v22 = *v9;
          v23 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v22;
          *(v16 + 16) = v23;
          goto LABEL_36;
        }

        v289 = *(v16 + 32);
        v226 = *v16;
        v255 = *(v16 + 16);
        v51 = *v12;
        v52 = *(v12 + 16);
        *(v16 + 32) = *(v12 + 32);
        *v16 = v51;
        *(v16 + 16) = v52;
        *(v12 + 32) = v289;
        *v12 = v226;
        *(v12 + 16) = v255;
        if (*(a2 - 16) < *(v12 + 24))
        {
          v282 = *(v12 + 32);
          v219 = *v12;
          v247 = *(v12 + 16);
          v53 = *v9;
          v54 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v53;
          *(v12 + 16) = v54;
LABEL_36:
          *(a2 - 8) = v282;
          *v9 = v219;
          *(a2 - 24) = v247;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v17 >= v21)
      {
        goto LABEL_37;
      }

      v285 = *(v12 + 32);
      v222 = *v12;
      v250 = *(v12 + 16);
      v28 = *v9;
      v29 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v28;
      *(v12 + 16) = v29;
      *(a2 - 8) = v285;
      *v9 = v222;
      *(a2 - 24) = v250;
      if (*(v12 + 24) >= *(v16 + 24))
      {
        goto LABEL_37;
      }

      v286 = *(v16 + 32);
      v223 = *v16;
      v251 = *(v16 + 16);
      v30 = *v12;
      v31 = *(v12 + 16);
      *(v16 + 32) = *(v12 + 32);
      *v16 = v30;
      *(v16 + 16) = v31;
      *(v12 + 32) = v286;
      *v12 = v223;
      *(v12 + 16) = v251;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v55 = *(v12 + 24);
      if (*(v12 - 16) < v55)
      {
        goto LABEL_62;
      }

      v310 = *(v12 + 16);
      v307 = *v12;
      if (v55 >= *(a2 - 16))
      {
        v113 = v12 + 40;
        do
        {
          v12 = v113;
          if (v113 >= a2)
          {
            break;
          }

          v114 = *(v113 + 24);
          v113 += 40;
        }

        while (v55 >= v114);
      }

      else
      {
        v111 = v12;
        do
        {
          v12 = v111 + 40;
          v112 = *(v111 + 64);
          v111 += 40;
        }

        while (v55 >= v112);
      }

      v115 = a2;
      if (v12 < a2)
      {
        v116 = a2;
        do
        {
          v115 = v116 - 40;
          v117 = *(v116 - 16);
          v116 -= 40;
        }

        while (v55 < v117);
      }

      v118 = *(a1 + 32);
      while (v12 < v115)
      {
        v298 = *(v12 + 32);
        v235 = *v12;
        v268 = *(v12 + 16);
        v119 = *v115;
        v120 = *(v115 + 16);
        *(v12 + 32) = *(v115 + 32);
        *v12 = v119;
        *(v12 + 16) = v120;
        *(v115 + 32) = v298;
        *v115 = v235;
        *(v115 + 16) = v268;
        do
        {
          v121 = *(v12 + 64);
          v12 += 40;
        }

        while (v55 >= v121);
        do
        {
          v122 = *(v115 - 16);
          v115 -= 40;
        }

        while (v55 < v122);
      }

      v123 = (v12 - 40);
      if (v12 - 40 != a1)
      {
        v124 = *v123;
        v125 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v124;
        *(a1 + 16) = v125;
      }

      a4 = 0;
      result = v307;
      *(v12 - 24) = v310;
      *v123 = v307;
      *(v12 - 16) = v55;
      *(v12 - 8) = v118;
    }

    else
    {
      v18 = *(v16 + 24);
      if (v18 >= *(v12 + 24))
      {
        if (v17 < v18)
        {
          v283 = *(v16 + 32);
          v220 = *v16;
          v248 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v283;
          *v9 = v220;
          *(a2 - 24) = v248;
          if (*(v16 + 24) < *(v12 + 24))
          {
            v284 = *(v12 + 32);
            v221 = *v12;
            v249 = *(v12 + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 32) = v284;
            *v16 = v221;
            *(v16 + 16) = v249;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v287 = *(v12 + 32);
          v224 = *v12;
          v252 = *(v12 + 16);
          v32 = *v16;
          v33 = *(v16 + 16);
          *(v12 + 32) = *(v16 + 32);
          *v12 = v32;
          *(v12 + 16) = v33;
          *(v16 + 32) = v287;
          *v16 = v224;
          *(v16 + 16) = v252;
          if (*(a2 - 16) >= *(v16 + 24))
          {
            goto LABEL_28;
          }

          v281 = *(v16 + 32);
          v218 = *v16;
          v246 = *(v16 + 16);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v34;
          *(v16 + 16) = v35;
        }

        else
        {
          v281 = *(v12 + 32);
          v218 = *v12;
          v246 = *(v12 + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v19;
          *(v12 + 16) = v20;
        }

        *(a2 - 8) = v281;
        *v9 = v218;
        *(a2 - 24) = v246;
      }

LABEL_28:
      v36 = v12 + 40 * v15;
      v37 = v36 - 40;
      v38 = *(v36 - 16);
      v39 = *(a2 - 56);
      if (v38 >= *(v12 + 64))
      {
        if (v39 < v38)
        {
          v288 = *(v37 + 32);
          v225 = *v37;
          v253 = *(v37 + 16);
          v45 = *v10;
          v46 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v45;
          *(v37 + 16) = v46;
          *(a2 - 48) = v288;
          *v10 = v225;
          *(a2 - 64) = v253;
          if (*(v37 + 24) < *(v12 + 64))
          {
            v47 = *(v12 + 40);
            v254 = *(v12 + 56);
            v48 = *(v12 + 72);
            v50 = *v37;
            v49 = *(v37 + 16);
            *(v12 + 72) = *(v37 + 32);
            *(v12 + 40) = v50;
            *(v12 + 56) = v49;
            *(v37 + 32) = v48;
            *v37 = v47;
            *(v37 + 16) = v254;
          }
        }
      }

      else
      {
        if (v39 >= v38)
        {
          v56 = *(v12 + 40);
          v256 = *(v12 + 56);
          v57 = *(v12 + 72);
          v59 = *v37;
          v58 = *(v37 + 16);
          *(v12 + 72) = *(v37 + 32);
          *(v12 + 40) = v59;
          *(v12 + 56) = v58;
          *(v37 + 32) = v57;
          *v37 = v56;
          *(v37 + 16) = v256;
          if (*(a2 - 56) >= *(v37 + 24))
          {
            goto LABEL_42;
          }

          v290 = *(v37 + 32);
          v227 = *v37;
          v257 = *(v37 + 16);
          v60 = *v10;
          v61 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v60;
          *(v37 + 16) = v61;
          v40 = v227;
          v41 = v257;
          *(a2 - 48) = v290;
        }

        else
        {
          v40 = *(v12 + 40);
          v41 = *(v12 + 56);
          v42 = *(v12 + 72);
          v44 = *v10;
          v43 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *(v12 + 40) = v44;
          *(v12 + 56) = v43;
          *(a2 - 48) = v42;
        }

        *v10 = v40;
        *(a2 - 64) = v41;
      }

LABEL_42:
      v62 = v12 + 40 * v15;
      v63 = *(v62 + 64);
      v64 = *(a2 - 96);
      if (v63 >= *(v12 + 104))
      {
        if (v64 < v63)
        {
          v291 = *(v62 + 72);
          v228 = *(v62 + 40);
          v258 = *(v62 + 56);
          v70 = *v11;
          v71 = *(a2 - 104);
          *(v62 + 72) = *(a2 - 88);
          *(v62 + 56) = v71;
          *(v62 + 40) = v70;
          *(a2 - 88) = v291;
          *v11 = v228;
          *(a2 - 104) = v258;
          if (*(v62 + 64) < *(v12 + 104))
          {
            v72 = *(v12 + 80);
            v259 = *(v12 + 96);
            v73 = *(v12 + 112);
            v74 = *(v62 + 56);
            v75 = *(v62 + 40);
            *(v12 + 112) = *(v62 + 72);
            *(v12 + 80) = v75;
            *(v12 + 96) = v74;
            *(v62 + 56) = v259;
            *(v62 + 72) = v73;
            *(v62 + 40) = v72;
          }
        }
      }

      else
      {
        if (v64 >= v63)
        {
          v76 = *(v12 + 80);
          v260 = *(v12 + 96);
          v77 = *(v12 + 112);
          v78 = *(v62 + 56);
          v79 = *(v62 + 40);
          *(v12 + 112) = *(v62 + 72);
          *(v12 + 80) = v79;
          *(v12 + 96) = v78;
          *(v62 + 56) = v260;
          *(v62 + 72) = v77;
          *(v62 + 40) = v76;
          if (*(a2 - 96) >= *(v62 + 64))
          {
            goto LABEL_51;
          }

          v292 = *(v62 + 72);
          v229 = *(v62 + 40);
          v261 = *(v62 + 56);
          v80 = *v11;
          v81 = *(a2 - 104);
          *(v62 + 72) = *(a2 - 88);
          *(v62 + 56) = v81;
          *(v62 + 40) = v80;
          v65 = v229;
          v66 = v261;
          *(a2 - 88) = v292;
        }

        else
        {
          v65 = *(v12 + 80);
          v66 = *(v12 + 96);
          v67 = *(v12 + 112);
          v69 = *v11;
          v68 = *(a2 - 104);
          *(v12 + 112) = *(a2 - 88);
          *(v12 + 80) = v69;
          *(v12 + 96) = v68;
          *(a2 - 88) = v67;
        }

        *v11 = v65;
        *(a2 - 104) = v66;
      }

LABEL_51:
      v82 = *(v16 + 24);
      v83 = *(v62 + 64);
      if (v82 >= *(v37 + 24))
      {
        if (v83 < v82)
        {
          v294 = *(v16 + 32);
          v231 = *v16;
          v263 = *(v16 + 16);
          v85 = *(v62 + 56);
          *v16 = *(v62 + 40);
          *(v16 + 16) = v85;
          *(v16 + 32) = *(v62 + 72);
          *(v62 + 56) = v263;
          *(v62 + 72) = v294;
          *(v62 + 40) = v231;
          if (*(v16 + 24) < *(v37 + 24))
          {
            v295 = *(v37 + 32);
            v232 = *v37;
            v264 = *(v37 + 16);
            v86 = *(v16 + 16);
            *v37 = *v16;
            *(v37 + 16) = v86;
            *(v37 + 32) = *(v16 + 32);
            *(v16 + 32) = v295;
            *v16 = v232;
            *(v16 + 16) = v264;
          }
        }
      }

      else
      {
        if (v83 >= v82)
        {
          v296 = *(v37 + 32);
          v233 = *v37;
          v265 = *(v37 + 16);
          v87 = *(v16 + 16);
          *v37 = *v16;
          *(v37 + 16) = v87;
          *(v37 + 32) = *(v16 + 32);
          *(v16 + 32) = v296;
          *v16 = v233;
          *(v16 + 16) = v265;
          if (*(v62 + 64) >= *(v16 + 24))
          {
            goto LABEL_60;
          }

          v293 = *(v16 + 32);
          v230 = *v16;
          v262 = *(v16 + 16);
          v88 = *(v62 + 56);
          *v16 = *(v62 + 40);
          *(v16 + 16) = v88;
          *(v16 + 32) = *(v62 + 72);
        }

        else
        {
          v293 = *(v37 + 32);
          v230 = *v37;
          v262 = *(v37 + 16);
          v84 = *(v62 + 56);
          *v37 = *(v62 + 40);
          *(v37 + 16) = v84;
          *(v37 + 32) = *(v62 + 72);
        }

        *(v62 + 56) = v262;
        *(v62 + 72) = v293;
        *(v62 + 40) = v230;
      }

LABEL_60:
      v297 = *(v12 + 32);
      v234 = *v12;
      v266 = *(v12 + 16);
      v89 = *v16;
      v90 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = v89;
      *(v12 + 16) = v90;
      *(v16 + 32) = v297;
      *v16 = v234;
      *(v16 + 16) = v266;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v55 = *(v12 + 24);
LABEL_62:
      v309 = *(v12 + 16);
      v306 = *v12;
      v91 = *(v12 + 32);
      v92 = v12;
      do
      {
        v93 = v92;
        v92 += 40;
      }

      while (*(v93 + 64) < v55);
      v94 = a2;
      if (v93 == v12)
      {
        v97 = a2;
        while (v92 < v97)
        {
          v95 = v97 - 40;
          v98 = *(v97 - 16);
          v97 -= 40;
          if (v98 < v55)
          {
            goto LABEL_72;
          }
        }

        v95 = v97;
      }

      else
      {
        do
        {
          v95 = v94 - 40;
          v96 = *(v94 - 16);
          v94 -= 40;
        }

        while (v96 >= v55);
      }

LABEL_72:
      v12 = v92;
      if (v92 < v95)
      {
        v99 = v95;
        do
        {
          v100 = *v12;
          v267 = *(v12 + 16);
          v101 = *(v12 + 32);
          v103 = *v99;
          v102 = *(v99 + 16);
          *(v12 + 32) = *(v99 + 32);
          *v12 = v103;
          *(v12 + 16) = v102;
          *(v99 + 32) = v101;
          *v99 = v100;
          *(v99 + 16) = v267;
          do
          {
            v104 = *(v12 + 64);
            v12 += 40;
          }

          while (v104 < v55);
          do
          {
            v105 = *(v99 - 16);
            v99 -= 40;
          }

          while (v105 >= v55);
        }

        while (v12 < v99);
      }

      v106 = (v12 - 40);
      if (v12 - 40 != a1)
      {
        v107 = *v106;
        v108 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v107;
        *(a1 + 16) = v108;
      }

      result = v306;
      *(v12 - 24) = v309;
      *v106 = v306;
      *(v12 - 16) = v55;
      *(v12 - 8) = v91;
      if (v92 < v95)
      {
        goto LABEL_83;
      }

      v109 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *>(a1, (v12 - 40), v306);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *>(v12, a2, v110))
      {
        a2 = v12 - 40;
        if (!v109)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v109)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,false>(a1, v12 - 40, a3, a4 & 1, result);
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v131 = *(v12 + 64);
      v132 = *(v12 + 104);
      if (v131 >= *(v12 + 24))
      {
        if (v132 < v131)
        {
          result = *(v12 + 56);
          v191 = *(v12 + 80);
          *(v12 + 56) = *(v12 + 96);
          v193 = *(v12 + 64);
          v192 = *(v12 + 72);
          *(v12 + 72) = *(v12 + 112);
          v194 = *(v12 + 40);
          *(v12 + 40) = v191;
          *(v12 + 80) = v194;
          *(v12 + 96) = result;
          *(v12 + 112) = v192;
          if (v193 < *(v12 + 24))
          {
            v302 = *(v12 + 32);
            v241 = *v12;
            v275 = *(v12 + 16);
            v195 = *(v12 + 56);
            *v12 = *(v12 + 40);
            *(v12 + 16) = v195;
            *(v12 + 32) = *(v12 + 72);
            result = v241;
            *(v12 + 40) = v241;
            *(v12 + 56) = v275;
            *(v12 + 72) = v302;
          }
        }
      }

      else if (v132 >= v131)
      {
        v304 = *(v12 + 32);
        v244 = *v12;
        v278 = *(v12 + 16);
        v206 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v206;
        *(v12 + 32) = *(v12 + 72);
        result = v244;
        *(v12 + 40) = v244;
        *(v12 + 56) = v278;
        *(v12 + 72) = v304;
        if (v132 < *(v12 + 64))
        {
          v207 = *(v12 + 72);
          result = *(v12 + 56);
          v208 = *(v12 + 40);
          v209 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          *(v12 + 56) = v209;
          *(v12 + 72) = *(v12 + 112);
          *(v12 + 80) = v208;
          *(v12 + 96) = result;
          *(v12 + 112) = v207;
        }
      }

      else
      {
        v300 = *(v12 + 32);
        v237 = *v12;
        v270 = *(v12 + 16);
        v133 = *(v12 + 96);
        *v12 = *(v12 + 80);
        *(v12 + 16) = v133;
        *(v12 + 32) = *(v12 + 112);
        result = v237;
        *(v12 + 80) = v237;
        *(v12 + 96) = v270;
        *(v12 + 112) = v300;
      }

      if (*(a2 - 16) >= *(v12 + 104))
      {
        return result;
      }

      result = *(v12 + 80);
      v279 = *(v12 + 96);
      v210 = *(v12 + 112);
      v212 = *v9;
      v211 = *(a2 - 24);
      *(v12 + 112) = *(a2 - 8);
      *(v12 + 80) = v212;
      *(v12 + 96) = v211;
      *(a2 - 8) = v210;
      *v9 = result;
      *(a2 - 24) = v279;
      if (*(v12 + 104) >= *(v12 + 64))
      {
        return result;
      }

      result = *(v12 + 56);
      v213 = *(v12 + 80);
      *(v12 + 56) = *(v12 + 96);
      v215 = *(v12 + 64);
      v214 = *(v12 + 72);
      *(v12 + 72) = *(v12 + 112);
      v216 = *(v12 + 40);
      *(v12 + 40) = v213;
      *(v12 + 80) = v216;
      *(v12 + 96) = result;
      *(v12 + 112) = v214;
      if (v215 >= *(v12 + 24))
      {
        return result;
      }

LABEL_193:
      v305 = *(v12 + 32);
      v245 = *v12;
      v280 = *(v12 + 16);
      v217 = *(v12 + 56);
      *v12 = *(v12 + 40);
      *(v12 + 16) = v217;
      *(v12 + 32) = *(v12 + 72);
      result = v245;
      *(v12 + 40) = v245;
      *(v12 + 56) = v280;
      *(v12 + 72) = v305;
      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,0>(v12, v12 + 40, v12 + 80, v12 + 120, a2 - 40, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v126 = *(v12 + 64);
  v127 = *(a2 - 16);
  if (v126 >= *(v12 + 24))
  {
    if (v127 >= v126)
    {
      return result;
    }

    result = *(v12 + 40);
    v274 = *(v12 + 56);
    v188 = *(v12 + 72);
    v190 = *v9;
    v189 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 40) = v190;
    *(v12 + 56) = v189;
    *(a2 - 8) = v188;
    *v9 = result;
    *(a2 - 24) = v274;
    if (*(v12 + 64) >= *(v12 + 24))
    {
      return result;
    }

    goto LABEL_193;
  }

  if (v127 < v126)
  {
    goto LABEL_112;
  }

  v303 = *(v12 + 32);
  v243 = *v12;
  v277 = *(v12 + 16);
  v202 = *(v12 + 56);
  *v12 = *(v12 + 40);
  *(v12 + 16) = v202;
  *(v12 + 32) = *(v12 + 72);
  result = v243;
  *(v12 + 40) = v243;
  *(v12 + 56) = v277;
  *(v12 + 72) = v303;
  if (*(a2 - 16) < *(v12 + 64))
  {
    result = *(v12 + 40);
    v130 = *(v12 + 56);
    v203 = *(v12 + 72);
    v205 = *v9;
    v204 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 40) = v205;
    *(v12 + 56) = v204;
    *(a2 - 8) = v203;
    goto LABEL_113;
  }

  return result;
}

uint64_t AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::~EslBuilder(uint64_t a1)
{
  std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::~deque[abi:nn200100](a1 + 64);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 32));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 8));
  return a1;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 24);
  v7 = *(a3 + 24);
  if (v6 >= *(a1 + 24))
  {
    if (v7 < v6)
    {
      v12 = *(a2 + 32);
      result = *a2;
      v13 = *(a2 + 16);
      v14 = *(a3 + 32);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *a3 = result;
      *(a3 + 16) = v13;
      *(a3 + 32) = v12;
      if (*(a2 + 24) < *(a1 + 24))
      {
        v16 = *(a1 + 32);
        result = *a1;
        v17 = *(a1 + 16);
        v18 = *(a2 + 32);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *a2 = result;
        *(a2 + 16) = v17;
        *(a2 + 32) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *(a1 + 32);
      result = *a1;
      v9 = *(a1 + 16);
      v10 = *(a3 + 32);
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *a3 = result;
      *(a3 + 16) = v9;
      *(a3 + 32) = v8;
      goto LABEL_10;
    }

    v20 = *(a1 + 32);
    result = *a1;
    v21 = *(a1 + 16);
    v22 = *(a2 + 32);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *a2 = result;
    *(a2 + 16) = v21;
    *(a2 + 32) = v20;
    if (*(a3 + 24) < *(a2 + 24))
    {
      v8 = *(a2 + 32);
      result = *a2;
      v9 = *(a2 + 16);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 24) < *(a3 + 24))
  {
    v26 = *(a3 + 32);
    result = *a3;
    v27 = *(a3 + 16);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    *a4 = result;
    *(a4 + 16) = v27;
    *(a4 + 32) = v26;
    if (*(a3 + 24) < *(a2 + 24))
    {
      v30 = *(a2 + 32);
      result = *a2;
      v31 = *(a2 + 16);
      v32 = *(a3 + 32);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *a3 = result;
      *(a3 + 16) = v31;
      *(a3 + 32) = v30;
      if (*(a2 + 24) < *(a1 + 24))
      {
        v34 = *(a1 + 32);
        result = *a1;
        v35 = *(a1 + 16);
        v36 = *(a2 + 32);
        v37 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *a2 = result;
        *(a2 + 16) = v35;
        *(a2 + 32) = v34;
      }
    }
  }

  if (*(a5 + 24) < *(a4 + 24))
  {
    v38 = *(a4 + 32);
    result = *a4;
    v39 = *(a4 + 16);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *a5 = result;
    *(a5 + 16) = v39;
    *(a5 + 32) = v38;
    if (*(a4 + 24) < *(a3 + 24))
    {
      v42 = *(a3 + 32);
      result = *a3;
      v43 = *(a3 + 16);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      *a4 = result;
      *(a4 + 16) = v43;
      *(a4 + 32) = v42;
      if (*(a3 + 24) < *(a2 + 24))
      {
        v46 = *(a2 + 32);
        result = *a2;
        v47 = *(a2 + 16);
        v48 = *(a3 + 32);
        v49 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *a3 = result;
        *(a3 + 16) = v47;
        *(a3 + 32) = v46;
        if (*(a2 + 24) < *(a1 + 24))
        {
          v50 = *(a1 + 32);
          result = *a1;
          v51 = *(a1 + 16);
          v52 = *(a2 + 32);
          v53 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *a2 = result;
          *(a2 + 16) = v51;
          *(a2 + 32) = v50;
        }
      }
    }
  }

  return result;
}