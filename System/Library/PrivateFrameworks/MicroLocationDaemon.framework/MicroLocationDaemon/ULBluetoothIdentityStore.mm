@interface ULBluetoothIdentityStore
+ (unsigned)maxEntriesInTable;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (uint64_t)insertDataObjects:;
- (vector<ULBluetoothIdentityDO,)fetchBtIdentityEntriesBetweenTimes:(ULBluetoothIdentityStore *)self toTime:(SEL)time;
- (void)fetchBtIdentityEntriesBetweenTimes:(uint64_t)times toTime:(int)time;
@end

@implementation ULBluetoothIdentityStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBluetoothIdentityTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71958 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v6[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6[0] = &unk_286A56020;
  v6[1] = &selfCopy;
  v6[3] = v6;
  inserted = ULDBUtils::insertDataObjects<ULBluetoothIdentityDO,ULBluetoothIdentityMO>(self, objects, v6);
  std::__function::__value_func<ULBluetoothIdentityMO * ()(ULBluetoothIdentityDO const&)>::~__value_func[abi:ne200100](v6);
  return inserted;
}

- (vector<ULBluetoothIdentityDO,)fetchBtIdentityEntriesBetweenTimes:(ULBluetoothIdentityStore *)self toTime:(SEL)time
{
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v12 = [defaultsDictionary objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v12 unsignedIntValue];
  }

  else
  {
    [&unk_286A71940 unsignedIntValue];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v13 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v15 = MEMORY[0x277CCAC30];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v18 = [v15 predicateWithFormat:@"%K > %@ && %K <= %@", @"lastSeenTimeStamp", v16, @"lastSeenTimeStamp", v17];
  [array addObject:v18];

  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v28[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  objc_msgSend__fetchBtIdentityEntriesByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULBluetoothIdentityDO>::__vdeallocate(retstr);
  *&retstr->var0 = v25;
  retstr->var2 = v26;
  v26 = 0;
  v25 = 0uLL;
  v27 = &v25;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](&v27);

  objc_autoreleasePoolPop(v13);
  var1 = retstr->var1;
  v22 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((var1 - retstr->var0) >> 3));
  if (var1 == retstr->var0)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  std::__introsort<std::_ClassicAlgPolicy,[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,false>(retstr->var0->var0.data, var1->var0.data, v23, 1);
  return result;
}

- (void)fetchBtIdentityEntriesBetweenTimes:(uint64_t)times toTime:(int)time
{
  v6 = a2;
  selfCopy = self;
  v198 = *MEMORY[0x277D85DE8];
  v190 = a2;
  selfCopy2 = self;
  while (1)
  {
    v8 = v6 - selfCopy;
    v9 = 0x8E38E38E38E38E39 * (v6 - selfCopy);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v190 = v6 - 9;
        if (*(v6 - 1) >= selfCopy[8])
        {
          return;
        }

        v91 = &selfCopy2;
        v92 = &v190;
        goto LABEL_231;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {
      *v196 = selfCopy;
      *&v197 = selfCopy + 9;
      *&v194 = v6 - 9;
      v95 = selfCopy[17];
      v96 = *(v6 - 1);
      if (v95 >= selfCopy[8])
      {
        if (v96 >= v95)
        {
          return;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v197, &v194);
        v93 = *(v197 + 64);
        v94 = *(*v196 + 64);
LABEL_229:
        if (v93 >= v94)
        {
          return;
        }

        v91 = v196;
        v92 = &v197;
      }

      else
      {
        v91 = v196;
        if (v96 >= v95)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, &v197);
          if (*(v194 + 64) >= *(v197 + 64))
          {
            return;
          }

          v91 = &v197;
        }

        v92 = &v194;
      }

LABEL_231:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v91, v92);
      return;
    }

    if (v9 == 4)
    {
      v190 = v6 - 9;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,0>(selfCopy, selfCopy + 9, selfCopy + 18, (v6 - 9));
      return;
    }

    if (v9 == 5)
    {
      break;
    }

