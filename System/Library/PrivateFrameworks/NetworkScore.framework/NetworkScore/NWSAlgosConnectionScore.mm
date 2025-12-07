@interface NWSAlgosConnectionScore
+ (id)connectionScore;
- (NWSAlgosConnectionScore)init;
- (id)scoreConnection:(BOOL)connection label:(id)label;
- (void)addConnectionRow:(unint64_t)row ttfb:(double)ttfb ttlb:(double)ttlb basettfb:(double)basettfb basettlb:(double)basettlb weight:(double)weight failed:(int)failed;
- (void)dealloc;
@end

@implementation NWSAlgosConnectionScore

+ (id)connectionScore
{
  v2 = objc_alloc_init(NWSAlgosConnectionScore);

  return v2;
}

- (NWSAlgosConnectionScore)init
{
  v5.receiver = self;
  v5.super_class = NWSAlgosConnectionScore;
  v2 = [(NWSAlgosConnectionScore *)&v5 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  [(NWSAlgosConnectionScore *)v2 setSignificantSize:100000];
  result = malloc_type_calloc(1uLL, 0x18uLL, 0x168BC42DuLL);
  if (result)
  {
    result->super.isa = 0;
    result->connectionData = 0;
    *&result->_debug = 0;
    v3->connectionData = result;
    return v3;
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  connectionData = self->connectionData;
  if (connectionData)
  {
    v4 = *connectionData;
    if (*connectionData)
    {
      connectionData[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x25F8748F0](connectionData, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = NWSAlgosConnectionScore;
  [(NWSAlgosConnectionScore *)&v5 dealloc];
}

- (void)addConnectionRow:(unint64_t)row ttfb:(double)ttfb ttlb:(double)ttlb basettfb:(double)basettfb basettlb:(double)basettlb weight:(double)weight failed:(int)failed
{
  connectionData = self->connectionData;
  AlgosScoreConnectionFrameRow::AlgosScoreConnectionFrameRow(v12, row, ttfb, ttlb, basettfb, basettlb, weight, failed);
  v10 = connectionData[1];
  if (v10 >= connectionData[2])
  {
    v11 = std::vector<AlgosScoreConnectionFrameRow>::__emplace_back_slow_path<AlgosScoreConnectionFrameRow>(connectionData, v12);
  }

  else
  {
    AlgosScoreConnectionFrameRow::AlgosScoreConnectionFrameRow(connectionData[1], v12);
    v11 = (v10 + 64);
    connectionData[1] = (v10 + 64);
  }

  connectionData[1] = v11;
}

- (id)scoreConnection:(BOOL)connection label:(id)label
{
  connectionCopy = connection;
  v120[4] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  __src = 0;
  v114 = 0;
  v115 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  __p = 0;
  v108 = 0;
  v109 = 0;
  v7 = @"no-label";
  if (labelCopy)
  {
    v7 = labelCopy;
  }

  v87 = v7;
  connectionData = self->connectionData;
  v9 = *connectionData;
  v10 = connectionData[1];
  if (*connectionData == v10)
  {
    v12 = 0;
    v11 = 0;
    v14 = 0.0;
    v76 = *connectionData;
  }

  else
  {
    v88 = 0;
    v11 = 0;
    v12 = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v90 = vnegq_f64(v13);
    v14 = 0.0;
    do
    {
      AlgosScoreConnectionFrameRow::AlgosScoreConnectionFrameRow(&v102, v9);
      if (v106 == -1)
      {
        v24 = v105 * 350.0;
        if ([(NWSAlgosConnectionScore *)self debug])
        {
          v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Fixed error penalty: %1.2f", *&v24];
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke;
          v100[3] = &unk_27996CF98;
          v26 = v25;
          v101 = v26;
          __nws_log_run_with_lock(v100);
        }

        v14 = v14 + v24;
        v12 = (v12 + 1);
      }

      else
      {
        if (v106)
        {
          v11 = (v11 + 1);
        }

        else
        {
          v11 = v11;
        }

        v16 = v102;
        if (v102 == -1)
        {
          v16 = v88;
          if (!v88)
          {
            v17 = self->connectionData;
            v19 = *v17;
            v18 = v17[1];
            if (*v17 == v18)
            {
              goto LABEL_18;
            }

            v20 = 0;
            v21 = 0.0;
            do
            {
              AlgosScoreConnectionFrameRow::AlgosScoreConnectionFrameRow(v116, v19);
              if (v116[0] != -1)
              {
                v21 = v21 + v116[0];
                ++v20;
              }

              v19 = (v19 + 64);
            }

            while (v19 != v18);
            if (!v20 || (v16 = (v21 / v20), (v88 = v16) == 0))
            {
LABEL_18:
              v16 = 0;
              v88 = 0;
            }
          }
        }

        *v15.i64 = v103 - v104;
        v22 = v114;
        v95 = v15;
        if (v114 >= v115)
        {
          v27 = __src;
          v28 = v114 - __src;
          v29 = (v114 - __src) >> 3;
          v30 = v29 + 1;
          if ((v29 + 1) >> 61)
          {
            std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
          }

          v31 = v115 - __src;
          if ((v115 - __src) >> 2 > v30)
          {
            v30 = v31 >> 2;
          }

          v32 = v31 >= 0x7FFFFFFFFFFFFFF8;
          v33 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v32)
          {
            v33 = v30;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v33);
          }

          *(8 * v29) = v15.i64[0];
          v23 = 8 * v29 + 8;
          memcpy(0, v27, v28);
          v34 = __src;
          __src = 0;
          v114 = v23;
          v115 = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v114 = v15.i64[0];
          v23 = (v22 + 8);
        }

        v114 = v23;
        v35 = v108;
        if (v108 >= v109)
        {
          v37 = __p;
          v38 = v108 - __p;
          v39 = (v108 - __p) >> 3;
          v40 = v39 + 1;
          if ((v39 + 1) >> 61)
          {
            std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
          }

          v41 = v109 - __p;
          if ((v109 - __p) >> 2 > v40)
          {
            v40 = v41 >> 2;
          }

          v32 = v41 >= 0x7FFFFFFFFFFFFFF8;
          v42 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v32)
          {
            v42 = v40;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__p, v42);
          }

          *(8 * v39) = v103;
          v36 = 8 * v39 + 8;
          memcpy(0, v37, v38);
          v43 = __p;
          __p = 0;
          v108 = v36;
          v109 = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v108 = v103;
          v36 = (v35 + 1);
        }

        v108 = v36;
        if (v16)
        {
          v44 = v111;
          if (v111 >= v112)
          {
            v47 = v110;
            v48 = v111 - v110;
            v49 = (v111 - v110) >> 3;
            v50 = v49 + 1;
            if ((v49 + 1) >> 61)
            {
              std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
            }

            v51 = v112 - v110;
            if ((v112 - v110) >> 2 > v50)
            {
              v50 = v51 >> 2;
            }

            v32 = v51 >= 0x7FFFFFFFFFFFFFF8;
            v52 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v32)
            {
              v52 = v50;
            }

            if (v52)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v110, v52);
            }

            *(8 * v49) = v16;
            v45 = 8 * v49 + 8;
            memcpy(0, v47, v48);
            v53 = v110;
            v110 = 0;
            v111 = v45;
            v112 = 0;
            if (v53)
            {
              operator delete(v53);
            }
          }

          else
          {
            *v111 = v16;
            v45 = (v44 + 8);
          }

          v111 = v45;
          *v15.i64 = *v95.i64 * 1000.0;
          v91 = v15;
          v54 = fabs(*v95.i64 * 1000.0);
          *v55.i64 = pow(v54, 1.9) + v54 * 20000.0;
          v46 = *vbslq_s8(v90, v55, v91).i64 / v16 * v105;
        }

        else
        {
          v46 = 0.0;
        }

        v56 = fabs(*v95.i64);
        *v57.i64 = pow(v56, 1.9) + v56 * 20000.0;
        *&v58 = vbslq_s8(v90, v57, v95).u64[0];
        v60 = v104;
        v59 = v105;
        v89 = v58;
        if (connectionCopy)
        {
          *v57.i64 = v105 * (v58 / (v104 * 100.0));
        }

        else
        {
          v61 = v103 / (v16 / self->_significantSize);
          if (v104 * 0.01 >= v61)
          {
            v61 = v104 * 0.01;
          }

          v62 = exp(v103 / (v61 / -0.693147181));
          debug = [(NWSAlgosConnectionScore *)self debug];
          v64 = v59 * (v89 / (v60 * 1000.0));
          *v65.i64 = v46 * (1.0 - v62) + v62 * v64;
          v92 = v65;
          if (debug >= 2)
          {
            v66 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"latency: %1.2f, rate: %1.2f, size: %llu, transition: %1.2f\n", *&v64, *&v46, v16, v65.i64[0]];
            v98[0] = MEMORY[0x277D85DD0];
            v98[1] = 3221225472;
            v98[2] = __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke_2;
            v98[3] = &unk_27996CF98;
            v67 = v66;
            v99 = v67;
            __nws_log_run_with_lock(v98);
          }

          v57 = v92;
        }

        v93 = v57;
        v68 = log1p(fabs(*v57.i64) * 0.015);
        v69 = log1p(0.015);
        debug2 = [(NWSAlgosConnectionScore *)self debug];
        *v71.i64 = v68 / v69;
        *&v94 = vbslq_s8(v90, v71, v93).u64[0];
        if (debug2)
        {
          v72 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"deltat: %1.2f, nl_time_delta: %1.2f, score_incr: %1.2f\n", v95.i64[0], *&v89, *&v94];
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke_3;
          v96[3] = &unk_27996CF98;
          v73 = v72;
          v97 = v73;
          __nws_log_run_with_lock(v96);
        }

        v74 = v94 + v94;
        if (!v106)
        {
          v74 = 0.0;
        }

        v14 = v14 + v94 + v74;
      }

      v9 = (v9 + 64);
    }

    while (v9 != v10);
    v75 = self->connectionData;
    v9 = *v75;
    v76 = v75[1];
  }

  v77 = (v76 - v9) >> 6;
  v119[0] = @"count";
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v77];
  v120[0] = v78;
  v119[1] = @"time-based";
  v79 = [MEMORY[0x277CCABB0] numberWithBool:connectionCopy];
  v120[1] = v79;
  v119[2] = @"fails";
  v80 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v120[2] = v80;
  v119[3] = @"hard-fails";
  v81 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v120[3] = v81;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:4];

  v117[0] = @"raw-score";
  v83 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v118[0] = v83;
  v117[1] = @"score";
  v84 = [MEMORY[0x277CCABB0] numberWithDouble:{v14 / fmax(v77, 1.0)}];
  v118[1] = v84;
  v118[2] = v82;
  v117[2] = @"stats";
  v117[3] = @"type";
  v117[4] = @"label";
  v118[3] = @"http";
  v118[4] = v87;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:5];

  if (__p)
  {
    v108 = __p;
    operator delete(__p);
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  return v85;
}

uint64_t __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

@end