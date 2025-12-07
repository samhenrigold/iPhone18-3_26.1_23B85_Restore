@interface AREnvironmentProbeManager
- (AREnvironmentProbeManager)initWithMode:(int64_t)mode;
- (BOOL)_addProbeWithAnchor:(id)anchor timestamp:(double)timestamp textureImmediately:(BOOL)immediately;
- (BOOL)_isBusy;
- (BOOL)_textureDataIsBusy;
- (id).cxx_construct;
- (id)_fullDescription;
- (id)updateProbesForTimestamp:(double)timestamp planes:()vector<ARTexturedPlane imageData:(std:(id)data :(id)a6 allocator<ARTexturedPlane>> *)a4 pose:(id)pose enableDirectTexturingForProbesWithIdentifier:;
- (void)_insertIntoQueue:(id)queue;
- (void)_requestTextureForProbe:(id)probe;
- (void)_updateProbesFromExistingAnchors:(id)anchors;
@end

@implementation AREnvironmentProbeManager

- (AREnvironmentProbeManager)initWithMode:(int64_t)mode
{
  v32.receiver = self;
  v32.super_class = AREnvironmentProbeManager;
  v4 = [(AREnvironmentProbeManager *)&v32 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
    v6 = objc_opt_new();
    initialProbeIdentifiers = v5->_initialProbeIdentifiers;
    v5->_initialProbeIdentifiers = v6;

    v8 = objc_opt_new();
    anchorsToRemove = v5->_anchorsToRemove;
    v5->_anchorsToRemove = v8;

    v10 = objc_opt_new();
    probesByIdentifier = v5->_probesByIdentifier;
    v5->_probesByIdentifier = v10;

    v12 = objc_opt_new();
    probeIdentifiersByPlaneIdentifier = v5->_probeIdentifiersByPlaneIdentifier;
    v5->_probeIdentifiersByPlaneIdentifier = v12;

    v14 = objc_opt_new();
    requestedProbeIdentifiers = v5->_requestedProbeIdentifiers;
    v5->_requestedProbeIdentifiers = v14;

    v16 = objc_opt_new();
    updatedProbeIdentifiers = v5->_updatedProbeIdentifiers;
    v5->_updatedProbeIdentifiers = v16;

    v18 = objc_opt_new();
    directTexturingIdentifiers = v5->_directTexturingIdentifiers;
    v5->_directTexturingIdentifiers = v18;

    v20 = dispatch_semaphore_create(1);
    textureDataSemaphore = v5->_textureDataSemaphore;
    v5->_textureDataSemaphore = v20;

    v22 = objc_opt_new();
    probeUpdateQueue = v5->_probeUpdateQueue;
    v5->_probeUpdateQueue = v22;

    v24 = objc_opt_new();
    currentProbeUpdate = v5->_currentProbeUpdate;
    v5->_currentProbeUpdate = v24;

    [(AREnvironmentProbeUpdate *)v5->_currentProbeUpdate setManager:v5];
    v5->_lastProbeUpdateTime = 0.0;
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.environmentTexturing.minimumProbeUpdateInterval"];
    v5->_minimumProbeUpdateInterval = v26;
    v27 = dispatch_semaphore_create(1);
    semaphore = v5->_semaphore;
    v5->_semaphore = v27;

    v29 = objc_opt_new();
    cubemapGenerator = v5->_cubemapGenerator;
    v5->_cubemapGenerator = v29;
  }

  return v5;
}

- (BOOL)_textureDataIsBusy
{
  v3 = dispatch_semaphore_wait(self->_textureDataSemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_textureDataSemaphore);
  }

  return v3 != 0;
}

- (BOOL)_isBusy
{
  v3 = dispatch_semaphore_wait(self->_semaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_semaphore);
  }

  return v3 != 0;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(AREnvironmentProbeManager *)self description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  if ([(AREnvironmentProbeManager *)self _isBusy])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"Status: %@\n", v6];
  if ([(AREnvironmentProbeManager *)self _textureDataIsBusy])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v5 appendFormat:@"TextureData Status: %@\n", v7];
  [v5 appendFormat:@"LastImageData: %@\n", self->_lastImageData];

  return v5;
}

- (void)_insertIntoQueue:(id)queue
{
  queueCopy = queue;
  v4 = [(NSMutableArray *)self->_probeUpdateQueue indexOfObject:?];
  probeUpdateQueue = self->_probeUpdateQueue;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)probeUpdateQueue addObject:queueCopy];
  }

  else
  {
    v6 = [(NSMutableArray *)probeUpdateQueue objectAtIndexedSubscript:v4];
    [v6 lastUpdateTimestamp];
    v8 = v7;

    [(NSMutableArray *)self->_probeUpdateQueue replaceObjectAtIndex:v4 withObject:queueCopy];
    v9 = [(NSMutableArray *)self->_probeUpdateQueue objectAtIndexedSubscript:v4];
    [v9 setLastUpdateTimestamp:v8];
  }
}

