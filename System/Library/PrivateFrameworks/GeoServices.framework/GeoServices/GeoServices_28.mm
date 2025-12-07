uint64_t _GEOWaypointPlaceCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [a1[3] readAll:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = a1[5];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) readAll:{1, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [a1[4] readAll:1];
}

uint64_t *sub_186829DCC(uint64_t a1, uint64_t a2)
{
  v198 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 0:

      return sub_18683129C(a2);
    case 1:

      return sub_186832FFC(a2);
    case 2:

      return sub_186835194(a2);
    case 3:
      if ((atomic_load_explicit(&qword_1EA904F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904F70))
      {
        v154[0] = 1;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v132, v154, &v154[1], 1uLL);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v89 = 1;
        v86 = 0;
        addr_obj::venue::Field::Field(&v186, &v89, &v86);
        v197 = 2;
        v188[0] = 0;
        addr_obj::venue::Field::Field(v187, &v197, v188);
        v127 = 0uLL;
        v128 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v127, &v186, v188, 2uLL);
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, "");
        std::string::basic_string[abi:ne200100]<0>(&v116, "");
        std::string::basic_string[abi:ne200100]<0>(v183, " ");
        addr_obj::venue::Decorator::Decorator(&v145, v120, v118, &v116, v183);
        v122 = 0uLL;
        v123 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v122, &v145, v149, 1uLL);
        addr_obj::venue::Template::Template(__p, &v132, &v129, &v127, &v122);
        std::string::basic_string[abi:ne200100]<0>(v181, "qq");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v178, "ZZZ");
        v110 = 0;
        v111 = 0;
        v112 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v110, &v178, v181, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], __p, &v113, &v110);
        v185 = 1;
        v108 = 0;
        v109 = 0;
        v107 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v107, &v185, &v186, 1uLL);
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v125 = 0;
        v126 = 1;
        addr_obj::venue::Field::Field(&v168, &v126, &v125);
        v124 = 2;
        v170 = 0;
        addr_obj::venue::Field::Field(v169, &v124, &v170);
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v101, &v168, &v170, 2uLL);
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v95 = 0;
        v96 = 0;
        v94 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v94, &v171, &v177, 1uLL);
        addr_obj::venue::Template::Template(&v135, &v107, &v104, &v101, &v94);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v158 = 0;
        *(&v157 + 1) = 0;
        v159 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v157 + 1, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "CN");
        std::string::basic_string[abi:ne200100]<0>(&v137 + 1, "HK");
        std::string::basic_string[abi:ne200100]<0>(&v139, "TW");
        std::string::basic_string[abi:ne200100]<0>(&v140 + 1, "JP");
        std::string::basic_string[abi:ne200100]<0>(v142, "KO");
        v156 = 0uLL;
        *&v157 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v156, v136, v143, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v135, &v157 + 1, &v156);
        qword_1EA904F58 = 0;
        unk_1EA904F60 = 0;
        qword_1EA904F68 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904F58, &v188[1], &v197, 2uLL);
        for (i = 18; i != -18; i -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[i + 1]);
        }

        v92[0] = &v156;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v92);
        for (j = 0; j != 0x1FFFFFFFFFFFFFF1; j -= 3)
        {
          if (SHIBYTE(v142[0].__r_.__value_.__r.__words[j + 2]) < 0)
          {
            operator delete(v142[j / 3].__r_.__value_.__l.__data_);
          }
        }

        v136[0] = &v157 + 8;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        for (k = 0; k != -12; k -= 3)
        {
          if (SHIBYTE(v153[k + 2]) < 0)
          {
            operator delete(v153[k]);
          }
        }

        addr_obj::venue::Template::~Template(&v135);
        v136[0] = &v94;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v171);
        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        if (v104)
        {
          v105 = v104;
          operator delete(v104);
        }

        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v136[0] = &v110;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (SHIBYTE(v180) < 0)
        {
          operator delete(v178);
        }

        v136[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        addr_obj::venue::Template::~Template(__p);
        v136[0] = &v122;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v145.__r_.__value_.__l.__data_);
        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116);
        }

        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (v127)
        {
          *(&v127 + 1) = v127;
          operator delete(v127);
        }

        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        __cxa_guard_release(&qword_1EA904F70);
      }

      if ((atomic_load_explicit(&qword_1EA904F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904F90))
      {
        v154[0] = 1;
        v187[0] = 0;
        v186 = 0uLL;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v186, v154, &v154[1], 1uLL);
        v168 = 0uLL;
        v169[0] = 0;
        v89 = 1;
        v86 = 0;
        addr_obj::venue::Field::Field(&v157 + 1, &v89, &v86);
        v132 = 0;
        v133 = 0;
        v134 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v132, (&v157 + 8), &v159, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v127, "");
        std::string::basic_string[abi:ne200100]<0>(&v122, "");
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, ", ");
        addr_obj::venue::Decorator::Decorator(&v145, &v127, &v122, v120, v118);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v129, &v145, v149, 1uLL);
        addr_obj::venue::Template::Template(__p, &v186, &v168, &v132, &v129);
        std::string::basic_string[abi:ne200100]<0>(v183, "qq");
        v116 = 0uLL;
        v117 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v116, v183, &v185, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(v181, "ZZZ");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], __p, &v116, &v113);
        v197 = 1;
        v111 = 0;
        v112 = 0;
        v110 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v110, &v197, &v198, 1uLL);
        v179 = 0;
        v178 = 0;
        v180 = 0;
        v188[0] = 1;
        v185 = 0;
        addr_obj::venue::Field::Field(&v156, v188, &v185);
        v107 = 0;
        v108 = 0;
        v109 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v107, &v156, &v157, 1uLL);
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v105 = 0;
        v106 = 0;
        v104 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v104, &v171, &v177, 1uLL);
        addr_obj::venue::Template::Template(&v135, &v110, &v178, &v107, &v104);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v101, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "CN");
        std::string::basic_string[abi:ne200100]<0>(&v137 + 1, "HK");
        std::string::basic_string[abi:ne200100]<0>(&v139, "TW");
        std::string::basic_string[abi:ne200100]<0>(&v140 + 1, "JP");
        std::string::basic_string[abi:ne200100]<0>(v142, "KO");
        v94 = 0;
        v95 = 0;
        v96 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v94, v136, v143, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v135, &v101, &v94);
        qword_1EA904F78 = 0;
        unk_1EA904F80 = 0;
        qword_1EA904F88 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904F78, &v188[1], &v197, 2uLL);
        for (m = 18; m != -18; m -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[m + 1]);
        }

        v92[0] = &v94;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v92);
        for (n = 0; n != 0x1FFFFFFFFFFFFFF1; n -= 3)
        {
          if (SHIBYTE(v142[0].__r_.__value_.__r.__words[n + 2]) < 0)
          {
            operator delete(v142[n / 3].__r_.__value_.__l.__data_);
          }
        }

        v136[0] = &v101;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        for (ii = 0; ii != -12; ii -= 3)
        {
          if (SHIBYTE(v153[ii + 2]) < 0)
          {
            operator delete(v153[ii]);
          }
        }

        addr_obj::venue::Template::~Template(&v135);
        v136[0] = &v104;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v171);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        if (v178)
        {
          v179 = v178;
          operator delete(v178);
        }

        if (v110)
        {
          v111 = v110;
          operator delete(v110);
        }

        v136[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        v136[0] = &v116;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        addr_obj::venue::Template::~Template(__p);
        v136[0] = &v129;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v145.__r_.__value_.__l.__data_);
        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (SHIBYTE(v123) < 0)
        {
          operator delete(v122);
        }

        if (SHIBYTE(v128) < 0)
        {
          operator delete(v127);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        if (v168)
        {
          *(&v168 + 1) = v168;
          operator delete(v168);
        }

        if (v186)
        {
          *(&v186 + 1) = v186;
          operator delete(v186);
        }

        __cxa_guard_release(&qword_1EA904F90);
      }

      if ((atomic_load_explicit(&qword_1EA904FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904FB0))
      {
        LODWORD(v188[1]) = 1;
        v191 = 0;
        v189 = 0;
        v190 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v189, qword_1EA904F58, unk_1EA904F60, 0x8E38E38E38E38E39 * ((unk_1EA904F60 - qword_1EA904F58) >> 4));
        v192 = 0;
        v195 = 0;
        v193 = 0;
        v194 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v193, qword_1EA904F78, unk_1EA904F80, 0x8E38E38E38E38E39 * ((unk_1EA904F80 - qword_1EA904F78) >> 4));
        std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA904F98, &v188[1], 2);
        for (jj = 5; jj != -3; jj -= 4)
        {
          v136[0] = &v188[jj + 1];
          std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v136);
        }

        __cxa_guard_release(&qword_1EA904FB0);
      }

      v6 = qword_1EA904FA0;
      if (!qword_1EA904FA0)
      {
        goto LABEL_28;
      }

      v7 = &qword_1EA904FA0;
      do
      {
        if (*(v6 + 32) >= a2)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < a2));
      }

      while (v6);
      if (v7 == &qword_1EA904FA0 || *(v7 + 8) > a2)
      {
LABEL_28:
        std::ostringstream::basic_ostringstream[abi:ne200100](&v188[1]);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188[1], "Invalid LabelPattern enum: ", 27);
        v9 = MEMORY[0x18CFD1C40](v8, a2);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; library version: ", 19);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "11.3.0", 6);
        if (addr_obj::Logger::isInitialized(v11))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v136);
          std::stringbuf::str();
          if ((SBYTE7(v161) & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          if ((SBYTE7(v161) & 0x80u) == 0)
          {
            v13 = BYTE7(v161);
          }

          else
          {
            v13 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, v12, v13);
          if (SBYTE7(v161) < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v145, "Short");
          std::stringbuf::str();
          std::string::basic_string[abi:ne200100]<0>(&v171, "");
          addr_obj::Logger::log(16, __p, 236, &v145, &v135, &v171);
          if (SBYTE7(v172) < 0)
          {
            operator delete(v171);
          }

          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v145.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v161) < 0)
          {
            operator delete(__p[0]);
          }

          std::ostringstream::~ostringstream(v136);
        }

        v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188[1], "; at ", 5);
        v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
        v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, ":", 1);
        MEMORY[0x18CFD1C40](v84, 236);
        exception = __cxa_allocate_exception(0x28uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "DataError");
        std::stringbuf::str();
        addr_obj::Exception<std::runtime_error>::Exception(exception, v136, __p);
      }

      return v7 + 5;
    case 4:

      return sub_18683732C(a2);
    case 5:

      return sub_186839634(a2);
    case 6:

      return sub_18683BA74(a2);
    case 7:
      if ((atomic_load_explicit(&qword_1EA9050F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9050F0))
      {
        v154[0] = 0;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v132, v154, &v154[1], 1uLL);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v89 = 0;
        v86 = 0;
        addr_obj::venue::Field::Field(&v186, &v89, &v86);
        v197 = 2;
        v188[0] = 0;
        addr_obj::venue::Field::Field(v187, &v197, v188);
        v127 = 0uLL;
        v128 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v127, &v186, v188, 2uLL);
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, "");
        std::string::basic_string[abi:ne200100]<0>(&v116, "");
        std::string::basic_string[abi:ne200100]<0>(v183, ", ");
        addr_obj::venue::Decorator::Decorator(&v145, v120, v118, &v116, v183);
        v122 = 0uLL;
        v123 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v122, &v145, v149, 1uLL);
        addr_obj::venue::Template::Template(__p, &v132, &v129, &v127, &v122);
        std::string::basic_string[abi:ne200100]<0>(v181, "qq");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v178, "ZZZ");
        v110 = 0;
        v111 = 0;
        v112 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v110, &v178, v181, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], __p, &v113, &v110);
        v185 = 0;
        v108 = 0;
        v109 = 0;
        v107 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v107, &v185, &v186, 1uLL);
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v125 = 0;
        v126 = 0;
        addr_obj::venue::Field::Field(&v168, &v126, &v125);
        v124 = 2;
        v170 = 0;
        addr_obj::venue::Field::Field(v169, &v124, &v170);
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v101, &v168, &v170, 2uLL);
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v95 = 0;
        v96 = 0;
        v94 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v94, &v171, &v177, 1uLL);
        addr_obj::venue::Template::Template(&v135, &v107, &v104, &v101, &v94);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v158 = 0;
        *(&v157 + 1) = 0;
        v159 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v157 + 1, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "CN");
        std::string::basic_string[abi:ne200100]<0>(&v137 + 1, "HK");
        std::string::basic_string[abi:ne200100]<0>(&v139, "TW");
        std::string::basic_string[abi:ne200100]<0>(&v140 + 1, "JP");
        std::string::basic_string[abi:ne200100]<0>(v142, "KO");
        v156 = 0uLL;
        *&v157 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v156, v136, v143, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v135, &v157 + 1, &v156);
        qword_1EA9050D8 = 0;
        unk_1EA9050E0 = 0;
        qword_1EA9050E8 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA9050D8, &v188[1], &v197, 2uLL);
        for (kk = 18; kk != -18; kk -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[kk + 1]);
        }

        v92[0] = &v156;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v92);
        for (mm = 0; mm != 0x1FFFFFFFFFFFFFF1; mm -= 3)
        {
          if (SHIBYTE(v142[0].__r_.__value_.__r.__words[mm + 2]) < 0)
          {
            operator delete(v142[mm / 3].__r_.__value_.__l.__data_);
          }
        }

        v136[0] = &v157 + 8;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        for (nn = 0; nn != -12; nn -= 3)
        {
          if (SHIBYTE(v153[nn + 2]) < 0)
          {
            operator delete(v153[nn]);
          }
        }

        addr_obj::venue::Template::~Template(&v135);
        v136[0] = &v94;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v171);
        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        if (v104)
        {
          v105 = v104;
          operator delete(v104);
        }

        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v136[0] = &v110;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (SHIBYTE(v180) < 0)
        {
          operator delete(v178);
        }

        v136[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        addr_obj::venue::Template::~Template(__p);
        v136[0] = &v122;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v145.__r_.__value_.__l.__data_);
        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116);
        }

        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (v127)
        {
          *(&v127 + 1) = v127;
          operator delete(v127);
        }

        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        __cxa_guard_release(&qword_1EA9050F0);
      }

      if ((atomic_load_explicit(&qword_1EA905110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905110))
      {
        v154[0] = 0;
        v187[0] = 0;
        v186 = 0uLL;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v186, v154, &v154[1], 1uLL);
        v168 = 0uLL;
        v169[0] = 0;
        v89 = 0;
        v86 = 0;
        addr_obj::venue::Field::Field(&v157 + 1, &v89, &v86);
        v132 = 0;
        v133 = 0;
        v134 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v132, (&v157 + 8), &v159, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v127, "");
        std::string::basic_string[abi:ne200100]<0>(&v122, "");
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, ", ");
        addr_obj::venue::Decorator::Decorator(&v145, &v127, &v122, v120, v118);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v129, &v145, v149, 1uLL);
        addr_obj::venue::Template::Template(__p, &v186, &v168, &v132, &v129);
        std::string::basic_string[abi:ne200100]<0>(v183, "qq");
        v116 = 0uLL;
        v117 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v116, v183, &v185, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(v181, "ZZZ");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], __p, &v116, &v113);
        v197 = 0;
        v111 = 0;
        v112 = 0;
        v110 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v110, &v197, &v198, 1uLL);
        v179 = 0;
        v178 = 0;
        v180 = 0;
        v188[0] = 0;
        v185 = 0;
        addr_obj::venue::Field::Field(&v156, v188, &v185);
        v107 = 0;
        v108 = 0;
        v109 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v107, &v156, &v157, 1uLL);
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v105 = 0;
        v106 = 0;
        v104 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v104, &v171, &v177, 1uLL);
        addr_obj::venue::Template::Template(&v135, &v110, &v178, &v107, &v104);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v101, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "CN");
        std::string::basic_string[abi:ne200100]<0>(&v137 + 1, "HK");
        std::string::basic_string[abi:ne200100]<0>(&v139, "TW");
        std::string::basic_string[abi:ne200100]<0>(&v140 + 1, "JP");
        std::string::basic_string[abi:ne200100]<0>(v142, "KO");
        v94 = 0;
        v95 = 0;
        v96 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v94, v136, v143, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v135, &v101, &v94);
        qword_1EA9050F8 = 0;
        unk_1EA905100 = 0;
        qword_1EA905108 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA9050F8, &v188[1], &v197, 2uLL);
        for (i1 = 18; i1 != -18; i1 -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[i1 + 1]);
        }

        v92[0] = &v94;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v92);
        for (i2 = 0; i2 != 0x1FFFFFFFFFFFFFF1; i2 -= 3)
        {
          if (SHIBYTE(v142[0].__r_.__value_.__r.__words[i2 + 2]) < 0)
          {
            operator delete(v142[i2 / 3].__r_.__value_.__l.__data_);
          }
        }

        v136[0] = &v101;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        for (i3 = 0; i3 != -12; i3 -= 3)
        {
          if (SHIBYTE(v153[i3 + 2]) < 0)
          {
            operator delete(v153[i3]);
          }
        }

        addr_obj::venue::Template::~Template(&v135);
        v136[0] = &v104;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v171);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        if (v178)
        {
          v179 = v178;
          operator delete(v178);
        }

        if (v110)
        {
          v111 = v110;
          operator delete(v110);
        }

        v136[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        v136[0] = &v116;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        addr_obj::venue::Template::~Template(__p);
        v136[0] = &v129;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v145.__r_.__value_.__l.__data_);
        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (SHIBYTE(v123) < 0)
        {
          operator delete(v122);
        }

        if (SHIBYTE(v128) < 0)
        {
          operator delete(v127);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        if (v168)
        {
          *(&v168 + 1) = v168;
          operator delete(v168);
        }

        if (v186)
        {
          *(&v186 + 1) = v186;
          operator delete(v186);
        }

        __cxa_guard_release(&qword_1EA905110);
      }

      if ((atomic_load_explicit(&qword_1EA905130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905130))
      {
        LODWORD(v188[1]) = 1;
        v191 = 0;
        v189 = 0;
        v190 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v189, qword_1EA9050D8, unk_1EA9050E0, 0x8E38E38E38E38E39 * ((unk_1EA9050E0 - qword_1EA9050D8) >> 4));
        v192 = 0;
        v195 = 0;
        v193 = 0;
        v194 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v193, qword_1EA9050F8, unk_1EA905100, 0x8E38E38E38E38E39 * ((unk_1EA905100 - qword_1EA9050F8) >> 4));
        std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA905118, &v188[1], 2);
        for (i4 = 5; i4 != -3; i4 -= 4)
        {
          v136[0] = &v188[i4 + 1];
          std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v136);
        }

        __cxa_guard_release(&qword_1EA905130);
      }

      v14 = qword_1EA905120;
      if (!qword_1EA905120)
      {
        goto LABEL_56;
      }

      v7 = &qword_1EA905120;
      do
      {
        if (*(v14 + 32) >= a2)
        {
          v7 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 32) < a2));
      }

      while (v14);
      if (v7 == &qword_1EA905120 || *(v7 + 8) > a2)
      {
LABEL_56:
        std::ostringstream::basic_ostringstream[abi:ne200100](&v188[1]);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188[1], "Invalid LabelPattern enum: ", 27);
        v16 = MEMORY[0x18CFD1C40](v15, a2);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "; library version: ", 19);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "11.3.0", 6);
        if (addr_obj::Logger::isInitialized(v18))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v136);
          std::stringbuf::str();
          if ((SBYTE7(v161) & 0x80u) == 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p[0];
          }

          if ((SBYTE7(v161) & 0x80u) == 0)
          {
            v20 = BYTE7(v161);
          }

          else
          {
            v20 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, v19, v20);
          if (SBYTE7(v161) < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v145, "ExteriorLong");
          std::stringbuf::str();
          std::string::basic_string[abi:ne200100]<0>(&v171, "");
          addr_obj::Logger::log(16, __p, 504, &v145, &v135, &v171);
          if (SBYTE7(v172) < 0)
          {
            operator delete(v171);
          }

          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v145.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v161) < 0)
          {
            operator delete(__p[0]);
          }

          std::ostringstream::~ostringstream(v136);
        }

        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188[1], "; at ", 5);
        v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ":", 1);
        MEMORY[0x18CFD1C40](v80, 504);
        v81 = __cxa_allocate_exception(0x28uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "DataError");
        std::stringbuf::str();
        addr_obj::Exception<std::runtime_error>::Exception(v81, v136, __p);
      }

      return v7 + 5;
    case 8:
      if ((atomic_load_explicit(&qword_1EA905150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905150))
      {
        v154[0] = 1;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v132, v154, &v154[1], 1uLL);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v89 = 1;
        v86 = 0;
        addr_obj::venue::Field::Field(&v186, &v89, &v86);
        v197 = 2;
        v188[0] = 0;
        addr_obj::venue::Field::Field(v187, &v197, v188);
        v127 = 0uLL;
        v128 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v127, &v186, v188, 2uLL);
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, "");
        std::string::basic_string[abi:ne200100]<0>(&v116, "");
        std::string::basic_string[abi:ne200100]<0>(v183, " ");
        addr_obj::venue::Decorator::Decorator(&v145, v120, v118, &v116, v183);
        v122 = 0uLL;
        v123 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v122, &v145, v149, 1uLL);
        addr_obj::venue::Template::Template(__p, &v132, &v129, &v127, &v122);
        std::string::basic_string[abi:ne200100]<0>(v181, "qq");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v178, "ZZZ");
        v110 = 0;
        v111 = 0;
        v112 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v110, &v178, v181, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], __p, &v113, &v110);
        v185 = 1;
        v108 = 0;
        v109 = 0;
        v107 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v107, &v185, &v186, 1uLL);
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v125 = 0;
        v126 = 1;
        addr_obj::venue::Field::Field(&v168, &v126, &v125);
        v124 = 2;
        v170 = 0;
        addr_obj::venue::Field::Field(v169, &v124, &v170);
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v101, &v168, &v170, 2uLL);
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v95 = 0;
        v96 = 0;
        v94 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v94, &v171, &v177, 1uLL);
        addr_obj::venue::Template::Template(&v135, &v107, &v104, &v101, &v94);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v158 = 0;
        *(&v157 + 1) = 0;
        v159 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v157 + 1, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "CN");
        std::string::basic_string[abi:ne200100]<0>(&v137 + 1, "HK");
        std::string::basic_string[abi:ne200100]<0>(&v139, "TW");
        std::string::basic_string[abi:ne200100]<0>(&v140 + 1, "JP");
        std::string::basic_string[abi:ne200100]<0>(v142, "KO");
        v156 = 0uLL;
        *&v157 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v156, v136, v143, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v135, &v157 + 1, &v156);
        qword_1EA905138 = 0;
        unk_1EA905140 = 0;
        qword_1EA905148 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905138, &v188[1], &v197, 2uLL);
        for (i5 = 18; i5 != -18; i5 -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[i5 + 1]);
        }

        v92[0] = &v156;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v92);
        for (i6 = 0; i6 != 0x1FFFFFFFFFFFFFF1; i6 -= 3)
        {
          if (SHIBYTE(v142[0].__r_.__value_.__r.__words[i6 + 2]) < 0)
          {
            operator delete(v142[i6 / 3].__r_.__value_.__l.__data_);
          }
        }

        v136[0] = &v157 + 8;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        for (i7 = 0; i7 != -12; i7 -= 3)
        {
          if (SHIBYTE(v153[i7 + 2]) < 0)
          {
            operator delete(v153[i7]);
          }
        }

        addr_obj::venue::Template::~Template(&v135);
        v136[0] = &v94;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v171);
        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        if (v104)
        {
          v105 = v104;
          operator delete(v104);
        }

        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v136[0] = &v110;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (SHIBYTE(v180) < 0)
        {
          operator delete(v178);
        }

        v136[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        addr_obj::venue::Template::~Template(__p);
        v136[0] = &v122;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v145.__r_.__value_.__l.__data_);
        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116);
        }

        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (v127)
        {
          *(&v127 + 1) = v127;
          operator delete(v127);
        }

        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        __cxa_guard_release(&qword_1EA905150);
      }

      if ((atomic_load_explicit(&qword_1EA905170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905170))
      {
        v154[0] = 1;
        v187[0] = 0;
        v186 = 0uLL;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v186, v154, &v154[1], 1uLL);
        v168 = 0uLL;
        v169[0] = 0;
        v89 = 1;
        v86 = 0;
        addr_obj::venue::Field::Field(&v157 + 1, &v89, &v86);
        v132 = 0;
        v133 = 0;
        v134 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v132, (&v157 + 8), &v159, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v127, "");
        std::string::basic_string[abi:ne200100]<0>(&v122, "");
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, ", ");
        addr_obj::venue::Decorator::Decorator(&v145, &v127, &v122, v120, v118);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v129, &v145, v149, 1uLL);
        addr_obj::venue::Template::Template(__p, &v186, &v168, &v132, &v129);
        std::string::basic_string[abi:ne200100]<0>(v183, "qq");
        v116 = 0uLL;
        v117 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v116, v183, &v185, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(v181, "ZZZ");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], __p, &v116, &v113);
        v197 = 1;
        v111 = 0;
        v112 = 0;
        v110 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v110, &v197, &v198, 1uLL);
        v179 = 0;
        v178 = 0;
        v180 = 0;
        v188[0] = 1;
        v185 = 0;
        addr_obj::venue::Field::Field(&v156, v188, &v185);
        v107 = 0;
        v108 = 0;
        v109 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v107, &v156, &v157, 1uLL);
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v105 = 0;
        v106 = 0;
        v104 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v104, &v171, &v177, 1uLL);
        addr_obj::venue::Template::Template(&v135, &v110, &v178, &v107, &v104);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v101, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "CN");
        std::string::basic_string[abi:ne200100]<0>(&v137 + 1, "HK");
        std::string::basic_string[abi:ne200100]<0>(&v139, "TW");
        std::string::basic_string[abi:ne200100]<0>(&v140 + 1, "JP");
        std::string::basic_string[abi:ne200100]<0>(v142, "KO");
        v94 = 0;
        v95 = 0;
        v96 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v94, v136, v143, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v135, &v101, &v94);
        qword_1EA905158 = 0;
        unk_1EA905160 = 0;
        qword_1EA905168 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905158, &v188[1], &v197, 2uLL);
        for (i8 = 18; i8 != -18; i8 -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[i8 + 1]);
        }

        v92[0] = &v94;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v92);
        for (i9 = 0; i9 != 0x1FFFFFFFFFFFFFF1; i9 -= 3)
        {
          if (SHIBYTE(v142[0].__r_.__value_.__r.__words[i9 + 2]) < 0)
          {
            operator delete(v142[i9 / 3].__r_.__value_.__l.__data_);
          }
        }

        v136[0] = &v101;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        for (i10 = 0; i10 != -12; i10 -= 3)
        {
          if (SHIBYTE(v153[i10 + 2]) < 0)
          {
            operator delete(v153[i10]);
          }
        }

        addr_obj::venue::Template::~Template(&v135);
        v136[0] = &v104;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v171);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        if (v178)
        {
          v179 = v178;
          operator delete(v178);
        }

        if (v110)
        {
          v111 = v110;
          operator delete(v110);
        }

        v136[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        v136[0] = &v116;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v136);
        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        addr_obj::venue::Template::~Template(__p);
        v136[0] = &v129;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v136);
        addr_obj::venue::Decorator::~Decorator(&v145.__r_.__value_.__l.__data_);
        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (SHIBYTE(v123) < 0)
        {
          operator delete(v122);
        }

        if (SHIBYTE(v128) < 0)
        {
          operator delete(v127);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        if (v168)
        {
          *(&v168 + 1) = v168;
          operator delete(v168);
        }

        if (v186)
        {
          *(&v186 + 1) = v186;
          operator delete(v186);
        }

        __cxa_guard_release(&qword_1EA905170);
      }

      if ((atomic_load_explicit(&qword_1EA905190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905190))
      {
        LODWORD(v188[1]) = 1;
        v191 = 0;
        v189 = 0;
        v190 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v189, qword_1EA905138, unk_1EA905140, 0x8E38E38E38E38E39 * ((unk_1EA905140 - qword_1EA905138) >> 4));
        v192 = 0;
        v195 = 0;
        v193 = 0;
        v194 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v193, qword_1EA905158, unk_1EA905160, 0x8E38E38E38E38E39 * ((unk_1EA905160 - qword_1EA905158) >> 4));
        std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA905178, &v188[1], 2);
        for (i11 = 5; i11 != -3; i11 -= 4)
        {
          v136[0] = &v188[i11 + 1];
          std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v136);
        }

        __cxa_guard_release(&qword_1EA905190);
      }

      v21 = qword_1EA905180;
      if (!qword_1EA905180)
      {
        goto LABEL_100;
      }

      v7 = &qword_1EA905180;
      do
      {
        if (*(v21 + 32) >= a2)
        {
          v7 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < a2));
      }

      while (v21);
      if (v7 == &qword_1EA905180 || *(v7 + 8) > a2)
      {
LABEL_100:
        std::ostringstream::basic_ostringstream[abi:ne200100](&v188[1]);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188[1], "Invalid LabelPattern enum: ", 27);
        v23 = MEMORY[0x18CFD1C40](v22, a2);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "; library version: ", 19);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "11.3.0", 6);
        if (addr_obj::Logger::isInitialized(v25))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v136);
          std::stringbuf::str();
          if ((SBYTE7(v161) & 0x80u) == 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          if ((SBYTE7(v161) & 0x80u) == 0)
          {
            v27 = BYTE7(v161);
          }

          else
          {
            v27 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, v26, v27);
          if (SBYTE7(v161) < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v145, "ExteriorShort");
          std::stringbuf::str();
          std::string::basic_string[abi:ne200100]<0>(&v171, "");
          addr_obj::Logger::log(16, __p, 548, &v145, &v135, &v171);
          if (SBYTE7(v172) < 0)
          {
            operator delete(v171);
          }

          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v145.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v161) < 0)
          {
            operator delete(__p[0]);
          }

          std::ostringstream::~ostringstream(v136);
        }

        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188[1], "; at ", 5);
        v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
        v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, ":", 1);
        MEMORY[0x18CFD1C40](v76, 548);
        v77 = __cxa_allocate_exception(0x28uLL);
        std::string::basic_string[abi:ne200100]<0>(v136, "DataError");
        std::stringbuf::str();
        addr_obj::Exception<std::runtime_error>::Exception(v77, v136, __p);
      }

      return v7 + 5;
    case 9:
      if (atomic_load_explicit(&qword_1EA9051B0, memory_order_acquire))
      {
        goto LABEL_14;
      }

      v5 = &qword_1EA905198;
      if (__cxa_guard_acquire(&qword_1EA9051B0))
      {
        v188[0] = 3;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v132, v188, &v188[1], 1uLL);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v185 = 3;
        v126 = 0;
        addr_obj::venue::Field::Field(&v186, &v185, &v126);
        v125 = 5;
        v124 = 1;
        addr_obj::venue::Field::Field(v187, &v125, &v124);
        v127 = 0uLL;
        v128 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v127, &v186, v188, 2uLL);
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        *v136 = 0u;
        v137 = 0u;
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, "-");
        std::string::basic_string[abi:ne200100]<0>(&v116, "");
        std::string::basic_string[abi:ne200100]<0>(v183, "");
        addr_obj::venue::Decorator::Decorator(v142, v120, v118, &v116, v183);
        v122 = 0uLL;
        v123 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v122, v136, v144, 2uLL);
        addr_obj::venue::Template::Template(&v135, &v132, &v129, &v127, &v122);
        std::string::basic_string[abi:ne200100]<0>(v181, "qq");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v178, "ZZZ");
        v110 = 0;
        v111 = 0;
        v112 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v110, &v178, v181, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], &v135, &v113, &v110);
        v170 = 3;
        v108 = 0;
        v109 = 0;
        v107 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v107, &v170, &v171, 1uLL);
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v99 = 0;
        v100 = 3;
        addr_obj::venue::Field::Field(&v168, &v100, &v99);
        v98 = 5;
        v97 = 1;
        addr_obj::venue::Field::Field(v169, &v98, &v97);
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v101, &v168, &v170, 2uLL);
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        *__p = 0u;
        v161 = 0u;
        std::string::basic_string[abi:ne200100]<0>(&v157 + 1, "");
        std::string::basic_string[abi:ne200100]<0>(&v156, "-");
        std::string::basic_string[abi:ne200100]<0>(v92, "");
        std::string::basic_string[abi:ne200100]<0>(v154, "");
        addr_obj::venue::Decorator::Decorator(v166, (&v157 + 8), &v156, v92, v154);
        v94 = 0;
        v95 = 0;
        v96 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v94, __p, &v167, 2uLL);
        addr_obj::venue::Template::Template(&v171, &v107, &v104, &v101, &v94);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v89 = 0;
        v90 = 0;
        v91 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v89, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(&v145, "CN");
        std::string::basic_string[abi:ne200100]<0>(v146, "HK");
        std::string::basic_string[abi:ne200100]<0>(v147, "TW");
        std::string::basic_string[abi:ne200100]<0>(v148, "JP");
        std::string::basic_string[abi:ne200100]<0>(v149, "KO");
        v86 = 0;
        v87 = 0;
        v88 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v86, &v145, v150, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v171, &v89, &v86);
        qword_1EA905198 = 0;
        unk_1EA9051A0 = 0;
        qword_1EA9051A8 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905198, &v188[1], &v197, 2uLL);
        for (i12 = 18; i12 != -18; i12 -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[i12 + 1]);
        }

        v197 = &v86;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v197);
        for (i13 = 0; i13 != -15; i13 -= 3)
        {
          if (SHIBYTE(v149[i13 + 2]) < 0)
          {
            operator delete(v149[i13]);
          }
        }

        v145.__r_.__value_.__r.__words[0] = &v89;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v145);
        for (i14 = 0; i14 != -12; i14 -= 3)
        {
          if (SHIBYTE(v153[i14 + 2]) < 0)
          {
            operator delete(v153[i14]);
          }
        }

        addr_obj::venue::Template::~Template(&v171);
        v145.__r_.__value_.__r.__words[0] = &v94;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v145);
        for (i15 = 12; i15 != -12; i15 -= 12)
        {
          addr_obj::venue::Decorator::~Decorator(&__p[i15]);
        }

        if (v155 < 0)
        {
          operator delete(v154[0]);
        }

        if (v93 < 0)
        {
          operator delete(v92[0]);
        }

        if (SBYTE7(v157) < 0)
        {
          operator delete(v156);
        }

        if (SHIBYTE(v159) < 0)
        {
          operator delete(*(&v157 + 1));
        }

        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        if (v104)
        {
          v105 = v104;
          operator delete(v104);
        }

        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        __p[0] = &v110;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        if (SHIBYTE(v180) < 0)
        {
          operator delete(v178);
        }

        __p[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        addr_obj::venue::Template::~Template(&v135);
        __p[0] = &v122;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
        for (i16 = 12; i16 != -12; i16 -= 12)
        {
          addr_obj::venue::Decorator::~Decorator(&v136[i16]);
        }

        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116);
        }

        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (v127)
        {
          *(&v127 + 1) = v127;
          operator delete(v127);
        }

        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        __cxa_guard_release(&qword_1EA9051B0);
