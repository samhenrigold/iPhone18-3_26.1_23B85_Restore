@interface GEOTileLoader
+ (id)modernLoader;
+ (id)singletonConfiguration;
- (GEOTileLoader)init;
- (id)descriptionDictionaryRepresentation;
- (void)_requestOnlineTiles;
- (void)_scheduleCoalesceTimer;
@end

@implementation GEOTileLoader

void __39__GEOTileLoader_singletonConfiguration__block_invoke()
{
  v0 = objc_alloc_init(GEOTileLoaderConfiguration);
  v1 = +[GEOTileLoader singletonConfiguration]::config;
  +[GEOTileLoader singletonConfiguration]::config = v0;
}

+ (id)modernLoader
{
  if (+[GEOTileLoader modernLoader]::onceToken != -1)
  {
    dispatch_once(&+[GEOTileLoader modernLoader]::onceToken, &__block_literal_global_114);
  }

  v3 = _singleton;

  return v3;
}

void __29__GEOTileLoader_modernLoader__block_invoke()
{
  v0 = objc_alloc_init(GEOTileLoader);
  v1 = _singleton;
  _singleton = v0;
}

- (GEOTileLoader)init
{
  v3 = +[GEOTileLoader singletonConfiguration];
  v4 = [GEOTileLoader initWithConfiguration:v3 serverProxy:?];

  return v4;
}

+ (id)singletonConfiguration
{
  objc_opt_self();
  if (+[GEOTileLoader singletonConfiguration]::onceToken != -1)
  {
    dispatch_once(&+[GEOTileLoader singletonConfiguration]::onceToken, &__block_literal_global_4491);
  }

  v1 = +[GEOTileLoader singletonConfiguration]::config;

  return v1;
}

- (id)descriptionDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  geo_isolate_sync_data();
  v2 = dictionary;

  return dictionary;
}

void __52__GEOTileLoader_descriptionDictionaryRepresentation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(*(*(a1 + 32) + 80), "memoryCacheCountLimit")];
  [v2 setObject:v3 forKey:@"cacheCountLimit"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(*(*(a1 + 32) + 80), "memoryCacheCostLimit")];
  [v2 setObject:v4 forKey:@"cacheTotalCostLimit"];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(*(a1 + 32) + 40)];
  [v2 setObject:v5 forKey:@"proxy"];

  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __52__GEOTileLoader_descriptionDictionaryRepresentation__block_invoke_2;
  v36 = &unk_1E70713F8;
  v6 = v2;
  v7 = *(a1 + 32);
  v37 = v6;
  v38 = v7;
  geo_isolate_sync_data();
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 32), "memoryHits")];
  [v6 setObject:v8 forKey:@"memoryhits"];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 32), "diskHits")];
  [v6 setObject:v9 forKey:@"diskhits"];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 32), "networkHits")];
  [v6 setObject:v10 forKey:@"networkhits"];

  v12 = [MEMORY[0x1E695DF70] array];
  v13 = *(*(a1 + 32) + 96);
  v14 = *(v13 + 16);
  while (v14 != v13 + 8)
  {
    v15 = LoadItem::description((v14 + 16), v11);
    [v12 addObject:v15];

    v14 = *(v14 + 8);
    v13 = *(*(a1 + 32) + 96);
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
  [v6 setObject:v16 forKey:@"loadItems"];

  v18 = [MEMORY[0x1E695DF70] array];
  v19 = *(*(a1 + 32) + 96);
  v20 = v19[13];
  if (v19[14] != v20)
  {
    v21 = v19[16];
    v22 = (v20 + 8 * (v21 / 0x49));
    v23 = (*v22 - 4088 * (v21 / 0x49) + 56 * v21);
    v24 = *(v20 + 8 * ((v19[17] + v21) / 0x49)) - 4088 * ((v19[17] + v21) / 0x49) + 56 * (v19[17] + v21);
    while (v23 != v24)
    {
      v25 = ErrorInfo::description(v23, v17);
      [v18 addObject:v25];

      v23 = (v23 + 56);
      if ((v23 - *v22) == 4088)
      {
        v26 = v22[1];
        ++v22;
        v23 = v26;
      }
    }
  }

  v27 = MEMORY[0x1E696AEC0];
  v28 = [v18 description];
  v29 = [v27 stringWithFormat:@"%@", v28];
  [v6 setObject:v29 forKey:@"errors"];

  v30 = *(a1 + 40);
  v32.receiver = *(a1 + 32);
  v32.super_class = GEOTileLoader;
  v31 = objc_msgSendSuper2(&v32, sel_description);
  [v30 setObject:v6 forKey:v31];
}

void __52__GEOTileLoader_descriptionDictionaryRepresentation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(*(a1 + 40) + 24)];
  [v1 setObject:? forKey:?];
}