- (id)updateProbesForTimestamp:(double)timestamp planes:()vector<ARTexturedPlane imageData:(std:(id)data :(id)a6 allocator<ARTexturedPlane>> *)a4 pose:(id)pose enableDirectTexturingForProbesWithIdentifier:
{
  v227 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v12 = a6;
  poseCopy = pose;
  v164 = v12;
  if (v12)
  {
    [v12 cameraTransform];
    v169 = v14;
    v171 = v13;
    v165 = v16;
    v167 = v15;
  }

  else
  {
    v169 = *(MEMORY[0x1E69E9B18] + 16);
    v171 = *MEMORY[0x1E69E9B18];
    v165 = *(MEMORY[0x1E69E9B18] + 48);
    v167 = *(MEMORY[0x1E69E9B18] + 32);
  }

  v17 = v12 != 0;
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&self->_lastImageData, data);
  *self->_anon_80 = v171;
  *&self->_anon_80[16] = v169;
  *&self->_anon_80[32] = v167;
  *&self->_anon_80[48] = v165;
  if (dataCopy)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  self->_isReady = v18;
  dispatch_semaphore_signal(self->_semaphore);
  v180 = objc_opt_new();
  v19 = objc_opt_new();
  v177 = objc_opt_new();
  dispatch_semaphore_wait(self->_textureDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableArray *)self->_directTexturingIdentifiers addObjectsFromArray:poseCopy];
  [v177 addObjectsFromArray:self->_anchorsToRemove];
  [(NSMutableArray *)self->_anchorsToRemove removeAllObjects];
  allValues = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier allValues];
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v21 = self->_probesByIdentifier;
  v22 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v206 objects:v226 count:16];
  if (v22)
  {
    v23 = *v207;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v207 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v206 + 1) + 8 * i);
        if (([allValues containsObject:v25] & 1) == 0)
        {
          v26 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v25];
          if (([v25 isEqual:self->_universeProbeIdentifier] & 1) == 0 && (objc_msgSend(v26, "lastUpdateTimestamp"), timestamp - v27 > 3.0) || objc_msgSend(v25, "isEqual:", self->_universeProbeIdentifier) && (objc_msgSend(v26, "lastUpdateTimestamp"), timestamp - v28 > 15.0))
          {
            requestedProbeIdentifiers = self->_requestedProbeIdentifiers;
            identifier = [v26 identifier];
            LOBYTE(requestedProbeIdentifiers) = [(NSMutableArray *)requestedProbeIdentifiers containsObject:identifier];

            if ((requestedProbeIdentifiers & 1) == 0)
            {
              v31 = [v26 copy];
              [v31 setLastUpdateTimestamp:timestamp];
              [(AREnvironmentProbeManager *)self _insertIntoQueue:v31];
            }
          }
        }
      }

      v22 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v206 objects:v226 count:16];
    }

    while (v22);
  }

  if ([(NSMutableArray *)self->_initialProbeIdentifiers count]&& self->_isReady)
  {
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v32 = self->_initialProbeIdentifiers;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v202 objects:v225 count:16];
    if (v33)
    {
      v34 = *v203;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v203 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:*(*(&v202 + 1) + 8 * j)];
          v37 = [v36 copy];

          [v37 setLastUpdateTimestamp:timestamp];
          [(AREnvironmentProbeManager *)self _insertIntoQueue:v37];
        }

        v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v202 objects:v225 count:16];
      }

      while (v33);
    }

    [(NSMutableArray *)self->_initialProbeIdentifiers removeAllObjects];
  }

  if (self->_mode == 2)
  {
    if (!self->_universeProbeIdentifier && self->_isReady)
    {
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      allValues2 = [(NSMutableDictionary *)self->_probesByIdentifier allValues];
      v39 = [allValues2 countByEnumeratingWithState:&v198 objects:v224 count:16];
      if (v39)
      {
        v40 = *v199;
        while (2)
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v199 != v40)
            {
              objc_enumerationMutation(allValues2);
            }

            v42 = *(*(&v198 + 1) + 8 * k);
            [v42 extent];
            if (fabsf(v43) != INFINITY)
            {
              [v42 extent];
              if (fabsf(v44) != INFINITY)
              {
                [v42 extent];
                if (fabsf(v45) != INFINITY)
                {
                  continue;
                }
              }
            }

            identifier2 = [v42 identifier];
            universeProbeIdentifier = self->_universeProbeIdentifier;
            self->_universeProbeIdentifier = identifier2;

            goto LABEL_47;
          }

          v39 = [allValues2 countByEnumeratingWithState:&v198 objects:v224 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

LABEL_47:

      if (!self->_universeProbeIdentifier)
      {
        v48 = objc_opt_new();
        v49 = self->_universeProbeIdentifier;
        self->_universeProbeIdentifier = v48;

        v50 = [AREnvironmentProbeAnchor alloc];
        v51 = [(AREnvironmentProbeAnchor *)v50 initWithIdentifier:self->_universeProbeIdentifier transform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
        v52 = _ARLogGeneral(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = objc_opt_class();
          v54 = NSStringFromClass(v53);
          *buf = 138543874;
          *&buf[4] = v54;
          v215 = 2048;
          selfCopy4 = self;
          v217 = 2114;
          v218 = v51;
          _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Added universe probe: %{public}@", buf, 0x20u);
        }

        [(NSMutableDictionary *)self->_probesByIdentifier setObject:v51 forKeyedSubscript:self->_universeProbeIdentifier];
        [v180 addObject:v51];
        v55 = [(AREnvironmentProbeAnchor *)v51 copy];
        [v55 setLastUpdateTimestamp:timestamp];
        [(AREnvironmentProbeManager *)self _insertIntoQueue:v55];
      }
    }

    v197[1] = 0;
    v197[0] = 0;
    v196 = v197;
    begin = a4->__begin_;
    end = a4->__end_;
    if (a4->__begin_ != end)
    {
      p_end_node = &begin[3].var4.__tree_.__end_node_;
      do
      {
        *buf = begin;
        v59 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v196, begin->var0.var0, &std::piecewise_construct, buf);
        v60 = v59;
        var0 = begin->var0;
        v62 = *&begin->var1;
        v63 = *&begin->var5;
        *(v59 + 80) = *&begin->var4.__tree_.__end_node_.__left_;
        *(v59 + 96) = v63;
        *(v59 + 48) = var0;
        *(v59 + 64) = v62;
        v64 = *(&begin[1].var0 + 8);
        v65 = *&begin[1].var4.__tree_.__begin_node_;
        v66 = begin[2].var0;
        *(v59 + 144) = *&begin[1].var4.__tree_.__size_;
        *(v59 + 160) = v66;
        *(v59 + 112) = v64;
        *(v59 + 128) = v65;
        v67 = *&begin[2].var1;
        v68 = *&begin[2].var4.__tree_.__end_node_.__left_;
        v69 = *(&begin[3].var0 + 8);
        *(v59 + 208) = *&begin[2].var5;
        *(v59 + 224) = v69;
        *(v59 + 176) = v67;
        *(v59 + 192) = v68;
        if ((v59 + 48) != begin)
        {
          std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v59 + 240), begin[3].var4.__tree_.__begin_node_, p_end_node);
        }

        objc_storeStrong((v60 + 264), begin[3].var5);
        begin += 4;
        p_end_node += 28;
      }

      while (begin != end);
    }

    keys<std::array<unsigned char,16ul>,ARTexturedPlane>(&v196, v195);
    v194[1] = 0;
    v194[0] = 0;
    v193 = v194;
    v70 = self->_lastPlanes.__begin_;
    v71 = self->_lastPlanes.__end_;
    while (v70 != v71)
    {
      std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(&v193, v70->var0.var0, v70);
      v70 += 4;
    }

    notInLeftButRight<std::array<unsigned char,16ul>>(&v193, v195, &v191);
    notInLeftButRight<std::array<unsigned char,16ul>>(v195, &v193, &v189);
    intersect<std::array<unsigned char,16ul>>(&v193, v195, &v187);
    v186[0] = 0;
    v186[1] = 0;
    v185 = v186;
    v72 = v187;
    if (v187 != v188)
    {
      do
      {
        v73 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v72 + 25];
        v74 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier objectForKeyedSubscript:v73];
        v75 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v74];
        *buf = v72 + 25;
        if (!*(std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v196, v72 + 25, &std::piecewise_construct, buf) + 64) || ([v75 lastUpdateTimestamp], timestamp - v76 > 3.0))
        {
          std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(&v185, v72 + 25, (v72 + 25));
        }

        v77 = v72[1];
        if (v77)
        {
          do
          {
            v78 = v77;
            v77 = *v77;
          }

          while (v77);
        }

        else
        {
          do
          {
            v78 = v72[2];
            v79 = *v78 == v72;
            v72 = v78;
          }

          while (!v79);
        }

        v72 = v78;
      }

      while (v78 != v188);
      v80 = v185;
      if (v185 != v186)
      {
        do
        {
          v178 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v80 + 25];
          v81 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier objectForKeyedSubscript:?];
          v82 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v81];
          if (v82 && ([(NSMutableArray *)self->_requestedProbeIdentifiers containsObject:v81]& 1) == 0)
          {
            v83 = [AREnvironmentProbeAnchor alloc];
            *buf = v80 + 25;
            v84 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v196, v80 + 25, &std::piecewise_construct, buf);
            v85 = *(v84 + 192);
            v221[8] = *(v84 + 176);
            v221[9] = v85;
            v86 = *(v84 + 224);
            v221[10] = *(v84 + 208);
            v221[11] = v86;
            v87 = *(v84 + 128);
            v221[4] = *(v84 + 112);
            v221[5] = v87;
            v88 = *(v84 + 160);
            v221[6] = *(v84 + 144);
            v221[7] = v88;
            v89 = *(v84 + 64);
            v221[0] = *(v84 + 48);
            v221[1] = v89;
            v90 = *(v84 + 96);
            v221[2] = *(v84 + 80);
            v221[3] = v90;
            std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v222, v84 + 240);
            v223 = *(v84 + 264);
            v91 = [(AREnvironmentProbeAnchor *)v83 initWithIdentifier:v81 onPlane:v221];

            std::__tree<std::array<unsigned char,16ul>>::destroy(v222, v222[1]);
            if ([(NSMutableArray *)self->_probeUpdateQueue indexOfObject:v91]== 0x7FFFFFFFFFFFFFFFLL)
            {
              v92 = _ARLogGeneral(0x7FFFFFFFFFFFFFFFLL);
              if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
              {
                v93 = objc_opt_class();
                v94 = NSStringFromClass(v93);
                *buf = 138544130;
                *&buf[4] = v94;
                v215 = 2048;
                selfCopy4 = self;
                v217 = 2114;
                v218 = v178;
                v219 = 2114;
                v220 = v91;
                _os_log_impl(&dword_1C241C000, v92, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Updating probe for plane %{public}@: %{public}@", buf, 0x2Au);
              }
            }

            *buf = v80 + 25;
            if (*(std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v196, v80 + 25, &std::piecewise_construct, buf) + 64))
            {
              [v82 lastUpdateTimestamp];
              if (timestamp - v95 > 3.0)
              {
                colorHistogram = [v82 colorHistogram];
                [(AREnvironmentProbeAnchor *)v91 setColorHistogram:colorHistogram];

                [v82 opaquePixelPercentage];
                [(AREnvironmentProbeAnchor *)v91 setOpaquePixelPercentage:?];
              }
            }

            [(ARAnchor *)v91 setLastUpdateTimestamp:timestamp];
            [(AREnvironmentProbeManager *)self _insertIntoQueue:v91];
          }

          v97 = v80[1];
          if (v97)
          {
            do
            {
              v98 = v97;
              v97 = *v97;
            }

            while (v97);
          }

          else
          {
            do
            {
              v98 = v80[2];
              v79 = *v98 == v80;
              v80 = v98;
            }

            while (!v79);
          }

          v80 = v98;
        }

        while (v98 != v186);
      }
    }

    v99 = v191;
    if (v191 != v192)
    {
      do
      {
        v100 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v99 + 25];
        v101 = objc_opt_new();
        v102 = [AREnvironmentProbeAnchor alloc];
        *buf = v99 + 25;
        v103 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v196, v99 + 25, &std::piecewise_construct, buf);
        v104 = *(v103 + 192);
        v211[8] = *(v103 + 176);
        v211[9] = v104;
        v105 = *(v103 + 224);
        v211[10] = *(v103 + 208);
        v211[11] = v105;
        v106 = *(v103 + 128);
        v211[4] = *(v103 + 112);
        v211[5] = v106;
        v107 = *(v103 + 160);
        v211[6] = *(v103 + 144);
        v211[7] = v107;
        v108 = *(v103 + 64);
        v211[0] = *(v103 + 48);
        v211[1] = v108;
        v109 = *(v103 + 96);
        v211[2] = *(v103 + 80);
        v211[3] = v109;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v212, v103 + 240);
        v213 = *(v103 + 264);
        v110 = [(AREnvironmentProbeAnchor *)v102 initWithIdentifier:v101 onPlane:v211];

        std::__tree<std::array<unsigned char,16ul>>::destroy(v212, v212[1]);
        v112 = _ARLogGeneral(v111);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
        {
          v113 = objc_opt_class();
          v114 = NSStringFromClass(v113);
          *buf = 138544130;
          *&buf[4] = v114;
          v215 = 2048;
          selfCopy4 = self;
          v217 = 2114;
          v218 = v100;
          v219 = 2114;
          v220 = v110;
          _os_log_impl(&dword_1C241C000, v112, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Added probe for plane %{public}@: %{public}@", buf, 0x2Au);
        }

        [(NSMutableDictionary *)self->_probesByIdentifier setObject:v110 forKeyedSubscript:v101];
        [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier setObject:v101 forKeyedSubscript:v100];
        [v180 addObject:v110];
        v115 = [(AREnvironmentProbeAnchor *)v110 copy];
        [v115 setLastUpdateTimestamp:timestamp];
        [(AREnvironmentProbeManager *)self _insertIntoQueue:v115];

        v116 = v99[1];
        if (v116)
        {
          do
          {
            v117 = v116;
            v116 = *v116;
          }

          while (v116);
        }

        else
        {
          do
          {
            v117 = v99[2];
            v79 = *v117 == v99;
            v99 = v117;
          }

          while (!v79);
        }

        v99 = v117;
      }

      while (v117 != v192);
    }

    v118 = v189;
    if (v189 != v190)
    {
      do
      {
        v119 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v118 + 25];
        v120 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier objectForKeyedSubscript:v119];
        [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier removeObjectForKey:v119];
        v121 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v120];
        v122 = v121;
        if (v121)
        {
          v123 = _ARLogGeneral(v121);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
          {
            v124 = objc_opt_class();
            v125 = NSStringFromClass(v124);
            *buf = 138544130;
            *&buf[4] = v125;
            v215 = 2048;
            selfCopy4 = self;
            v217 = 2114;
            v218 = v119;
            v219 = 2114;
            v220 = v122;
            _os_log_impl(&dword_1C241C000, v123, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removed probe for plane %{public}@: %{public}@", buf, 0x2Au);
          }

          [v177 addObject:v122];
          [(NSMutableDictionary *)self->_probesByIdentifier removeObjectForKey:v120];
          [(NSMutableArray *)self->_probeUpdateQueue removeObject:v122];
        }

        v126 = v118[1];
        if (v126)
        {
          do
          {
            v127 = v126;
            v126 = *v126;
          }

          while (v126);
        }

        else
        {
          do
          {
            v127 = v118[2];
            v79 = *v127 == v118;
            v118 = v127;
          }

          while (!v79);
        }

        v118 = v127;
      }

      while (v127 != v190);
    }

    std::__tree<std::array<unsigned char,16ul>>::destroy(&v185, v186[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v187, v188[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v189, v190[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v191, v192[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v193, v194[0]);
    std::__tree<std::array<unsigned char,16ul>>::destroy(v195, v195[1]);
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v196, v197[0]);
  }

  if (dataCopy && [dataCopy pixelBuffer] && -[NSMutableArray count](self->_probeUpdateQueue, "count") && timestamp - self->_lastProbeUpdateTime > self->_minimumProbeUpdateInterval)
  {
    v128 = [(NSMutableArray *)self->_probeUpdateQueue objectAtIndex:0];
    [v128 referenceTransform];
    v179 = v129;
    v176 = v130;
    v162 = v132;
    v163 = v131;
    [v128 extent];
    v161 = v133;
    v228.columns[1] = v169;
    v228.columns[0] = v171;
    v228.columns[3] = v165;
    v228.columns[2] = v167;
    v229 = __invert_f4(v228);
    v170 = v229.columns[2];
    v172 = v229.columns[0];
    v166 = v229.columns[1];
    v168 = v229.columns[3];
    [dataCopy cameraIntrinsics];
    v159 = v135;
    v160 = v134;
    v158 = v136;
    Width = CVPixelBufferGetWidth([dataCopy pixelBuffer]);
    Height = CVPixelBufferGetHeight([dataCopy pixelBuffer]);
    *&v157 = Width;
    *(&v157 + 1) = Height;
    if (ARIsBoxInViewFrustum(v179, v176, v163, v162, v161, Height, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v172, v166, v170, v168, v160, v159, v158, v157))
    {
      self->_lastProbeUpdateTime = timestamp;
      [v128 setLastUpdateTimestamp:timestamp];
      [(NSMutableArray *)self->_probeUpdateQueue removeObjectAtIndex:0];
      [(AREnvironmentProbeManager *)self _requestTextureForProbe:v128];
    }

    else
    {
      [(NSMutableArray *)self->_probeUpdateQueue removeObjectAtIndex:0];
      [(AREnvironmentProbeManager *)self _insertIntoQueue:v128];
    }
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v149 = self->_updatedProbeIdentifiers;
  v150 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v181 objects:v210 count:16];
  if (v150)
  {
    v151 = *v182;
    do
    {
      for (m = 0; m != v150; ++m)
      {
        if (*v182 != v151)
        {
          objc_enumerationMutation(v149);
        }

        v153 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:*(*(&v181 + 1) + 8 * m)];
        if (v153)
        {
          [v19 addObject:v153];
        }
      }

      v150 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v181 objects:v210 count:16];
    }

    while (v150);
  }

  [(NSMutableArray *)self->_updatedProbeIdentifiers removeAllObjects];
  dispatch_semaphore_signal(self->_textureDataSemaphore);
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  std::vector<ARTexturedPlane>::__vdeallocate(&self->_lastPlanes);
  *&self->_lastPlanes.__begin_ = *&a4->__begin_;
  self->_lastPlanes.__cap_ = a4->__cap_;
  a4->__begin_ = 0;
  a4->__end_ = 0;
  a4->__cap_ = 0;
  dispatch_semaphore_signal(self->_semaphore);
  [(AREnvironmentProbeUpdate *)self->_currentProbeUpdate updateAddedProbeAnchors:v180 updatedProbeAnchors:v19 removedProbeAnchors:v177];
  currentProbeUpdate = self->_currentProbeUpdate;
  v155 = currentProbeUpdate;

  return currentProbeUpdate;
}