LABEL_14:
        v5 = &qword_1EA905198;
      }

      break;
    case 10:
      if (atomic_load_explicit(&qword_1EA9051D0, memory_order_acquire))
      {
        goto LABEL_87;
      }

      v5 = &qword_1EA9051B8;
      if (__cxa_guard_acquire(&qword_1EA9051D0))
      {
        v188[0] = 3;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v132, v188, &v188[1], 1uLL);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v185 = 3;
        v126 = 0;
        addr_obj::venue::Field::Field(&v186, &v185, &v126);
        v125 = 6;
        v124 = 1;
        addr_obj::venue::Field::Field(v187, &v125, &v124);
        v127 = 0uLL;
        v128 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v127, &v186, v188, 2uLL);
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        *v136 = 0u;
        v137 = 0u;
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, "-");
        std::string::basic_string[abi:ne200100]<0>(&v116, "");
        std::string::basic_string[abi:ne200100]<0>(v183, "");
        addr_obj::venue::Decorator::Decorator(v142, v120, v118, &v116, v183);
        v122 = 0uLL;
        v123 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v122, v136, v144, 2uLL);
        addr_obj::venue::Template::Template(&v135, &v132, &v129, &v127, &v122);
        std::string::basic_string[abi:ne200100]<0>(v181, "qq");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v178, "ZZZ");
        v110 = 0;
        v111 = 0;
        v112 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v110, &v178, v181, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], &v135, &v113, &v110);
        v170 = 3;
        v108 = 0;
        v109 = 0;
        v107 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v107, &v170, &v171, 1uLL);
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v99 = 0;
        v100 = 3;
        addr_obj::venue::Field::Field(&v168, &v100, &v99);
        v98 = 6;
        v97 = 1;
        addr_obj::venue::Field::Field(v169, &v98, &v97);
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v101, &v168, &v170, 2uLL);
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        *__p = 0u;
        v161 = 0u;
        std::string::basic_string[abi:ne200100]<0>(&v157 + 1, "");
        std::string::basic_string[abi:ne200100]<0>(&v156, "-");
        std::string::basic_string[abi:ne200100]<0>(v92, "");
        std::string::basic_string[abi:ne200100]<0>(v154, "");
        addr_obj::venue::Decorator::Decorator(v166, (&v157 + 8), &v156, v92, v154);
        v94 = 0;
        v95 = 0;
        v96 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v94, __p, &v167, 2uLL);
        addr_obj::venue::Template::Template(&v171, &v107, &v104, &v101, &v94);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v89 = 0;
        v90 = 0;
        v91 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v89, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(&v145, "CN");
        std::string::basic_string[abi:ne200100]<0>(v146, "HK");
        std::string::basic_string[abi:ne200100]<0>(v147, "TW");
        std::string::basic_string[abi:ne200100]<0>(v148, "JP");
        std::string::basic_string[abi:ne200100]<0>(v149, "KO");
        v86 = 0;
        v87 = 0;
        v88 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v86, &v145, v150, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v171, &v89, &v86);
        qword_1EA9051B8 = 0;
        unk_1EA9051C0 = 0;
        qword_1EA9051C8 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA9051B8, &v188[1], &v197, 2uLL);
        for (i17 = 18; i17 != -18; i17 -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[i17 + 1]);
        }

        v197 = &v86;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v197);
        for (i18 = 0; i18 != -15; i18 -= 3)
        {
          if (SHIBYTE(v149[i18 + 2]) < 0)
          {
            operator delete(v149[i18]);
          }
        }

        v145.__r_.__value_.__r.__words[0] = &v89;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v145);
        for (i19 = 0; i19 != -12; i19 -= 3)
        {
          if (SHIBYTE(v153[i19 + 2]) < 0)
          {
            operator delete(v153[i19]);
          }
        }

        addr_obj::venue::Template::~Template(&v171);
        v145.__r_.__value_.__r.__words[0] = &v94;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v145);
        for (i20 = 12; i20 != -12; i20 -= 12)
        {
          addr_obj::venue::Decorator::~Decorator(&__p[i20]);
        }

        if (v155 < 0)
        {
          operator delete(v154[0]);
        }

        if (v93 < 0)
        {
          operator delete(v92[0]);
        }

        if (SBYTE7(v157) < 0)
        {
          operator delete(v156);
        }

        if (SHIBYTE(v159) < 0)
        {
          operator delete(*(&v157 + 1));
        }

        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        if (v104)
        {
          v105 = v104;
          operator delete(v104);
        }

        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        __p[0] = &v110;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        if (SHIBYTE(v180) < 0)
        {
          operator delete(v178);
        }

        __p[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        addr_obj::venue::Template::~Template(&v135);
        __p[0] = &v122;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
        for (i21 = 12; i21 != -12; i21 -= 12)
        {
          addr_obj::venue::Decorator::~Decorator(&v136[i21]);
        }

        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116);
        }

        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (v127)
        {
          *(&v127 + 1) = v127;
          operator delete(v127);
        }

        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        __cxa_guard_release(&qword_1EA9051D0);
LABEL_87:
        v5 = &qword_1EA9051B8;
      }

      break;
    case 11:
      if (atomic_load_explicit(&qword_1EA9051F0, memory_order_acquire))
      {
        goto LABEL_6;
      }

      v5 = &qword_1EA9051D8;
      if (__cxa_guard_acquire(&qword_1EA9051F0))
      {
        v188[0] = 4;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v132, v188, &v188[1], 1uLL);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v185 = 4;
        v126 = 0;
        addr_obj::venue::Field::Field(&v186, &v185, &v126);
        v125 = 6;
        v124 = 1;
        addr_obj::venue::Field::Field(v187, &v125, &v124);
        v127 = 0uLL;
        v128 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v127, &v186, v188, 2uLL);
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        *v136 = 0u;
        v137 = 0u;
        std::string::basic_string[abi:ne200100]<0>(v120, "");
        std::string::basic_string[abi:ne200100]<0>(v118, "-");
        std::string::basic_string[abi:ne200100]<0>(&v116, "");
        std::string::basic_string[abi:ne200100]<0>(v183, "");
        addr_obj::venue::Decorator::Decorator(v142, v120, v118, &v116, v183);
        v122 = 0uLL;
        v123 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v122, v136, v144, 2uLL);
        addr_obj::venue::Template::Template(&v135, &v132, &v129, &v127, &v122);
        std::string::basic_string[abi:ne200100]<0>(v181, "qq");
        v113 = 0;
        v114 = 0;
        v115 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, v181, v183, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&v178, "ZZZ");
        v110 = 0;
        v111 = 0;
        v112 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v110, &v178, v181, 1uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v188[1], &v135, &v113, &v110);
        v170 = 4;
        v108 = 0;
        v109 = 0;
        v107 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v107, &v170, &v171, 1uLL);
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v99 = 0;
        v100 = 4;
        addr_obj::venue::Field::Field(&v168, &v100, &v99);
        v98 = 6;
        v97 = 1;
        addr_obj::venue::Field::Field(v169, &v98, &v97);
        v101 = 0;
        v102 = 0;
        v103 = 0;
        std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v101, &v168, &v170, 2uLL);
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        *__p = 0u;
        v161 = 0u;
        std::string::basic_string[abi:ne200100]<0>(&v157 + 1, "");
        std::string::basic_string[abi:ne200100]<0>(&v156, "-");
        std::string::basic_string[abi:ne200100]<0>(v92, "");
        std::string::basic_string[abi:ne200100]<0>(v154, "");
        addr_obj::venue::Decorator::Decorator(v166, (&v157 + 8), &v156, v92, v154);
        v94 = 0;
        v95 = 0;
        v96 = 0;
        std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v94, __p, &v167, 2uLL);
        addr_obj::venue::Template::Template(&v171, &v107, &v104, &v101, &v94);
        std::string::basic_string[abi:ne200100]<0>(v150, "zh-Hans");
        std::string::basic_string[abi:ne200100]<0>(v151, "zh-Hant");
        std::string::basic_string[abi:ne200100]<0>(v152, "ja");
        std::string::basic_string[abi:ne200100]<0>(v153, "ko");
        v89 = 0;
        v90 = 0;
        v91 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v89, v150, v154, 4uLL);
        std::string::basic_string[abi:ne200100]<0>(&v145, "CN");
        std::string::basic_string[abi:ne200100]<0>(v146, "HK");
        std::string::basic_string[abi:ne200100]<0>(v147, "TW");
        std::string::basic_string[abi:ne200100]<0>(v148, "JP");
        std::string::basic_string[abi:ne200100]<0>(v149, "KO");
        v86 = 0;
        v87 = 0;
        v88 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v86, &v145, v150, 5uLL);
        addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v196, &v171, &v89, &v86);
        qword_1EA9051D8 = 0;
        unk_1EA9051E0 = 0;
        qword_1EA9051E8 = 0;
        std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA9051D8, &v188[1], &v197, 2uLL);
        for (i22 = 18; i22 != -18; i22 -= 18)
        {
          addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v188[i22 + 1]);
        }

        v197 = &v86;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v197);
        for (i23 = 0; i23 != -15; i23 -= 3)
        {
          if (SHIBYTE(v149[i23 + 2]) < 0)
          {
            operator delete(v149[i23]);
          }
        }

        v145.__r_.__value_.__r.__words[0] = &v89;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v145);
        for (i24 = 0; i24 != -12; i24 -= 3)
        {
          if (SHIBYTE(v153[i24 + 2]) < 0)
          {
            operator delete(v153[i24]);
          }
        }

        addr_obj::venue::Template::~Template(&v171);
        v145.__r_.__value_.__r.__words[0] = &v94;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v145);
        for (i25 = 12; i25 != -12; i25 -= 12)
        {
          addr_obj::venue::Decorator::~Decorator(&__p[i25]);
        }

        if (v155 < 0)
        {
          operator delete(v154[0]);
        }

        if (v93 < 0)
        {
          operator delete(v92[0]);
        }

        if (SBYTE7(v157) < 0)
        {
          operator delete(v156);
        }

        if (SHIBYTE(v159) < 0)
        {
          operator delete(*(&v157 + 1));
        }

        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        if (v104)
        {
          v105 = v104;
          operator delete(v104);
        }

        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        __p[0] = &v110;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        if (SHIBYTE(v180) < 0)
        {
          operator delete(v178);
        }

        __p[0] = &v113;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        if (v182 < 0)
        {
          operator delete(v181[0]);
        }

        addr_obj::venue::Template::~Template(&v135);
        __p[0] = &v122;
        std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
        for (i26 = 12; i26 != -12; i26 -= 12)
        {
          addr_obj::venue::Decorator::~Decorator(&v136[i26]);
        }

        if (v184 < 0)
        {
          operator delete(v183[0]);
        }

        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116);
        }

        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        if (v121 < 0)
        {
          operator delete(v120[0]);
        }

        if (v127)
        {
          *(&v127 + 1) = v127;
          operator delete(v127);
        }

        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        __cxa_guard_release(&qword_1EA9051F0);
LABEL_6:
        v5 = &qword_1EA9051D8;
      }

      break;
    case 12:

      return sub_18683DD7C(a2);
    case 13:

      return sub_18683FCD0(a2);
    default:
      std::ostringstream::basic_ostringstream[abi:ne200100](&v188[1]);
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188[1], "Invalid TemplateStyle enum: ", 28);
      v65 = MEMORY[0x18CFD1C40](v64, a1);
      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "; library version: ", 19);
      v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "11.3.0", 6);
      if (addr_obj::Logger::isInitialized(v67))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v136);
        std::stringbuf::str();
        if ((SBYTE7(v161) & 0x80u) == 0)
        {
          v68 = __p;
        }

        else
        {
          v68 = __p[0];
        }

        if ((SBYTE7(v161) & 0x80u) == 0)
        {
          v69 = BYTE7(v161);
        }

        else
        {
          v69 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, v68, v69);
        if (SBYTE7(v161) < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v145, "LocalizedTemplatesForStyleAndPattern");
        std::stringbuf::str();
        std::string::basic_string[abi:ne200100]<0>(&v171, "");
        addr_obj::Logger::log(16, __p, 674, &v145, &v135, &v171);
        if (SBYTE7(v172) < 0)
        {
          operator delete(v171);
        }

        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v145.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v161) < 0)
        {
          operator delete(__p[0]);
        }

        std::ostringstream::~ostringstream(v136);
      }

      v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188[1], "; at ", 5);
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ":", 1);
      MEMORY[0x18CFD1C40](v72, 674);
      v73 = __cxa_allocate_exception(0x28uLL);
      std::string::basic_string[abi:ne200100]<0>(v136, "DataError");
      std::stringbuf::str();
      addr_obj::Exception<std::runtime_error>::Exception(v73, v136, __p);
  }

  return v5;
}