- (void)_scheduleCoalesceTimer
{
  if (self->_coalesceTimerEnabled)
  {
    block[7] = v2;
    block[8] = v3;
    internal = self->_internal;
    v5 = *(internal + 2);
    if (v5 == (internal + 8))
    {
      v10 = *(internal + 6);
      if (*(v10 + 48) == 21)
      {
        goto LABEL_22;
      }

      v6 = QOS_CLASS_DEFAULT;
      *(v10 + 48) = 21;
    }

    else
    {
      v6 = QOS_CLASS_DEFAULT;
      do
      {
        if (v5[16])
        {
          v7 = v5[15];
          if (v7)
          {
            v8 = QOS_CLASS_UNSPECIFIED;
            v9 = v5[15];
            do
            {
              if (v8 <= *(v9 + 45))
              {
                v8 = *(v9 + 45);
              }

              v9 = *v9;
            }

            while (v9);
            if (v6 <= v8)
            {
              v6 = QOS_CLASS_UNSPECIFIED;
              do
              {
                if (v6 <= *(v7 + 45))
                {
                  v6 = *(v7 + 45);
                }

                v7 = *v7;
              }

              while (v7);
            }
          }
        }

        v5 = v5[1];
      }

      while (v5 != (internal + 8));
      v10 = *(internal + 6);
      if (*(v10 + 48) == v6)
      {
        goto LABEL_22;
      }

      *(v10 + 48) = v6;
      if (v6 == QOS_CLASS_UNSPECIFIED)
      {
        v11 = *(v10 + 8);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = ___ZN3geo13DispatchTimer8scheduleEyy11qos_class_t_block_invoke_2;
        v15[3] = &__block_descriptor_40_e5_v8__0l;
        v15[4] = v10;
        dispatch_source_set_event_handler(v11, v15);
LABEL_22:
        v13 = *(v10 + 8);
        v14 = dispatch_time(0, 5000000);
        dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0xC350uLL);
        return;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN3geo13DispatchTimer8scheduleEyy11qos_class_t_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v10;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, block);
    dispatch_source_set_event_handler(*(v10 + 8), v12);

    goto LABEL_22;
  }
}