- (void)_updateProbesFromExistingAnchors:(id)anchors
{
  v110 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  dispatch_semaphore_wait(self->_textureDataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v78 = objc_opt_new();
  v77 = objc_opt_new();
  v74 = objc_opt_new();
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v5 = anchorsCopy;
  v6 = [v5 countByEnumeratingWithState:&v95 objects:v109 count:16];
  if (v6)
  {
    v7 = *v96;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v96 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v95 + 1) + 8 * i);
        probesByIdentifier = self->_probesByIdentifier;
        identifier = [v9 identifier];
        v12 = [(NSMutableDictionary *)probesByIdentifier objectForKeyedSubscript:identifier];
        LODWORD(probesByIdentifier) = v12 == 0;

        if (probesByIdentifier)
        {
          v13 = v78;
        }

        else
        {
          v13 = v77;
        }

        [v13 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v95 objects:v109 count:16];
    }

    while (v6);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v14 = self->_probesByIdentifier;
  v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v91 objects:v108 count:16];
  if (v15)
  {
    v16 = *v92;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v92 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v91 + 1) + 8 * j);
        v19 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v18];
        v20 = [v5 containsObject:v19];

        if ((v20 & 1) == 0)
        {
          v21 = [(NSMutableDictionary *)self->_probesByIdentifier objectForKeyedSubscript:v18];
          [v74 addObject:v21];
        }
      }

      v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v91 objects:v108 count:16];
    }

    while (v15);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v78;
  v22 = [obj countByEnumeratingWithState:&v87 objects:v107 count:16];
  if (v22)
  {
    v23 = *v88;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v88 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v87 + 1) + 8 * k);
        directTexturingIdentifiers = self->_directTexturingIdentifiers;
        identifier2 = [v25 identifier];
        v28 = [(NSMutableArray *)directTexturingIdentifiers containsObject:identifier2];

        if (v28)
        {
          v29 = self->_directTexturingIdentifiers;
          identifier3 = [v25 identifier];
          [(NSMutableArray *)v29 removeObject:identifier3];
        }

        v31 = [(AREnvironmentProbeManager *)self _addProbeWithAnchor:v25 timestamp:v28 textureImmediately:0.0];
        v32 = v31;
        v33 = _ARLogGeneral(v31);
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
        if (v32)
        {
          if (v34)
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            *buf = 138543874;
            v102 = v36;
            v103 = 2048;
            selfCopy3 = self;
            v105 = 2114;
            v106 = v25;
            _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Added probe: %{public}@", buf, 0x20u);
          }
        }

        else
        {
          if (v34)
          {
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            *buf = 138543874;
            v102 = v38;
            v103 = 2048;
            selfCopy3 = self;
            v105 = 2114;
            v106 = v25;
            _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removed redundant probe: %{public}@", buf, 0x20u);
          }

          [(NSMutableArray *)self->_anchorsToRemove addObject:v25];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v87 objects:v107 count:16];
    }

    while (v22);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v75 = v77;
  v39 = [v75 countByEnumeratingWithState:&v83 objects:v100 count:16];
  if (v39)
  {
    v40 = *v84;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v84 != v40)
        {
          objc_enumerationMutation(v75);
        }

        v42 = *(*(&v83 + 1) + 8 * m);
        v43 = self->_probesByIdentifier;
        identifier4 = [v42 identifier];
        v45 = [(NSMutableDictionary *)v43 objectForKeyedSubscript:identifier4];
        [v45 lastUpdateTimestamp];
        v47 = v46;
        [v42 lastUpdateTimestamp];
        v49 = v47 > v48;

        if (!v49)
        {
          v50 = self->_probesByIdentifier;
          identifier5 = [v42 identifier];
          v52 = [(NSMutableDictionary *)v50 objectForKeyedSubscript:identifier5];

          v53 = self->_probesByIdentifier;
          identifier6 = [v42 identifier];
          [(NSMutableDictionary *)v53 setObject:v42 forKeyedSubscript:identifier6];

          updatedProbeIdentifiers = self->_updatedProbeIdentifiers;
          identifier7 = [v42 identifier];
          LODWORD(updatedProbeIdentifiers) = [(NSMutableArray *)updatedProbeIdentifiers containsObject:identifier7];

          if (updatedProbeIdentifiers)
          {
            environmentTexture = [v52 environmentTexture];
            [v42 setEnvironmentTexture:environmentTexture];

            colorHistogram = [v52 colorHistogram];
            [v42 setColorHistogram:colorHistogram];

            [v52 opaquePixelPercentage];
            [v42 setOpaquePixelPercentage:?];
          }
        }
      }

      v39 = [v75 countByEnumeratingWithState:&v83 objects:v100 count:16];
    }

    while (v39);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v59 = v74;
  v60 = [v59 countByEnumeratingWithState:&v79 objects:v99 count:16];
  v61 = v60;
  if (v60)
  {
    v62 = *v80;
    do
    {
      v63 = 0;
      do
      {
        if (*v80 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v79 + 1) + 8 * v63);
        v65 = _ARLogGeneral(v60);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v66 = objc_opt_class();
          v67 = NSStringFromClass(v66);
          *buf = 138543874;
          v102 = v67;
          v103 = 2048;
          selfCopy3 = self;
          v105 = 2114;
          v106 = v64;
          _os_log_impl(&dword_1C241C000, v65, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removed probe: %{public}@", buf, 0x20u);
        }

        v68 = self->_probesByIdentifier;
        identifier8 = [v64 identifier];
        [(NSMutableDictionary *)v68 removeObjectForKey:identifier8];

        initialProbeIdentifiers = self->_initialProbeIdentifiers;
        identifier9 = [v64 identifier];
        [(NSMutableArray *)initialProbeIdentifiers removeObject:identifier9];

        [(NSMutableArray *)self->_probeUpdateQueue removeObject:v64];
        identifier10 = [v64 identifier];
        LODWORD(initialProbeIdentifiers) = [identifier10 isEqual:self->_universeProbeIdentifier];

        if (initialProbeIdentifiers)
        {
          universeProbeIdentifier = self->_universeProbeIdentifier;
          self->_universeProbeIdentifier = 0;
        }

        ++v63;
      }

      while (v61 != v63);
      v60 = [v59 countByEnumeratingWithState:&v79 objects:v99 count:16];
      v61 = v60;
    }

    while (v60);
  }

  dispatch_semaphore_signal(self->_textureDataSemaphore);
}