LABEL_9:
    if (v8 <= 1727)
    {
      v97 = selfCopy + 9;
      v99 = selfCopy == v6 || v97 == v6;
      if (time)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = selfCopy;
          do
          {
            v102 = v97;
            v103 = v101[17];
            if (v103 < v101[8])
            {
              v104 = *v97;
              *v196 = *(v101 + 113);
              v105 = *(v101 + 11);
              *&v194 = v101[12];
              *(&v194 + 7) = *(v101 + 103);
              v106 = *(v101 + 111);
              v101[11] = 0.0;
              v101[12] = 0.0;
              v107 = *(v101 + 112);
              *&v196[14] = *(v101 + 127);
              v186 = *(v101 + 135);
              v101[13] = 0.0;
              v101[14] = 0.0;
              v101[15] = 0.0;
              v101[16] = 0.0;
              v108 = v100;
              v197 = v104;
              while (1)
              {
                v109 = v108;
                v110 = (selfCopy + v108);
                *(selfCopy + v108 + 72) = *(selfCopy + v108);
                if (*(selfCopy + v108 + 111) < 0)
                {
                  operator delete(v110[11]);
                }

                *(v110 + 11) = *(v110 + 1);
                v110[13] = v110[4];
                *(v110 + 39) = 0;
                *(v110 + 16) = 0;
                if (*(v110 + 135) < 0)
                {
                  operator delete(v110[14]);
                }

                v111 = selfCopy + v109;
                *(v110 + 7) = *(selfCopy + v109 + 40);
                v112 = *(selfCopy + v109 + 64);
                v110[16] = *(selfCopy + v109 + 56);
                v111[63] = 0;
                v111[40] = 0;
                *(v111 + 17) = v112;
                if (!v109)
                {
                  break;
                }

                v108 = v109 - 72;
                if (v103 >= *(v111 - 1))
                {
                  v113 = (selfCopy + v109);
                  goto LABEL_154;
                }
              }

              v113 = selfCopy;
LABEL_154:
              *v113 = v197;
              if (*(v113 + 39) < 0)
              {
                operator delete(*(v111 + 2));
              }

              *(v111 + 2) = v105;
              v114 = selfCopy + v109;
              v115 = v194;
              *(v114 + 31) = *(&v194 + 7);
              *(v114 + 3) = v115;
              v111[39] = v106;
              if (*(v113 + 63) < 0)
              {
                operator delete(*(v111 + 5));
              }

              v111[40] = v107;
              v116 = *v196;
              *(v114 + 55) = *&v196[14];
              *(v114 + 41) = v116;
              v111[63] = v186;
              v113[8] = v103;
            }

            v97 = v102 + 9;
            v100 += 72;
            v101 = v102;
          }

          while (v102 + 9 != v6);
        }
      }

      else if (!v99)
      {
        v163 = selfCopy + 17;
        do
        {
          v164 = v97;
          v165 = selfCopy[17];
          if (v165 < selfCopy[8])
          {
            v166 = *v97;
            *v196 = *(selfCopy + 113);
            v167 = *(selfCopy + 11);
            *&v194 = selfCopy[12];
            *(&v194 + 7) = *(selfCopy + 103);
            v168 = *(selfCopy + 111);
            selfCopy[11] = 0.0;
            selfCopy[12] = 0.0;
            v169 = *(selfCopy + 112);
            *&v196[14] = *(selfCopy + 127);
            v170 = *(selfCopy + 135);
            selfCopy[13] = 0.0;
            selfCopy[14] = 0.0;
            selfCopy[15] = 0.0;
            selfCopy[16] = 0.0;
            v171 = v163;
            v197 = v166;
            do
            {
              *(v171 - 4) = *(v171 - 17);
              v172 = (v171 - 6);
              if (*(v171 - 25) < 0)
              {
                operator delete(*v172);
              }

              *v172 = *(v171 - 15);
              *(v171 - 4) = *(v171 - 13);
              *(v171 - 97) = 0;
              *(v171 - 120) = 0;
              v173 = (v171 - 3);
              if (*(v171 - 1) < 0)
              {
                operator delete(*v173);
              }

              *v173 = *(v171 - 6);
              *(v171 - 1) = *(v171 - 10);
              *(v171 - 73) = 0;
              *(v171 - 96) = 0;
              v174 = v171 - 9;
              *v171 = *(v171 - 9);
              v175 = *(v171 - 18);
              v171 -= 9;
            }

            while (v165 < v175);
            *(v174 - 4) = v197;
            if (*(v174 - 25) < 0)
            {
              operator delete(*(v174 - 6));
            }

            *(v174 - 6) = v167;
            v176 = v194;
            *(v174 - 33) = *(&v194 + 7);
            *(v174 - 5) = v176;
            *(v174 - 25) = v168;
            if (*(v174 - 1) < 0)
            {
              operator delete(*(v174 - 3));
            }

            *(v174 - 24) = v169;
            v177 = *v196;
            *(v174 - 9) = *&v196[14];
            *(v174 - 23) = v177;
            *(v174 - 1) = v170;
            *v174 = v165;
          }

          v97 = v164 + 9;
          v163 += 9;
          selfCopy = v164;
        }

        while (v164 + 9 != v6);
      }

      return;
    }

    if (!times)
    {
      if (selfCopy != v6)
      {
        v117 = v10 >> 1;
        v118 = v10 >> 1;
        do
        {
          v119 = v118;
          if (v117 >= v118)
          {
            v120 = (2 * v118) | 1;
            v121 = &selfCopy[9 * v120];
            if (2 * v119 + 2 < v9 && v121[8] < v121[17])
            {
              v121 += 9;
              v120 = 2 * v119 + 2;
            }

            v122 = &selfCopy[9 * v119];
            v123 = v122[8];
            if (v121[8] >= v123)
            {
              v197 = *v122;
              v124 = *(v122 + 3);
              v180 = *(v122 + 2);
              *(&v194 + 7) = *(v122 + 31);
              *&v194 = v124;
              v178 = *(v122 + 39);
              v122[2] = 0.0;
              v122[3] = 0.0;
              v122[4] = 0.0;
              v187 = *(v122 + 40);
              v125 = *(v122 + 55);
              *v196 = *(v122 + 41);
              *&v196[14] = v125;
              v183 = *(v122 + 63);
              v122[5] = 0.0;
              v122[6] = 0.0;
              v122[7] = 0.0;
              do
              {
                v126 = v121;
                *v122 = *v121;
                if (*(v122 + 39) < 0)
                {
                  operator delete(*(v122 + 2));
                }

                v127 = *(v126 + 1);
                v122[4] = v126[4];
                *(v122 + 1) = v127;
                *(v126 + 39) = 0;
                *(v126 + 16) = 0;
                if (*(v122 + 63) < 0)
                {
                  operator delete(*(v122 + 5));
                }

                v128 = *(v126 + 5);
                v122[7] = v126[7];
                *(v122 + 5) = v128;
                *(v126 + 63) = 0;
                *(v126 + 40) = 0;
                v122[8] = v126[8];
                if (v117 < v120)
                {
                  break;
                }

                v129 = 2 * v120;
                v120 = (2 * v120) | 1;
                v121 = &selfCopy[9 * v120];
                v130 = v129 + 2;
                if (v130 < v9 && v121[8] < v121[17])
                {
                  v121 += 9;
                  v120 = v130;
                }

                v122 = v126;
              }

              while (v121[8] >= v123);
              *v126 = v197;
              if (*(v126 + 39) < 0)
              {
                operator delete(*(v126 + 2));
              }

              v131 = v194;
              *(v126 + 2) = v180;
              *(v126 + 3) = v131;
              *(v126 + 31) = *(&v194 + 7);
              *(v126 + 39) = v178;
              if (*(v126 + 63) < 0)
              {
                operator delete(*(v126 + 5));
              }

              *(v126 + 40) = v187;
              *(v126 + 41) = *v196;
              *(v126 + 55) = *&v196[14];
              *(v126 + 63) = v183;
              v126[8] = v123;
            }
          }

          v118 = v119 - 1;
        }

        while (v119);
        v132 = 0x8E38E38E38E38E39 * (v8 >> 3);
        do
        {
          v133 = 0;
          v134 = v6;
          v194 = *selfCopy;
          v135 = *(selfCopy + 2);
          *v193 = selfCopy[3];
          *&v193[7] = *(selfCopy + 31);
          v136 = *(selfCopy + 39);
          selfCopy[2] = 0.0;
          selfCopy[3] = 0.0;
          v137 = *(selfCopy + 5);
          v192[0] = selfCopy[6];
          *(v192 + 7) = *(selfCopy + 55);
          v188 = *(selfCopy + 63);
          selfCopy[6] = 0.0;
          selfCopy[7] = 0.0;
          selfCopy[4] = 0.0;
          selfCopy[5] = 0.0;
          v138 = selfCopy;
          v181 = *(selfCopy + 8);
          v184 = v137;
          do
          {
            v139 = &v138[9 * v133];
            v140 = v139 + 9;
            if (2 * v133 + 2 >= v132)
            {
              v133 = (2 * v133) | 1;
            }

            else
            {
              v141 = v139[17];
              v142 = v139[26];
              v143 = v139 + 18;
              if (v141 >= v142)
              {
                v133 = (2 * v133) | 1;
              }

              else
              {
                v140 = v143;
                v133 = 2 * v133 + 2;
              }
            }

            *v138 = *v140;
            if (*(v138 + 39) < 0)
            {
              operator delete(*(v138 + 2));
            }

            v144 = *(v140 + 1);
            v138[4] = v140[4];
            *(v138 + 1) = v144;
            *(v140 + 39) = 0;
            *(v140 + 16) = 0;
            if (*(v138 + 63) < 0)
            {
              operator delete(*(v138 + 5));
            }

            v145 = *(v140 + 5);
            v138[7] = v140[7];
            *(v138 + 5) = v145;
            *(v140 + 63) = 0;
            *(v140 + 40) = 0;
            v138[8] = v140[8];
            v138 = v140;
          }

          while (v133 <= ((v132 - 2) >> 1));
          v6 -= 9;
          if (v140 == v134 - 9)
          {
            *v140 = v194;
            if (*(v140 + 39) < 0)
            {
              operator delete(*(v140 + 2));
            }

            v160 = *v193;
            *(v140 + 2) = v135;
            *(v140 + 3) = v160;
            *(v140 + 31) = *&v193[7];
            *(v140 + 39) = v136;
            if (*(v140 + 63) < 0)
            {
              operator delete(*(v140 + 5));
            }

            v161 = v192[0];
            *(v140 + 5) = v184;
            v140[6] = v161;
            *(v140 + 55) = *(v192 + 7);
            *(v140 + 63) = v188;
            *(v140 + 8) = v181;
          }

          else
          {
            *v140 = *v6;
            if (*(v140 + 39) < 0)
            {
              operator delete(*(v140 + 2));
            }

            v146 = *(v134 - 7);
            v140[4] = *(v134 - 5);
            *(v140 + 1) = v146;
            *(v134 - 33) = 0;
            *(v134 - 56) = 0;
            if (*(v140 + 63) < 0)
            {
              operator delete(*(v140 + 5));
            }

            v147 = *(v134 - 2);
            v140[7] = *(v134 - 2);
            *(v140 + 5) = v147;
            *(v134 - 9) = 0;
            *(v134 - 32) = 0;
            v140[8] = *(v134 - 1);
            *v6 = v194;
            if (*(v134 - 33) < 0)
            {
              operator delete(*(v134 - 7));
            }

            *(v134 - 7) = v135;
            *(v134 - 6) = *v193;
            *(v134 - 41) = *&v193[7];
            *(v134 - 33) = v136;
            if (*(v134 - 9) < 0)
            {
              operator delete(*(v134 - 4));
            }

            v148 = v192[0];
            *(v134 - 4) = v184;
            *(v134 - 3) = v148;
            *(v134 - 17) = *(v192 + 7);
            *(v134 - 9) = v188;
            *(v134 - 1) = v181;
            v149 = (v140 + 9) - selfCopy;
            if (v149 >= 73)
            {
              v150 = (-2 - 0x71C71C71C71C71C7 * (v149 >> 3)) >> 1;
              v151 = &selfCopy[9 * v150];
              v152 = v140[8];
              if (v151[8] < v152)
              {
                v197 = *v140;
                v153 = *(v140 + 2);
                *v195 = v140[3];
                *&v195[7] = *(v140 + 31);
                v154 = *(v140 + 39);
                v140[2] = 0.0;
                v140[3] = 0.0;
                v189 = *(v140 + 40);
                *v196 = *(v140 + 41);
                *&v196[14] = *(v140 + 55);
                v155 = *(v140 + 63);
                v140[4] = 0.0;
                v140[5] = 0.0;
                v140[6] = 0.0;
                v140[7] = 0.0;
                do
                {
                  v156 = v151;
                  *v140 = *v151;
                  if (*(v140 + 39) < 0)
                  {
                    operator delete(*(v140 + 2));
                  }

                  v157 = *(v156 + 1);
                  v140[4] = v156[4];
                  *(v140 + 1) = v157;
                  *(v156 + 39) = 0;
                  *(v156 + 16) = 0;
                  if (*(v140 + 63) < 0)
                  {
                    operator delete(*(v140 + 5));
                  }

                  v158 = *(v156 + 5);
                  v140[7] = v156[7];
                  *(v140 + 5) = v158;
                  *(v156 + 63) = 0;
                  *(v156 + 40) = 0;
                  v140[8] = v156[8];
                  if (!v150)
                  {
                    break;
                  }

                  v150 = (v150 - 1) >> 1;
                  v151 = &selfCopy[9 * v150];
                  v140 = v156;
                }

                while (v151[8] < v152);
                *v156 = v197;
                if (*(v156 + 39) < 0)
                {
                  operator delete(*(v156 + 2));
                }

                v159 = *v195;
                *(v156 + 2) = v153;
                *(v156 + 3) = v159;
                *(v156 + 31) = *&v195[7];
                *(v156 + 39) = v154;
                if (*(v156 + 63) < 0)
                {
                  operator delete(*(v156 + 5));
                }

                *(v156 + 40) = v189;
                *(v156 + 41) = *v196;
                *(v156 + 55) = *&v196[14];
                *(v156 + 63) = v155;
                v156[8] = v152;
              }
            }
          }
        }

        while (v132-- > 2);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = &selfCopy[9 * (v9 >> 1)];
    if (v8 >= 0x2401)
    {
      *v196 = selfCopy;
      *&v197 = v12;
      *&v194 = v6 - 9;
      v13 = v12[8];
      v14 = *(v6 - 1);
      if (v13 >= selfCopy[8])
      {
        if (v14 >= v13 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v197, &v194), *(v197 + 64) >= *(*v196 + 64)))
        {
LABEL_26:
          v21 = &selfCopy[9 * v11];
          v22 = v21 - 9;
          *v196 = selfCopy + 9;
          *&v197 = v21 - 9;
          *&v194 = v6 - 18;
          v23 = *(v21 - 1);
          v24 = *(v6 - 10);
          if (v23 >= selfCopy[17])
          {
            if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v197, &v194), *(v197 + 64) >= *(*v196 + 64)))
            {
LABEL_39:
              v27 = &selfCopy[9 * v11];
              v28 = v27 + 9;
              *v196 = selfCopy + 18;
              *&v197 = v27 + 9;
              *&v194 = v6 - 27;
              v29 = v27[17];
              v30 = *(v6 - 19);
              if (v29 >= selfCopy[26])
              {
                if (v30 >= v29 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v197, &v194), *(v197 + 64) >= *(*v196 + 64)))
                {
LABEL_48:
                  *v196 = v22;
                  *&v197 = v12;
                  *&v194 = v28;
                  v33 = v12[8];
                  v34 = v28[8];
                  if (v33 >= v22[8])
                  {
                    if (v34 >= v33)
                    {
                      goto LABEL_57;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v197, &v194);
                    if (*(v197 + 64) >= *(*v196 + 64))
                    {
                      goto LABEL_57;
                    }

                    v35 = v196;
                    v36 = &v197;
                  }

                  else
                  {
                    v35 = v196;
                    if (v34 >= v33)
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, &v197);
                      if (*(v194 + 64) >= *(v197 + 64))
                      {
LABEL_57:
                        *v196 = *selfCopy;
                        v37 = *(selfCopy + 2);
                        *&v197 = selfCopy[3];
                        *(&v197 + 7) = *(selfCopy + 31);
                        v38 = *(selfCopy + 39);
                        selfCopy[2] = 0.0;
                        selfCopy[3] = 0.0;
                        v39 = *(selfCopy + 5);
                        *&v194 = selfCopy[6];
                        *(&v194 + 7) = *(selfCopy + 55);
                        v40 = *(selfCopy + 63);
                        selfCopy[4] = 0.0;
                        selfCopy[5] = 0.0;
                        selfCopy[6] = 0.0;
                        selfCopy[7] = 0.0;
                        v41 = *(selfCopy + 8);
                        v42 = *v12;
                        v43 = *(v12 + 1);
                        selfCopy[4] = v12[4];
                        *selfCopy = v42;
                        *(selfCopy + 1) = v43;
                        *(v12 + 39) = 0;
                        *(v12 + 16) = 0;
                        v45 = *(v12 + 7);
                        v44 = *(v12 + 8);
                        *(selfCopy + 5) = *(v12 + 5);
                        *(selfCopy + 7) = v45;
                        *(selfCopy + 8) = v44;
                        *(v12 + 63) = 0;
                        *(v12 + 40) = 0;
                        *v12 = *v196;
                        *(v12 + 2) = v37;
                        v46 = *(&v197 + 7);
                        *(v12 + 3) = v197;
                        *(v12 + 31) = v46;
                        *(v12 + 39) = v38;
                        *(v12 + 5) = v39;
                        v47 = v194;
                        *(v12 + 55) = *(&v194 + 7);
                        *(v12 + 6) = v47;
                        *(v12 + 63) = v40;
                        *(v12 + 8) = v41;
                        goto LABEL_58;
                      }

                      v35 = &v197;
                    }

                    v36 = &v194;
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v35, v36);
                  goto LABEL_57;
                }

                v31 = v196;
                v32 = &v197;
              }

              else
              {
                v31 = v196;
                if (v30 >= v29)
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, &v197);
                  if (*(v194 + 64) >= *(v197 + 64))
                  {
                    goto LABEL_48;
                  }

                  v31 = &v197;
                }

                v32 = &v194;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v31, v32);
              goto LABEL_48;
            }

            v25 = v196;
            v26 = &v197;
          }

          else
          {
            v25 = v196;
            if (v24 >= v23)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, &v197);
              if (*(v194 + 64) >= *(v197 + 64))
              {
                goto LABEL_39;
              }

              v25 = &v197;
            }

            v26 = &v194;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v25, v26);
          goto LABEL_39;
        }

        v15 = v196;
        v16 = &v197;
      }

      else
      {
        v15 = v196;
        if (v14 >= v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, &v197);
          if (*(v194 + 64) >= *(v197 + 64))
          {
            goto LABEL_26;
          }

          v15 = &v197;
        }

        v16 = &v194;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v15, v16);
      goto LABEL_26;
    }

    *v196 = v12;
    *&v197 = selfCopy;
    *&v194 = v6 - 9;
    v17 = selfCopy[8];
    v18 = *(v6 - 1);
    if (v17 < v12[8])
    {
      v19 = v196;
      if (v18 >= v17)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, &v197);
        if (*(v194 + 64) >= *(v197 + 64))
        {
          goto LABEL_58;
        }

        v19 = &v197;
      }

      v20 = &v194;
      goto LABEL_34;
    }

    if (v18 < v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v197, &v194);
      if (*(v197 + 64) < *(*v196 + 64))
      {
        v19 = v196;
        v20 = &v197;
LABEL_34:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v19, v20);
      }
    }