- (void)_requestOnlineTiles
{
  v188 = *MEMORY[0x1E69E9840];
LABEL_2:
  v174 = a2 - 10;
  v175 = a2 - 5;
  v176 = a2;
  v173 = a2 - 15;
  selfCopy = self;
  while (1)
  {
    self = selfCopy;
    v8 = v176;
    v9 = v176 - selfCopy;
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v176 - selfCopy);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        if (*(v176 - 16) <= *(self + 4))
        {
          return;
        }

LABEL_115:
        selfCopy12 = self;
        goto LABEL_116;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[GEOTileLoader _requestOnlineTiles]::$_3 &,geo::Batch::KeyInfo *,0>(self, (self + 5), (self + 10), v175);
      return;
    }

    if (v10 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[GEOTileLoader _requestOnlineTiles]::$_3 &,geo::Batch::KeyInfo *,0>(self, (self + 5), (self + 10), (self + 15));
      if (*(v176 - 16) > *(self + 64))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(self + 15, v175);
        if (*(self + 64) > *(self + 44))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(self + 10, self + 15);
          if (*(self + 44) > *(self + 24))
          {
            v88 = self + 5;
            v89 = self + 10;
            goto LABEL_174;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v9 <= 1919)
    {
      if (a4)
      {
        if (self != v176)
        {
          v91 = self + 5;
          if (self + 5 != v176)
          {
            v92 = 0;
            selfCopy3 = self;
            do
            {
              v94 = v91;
              if (*(selfCopy3 + 24) > *(selfCopy3 + 4))
              {
                v95 = *v91;
                v96 = v91[1];
                v97 = v91[2];
                v185 = *(v91 + 6);
                v183 = v96;
                v184 = v97;
                v182 = v95;
                geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v186, selfCopy3 + 136);
                v98 = v92;
                while (1)
                {
                  v99 = v98;
                  v100 = self + v98;
                  v101 = *(self + v98 + 16);
                  *(v100 + 5) = *(self + v98);
                  *(v100 + 6) = v101;
                  *(v100 + 7) = *(self + v98 + 32);
                  *(v100 + 16) = *(self + v98 + 48);
                  v102 = self + v98 + 56;
                  geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(self + v98 + 136, v102);
                  if (!v99)
                  {
                    break;
                  }

                  v98 = v99 - 80;
                  if (v183 <= *(v100 - 16))
                  {
                    selfCopy4 = (self + v99);
                    v102 = self + v99 + 56;
                    goto LABEL_129;
                  }
                }

                selfCopy4 = self;
LABEL_129:
                v104 = v182;
                v105 = v183;
                v106 = v184;
                *(selfCopy4 + 6) = v185;
                selfCopy4[1] = v105;
                selfCopy4[2] = v106;
                *selfCopy4 = v104;
                geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v102, &v186);
                v186 = &unk_1EF7EA1B8;

                v8 = v176;
              }

              v91 = v94 + 5;
              v92 += 80;
              selfCopy3 = v94;
            }

            while (v94 + 5 != v8);
          }
        }
      }

      else if (self != v176)
      {
        v161 = self + 5;
        if (self + 5 != v176)
        {
          v162 = self - 4;
          do
          {
            v163 = v161;
            if (*(self + 24) > *(self + 4))
            {
              v164 = *v161;
              v165 = v161[1];
              v166 = v161[2];
              v185 = *(v161 + 6);
              v183 = v165;
              v184 = v166;
              v182 = v164;
              geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v186, self + 136);
              v167 = v162;
              do
              {
                v168 = v167;
                v169 = v167[5];
                v167[9] = v167[4];
                v167[10] = v169;
                v167[11] = v167[6];
                *(v167 + 24) = *(v167 + 14);
                geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v167 + 200, v167 + 120);
                v167 = v168 - 5;
              }

              while (v183 > *v168);
              v170 = v182;
              v171 = v183;
              v172 = v184;
              *(v168 + 14) = v185;
              v168[5] = v171;
              v168[6] = v172;
              v168[4] = v170;
              geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v168 + 120, &v186);
              v186 = &unk_1EF7EA1B8;

              v8 = v176;
            }

            v161 = v163 + 5;
            v162 += 5;
            self = v163;
          }

          while (v163 + 5 != v8);
        }
      }

      return;
    }

    if (!a3)
    {
      if (self != v176)
      {
        v107 = v11 >> 1;
        v108 = v11 >> 1;
        do
        {
          v109 = v108;
          if (v107 >= v108)
          {
            v110 = (2 * v108) | 1;
            v111 = &self[5 * v110];
            if (2 * v108 + 2 < v10)
            {
              v112 = *(v111 + 4);
              v113 = *(v111 + 24);
              v114 = v112 > v113;
              v115 = v112 <= v113 ? 0 : 80;
              v111 = (v111 + v115);
              if (v114)
              {
                v110 = 2 * v108 + 2;
              }
            }

            v116 = &self[5 * v108];
            if (*(v111 + 4) <= *(v116 + 4))
            {
              v117 = *v116;
              v118 = v116[1];
              v119 = v116[2];
              v185 = *(v116 + 6);
              v183 = v118;
              v184 = v119;
              v182 = v117;
              geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v186, v116 + 56);
              do
              {
                v120 = v111;
                v121 = *v111;
                v122 = v111[1];
                v123 = v111[2];
                *(v116 + 6) = *(v111 + 6);
                v116[1] = v122;
                v116[2] = v123;
                *v116 = v121;
                geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v116 + 56, v111 + 56);
                if (v107 < v110)
                {
                  break;
                }

                v124 = (2 * v110) | 1;
                v111 = &self[5 * v124];
                if (2 * v110 + 2 < v10)
                {
                  v125 = *(v111 + 4);
                  v126 = *(v111 + 24);
                  v127 = v125 > v126;
                  v128 = v125 <= v126 ? 0 : 80;
                  v111 = (v111 + v128);
                  if (v127)
                  {
                    v124 = 2 * v110 + 2;
                  }
                }

                v116 = v120;
                v110 = v124;
              }

              while (*(v111 + 4) <= v183);
              v129 = v182;
              v130 = v183;
              v131 = v184;
              *(v120 + 6) = v185;
              v120[1] = v130;
              v120[2] = v131;
              *v120 = v129;
              geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v120 + 56, &v186);
              v186 = &unk_1EF7EA1B8;
            }
          }

          v108 = v109 - 1;
        }

        while (v109);
        v132 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 4);
        v133 = v176;
        do
        {
          v134 = v133;
          v180 = *(self + 6);
          v178 = self[1];
          v179 = self[2];
          v177 = *self;
          geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v181, self + 56);
          v135 = 0;
          selfCopy5 = self;
          do
          {
            v137 = &selfCopy5[5 * v135];
            v138 = v137 + 5;
            if (2 * v135 + 2 >= v132)
            {
              v135 = (2 * v135) | 1;
            }

            else
            {
              v139 = *(v137 + 24);
              v140 = *(v137 + 44);
              v141 = v137 + 10;
              if (v139 <= v140)
              {
                v135 = (2 * v135) | 1;
              }

              else
              {
                v138 = v141;
                v135 = 2 * v135 + 2;
              }
            }

            v142 = *v138;
            v143 = v138[1];
            v144 = v138[2];
            *(selfCopy5 + 6) = *(v138 + 6);
            selfCopy5[1] = v143;
            selfCopy5[2] = v144;
            *selfCopy5 = v142;
            geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(selfCopy5 + 56, v138 + 56);
            selfCopy5 = v138;
          }

          while (v135 <= ((v132 - 2) >> 1));
          v133 -= 5;
          if (v138 == v134 - 5)
          {
            *(v138 + 6) = v180;
            v138[1] = v178;
            v138[2] = v179;
            *v138 = v177;
            geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v138 + 56, v181);
          }

          else
          {
            v145 = *v133;
            v146 = *(v134 - 4);
            v147 = *(v134 - 3);
            *(v138 + 6) = *(v134 - 4);
            v138[1] = v146;
            v138[2] = v147;
            *v138 = v145;
            geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v138 + 56, v134 - 24);
            *(v134 - 4) = v180;
            *(v134 - 4) = v178;
            *(v134 - 3) = v179;
            *v133 = v177;
            geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v134 - 24, v181);
            v148 = v138 - self + 80;
            if (v148 >= 81)
            {
              v149 = (0xCCCCCCCCCCCCCCCDLL * (v148 >> 4) - 2) >> 1;
              v150 = &self[5 * v149];
              if (*(v150 + 4) > *(v138 + 4))
              {
                v151 = *v138;
                v152 = v138[1];
                v153 = v138[2];
                v185 = *(v138 + 6);
                v183 = v152;
                v184 = v153;
                v182 = v151;
                geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v186, v138 + 56);
                do
                {
                  v154 = v150;
                  v155 = *v150;
                  v156 = v150[1];
                  v157 = v150[2];
                  *(v138 + 6) = *(v150 + 6);
                  v138[1] = v156;
                  v138[2] = v157;
                  *v138 = v155;
                  geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v138 + 56, v150 + 56);
                  if (!v149)
                  {
                    break;
                  }

                  v149 = (v149 - 1) >> 1;
                  v150 = &self[5 * v149];
                  v138 = v154;
                }

                while (*(v150 + 4) > v183);
                v158 = v182;
                v159 = v183;
                v160 = v184;
                *(v154 + 6) = v185;
                v154[1] = v159;
                v154[2] = v160;
                *v154 = v158;
                geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v154 + 56, &v186);
                v186 = &unk_1EF7EA1B8;
              }
            }
          }

          v181[0] = &unk_1EF7EA1B8;

          v114 = v132-- <= 2;
        }

        while (!v114);
      }

      return;
    }

    v12 = v10 >> 1;
    v13 = &self[5 * (v10 >> 1)];
    v14 = *(v176 - 16);
    if (v9 >= 0x2801)
    {
      v15 = *(v13 + 4);
      if (v15 <= *(self + 4))
      {
        if (v14 > v15)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v13, v175);
          if (*(v13 + 4) > *(self + 4))
          {
            selfCopy7 = self;
            v17 = v13;
            goto LABEL_26;
          }
        }
      }

      else
      {
        selfCopy7 = self;
        if (v14 > v15)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(self, v13);
        if (*(v176 - 16) > *(v13 + 4))
        {
          selfCopy7 = v13;
LABEL_17:
          v17 = v175;
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(selfCopy7, v17);
        }
      }

      v21 = &self[5 * v12];
      v22 = v21 - 5;
      v23 = *(v21 - 16);
      v24 = *(v176 - 36);
      if (v23 <= *(self + 24))
      {
        if (v24 > v23)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v22, v174);
          if (*(v22 + 4) > *(self + 24))
          {
            v25 = self + 5;
            v26 = v22;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v25 = self + 5;
        if (v24 > v23)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v25, v22);
        if (*(v176 - 36) > *(v22 + 4))
        {
          v25 = v22;
LABEL_31:
          v26 = v174;
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v25, v26);
        }
      }

      v27 = &self[5 * v12];
      v28 = *(v27 + 24);
      v29 = *(v176 - 56);
      if (v28 <= *(self + 44))
      {
        if (v29 > v28)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v27 + 5, v173);
          if (*(v27 + 24) > *(self + 44))
          {
            v30 = self + 10;
            v31 = v27 + 5;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v30 = self + 10;
        if (v29 > v28)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v30, v27 + 5);
        if (*(v176 - 56) > *(v27 + 24))
        {
          v30 = v27 + 5;
LABEL_44:
          v31 = v173;
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v30, v31);
        }
      }

      v32 = *(v13 + 4);
      v33 = *(v27 + 24);
      if (v32 <= *(v22 + 4))
      {
        if (v33 > v32)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v13, v27 + 5);
          if (*(v13 + 4) > *(v22 + 4))
          {
            v35 = v22;
            v34 = v13;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v33 > v32)
        {
          v34 = v27 + 5;
          v35 = v22;
          goto LABEL_57;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v22, v13);
        if (*(v27 + 24) > *(v13 + 4))
        {
          v34 = v27 + 5;
          v35 = v13;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v35, v34);
        }
      }

      v36 = *self;
      v37 = self[1];
      v38 = self[2];
      v185 = *(self + 6);
      v183 = v37;
      v184 = v38;
      v182 = v36;
      geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v186, self + 56);
      v39 = *v13;
      v40 = v13[1];
      v41 = v13[2];
      *(self + 6) = *(v13 + 6);
      self[1] = v40;
      self[2] = v41;
      *self = v39;
      geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(self + 56, v13 + 56);
      v42 = v182;
      v43 = v183;
      v44 = v184;
      *(v13 + 6) = v185;
      v13[1] = v43;
      v13[2] = v44;
      *v13 = v42;
      geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v13 + 56, &v186);
      v186 = &unk_1EF7EA1B8;

      v8 = v176;
      goto LABEL_59;
    }

    v18 = *(self + 4);
    if (v18 <= *(v13 + 4))
    {
      if (v14 <= v18)
      {
        goto LABEL_59;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(self, v175);
      if (*(self + 4) <= *(v13 + 4))
      {
        goto LABEL_59;
      }

      selfCopy9 = v13;
      selfCopy8 = self;
    }

    else
    {
      selfCopy9 = v13;
      if (v14 <= v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v13, self);
        if (*(v176 - 16) <= *(self + 4))
        {
          goto LABEL_59;
        }

        selfCopy9 = self;
      }

      selfCopy8 = v175;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(selfCopy9, selfCopy8);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(self - 16) > *(self + 4))
    {
      v45 = *self;
      v46 = self[1];
      v47 = self[2];
      v185 = *(self + 6);
      v183 = v46;
      v184 = v47;
      v182 = v45;
      geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v186, self + 56);
      selfCopy10 = self;
      do
      {
        v49 = selfCopy10;
        selfCopy10 += 5;
      }

      while (*(v49 + 24) > v183);
      v50 = v8;
      if (v49 == self)
      {
        v53 = v8;
        while (selfCopy10 < v53)
        {
          v51 = (v53 - 80);
          v54 = *(v53 - 64);
          v53 -= 80;
          if (v54 > v183)
          {
            goto LABEL_71;
          }
        }

        v51 = v53;
      }

      else
      {
        do
        {
          v51 = v50 - 5;
          v52 = *(v50 - 16);
          v50 -= 5;
        }

        while (v52 <= v183);
      }

