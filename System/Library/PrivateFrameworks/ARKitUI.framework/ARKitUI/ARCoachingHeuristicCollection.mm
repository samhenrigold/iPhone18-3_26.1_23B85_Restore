@interface ARCoachingHeuristicCollection
- (ARCoachingHeuristicCollection)init;
- (int64_t)requirements;
- (void)addHeuristic:(id)heuristic;
- (void)clear;
- (void)updateWithFrame:(id)frame cache:(id)cache;
@end

@implementation ARCoachingHeuristicCollection

- (ARCoachingHeuristicCollection)init
{
  v6.receiver = self;
  v6.super_class = ARCoachingHeuristicCollection;
  v2 = [(ARCoachingHeuristicCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    heuristics = v2->_heuristics;
    v2->_heuristics = v3;
  }

  return v2;
}

- (int64_t)requirements
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_heuristics;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) requirements];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateWithFrame:(id)frame cache:(id)cache
{
  v43 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  cacheCopy = cache;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  selfCopy = self;
  v8 = self->_heuristics;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v31;
    LODWORD(v13) = 1;
    *&v10 = 138544130;
    v26 = v10;
    v27 = *v31;
    do
    {
      v14 = 0;
      v29 = v11;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        satisfied = [v15 satisfied];
        [v15 updateWithFrame:frameCopy cache:cacheCopy];
        satisfied2 = [v15 satisfied];
        v18 = satisfied2;
        if (satisfied != satisfied2)
        {
          v19 = _ARLogCoaching_3(satisfied2);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v24 = v23;
            *buf = v26;
            v25 = @"unsatisfied";
            if (v18)
            {
              v25 = @"satisfied";
            }

            v35 = v21;
            v36 = 2048;
            v37 = selfCopy;
            v12 = v27;
            v38 = 2112;
            v39 = v23;
            v40 = 2112;
            v41 = v25;
            _os_log_impl(&dword_23D3AE000, v19, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Coaching heuristic %@ became %@", buf, 0x2Au);

            v11 = v29;
          }
        }

        v13 = v13 & v18;
        ++v14;
      }

      while (v11 != v14);
      v11 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 1;
  }

  [(ARCoachingHeuristic *)selfCopy setSatisfied:v13];
}

- (void)addHeuristic:(id)heuristic
{
  v16 = *MEMORY[0x277D85DE8];
  heuristicCopy = heuristic;
  v5 = _ARLogCoaching_3([(NSMutableArray *)self->_heuristics addObject:heuristicCopy]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138543874;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_23D3AE000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Added coaching heuristic %@", &v10, 0x20u);
  }
}

- (void)clear
{
  v10 = *MEMORY[0x277D85DE8];
  [(ARCoachingHeuristic *)self setSatisfied:0];
  v3 = _ARLogCoaching_3([(NSMutableArray *)self->_heuristics removeAllObjects]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Cleared coaching heuristics", &v6, 0x16u);
  }
}

@end