- (BOOL)_addProbeWithAnchor:(id)anchor timestamp:(double)timestamp textureImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  anchorCopy = anchor;
  v9 = anchorCopy;
  if (self->_mode != 2)
  {
    goto LABEL_10;
  }

  trackedPlaneIdentifier = [anchorCopy trackedPlaneIdentifier];

  if (trackedPlaneIdentifier)
  {
    trackedPlaneIdentifier2 = [v9 trackedPlaneIdentifier];
    v12 = [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier objectForKeyedSubscript:trackedPlaneIdentifier2];
    LOBYTE(immediatelyCopy) = v12 == 0;

    if (v12)
    {
LABEL_16:

      goto LABEL_17;
    }

    identifier = [v9 identifier];
    [(NSMutableDictionary *)self->_probeIdentifiersByPlaneIdentifier setObject:identifier forKeyedSubscript:trackedPlaneIdentifier2];

    probesByIdentifier = self->_probesByIdentifier;
    identifier2 = [v9 identifier];
    [(NSMutableDictionary *)probesByIdentifier setObject:v9 forKeyedSubscript:identifier2];

LABEL_15:
    LOBYTE(immediatelyCopy) = 1;
    goto LABEL_16;
  }

  if (([v9 extent], fabsf(v16) != INFINITY) && (objc_msgSend(v9, "extent"), fabsf(v17) != INFINITY) && (objc_msgSend(v9, "extent"), fabsf(v18) != INFINITY) || !self->_universeProbeIdentifier || immediatelyCopy)
  {
LABEL_10:
    v19 = self->_probesByIdentifier;
    identifier3 = [v9 identifier];
    [(NSMutableDictionary *)v19 setObject:v9 forKeyedSubscript:identifier3];

    dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
    LODWORD(identifier3) = self->_isReady;
    dispatch_semaphore_signal(self->_semaphore);
    if (identifier3 == 1)
    {
      trackedPlaneIdentifier2 = [v9 copy];
      [trackedPlaneIdentifier2 setLastUpdateTimestamp:timestamp];
      if (immediatelyCopy)
      {
        [(AREnvironmentProbeManager *)self _requestTextureForProbe:trackedPlaneIdentifier2];
      }

      else
      {
        [(AREnvironmentProbeManager *)self _insertIntoQueue:trackedPlaneIdentifier2];
      }
    }

    else
    {
      initialProbeIdentifiers = self->_initialProbeIdentifiers;
      trackedPlaneIdentifier2 = [v9 identifier];
      [(NSMutableArray *)initialProbeIdentifiers addObject:trackedPlaneIdentifier2];
    }

    goto LABEL_15;
  }