uint64_t *sub_18683129C(uint64_t a1)
{
  v127 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EA904E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904E50))
  {
    v121 = 0;
    v85 = 0;
    v83 = 0;
    v84 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v83, &v121, &v122, 1uLL);
    v120 = xmmword_187FB6080;
    v82 = 0;
    v80 = 0;
    v81 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v80, &v120, &v121, 2uLL);
    v75 = 0;
    v76 = 0;
    addr_obj::venue::Field::Field(&v102, &v76, &v75);
    v73 = 0;
    v74 = 3;
    addr_obj::venue::Field::Field(v103, &v74, &v73);
    v78 = 0;
    v77 = 0;
    v79 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v77, &v102, &v104, 2uLL);
    std::string::basic_string[abi:ne200100]<0>(v68, "");
    std::string::basic_string[abi:ne200100]<0>(v66, "");
    std::string::basic_string[abi:ne200100]<0>(v64, "");
    std::string::basic_string[abi:ne200100]<0>(v62, ", ");
    addr_obj::venue::Decorator::Decorator(v119, v68, v66, v64, v62);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v70, v119, &v120, 1uLL);
    addr_obj::venue::Template::Template(__p, &v83, &v80, &v77, &v70);
    std::string::basic_string[abi:ne200100]<0>(v117, "qq");
    v59 = 0;
    v60 = 0;
    v61 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v59, v117, v119, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v115, "ZZZ");
    v56 = 0;
    v57 = 0;
    v58 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v56, v115, v117, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v122, __p, &v59, &v56);
    v113 = 0;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v53, &v113, &v114, 1uLL);
    v111 = xmmword_187FB6080;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v50, &v111, &v112, 2uLL);
    v46 = 0;
    v110 = 0;
    addr_obj::venue::Field::Field(&v99, &v46, &v110);
    v44 = 0;
    v45 = 3;
    addr_obj::venue::Field::Field(v100, &v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v47, &v99, &v101, 2uLL);
    std::string::basic_string[abi:ne200100]<0>(v39, "");
    std::string::basic_string[abi:ne200100]<0>(v37, "");
    std::string::basic_string[abi:ne200100]<0>(v35, "");
    std::string::basic_string[abi:ne200100]<0>(v33, " ");
    addr_obj::venue::Decorator::Decorator(v109, v39, v37, v35, v33);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v41, v109, &v110, 1uLL);
    addr_obj::venue::Template::Template(&v114, &v53, &v50, &v47, &v41);
    std::string::basic_string[abi:ne200100]<0>(v105, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v106, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v107, "ja");
    std::string::basic_string[abi:ne200100]<0>(v108, "ko");
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v30, v105, v109, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v87, "CN");
    std::string::basic_string[abi:ne200100]<0>(v88 + 1, "HK");
    std::string::basic_string[abi:ne200100]<0>(v89, "TW");
    std::string::basic_string[abi:ne200100]<0>(&v89[1] + 1, "JP");
    std::string::basic_string[abi:ne200100]<0>(v90, "KO");
    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v27, v87, v91, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v126, &v114, &v30, &v27);
    qword_1EA904E38 = 0;
    unk_1EA904E40 = 0;
    qword_1EA904E48 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904E38, &v122, &v127, 2uLL);
    for (i = 18; i != -18; i -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v123[i - 1]);
    }

    v86 = &v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
    for (j = 0; j != 0x1FFFFFFFFFFFFFF1; j -= 3)
    {
      if (SHIBYTE(v90[0].__r_.__value_.__r.__words[j + 2]) < 0)
      {
        operator delete(v90[j / 3].__r_.__value_.__l.__data_);
      }
    }

    v87[0] = &v30;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    for (k = 0; k != -12; k -= 3)
    {
      if (SHIBYTE(v108[k + 2]) < 0)
      {
        operator delete(v108[k]);
      }
    }

    addr_obj::venue::Template::~Template(&v114);
    v87[0] = &v41;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v87);
    addr_obj::venue::Decorator::~Decorator(&v109[0].__r_.__value_.__l.__data_);
    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    v87[0] = &v56;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    if (v116 < 0)
    {
      operator delete(v115[0]);
    }

    v87[0] = &v59;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    if (v118 < 0)
    {
      operator delete(v117[0]);
    }

    addr_obj::venue::Template::~Template(__p);
    v87[0] = &v70;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v87);
    addr_obj::venue::Decorator::~Decorator(&v119[0].__r_.__value_.__l.__data_);
    if (v63 < 0)
    {
      operator delete(v62[0]);
    }

    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    if (v67 < 0)
    {
      operator delete(v66[0]);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    __cxa_guard_release(&qword_1EA904E50);
  }

  if ((atomic_load_explicit(&qword_1EA904E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904E70))
  {
    v121 = 0;
    v85 = 0;
    v83 = 0;
    v84 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v83, &v121, &v122, 1uLL);
    v120 = xmmword_187FB6080;
    v82 = 0;
    v80 = 0;
    v81 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v80, &v120, &v121, 2uLL);
    v75 = 0;
    v76 = 0;
    addr_obj::venue::Field::Field(&v102, &v76, &v75);
    v73 = 0;
    v74 = 2;
    addr_obj::venue::Field::Field(v103, &v74, &v73);
    v113 = 3;
    v46 = 0;
    addr_obj::venue::Field::Field(&v104, &v113, &v46);
    v78 = 0;
    v77 = 0;
    v79 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v77, &v102, v105, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v68, "");
    std::string::basic_string[abi:ne200100]<0>(v66, "");
    std::string::basic_string[abi:ne200100]<0>(v64, "");
    std::string::basic_string[abi:ne200100]<0>(v62, ", ");
    addr_obj::venue::Decorator::Decorator(&v114, v68, v66, v64, v62);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v70, &v114, v115, 1uLL);
    addr_obj::venue::Template::Template(v119, &v83, &v80, &v77, &v70);
    std::string::basic_string[abi:ne200100]<0>(v117, "qq");
    v59 = 0;
    v60 = 0;
    v61 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v59, v117, v119, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v115, "ZZZ");
    v56 = 0;
    v57 = 0;
    v58 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v56, v115, v117, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v122, v119, &v59, &v56);
    v110 = 0;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v53, &v110, &v111, 1uLL);
    v111 = xmmword_187FB6080;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v50, &v111, &v112, 2uLL);
    v44 = 0;
    v45 = 0;
    addr_obj::venue::Field::Field(&v99, &v45, &v44);
    v25 = 0;
    v26 = 2;
    addr_obj::venue::Field::Field(v100, &v26, &v25);
    v24 = 3;
    v23 = 1;
    addr_obj::venue::Field::Field(&v101, &v24, &v23);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v47, &v99, &v102, 3uLL);
    memset(v89, 0, sizeof(v89));
    *v87 = 0u;
    memset(v88, 0, sizeof(v88));
    std::string::basic_string[abi:ne200100]<0>(v39, " ");
    std::string::basic_string[abi:ne200100]<0>(v37, "");
    std::string::basic_string[abi:ne200100]<0>(v35, "");
    std::string::basic_string[abi:ne200100]<0>(v33, "");
    addr_obj::venue::Decorator::Decorator(v90, v39, v37, v35, v33);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v41, v87, v92, 2uLL);
    addr_obj::venue::Template::Template(v109, &v53, &v50, &v47, &v41);
    std::string::basic_string[abi:ne200100]<0>(v105, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v106, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v107, "ja");
    std::string::basic_string[abi:ne200100]<0>(v108, "ko");
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v30, v105, v109, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "CN");
    std::string::basic_string[abi:ne200100]<0>(v95, "HK");
    std::string::basic_string[abi:ne200100]<0>(v96, "TW");
    std::string::basic_string[abi:ne200100]<0>(v97, "JP");
    std::string::basic_string[abi:ne200100]<0>(v98, "KO");
    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v27, __p, &v99, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v126, v109, &v30, &v27);
    qword_1EA904E58 = 0;
    unk_1EA904E60 = 0;
    qword_1EA904E68 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904E58, &v122, &v127, 2uLL);
    for (m = 18; m != -18; m -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v123[m - 1]);
    }

    v86 = &v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
    for (n = 0; n != -15; n -= 3)
    {
      if (SHIBYTE(v98[n + 2]) < 0)
      {
        operator delete(v98[n]);
      }
    }

    __p[0] = &v30;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    for (ii = 0; ii != -12; ii -= 3)
    {
      if (SHIBYTE(v108[ii + 2]) < 0)
      {
        operator delete(v108[ii]);
      }
    }

    addr_obj::venue::Template::~Template(v109);
    __p[0] = &v41;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (jj = 12; jj != -12; jj -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&v87[jj]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    v87[0] = &v56;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    if (v116 < 0)
    {
      operator delete(v115[0]);
    }

    v87[0] = &v59;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    if (v118 < 0)
    {
      operator delete(v117[0]);
    }

    addr_obj::venue::Template::~Template(v119);
    v87[0] = &v70;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v87);
    addr_obj::venue::Decorator::~Decorator(&v114.__r_.__value_.__l.__data_);
    if (v63 < 0)
    {
      operator delete(v62[0]);
    }

    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    if (v67 < 0)
    {
      operator delete(v66[0]);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    __cxa_guard_release(&qword_1EA904E70);
  }

  if ((atomic_load_explicit(&qword_1EA904E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904E90))
  {
    LODWORD(v122) = 1;
    memset(v123, 0, sizeof(v123));
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v123, qword_1EA904E58, unk_1EA904E60, 0x8E38E38E38E38E39 * ((unk_1EA904E60 - qword_1EA904E58) >> 4));
    v124 = 0;
    memset(v125, 0, 24);
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v125, qword_1EA904E38, unk_1EA904E40, 0x8E38E38E38E38E39 * ((unk_1EA904E40 - qword_1EA904E38) >> 4));
    std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA904E78, &v122, 2);
    for (kk = 5; kk != -3; kk -= 4)
    {
      v87[0] = &v123[kk - 1];
      std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v87);
    }

    __cxa_guard_release(&qword_1EA904E90);
  }

  v2 = qword_1EA904E80;
  if (!qword_1EA904E80)
  {
    goto LABEL_12;
  }

  v3 = &qword_1EA904E80;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_1EA904E80 || *(v3 + 8) > a1)
  {
LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v122);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v122, "Invalid LabelPattern enum: ", 27);
    v6 = MEMORY[0x18CFD1C40](v5, a1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; library version: ", 19);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v87);
      std::stringbuf::str();
      if ((v94 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v94 & 0x80u) == 0)
      {
        v10 = v94;
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, v9, v10);
      if (v94 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(v119, "Long");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v109, "");
      addr_obj::Logger::log(16, __p, 84, v119, &v114, v109);
      if (SHIBYTE(v109[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v114.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v119[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119[0].__r_.__value_.__l.__data_);
      }

      if (v94 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v87);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v122, "; at ", 5);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ":", 1);
    MEMORY[0x18CFD1C40](v21, 84);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v87, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v87, __p);
  }

  return v3 + 5;
}

void sub_186832F64()
{
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v2);
    JUMPOUT(0x186832FF4);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

uint64_t *sub_186832FFC(uint64_t a1)
{
  v154 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EA904EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904EB0))
  {
    v147 = xmmword_187FB60E0;
    v148 = 5;
    v103 = 0;
    v101 = 0;
    v102 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v101, &v147, &v149, 3uLL);
    v99 = 0;
    v98 = 0;
    v100 = 0;
    v94 = 0;
    v93 = 0;
    addr_obj::venue::Field::Field(&v143, &v94, &v93);
    v92 = 2;
    v91 = 0;
    addr_obj::venue::Field::Field(v144, &v92, &v91);
    v90 = 3;
    v89 = 1;
    addr_obj::venue::Field::Field(v145, &v90, &v89);
    v88 = 5;
    v87 = 2;
    addr_obj::venue::Field::Field(&v146, &v88, &v87);
    v96 = 0;
    v95 = 0;
    v97 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v95, &v143, &v147, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v82, "");
    std::string::basic_string[abi:ne200100]<0>(v80, "");
    std::string::basic_string[abi:ne200100]<0>(v78, "");
    std::string::basic_string[abi:ne200100]<0>(v76, ", ");
    addr_obj::venue::Decorator::Decorator(v135, v82, v80, v78, v76);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v74, "");
    std::string::basic_string[abi:ne200100]<0>(v72, "-");
    std::string::basic_string[abi:ne200100]<0>(v70, "");
    std::string::basic_string[abi:ne200100]<0>(v68, ", ");
    addr_obj::venue::Decorator::Decorator(v142, v74, v72, v70, v68);
    v85 = 0;
    v84 = 0;
    v86 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v84, v135, &v143, 3uLL);
    addr_obj::venue::Template::Template(&v104, &v101, &v98, &v95, &v84);
    std::string::basic_string[abi:ne200100]<0>(v133, "qq");
    v65 = 0;
    v66 = 0;
    v67 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v65, v133, v135, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v131, "ZZZ");
    v62 = 0;
    v63 = 0;
    v64 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v62, v131, v133, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v149, &v104, &v65, &v62);
    v128 = xmmword_187FB60E0;
    v129 = 5;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v57, &v128, &v130, 3uLL);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v49 = 0;
    v50 = 0;
    addr_obj::venue::Field::Field(&v124, &v50, &v49);
    v47 = 0;
    v48 = 2;
    addr_obj::venue::Field::Field(v125, &v48, &v47);
    v46 = 3;
    v45 = 1;
    addr_obj::venue::Field::Field(v126, &v46, &v45);
    v43 = 0;
    v44 = 5;
    addr_obj::venue::Field::Field(&v127, &v44, &v43);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v51, &v124, &v128, 4uLL);
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    *__p = 0u;
    v118 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v38, " ");
    std::string::basic_string[abi:ne200100]<0>(v36, "");
    std::string::basic_string[abi:ne200100]<0>(v34, "-");
    std::string::basic_string[abi:ne200100]<0>(v32, "");
    addr_obj::venue::Decorator::Decorator(v123, v38, v36, v34, v32);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v40, __p, &v124, 2uLL);
    addr_obj::venue::Template::Template(v60, &v57, &v54, &v51, &v40);
    std::string::basic_string[abi:ne200100]<0>(v113, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v114, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v115, "ja");
    std::string::basic_string[abi:ne200100]<0>(v116, "ko");
    v29 = 0;
    v30 = 0;
    v31 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v29, v113, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v106, "CN");
    std::string::basic_string[abi:ne200100]<0>(v108, "HK");
    std::string::basic_string[abi:ne200100]<0>(v109, "TW");
    std::string::basic_string[abi:ne200100]<0>(v110, "JP");
    std::string::basic_string[abi:ne200100]<0>(v111, "KO");
    v26 = 0;
    v27 = 0;
    v28 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, v106, &v112, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v153, v60, &v29, &v26);
    qword_1EA904E98 = 0;
    unk_1EA904EA0 = 0;
    qword_1EA904EA8 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904E98, &v149, &v154, 2uLL);
    for (i = 18; i != -18; i -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v150[i - 1]);
    }

    v105 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
    for (j = 0; j != -15; j -= 3)
    {
      if (SHIBYTE(v111[j + 2]) < 0)
      {
        operator delete(v111[j]);
      }
    }

    v106[0] = &v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v106);
    for (k = 0; k != -12; k -= 3)
    {
      if (SHIBYTE(v116[k + 2]) < 0)
      {
        operator delete(v116[k]);
      }
    }

    addr_obj::venue::Template::~Template(v60);
    v106[0] = &v40;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v106);
    for (m = 12; m != -12; m -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[m]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    __p[0] = &v62;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    __p[0] = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    addr_obj::venue::Template::~Template(&v104);
    __p[0] = &v84;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (n = 192; n != -96; n -= 96)
    {
      addr_obj::venue::Decorator::~Decorator(&v135[n / 0x18].__r_.__value_.__l.__data_);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    if (v73 < 0)
    {
      operator delete(v72[0]);
    }

    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    if (v79 < 0)
    {
      operator delete(v78[0]);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    if (v83 < 0)
    {
      operator delete(v82[0]);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    __cxa_guard_release(&qword_1EA904EB0);
  }

  if ((atomic_load_explicit(&qword_1EA904ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904ED0))
  {
    v147 = xmmword_187FB60E0;
    v148 = 5;
    v103 = 0;
    v101 = 0;
    v102 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v101, &v147, &v149, 3uLL);
    v99 = 0;
    v98 = 0;
    v100 = 0;
    v94 = 0;
    v93 = 0;
    addr_obj::venue::Field::Field(&v143, &v94, &v93);
    v92 = 3;
    v91 = 1;
    addr_obj::venue::Field::Field(v144, &v92, &v91);
    v90 = 5;
    v89 = 2;
    addr_obj::venue::Field::Field(v145, &v90, &v89);
    v96 = 0;
    v95 = 0;
    v97 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v95, &v143, &v146, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v82, "");
    std::string::basic_string[abi:ne200100]<0>(v80, "");
    std::string::basic_string[abi:ne200100]<0>(v78, "");
    std::string::basic_string[abi:ne200100]<0>(v76, ", ");
    addr_obj::venue::Decorator::Decorator(v135, v82, v80, v78, v76);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v74, "");
    std::string::basic_string[abi:ne200100]<0>(v72, "-");
    std::string::basic_string[abi:ne200100]<0>(v70, "");
    std::string::basic_string[abi:ne200100]<0>(v68, ", ");
    addr_obj::venue::Decorator::Decorator(v142, v74, v72, v70, v68);
    v85 = 0;
    v84 = 0;
    v86 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v84, v135, &v143, 3uLL);
    addr_obj::venue::Template::Template(&v104, &v101, &v98, &v95, &v84);
    std::string::basic_string[abi:ne200100]<0>(v133, "qq");
    v65 = 0;
    v66 = 0;
    v67 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v65, v133, v135, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v131, "ZZZ");
    v62 = 0;
    v63 = 0;
    v64 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v62, v131, v133, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v149, &v104, &v65, &v62);
    v128 = xmmword_187FB60E0;
    v129 = 5;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v57, &v128, &v130, 3uLL);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v88 = 0;
    v87 = 0;
    addr_obj::venue::Field::Field(&v124, &v88, &v87);
    v50 = 3;
    v49 = 1;
    addr_obj::venue::Field::Field(v125, &v50, &v49);
    v47 = 0;
    v48 = 5;
    addr_obj::venue::Field::Field(v126, &v48, &v47);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v51, &v124, &v127, 3uLL);
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    *__p = 0u;
    v118 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v38, " ");
    std::string::basic_string[abi:ne200100]<0>(v36, "");
    std::string::basic_string[abi:ne200100]<0>(v34, "-");
    std::string::basic_string[abi:ne200100]<0>(v32, "");
    addr_obj::venue::Decorator::Decorator(v123, v38, v36, v34, v32);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v40, __p, &v124, 2uLL);
    addr_obj::venue::Template::Template(v60, &v57, &v54, &v51, &v40);
    std::string::basic_string[abi:ne200100]<0>(v113, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v114, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v115, "ja");
    std::string::basic_string[abi:ne200100]<0>(v116, "ko");
    v29 = 0;
    v30 = 0;
    v31 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v29, v113, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v106, "CN");
    std::string::basic_string[abi:ne200100]<0>(v108, "HK");
    std::string::basic_string[abi:ne200100]<0>(v109, "TW");
    std::string::basic_string[abi:ne200100]<0>(v110, "JP");
    std::string::basic_string[abi:ne200100]<0>(v111, "KO");
    v26 = 0;
    v27 = 0;
    v28 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, v106, &v112, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v153, v60, &v29, &v26);
    qword_1EA904EB8 = 0;
    unk_1EA904EC0 = 0;
    qword_1EA904EC8 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904EB8, &v149, &v154, 2uLL);
    for (ii = 18; ii != -18; ii -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v150[ii - 1]);
    }

    v105 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
    for (jj = 0; jj != -15; jj -= 3)
    {
      if (SHIBYTE(v111[jj + 2]) < 0)
      {
        operator delete(v111[jj]);
      }
    }

    v106[0] = &v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v106);
    for (kk = 0; kk != -12; kk -= 3)
    {
      if (SHIBYTE(v116[kk + 2]) < 0)
      {
        operator delete(v116[kk]);
      }
    }

    addr_obj::venue::Template::~Template(v60);
    v106[0] = &v40;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v106);
    for (mm = 12; mm != -12; mm -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[mm]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    __p[0] = &v62;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    __p[0] = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    addr_obj::venue::Template::~Template(&v104);
    __p[0] = &v84;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (nn = 192; nn != -96; nn -= 96)
    {
      addr_obj::venue::Decorator::~Decorator(&v135[nn / 0x18].__r_.__value_.__l.__data_);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    if (v73 < 0)
    {
      operator delete(v72[0]);
    }

    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    if (v79 < 0)
    {
      operator delete(v78[0]);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    if (v83 < 0)
    {
      operator delete(v82[0]);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    __cxa_guard_release(&qword_1EA904ED0);
  }

  if ((atomic_load_explicit(&qword_1EA904EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904EF0))
  {
    LODWORD(v149) = 1;
    memset(v150, 0, sizeof(v150));
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v150, qword_1EA904E98, unk_1EA904EA0, 0x8E38E38E38E38E39 * ((unk_1EA904EA0 - qword_1EA904E98) >> 4));
    v151 = 0;
    memset(v152, 0, 24);
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v152, qword_1EA904EB8, unk_1EA904EC0, 0x8E38E38E38E38E39 * ((unk_1EA904EC0 - qword_1EA904EB8) >> 4));
    std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA904ED8, &v149, 2);
    for (i1 = 5; i1 != -3; i1 -= 4)
    {
      v135[0].__r_.__value_.__r.__words[0] = &v150[i1 - 1];
      std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v135);
    }

    __cxa_guard_release(&qword_1EA904EF0);
  }

  v2 = qword_1EA904EE0;
  if (!qword_1EA904EE0)
  {
    goto LABEL_12;
  }

  v3 = &qword_1EA904EE0;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_1EA904EE0 || *(v3 + 8) > a1)
  {
LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v149);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "Invalid LabelPattern enum: ", 27);
    v6 = MEMORY[0x18CFD1C40](v5, a1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; library version: ", 19);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v135);
      std::stringbuf::str();
      if ((SBYTE7(v118) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((SBYTE7(v118) & 0x80u) == 0)
      {
        v10 = BYTE7(v118);
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, v9, v10);
      if (SBYTE7(v118) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(v106, "LongWithUpper");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v60, "");
      addr_obj::Logger::log(16, __p, 138, v106, &v104, v60);
      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (v107 < 0)
      {
        operator delete(v106[0]);
      }

      if (SBYTE7(v118) < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v135);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "; at ", 5);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ":", 1);
    MEMORY[0x18CFD1C40](v24, 138);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v135, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, &v135[0].__r_.__value_.__l.__data_, __p);
  }

  return v3 + 5;
}

void sub_1868350FC()
{
  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v2);
    JUMPOUT(0x18683518CLL);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