LABEL_71:
      if (selfCopy10 >= v51)
      {
        selfCopy = selfCopy10;
      }

      else
      {
        v55 = v51;
        selfCopy = selfCopy10;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(selfCopy, v55);
          do
          {
            v56 = *(selfCopy + 24);
            selfCopy += 5;
          }

          while (v56 > v183);
          do
          {
            v57 = *(v55 - 16);
            v55 -= 5;
          }

          while (v57 <= v183);
        }

        while (selfCopy < v55);
      }

      v58 = selfCopy - 5;
      if (selfCopy - 5 != self)
      {
        v59 = *v58;
        v60 = *(selfCopy - 4);
        v61 = *(selfCopy - 3);
        *(self + 6) = *(selfCopy - 4);
        self[1] = v60;
        self[2] = v61;
        *self = v59;
        geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(self + 56, selfCopy - 24);
      }

      v62 = v182;
      v63 = v183;
      v64 = v184;
      *(selfCopy - 4) = v185;
      *(selfCopy - 4) = v63;
      *(selfCopy - 3) = v64;
      *v58 = v62;
      geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(selfCopy - 24, &v186);
      v186 = &unk_1EF7EA1B8;

      if (selfCopy10 < v51)
      {
        goto LABEL_84;
      }

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[GEOTileLoader _requestOnlineTiles]::$_3 &,geo::Batch::KeyInfo *>(self, (selfCopy - 5));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[GEOTileLoader _requestOnlineTiles]::$_3 &,geo::Batch::KeyInfo *>(selfCopy, v176))
      {
        a2 = selfCopy - 5;
        if (!v65)
        {
          goto LABEL_2;
        }

        return;
      }

      if (!v65)
      {
LABEL_84:
        std::__introsort<std::_ClassicAlgPolicy,[GEOTileLoader _requestOnlineTiles]::$_3 &,geo::Batch::KeyInfo *,false>(self, selfCopy - 5, a3, a4 & 1);
        goto LABEL_103;
      }
    }

    else
    {
      v66 = *self;
      v67 = self[1];
      v68 = self[2];
      v185 = *(self + 6);
      v183 = v67;
      v184 = v68;
      v182 = v66;
      geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v186, self + 56);
      if (v183 <= *(v8 - 16))
      {
        v71 = self + 5;
        do
        {
          selfCopy = v71;
          if (v71 >= v8)
          {
            break;
          }

          v72 = *(v71 + 4);
          v71 += 5;
        }

        while (v183 <= v72);
      }

      else
      {
        selfCopy11 = self;
        do
        {
          selfCopy = selfCopy11 + 5;
          v70 = *(selfCopy11 + 24);
          selfCopy11 += 5;
        }

        while (v183 <= v70);
      }

      v73 = v8;
      if (selfCopy < v8)
      {
        v74 = v8;
        do
        {
          v73 = v74 - 5;
          v75 = *(v74 - 16);
          v74 -= 5;
        }

        while (v183 > v75);
      }

      while (selfCopy < v73)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(selfCopy, v73);
        do
        {
          v76 = *(selfCopy + 24);
          selfCopy += 5;
        }

        while (v183 <= v76);
        do
        {
          v77 = *(v73 - 16);
          v73 -= 5;
        }

        while (v183 > v77);
      }

      v78 = selfCopy - 5;
      if (selfCopy - 5 != self)
      {
        v79 = *v78;
        v80 = *(selfCopy - 4);
        v81 = *(selfCopy - 3);
        *(self + 6) = *(selfCopy - 4);
        self[1] = v80;
        self[2] = v81;
        *self = v79;
        geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(self + 56, selfCopy - 24);
      }

      v82 = v182;
      v83 = v183;
      v84 = v184;
      *(selfCopy - 4) = v185;
      *(selfCopy - 4) = v83;
      *(selfCopy - 3) = v84;
      *v78 = v82;
      geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(selfCopy - 24, &v186);
      v186 = &unk_1EF7EA1B8;