LABEL_58:
    v185 = times - 1;
    if (time)
    {
      timeCopy2 = time;
      v48 = selfCopy[8];
    }

    else
    {
      v48 = selfCopy[8];
      if (*(selfCopy - 1) >= v48)
      {
        *v193 = v6;
        v197 = *selfCopy;
        v61 = (selfCopy + 2);
        v60 = *(selfCopy + 2);
        *&v194 = selfCopy[3];
        *(&v194 + 7) = *(selfCopy + 31);
        v62 = *(selfCopy + 39);
        selfCopy[2] = 0.0;
        selfCopy[3] = 0.0;
        selfCopy[4] = 0.0;
        v64 = (selfCopy + 5);
        v63 = *(selfCopy + 40);
        *v196 = *(selfCopy + 41);
        *&v196[14] = *(selfCopy + 55);
        v65 = *(selfCopy + 63);
        selfCopy[6] = 0.0;
        selfCopy[7] = 0.0;
        selfCopy[5] = 0.0;
        if (*(v6 - 1) <= v48)
        {
          v80 = selfCopy + 9;
          do
          {
            v67 = v80;
            if (v80 >= v6)
            {
              break;
            }

            v81 = v80[8];
            v80 += 9;
          }

          while (v81 <= v48);
        }

        else
        {
          v66 = selfCopy;
          do
          {
            v67 = (v66 + 9);
            v68 = v66[17];
            v66 += 9;
          }

          while (v68 <= v48);
        }

        *v195 = v67;
        if (v67 < v6)
        {
          do
          {
            v82 = *(v6 - 1);
            v6 -= 9;
          }

          while (v82 > v48);
          *v193 = v6;
        }

        if (v67 < v6)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v195, v193);
            v67 = *v195;
            do
            {
              v83 = *(v67 + 136);
              v67 += 72;
            }

            while (v83 <= v48);
            *v195 = v67;
            v84 = *v193;
            do
            {
              v85 = *(v84 - 8);
              v84 -= 72;
            }

            while (v85 > v48);
            *v193 = v84;
          }

          while (v67 < v84);
        }

        v86 = (v67 - 72);
        if ((v67 - 72) != selfCopy)
        {
          *selfCopy = *v86;
          if (*(selfCopy + 39) < 0)
          {
            operator delete(*v61);
          }

          v87 = *(v67 - 56);
          selfCopy[4] = *(v67 - 40);
          *v61 = v87;
          *(v67 - 33) = 0;
          *(v67 - 56) = 0;
          if (*(selfCopy + 63) < 0)
          {
            operator delete(*v64);
          }

          v88 = *(v67 - 32);
          selfCopy[7] = *(v67 - 16);
          *v64 = v88;
          *(v67 - 9) = 0;
          *(v67 - 32) = 0;
          selfCopy[8] = *(v67 - 8);
        }

        *v86 = v197;
        if (*(v67 - 33) < 0)
        {
          operator delete(*(v67 - 56));
        }

        *(v67 - 56) = v60;
        v89 = v194;
        *(v67 - 41) = *(&v194 + 7);
        *(v67 - 48) = v89;
        *(v67 - 33) = v62;
        if (*(v67 - 9) < 0)
        {
          operator delete(*(v67 - 32));
        }

        time = 0;
        *(v67 - 32) = v63;
        v90 = *v196;
        *(v67 - 17) = *&v196[14];
        *(v67 - 31) = v90;
        *(v67 - 9) = v65;
        *(v67 - 8) = v48;
        v69 = *v195;
        selfCopy2 = *v195;
        times = v185;
        goto LABEL_122;
      }

      timeCopy2 = time;
    }

    v49 = 0;
    v197 = *selfCopy;
    v51 = (selfCopy + 2);
    v50 = *(selfCopy + 2);
    *&v194 = selfCopy[3];
    *(&v194 + 7) = *(selfCopy + 31);
    v52 = *(selfCopy + 39);
    selfCopy[2] = 0.0;
    selfCopy[3] = 0.0;
    selfCopy[4] = 0.0;
    v53 = (selfCopy + 5);
    v179 = *(selfCopy + 40);
    *v196 = *(selfCopy + 41);
    *&v196[14] = *(selfCopy + 55);
    v54 = *(selfCopy + 63);
    selfCopy[6] = 0.0;
    selfCopy[7] = 0.0;
    selfCopy[5] = 0.0;
    do
    {
      v55 = selfCopy[v49 + 17];
      v49 += 9;
    }

    while (v55 < v48);
    v56 = &selfCopy[v49];
    *v195 = &selfCopy[v49];
    if (v49 == 9)
    {
      while (v56 < v6)
      {
        v57 = v6 - 9;
        v59 = *(v6 - 1);
        v6 -= 9;
        if (v59 < v48)
        {
          goto LABEL_75;
        }
      }

      v57 = v6;
    }

    else
    {
      do
      {
        v57 = v6 - 9;
        v58 = *(v6 - 1);
        v6 -= 9;
      }

      while (v58 >= v48);
    }