uint64_t *sub_186835194(uint64_t a1)
{
  v154 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EA904F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904F10))
  {
    v147 = xmmword_187FB60F8;
    v148 = 6;
    v103 = 0;
    v101 = 0;
    v102 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v101, &v147, &v149, 3uLL);
    v99 = 0;
    v98 = 0;
    v100 = 0;
    v94 = 0;
    v93 = 0;
    addr_obj::venue::Field::Field(&v143, &v94, &v93);
    v92 = 2;
    v91 = 0;
    addr_obj::venue::Field::Field(v144, &v92, &v91);
    v90 = 4;
    v89 = 1;
    addr_obj::venue::Field::Field(v145, &v90, &v89);
    v88 = 6;
    v87 = 2;
    addr_obj::venue::Field::Field(&v146, &v88, &v87);
    v96 = 0;
    v95 = 0;
    v97 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v95, &v143, &v147, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v82, "");
    std::string::basic_string[abi:ne200100]<0>(v80, "");
    std::string::basic_string[abi:ne200100]<0>(v78, "");
    std::string::basic_string[abi:ne200100]<0>(v76, ", ");
    addr_obj::venue::Decorator::Decorator(v135, v82, v80, v78, v76);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v74, "");
    std::string::basic_string[abi:ne200100]<0>(v72, "-");
    std::string::basic_string[abi:ne200100]<0>(v70, "");
    std::string::basic_string[abi:ne200100]<0>(v68, "");
    addr_obj::venue::Decorator::Decorator(v142, v74, v72, v70, v68);
    v85 = 0;
    v84 = 0;
    v86 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v84, v135, &v143, 3uLL);
    addr_obj::venue::Template::Template(&v104, &v101, &v98, &v95, &v84);
    std::string::basic_string[abi:ne200100]<0>(v133, "qq");
    v65 = 0;
    v66 = 0;
    v67 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v65, v133, v135, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v131, "ZZZ");
    v62 = 0;
    v63 = 0;
    v64 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v62, v131, v133, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v149, &v104, &v65, &v62);
    v128 = xmmword_187FB60F8;
    v129 = 6;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v57, &v128, &v130, 3uLL);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v49 = 0;
    v50 = 0;
    addr_obj::venue::Field::Field(&v124, &v50, &v49);
    v47 = 0;
    v48 = 2;
    addr_obj::venue::Field::Field(v125, &v48, &v47);
    v46 = 4;
    v45 = 1;
    addr_obj::venue::Field::Field(v126, &v46, &v45);
    v43 = 0;
    v44 = 6;
    addr_obj::venue::Field::Field(&v127, &v44, &v43);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v51, &v124, &v128, 4uLL);
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    *__p = 0u;
    v118 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v38, " ");
    std::string::basic_string[abi:ne200100]<0>(v36, "");
    std::string::basic_string[abi:ne200100]<0>(v34, "-");
    std::string::basic_string[abi:ne200100]<0>(v32, "");
    addr_obj::venue::Decorator::Decorator(v123, v38, v36, v34, v32);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v40, __p, &v124, 2uLL);
    addr_obj::venue::Template::Template(v60, &v57, &v54, &v51, &v40);
    std::string::basic_string[abi:ne200100]<0>(v113, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v114, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v115, "ja");
    std::string::basic_string[abi:ne200100]<0>(v116, "ko");
    v29 = 0;
    v30 = 0;
    v31 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v29, v113, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v106, "CN");
    std::string::basic_string[abi:ne200100]<0>(v108, "HK");
    std::string::basic_string[abi:ne200100]<0>(v109, "TW");
    std::string::basic_string[abi:ne200100]<0>(v110, "JP");
    std::string::basic_string[abi:ne200100]<0>(v111, "KO");
    v26 = 0;
    v27 = 0;
    v28 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, v106, &v112, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v153, v60, &v29, &v26);
    qword_1EA904EF8 = 0;
    unk_1EA904F00 = 0;
    qword_1EA904F08 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904EF8, &v149, &v154, 2uLL);
    for (i = 18; i != -18; i -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v150[i - 1]);
    }

    v105 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
    for (j = 0; j != -15; j -= 3)
    {
      if (SHIBYTE(v111[j + 2]) < 0)
      {
        operator delete(v111[j]);
      }
    }

    v106[0] = &v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v106);
    for (k = 0; k != -12; k -= 3)
    {
      if (SHIBYTE(v116[k + 2]) < 0)
      {
        operator delete(v116[k]);
      }
    }

    addr_obj::venue::Template::~Template(v60);
    v106[0] = &v40;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v106);
    for (m = 12; m != -12; m -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[m]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    __p[0] = &v62;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    __p[0] = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    addr_obj::venue::Template::~Template(&v104);
    __p[0] = &v84;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (n = 192; n != -96; n -= 96)
    {
      addr_obj::venue::Decorator::~Decorator(&v135[n / 0x18].__r_.__value_.__l.__data_);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    if (v73 < 0)
    {
      operator delete(v72[0]);
    }

    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    if (v79 < 0)
    {
      operator delete(v78[0]);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    if (v83 < 0)
    {
      operator delete(v82[0]);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    __cxa_guard_release(&qword_1EA904F10);
  }

  if ((atomic_load_explicit(&qword_1EA904F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904F30))
  {
    v147 = xmmword_187FB60F8;
    v148 = 6;
    v103 = 0;
    v101 = 0;
    v102 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v101, &v147, &v149, 3uLL);
    v99 = 0;
    v98 = 0;
    v100 = 0;
    v94 = 0;
    v93 = 0;
    addr_obj::venue::Field::Field(&v143, &v94, &v93);
    v92 = 4;
    v91 = 1;
    addr_obj::venue::Field::Field(v144, &v92, &v91);
    v90 = 6;
    v89 = 2;
    addr_obj::venue::Field::Field(v145, &v90, &v89);
    v96 = 0;
    v95 = 0;
    v97 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v95, &v143, &v146, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v82, "");
    std::string::basic_string[abi:ne200100]<0>(v80, "");
    std::string::basic_string[abi:ne200100]<0>(v78, "");
    std::string::basic_string[abi:ne200100]<0>(v76, ", ");
    addr_obj::venue::Decorator::Decorator(v135, v82, v80, v78, v76);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v74, "");
    std::string::basic_string[abi:ne200100]<0>(v72, "-");
    std::string::basic_string[abi:ne200100]<0>(v70, "");
    std::string::basic_string[abi:ne200100]<0>(v68, "");
    addr_obj::venue::Decorator::Decorator(v142, v74, v72, v70, v68);
    v85 = 0;
    v84 = 0;
    v86 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v84, v135, &v143, 3uLL);
    addr_obj::venue::Template::Template(&v104, &v101, &v98, &v95, &v84);
    std::string::basic_string[abi:ne200100]<0>(v133, "qq");
    v65 = 0;
    v66 = 0;
    v67 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v65, v133, v135, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v131, "ZZZ");
    v62 = 0;
    v63 = 0;
    v64 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v62, v131, v133, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v149, &v104, &v65, &v62);
    v128 = xmmword_187FB60F8;
    v129 = 6;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v57, &v128, &v130, 3uLL);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v88 = 0;
    v87 = 0;
    addr_obj::venue::Field::Field(&v124, &v88, &v87);
    v50 = 4;
    v49 = 1;
    addr_obj::venue::Field::Field(v125, &v50, &v49);
    v47 = 0;
    v48 = 6;
    addr_obj::venue::Field::Field(v126, &v48, &v47);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v51, &v124, &v127, 3uLL);
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    *__p = 0u;
    v118 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v38, " ");
    std::string::basic_string[abi:ne200100]<0>(v36, "");
    std::string::basic_string[abi:ne200100]<0>(v34, "-");
    std::string::basic_string[abi:ne200100]<0>(v32, "");
    addr_obj::venue::Decorator::Decorator(v123, v38, v36, v34, v32);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v40, __p, &v124, 2uLL);
    addr_obj::venue::Template::Template(v60, &v57, &v54, &v51, &v40);
    std::string::basic_string[abi:ne200100]<0>(v113, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v114, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v115, "ja");
    std::string::basic_string[abi:ne200100]<0>(v116, "ko");
    v29 = 0;
    v30 = 0;
    v31 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v29, v113, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v106, "CN");
    std::string::basic_string[abi:ne200100]<0>(v108, "HK");
    std::string::basic_string[abi:ne200100]<0>(v109, "TW");
    std::string::basic_string[abi:ne200100]<0>(v110, "JP");
    std::string::basic_string[abi:ne200100]<0>(v111, "KO");
    v26 = 0;
    v27 = 0;
    v28 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, v106, &v112, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v153, v60, &v29, &v26);
    qword_1EA904F18 = 0;
    unk_1EA904F20 = 0;
    qword_1EA904F28 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904F18, &v149, &v154, 2uLL);
    for (ii = 18; ii != -18; ii -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v150[ii - 1]);
    }

    v105 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
    for (jj = 0; jj != -15; jj -= 3)
    {
      if (SHIBYTE(v111[jj + 2]) < 0)
      {
        operator delete(v111[jj]);
      }
    }

    v106[0] = &v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v106);
    for (kk = 0; kk != -12; kk -= 3)
    {
      if (SHIBYTE(v116[kk + 2]) < 0)
      {
        operator delete(v116[kk]);
      }
    }

    addr_obj::venue::Template::~Template(v60);
    v106[0] = &v40;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v106);
    for (mm = 12; mm != -12; mm -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[mm]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    __p[0] = &v62;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    __p[0] = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    addr_obj::venue::Template::~Template(&v104);
    __p[0] = &v84;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (nn = 192; nn != -96; nn -= 96)
    {
      addr_obj::venue::Decorator::~Decorator(&v135[nn / 0x18].__r_.__value_.__l.__data_);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    if (v73 < 0)
    {
      operator delete(v72[0]);
    }

    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    if (v79 < 0)
    {
      operator delete(v78[0]);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    if (v83 < 0)
    {
      operator delete(v82[0]);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    __cxa_guard_release(&qword_1EA904F30);
  }

  if ((atomic_load_explicit(&qword_1EA904F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904F50))
  {
    LODWORD(v149) = 1;
    memset(v150, 0, sizeof(v150));
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v150, qword_1EA904EF8, unk_1EA904F00, 0x8E38E38E38E38E39 * ((unk_1EA904F00 - qword_1EA904EF8) >> 4));
    v151 = 0;
    memset(v152, 0, 24);
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v152, qword_1EA904F18, unk_1EA904F20, 0x8E38E38E38E38E39 * ((unk_1EA904F20 - qword_1EA904F18) >> 4));
    std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA904F38, &v149, 2);
    for (i1 = 5; i1 != -3; i1 -= 4)
    {
      v135[0].__r_.__value_.__r.__words[0] = &v150[i1 - 1];
      std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v135);
    }

    __cxa_guard_release(&qword_1EA904F50);
  }

  v2 = qword_1EA904F40;
  if (!qword_1EA904F40)
  {
    goto LABEL_12;
  }

  v3 = &qword_1EA904F40;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_1EA904F40 || *(v3 + 8) > a1)
  {
LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v149);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "Invalid LabelPattern enum: ", 27);
    v6 = MEMORY[0x18CFD1C40](v5, a1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; library version: ", 19);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v135);
      std::stringbuf::str();
      if ((SBYTE7(v118) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((SBYTE7(v118) & 0x80u) == 0)
      {
        v10 = BYTE7(v118);
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, v9, v10);
      if (SBYTE7(v118) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(v106, "LongWithShortUpper");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v60, "");
      addr_obj::Logger::log(16, __p, 193, v106, &v104, v60);
      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (v107 < 0)
      {
        operator delete(v106[0]);
      }

      if (SBYTE7(v118) < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v135);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "; at ", 5);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ":", 1);
    MEMORY[0x18CFD1C40](v24, 193);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v135, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, &v135[0].__r_.__value_.__l.__data_, __p);
  }

  return v3 + 5;
}

void sub_186837294()
{
  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v2);
    JUMPOUT(0x186837324);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

uint64_t *sub_18683732C(uint64_t a1)
{
  v156 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EA904FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904FD0))
  {
    v148 = xmmword_187FB6110;
    v149 = 6;
    v100 = 0;
    v98 = 0;
    v99 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v98, &v148, v150, 3uLL);
    v96 = 0;
    v95 = 0;
    v97 = 0;
    v91 = 1;
    v90 = 0;
    addr_obj::venue::Field::Field(&v144, &v91, &v90);
    v89 = 2;
    v88 = 1;
    addr_obj::venue::Field::Field(v145, &v89, &v88);
    v87 = 4;
    v86 = 2;
    addr_obj::venue::Field::Field(v146, &v87, &v86);
    v85 = 6;
    v84 = 3;
    addr_obj::venue::Field::Field(&v147, &v85, &v84);
    v93 = 0;
    v92 = 0;
    v94 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v92, &v144, &v148, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v79, "");
    std::string::basic_string[abi:ne200100]<0>(v77, "");
    std::string::basic_string[abi:ne200100]<0>(v75, "");
    std::string::basic_string[abi:ne200100]<0>(v73, " ");
    addr_obj::venue::Decorator::Decorator(&v137, v79, v77, v75, v73);
    std::string::basic_string[abi:ne200100]<0>(v71, "");
    std::string::basic_string[abi:ne200100]<0>(v69, "");
    std::string::basic_string[abi:ne200100]<0>(v67, "");
    std::string::basic_string[abi:ne200100]<0>(v65, ", ");
    addr_obj::venue::Decorator::Decorator(v141, v71, v69, v67, v65);
    memset(&v142[48], 0, 96);
    std::string::basic_string[abi:ne200100]<0>(&v63, "");
    std::string::basic_string[abi:ne200100]<0>(v135, "-");
    std::string::basic_string[abi:ne200100]<0>(&v61, "");
    std::string::basic_string[abi:ne200100]<0>(v133, ", ");
    addr_obj::venue::Decorator::Decorator(&v143, &v63, v135, &v61, v133);
    v82 = 0;
    v81 = 0;
    v83 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v81, &v137, &v144, 4uLL);
    addr_obj::venue::Template::Template(&v101, &v98, &v95, &v92, &v81);
    std::string::basic_string[abi:ne200100]<0>(&v130, "qq");
    v58 = 0;
    v59 = 0;
    v60 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v58, &v130, &v132, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(&v127, "ZZZ");
    v55 = 0;
    v56 = 0;
    v57 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v55, &v127, &v130, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v150, &v101, &v58, &v55);
    v125 = xmmword_187FB6110;
    v126 = 6;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v50, &v125, &v127, 3uLL);
    v48 = 0uLL;
    v49 = 0;
    v44 = 0;
    v45 = 1;
    addr_obj::venue::Field::Field(&v121, &v45, &v44);
    v42 = 0;
    v43 = 2;
    addr_obj::venue::Field::Field(v122, &v43, &v42);
    v41 = 4;
    v40 = 1;
    addr_obj::venue::Field::Field(v123, &v41, &v40);
    v38 = 0;
    v39 = 6;
    addr_obj::venue::Field::Field(&v124, &v39, &v38);
    v46 = 0uLL;
    v47 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v46, &v121, &v125, 4uLL);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    *__p = 0u;
    v115 = 0u;
    std::string::basic_string[abi:ne200100]<0>(&v34, " ");
    std::string::basic_string[abi:ne200100]<0>(&v32, "");
    std::string::basic_string[abi:ne200100]<0>(v30, "-");
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    addr_obj::venue::Decorator::Decorator(v120, &v34, &v32, v30, v28);
    v36 = 0uLL;
    v37 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v36, __p, &v121, 2uLL);
    addr_obj::venue::Template::Template(v53, &v50, &v48, &v46, &v36);
    std::string::basic_string[abi:ne200100]<0>(v110, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v111, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v112, "ja");
    std::string::basic_string[abi:ne200100]<0>(v113, "ko");
    memset(v27, 0, sizeof(v27));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v27, v110, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v103, "CN");
    std::string::basic_string[abi:ne200100]<0>(v105, "HK");
    std::string::basic_string[abi:ne200100]<0>(v106, "TW");
    std::string::basic_string[abi:ne200100]<0>(v107, "JP");
    std::string::basic_string[abi:ne200100]<0>(v108, "KO");
    memset(v26, 0, sizeof(v26));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v26, v103, &v109, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v154, v53, v27, v26);
    qword_1EA904FB8 = 0;
    unk_1EA904FC0 = 0;
    qword_1EA904FC8 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904FB8, v150, &v156, 2uLL);
    for (i = 144; i != -144; i -= 144)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v150[i / 0x18]);
    }

    v102 = v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
    for (j = 0; j != -15; j -= 3)
    {
      if (SHIBYTE(v108[j + 2]) < 0)
      {
        operator delete(v108[j]);
      }
    }

    v103[0] = v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v103);
    for (k = 0; k != -12; k -= 3)
    {
      if (SHIBYTE(v113[k + 2]) < 0)
      {
        operator delete(v113[k]);
      }
    }

    addr_obj::venue::Template::~Template(v53);
    v103[0] = &v36;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v103);
    for (m = 12; m != -12; m -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[m]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (v46)
    {
      *(&v46 + 1) = v46;
      operator delete(v46);
    }

    if (v48)
    {
      *(&v48 + 1) = v48;
      operator delete(v48);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    __p[0] = &v55;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(v129) < 0)
    {
      operator delete(v127);
    }

    __p[0] = &v58;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(v131) < 0)
    {
      operator delete(v130);
    }

    addr_obj::venue::Template::~Template(&v101);
    __p[0] = &v81;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (n = 288; n != -96; n -= 96)
    {
      addr_obj::venue::Decorator::~Decorator((&v137.__r_.__value_.__l.__data_ + n));
    }

    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61);
    }

    if (v136 < 0)
    {
      operator delete(v135[0]);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    __cxa_guard_release(&qword_1EA904FD0);
  }

  if ((atomic_load_explicit(&qword_1EA904FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA904FF0))
  {
    v148 = xmmword_187FB6110;
    v149 = 6;
    v100 = 0;
    v98 = 0;
    v99 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v98, &v148, v150, 3uLL);
    v96 = 0;
    v95 = 0;
    v97 = 0;
    v28[0] = 1;
    v27[0] = 0;
    addr_obj::venue::Field::Field(&v144, v28, v27);
    v26[0] = 4;
    v102 = 1;
    addr_obj::venue::Field::Field(v145, v26, &v102);
    v91 = 6;
    v90 = 2;
    addr_obj::venue::Field::Field(v146, &v91, &v90);
    v93 = 0;
    v92 = 0;
    v94 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v92, &v144, &v147, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v79, "");
    std::string::basic_string[abi:ne200100]<0>(v77, "");
    std::string::basic_string[abi:ne200100]<0>(v75, "");
    std::string::basic_string[abi:ne200100]<0>(v73, ", ");
    addr_obj::venue::Decorator::Decorator(v150, v79, v77, v75, v73);
    memset(v154, 0, sizeof(v154));
    v153 = 0u;
    v152 = 0u;
    v151 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v71, "");
    std::string::basic_string[abi:ne200100]<0>(v69, "-");
    std::string::basic_string[abi:ne200100]<0>(v67, "");
    std::string::basic_string[abi:ne200100]<0>(v65, ", ");
    addr_obj::venue::Decorator::Decorator(v155, v71, v69, v67, v65);
    v82 = 0;
    v81 = 0;
    v83 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v81, v150, &v156, 3uLL);
    addr_obj::venue::Template::Template(&v101, &v98, &v95, &v92, &v81);
    std::string::basic_string[abi:ne200100]<0>(v135, "qq");
    v63 = 0uLL;
    v64 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v63, v135, &v137, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v133, "ZZZ");
    v61 = 0uLL;
    v62 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v61, v133, v135, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v137, &v101, &v63, &v61);
    v130 = xmmword_187FB6110;
    v131 = 6;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v58, &v130, &v132, 3uLL);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v89 = 1;
    v88 = 0;
    addr_obj::venue::Field::Field(&v121, &v89, &v88);
    v87 = 4;
    v86 = 1;
    addr_obj::venue::Field::Field(v122, &v87, &v86);
    v85 = 6;
    v84 = 0;
    addr_obj::venue::Field::Field(v123, &v85, &v84);
    v128 = 0;
    v127 = 0;
    v129 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v127, &v121, &v124, 3uLL);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    *__p = 0u;
    v115 = 0u;
    std::string::basic_string[abi:ne200100]<0>(&v125, " ");
    std::string::basic_string[abi:ne200100]<0>(&v48, "");
    std::string::basic_string[abi:ne200100]<0>(&v46, "-");
    std::string::basic_string[abi:ne200100]<0>(&v36, "");
    addr_obj::venue::Decorator::Decorator(v120, &v125, &v48, &v46, &v36);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v50, __p, &v121, 2uLL);
    addr_obj::venue::Template::Template(v53, &v58, &v55, &v127, &v50);
    std::string::basic_string[abi:ne200100]<0>(v110, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v111, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v112, "ja");
    std::string::basic_string[abi:ne200100]<0>(v113, "ko");
    v34 = 0uLL;
    v35 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v34, v110, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v103, "CN");
    std::string::basic_string[abi:ne200100]<0>(v105, "HK");
    std::string::basic_string[abi:ne200100]<0>(v106, "TW");
    std::string::basic_string[abi:ne200100]<0>(v107, "JP");
    std::string::basic_string[abi:ne200100]<0>(v108, "KO");
    v32 = 0uLL;
    v33 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v32, v103, &v109, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v142, v53, &v34, &v32);
    qword_1EA904FD8 = 0;
    unk_1EA904FE0 = 0;
    qword_1EA904FE8 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA904FD8, &v137, &v143, 2uLL);
    for (ii = 144; ii != -144; ii -= 144)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate((&v137 + ii));
    }

    v30[0] = &v32;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v30);
    for (jj = 0; jj != -15; jj -= 3)
    {
      if (SHIBYTE(v108[jj + 2]) < 0)
      {
        operator delete(v108[jj]);
      }
    }

    v103[0] = &v34;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v103);
    for (kk = 0; kk != -12; kk -= 3)
    {
      if (SHIBYTE(v113[kk + 2]) < 0)
      {
        operator delete(v113[kk]);
      }
    }

    addr_obj::venue::Template::~Template(v53);
    v103[0] = &v50;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v103);
    for (mm = 12; mm != -12; mm -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[mm]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v126) < 0)
    {
      operator delete(v125);
    }

    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    __p[0] = &v61;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    __p[0] = &v63;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v136 < 0)
    {
      operator delete(v135[0]);
    }

    addr_obj::venue::Template::~Template(&v101);
    __p[0] = &v81;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (nn = 192; nn != -96; nn -= 96)
    {
      addr_obj::venue::Decorator::~Decorator(&v150[nn / 0x18].__r_.__value_.__l.__data_);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    __cxa_guard_release(&qword_1EA904FF0);
  }

  if ((atomic_load_explicit(&qword_1EA905010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905010))
  {
    LODWORD(v137.__r_.__value_.__l.__data_) = 1;
    v138 = 0;
    *&v137.__r_.__value_.__r.__words[1] = 0uLL;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v137.__r_.__value_.__l.__size_, qword_1EA904FB8, unk_1EA904FC0, 0x8E38E38E38E38E39 * ((unk_1EA904FC0 - qword_1EA904FB8) >> 4));
    v139 = 0;
    memset(v140, 0, 24);
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v140, qword_1EA904FD8, unk_1EA904FE0, 0x8E38E38E38E38E39 * ((unk_1EA904FE0 - qword_1EA904FD8) >> 4));
    std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA904FF8, &v137, 2);
    for (i1 = 40; i1 != -24; i1 -= 32)
    {
      v150[0].__r_.__value_.__r.__words[0] = &v137 + i1;
      std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v150);
    }

    __cxa_guard_release(&qword_1EA905010);
  }

  v2 = qword_1EA905000;
  if (!qword_1EA905000)
  {
    goto LABEL_12;
  }

  v3 = &qword_1EA905000;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_1EA905000 || *(v3 + 8) > a1)
  {
LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v137);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v137, "Invalid LabelPattern enum: ", 27);
    v6 = MEMORY[0x18CFD1C40](v5, a1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; library version: ", 19);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v150);
      std::stringbuf::str();
      if ((SBYTE7(v115) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((SBYTE7(v115) & 0x80u) == 0)
      {
        v10 = BYTE7(v115);
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, v9, v10);
      if (SBYTE7(v115) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(v103, "ShortWithUpper");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v53, "");
      addr_obj::Logger::log(16, __p, 290, v103, &v101, v53);
      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (v104 < 0)
      {
        operator delete(v103[0]);
      }

      if (SBYTE7(v115) < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v150);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v137, "; at ", 5);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ":", 1);
    MEMORY[0x18CFD1C40](v24, 290);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v150, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, &v150[0].__r_.__value_.__l.__data_, __p);
  }

  return v3 + 5;
}