LABEL_17:

  return immediatelyCopy;
}

- (void)_requestTextureForProbe:(id)probe
{
  v49 = *MEMORY[0x1E69E9840];
  probeCopy = probe;
  v5 = _ARLogGeneral(probeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    identifier = [probeCopy identifier];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = identifier;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Requesting texture for probe %{public}@", buf, 0x20u);
  }

  requestedProbeIdentifiers = self->_requestedProbeIdentifiers;
  identifier2 = [probeCopy identifier];
  [(NSMutableArray *)requestedProbeIdentifiers addObject:identifier2];

  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  v11 = self->_lastImageData;
  v43 = *&self->_anon_80[16];
  v44 = *self->_anon_80;
  v41 = *&self->_anon_80[48];
  v42 = *&self->_anon_80[32];
  v12 = convertToMeshes(&self->_lastPlanes.__begin_);
  dispatch_semaphore_signal(self->_semaphore);
  kdebug_trace();
  memset(buf, 0, 512);
  ARLabHistogramCreate(buf);
  colorHistogram = [probeCopy colorHistogram];
  v14 = colorHistogram == 0;

  if (!v14)
  {
    colorHistogram2 = [probeCopy colorHistogram];
    [colorHistogram2 getBytes:&buf[4] length:1024];

    [probeCopy opaquePixelPercentage];
    *buf = v16;
  }

  cubemapGenerator = self->_cubemapGenerator;
  [probeCopy referenceTransform];
  v39 = v19;
  v40 = v18;
  v37 = v21;
  v38 = v20;
  [probeCopy extent];
  v36 = v22;
  memcpy(__dst, buf, sizeof(__dst));
  pixelBuffer = [(ARImageData *)v11 pixelBuffer];
  [(ARImageData *)v11 cameraIntrinsics];
  v34 = v25;
  v35 = v24;
  v33 = v26;
  objc_msgSend_exposureDuration(v11);
  v28 = v27;
  [(ARImageData *)v11 exposureTargetOffset];
  v30 = v29;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __53__AREnvironmentProbeManager__requestTextureForProbe___block_invoke;
  v45[3] = &unk_1E817C960;
  v45[4] = self;
  v31 = probeCopy;
  v46 = v31;
  LODWORD(v32) = v30;
  [(ARCubemapGenerator *)cubemapGenerator cubemapWithTransform:__dst extent:v12 lastHistogram:pixelBuffer fromMeshes:v45 cameraImage:v40 cameraTransform:v39 cameraIntrinsics:v38 cameraExposure:v37 cameraExposureOffset:v36 completionHandler:v44, v43, v42, v41, v35, v34, v33, v28, v32];
}