LABEL_103:
      a4 = 0;
    }
  }

  v85 = *(self + 24);
  v86 = *(v176 - 16);
  if (v85 > *(self + 4))
  {
    if (v86 > v85)
    {
      goto LABEL_115;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(self, self + 5);
    if (*(v176 - 16) <= *(self + 24))
    {
      return;
    }

    selfCopy12 = self + 5;
LABEL_116:
    v90 = v175;
LABEL_117:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(selfCopy12, v90);
    return;
  }

  if (v86 > v85)
  {
    v88 = self + 5;
    v89 = v175;
LABEL_174:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<geo::Batch::KeyInfo *&,geo::Batch::KeyInfo *&>(v88, v89);
    if (*(self + 24) > *(self + 4))
    {
      v90 = self + 5;
      selfCopy12 = self;
      goto LABEL_117;
    }
  }
}

void __28__GEOTileLoader__timerFired__block_invoke(uint64_t result)
{
  v111 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 12);
    v3 = v2 + 8;
    v4 = *(v2 + 16);
    if (v4 == v2 + 8)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        if ((LoadItem::options((v4 + 16)) & 0x200) != 0 && (*(v4 + 40) - 1) < 2)
        {
          ++v5;
        }

        v4 = *(v4 + 8);
      }

      while (v4 != v3);
    }

    v103 = &v103;
    v104 = &v103;
    v105 = 0;
    if ([*(v1 + 10) backpressureControlCountLimit] < 8)
    {
      v6 = 1;
    }

    else
    {
      v6 = [*(v1 + 10) backpressureControlCountLimit] >> 2;
    }

    v92 = v6;
    v7 = *(v1 + 12);
    v8 = *(v7 + 16);
    v93 = v1;
    if (v8 != v7 + 8)
    {
      v91 = v5;
      v89 = 0;
      while (1)
      {
        if (!*(v8 + 40))
        {
          v9 = LoadItem::options((v8 + 16));
          if ((v9 & 0x200) == 0)
          {
            goto LABEL_27;
          }

          v10 = v92;
          if (*(v8 + 128))
          {
            v11 = *(v8 + 120);
            v10 = v92;
            if (v11)
            {
              v12 = 0;
              do
              {
                if (*(v11 + 39) > v12)
                {
                  v12 = *(v11 + 39);
                }

                v11 = *v11;
              }

              while (v11);
              v10 = v92;
              if (v12 >= 0x7FFFFFFE)
              {
                v10 = [*(v1 + 10) backpressureControlCountLimit];
              }
            }
          }

          if (v91 < v10)
          {
            ++v91;
LABEL_27:
            *(v8 + 48) = v9;
            v96 = 0;
            v13 = v104;
            if (v104 == &v103)
            {
LABEL_44:
              v22 = *(v8 + 120);
              LoadItem::reason(v22);
              if (*(v8 + 128) && v22)
              {
                v23 = 0;
                do
                {
                  if (v23 <= *(v22 + 45))
                  {
                    v23 = *(v22 + 45);
                  }

                  v22 = *v22;
                }

                while (v22);
              }

              LoadItem::voucher((v8 + 16));
              objc_claimAutoreleasedReturnValue();
              operator new();
            }

            do
            {
              if (*(v13 + 13) == (*(v8 + 16) & 0x7F) && ((*(v13 + 10) ^ v9) & 0x1007) == 0)
              {
                if (*(v8 + 128) && (v14 = *(v8 + 120)) != 0)
                {
                  v15 = 0;
                  do
                  {
                    if (v15 <= *(v14 + 45))
                    {
                      v15 = *(v14 + 45);
                    }

                    v14 = *v14;
                  }

                  while (v14);
                }

                else
                {
                  v15 = 0;
                }

                if (*(v13 + 21) == v15)
                {
                  v16 = v13[11];
                  v17 = LoadItem::voucher((v8 + 16));
                  v18 = v17;
                  if (v16 == v17)
                  {
                    v19 = *(v13 + 48);
                    v20 = v19 == LoadItem::reason(*(v8 + 120));

                    if (v20)
                    {
                      if ((v9 & 8) == 0)
                      {
                        v57 = v13[5];
                        if ((v57 & 8) != 0)
                        {
                          v13[5] = v57 & 0xFFFFFFFFFFFFFFF7;
                        }
                      }

                      v21 = v13 + 2;
                      v96 = v21;
                      goto LABEL_51;
                    }
                  }

                  else
                  {
                  }
                }
              }

              v13 = v13[1];
            }

            while (v13 != &v103);
            v21 = v96;
            if (!v96)
            {
              goto LABEL_44;
            }

LABEL_51:
            *(v8 + 144) = *(v21 + 16);
            *buf = *(v8 + 16);
            if (*(v8 + 128))
            {
              v25 = (v8 + 120);
              v24 = *(v8 + 120);
              if (v24)
              {
                v26 = 0;
                v27 = *(v8 + 120);
                do
                {
                  if (*(v27 + 39) > v26)
                  {
                    v26 = *(v27 + 39);
                  }

                  v27 = *v27;
                }

                while (v27);
              }

              else
              {
                v26 = 0;
              }

              *&buf[16] = v26;
              v29 = (v8 + 120);
              do
              {
                v29 = *v29;
              }

              while (v29 && *(v29 + 161) != 1);
              buf[20] = v29 != 0;
              while (1)
              {
                v25 = *v25;
                if (!v25)
                {
                  break;
                }

                if (*(v25 + 161) == 1)
                {
                  v28 = *(v25 + 164);
                  goto LABEL_69;
                }
              }

              v28 = 0uLL;
            }

            else
            {
              *&buf[16] = 0;
              buf[20] = 0;
              v28 = 0uLL;
              v24 = *(v8 + 120);
            }

LABEL_69:
            *&buf[24] = v28;
            v30 = 0;
            if (v24)
            {
              LOBYTE(v31) = 0;
              do
              {
                if ((v24[24] - 1) <= 0xFFFFFFFFFFFFFFFDLL && (!v30 || (v31 & 0x40) != 0 && (v24[18] & 0x40) == 0))
                {
                  v31 = v24[18];
                  v30 = v24[24];
                }

                v24 = *v24;
              }

              while (v24);
            }

            *&buf[40] = v30;
            v32 = (v8 + 120);
            while (1)
            {
              v32 = *v32;
              if (!v32)
              {
                break;
              }

              v33 = v32[25];
              if (v33 != 0.0)
              {
                goto LABEL_82;
              }
            }

            v33 = 0.0;
LABEL_82:
            v108 = v33;
            geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v109, v8 + 80);
            v35 = v21[1];
            v34 = v21[2];
            if (v35 >= v34)
            {
              v40 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - *v21) >> 4);
              v41 = v40 + 1;
              if (v40 + 1 > 0x333333333333333)
              {
                std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
              }

              v42 = 0xCCCCCCCCCCCCCCCDLL * ((v34 - *v21) >> 4);
              if (2 * v42 > v41)
              {
                v41 = 2 * v42;
              }

              if (v42 >= 0x199999999999999)
              {
                v43 = 0x333333333333333;
              }

              else
              {
                v43 = v41;
              }

              if (v43)
              {
                if (v43 <= 0x333333333333333)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v44 = 16 * ((v35 - *v21) >> 4);
              v45 = *&buf[16];
              *v44 = *buf;
              *(v44 + 16) = v45;
              *(v44 + 32) = *&buf[32];
              *(v44 + 48) = v108;
              geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(80 * v40 + 56, &v109);
              v46 = *v21;
              v47 = v21[1];
              v90 = v47 - *v21;
              if (v47 != *v21)
              {
                v48 = (80 * v40 - 16 * (v47 - v46) + 56);
                v49 = *v21;
                do
                {
                  v50 = *v49;
                  v51 = v49[1];
                  v52 = v49[2];
                  *(v48 - 1) = *(v49 + 6);
                  *(v48 - 3) = v52;
                  *(v48 - 5) = v51;
                  *(v48 - 7) = v50;
                  v53 = geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v48, v49 + 56);
                  v49 += 5;
                  v48 = v53 + 10;
                }

                while (v49 != v47);
                v54 = v46 + 56;
                do
                {
                  *(v46 + 7) = &unk_1EF7EA1B8;

                  v46 += 5;
                  v54 += 80;
                }

                while (v46 != v47);
              }

              v39 = v44 + 80;
              v55 = *v21;
              *v21 = v44 - v90;
              *(v21 + 1) = (v44 + 80);
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              v36 = *buf;
              v37 = *&buf[16];
              v38 = *&buf[32];
              *(v35 + 48) = v108;
              *(v35 + 16) = v37;
              *(v35 + 32) = v38;
              *v35 = v36;
              geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v35 + 56, &v109);
              v39 = v35 + 80;
              v21[1] = v35 + 80;
            }

            v21[1] = v39;
            v109 = &unk_1EF7EA1B8;

            v106[0] = &off_1EF7E6D20;
            v106[1] = &v96;
            v106[3] = v106;
            LoadItem::foreachRequester(*(v8 + 120), v106);
            std::__function::__value_func<void ()(LoadItem::Requester &)>::~__value_func[abi:ne200100](v106);
            if ((v9 & 0x1060) != 0)
            {
              v56 = 1;
            }

            else
            {
              v56 = 3;
            }

            *(v8 + 40) = 1;
            *(v8 + 44) = v56;
            v1 = v93;
            goto LABEL_104;
          }

          ++v89;
        }