void sub_18683959C()
{
  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(STACK[0x808]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v2);
    JUMPOUT(0x18683962CLL);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

uint64_t *sub_186839634(uint64_t a1)
{
  v166 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EA905030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905030))
  {
    v113 = xmmword_187FB6128;
    v114 = 5;
    v123 = 0;
    v122 = 0uLL;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v122, &v113, &v115, 3uLL);
    v99 = 0;
    v98 = 0;
    v100 = 0;
    v97 = 1;
    v96 = 0;
    addr_obj::venue::Field::Field(&v117, &v97, &v96);
    v95 = 2;
    v94 = 1;
    addr_obj::venue::Field::Field(&v118, &v95, &v94);
    v93 = 3;
    v92 = 2;
    addr_obj::venue::Field::Field(&v119, &v93, &v92);
    v91 = 5;
    v90 = 3;
    addr_obj::venue::Field::Field(&v120, &v91, &v90);
    v158[1] = 0;
    v158[0] = 0;
    v159 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(v158, &v117, &v121, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(&v85, "");
    std::string::basic_string[abi:ne200100]<0>(&v83, "");
    std::string::basic_string[abi:ne200100]<0>(v81, "");
    std::string::basic_string[abi:ne200100]<0>(v79, " ");
    addr_obj::venue::Decorator::Decorator(&v151, &v85, &v83, v81, v79);
    std::string::basic_string[abi:ne200100]<0>(v77, "");
    std::string::basic_string[abi:ne200100]<0>(v75, "");
    std::string::basic_string[abi:ne200100]<0>(v73, "");
    std::string::basic_string[abi:ne200100]<0>(v71, ", ");
    addr_obj::venue::Decorator::Decorator(v155, v77, v75, v73, v71);
    memset(&v156[48], 0, 96);
    std::string::basic_string[abi:ne200100]<0>(v69, "");
    std::string::basic_string[abi:ne200100]<0>(v67, "-");
    std::string::basic_string[abi:ne200100]<0>(&v65, "");
    std::string::basic_string[abi:ne200100]<0>(&v63, ", ");
    addr_obj::venue::Decorator::Decorator(v157, v69, v67, &v65, &v63);
    v88 = 0;
    v87 = 0;
    v89 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v87, &v151, v158, 4uLL);
    addr_obj::venue::Template::Template(&v102, &v122, &v98, v158, &v87);
    std::string::basic_string[abi:ne200100]<0>(v148, "qq");
    v60 = 0;
    v61 = 0;
    v62 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v60, v148, &v150, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(&v145, "ZZZ");
    v57 = 0;
    v58 = 0;
    v59 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v57, &v145, v148, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v160, &v102, &v60, &v57);
    *v143 = xmmword_187FB6128;
    v144 = 5;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v52, v143, &v145, 3uLL);
    v50 = 0uLL;
    v51 = 0;
    v46 = 0;
    v47 = 1;
    addr_obj::venue::Field::Field(&v107, &v47, &v46);
    v44 = 0;
    v45 = 2;
    addr_obj::venue::Field::Field(&v108, &v45, &v44);
    v43 = 3;
    v42 = 1;
    addr_obj::venue::Field::Field(&v110, &v43, &v42);
    v40 = 0;
    v41 = 5;
    addr_obj::venue::Field::Field(v111, &v41, &v40);
    v48 = 0uLL;
    v49 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v48, &v107, v112, 4uLL);
    v141 = 0u;
    v140 = 0u;
    v139 = 0u;
    v138 = 0u;
    v137 = 0u;
    *__p = 0u;
    std::string::basic_string[abi:ne200100]<0>(&v36, " ");
    std::string::basic_string[abi:ne200100]<0>(&v34, "");
    std::string::basic_string[abi:ne200100]<0>(v32, "-");
    std::string::basic_string[abi:ne200100]<0>(v30, "");
    addr_obj::venue::Decorator::Decorator(v142, &v36, &v34, v32, v30);
    v38 = 0uLL;
    v39 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v38, __p, v143, 2uLL);
    addr_obj::venue::Template::Template(v55, &v52, &v50, &v48, &v38);
    std::string::basic_string[abi:ne200100]<0>(v132, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v133, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v134, "ja");
    std::string::basic_string[abi:ne200100]<0>(v135, "ko");
    memset(v29, 0, sizeof(v29));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v29, v132, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v125, "CN");
    std::string::basic_string[abi:ne200100]<0>(v127, "HK");
    std::string::basic_string[abi:ne200100]<0>(v128, "TW");
    std::string::basic_string[abi:ne200100]<0>(v129, "JP");
    std::string::basic_string[abi:ne200100]<0>(v130, "KO");
    memset(v28, 0, sizeof(v28));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v28, v125, &v131, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v164, v55, v29, v28);
    qword_1EA905018 = 0;
    unk_1EA905020 = 0;
    qword_1EA905028 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905018, v160, &v166, 2uLL);
    for (i = 144; i != -144; i -= 144)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v160[i / 0x18]);
    }

    v101 = v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v101);
    for (j = 0; j != -15; j -= 3)
    {
      if (SHIBYTE(v130[j + 2]) < 0)
      {
        operator delete(v130[j]);
      }
    }

    v125[0] = v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v125);
    for (k = 0; k != -12; k -= 3)
    {
      if (SHIBYTE(v135[k + 2]) < 0)
      {
        operator delete(v135[k]);
      }
    }

    addr_obj::venue::Template::~Template(v55);
    v125[0] = &v38;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v125);
    for (m = 12; m != -12; m -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[m]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    if (v48)
    {
      *(&v48 + 1) = v48;
      operator delete(v48);
    }

    if (v50)
    {
      *(&v50 + 1) = v50;
      operator delete(v50);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    __p[0] = &v57;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(v147) < 0)
    {
      operator delete(v145);
    }

    __p[0] = &v60;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148[0]);
    }

    addr_obj::venue::Template::~Template(&v102);
    __p[0] = &v87;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (n = 288; n != -96; n -= 96)
    {
      addr_obj::venue::Decorator::~Decorator((&v151.__r_.__value_.__l.__data_ + n));
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    if (v82 < 0)
    {
      operator delete(v81[0]);
    }

    if (SHIBYTE(v84) < 0)
    {
      operator delete(v83);
    }

    if (SHIBYTE(v86) < 0)
    {
      operator delete(v85);
    }

    if (v158[0])
    {
      v158[1] = v158[0];
      operator delete(v158[0]);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v122)
    {
      *(&v122 + 1) = v122;
      operator delete(v122);
    }

    __cxa_guard_release(&qword_1EA905030);
  }

  if ((atomic_load_explicit(&qword_1EA905050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905050))
  {
    *v158 = xmmword_187FB6128;
    v159 = 5;
    v100 = 0;
    v98 = 0;
    v99 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v98, v158, v160, 3uLL);
    v88 = 0;
    v87 = 0;
    v89 = 0;
    v30[0] = 1;
    v29[0] = 0;
    addr_obj::venue::Field::Field(&v122, v30, v29);
    v28[0] = 3;
    v101 = 1;
    addr_obj::venue::Field::Field(&v123, v28, &v101);
    v97 = 5;
    v96 = 2;
    addr_obj::venue::Field::Field(&v124, &v97, &v96);
    v85 = 0uLL;
    v86 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v85, &v122, v125, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v81, "");
    std::string::basic_string[abi:ne200100]<0>(v79, "");
    std::string::basic_string[abi:ne200100]<0>(v77, "");
    std::string::basic_string[abi:ne200100]<0>(v75, ", ");
    addr_obj::venue::Decorator::Decorator(v160, v81, v79, v77, v75);
    v163 = 0u;
    memset(v164, 0, sizeof(v164));
    v161 = 0u;
    v162 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v73, "");
    std::string::basic_string[abi:ne200100]<0>(v71, "-");
    std::string::basic_string[abi:ne200100]<0>(v69, "");
    std::string::basic_string[abi:ne200100]<0>(v67, ", ");
    addr_obj::venue::Decorator::Decorator(v165, v73, v71, v69, v67);
    v83 = 0uLL;
    v84 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v83, v160, &v166, 3uLL);
    addr_obj::venue::Template::Template(v55, &v98, &v87, &v85, &v83);
    std::string::basic_string[abi:ne200100]<0>(v132, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v133, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v134, "ja");
    std::string::basic_string[abi:ne200100]<0>(v135, "ko");
    v65 = 0uLL;
    v66 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v65, v132, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v125, "CN");
    std::string::basic_string[abi:ne200100]<0>(v127, "HK");
    std::string::basic_string[abi:ne200100]<0>(v128, "TW");
    std::string::basic_string[abi:ne200100]<0>(v129, "JP");
    std::string::basic_string[abi:ne200100]<0>(v130, "KO");
    v63 = 0uLL;
    v64 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v63, v125, &v131, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v151, v55, &v65, &v63);
    *v148 = xmmword_187FB6128;
    v149 = 5;
    v61 = 0;
    v62 = 0;
    v60 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v60, v148, &v150, 3uLL);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v95 = 1;
    v94 = 0;
    addr_obj::venue::Field::Field(&v113, &v95, &v94);
    v93 = 3;
    v92 = 1;
    addr_obj::venue::Field::Field(&v114, &v93, &v92);
    v91 = 5;
    v90 = 0;
    addr_obj::venue::Field::Field(&v116, &v91, &v90);
    v146 = 0;
    v145 = 0;
    v147 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v145, &v113, &v117, 3uLL);
    v141 = 0u;
    v140 = 0u;
    v139 = 0u;
    v138 = 0u;
    v137 = 0u;
    *__p = 0u;
    std::string::basic_string[abi:ne200100]<0>(v143, " ");
    std::string::basic_string[abi:ne200100]<0>(&v50, "");
    std::string::basic_string[abi:ne200100]<0>(&v48, "-");
    std::string::basic_string[abi:ne200100]<0>(&v38, "");
    addr_obj::venue::Decorator::Decorator(v142, v143, &v50, &v48, &v38);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v52, __p, v143, 2uLL);
    addr_obj::venue::Template::Template(&v117, &v60, &v57, &v145, &v52);
    std::string::basic_string[abi:ne200100]<0>(&v107, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(&v109, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v111, "ja");
    std::string::basic_string[abi:ne200100]<0>(v112 + 1, "ko");
    v36 = 0uLL;
    v37 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v36, &v107, &v113, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(&v102, "CN");
    std::string::basic_string[abi:ne200100]<0>(v103, "HK");
    std::string::basic_string[abi:ne200100]<0>(v104, "TW");
    std::string::basic_string[abi:ne200100]<0>(v105, "JP");
    std::string::basic_string[abi:ne200100]<0>(v106, "KO");
    v34 = 0uLL;
    v35 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v34, &v102, &v107, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v156, &v117, &v36, &v34);
    qword_1EA905038 = 0;
    unk_1EA905040 = 0;
    qword_1EA905048 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905038, &v151, v157, 2uLL);
    for (ii = 144; ii != -144; ii -= 144)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate((&v151 + ii));
    }

    v32[0] = &v34;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
    for (jj = 0; jj != -15; jj -= 3)
    {
      if (SHIBYTE(v106[jj + 2]) < 0)
      {
        operator delete(v106[jj]);
      }
    }

    v102.__r_.__value_.__r.__words[0] = &v36;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
    for (kk = 0; kk != -96; kk -= 24)
    {
      if (*(&v112[1] + kk + 15) < 0)
      {
        operator delete(*(v112 + kk + 8));
      }
    }

    addr_obj::venue::Template::~Template(&v117);
    v102.__r_.__value_.__r.__words[0] = &v52;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v102);
    for (mm = 12; mm != -12; mm -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[mm]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v144) < 0)
    {
      operator delete(v143[0]);
    }

    if (v145)
    {
      v146 = v145;
      operator delete(v145);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    __p[0] = &v63;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    for (nn = 0; nn != -15; nn -= 3)
    {
      if (SHIBYTE(v130[nn + 2]) < 0)
      {
        operator delete(v130[nn]);
      }
    }

    __p[0] = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    for (i1 = 0; i1 != -12; i1 -= 3)
    {
      if (SHIBYTE(v135[i1 + 2]) < 0)
      {
        operator delete(v135[i1]);
      }
    }

    addr_obj::venue::Template::~Template(v55);
    __p[0] = &v83;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (i2 = 192; i2 != -96; i2 -= 96)
    {
      addr_obj::venue::Decorator::~Decorator(&v160[i2 / 0x18].__r_.__value_.__l.__data_);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    if (v82 < 0)
    {
      operator delete(v81[0]);
    }

    if (v85)
    {
      *(&v85 + 1) = v85;
      operator delete(v85);
    }

    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    __cxa_guard_release(&qword_1EA905050);
  }

  if ((atomic_load_explicit(&qword_1EA905070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905070))
  {
    LODWORD(v151.__r_.__value_.__l.__data_) = 1;
    v152 = 0;
    *&v151.__r_.__value_.__r.__words[1] = 0uLL;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v151.__r_.__value_.__l.__size_, qword_1EA905018, unk_1EA905020, 0x8E38E38E38E38E39 * ((unk_1EA905020 - qword_1EA905018) >> 4));
    v153 = 0;
    memset(v154, 0, 24);
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v154, qword_1EA905038, unk_1EA905040, 0x8E38E38E38E38E39 * ((unk_1EA905040 - qword_1EA905038) >> 4));
    std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA905058, &v151, 2);
    for (i3 = 40; i3 != -24; i3 -= 32)
    {
      v160[0].__r_.__value_.__r.__words[0] = &v151 + i3;
      std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v160);
    }

    __cxa_guard_release(&qword_1EA905070);
  }

  v2 = qword_1EA905060;
  if (!qword_1EA905060)
  {
    goto LABEL_12;
  }

  v3 = &qword_1EA905060;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_1EA905060 || *(v3 + 8) > a1)
  {
LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v151);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v151, "Invalid LabelPattern enum: ", 27);
    v6 = MEMORY[0x18CFD1C40](v5, a1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; library version: ", 19);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v160);
      std::stringbuf::str();
      if ((SBYTE7(v137) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((SBYTE7(v137) & 0x80u) == 0)
      {
        v10 = BYTE7(v137);
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, v9, v10);
      if (SBYTE7(v137) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(v125, "ShortWithLongUpper");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v55, "");
      addr_obj::Logger::log(16, __p, 345, v125, &v102, v55);
      if (v56 < 0)
      {
        operator delete(v55[0]);
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if (v126 < 0)
      {
        operator delete(v125[0]);
      }

      if (SBYTE7(v137) < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v160);
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v151, "; at ", 5);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ":", 1);
    MEMORY[0x18CFD1C40](v26, 345);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v160, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, &v160[0].__r_.__value_.__l.__data_, __p);
  }

  return v3 + 5;
}

void sub_18683B9DC()
{
  if (SLOBYTE(STACK[0x5F7]) < 0)
  {
    operator delete(STACK[0x5E0]);
  }

  if (SLOBYTE(STACK[0x89F]) < 0)
  {
    operator delete(STACK[0x888]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v2);
    JUMPOUT(0x18683BA6CLL);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

uint64_t *sub_18683BA74(uint64_t a1)
{
  v156 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EA905090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905090))
  {
    v148 = xmmword_187FB6140;
    v149 = 6;
    v100 = 0;
    v98 = 0;
    v99 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v98, &v148, v150, 3uLL);
    v96 = 0;
    v95 = 0;
    v97 = 0;
    v91 = 1;
    v90 = 0;
    addr_obj::venue::Field::Field(&v144, &v91, &v90);
    v89 = 2;
    v88 = 1;
    addr_obj::venue::Field::Field(v145, &v89, &v88);
    v87 = 3;
    v86 = 2;
    addr_obj::venue::Field::Field(v146, &v87, &v86);
    v85 = 6;
    v84 = 3;
    addr_obj::venue::Field::Field(&v147, &v85, &v84);
    v93 = 0;
    v92 = 0;
    v94 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v92, &v144, &v148, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v79, "");
    std::string::basic_string[abi:ne200100]<0>(v77, "");
    std::string::basic_string[abi:ne200100]<0>(v75, "");
    std::string::basic_string[abi:ne200100]<0>(v73, " ");
    addr_obj::venue::Decorator::Decorator(&v137, v79, v77, v75, v73);
    std::string::basic_string[abi:ne200100]<0>(v71, "");
    std::string::basic_string[abi:ne200100]<0>(v69, "");
    std::string::basic_string[abi:ne200100]<0>(v67, "");
    std::string::basic_string[abi:ne200100]<0>(v65, ", ");
    addr_obj::venue::Decorator::Decorator(v141, v71, v69, v67, v65);
    memset(&v142[48], 0, 96);
    std::string::basic_string[abi:ne200100]<0>(&v63, "");
    std::string::basic_string[abi:ne200100]<0>(v135, "-");
    std::string::basic_string[abi:ne200100]<0>(&v61, "");
    std::string::basic_string[abi:ne200100]<0>(v133, ", ");
    addr_obj::venue::Decorator::Decorator(&v143, &v63, v135, &v61, v133);
    v82 = 0;
    v81 = 0;
    v83 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v81, &v137, &v144, 4uLL);
    addr_obj::venue::Template::Template(&v101, &v98, &v95, &v92, &v81);
    std::string::basic_string[abi:ne200100]<0>(&v130, "qq");
    v58 = 0;
    v59 = 0;
    v60 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v58, &v130, &v132, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(&v127, "ZZZ");
    v55 = 0;
    v56 = 0;
    v57 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v55, &v127, &v130, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v150, &v101, &v58, &v55);
    v125 = xmmword_187FB6140;
    v126 = 6;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v50, &v125, &v127, 3uLL);
    v48 = 0uLL;
    v49 = 0;
    v44 = 0;
    v45 = 1;
    addr_obj::venue::Field::Field(&v121, &v45, &v44);
    v42 = 0;
    v43 = 2;
    addr_obj::venue::Field::Field(v122, &v43, &v42);
    v41 = 3;
    v40 = 1;
    addr_obj::venue::Field::Field(v123, &v41, &v40);
    v38 = 0;
    v39 = 6;
    addr_obj::venue::Field::Field(&v124, &v39, &v38);
    v46 = 0uLL;
    v47 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v46, &v121, &v125, 4uLL);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    *__p = 0u;
    v115 = 0u;
    std::string::basic_string[abi:ne200100]<0>(&v34, " ");
    std::string::basic_string[abi:ne200100]<0>(&v32, "");
    std::string::basic_string[abi:ne200100]<0>(v30, "-");
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    addr_obj::venue::Decorator::Decorator(v120, &v34, &v32, v30, v28);
    v36 = 0uLL;
    v37 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v36, __p, &v121, 2uLL);
    addr_obj::venue::Template::Template(v53, &v50, &v48, &v46, &v36);
    std::string::basic_string[abi:ne200100]<0>(v110, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v111, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v112, "ja");
    std::string::basic_string[abi:ne200100]<0>(v113, "ko");
    memset(v27, 0, sizeof(v27));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v27, v110, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v103, "CN");
    std::string::basic_string[abi:ne200100]<0>(v105, "HK");
    std::string::basic_string[abi:ne200100]<0>(v106, "TW");
    std::string::basic_string[abi:ne200100]<0>(v107, "JP");
    std::string::basic_string[abi:ne200100]<0>(v108, "KO");
    memset(v26, 0, sizeof(v26));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v26, v103, &v109, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v154, v53, v27, v26);
    qword_1EA905078 = 0;
    unk_1EA905080 = 0;
    qword_1EA905088 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905078, v150, &v156, 2uLL);
    for (i = 144; i != -144; i -= 144)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v150[i / 0x18]);
    }

    v102 = v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
    for (j = 0; j != -15; j -= 3)
    {
      if (SHIBYTE(v108[j + 2]) < 0)
      {
        operator delete(v108[j]);
      }
    }

    v103[0] = v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v103);
    for (k = 0; k != -12; k -= 3)
    {
      if (SHIBYTE(v113[k + 2]) < 0)
      {
        operator delete(v113[k]);
      }
    }

    addr_obj::venue::Template::~Template(v53);
    v103[0] = &v36;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v103);
    for (m = 12; m != -12; m -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[m]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (v46)
    {
      *(&v46 + 1) = v46;
      operator delete(v46);
    }

    if (v48)
    {
      *(&v48 + 1) = v48;
      operator delete(v48);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    __p[0] = &v55;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(v129) < 0)
    {
      operator delete(v127);
    }

    __p[0] = &v58;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(v131) < 0)
    {
      operator delete(v130);
    }

    addr_obj::venue::Template::~Template(&v101);
    __p[0] = &v81;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (n = 288; n != -96; n -= 96)
    {
      addr_obj::venue::Decorator::~Decorator((&v137.__r_.__value_.__l.__data_ + n));
    }

    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61);
    }

    if (v136 < 0)
    {
      operator delete(v135[0]);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    __cxa_guard_release(&qword_1EA905090);
  }

  if ((atomic_load_explicit(&qword_1EA9050B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9050B0))
  {
    v148 = xmmword_187FB6140;
    v149 = 6;
    v100 = 0;
    v98 = 0;
    v99 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v98, &v148, v150, 3uLL);
    v96 = 0;
    v95 = 0;
    v97 = 0;
    v28[0] = 1;
    v27[0] = 0;
    addr_obj::venue::Field::Field(&v144, v28, v27);
    v26[0] = 3;
    v102 = 1;
    addr_obj::venue::Field::Field(v145, v26, &v102);
    v91 = 6;
    v90 = 2;
    addr_obj::venue::Field::Field(v146, &v91, &v90);
    v93 = 0;
    v92 = 0;
    v94 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v92, &v144, &v147, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v79, "");
    std::string::basic_string[abi:ne200100]<0>(v77, "");
    std::string::basic_string[abi:ne200100]<0>(v75, "");
    std::string::basic_string[abi:ne200100]<0>(v73, ", ");
    addr_obj::venue::Decorator::Decorator(v150, v79, v77, v75, v73);
    memset(v154, 0, sizeof(v154));
    v153 = 0u;
    v152 = 0u;
    v151 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v71, "");
    std::string::basic_string[abi:ne200100]<0>(v69, "-");
    std::string::basic_string[abi:ne200100]<0>(v67, "");
    std::string::basic_string[abi:ne200100]<0>(v65, ", ");
    addr_obj::venue::Decorator::Decorator(v155, v71, v69, v67, v65);
    v82 = 0;
    v81 = 0;
    v83 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v81, v150, &v156, 3uLL);
    addr_obj::venue::Template::Template(&v101, &v98, &v95, &v92, &v81);
    std::string::basic_string[abi:ne200100]<0>(v135, "qq");
    v63 = 0uLL;
    v64 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v63, v135, &v137, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v133, "ZZZ");
    v61 = 0uLL;
    v62 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v61, v133, v135, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v137, &v101, &v63, &v61);
    v130 = xmmword_187FB6140;
    v131 = 6;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v58, &v130, &v132, 3uLL);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v89 = 1;
    v88 = 0;
    addr_obj::venue::Field::Field(&v121, &v89, &v88);
    v87 = 3;
    v86 = 1;
    addr_obj::venue::Field::Field(v122, &v87, &v86);
    v85 = 6;
    v84 = 0;
    addr_obj::venue::Field::Field(v123, &v85, &v84);
    v128 = 0;
    v127 = 0;
    v129 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v127, &v121, &v124, 3uLL);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    *__p = 0u;
    v115 = 0u;
    std::string::basic_string[abi:ne200100]<0>(&v125, " ");
    std::string::basic_string[abi:ne200100]<0>(&v48, "");
    std::string::basic_string[abi:ne200100]<0>(&v46, "-");
    std::string::basic_string[abi:ne200100]<0>(&v36, "");
    addr_obj::venue::Decorator::Decorator(v120, &v125, &v48, &v46, &v36);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v50, __p, &v121, 2uLL);
    addr_obj::venue::Template::Template(v53, &v58, &v55, &v127, &v50);
    std::string::basic_string[abi:ne200100]<0>(v110, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v111, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v112, "ja");
    std::string::basic_string[abi:ne200100]<0>(v113, "ko");
    v34 = 0uLL;
    v35 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v34, v110, __p, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v103, "CN");
    std::string::basic_string[abi:ne200100]<0>(v105, "HK");
    std::string::basic_string[abi:ne200100]<0>(v106, "TW");
    std::string::basic_string[abi:ne200100]<0>(v107, "JP");
    std::string::basic_string[abi:ne200100]<0>(v108, "KO");
    v32 = 0uLL;
    v33 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v32, v103, &v109, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v142, v53, &v34, &v32);
    qword_1EA905098 = 0;
    unk_1EA9050A0 = 0;
    qword_1EA9050A8 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905098, &v137, &v143, 2uLL);
    for (ii = 144; ii != -144; ii -= 144)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate((&v137 + ii));
    }

    v30[0] = &v32;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v30);
    for (jj = 0; jj != -15; jj -= 3)
    {
      if (SHIBYTE(v108[jj + 2]) < 0)
      {
        operator delete(v108[jj]);
      }
    }

    v103[0] = &v34;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v103);
    for (kk = 0; kk != -12; kk -= 3)
    {
      if (SHIBYTE(v113[kk + 2]) < 0)
      {
        operator delete(v113[kk]);
      }
    }

    addr_obj::venue::Template::~Template(v53);
    v103[0] = &v50;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v103);
    for (mm = 12; mm != -12; mm -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[mm]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v126) < 0)
    {
      operator delete(v125);
    }

    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    __p[0] = &v61;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    __p[0] = &v63;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v136 < 0)
    {
      operator delete(v135[0]);
    }

    addr_obj::venue::Template::~Template(&v101);
    __p[0] = &v81;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (nn = 192; nn != -96; nn -= 96)
    {
      addr_obj::venue::Decorator::~Decorator(&v150[nn / 0x18].__r_.__value_.__l.__data_);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    __cxa_guard_release(&qword_1EA9050B0);
  }

  if ((atomic_load_explicit(&qword_1EA9050D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9050D0))
  {
    LODWORD(v137.__r_.__value_.__l.__data_) = 1;
    v138 = 0;
    *&v137.__r_.__value_.__r.__words[1] = 0uLL;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(&v137.__r_.__value_.__l.__size_, qword_1EA905078, unk_1EA905080, 0x8E38E38E38E38E39 * ((unk_1EA905080 - qword_1EA905078) >> 4));
    v139 = 0;
    memset(v140, 0, 24);
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v140, qword_1EA905098, unk_1EA9050A0, 0x8E38E38E38E38E39 * ((unk_1EA9050A0 - qword_1EA905098) >> 4));
    std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA9050B8, &v137, 2);
    for (i1 = 40; i1 != -24; i1 -= 32)
    {
      v150[0].__r_.__value_.__r.__words[0] = &v137 + i1;
      std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v150);
    }

    __cxa_guard_release(&qword_1EA9050D0);
  }

  v2 = qword_1EA9050C0;
  if (!qword_1EA9050C0)
  {
    goto LABEL_12;
  }

  v3 = &qword_1EA9050C0;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_1EA9050C0 || *(v3 + 8) > a1)
  {
LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v137);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v137, "Invalid LabelPattern enum: ", 27);
    v6 = MEMORY[0x18CFD1C40](v5, a1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; library version: ", 19);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v150);
      std::stringbuf::str();
      if ((SBYTE7(v115) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((SBYTE7(v115) & 0x80u) == 0)
      {
        v10 = BYTE7(v115);
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, v9, v10);
      if (SBYTE7(v115) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(v103, "ShortWithLongLowerShortUpper");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v53, "");
      addr_obj::Logger::log(16, __p, 400, v103, &v101, v53);
      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (v104 < 0)
      {
        operator delete(v103[0]);
      }

      if (SBYTE7(v115) < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v150);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v137, "; at ", 5);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ":", 1);
    MEMORY[0x18CFD1C40](v24, 400);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v150, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, &v150[0].__r_.__value_.__l.__data_, __p);
  }

  return v3 + 5;
}