LABEL_75:
    *v193 = v57;
    v69 = &selfCopy[v49];
    if (v56 < v57)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v195, v193);
        v69 = *v195;
        do
        {
          v70 = v69[17];
          v69 += 9;
        }

        while (v70 < v48);
        *v195 = v69;
        v71 = *v193;
        do
        {
          v72 = *(v71 - 8);
          v71 -= 72;
        }

        while (v72 >= v48);
        *v193 = v71;
      }

      while (v69 < v71);
    }

    v73 = v69 - 9;
    if (v69 - 9 != selfCopy)
    {
      *selfCopy = *v73;
      if (*(selfCopy + 39) < 0)
      {
        operator delete(*v51);
      }

      v74 = *(v69 - 7);
      selfCopy[4] = *(v69 - 5);
      *v51 = v74;
      *(v69 - 33) = 0;
      *(v69 - 56) = 0;
      if (*(selfCopy + 63) < 0)
      {
        operator delete(*v53);
      }

      v75 = *(v69 - 2);
      selfCopy[7] = *(v69 - 2);
      *v53 = v75;
      *(v69 - 9) = 0;
      *(v69 - 32) = 0;
      selfCopy[8] = *(v69 - 1);
    }

    *v73 = v197;
    if (*(v69 - 33) < 0)
    {
      operator delete(*(v69 - 7));
    }

    *(v69 - 7) = v50;
    v76 = v194;
    *(v69 - 41) = *(&v194 + 7);
    *(v69 - 6) = v76;
    *(v69 - 33) = v52;
    times = v185;
    if (*(v69 - 9) < 0)
    {
      operator delete(*(v69 - 4));
    }

    *(v69 - 32) = v179;
    v77 = *v196;
    *(v69 - 17) = *&v196[14];
    *(v69 - 31) = v77;
    *(v69 - 9) = v54;
    *(v69 - 1) = v48;
    v78 = v56 >= v57;
    time = timeCopy2;
    if (!v78)
    {
      goto LABEL_92;
    }

    v79 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *>(selfCopy2, v69 - 9);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *>(v69, v190))
    {
      if (!v79)
      {
LABEL_92:
        std::__introsort<std::_ClassicAlgPolicy,[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,false>(selfCopy2, v69 - 9, v185, timeCopy2 & 1);
        time = 0;
      }

      selfCopy2 = v69;
      goto LABEL_122;
    }

    if (v79)
    {
      return;
    }

    v190 = v69 - 9;
    v69 = selfCopy2;
LABEL_122:
    v6 = v190;
    selfCopy = v69;
  }

  v190 = v6 - 9;
  *v196 = selfCopy;
  *&v197 = selfCopy + 9;
  *&v194 = selfCopy + 18;
  *v195 = selfCopy + 27;
  *v193 = v6 - 9;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,0>(selfCopy, selfCopy + 9, selfCopy + 18, (selfCopy + 27));
  if (*(v6 - 1) < selfCopy[35])
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v195, v193);
    if (*(*v195 + 64) < selfCopy[26])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v194, v195);
      if (*(v194 + 64) < selfCopy[17])
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v197, &v194);
        v93 = *(v197 + 64);
        v94 = selfCopy[8];
        goto LABEL_229;
      }
    }
  }
}

- (uint64_t)insertDataObjects:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (id)insertDataObjects:
{
  managedObjectContext = [**(self + 8) managedObjectContext];
  v4 = [ULBluetoothIdentityMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end