void __53__AREnvironmentProbeManager__requestTextureForProbe___block_invoke(uint64_t a1, void *a2, _DWORD *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = _ARLogGeneral(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) identifier];
      v34 = 138543874;
      v35 = v9;
      v36 = 2048;
      v37 = v10;
      v38 = 2114;
      v39 = v11;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received texture for probe %{public}@", &v34, 0x20u);
    }

    dispatch_semaphore_wait(*(*(a1 + 32) + 88), 0xFFFFFFFFFFFFFFFFLL);
    [*(a1 + 40) setEnvironmentTexture:v6];
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 + 1 length:1024];
    [*(a1 + 40) setColorHistogram:v12];

    LODWORD(v13) = *a3;
    [*(a1 + 40) setOpaquePixelPercentage:v13];
    v14 = *(*(a1 + 32) + 40);
    v15 = [*(a1 + 40) identifier];
    v16 = [v14 objectForKeyedSubscript:v15];
    LOBYTE(v14) = v16 == 0;

    if ((v14 & 1) == 0)
    {
      v17 = *(a1 + 40);
      v18 = *(*(a1 + 32) + 40);
      v19 = [v17 identifier];
      [v18 setObject:v17 forKeyedSubscript:v19];
    }

    v20 = *(*(a1 + 32) + 56);
    v21 = [*(a1 + 40) identifier];
    [v20 removeObject:v21];

    v22 = *(*(a1 + 32) + 64);
    v23 = [*(a1 + 40) identifier];
    [v22 addObject:v23];
  }

  else
  {
    dispatch_semaphore_wait(*(*(a1 + 32) + 88), 0xFFFFFFFFFFFFFFFFLL);
    v24 = *(*(a1 + 32) + 56);
    v25 = [*(a1 + 40) identifier];
    [v24 removeObject:v25];

    [*(a1 + 32) _insertIntoQueue:*(a1 + 40)];
    v26 = *(*(a1 + 32) + 40);
    v27 = [*(a1 + 40) identifier];
    v28 = [v26 objectForKeyedSubscript:v27];

    if (v28)
    {
      [*(a1 + 40) lastUpdateTimestamp];
      v30 = v29;
      v31 = *(*(a1 + 32) + 40);
      v32 = [*(a1 + 40) identifier];
      v33 = [v31 objectForKeyedSubscript:v32];
      [v33 setLastUpdateTimestamp:v30];
    }
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 88));
  kdebug_trace();
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  return self;
}

@end