void sub_18683DCE4()
{
  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(STACK[0x808]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v2);
    JUMPOUT(0x18683DD74);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

uint64_t *sub_18683DD7C(uint64_t a1)
{
  v135 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EA905210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905210))
  {
    v129 = 1;
    v77 = 0;
    v75 = 0;
    v76 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v75, &v129, &v130, 1uLL);
    *v128 = xmmword_187FB6080;
    v74 = 0;
    v72 = 0;
    v73 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v72, v128, &v129, 2uLL);
    v124 = 1;
    v68 = 0;
    addr_obj::venue::Field::Field(&v125, &v124, &v68);
    v67 = 2;
    v66 = 1;
    addr_obj::venue::Field::Field(v126, &v67, &v66);
    v64 = 0;
    v65 = 3;
    addr_obj::venue::Field::Field(&v127, &v65, &v64);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v69, &v125, v128, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v59, "");
    std::string::basic_string[abi:ne200100]<0>(v57, "");
    std::string::basic_string[abi:ne200100]<0>(v55, "");
    std::string::basic_string[abi:ne200100]<0>(v53, " ");
    addr_obj::venue::Decorator::Decorator(&v80, v59, v57, v55, v53);
    std::string::basic_string[abi:ne200100]<0>(&v51, "");
    std::string::basic_string[abi:ne200100]<0>(v122, "");
    std::string::basic_string[abi:ne200100]<0>(&v49, "");
    std::string::basic_string[abi:ne200100]<0>(v120, ", ");
    addr_obj::venue::Decorator::Decorator(v84, &v51, v122, &v49, v120);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v61, &v80, v86, 2uLL);
    addr_obj::venue::Template::Template(&v78, &v75, &v72, &v69, &v61);
    std::string::basic_string[abi:ne200100]<0>(&v117, "qq");
    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v46, &v117, v120, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v115, "ZZZ");
    v43 = 0;
    v44 = 0;
    v45 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v43, v115, &v117, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v130, &v78, &v46, &v43);
    v113 = 1;
    v42 = 0;
    v41 = 0uLL;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v41, &v113, v114, 1uLL);
    *v112 = xmmword_187FB6080;
    v40 = 0;
    v39 = 0uLL;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v39, v112, &v113, 2uLL);
    v35 = 0;
    v36 = 1;
    addr_obj::venue::Field::Field(&v109, &v36, &v35);
    v33 = 0;
    v34 = 2;
    addr_obj::venue::Field::Field(v110, &v34, &v33);
    v32 = 3;
    v31 = 1;
    addr_obj::venue::Field::Field(&v111, &v32, &v31);
    v37 = 0uLL;
    v38 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v37, &v109, v112, 3uLL);
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    *__p = 0u;
    std::string::basic_string[abi:ne200100]<0>(&v27, " ");
    std::string::basic_string[abi:ne200100]<0>(&v25, "");
    std::string::basic_string[abi:ne200100]<0>(v100, "");
    std::string::basic_string[abi:ne200100]<0>(v98, "");
    addr_obj::venue::Decorator::Decorator(v108, &v27, &v25, v100, v98);
    v29 = 0uLL;
    v30 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v29, __p, &v109, 2uLL);
    addr_obj::venue::Template::Template(v114, &v41, &v39, &v37, &v29);
    std::string::basic_string[abi:ne200100]<0>(v94, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v95, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v96, "ja");
    std::string::basic_string[abi:ne200100]<0>(v97, "ko");
    memset(v24, 0, sizeof(v24));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v24, v94, v98, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(&v87, "CN");
    std::string::basic_string[abi:ne200100]<0>(v88, "HK");
    std::string::basic_string[abi:ne200100]<0>(v89, "TW");
    std::string::basic_string[abi:ne200100]<0>(v90, "JP");
    std::string::basic_string[abi:ne200100]<0>(v91, "KO");
    v93[0] = 0;
    v92 = 0;
    v93[1] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v92, &v87, &v92, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v134, v114, v24, &v92);
    qword_1EA9051F8 = 0;
    unk_1EA905200 = 0;
    qword_1EA905208 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA9051F8, &v130, &v135, 2uLL);
    for (i = 18; i != -18; i -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v131[i - 1]);
    }

    v79 = &v92;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v79);
    for (j = 0; j != -15; j -= 3)
    {
      if (SHIBYTE(v91[j + 2]) < 0)
      {
        operator delete(v91[j]);
      }
    }

    v87.__r_.__value_.__r.__words[0] = v24;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v87);
    for (k = 0; k != -12; k -= 3)
    {
      if (SHIBYTE(v97[k + 2]) < 0)
      {
        operator delete(v97[k]);
      }
    }

    addr_obj::venue::Template::~Template(v114);
    v87.__r_.__value_.__r.__words[0] = &v29;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v87);
    for (m = 12; m != -12; m -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&__p[m]);
    }

    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98[0]);
    }

    if (SHIBYTE(v101) < 0)
    {
      operator delete(v100[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (v37)
    {
      *(&v37 + 1) = v37;
      operator delete(v37);
    }

    if (v39)
    {
      *(&v39 + 1) = v39;
      operator delete(v39);
    }

    if (v41)
    {
      *(&v41 + 1) = v41;
      operator delete(v41);
    }

    __p[0] = &v43;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(v116) < 0)
    {
      operator delete(v115[0]);
    }

    __p[0] = &v46;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(v119) < 0)
    {
      operator delete(v117);
    }

    addr_obj::venue::Template::~Template(&v78);
    __p[0] = &v61;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (n = 96; n != -96; n -= 96)
    {
      addr_obj::venue::Decorator::~Decorator((&v80.__r_.__value_.__l.__data_ + n));
    }

    if (v121 < 0)
    {
      operator delete(v120[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (v123 < 0)
    {
      operator delete(v122[0]);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    __cxa_guard_release(&qword_1EA905210);
  }

  if ((atomic_load_explicit(&qword_1EA905230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905230))
  {
    v92 = 1;
    v77 = 0;
    v75 = 0;
    v76 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v75, &v92, v93, 1uLL);
    *v100 = xmmword_187FB6080;
    v74 = 0;
    v72 = 0;
    v73 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v72, v100, &v101, 2uLL);
    v128[0] = 1;
    v112[0] = 0;
    addr_obj::venue::Field::Field(&v125, v128, v112);
    v79 = 3;
    v129 = 0;
    addr_obj::venue::Field::Field(v126, &v79, &v129);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v69, &v125, &v127, 2uLL);
    std::string::basic_string[abi:ne200100]<0>(v59, "");
    std::string::basic_string[abi:ne200100]<0>(v57, "");
    std::string::basic_string[abi:ne200100]<0>(v55, "");
    std::string::basic_string[abi:ne200100]<0>(v53, ", ");
    addr_obj::venue::Decorator::Decorator(&v87, v59, v57, v55, v53);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v61, &v87, v91, 1uLL);
    addr_obj::venue::Template::Template(__p, &v75, &v72, &v69, &v61);
    std::string::basic_string[abi:ne200100]<0>(v122, "qq");
    v51 = 0uLL;
    v52 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v51, v122, &v124, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v120, "ZZZ");
    v49 = 0uLL;
    v50 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v49, v120, v122, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v130, __p, &v51, &v49);
    v124 = 1;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v46, &v124, &v125, 1uLL);
    *v98 = xmmword_187FB6080;
    v119 = 0;
    v117 = 0;
    v118 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v117, v98, &v99, 2uLL);
    v67 = 0;
    v68 = 1;
    addr_obj::venue::Field::Field(&v109, &v68, &v67);
    v65 = 0;
    v66 = 3;
    addr_obj::venue::Field::Field(v110, &v66, &v65);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v43, &v109, &v111, 2uLL);
    std::string::basic_string[abi:ne200100]<0>(&v41, "");
    std::string::basic_string[abi:ne200100]<0>(&v39, "");
    std::string::basic_string[abi:ne200100]<0>(&v37, "");
    std::string::basic_string[abi:ne200100]<0>(&v29, " ");
    addr_obj::venue::Decorator::Decorator(v114, &v41, &v39, &v37, &v29);
    v115[1] = 0;
    v115[0] = 0;
    v116 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(v115, v114, v115, 1uLL);
    addr_obj::venue::Template::Template(&v78, &v46, &v117, &v43, v115);
    std::string::basic_string[abi:ne200100]<0>(v94, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v95, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v96, "ja");
    std::string::basic_string[abi:ne200100]<0>(v97, "ko");
    v27 = 0uLL;
    v28 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v27, v94, v98, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(&v80, "CN");
    std::string::basic_string[abi:ne200100]<0>(v81, "HK");
    std::string::basic_string[abi:ne200100]<0>(v82, "TW");
    std::string::basic_string[abi:ne200100]<0>(v83, "JP");
    std::string::basic_string[abi:ne200100]<0>(v84, "KO");
    v25 = 0uLL;
    v26 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v25, &v80, v85, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v134, &v78, &v27, &v25);
    qword_1EA905218 = 0;
    unk_1EA905220 = 0;
    qword_1EA905228 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905218, &v130, &v135, 2uLL);
    for (ii = 18; ii != -18; ii -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v131[ii - 1]);
    }

    v24[0] = &v25;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v24);
    for (jj = 0; jj != 0x1FFFFFFFFFFFFFF1; jj -= 3)
    {
      if (SHIBYTE(v84[0].__r_.__value_.__r.__words[jj + 2]) < 0)
      {
        operator delete(v84[jj / 3].__r_.__value_.__l.__data_);
      }
    }

    v80.__r_.__value_.__r.__words[0] = &v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v80);
    for (kk = 0; kk != -12; kk -= 3)
    {
      if (SHIBYTE(v97[kk + 2]) < 0)
      {
        operator delete(v97[kk]);
      }
    }

    addr_obj::venue::Template::~Template(&v78);
    v80.__r_.__value_.__r.__words[0] = v115;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v80);
    addr_obj::venue::Decorator::~Decorator(&v114[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v117)
    {
      v118 = v117;
      operator delete(v117);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    v80.__r_.__value_.__r.__words[0] = &v49;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v80);
    if (v121 < 0)
    {
      operator delete(v120[0]);
    }

    v80.__r_.__value_.__r.__words[0] = &v51;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v80);
    if (v123 < 0)
    {
      operator delete(v122[0]);
    }

    addr_obj::venue::Template::~Template(__p);
    v80.__r_.__value_.__r.__words[0] = &v61;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v80);
    addr_obj::venue::Decorator::~Decorator(&v87.__r_.__value_.__l.__data_);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    __cxa_guard_release(&qword_1EA905230);
  }

  if ((atomic_load_explicit(&qword_1EA905250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905250))
  {
    LODWORD(v130) = 1;
    memset(v131, 0, sizeof(v131));
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v131, qword_1EA9051F8, unk_1EA905200, 0x8E38E38E38E38E39 * ((unk_1EA905200 - qword_1EA9051F8) >> 4));
    v132 = 0;
    memset(v133, 0, 24);
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v133, qword_1EA905218, unk_1EA905220, 0x8E38E38E38E38E39 * ((unk_1EA905220 - qword_1EA905218) >> 4));
    std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA905238, &v130, 2);
    for (mm = 5; mm != -3; mm -= 4)
    {
      v80.__r_.__value_.__r.__words[0] = &v131[mm - 1];
      std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](&v80);
    }

    __cxa_guard_release(&qword_1EA905250);
  }

  v2 = qword_1EA905240;
  if (!qword_1EA905240)
  {
    goto LABEL_12;
  }

  v3 = &qword_1EA905240;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_1EA905240 || *(v3 + 8) > a1)
  {
LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v130);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v130, "Invalid LabelPattern enum: ", 27);
    v6 = MEMORY[0x18CFD1C40](v5, a1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; library version: ", 19);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v80);
      std::stringbuf::str();
      if ((SBYTE7(v103) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((SBYTE7(v103) & 0x80u) == 0)
      {
        v10 = BYTE7(v103);
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v80, v9, v10);
      if (SBYTE7(v103) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v87, "LevelLong");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v114, "");
      addr_obj::Logger::log(16, __p, 593, &v87, &v78, v114);
      if (SHIBYTE(v114[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v114[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v103) < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(&v80);
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v130, "; at ", 5);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ":", 1);
    MEMORY[0x18CFD1C40](v22, 593);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v80, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, &v80.__r_.__value_.__l.__data_, __p);
  }

  return v3 + 5;
}

void sub_18683FC38()
{
  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v2);
    JUMPOUT(0x18683FCC8);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

uint64_t *sub_18683FCD0(uint64_t a1)
{
  v125 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EA905270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905270))
  {
    v117 = 0;
    v85 = 0;
    v83 = 0;
    v84 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v83, &v117, v118, 1uLL);
    v81 = 0;
    v80 = 0;
    v82 = 0;
    v75 = 0;
    v76 = 0;
    addr_obj::venue::Field::Field(&v114, &v76, &v75);
    v73 = 0;
    v74 = 2;
    addr_obj::venue::Field::Field(v115, &v74, &v73);
    v113 = 4;
    v72 = 0;
    addr_obj::venue::Field::Field(&v116, &v113, &v72);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v77, &v114, &v117, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v67, "");
    std::string::basic_string[abi:ne200100]<0>(v65, "");
    std::string::basic_string[abi:ne200100]<0>(v63, "");
    std::string::basic_string[abi:ne200100]<0>(v61, ", ");
    addr_obj::venue::Decorator::Decorator(&v112, v67, v65, v63, v61);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v69, &v112, &v113, 1uLL);
    addr_obj::venue::Template::Template(v118, &v83, &v80, &v77, &v69);
    std::string::basic_string[abi:ne200100]<0>(v110, "qq");
    v58 = 0;
    v59 = 0;
    v60 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v58, v110, &v112, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v108, "ZZZ");
    v55 = 0;
    v56 = 0;
    v57 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v55, v108, v110, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v120, v118, &v58, &v55);
    v106[0] = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v52, v106, &v106[1], 1uLL);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v44 = 0;
    v45 = 0;
    addr_obj::venue::Field::Field(&v103, &v45, &v44);
    v42 = 0;
    v43 = 2;
    addr_obj::venue::Field::Field(v104, &v43, &v42);
    v41 = 4;
    v40 = 1;
    addr_obj::venue::Field::Field(&v105, &v41, &v40);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v46, &v103, v106, 3uLL);
    memset(v89, 0, sizeof(v89));
    *v87 = 0u;
    memset(v88, 0, sizeof(v88));
    std::string::basic_string[abi:ne200100]<0>(v35, " ");
    std::string::basic_string[abi:ne200100]<0>(v33, "");
    std::string::basic_string[abi:ne200100]<0>(v31, "");
    std::string::basic_string[abi:ne200100]<0>(v29, "");
    addr_obj::venue::Decorator::Decorator(v90, v35, v33, v31, v29);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v37, v87, v92, 2uLL);
    addr_obj::venue::Template::Template(&v106[1], &v52, &v49, &v46, &v37);
    std::string::basic_string[abi:ne200100]<0>(v99, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v100, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v101, "ja");
    std::string::basic_string[abi:ne200100]<0>(v102, "ko");
    v26 = 0;
    v27 = 0;
    v28 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, v99, &v103, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "CN");
    std::string::basic_string[abi:ne200100]<0>(v95, "HK");
    std::string::basic_string[abi:ne200100]<0>(v96, "TW");
    std::string::basic_string[abi:ne200100]<0>(v97, "JP");
    std::string::basic_string[abi:ne200100]<0>(v98, "KO");
    v23 = 0;
    v24 = 0;
    v25 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v23, __p, v99, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v124, &v106[1], &v26, &v23);
    qword_1EA905258 = 0;
    unk_1EA905260 = 0;
    qword_1EA905268 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905258, &v120, &v125, 2uLL);
    for (i = 18; i != -18; i -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v121[i - 1]);
    }

    v86 = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
    for (j = 0; j != -15; j -= 3)
    {
      if (SHIBYTE(v98[j + 2]) < 0)
      {
        operator delete(v98[j]);
      }
    }

    __p[0] = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    for (k = 0; k != -12; k -= 3)
    {
      if (SHIBYTE(v102[k + 2]) < 0)
      {
        operator delete(v102[k]);
      }
    }

    addr_obj::venue::Template::~Template(&v106[1]);
    __p[0] = &v37;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](__p);
    for (m = 12; m != -12; m -= 12)
    {
      addr_obj::venue::Decorator::~Decorator(&v87[m]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    v87[0] = &v55;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    if (v109 < 0)
    {
      operator delete(v108[0]);
    }

    v87[0] = &v58;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    if (v111 < 0)
    {
      operator delete(v110[0]);
    }

    addr_obj::venue::Template::~Template(v118);
    v87[0] = &v69;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v87);
    addr_obj::venue::Decorator::~Decorator(&v112.__r_.__value_.__l.__data_);
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    __cxa_guard_release(&qword_1EA905270);
  }

  if ((atomic_load_explicit(&qword_1EA905290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905290))
  {
    v117 = 0;
    v85 = 0;
    v83 = 0;
    v84 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v83, &v117, v118, 1uLL);
    v81 = 0;
    v80 = 0;
    v82 = 0;
    v75 = 0;
    v76 = 0;
    addr_obj::venue::Field::Field(&v114, &v76, &v75);
    v73 = 0;
    v74 = 4;
    addr_obj::venue::Field::Field(v115, &v74, &v73);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v77, &v114, &v116, 2uLL);
    std::string::basic_string[abi:ne200100]<0>(v67, "");
    std::string::basic_string[abi:ne200100]<0>(v65, "");
    std::string::basic_string[abi:ne200100]<0>(v63, "");
    std::string::basic_string[abi:ne200100]<0>(v61, ", ");
    addr_obj::venue::Decorator::Decorator(v118, v67, v65, v63, v61);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v69, v118, &v119, 1uLL);
    addr_obj::venue::Template::Template(__p, &v83, &v80, &v77, &v69);
    std::string::basic_string[abi:ne200100]<0>(v110, "qq");
    v58 = 0;
    v59 = 0;
    v60 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v58, v110, &v112, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(v108, "ZZZ");
    v55 = 0;
    v56 = 0;
    v57 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v55, v108, v110, 1uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(&v120, __p, &v58, &v55);
    v113 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v52, &v113, &v114, 1uLL);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v72 = 0;
    v106[0] = 0;
    addr_obj::venue::Field::Field(&v103, &v72, v106);
    v44 = 0;
    v45 = 4;
    addr_obj::venue::Field::Field(v104, &v45, &v44);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(&v46, &v103, &v105, 2uLL);
    std::string::basic_string[abi:ne200100]<0>(v35, "");
    std::string::basic_string[abi:ne200100]<0>(v33, "");
    std::string::basic_string[abi:ne200100]<0>(v31, "");
    std::string::basic_string[abi:ne200100]<0>(v29, " ");
    addr_obj::venue::Decorator::Decorator(&v106[1], v35, v33, v31, v29);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(&v37, &v106[1], v108, 1uLL);
    addr_obj::venue::Template::Template(&v112, &v52, &v49, &v46, &v37);
    std::string::basic_string[abi:ne200100]<0>(v99, "zh-Hans");
    std::string::basic_string[abi:ne200100]<0>(v100, "zh-Hant");
    std::string::basic_string[abi:ne200100]<0>(v101, "ja");
    std::string::basic_string[abi:ne200100]<0>(v102, "ko");
    v26 = 0;
    v27 = 0;
    v28 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, v99, &v103, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v87, "CN");
    std::string::basic_string[abi:ne200100]<0>(v88 + 1, "HK");
    std::string::basic_string[abi:ne200100]<0>(v89, "TW");
    std::string::basic_string[abi:ne200100]<0>(&v89[1] + 1, "JP");
    std::string::basic_string[abi:ne200100]<0>(v90, "KO");
    v23 = 0;
    v24 = 0;
    v25 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v23, v87, v91, 5uLL);
    addr_obj::venue::LocalizedTemplate::LocalizedTemplate(v124, &v112, &v26, &v23);
    qword_1EA905278 = 0;
    unk_1EA905280 = 0;
    qword_1EA905288 = 0;
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(&qword_1EA905278, &v120, &v125, 2uLL);
    for (n = 18; n != -18; n -= 18)
    {
      addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(&v121[n - 1]);
    }

    v86 = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
    for (ii = 0; ii != 0x1FFFFFFFFFFFFFF1; ii -= 3)
    {
      if (SHIBYTE(v90[0].__r_.__value_.__r.__words[ii + 2]) < 0)
      {
        operator delete(v90[ii / 3].__r_.__value_.__l.__data_);
      }
    }

    v87[0] = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    for (jj = 0; jj != -12; jj -= 3)
    {
      if (SHIBYTE(v102[jj + 2]) < 0)
      {
        operator delete(v102[jj]);
      }
    }

    addr_obj::venue::Template::~Template(&v112);
    v87[0] = &v37;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v87);
    addr_obj::venue::Decorator::~Decorator(&v106[1]);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    v87[0] = &v55;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    if (v109 < 0)
    {
      operator delete(v108[0]);
    }

    v87[0] = &v58;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v87);
    if (v111 < 0)
    {
      operator delete(v110[0]);
    }

    addr_obj::venue::Template::~Template(__p);
    v87[0] = &v69;
    std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v87);
    addr_obj::venue::Decorator::~Decorator(&v118[0].__r_.__value_.__l.__data_);
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    __cxa_guard_release(&qword_1EA905290);
  }

  if ((atomic_load_explicit(&qword_1EA9052B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9052B0))
  {
    LODWORD(v120) = 1;
    memset(v121, 0, sizeof(v121));
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v121, qword_1EA905258, unk_1EA905260, 0x8E38E38E38E38E39 * ((unk_1EA905260 - qword_1EA905258) >> 4));
    v122 = 0;
    memset(v123, 0, 24);
    std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(v123, qword_1EA905278, unk_1EA905280, 0x8E38E38E38E38E39 * ((unk_1EA905280 - qword_1EA905278) >> 4));
    std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](&qword_1EA905298, &v120, 2);
    for (kk = 5; kk != -3; kk -= 4)
    {
      v87[0] = &v121[kk - 1];
      std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](v87);
    }

    __cxa_guard_release(&qword_1EA9052B0);
  }

  v2 = qword_1EA9052A0;
  if (!qword_1EA9052A0)
  {
    goto LABEL_12;
  }

  v3 = &qword_1EA9052A0;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_1EA9052A0 || *(v3 + 8) > a1)
  {
LABEL_12:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v120);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v120, "Invalid LabelPattern enum: ", 27);
    v6 = MEMORY[0x18CFD1C40](v5, a1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; library version: ", 19);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v87);
      std::stringbuf::str();
      if ((v94 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v94 & 0x80u) == 0)
      {
        v10 = v94;
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, v9, v10);
      if (v94 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(v118, "VenueLong");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&v106[1], "");
      addr_obj::Logger::log(16, __p, 638, v118, &v112, &v106[1]);
      if (v107 < 0)
      {
        operator delete(v106[1]);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v118[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118[0].__r_.__value_.__l.__data_);
      }

      if (v94 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v87);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v120, "; at ", 5);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_TemplateFactory.cpp", 95);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ":", 1);
    MEMORY[0x18CFD1C40](v21, 638);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v87, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v87, __p);
  }

  return v3 + 5;
}

void sub_1868418C8()
{
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v2);
    JUMPOUT(0x186841958);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