LABEL_104:
        v8 = *(v8 + 8);
        if (v8 == *(v1 + 12) + 8)
        {
          if (v89)
          {
            v58 = GEOGetTileLoadingLog();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              *&buf[4] = v89;
              _os_log_impl(&dword_18660C000, v58, OS_LOG_TYPE_INFO, "Withholding %{public}llu tile requests from submission due to backpressure", buf, 0xCu);
            }
          }

          break;
        }
      }
    }

    v59 = v104;
    if (v104 != &v103)
    {
      v60 = &v102;
      do
      {
        v61 = v59[2];
        v62 = v59[3];
        v63 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (v62 - v61));
        if (v62 == v61)
        {
          v64 = 0;
        }

        else
        {
          v64 = v63;
        }

        std::__introsort<std::_ClassicAlgPolicy,[GEOTileLoader _requestOnlineTiles]::$_3 &,geo::Batch::KeyInfo *,false>(v61, v62, v64, 1);
        v96 = malloc_type_malloc(0x3333333333333334 * ((v59[3] - v59[2]) >> 4), 0x100004052888210uLL);
        v97 = malloc_type_malloc(0xCCCCCCCCCCCCCCCDLL * ((v59[3] - v59[2]) >> 4), 0x100004077774924uLL);
        v98 = malloc_type_calloc(0xCCCCCCCCCCCCCCCDLL * ((v59[3] - v59[2]) >> 4), 0x10uLL, 0x1000040451B5BE8uLL);
        v99 = malloc_type_malloc(0x6666666666666668 * ((v59[3] - v59[2]) >> 4), 0x100004000313F17uLL);
        v100 = [[GEOTileKeyList alloc] initWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((v59[3] - v59[2]) >> 4)];
        v101 = malloc_type_malloc(0x6666666666666668 * ((v59[3] - v59[2]) >> 4), 0x100004000313F17uLL);
        v66 = v59[2];
        v65 = v59[3];
        *v60 = 0;
        v60[1] = 0;
        v60[2] = 0;
        *buf = v60;
        buf[8] = 0;
        v67 = v65 - v66;
        if (v67)
        {
          if (!((0xCCCCCCCCCCCCCCCDLL * (v67 >> 4)) >> 61))
          {
            operator new();
          }

          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v68 = v59[2];
        v69 = v59[3];
        if (v68 != v69)
        {
          v70 = 0;
          v71 = 0;
          v72 = 0;
          do
          {
            v73 = *v68;
            v74 = *(v68 + 1);
            v75 = *(v68 + 2);
            v108 = v68[6];
            *&buf[16] = v74;
            *&buf[32] = v75;
            *buf = v73;
            geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v109, (v68 + 7));
            [(GEOTileKeyList *)v100 _addKeyToBack:buf];
            v96[v72] = *&buf[16];
            v76 = buf[20];
            v97[v72] = buf[20];
            if (v76 == 1)
            {
              *&v98[v71] = *&buf[24];
            }

            *&v99[v70] = *&buf[40];
            if (v101)
            {
              *&v101[v70] = v108;
            }

            if (v110)
            {
              objc_storeStrong((v102 + v70), v110);
              v77 = v110;
            }

            else
            {
              v77 = 0;
            }

            v109 = &unk_1EF7EA1B8;

            ++v72;
            v68 += 10;
            v71 += 16;
            v70 += 8;
          }

          while (v68 != v69);
        }

        v78 = v59[8];
        v79 = [GEOApplicationAuditToken compositeTokenForTokens:v78];
        v80 = GEOGetTileLoadingLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          v81 = v60;
          v82 = v100;
          v83 = [(GEOTileKeyList *)v82 count];
          v84 = *(v59 + 13);
          v85 = objc_opt_class();
          *buf = 134218754;
          *&buf[4] = v83;
          *&buf[12] = 1024;
          *&buf[14] = v84;
          *&buf[18] = 2112;
          *&buf[20] = v79;
          *&buf[28] = 2112;
          *&buf[30] = v85;
          _os_log_impl(&dword_18660C000, v80, OS_LOG_TYPE_INFO, "Submitting batch of size %zu for provider %d and clients %@ to (%@)", buf, 0x26u);

          v60 = v81;
        }

        v94 = v93;
        v95 = v79;
        v86 = v95;
        v87 = v94;
        v88 = dispatch_block_create_with_voucher_and_qos_class();

        v88[2](v88);
        geo::BatchLoadHelper::~BatchLoadHelper(&v96);
        v59 = v59[1];
      }

      while (v59 != &v103);
    }

    std::__list_imp<geo::Batch>::clear(&v103);
  }
}

void __36__GEOTileLoader__requestOnlineTiles__block_invoke(void *a1)
{
  v19 = *(a1[4] + 40);
  v20 = *(a1[5] + 32);
  v3 = a1[5];
  v2 = a1[6];
  v18 = *(v2 + 64);
  v16 = v3[1];
  v17 = *v3;
  v14 = v3[3];
  v15 = v3[2];
  v13 = *(v2 + 32);
  v4 = *(v2 + 24);
  v5 = v3[5];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:(v3[7] - v3[6]) >> 3];
  v7 = v3[6];
  for (i = v3[7]; v7 != i; ++v7)
  {
    v9 = *v7;
    if (v9)
    {
      [v6 addObject:v9];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v6 addObject:v10];
    }
  }

  v11 = [v6 copy];

  LOBYTE(v12) = v13;
  [v19 loadTiles:v20 batchID:v18 priorities:v17 hasAdditionalInfos:v16 additionalInfos:v15 signpostIDs:v14 createTimes:v5 reason:v12 options:v4 cacheInfos:v11 auditToken:a1[7]];
}

@end