std::string::size_type sub_1868419F0(std::string *__str, std::string::size_type __pos)
{
  v2 = __pos;
  v4 = __pos;
  do
  {
    v6 = qword_1EA905338;
    v5 = unk_1EA905340;
    v26 = v4;
    if (qword_1EA905338 != unk_1EA905340)
    {
      v7 = v4;
      while (1)
      {
        size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) == 0)
        {
          v9 = __str;
        }

        else
        {
          v9 = __str->__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = __str->__r_.__value_.__l.__size_;
        }

        v10 = *(v6 + 23);
        if (v10 >= 0)
        {
          v11 = v6;
        }

        else
        {
          v11 = *v6;
        }

        if (v10 >= 0)
        {
          v12 = *(v6 + 23);
        }

        else
        {
          v12 = *(v6 + 8);
        }

        v13 = size - v4;
        if (size <= v4)
        {
          v17 = -1;
        }

        else
        {
          v27 = v7;
          v14 = v5;
          v15 = v2;
          v16 = v9 + v4;
          if (v12)
          {
            while (memchr(v11, *v16, v12))
            {
              ++v16;
              if (!--v13)
              {
                v17 = -1;
                goto LABEL_22;
              }
            }
          }

          v17 = v16 - v9;
LABEL_22:
          v2 = v15;
          v5 = v14;
          v7 = v27;
        }

        if (v17 == v4)
        {
          goto LABEL_42;
        }

        std::string::basic_string(&v28, __str, v4, v17 - v4, &v29);
        v18 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v28.__r_.__value_.__l.__size_;
        }

        v20 = *(v6 + 23);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v6 + 8);
        }

        if (v19 == v20)
        {
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v28;
          }

          else
          {
            v22 = v28.__r_.__value_.__r.__words[0];
          }

          if (v21 >= 0)
          {
            v23 = v6;
          }

          else
          {
            v23 = *v6;
          }

          v24 = memcmp(v22, v23, v19) == 0;
          if ((v18 & 0x80000000) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v24 = 0;
          if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_40;
          }
        }

        operator delete(v28.__r_.__value_.__l.__data_);
LABEL_40:
        if (v24)
        {
          v2 = v17;
          v7 = v17;
          v4 = v17;
        }

LABEL_42:
        v6 += 24;
        if (v6 == v5)
        {
          goto LABEL_45;
        }
      }
    }

    v7 = v4;
LABEL_45:
    v4 = v7;
  }

  while (v26 != v7);
  return v2;
}

__n128 sub_186841BAC(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v228 = a2 - 3;
  v229 = (a2 - 24);
  v227 = &a2[-5].n128_i8[8];
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v142 = a2[-1].n128_u8[15];
        if ((v142 & 0x80u) != 0)
        {
          v142 = a2[-1].n128_u64[0];
        }

        v143 = v8[1].n128_u8[7];
        if ((v143 & 0x80u) != 0)
        {
          v143 = v8->n128_u64[1];
        }

        if (v142 > v143)
        {
          v282 = v8[1].n128_u64[0];
          v254 = *v8;
          v144 = *(a2 - 24);
          v8[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v8 = v144;
          result = v254;
          a2[-1].n128_u64[1] = v282;
          *(a2 - 24) = v254;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {

      result.n128_u64[0] = sub_1868431B8(v8, (v8 + 24), v8 + 3, v229, result).n128_u64[0];
      return result;
    }

    if (v10 == 5)
    {
      result.n128_u64[0] = sub_1868431B8(v8, (v8 + 24), v8 + 3, (v8 + 72), result).n128_u64[0];
      v128 = a2[-1].n128_u8[15];
      if ((v128 & 0x80u) != 0)
      {
        v128 = a2[-1].n128_u64[0];
      }

      v129 = v8[5].n128_u8[15];
      if ((v129 & 0x80u) != 0)
      {
        v129 = v8[5].n128_u64[0];
      }

      if (v128 <= v129)
      {
        return result;
      }

      result = *(v8 + 72);
      v130 = v8[5].n128_u64[1];
      v131 = a2[-1].n128_u64[1];
      *(v8 + 72) = *(a2 - 24);
      v8[5].n128_u64[1] = v131;
      a2[-1].n128_u64[1] = v130;
      *(a2 - 24) = result;
      v132 = v8[5].n128_u8[15];
      if ((v132 & 0x80u) != 0)
      {
        v132 = v8[5].n128_u64[0];
      }

      v133 = v8[4].n128_u8[7];
      if ((v133 & 0x80u) != 0)
      {
        v133 = v8[3].n128_u64[1];
      }

      if (v132 <= v133)
      {
        return result;
      }

      result = v8[3];
      v8[3] = *(v8 + 72);
      v135 = v8[3].n128_u64[1];
      v134 = v8[4].n128_u64[0];
      v8[4].n128_u64[0] = v8[5].n128_u64[1];
      *(v8 + 72) = result;
      v8[5].n128_u64[1] = v134;
      v136 = v8[4].n128_u8[7];
      if ((v136 & 0x80u) != 0)
      {
        v136 = v135;
      }

      v137 = v8[2].n128_u8[15];
      if ((v137 & 0x80u) != 0)
      {
        v137 = v8[2].n128_u64[0];
      }

      if (v136 <= v137)
      {
        return result;
      }

      result = *(v8 + 24);
      *(v8 + 24) = v8[3];
      v139 = v8[2].n128_u64[0];
      v138 = v8[2].n128_u64[1];
      v8[2].n128_u64[1] = v8[4].n128_u64[0];
      v8[3] = result;
      v8[4].n128_u64[0] = v138;
      v140 = v8[2].n128_u8[15];
      v141 = v140;
LABEL_338:
      if (v141 < 0)
      {
        v140 = v139;
      }

      v212 = v8[1].n128_u8[7];
      if ((v212 & 0x80u) != 0)
      {
        v212 = v8->n128_u64[1];
      }

      if (v140 > v212)
      {
        v284 = v8[1].n128_u64[0];
        v259 = *v8;
        *v8 = *(v8 + 24);
        v8[1].n128_u64[0] = v8[2].n128_u64[1];
        result = v259;
        *(v8 + 24) = v259;
        v8[2].n128_u64[1] = v284;
      }

      return result;
    }

LABEL_9:
    if (v9 <= 575)
    {
      v149 = (v8 + 24);
      v151 = v8 == a2 || v149 == a2;
      if (a4)
      {
        if (!v151)
        {
          v152 = 0;
          v153 = v8;
          do
          {
            v154 = v149;
            v155 = v153[2].n128_u8[15];
            v156 = v155;
            v157 = v153[2].n128_u64[0];
            if ((v155 & 0x80u) != 0)
            {
              v155 = v153[2].n128_u64[0];
            }

            v158 = v153[1].n128_u8[7];
            if ((v158 & 0x80u) != 0)
            {
              v158 = v153->n128_u64[1];
            }

            if (v155 > v158)
            {
              v159 = v154->n128_u64[0];
              *v256 = v153[2].n128_u32[2];
              *&v256[3] = *(&v153[2].n128_u32[2] + 3);
              v154->n128_u64[1] = 0;
              v154[1].n128_u64[0] = 0;
              v154->n128_u64[0] = 0;
              v160 = v152;
              while (1)
              {
                v161 = v8 + v160;
                result = *(v8 + v160);
                *(v161 + 24) = result;
                *(v161 + 5) = *(v8[1].n128_u64 + v160);
                v161[23] = 0;
                *v161 = 0;
                if (!v160)
                {
                  break;
                }

                v162 = *(v161 - 1);
                v163 = *(v161 - 2);
                if ((v162 & 0x80u) == 0)
                {
                  v163 = v162;
                }

                v160 -= 24;
                if (v155 <= v163)
                {
                  v164 = &v8[1].n128_i64[1] + v160;
                  goto LABEL_265;
                }
              }

              v164 = v8;
LABEL_265:
              *v164 = v159;
              *(v164 + 8) = v157;
              *(v164 + 16) = *v256;
              *(v164 + 19) = *&v256[3];
              *(v164 + 23) = v156;
            }

            v149 = (v154 + 24);
            v152 += 24;
            v153 = v154;
          }

          while (&v154[1].n128_i8[8] != a2);
        }
      }

      else if (!v151)
      {
        v213 = &v8[2].n128_i8[15];
        do
        {
          v214 = v149;
          v215 = a1[2].n128_u8[15];
          v216 = v215;
          v217 = a1[2].n128_i64[0];
          if ((v215 & 0x80u) != 0)
          {
            v215 = a1[2].n128_u64[0];
          }

          v218 = a1[1].n128_u8[7];
          if ((v218 & 0x80u) != 0)
          {
            v218 = a1->n128_u64[1];
          }

          if (v215 > v218)
          {
            v219 = v214->n128_u64[0];
            *v260 = a1[2].n128_u32[2];
            *&v260[3] = *(&a1[2].n128_u32[2] + 3);
            v214->n128_u64[1] = 0;
            v214[1].n128_u64[0] = 0;
            v214->n128_u64[0] = 0;
            v220 = v213;
            do
            {
              v221 = *(v220 - 31);
              *(v220 - 24) = 0;
              v220 -= 24;
              *(v220 + 17) = v221;
              result = *(v220 - 23);
              *(v220 + 1) = result;
              *(v220 - 23) = 0;
              v222 = *(v220 - 24);
              if ((v222 & 0x80u) != 0)
              {
                v222 = *(v220 - 39);
              }
            }

            while (v215 > v222);
            *(v220 - 23) = v219;
            *(v220 - 15) = v217;
            *(v220 - 1) = *&v260[3];
            *(v220 - 7) = *v260;
            *v220 = v216;
          }

          v149 = (v214 + 24);
          v213 += 24;
          a1 = v214;
        }

        while (&v214[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v165 = (v10 - 2) >> 1;
      v166 = v165;
      do
      {
        v167 = v166;
        if (v165 >= v166)
        {
          v168 = (2 * v166) | 1;
          v169 = &v8->n128_u64[3 * v168];
          if (2 * v167 + 2 < v10)
          {
            v170 = *(v169 + 23);
            if ((v170 & 0x80u) != 0)
            {
              v170 = v169[1];
            }

            v171 = *(v169 + 47);
            if ((v171 & 0x80u) != 0)
            {
              v171 = v169[4];
            }

            v172 = v170 > v171;
            if (v170 <= v171)
            {
              v173 = 0;
            }

            else
            {
              v173 = 24;
            }

            v169 = (v169 + v173);
            if (v172)
            {
              v168 = 2 * v167 + 2;
            }
          }

          v174 = &v8->n128_u64[3 * v167];
          if (*(v169 + 23) >= 0)
          {
            v175 = *(v169 + 23);
          }

          else
          {
            v175 = v169[1];
          }

          v176 = *(v174 + 23);
          v177 = v176;
          v178 = v174[1];
          if ((v176 & 0x80u) != 0)
          {
            v176 = v174[1];
          }

          if (v175 <= v176)
          {
            v179 = *v174;
            *&v257[3] = *(v174 + 19);
            *v257 = *(v174 + 4);
            v174[1] = 0;
            v174[2] = 0;
            *v174 = 0;
            do
            {
              v180 = v174;
              v174 = v169;
              v181 = *v169;
              v180[2] = v169[2];
              *v180 = v181;
              *(v169 + 23) = 0;
              *v169 = 0;
              if (v165 < v168)
              {
                break;
              }

              v182 = (2 * v168) | 1;
              v169 = &v8->n128_u64[3 * v182];
              v183 = 2 * v168 + 2;
              if (v183 < v10)
              {
                v184 = *(v169 + 23);
                if ((v184 & 0x80u) != 0)
                {
                  v184 = v169[1];
                }

                v185 = *(v169 + 47);
                if ((v185 & 0x80u) != 0)
                {
                  v185 = v169[4];
                }

                v186 = v184 > v185;
                if (v184 <= v185)
                {
                  v187 = 0;
                }

                else
                {
                  v187 = 24;
                }

                v169 = (v169 + v187);
                if (v186)
                {
                  v182 = v183;
                }
              }

              v188 = *(v169 + 23) >= 0 ? *(v169 + 23) : v169[1];
              v168 = v182;
            }

            while (v188 <= v176);
            *v174 = v179;
            v174[1] = v178;
            *(v174 + 4) = *v257;
            *(v174 + 19) = *&v257[3];
            *(v174 + 23) = v177;
          }
        }

        v166 = v167 - 1;
      }

      while (v167);
      v189 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      while (2)
      {
        v190 = 0;
        v191 = a2;
        v192 = v8->n128_u64[0];
        *v258 = v8->n128_u64[1];
        *&v258[7] = *(&v8->n128_u64[1] + 7);
        v193 = v8[1].n128_u8[7];
        v8->n128_u64[1] = 0;
        v8[1].n128_u64[0] = 0;
        v8->n128_u64[0] = 0;
        v194 = v8;
        do
        {
          v195 = v194 + 24 * v190;
          v196 = (v195 + 24);
          v197 = (2 * v190) | 1;
          v190 = 2 * v190 + 2;
          if (v190 >= v189)
          {
            v190 = v197;
          }

          else
          {
            v198 = v195[47];
            if ((v198 & 0x80u) != 0)
            {
              v198 = *(v195 + 4);
            }

            v199 = v195[71];
            if ((v199 & 0x80u) != 0)
            {
              v199 = *(v195 + 7);
            }

            v200 = (v195 + 48);
            if (v198 <= v199)
            {
              v190 = v197;
            }

            else
            {
              v196 = v200;
            }
          }

          result = *v196;
          v194[1].n128_u64[0] = v196[1].n128_u64[0];
          *v194 = result;
          v196[1].n128_u8[7] = 0;
          v196->n128_u8[0] = 0;
          v194 = v196;
        }

        while (v190 <= ((v189 - 2) >> 1));
        a2 = (a2 - 24);
        if (v196 != &v191[-2].n128_i8[8])
        {
          result = *a2;
          v196[1].n128_u64[0] = v191[-1].n128_u64[1];
          *v196 = result;
          v191[-2].n128_u64[1] = v192;
          *(v191[-1].n128_u64 + 7) = *&v258[7];
          v191[-1].n128_u64[0] = *v258;
          v191[-1].n128_u8[15] = v193;
          v201 = v196 - v8 + 24;
          if (v201 >= 25)
          {
            v202 = (0xAAAAAAAAAAAAAAABLL * (v201 >> 3) - 2) >> 1;
            v203 = (v8 + 24 * v202);
            if (v203[1].n128_i8[7] >= 0)
            {
              v204 = v203[1].n128_u8[7];
            }

            else
            {
              v204 = v203->n128_u64[1];
            }

            v205 = v196[1].n128_u8[7];
            v193 = v205;
            v206 = v196->n128_u64[1];
            if ((v205 & 0x80u) != 0)
            {
              v205 = v196->n128_u64[1];
            }

            if (v204 > v205)
            {
              v207 = v196->n128_u64[0];
              *v233 = v196[1].n128_u32[0];
              *&v233[3] = *(v196[1].n128_u32 + 3);
              v196->n128_u64[1] = 0;
              v196[1].n128_u64[0] = 0;
              v196->n128_u64[0] = 0;
              do
              {
                v208 = v196;
                v196 = v203;
                result = *v203;
                v208[1].n128_u64[0] = v203[1].n128_u64[0];
                *v208 = result;
                v203[1].n128_u8[7] = 0;
                v203->n128_u8[0] = 0;
                if (!v202)
                {
                  break;
                }

                v202 = (v202 - 1) >> 1;
                v203 = (v8 + 24 * v202);
                v209 = v203[1].n128_u8[7];
                if ((v209 & 0x80u) != 0)
                {
                  v209 = v203->n128_u64[1];
                }
              }

              while (v209 > v205);
              v196->n128_u64[0] = v207;
              v196->n128_u64[1] = v206;
              v196[1].n128_u32[0] = *v233;
              *(v196[1].n128_u32 + 3) = *&v233[3];
LABEL_332:
              v196[1].n128_u8[7] = v193;
            }
          }

          v172 = v189-- <= 2;
          if (v172)
          {
            return result;
          }

          continue;
        }

        break;
      }

      v196->n128_u64[0] = v192;
      v196->n128_u64[1] = *v258;
      *(&v196->n128_u64[1] + 7) = *&v258[7];
      goto LABEL_332;
    }

    v11 = v10 >> 1;
    v12 = (v8 + 24 * (v10 >> 1));
    v13 = a2[-1].n128_u8[15];
    if ((v13 & 0x80u) != 0)
    {
      v13 = a2[-1].n128_u64[0];
    }

    if (v9 >= 0xC01)
    {
      v14 = v12[1].n128_u8[7];
      if ((v14 & 0x80u) != 0)
      {
        v14 = v12->n128_u64[1];
      }

      v15 = v8[1].n128_u8[7];
      if ((v15 & 0x80u) != 0)
      {
        v15 = v8->n128_u64[1];
      }

      if (v14 <= v15)
      {
        if (v13 > v14)
        {
          v264 = v12[1].n128_u64[0];
          v236 = *v12;
          v21 = *v229;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v21;
          a2[-1].n128_u64[1] = v264;
          *v229 = v236;
          v22 = v12[1].n128_u8[7];
          if ((v22 & 0x80u) != 0)
          {
            v22 = v12->n128_u64[1];
          }

          v23 = v8[1].n128_u8[7];
          if ((v23 & 0x80u) != 0)
          {
            v23 = v8->n128_u64[1];
          }

          if (v22 > v23)
          {
            v265 = v8[1].n128_u64[0];
            v237 = *v8;
            v24 = *v12;
            v8[1].n128_u64[0] = v12[1].n128_u64[0];
            *v8 = v24;
            v12[1].n128_u64[0] = v265;
            *v12 = v237;
          }
        }
      }

      else
      {
        if (v13 > v14)
        {
          v262 = v8[1].n128_u64[0];
          v234 = *v8;
          v16 = &a2[-2].n128_i8[8];
          v17 = *v229;
          v8[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v8 = v17;
          goto LABEL_48;
        }

        v268 = v8[1].n128_u64[0];
        v240 = *v8;
        v29 = *v12;
        v8[1].n128_u64[0] = v12[1].n128_u64[0];
        *v8 = v29;
        v12[1].n128_u64[0] = v268;
        *v12 = v240;
        v30 = a2[-1].n128_u8[15];
        if ((v30 & 0x80u) != 0)
        {
          v30 = a2[-1].n128_u64[0];
        }

        v31 = v12[1].n128_u8[7];
        if ((v31 & 0x80u) != 0)
        {
          v31 = v12->n128_u64[1];
        }

        if (v30 > v31)
        {
          v262 = v12[1].n128_u64[0];
          v234 = *v12;
          v16 = &a2[-2].n128_i8[8];
          v32 = *v229;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v32;
LABEL_48:
          *(v16 + 2) = v262;
          *v16 = v234;
        }
      }

      v33 = &v8->n128_u64[3 * v11];
      v34 = (v33 - 3);
      v35 = *(v33 - 1);
      v36 = *(v33 - 2);
      if ((v35 & 0x80u) == 0)
      {
        v36 = v35;
      }

      if (v8[2].n128_i8[15] >= 0)
      {
        v37 = v8[2].n128_u8[15];
      }

      else
      {
        v37 = v8[2].n128_u64[0];
      }

      v38 = a2[-2].n128_u8[7];
      if ((v38 & 0x80u) != 0)
      {
        v38 = a2[-3].n128_u64[1];
      }

      if (v36 <= v37)
      {
        if (v38 > v36)
        {
          v269 = v34[1].n128_u64[0];
          v241 = *v34;
          v42 = *v228;
          v34[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v34 = v42;
          a2[-2].n128_u64[0] = v269;
          *v228 = v241;
          v43 = v34[1].n128_u8[7];
          if ((v43 & 0x80u) != 0)
          {
            v43 = v34->n128_u64[1];
          }

          v44 = v8[2].n128_u8[15];
          if ((v44 & 0x80u) != 0)
          {
            v44 = v8[2].n128_u64[0];
          }

          if (v43 > v44)
          {
            v45 = *(v8 + 24);
            v46 = v8[2].n128_u64[1];
            v47 = v34[1].n128_u64[0];
            *(v8 + 24) = *v34;
            v8[2].n128_u64[1] = v47;
            v34[1].n128_u64[0] = v46;
            *v34 = v45;
          }
        }
      }

      else if (v38 <= v36)
      {
        v52 = *(v8 + 24);
        v53 = v8[2].n128_u64[1];
        v54 = v34[1].n128_u64[0];
        *(v8 + 24) = *v34;
        v8[2].n128_u64[1] = v54;
        v34[1].n128_u64[0] = v53;
        *v34 = v52;
        v55 = a2[-2].n128_u8[7];
        if ((v55 & 0x80u) != 0)
        {
          v55 = a2[-3].n128_u64[1];
        }

        v56 = v34[1].n128_u8[7];
        if ((v56 & 0x80u) != 0)
        {
          v56 = v34->n128_u64[1];
        }

        if (v55 > v56)
        {
          v272 = v34[1].n128_u64[0];
          v244 = *v34;
          v57 = *v228;
          v34[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v34 = v57;
          a2[-2].n128_u64[0] = v272;
          *v228 = v244;
        }
      }

      else
      {
        v39 = *(v8 + 24);
        v40 = v8[2].n128_u64[1];
        v41 = a2[-2].n128_u64[0];
        *(v8 + 24) = *v228;
        v8[2].n128_u64[1] = v41;
        a2[-2].n128_u64[0] = v40;
        *v228 = v39;
      }

      v58 = &v8->n128_u64[3 * v11];
      v59 = *(v58 + 47);
      if ((v59 & 0x80u) != 0)
      {
        v59 = v58[4];
      }

      if (v8[4].n128_i8[7] >= 0)
      {
        v60 = v8[4].n128_u8[7];
      }

      else
      {
        v60 = v8[3].n128_u64[1];
      }

      v61 = a2[-4].n128_u8[15];
      if ((v61 & 0x80u) != 0)
      {
        v61 = a2[-4].n128_u64[0];
      }

      if (v59 <= v60)
      {
        if (v61 > v59)
        {
          v273 = v58[5];
          v245 = *(v58 + 3);
          v65 = *v227;
          v58[5] = a2[-4].n128_u64[1];
          *(v58 + 3) = v65;
          a2[-4].n128_u64[1] = v273;
          *v227 = v245;
          v66 = *(v58 + 47);
          if ((v66 & 0x80u) != 0)
          {
            v66 = v58[4];
          }

          v67 = v8[4].n128_u8[7];
          if ((v67 & 0x80u) != 0)
          {
            v67 = v8[3].n128_u64[1];
          }

          if (v66 > v67)
          {
            v68 = v8[3];
            v69 = v8[4].n128_u64[0];
            v70 = v58[5];
            v8[3] = *(v58 + 3);
            v8[4].n128_u64[0] = v70;
            v58[5] = v69;
            *(v58 + 3) = v68;
          }
        }
      }

      else if (v61 <= v59)
      {
        v71 = v8[3];
        v72 = v8[4].n128_u64[0];
        v73 = v58[5];
        v8[3] = *(v58 + 3);
        v8[4].n128_u64[0] = v73;
        v58[5] = v72;
        *(v58 + 3) = v71;
        v74 = a2[-4].n128_u8[15];
        if ((v74 & 0x80u) != 0)
        {
          v74 = a2[-4].n128_u64[0];
        }

        v75 = *(v58 + 47);
        if ((v75 & 0x80u) != 0)
        {
          v75 = v58[4];
        }

        if (v74 > v75)
        {
          v274 = v58[5];
          v246 = *(v58 + 3);
          v76 = *v227;
          v58[5] = a2[-4].n128_u64[1];
          *(v58 + 3) = v76;
          a2[-4].n128_u64[1] = v274;
          *v227 = v246;
        }
      }

      else
      {
        v62 = v8[3];
        v63 = v8[4].n128_u64[0];
        v64 = a2[-4].n128_u64[1];
        v8[3] = *v227;
        v8[4].n128_u64[0] = v64;
        a2[-4].n128_u64[1] = v63;
        *v227 = v62;
      }

      v77 = v12[1].n128_u8[7];
      if ((v77 & 0x80u) != 0)
      {
        v77 = v12->n128_u64[1];
      }

      if (v34[1].n128_i8[7] >= 0)
      {
        v78 = v34[1].n128_u8[7];
      }

      else
      {
        v78 = v34->n128_u64[1];
      }

      v79 = *(v58 + 47);
      if ((v79 & 0x80u) != 0)
      {
        v79 = v58[4];
      }

      if (v77 <= v78)
      {
        if (v79 > v77)
        {
          v276 = v12[1].n128_u64[0];
          v248 = *v12;
          *v12 = *(v58 + 3);
          v12[1].n128_u64[0] = v58[5];
          v58[5] = v276;
          *(v58 + 3) = v248;
          v80 = v12[1].n128_u8[7];
          if ((v80 & 0x80u) != 0)
          {
            v80 = v12->n128_u64[1];
          }

          v81 = v34[1].n128_u8[7];
          if ((v81 & 0x80u) != 0)
          {
            v81 = v34->n128_u64[1];
          }

          if (v80 > v81)
          {
            v277 = v34[1].n128_u64[0];
            v249 = *v34;
            *v34 = *v12;
            v34[1].n128_u64[0] = v12[1].n128_u64[0];
            v12[1].n128_u64[0] = v277;
            *v12 = v249;
          }
        }
      }

      else
      {
        if (v79 > v77)
        {
          v275 = v34[1].n128_u64[0];
          v247 = *v34;
          *v34 = *(v58 + 3);
          v34[1].n128_u64[0] = v58[5];
          goto LABEL_124;
        }

        v278 = v34[1].n128_u64[0];
        v250 = *v34;
        *v34 = *v12;
        v34[1].n128_u64[0] = v12[1].n128_u64[0];
        v12[1].n128_u64[0] = v278;
        *v12 = v250;
        v82 = *(v58 + 47);
        if ((v82 & 0x80u) != 0)
        {
          v82 = v58[4];
        }

        v83 = v12[1].n128_u8[7];
        if ((v83 & 0x80u) != 0)
        {
          v83 = v12->n128_u64[1];
        }

        if (v82 > v83)
        {
          v275 = v12[1].n128_u64[0];
          v247 = *v12;
          *v12 = *(v58 + 3);
          v12[1].n128_u64[0] = v58[5];
LABEL_124:
          v58[5] = v275;
          *(v58 + 3) = v247;
        }
      }

      v279 = v8[1].n128_u64[0];
      v251 = *v8;
      v84 = *v12;
      v8[1].n128_u64[0] = v12[1].n128_u64[0];
      *v8 = v84;
      result = v251;
      v12[1].n128_u64[0] = v279;
      *v12 = v251;
      goto LABEL_126;
    }

    v18 = v8[1].n128_u8[7];
    if ((v18 & 0x80u) != 0)
    {
      v18 = v8->n128_u64[1];
    }

    v19 = v12[1].n128_u8[7];
    if ((v19 & 0x80u) != 0)
    {
      v19 = v12->n128_u64[1];
    }

    if (v18 <= v19)
    {
      if (v13 > v18)
      {
        v266 = v8[1].n128_u64[0];
        v238 = *v8;
        v25 = *v229;
        v8[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v8 = v25;
        result = v238;
        a2[-1].n128_u64[1] = v266;
        *v229 = v238;
        v26 = v8[1].n128_u8[7];
        if ((v26 & 0x80u) != 0)
        {
          v26 = v8->n128_u64[1];
        }

        v27 = v12[1].n128_u8[7];
        if ((v27 & 0x80u) != 0)
        {
          v27 = v12->n128_u64[1];
        }

        if (v26 > v27)
        {
          v267 = v12[1].n128_u64[0];
          v239 = *v12;
          v28 = *v8;
          v12[1].n128_u64[0] = v8[1].n128_u64[0];
          *v12 = v28;
          result = v239;
          v8[1].n128_u64[0] = v267;
          *v8 = v239;
        }
      }
    }

    else if (v13 <= v18)
    {
      v270 = v12[1].n128_u64[0];
      v242 = *v12;
      v48 = *v8;
      v12[1].n128_u64[0] = v8[1].n128_u64[0];
      *v12 = v48;
      result = v242;
      v8[1].n128_u64[0] = v270;
      *v8 = v242;
      v49 = a2[-1].n128_u8[15];
      if ((v49 & 0x80u) != 0)
      {
        v49 = a2[-1].n128_u64[0];
      }

      v50 = v8[1].n128_u8[7];
      if ((v50 & 0x80u) != 0)
      {
        v50 = v8->n128_u64[1];
      }

      if (v49 > v50)
      {
        v271 = v8[1].n128_u64[0];
        v243 = *v8;
        v51 = *v229;
        v8[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v8 = v51;
        result = v243;
        a2[-1].n128_u64[1] = v271;
        *v229 = v243;
      }
    }

    else
    {
      v263 = v12[1].n128_u64[0];
      v235 = *v12;
      v20 = *v229;
      v12[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v20;
      result = v235;
      a2[-1].n128_u64[1] = v263;
      *v229 = v235;
    }

LABEL_126:
    --a3;
    if (a4)
    {
      v85 = v8->n128_u64[1];
      v86 = v8[1].n128_u8[7];
      v87 = v8[1].n128_i8[7];
      goto LABEL_134;
    }

    v88 = v8[-1].n128_u64[0];
    if (v8[-1].n128_i8[15] >= 0)
    {
      v88 = v8[-1].n128_u8[15];
    }

    v86 = v8[1].n128_u8[7];
    v87 = v86;
    v85 = v8->n128_u64[1];
    if ((v86 & 0x80u) == 0)
    {
      v89 = v8[1].n128_u8[7];
    }

    else
    {
      v89 = v8->n128_u64[1];
    }

    if (v88 <= v89)
    {
      v111 = v8->n128_u64[0];
      *v232 = v8[1].n128_u32[0];
      *&v232[3] = *(v8[1].n128_u32 + 3);
      v8->n128_u64[1] = 0;
      v8[1].n128_u64[0] = 0;
      v8->n128_u64[0] = 0;
      v112 = a2[-1].n128_u8[15];
      if ((v112 & 0x80u) != 0)
      {
        v112 = a2[-1].n128_u64[0];
      }

      if (v89 <= v112)
      {
        v116 = &v8[1].n128_u64[1];
        do
        {
          v8 = v116;
          if (v116 >= a2)
          {
            break;
          }

          v117 = *(v116 + 23) >= 0 ? *(v116 + 23) : *(v116 + 8);
          v116 += 24;
        }

        while (v89 <= v117);
      }

      else
      {
        v113 = v8;
        do
        {
          v8 = (v113 + 24);
          v114 = v113[2].n128_u8[15];
          v115 = v113[2].n128_u64[0];
          if ((v114 & 0x80u) != 0)
          {
            v114 = v115;
          }

          v113 = v8;
        }

        while (v89 <= v114);
      }

      v118 = a2;
      if (v8 < a2)
      {
        v119 = a2;
        do
        {
          v118 = (v119 - 24);
          v120 = v119[-1].n128_u8[15];
          v121 = v119[-1].n128_u64[0];
          if ((v120 & 0x80u) != 0)
          {
            v120 = v121;
          }

          v119 = v118;
        }

        while (v89 > v120);
      }

      while (v8 < v118)
      {
        v281 = v8[1].n128_u64[0];
        v253 = *v8;
        v122 = *v118;
        v8[1].n128_u64[0] = v118[1].n128_u64[0];
        *v8 = v122;
        result = v253;
        v118[1].n128_u64[0] = v281;
        *v118 = v253;
        do
        {
          v123 = v8[2].n128_u8[15];
          v124 = v8[2].n128_u64[0];
          v8 = (v8 + 24);
          if ((v123 & 0x80u) != 0)
          {
            v123 = v124;
          }
        }

        while (v89 <= v123);
        do
        {
          v125 = v118[-1].n128_u8[15];
          v126 = v118[-1].n128_u64[0];
          v118 = (v118 - 24);
          if ((v125 & 0x80u) != 0)
          {
            v125 = v126;
          }
        }

        while (v89 > v125);
      }

      v127 = &v8[-2].n128_u64[1];
      if (&v8[-2].n128_i8[8] == a1)
      {
        if (v8[-1].n128_i8[15] < 0)
        {
          operator delete(*v127);
        }
      }

      else
      {
        if (a1[1].n128_i8[7] < 0)
        {
          operator delete(a1->n128_u64[0]);
        }

        result = *v127;
        a1[1].n128_u64[0] = v8[-1].n128_u64[1];
        *a1 = result;
        v8[-1].n128_u8[15] = 0;
      }

      a4 = 0;
      v8[-2].n128_u64[1] = v111;
      v8[-1].n128_u64[0] = v85;
      *(&v8[-1].n128_u32[2] + 3) = *&v232[3];
      v8[-1].n128_u32[2] = *v232;
      v8[-1].n128_u8[15] = v87;
    }

    else
    {
LABEL_134:
      v90 = 0;
      v91 = v8->n128_u64[0];
      *v231 = v8[1].n128_u32[0];
      *&v231[3] = *(v8[1].n128_u32 + 3);
      v8->n128_u64[1] = 0;
      v8[1].n128_u64[0] = 0;
      v8->n128_u64[0] = 0;
      if (v87 >= 0)
      {
        v92 = v86;
      }

      else
      {
        v92 = v85;
      }

      do
      {
        v93 = v8[2].n128_u64[v90];
        if (v8[2].n128_i8[v90 * 8 + 15] >= 0)
        {
          v93 = v8[2].n128_u8[v90 * 8 + 15];
        }

        v90 += 3;
      }

      while (v93 > v92);
      v94 = (v8 + v90 * 8);
      v95 = a2;
      if (v90 == 3)
      {
        v99 = a2;
        while (v94 < v99)
        {
          v96 = (v99 - 24);
          v100 = v99[-1].n128_u8[15];
          v101 = v99[-1].n128_u64[0];
          if ((v100 & 0x80u) != 0)
          {
            v100 = v101;
          }

          v99 = v96;
          if (v100 > v92)
          {
            goto LABEL_152;
          }
        }

        v96 = v99;
      }

      else
      {
        do
        {
          v96 = (v95 - 24);
          v97 = v95[-1].n128_u8[15];
          v98 = v95[-1].n128_u64[0];
          if ((v97 & 0x80u) != 0)
          {
            v97 = v98;
          }

          v95 = v96;
        }

        while (v97 <= v92);
      }

LABEL_152:
      v8 = v94;
      if (v94 < v96)
      {
        v102 = v96;
        do
        {
          v280 = v8[1].n128_u64[0];
          v252 = *v8;
          v103 = *v102;
          v8[1].n128_u64[0] = *(v102 + 16);
          *v8 = v103;
          result = v252;
          *(v102 + 16) = v280;
          *v102 = v252;
          do
          {
            v104 = v8[2].n128_u8[15];
            v105 = v8[2].n128_u64[0];
            v8 = (v8 + 24);
            if ((v104 & 0x80u) != 0)
            {
              v104 = v105;
            }
          }

          while (v104 > v92);
          do
          {
            v106 = *(v102 - 1);
            v107 = *(v102 - 16);
            v102 -= 24;
            if ((v106 & 0x80u) != 0)
            {
              v106 = v107;
            }
          }

          while (v106 <= v92);
        }

        while (v8 < v102);
      }

      v108 = &v8[-2].n128_u64[1];
      if (&v8[-2].n128_i8[8] == a1)
      {
        if (v8[-1].n128_i8[15] < 0)
        {
          operator delete(*v108);
        }
      }

      else
      {
        if (a1[1].n128_i8[7] < 0)
        {
          operator delete(a1->n128_u64[0]);
        }

        result = *v108;
        a1[1].n128_u64[0] = v8[-1].n128_u64[1];
        *a1 = result;
        v8[-1].n128_u8[15] = 0;
      }

      v8[-2].n128_u64[1] = v91;
      v8[-1].n128_u64[0] = v85;
      *(&v8[-1].n128_u32[2] + 3) = *&v231[3];
      v8[-1].n128_u32[2] = *v231;
      v8[-1].n128_u8[15] = v87;
      if (v94 < v96)
      {
        goto LABEL_171;
      }

      v109 = sub_186843410(a1, &v8[-2].n128_i64[1], result);
      if (sub_186843410(v8, a2, v110))
      {
        a2 = (v8 - 24);
        if (v109)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v109)
      {
LABEL_171:
        result = sub_186841BAC(a1, (v8 - 24), a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  v145 = v8[2].n128_u8[15];
  if ((v145 & 0x80u) != 0)
  {
    v145 = v8[2].n128_u64[0];
  }

  if (v8[1].n128_i8[7] >= 0)
  {
    v146 = v8[1].n128_u8[7];
  }

  else
  {
    v146 = v8->n128_u64[1];
  }

  v147 = a2[-1].n128_u8[15];
  if ((v147 & 0x80u) != 0)
  {
    v147 = a2[-1].n128_u64[0];
  }

  if (v145 <= v146)
  {
    if (v147 <= v145)
    {
      return result;
    }

    result = *(v8 + 24);
    v210 = v8[2].n128_u64[1];
    v211 = a2[-1].n128_u64[1];
    *(v8 + 24) = *v229;
    v8[2].n128_u64[1] = v211;
    a2[-1].n128_u64[1] = v210;
    *v229 = result;
    v140 = v8[2].n128_u8[15];
    v141 = v140;
    v139 = v8[2].n128_u64[0];
    goto LABEL_338;
  }

  if (v147 <= v145)
  {
    v285 = v8[1].n128_u64[0];
    v261 = *v8;
    *v8 = *(v8 + 24);
    v8[1].n128_u64[0] = v8[2].n128_u64[1];
    result = v261;
    *(v8 + 24) = v261;
    v8[2].n128_u64[1] = v285;
    v223 = a2[-1].n128_u8[15];
    if ((v223 & 0x80u) != 0)
    {
      v223 = a2[-1].n128_u64[0];
    }

    v224 = v8[2].n128_u8[15];
    if ((v224 & 0x80u) != 0)
    {
      v224 = v8[2].n128_u64[0];
    }

    if (v223 > v224)
    {
      result = *(v8 + 24);
      v225 = v8[2].n128_u64[1];
      v226 = a2[-1].n128_u64[1];
      *(v8 + 24) = *v229;
      v8[2].n128_u64[1] = v226;
      a2[-1].n128_u64[1] = v225;
      *v229 = result;
    }
  }

  else
  {
    v283 = v8[1].n128_u64[0];
    v255 = *v8;
    v148 = *v229;
    v8[1].n128_u64[0] = a2[-1].n128_u64[1];
    *v8 = v148;
    result = v255;
    a2[-1].n128_u64[1] = v283;
    *v229 = v255;
  }

  return result;
}

__n128 sub_1868431B8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2[1].n128_u8[7];
  if ((v5 & 0x80u) != 0)
  {
    v5 = a2->n128_u64[1];
  }

  if (a1[1].n128_i8[7] >= 0)
  {
    v6 = a1[1].n128_u8[7];
  }

  else
  {
    v6 = a1->n128_u64[1];
  }

  v7 = a3[1].n128_u8[7];
  if ((v7 & 0x80u) != 0)
  {
    v7 = a3->n128_u64[1];
  }

  if (v5 <= v6)
  {
    if (v7 > v5)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      v12 = a2[1].n128_u8[7];
      if ((v12 & 0x80u) != 0)
      {
        v12 = a2->n128_u64[1];
      }

      v13 = a1[1].n128_u8[7];
      if ((v13 & 0x80u) != 0)
      {
        v13 = a1->n128_u64[1];
      }

      if (v12 > v13)
      {
        v14 = a1[1].n128_u64[0];
        result = *a1;
        v15 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v15;
        *a2 = result;
        a2[1].n128_u64[0] = v14;
      }
    }
  }

  else
  {
    if (v7 > v5)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_24:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_25;
    }

    v16 = a1[1].n128_u64[0];
    result = *a1;
    v17 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v17;
    *a2 = result;
    a2[1].n128_u64[0] = v16;
    v18 = a3[1].n128_u8[7];
    if ((v18 & 0x80u) != 0)
    {
      v18 = a3->n128_u64[1];
    }

    v19 = a2[1].n128_u8[7];
    if ((v19 & 0x80u) != 0)
    {
      v19 = a2->n128_u64[1];
    }

    if (v18 > v19)
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      goto LABEL_24;
    }
  }

LABEL_25:
  v21 = a4[1].n128_u8[7];
  if ((v21 & 0x80u) != 0)
  {
    v21 = a4->n128_u64[1];
  }

  v22 = a3[1].n128_u8[7];
  if ((v22 & 0x80u) != 0)
  {
    v22 = a3->n128_u64[1];
  }

  if (v21 > v22)
  {
    v23 = a3[1].n128_u64[0];
    result = *a3;
    v24 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v24;
    *a4 = result;
    a4[1].n128_u64[0] = v23;
    v25 = a3[1].n128_u8[7];
    if ((v25 & 0x80u) != 0)
    {
      v25 = a3->n128_u64[1];
    }

    v26 = a2[1].n128_u8[7];
    if ((v26 & 0x80u) != 0)
    {
      v26 = a2->n128_u64[1];
    }

    if (v25 > v26)
    {
      v27 = a2[1].n128_u64[0];
      result = *a2;
      v28 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v28;
      *a3 = result;
      a3[1].n128_u64[0] = v27;
      v29 = a2[1].n128_u8[7];
      if ((v29 & 0x80u) != 0)
      {
        v29 = a2->n128_u64[1];
      }

      v30 = a1[1].n128_u8[7];
      if ((v30 & 0x80u) != 0)
      {
        v30 = a1->n128_u64[1];
      }

      if (v29 > v30)
      {
        v31 = a1[1].n128_u64[0];
        result = *a1;
        v32 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v32;
        *a2 = result;
        a2[1].n128_u64[0] = v31;
      }
    }
  }

  return result;
}

BOOL sub_186843410(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v28 = (a2 - 3);
        v29 = *(a1 + 47);
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(a1 + 32);
        }

        if (*(a1 + 23) >= 0)
        {
          v30 = *(a1 + 23);
        }

        else
        {
          v30 = *(a1 + 8);
        }

        v31 = *(a2 - 1);
        if ((v31 & 0x80u) != 0)
        {
          v31 = *(a2 - 2);
        }

        if (v29 > v30)
        {
          if (v31 <= v29)
          {
            v53 = *(a1 + 16);
            v54 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 24) = v54;
            v55 = *(a1 + 32);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 40) = v53;
            v56 = *(a2 - 1);
            if ((v56 & 0x80u) != 0)
            {
              v56 = *(a2 - 2);
            }

            v57 = *(a1 + 47);
            if ((v57 & 0x80u) != 0)
            {
              v57 = v55;
            }

            if (v56 <= v57)
            {
              return 1;
            }

            v32 = *(a1 + 40);
            v33 = *(a1 + 24);
            v58 = *(a2 - 1);
            *(a1 + 24) = *v28;
            *(a1 + 40) = v58;
          }

          else
          {
            v32 = *(a1 + 16);
            v33 = *a1;
            v34 = *(a2 - 1);
            *a1 = *v28;
            *(a1 + 16) = v34;
          }

          *v28 = v33;
          *(a2 - 1) = v32;
          return 1;
        }

        if (v31 <= v29)
        {
          return 1;
        }

        v41 = *(a1 + 40);
        v42 = *(a1 + 24);
        v43 = *(a2 - 1);
        *(a1 + 24) = *v28;
        *(a1 + 40) = v43;
        *v28 = v42;
        *(a2 - 1) = v41;
        v26 = *(a1 + 47);
        v27 = v26;
        v25 = *(a1 + 32);
        break;
      case 4:
        sub_1868431B8(a1, (a1 + 24), (a1 + 48), (a2 - 3), a3);
        return 1;
      case 5:
        sub_1868431B8(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        v11 = *(a2 - 1);
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(a2 - 2);
        }

        v12 = *(a1 + 95);
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a1 + 80);
        }

        if (v11 <= v12)
        {
          return 1;
        }

        v13 = *(a1 + 88);
        v14 = *(a1 + 72);
        v15 = *(a2 - 1);
        *(a1 + 72) = *(a2 - 3);
        *(a1 + 88) = v15;
        *(a2 - 3) = v14;
        *(a2 - 1) = v13;
        v16 = *(a1 + 95);
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(a1 + 80);
        }

        v17 = *(a1 + 71);
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(a1 + 56);
        }

        if (v16 <= v17)
        {
          return 1;
        }

        v18 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        v20 = *(a1 + 56);
        v19 = *(a1 + 64);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v18;
        *(a1 + 88) = v19;
        v21 = *(a1 + 71);
        if ((v21 & 0x80u) != 0)
        {
          v21 = v20;
        }

        v22 = *(a1 + 47);
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(a1 + 32);
        }

        if (v21 <= v22)
        {
          return 1;
        }

        v23 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v23;
        *(a1 + 64) = v24;
        v26 = *(a1 + 47);
        v27 = v26;
        break;
      default:
        goto LABEL_39;
    }

    if (v27 < 0)
    {
      v26 = v25;
    }

    v44 = *(a1 + 23);
    if ((v44 & 0x80u) != 0)
    {
      v44 = *(a1 + 8);
    }

    if (v26 > v44)
    {
      v45 = *(a1 + 16);
      v46 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v46;
      *(a1 + 40) = v45;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = *(a2 - 1);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 - 2);
    }

    v7 = *(a1 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a1 + 8);
    }

    if (v6 > v7)
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v10;
      *(a2 - 3) = v9;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_39:
  v35 = (a1 + 48);
  v36 = *(a1 + 32);
  if (*(a1 + 47) >= 0)
  {
    v36 = *(a1 + 47);
  }

  v37 = *(a1 + 23);
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(a1 + 8);
  }

  v38 = *(a1 + 71);
  if ((v38 & 0x80u) != 0)
  {
    v38 = *(a1 + 56);
  }

  if (v36 <= v37)
  {
    if (v38 > v36)
    {
      v47 = *(a1 + 24);
      *(a1 + 24) = *v35;
      v49 = *(a1 + 32);
      v48 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 64);
      *v35 = v47;
      *(a1 + 64) = v48;
      v50 = *(a1 + 47);
      if ((v50 & 0x80u) != 0)
      {
        v50 = v49;
      }

      if (v50 > v37)
      {
        v51 = *(a1 + 16);
        v52 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v52;
        *(a1 + 40) = v51;
      }
    }
  }

  else
  {
    if (v38 > v36)
    {
      v39 = *(a1 + 16);
      v40 = *a1;
      *a1 = *v35;
      *(a1 + 16) = *(a1 + 64);
LABEL_73:
      *v35 = v40;
      *(a1 + 64) = v39;
      goto LABEL_74;
    }

    v59 = *(a1 + 16);
    v60 = *a1;
    *a1 = *(a1 + 24);
    *(a1 + 24) = v60;
    v61 = *(a1 + 32);
    *(a1 + 16) = *(a1 + 40);
    *(a1 + 40) = v59;
    v62 = *(a1 + 47);
    if ((v62 & 0x80u) != 0)
    {
      v62 = v61;
    }

    if (v38 > v62)
    {
      v39 = *(a1 + 40);
      v40 = *(a1 + 24);
      *(a1 + 24) = *v35;
      *(a1 + 40) = *(a1 + 64);
      goto LABEL_73;
    }
  }

LABEL_74:
  v63 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v64 = 0;
  v65 = 0;
  while (1)
  {
    v66 = *(v63 + 23);
    v67 = v66;
    v68 = v63[1];
    if ((v66 & 0x80u) != 0)
    {
      v66 = v63[1];
    }

    v69 = *(v35 + 23);
    v70 = v35[1];
    if ((v69 & 0x80u) == 0)
    {
      v70 = v69;
    }

    if (v66 > v70)
    {
      v71 = *v63;
      *v78 = *(v63 + 4);
      *&v78[3] = *(v63 + 19);
      v63[1] = 0;
      v63[2] = 0;
      *v63 = 0;
      v72 = v64;
      while (1)
      {
        v73 = a1 + v72;
        *(v73 + 72) = *(a1 + v72 + 48);
        *(v73 + 88) = *(a1 + v72 + 64);
        *(v73 + 71) = 0;
        *(v73 + 48) = 0;
        if (v72 == -48)
        {
          break;
        }

        v74 = *(v73 + 47);
        v75 = *(v73 + 32);
        if ((v74 & 0x80u) == 0)
        {
          v75 = v74;
        }

        v72 -= 24;
        if (v66 <= v75)
        {
          v76 = a1 + v72 + 72;
          goto LABEL_88;
        }
      }

      v76 = a1;
LABEL_88:
      *v76 = v71;
      *(v76 + 8) = v68;
      *(v76 + 16) = *v78;
      *(v76 + 19) = *&v78[3];
      *(v76 + 23) = v67;
      if (++v65 == 8)
      {
        return v63 + 3 == a2;
      }
    }

    v35 = v63;
    v64 += 24;
    v63 += 3;
    if (v63 == a2)
    {
      return 1;
    }
  }
}